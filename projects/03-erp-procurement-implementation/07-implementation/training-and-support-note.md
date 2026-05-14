# Training and Support Note

## How to Read This Artifact

This note outlines user training and support planning for the synthetic ERP-style procurement workflow pilot at HarbourPoint Marine Services. It is written as a practical Business Analyst / implementation analyst artifact for a portfolio case and does not claim a real ERP implementation or production support model.

## Training Audiences

- Operations requesters
- Department managers
- Finance/budget reviewers
- Procurement coordinator
- Project manager
- Executive sponsor
- UAT testers
- IT/ERP support

## Training Objectives

- Submit complete procurement requests.
- Understand required fields.
- Attach quotes/supporting documents.
- Review approval queue.
- Add approval/rejection comments.
- Validate budget codes.
- Review vendor details.
- Update PO and receiving status.
- Use status visibility and dashboard views.
- Report issues during pilot.

## Role-Based Training Topics

| Role | Training topics | Practice scenario | Success signal |
|---|---|---|---|
| Operations requester | Create request, required fields, budget code, vendor if known, attachments, emergency safety flag, status lookup | Submit a Maintenance parts request with valid budget code and supporting quote | Request is submitted with complete fields and visible status. |
| Department manager | Approval queue, amount bands, approve/reject/return, mandatory comments, overdue approvals | Review a low-value request and reject a duplicate request with reason | Decision is recorded with comment and correct status. |
| Finance/budget reviewer | Budget-code validation, finance hold reasons, correction notes, finance review completion, emergency post-review | Place an invalid budget-code request on finance hold and clear it after correction | Finance decision and hold reason are visible before procurement review. |
| Procurement coordinator | Procurement review, vendor status, quote check, duplicate review, PO readiness, PO status, delivery instructions | Review an approved request with missing quote, then move a complete request to PO Created | Hold and PO handoff steps are documented correctly. |
| Project manager | Cutover readiness, issue triage, hypercare cadence, adoption metrics, go/no-go criteria | Review first-week issue log and approval-over-SLA metric | Issues have owners, priorities, and review decisions. |
| Executive sponsor | Pilot objective, go/no-go criteria, dashboard metrics, expansion decision options | Review executive overview and exception dashboard | Sponsor can interpret pilot health without system detail. |
| UAT testers | UAT scenarios, pass/fail evidence, defect reporting, rollout impact of open defects | Re-test missing budget code, finance review routing, and dashboard refresh scenarios | UAT outcome is clear enough for launch decision. |
| IT/ERP support | Role access, workflow availability, reference data, notification checks, reporting refresh, defect handoff | Confirm pilot requester, manager, finance, procurement, and report viewer access | Support confirms access and technical checks are ready. |

## Quick Reference Guide Outline

- Creating a request
- Required fields
- Budget code selection
- Adding attachments/quotes
- Approval steps
- Rejection reasons
- Emergency safety requests
- Procurement review
- PO status
- Receiving status
- Dashboard/status lookup
- How to get support

## Support Channels

- Primary support channel: Pilot support mailbox or project channel monitored by the Business Analyst during first-week hypercare.
- Escalation path: Business Analyst triage, then procurement coordinator for PO/vendor issues, finance reviewer for budget-code or finance hold issues, IT systems analyst / ERP implementation consultant for access or workflow availability, and project manager for launch-impacting decisions.
- Office hours: Daily 30-minute drop-in during the first pilot week, with additional ad hoc support for first submissions and approval reviews.
- Daily hypercare check-in: Project manager, Business Analyst, procurement coordinator, finance reviewer, department manager, and IT/ERP support review issues, defects, pending approvals, budget-code exceptions, emergency requests, and reporting status.
- Defect log process: Each defect must include scenario, steps to reproduce, expected result, actual result, severity, owner, workaround, status, and launch impact.
- FAQ updates: The Business Analyst updates the FAQ during the pilot when repeated questions appear in support tickets or office hours.

## First-Week Support Plan

| Day | Support focus | Expected review |
|---|---|---|
| Day 1 | Access, launch communication, workflow availability, first submissions | Confirm pilot users can access the workflow and at least one complete request can be submitted and tracked. |
| Day 2 | Approval routing and finance review | Review manager queues, medium/high-value routing, finance holds, and missing/invalid budget-code handling. |
| Day 3 | Procurement review and PO status | Review vendor status, missing quotes, duplicate warnings, procurement holds, and PO handoff readiness. |
| Day 4 | Receiving/status visibility and reporting | Review request status vs delivery status, receiving updates, dashboard refresh timing, and reporting mismatches. |
| Day 5 | Defects, adoption review, follow-up training | Review adoption metrics, unresolved support questions, defect trends, training reinforcement, and pilot decision options. |

## Frequently Asked Questions

### 1. What should I do if I do not know the budget code?

Check the budget-code reference list first. If the code is still unclear, ask finance through the pilot support channel before submitting a standard request. A standard request with a missing budget code should not continue through normal routing unless it qualifies for the emergency safety fast-track rule.

### 2. What happens if my request is rejected?

The request status changes to rejected, and the manager or approver must provide a documented reason. A rejected request is not eligible for PO creation. If the business need still exists, follow the correction or resubmission guidance provided in the rejection comment.

### 3. How do I know who is approving my request?

Use the request status or approval view to see the current approval step. The workflow should show whether the request is pending department manager approval, finance review, executive sponsor approval, procurement review, or another documented status.

### 4. What if the purchase is urgent for safety reasons?

Mark the request as an emergency safety request only when the situation fits the pilot emergency criteria. The request can follow faster routing, but it still requires justification, approval history, audit notes, and finance visibility where appropriate.

### 5. What if the vendor is missing or invalid?

Submit the best available vendor details if the field allows it, then expect procurement review. Unknown, new, one-time, invalid, or non-preferred vendors may require a procurement hold before PO creation.

### 6. When is finance review required?

Finance review is required for requests from CAD 1,000 to CAD 9,999, requests of CAD 10,000 and above, invalid or inactive budget codes, capital expenditure or special review requests, emergency safety requests needing post-review, and requests manually flagged for budget review.

### 7. How do I attach a quote?

Use the attachment section of the request form to add the quote, photo, specification, or supporting document. If a quote is missing and needed for PO readiness, procurement may place the request on hold until the attachment or an approved exception is documented.

### 8. How do I check status?

Search by request ID or use the status view/dashboard. Review request status for workflow progress and delivery status for fulfillment progress. These are separate so an approved request is not mistaken for a received item or completed service.

### 9. Who do I contact for support?

Use the pilot support channel first. The Business Analyst will triage the question and route it to procurement, finance, IT/ERP support, the department manager, or the project manager as needed.

### 10. What happens if the workflow is unavailable?

Use the manual fallback instructions from the project manager or procurement coordinator. In-flight requests should be tracked in the controlled fallback log until the workflow is available again and restart instructions are issued.

### 11. Why was my request placed on finance hold?

A finance hold usually means the budget code is missing, invalid, inactive, inconsistent with the category, or requires review based on amount or exception type. The finance reviewer should provide a hold reason and correction note.

### 12. Why was my request placed on procurement hold?

A procurement hold usually means vendor details, quote evidence, duplicate review, delivery instructions, or PO readiness information needs clarification. The procurement coordinator should provide a hold reason and comment.

### 13. What should approvers include in approval or rejection comments?

Approvers should use business-facing comments that explain the decision clearly enough for requesters, finance, procurement, and later audit review. Rejection and return comments are mandatory.

### 14. How are dashboard numbers used during the pilot?

Dashboard views are used to review adoption, backlog, approval aging, budget-code exceptions, procurement holds, emergency requests, vendor delays, and receiving status. They are pilot measurement tools, not proof of achieved performance improvement.

## BA Portfolio Value

This artifact demonstrates user enablement, change adoption support, role-based communication, practical rollout thinking, and implementation analyst readiness. It shows how a junior BA can prepare users, define support expectations, document first-week hypercare, and turn UAT and requirements work into launch support material.
