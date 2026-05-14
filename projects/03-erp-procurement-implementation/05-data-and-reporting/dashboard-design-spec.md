# Dashboard Design Specification

## How to Read This Artifact

This is a Power BI-style reporting mockup and design specification for the HarbourPoint Marine Services synthetic ERP-style procurement workflow case. It describes dashboard pages, KPIs, visuals, slicers, and calculation logic that a Power BI builder or Business Analyst could use to create a pilot reporting view.

This is not a live Power BI file and does not claim connection to a real ERP, SAP, Oracle, Dynamics, NetSuite, or production reporting workspace.

## Dashboard Purpose

The dashboard gives leadership and operational stakeholders visibility into procurement request volume, backlog, approval delays, exceptions, cycle time, spend categories, vendor concentration, and receiving/payment status during the pilot. It is intended to help HarbourPoint identify what is stuck, where approvals are delayed, which departments need support, which exceptions cause rework, and what should be reviewed before rollout expansion.

## Audience

- Executive sponsor
- Project manager
- Procurement coordinator
- Finance/budget reviewer
- Department manager
- ERP implementation consultant or business systems analyst

## Data Source

- Source file: `synthetic-procurement-requests.csv`
- Assumed table name: `procurement_requests`
- Refresh assumption: manual refresh during early portfolio review, or scheduled daily refresh during a simulated pilot.
- Synthetic-data disclaimer: HarbourPoint Marine Services, vendors, request records, amounts, and dates are fictional. The dataset does not contain real company, vendor, employee, client, patient, resident, or financial data.

## Reporting Questions Supported

- How many requests are open?
- Which approval stages are bottlenecks?
- Which departments have longer cycle times?
- What exceptions are most common?
- Which categories and vendors drive spend?
- Which requests need budget-code cleanup?
- Are emergency requests being handled quickly?
- What should be reviewed before rollout expansion?

## KPI Definitions

| KPI name | Business meaning | Suggested calculation logic | Source fields | Notes / assumptions |
|---|---|---|---|---|
| Total requests | Total procurement request volume in the pilot dataset. | Count all `request_id` values. | `request_id` | Supports adoption and workload discussion. |
| Open requests | Requests not fully resolved or rejected. | Count records where `current_status` is not `Closed` or `Rejected`. | `current_status`, `request_id` | Includes approved, PO created, received, partially received, on hold, and pending statuses. |
| Closed requests | Requests fully resolved for the synthetic workflow. | Count records where `current_status` = `Closed`. | `current_status`, `request_id` | Rejected requests are not treated as closed. |
| Average cycle time | Average elapsed days for fulfilled or completed requests. | Average `cycle_time_days` where status is `Closed`, `Received`, or `Partially Received`. | `cycle_time_days`, `current_status` | Open draft/submitted aging is handled separately. |
| Pending approvals over SLA | Pending approval requests whose current age exceeds the assumed SLA. | Count pending manager, finance, or procurement review records where `cycle_time_days` is greater than the stage SLA. | `current_status`, `cycle_time_days`, `approval_level` | SLA assumptions: manager 2 days, finance 3 days, procurement review 3 days, emergency 1 day. |
| Exception rate | Share of requests with a controlled exception or rework reason. | Count records where `exception_reason` is not `No Exception` divided by total requests. | `exception_reason`, `request_id` | Shows rework and exception handling burden. |
| Invalid/missing budget-code count | Requests needing budget-code cleanup. | Count records where `budget_code_valid` = `FALSE` or `budget_code` is blank/null. | `budget_code`, `budget_code_valid` | Supports finance review and master-data cleanup. |
| Emergency request count | Emergency safety purchase workload. | Count records where `priority` = `Emergency`, `approval_level` = `Emergency Safety Exception`, or `exception_reason` = `Urgent Safety Purchase`. | `priority`, `approval_level`, `exception_reason` | Used for audit visibility and fast-track monitoring. |
| Total requested spend | Total CAD value represented by procurement requests. | Sum `amount_cad`. | `amount_cad` | Filter to non-rejected records when reviewing active/approved spend. |
| Spend by category | Requested spend by procurement category. | Sum `amount_cad` grouped by `item_category`. | `amount_cad`, `item_category` | Useful for category planning and policy discussion. |
| Top vendors by spend | Vendor concentration by requested amount. | Sum `amount_cad` grouped by `vendor_name`. | `amount_cad`, `vendor_name` | Vendors are fictional and used only for portfolio analysis. |
| Delayed delivery count | Count of requests with delayed fulfillment signals. | Count records where `delivery_status` = `Delayed` or `exception_reason` = `Delayed Vendor Response`. | `delivery_status`, `exception_reason`, `request_id` | Helps procurement identify vendor or receiving follow-up. |

## Page 1: Executive Overview

### Purpose of the Page

Show the overall health of the procurement pilot in one view: request volume, unresolved backlog, cycle time, exceptions, approval delays, and spend concentration.

### Intended Audience

Executive sponsor, project manager, department manager, and ERP implementation consultant or business systems analyst.

### Required Visuals

- KPI cards: total requests, open requests, average cycle time, exception rate, pending approvals over SLA, total requested spend.
- Bar chart: requests by current status.
- Line chart or column chart: monthly request volume.
- Bar chart: spend by item category.
- Table: top open high-priority requests.

### Suggested Layout

- Top row: six KPI cards across the page.
- Middle left: requests by current status.
- Middle right: monthly request volume.
- Bottom left: spend by item category.
- Bottom right: top open high-priority requests with `request_id`, `department`, `item_category`, `vendor_name`, `amount_cad`, `current_status`, `priority`, and `cycle_time_days`.

### Filters/Slicers

Use date range, department, item category, current status, priority, and exception reason as primary slicers. Keep vendor and approval level available for drill-down.

### Business Decisions Supported

- Decide where leadership should focus during the pilot.
- Identify backlog and approval bottlenecks before rollout expansion.
- Confirm whether spend and request volume are concentrated in specific categories.
- Spot high-priority open work needing manager or procurement follow-up.

## Page 2: Approval and Exception Management

### Purpose of the Page

Focus on workflow controls: pending approvals, finance review aging, exception reasons, invalid budget codes, and emergency safety purchases requiring audit visibility.

### Intended Audience

Department manager, finance/budget reviewer, procurement coordinator, project manager, and business systems analyst.

### Required Visuals

- Bar chart: pending approvals by approval level.
- Table: pending approvals over SLA.
- Bar chart: exception reasons by count.
- Table: invalid or missing budget-code requests.
- Table or matrix: emergency purchases requiring audit review.
- Optional visual: rejected requests by exception reason.

### Suggested Layout

- Top row: KPI cards for pending approval count, pending approvals over SLA, invalid/missing budget-code count, emergency request count, and exception rate.
- Left column: pending approvals by approval level and exception reasons by count.
- Right column: pending approvals over SLA and invalid/missing budget-code request tables.
- Bottom band: emergency purchases requiring audit review, including approval dates, status, cycle time, delivery status, and audit review note.

### Filters/Slicers

Use approval level, current status, department, priority, exception reason, budget-code validity, and date range. Add item category for deeper root-cause discussion.

### Business Decisions Supported

- Follow up with managers, finance reviewers, or procurement coordinators on aging requests.
- Prioritize budget-code cleanup before finance/procurement continues.
- Identify exception types causing the most rework.
- Confirm emergency safety purchases have appropriate approval and audit visibility.

## Page 3: Vendor, Spend, and Receiving Status

### Purpose of the Page

Show procurement spend concentration, vendor delay patterns, receiving status, and payment follow-up indicators after PO creation or receiving.

### Intended Audience

Procurement coordinator, finance/budget reviewer, project manager, executive sponsor, and business systems analyst.

### Required Visuals

- Bar chart: top vendors by spend.
- Bar chart or treemap: spend by category and department.
- Matrix: delivery status by vendor.
- Table: delayed deliveries.
- KPI cards: received requests, partially received requests, delayed deliveries, payment pending count.

### Suggested Layout

- Top row: KPI cards for received requests, partially received requests, delayed delivery count, and payment pending count.
- Middle left: top vendors by spend.
- Middle right: spend by category and department.
- Bottom left: delivery status by vendor matrix.
- Bottom right: delayed deliveries table with `request_id`, `vendor_name`, `department`, `item_category`, `amount_cad`, `current_status`, `delivery_status`, `exception_reason`, and `cycle_time_days`.

### Filters/Slicers

Use vendor, item category, department, delivery status, payment status, current status, priority, and date range.

### Business Decisions Supported

- Escalate recurring vendor delays.
- Review category and department spend patterns.
- Monitor receiving gaps after PO creation.
- Identify received or closed requests with payment follow-up still pending.

## Filters and Slicers

- Date range
- Department
- Item category
- Vendor
- Approval level
- Current status
- Priority
- Exception reason
- Delivery status
- Payment status

## Measures / Calculation Logic

These measure definitions are written in plain-English/DAX-style logic. Exact syntax can be adjusted by the dashboard builder based on the data model.

| Measure name | Calculation logic |
|---|---|
| Total Requests | Count distinct `request_id`. |
| Open Requests | Count `request_id` where `current_status` is not `Closed` and not `Rejected`. |
| Closed Requests | Count `request_id` where `current_status` = `Closed`. |
| Average Cycle Time | Average `cycle_time_days` where `cycle_time_days` is not blank and `current_status` is `Closed`, `Received`, or `Partially Received`. |
| Exception Rate | Count requests where `exception_reason` is not `No Exception` divided by Total Requests. |
| Pending Approval Count | Count requests where `current_status` is `Pending Manager Approval`, `Pending Finance Review`, or `Pending Procurement Review`. |
| Pending Approvals Over SLA | Count pending manager approvals with `cycle_time_days` > 2, pending finance reviews with `cycle_time_days` > 3, and pending procurement reviews with `cycle_time_days` > 3. |
| Invalid Budget Code Count | Count requests where `budget_code_valid` = `FALSE`, `budget_code` is blank, or `budget_code` is null. |
| Emergency Request Count | Count requests where `priority` = `Emergency`, `approval_level` = `Emergency Safety Exception`, or `exception_reason` = `Urgent Safety Purchase`. |
| Total Requested Spend | Sum `amount_cad`; use a non-rejected filter when analyzing active or approved spend. |
| Spend by Category | Sum `amount_cad` grouped by `item_category`. |
| Top Vendors by Spend | Sum `amount_cad` grouped by `vendor_name`, sorted descending. |
| Delayed Delivery Count | Count requests where `delivery_status` = `Delayed` or `exception_reason` = `Delayed Vendor Response`. |
| Received Requests | Count requests where `current_status` = `Received` or `delivery_status` = `Received`. |
| Partially Received Requests | Count requests where `current_status` = `Partially Received` or `delivery_status` = `Partially Received`. |
| Payment Pending Count | Count received or closed requests where `payment_status` = `Payment Pending`. |

## Business Decisions Supported

| Dashboard section | Decisions supported |
|---|---|
| Executive Overview | Pilot health review, leadership attention, rollout readiness, backlog follow-up, and category spend review. |
| Approval and Exception Management | Approval follow-up, finance review follow-up, budget-code cleanup, emergency audit review, department training needs, and procurement policy refinement. |
| Vendor, Spend, and Receiving Status | Vendor delay escalation, receiving follow-up, payment-status review, category/vendor spend monitoring, and staffing/support focus during rollout. |

## Data Quality and Limitations

- Dataset is synthetic.
- Dashboard is a design specification, not a live Power BI file.
- Measures are based on simplified portfolio data.
- HarbourPoint Marine Services and all vendors are fictional.
- Real implementation would require ERP data validation, security review, source-system mapping, role-based access design, refresh monitoring, and stakeholder sign-off.
- The dataset does not include full invoice matching, accounting, inventory, vendor onboarding, tax, or warehouse receiving detail.

## BA Portfolio Value

This artifact demonstrates how a Business Analyst connects operational requirements to reporting questions, translates process bottlenecks into KPIs, connects SQL analysis to dashboard design, and supports both executive and operational decision-making. It shows practical reporting thinking for an ERP procurement implementation case without claiming a real system build.
