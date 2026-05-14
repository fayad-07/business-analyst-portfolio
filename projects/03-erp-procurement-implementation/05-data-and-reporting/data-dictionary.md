# Data Dictionary

## Dataset Overview

- **Dataset name:** `synthetic-procurement-requests.csv`
- **Purpose:** Provides a realistic synthetic procurement request dataset for the HarbourPoint Marine Services ERP Procurement Request to Purchase Order Implementation Case.
- **Synthetic-data disclaimer:** This dataset is fully fictional and created for a Business Analyst portfolio demonstration. It does not contain real company, employee, vendor, client, patient, resident, or financial data.
- **Scenario:** HarbourPoint Marine Services is a fictional Atlantic Canada marine services organization using a platform-neutral ERP-style procurement request-to-purchase-order workflow.
- **Row count:** 180 synthetic procurement request records.
- **Date range:** Request dates run from 2026-01-01 to 2026-06-30.
- **Intended use:** The dataset supports the SQL analysis, dashboard design specification, UAT examples, exception-pattern review, and portfolio explanation in this artifact pack. It should not be described as an extract from SAP, Oracle, Microsoft Dynamics, NetSuite, or any other real ERP or procurement system.

## Field Dictionary

| Field name | Description | Data type | Example value | Required or optional | Business rule or validation note |
|---|---|---|---|---|---|
| request_id | Unique procurement request identifier for the synthetic workflow record. | Text | PR-2026-0001 | Required | Uses the format `PR-2026-0001` through `PR-2026-0180`; values must be unique. |
| request_date | Date the purchase request was started or submitted in the pilot window. | Date | 2026-01-05 | Required | Uses `YYYY-MM-DD`; values are within the six-month pilot window. |
| department | Department associated with the request and first approval ownership. | Controlled text | Maintenance | Required | Must be one of Vessel Operations, Maintenance, Safety, Logistics, Administration, IT, or Finance. |
| requester_role | Business role of the fictional requester. | Controlled text | Maintenance Lead | Required | Uses role-level labels only; no real employee names are included. |
| item_category | Procurement category for analysis and workflow routing. | Controlled text | Parts | Required | Must be one of Parts, Safety Equipment, Repair Service, Fuel/Operations Supply, IT Equipment, Office/Admin, or Vendor Service. |
| item_description | Short fictional description of the requested item or service. | Text | Hydraulic hose replacement kit | Required | Written for a marine services operating environment; no real order details are represented. |
| vendor_name | Fictional vendor name used for spend and delay examples. | Controlled text | BlueKeel Marine Parts | Required | All vendor names are fictional. Invalid vendor examples represent inactive or unverified fictional vendor-master scenarios. |
| amount_cad | Estimated request amount in Canadian dollars. | Decimal number | 2845.75 | Required | Numeric only with no currency symbol or comma; supports low, medium, high-value, and capital/special-review examples. |
| budget_code | Fictional budget or cost coding value. | Text | MAINT-REP-210 | Optional | Blank or intentionally invalid values support missing/invalid budget-code scenarios. |
| budget_code_valid | Indicates whether the budget code is valid for the synthetic reference set. | Boolean text | TRUE | Required | Must be `TRUE` or `FALSE`; `FALSE` is used for missing or intentionally invalid budget-code records. |
| approval_level | Approval path applied to the request. | Controlled text | Department Manager + Finance | Required | Generally follows the approval matrix thresholds and exception paths. |
| current_status | Current workflow status of the procurement request. | Controlled text | Pending Finance Review | Required | Describes request workflow progress and remains separate from delivery status. |
| manager_approval_date | Date department manager approval occurred, if applicable. | Date | 2026-03-12 | Optional | Blank when manager approval has not occurred; cannot be before request_date. |
| finance_review_date | Date finance review was completed, if applicable. | Date | 2026-03-14 | Optional | Required for most medium, high-value, budget exception, capital, and emergency examples that reached finance review. |
| po_created_date | Date the purchase order status or PO handoff was recorded. | Date | 2026-03-18 | Optional | Present for PO Created, Partially Received, Received, and Closed records; cannot precede required approvals. |
| received_date | Date the order or service was received or first receiving activity was recorded. | Date | 2026-03-25 | Optional | Present for Received and Closed records and some partially received examples; cannot precede po_created_date. |
| cycle_time_days | Approximate elapsed days from request date to current or completed milestone. | Integer | 12 | Optional | For received/closed records, based on request_date to received_date; open records use latest available milestone or may be blank for drafts. |
| exception_reason | Standardized reason code for exceptions or normal processing. | Controlled text | Missing Budget Code | Required | Must be one of the listed exception reason values; most records use No Exception. |
| priority | Business priority of the request. | Controlled text | Medium | Required | Must be Low, Medium, High, or Emergency; emergency records align to safety or operations-critical needs. |
| delivery_status | Fulfillment status after procurement action. | Controlled text | Ordered | Required | Separate from current_status; early workflow records usually show Not Ordered. |
| payment_status | Supporting invoice/payment lifecycle indicator. | Controlled text | Not Invoiced | Required | Included for realism only; payment processing is outside the main portfolio scope. |

## Status Definitions

| current_status | Definition |
|---|---|
| Draft | Request has been started but not normally submitted into the workflow. |
| Submitted | Request has been submitted but has not yet reached manager approval routing. |
| Pending Manager Approval | Request is waiting for department manager review. |
| Pending Finance Review | Request passed or reached manager review and is waiting for finance validation. |
| Pending Procurement Review | Request is waiting for procurement review of vendor, quote, duplicate, or PO-readiness details. |
| Approved | Required approvals are complete but PO creation or procurement handoff has not yet been recorded. |
| Rejected | Request was rejected and is not eligible for PO creation. |
| PO Created | PO status or PO handoff has been recorded, but receiving is not complete. |
| Partially Received | Some goods or services have been received, but fulfillment is not complete. |
| Received | Goods or services have been received, but the request may still need payment or closure activity. |
| Closed | Request lifecycle is resolved for the synthetic workflow, usually after receiving and payment support status update. |
| On Hold | Request is paused because an exception requires business, finance, or procurement follow-up. |

## Approval Level Definitions

| approval_level | Definition and approval-matrix alignment |
|---|---|
| Department Manager | Standard low-value path for requests under CAD 1,000 requiring department manager approval. |
| Department Manager + Finance | Standard medium-value path for CAD 1,000 to CAD 9,999 requiring department manager approval and finance review. |
| Department Manager + Finance + Executive Sponsor | Standard high-value path for CAD 10,000 and above requiring department manager approval, finance review, and executive sponsor review. |
| Emergency Safety Exception | Fast-track path for urgent safety or operations-critical purchases; still requires manager approval, justification, audit visibility, and finance visibility where applicable. |
| Capital/Special Review | Special review path for capital-like or higher-risk requests requiring finance and executive review regardless of ordinary category handling. |

## Exception Reason Definitions

| exception_reason | Definition |
|---|---|
| Missing Budget Code | Budget code is blank or intentionally invalid in the synthetic reference set and requires correction or finance handling. |
| Invalid Vendor | Vendor is fictional but treated as inactive, unverified, or outside the preferred vendor master for workflow demonstration. |
| Duplicate Request | Similar recent request pattern was identified and needs review before proceeding or was rejected/cancelled. |
| Amount Over Threshold | Request amount triggers additional control, executive review, or special review attention. |
| Missing Quote | Quote or supporting document is missing for procurement readiness. |
| No Exception | Request follows the standard workflow without a controlled exception reason. |
| Urgent Safety Purchase | Safety or operations-critical purchase that follows the emergency safety exception path. |
| Delayed Vendor Response | Vendor response or fulfillment timing is delayed and affects delivery visibility. |

## Known Synthetic Patterns

- Missing or invalid budget codes are intentionally included so SQL and dashboard examples can analyze finance holds and data-quality issues.
- High-value approvals include requests above CAD 10,000 plus several capital/special-review examples above CAD 25,000.
- Emergency safety purchases are concentrated in safety, repair, and operations-critical categories.
- Vendor-delay records use delayed delivery status and support vendor/category fulfillment analysis.
- Rejected requests include duplicate, missing quote, invalid vendor, budget-code, and amount-threshold examples.
- Pending approvals include both manager and finance queues to support approval-aging analysis.
- Closed requests are common enough to support cycle-time analysis from request to receiving.
- Receiving and payment statuses are intentionally separate from workflow status so analysis can distinguish approval progress, fulfillment progress, and supporting invoice state.

## Data Limitations

- This is not production ERP data.
- This does not represent a real company, real vendor, real employee, real client, patient, resident, or financial record.
- HarbourPoint Marine Services and all vendors in the dataset are fictional.
- The dataset is designed to support a Business Analyst portfolio case, SQL examples, dashboard mockups, and UAT examples.
- The dataset is intentionally simplified for review and demonstration; it does not include full accounting, inventory, invoice matching, tax, vendor onboarding, or ERP configuration detail.
