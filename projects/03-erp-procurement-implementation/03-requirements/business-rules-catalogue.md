# Business Rules Catalogue

## Purpose

This catalogue defines testable business rules for the HarbourPoint Marine Services platform-neutral ERP-style procurement workflow. It supports the completed user stories, UAT cases, approval matrix review, and implementation discussion without claiming real ERP configuration.

## Business Rules

| ID | Rule name | Business rule | Applies to | Owner / source stakeholder | Priority |
|---|---|---|---|---|---|
| BRULE-001 | Low-value approval threshold | Purchase requests under CAD 1,000 require department manager approval before procurement review. | Standard requests | Department manager | Must have |
| BRULE-002 | Medium-value approval threshold | Purchase requests from CAD 1,000 to CAD 9,999 require department manager approval plus finance review before procurement review. | Standard requests | Department manager; Finance / budget reviewer | Must have |
| BRULE-003 | High-value approval threshold | Purchase requests of CAD 10,000 and above require department manager approval, finance review, and executive sponsor approval before procurement review. | Standard requests | Executive sponsor; Finance / budget reviewer | Must have |
| BRULE-004 | Department approval ownership | Every purchase request must be associated with a department, and the department manager for that department is the first business approver unless an approved delegation rule is documented. Delegation remains an open policy detail in this portfolio case. | All requests | Department manager; Project manager | Must have |
| BRULE-005 | Finance review trigger | Finance review is required for requests of CAD 1,000 and above, invalid or inactive budget codes, capital expenditure flags, emergency safety requests needing post-review, and any request manually flagged for budget review. | Finance review | Finance / budget reviewer | Must have |
| BRULE-006 | Capital expenditure flag | A purchase request marked as capital expenditure or special review requires finance review and executive sponsor approval regardless of amount. | Capital expenditure / special review | Finance / budget reviewer; Executive sponsor | Must have |
| BRULE-007 | Preferred vendor rule | Requests using a preferred vendor may continue to procurement review after required approvals and budget checks are complete. Requests using a new, one-time, unknown, or non-preferred vendor require procurement review before PO creation. | Vendor selection | Procurement coordinator | Should have |
| BRULE-008 | Emergency safety fast-track | Emergency safety requests may bypass standard timing but require department manager approval, emergency justification, post-approval audit notes, and finance visibility after urgent action where finance review could not occur first. | Emergency safety requests | Department manager; Finance / budget reviewer | Must have |
| BRULE-009 | Missing budget code handling | A standard purchase request with a missing budget code cannot proceed through normal submission. The requester must provide the budget code or the request must follow the emergency safety exception rule when applicable. | Request intake; Finance review | Finance / budget reviewer | Must have |
| BRULE-010 | Invalid budget code handling | A purchase request with an inactive, invalid, or category-inconsistent budget code may be submitted only to finance hold or finance review and cannot proceed to procurement review until resolved or explicitly approved as an exception. | Budget validation | Finance / budget reviewer | Must have |
| BRULE-011 | Duplicate request warning | Potential duplicates should be flagged when requester, category, vendor, amount range, and recent request date suggest a similar request. The warning does not automatically block submission but requires a proceed reason or cancellation. | Request intake; Procurement review | Department manager; Procurement coordinator | Should have |
| BRULE-012 | Approval and rejection comments | Approval, rejection, and return decisions must capture the decision maker, timestamp, decision type, and comment. Rejection and return comments are mandatory. | Approval decisions | Department manager; Executive sponsor | Must have |
| BRULE-013 | Receiving confirmation | A request cannot be marked closed for fulfillment until receiving status is recorded as received, cancelled, or otherwise resolved with a closure reason. Partial receiving keeps the delivery status open. | Receiving; Closure | Receiving / operations staff; Procurement coordinator | Must have |
| BRULE-014 | PO closure | A purchase request may be closed only after PO creation or cancellation is recorded, receiving or delivery status is resolved, and open finance or procurement holds are cleared or closed with an approved reason. | PO lifecycle | Procurement coordinator | Must have |
| BRULE-015 | Rejected request handling | A rejected request is not eligible for PO creation. If the business need remains valid, the requester must revise and resubmit as a new or returned request according to the documented backlog expectations. | Rejected requests | Department manager; Operations requester | Must have |
| BRULE-016 | Status definitions | Request status values must describe workflow progress and remain separate from delivery status values. Request status values include submitted, pending approval, returned, rejected, finance hold, procurement hold, approved, PO created, closed, and delayed. Delivery status values include not ordered, ordered, not received, partially received, received, delayed, rejected, and cancelled. | Status tracking; Reporting | Project manager; Report viewer | Must have |
| BRULE-017 | Procurement readiness | Procurement cannot create or hand off a PO until required request details, required approvals, finance review when applicable, vendor status, quote status when needed, and delivery instructions are complete or formally excepted. | Procurement review; PO generation | Procurement coordinator | Must have |
| BRULE-018 | Reporting reason codes | Finance holds, procurement holds, duplicate warnings, emergency requests, rejections, returns, and receiving exceptions must use standardized reason codes where practical so reporting can group exception causes consistently. | Reporting; Exceptions | Report viewer; Project manager | Should have |

## Approval Rule Summary

| Amount / scenario | Required path |
|---|---|
| Under CAD 1,000 | Department manager approval. |
| CAD 1,000 to CAD 9,999 | Department manager approval plus finance review. |
| CAD 10,000 and above | Department manager approval, finance review, and executive sponsor approval. |
| Emergency safety request | Fast-track timing may apply, but emergency justification and post-approval audit notes are required. |
| Capital expenditure / special review | Finance review and executive sponsor approval required regardless of amount. |

## UAT Traceability Notes

- The UAT test cases cover each approval threshold and include emergency safety, invalid budget code, duplicate warning, rejected request, PO creation, receiving, role access, audit history, and reporting/status scenarios.
- These rules are written for portfolio traceability and implementation discussion. They are not evidence of real HarbourPoint policy approval.
