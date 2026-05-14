/*
Procurement SQL Query Pack
HarbourPoint Marine Services ERP Procurement Request to Purchase Order Implementation Case

Purpose:
These queries support practical Business Analyst reporting questions for a synthetic
platform-neutral ERP-style procurement workflow. They assume the Issue 006 CSV file
05-data-and-reporting/synthetic-procurement-requests.csv has been loaded into a table
named procurement_requests.

Synthetic-data note:
HarbourPoint Marine Services, vendors, request records, amounts, and dates are fictional.
This query pack is not based on a real ERP, SAP, Oracle, Dynamics, NetSuite, Power BI
workspace, or production procurement system.

Date and aging assumption:
The synthetic table includes cycle_time_days. For open requests, this field is treated
as an approximate current age in days. In a real implementation, aging would normally
be calculated from the current reporting date and the relevant workflow milestone date.
*/

/* 1. Backlog by current status
Business question: Which workflow statuses have the most open or unresolved procurement requests?
*/
SELECT
    current_status AS workflow_status,
    COUNT(*) AS request_count,
    SUM(amount_cad) AS total_requested_amount_cad
FROM procurement_requests
WHERE current_status NOT IN ('Closed', 'Rejected')
GROUP BY current_status
ORDER BY request_count DESC, workflow_status;

/* 2. Average cycle time by department
Business question: Which departments experience the longest procurement cycle times?
*/
SELECT
    department,
    COUNT(*) AS completed_or_received_request_count,
    AVG(cycle_time_days) AS average_cycle_time_days,
    MAX(cycle_time_days) AS longest_cycle_time_days
FROM procurement_requests
WHERE cycle_time_days IS NOT NULL
  AND current_status IN ('Closed', 'Received', 'Partially Received')
GROUP BY department
ORDER BY average_cycle_time_days DESC, department;

/* 3. Pending approvals over SLA
Business question: Which requests appear to be waiting too long in manager, finance, or procurement approval stages?

SLA assumptions are aligned to the approval matrix:
- Pending Manager Approval: 2 business days
- Pending Finance Review: 3 business days
- Pending Procurement Review: 3 business days for operational follow-up in this reporting pack
*/
SELECT
    request_id,
    request_date,
    department,
    item_category,
    vendor_name,
    amount_cad,
    approval_level,
    current_status,
    priority,
    exception_reason,
    cycle_time_days AS current_age_days,
    CASE
        WHEN current_status = 'Pending Manager Approval' THEN 2
        WHEN current_status = 'Pending Finance Review' THEN 3
        WHEN current_status = 'Pending Procurement Review' THEN 3
    END AS sla_business_days,
    cycle_time_days -
        CASE
            WHEN current_status = 'Pending Manager Approval' THEN 2
            WHEN current_status = 'Pending Finance Review' THEN 3
            WHEN current_status = 'Pending Procurement Review' THEN 3
        END AS estimated_days_over_sla
FROM procurement_requests
WHERE current_status IN (
        'Pending Manager Approval',
        'Pending Finance Review',
        'Pending Procurement Review'
    )
  AND cycle_time_days >
        CASE
            WHEN current_status = 'Pending Manager Approval' THEN 2
            WHEN current_status = 'Pending Finance Review' THEN 3
            WHEN current_status = 'Pending Procurement Review' THEN 3
        END
ORDER BY estimated_days_over_sla DESC, request_date, request_id;

/* 4. Spend by item category
Business question: Which procurement categories represent the highest requested spend?
*/
SELECT
    item_category,
    COUNT(*) AS request_count,
    SUM(amount_cad) AS total_requested_amount_cad,
    AVG(amount_cad) AS average_request_amount_cad
FROM procurement_requests
WHERE current_status <> 'Rejected'
GROUP BY item_category
ORDER BY total_requested_amount_cad DESC, item_category;

/* 5. Exception reasons by count
Business question: What are the most common rework or exception reasons?
*/
SELECT
    exception_reason,
    COUNT(*) AS request_count,
    SUM(amount_cad) AS total_requested_amount_cad
FROM procurement_requests
WHERE exception_reason <> 'No Exception'
GROUP BY exception_reason
ORDER BY request_count DESC, exception_reason;

/* 6. Vendor concentration by spend
Business question: Which vendors represent the highest total requested spend?
*/
SELECT
    vendor_name,
    COUNT(*) AS request_count,
    SUM(amount_cad) AS total_requested_amount_cad,
    AVG(amount_cad) AS average_request_amount_cad
FROM procurement_requests
WHERE current_status <> 'Rejected'
GROUP BY vendor_name
ORDER BY total_requested_amount_cad DESC, vendor_name;

/* 7. Requests with invalid or missing budget codes
Business question: Which requests need budget-code correction before finance/procurement can proceed?
*/
SELECT
    request_id,
    request_date,
    department,
    requester_role,
    item_category,
    vendor_name,
    amount_cad,
    budget_code,
    budget_code_valid,
    current_status,
    exception_reason,
    priority
FROM procurement_requests
WHERE budget_code_valid = 'FALSE'
   OR budget_code IS NULL
   OR budget_code = ''
ORDER BY request_date, request_id;

/* 8. Emergency purchases and approval timing
Business question: Which emergency safety purchases need review for audit notes, fast approval, or delayed handling?
*/
SELECT
    request_id,
    request_date,
    department,
    item_category,
    item_description,
    vendor_name,
    amount_cad,
    approval_level,
    current_status,
    manager_approval_date,
    finance_review_date,
    po_created_date,
    cycle_time_days AS current_age_or_cycle_days,
    priority,
    exception_reason,
    delivery_status,
    CASE
        WHEN current_status NOT IN ('Closed', 'Rejected') THEN 'Open - review follow-up or audit notes'
        WHEN cycle_time_days > 1 THEN 'Closed - confirm emergency timing and audit notes'
        ELSE 'Fast handling recorded'
    END AS audit_review_note
FROM procurement_requests
WHERE priority = 'Emergency'
   OR approval_level = 'Emergency Safety Exception'
   OR exception_reason = 'Urgent Safety Purchase'
ORDER BY current_status, cycle_time_days DESC, request_date;

/* 9. Monthly request volume
Business question: How does procurement request volume trend across the pilot period?

The request_date field is stored as YYYY-MM-DD text/date. SUBSTR is used to group by YYYY-MM.
If the target SQL engine uses a different string function name, adjust this expression only.
*/
SELECT
    SUBSTR(request_date, 1, 7) AS request_month,
    COUNT(*) AS request_count,
    SUM(amount_cad) AS total_requested_amount_cad
FROM procurement_requests
GROUP BY SUBSTR(request_date, 1, 7)
ORDER BY request_month;

/* 10. Finance review aging
Business question: Which requests are currently pending finance review and may require follow-up?

The finance SLA is assumed to be 3 business days based on the approval matrix.
*/
SELECT
    request_id,
    request_date,
    department,
    item_category,
    vendor_name,
    amount_cad,
    budget_code,
    budget_code_valid,
    approval_level,
    current_status,
    manager_approval_date,
    cycle_time_days AS current_age_days,
    3 AS finance_review_sla_business_days,
    cycle_time_days - 3 AS estimated_days_over_finance_sla,
    exception_reason,
    priority
FROM procurement_requests
WHERE current_status = 'Pending Finance Review'
ORDER BY estimated_days_over_finance_sla DESC, request_date, request_id;

/* 11. Rejected requests by exception reason
Business question: Which exception reasons are most often associated with rejected requests?
*/
SELECT
    exception_reason,
    COUNT(*) AS rejected_request_count,
    SUM(amount_cad) AS rejected_requested_amount_cad
FROM procurement_requests
WHERE current_status = 'Rejected'
GROUP BY exception_reason
ORDER BY rejected_request_count DESC, exception_reason;

/* 12. Open requests by department and priority
Business question: Which departments have the most open high-priority or emergency procurement work?
*/
SELECT
    department,
    priority,
    COUNT(*) AS open_request_count,
    SUM(amount_cad) AS open_requested_amount_cad
FROM procurement_requests
WHERE current_status NOT IN ('Closed', 'Rejected')
GROUP BY department, priority
ORDER BY department, priority;

/* 13. Closed requests with longest cycle time
Business question: Which completed requests took the longest and may need root-cause discussion?
*/
SELECT
    request_id,
    request_date,
    department,
    item_category,
    vendor_name,
    amount_cad,
    current_status,
    received_date,
    cycle_time_days,
    exception_reason,
    delivery_status,
    payment_status
FROM procurement_requests
WHERE current_status = 'Closed'
  AND cycle_time_days IS NOT NULL
ORDER BY cycle_time_days DESC, request_date, request_id;

/* 14. Receiving delays by vendor
Business question: Which vendors are associated with delayed receiving or delayed vendor response?
*/
SELECT
    vendor_name,
    COUNT(*) AS delayed_request_count,
    SUM(amount_cad) AS delayed_requested_amount_cad,
    MAX(cycle_time_days) AS longest_current_age_or_cycle_days
FROM procurement_requests
WHERE delivery_status = 'Delayed'
   OR exception_reason = 'Delayed Vendor Response'
GROUP BY vendor_name
ORDER BY delayed_request_count DESC, delayed_requested_amount_cad DESC, vendor_name;

/* 15. Payment status summary for received or closed requests
Business question: What payment follow-up remains for requests that have been received or closed?
*/
SELECT
    payment_status,
    COUNT(*) AS received_or_closed_request_count,
    SUM(amount_cad) AS total_requested_amount_cad
FROM procurement_requests
WHERE current_status IN ('Received', 'Closed')
GROUP BY payment_status
ORDER BY received_or_closed_request_count DESC, payment_status;
