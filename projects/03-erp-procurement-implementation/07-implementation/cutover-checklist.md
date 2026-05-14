# Cutover Checklist

## How to Read This Artifact

This checklist supports pilot cutover readiness for the synthetic ERP-style procurement workflow at HarbourPoint Marine Services. It is a portfolio artifact showing how a Business Analyst or implementation analyst could prepare a controlled pilot launch without claiming a real ERP production cutover.

## Cutover Summary

- Pilot scope: Maintenance procurement requests, with Safety participating for emergency safety purchase examples.
- Target users: Maintenance requesters, Safety participants for emergency scenarios, department managers, finance/budget reviewers, procurement coordinator, project manager, executive sponsor, UAT testers, and IT/ERP support.
- Target process: Standardized request intake, required-field validation, approval routing, finance review, procurement review, PO handoff, receiving status, notifications, audit history, and reporting visibility.
- Cutover approach: Controlled pilot launch after UAT review, training, role access setup, reference data readiness, reporting validation, and go/no-go approval.
- Rollback/manual fallback assumption: If the workflow is unavailable or a launch-blocking defect is found, pilot requests can be tracked through a controlled email/spreadsheet fallback owned by the project manager and procurement coordinator until restart.

## Pre-Cutover Checklist

- [ ] Confirm data readiness for pilot request categories, statuses, hold reasons, vendors, and budget codes — Owner: Business Analyst — Status: [Not Started/In Progress/Complete] — Notes: [ ]
- [ ] Review and sign off approval matrix for low-, medium-, high-value, emergency safety, capital expenditure, and budget-code exception scenarios — Owner: Project Manager — Status: [Not Started/In Progress/Complete] — Notes: [ ]
- [ ] Review business rules for required fields, approval routing, finance review, procurement holds, emergency fast-track, duplicate warning, and receiving status — Owner: Business Analyst — Status: [Not Started/In Progress/Complete] — Notes: [ ]
- [ ] Set up role access for requesters, department managers, finance reviewers, procurement coordinator, report viewers, UAT testers, and support roles — Owner: IT Systems Analyst — Status: [Not Started/In Progress/Complete] — Notes: [ ]
- [ ] Confirm pilot user list for Maintenance and Safety emergency participants — Owner: Department Manager — Status: [Not Started/In Progress/Complete] — Notes: [ ]
- [ ] Prepare vendor reference list for preferred, new, one-time, unknown, and non-preferred vendor handling — Owner: Procurement Coordinator — Status: [Not Started/In Progress/Complete] — Notes: [ ]
- [ ] Prepare budget-code reference list and identify finance owner for missing, inactive, invalid, or inconsistent budget codes — Owner: Finance Reviewer — Status: [Not Started/In Progress/Complete] — Notes: [ ]
- [ ] Confirm required fields for requester, department, category, description, business reason, amount, priority, needed-by date, budget code, vendor if known, delivery location, and attachments where applicable — Owner: Business Analyst — Status: [Not Started/In Progress/Complete] — Notes: [ ]
- [ ] Complete role-based training for pilot users or schedule launch-day assisted support — Owner: Business Analyst — Status: [Not Started/In Progress/Complete] — Notes: [ ]
- [ ] Distribute quick reference guide to requesters, approvers, finance, procurement, and support roles — Owner: Business Analyst — Status: [Not Started/In Progress/Complete] — Notes: [ ]
- [ ] Confirm UAT sign-off or documented pilot decision for UAT exceptions — Owner: Project Manager — Status: [Not Started/In Progress/Complete] — Notes: [ ]
- [ ] Review open defects DEF-001, DEF-002, DEF-003, and any newly logged UAT issues — Owner: Project Manager — Status: [Not Started/In Progress/Complete] — Notes: [ ]
- [ ] Resolve or formally accept critical/high defects with owner, workaround, and launch decision — Owner: Project Manager — Status: [Not Started/In Progress/Complete] — Notes: [ ]
- [ ] Validate reporting/dashboard view for backlog, approval aging, finance holds, procurement holds, emergency requests, vendor delays, and receiving status — Owner: IT Systems Analyst — Status: [Not Started/In Progress/Complete] — Notes: [ ]
- [ ] Review notification templates for submission, approval, rejection, finance hold, procurement hold, PO created, receiving update, and overdue approval — Owner: Business Analyst — Status: [Not Started/In Progress/Complete] — Notes: [ ]
- [ ] Confirm support contacts, support channel, escalation path, and first-week hypercare schedule — Owner: Project Manager — Status: [Not Started/In Progress/Complete] — Notes: [ ]
- [ ] Obtain pilot launch approval from project manager, procurement lead, finance representative, department manager, IT/ERP support, and executive sponsor — Owner: Executive Sponsor — Status: [Not Started/In Progress/Complete] — Notes: [ ]

## Day-of-Cutover Checklist

- [ ] Confirm pilot users have access — Owner: IT Systems Analyst — Status: [Not Started/In Progress/Complete] — Notes: [ ]
- [ ] Confirm request form/workflow is available — Owner: ERP Implementation Consultant — Status: [Not Started/In Progress/Complete] — Notes: [ ]
- [ ] Confirm approval routing is active for low-, medium-, high-value, emergency safety, and special review examples — Owner: Business Analyst — Status: [Not Started/In Progress/Complete] — Notes: [ ]
- [ ] Confirm finance review route is active for medium-value, high-value, invalid budget code, emergency post-review, and capital expenditure scenarios — Owner: Finance Reviewer — Status: [Not Started/In Progress/Complete] — Notes: [ ]
- [ ] Confirm procurement review step is active for vendor, quote, duplicate, clarification, and PO readiness checks — Owner: Procurement Coordinator — Status: [Not Started/In Progress/Complete] — Notes: [ ]
- [ ] Confirm reporting refresh process and displayed refresh timing — Owner: IT Systems Analyst — Status: [Not Started/In Progress/Complete] — Notes: [ ]
- [ ] Confirm support channel is monitored — Owner: Business Analyst — Status: [Not Started/In Progress/Complete] — Notes: [ ]
- [ ] Send launch communication to pilot users and support roles — Owner: Project Manager — Status: [Not Started/In Progress/Complete] — Notes: [ ]
- [ ] Capture first pilot request and confirm it receives a unique request ID — Owner: Business Analyst — Status: [Not Started/In Progress/Complete] — Notes: [ ]
- [ ] Log launch issues, questions, defects, and access problems in the pilot issue log — Owner: Business Analyst — Status: [Not Started/In Progress/Complete] — Notes: [ ]

## First-Week Hypercare Checklist

- [ ] Review daily issue log and assign owners — Owner: Business Analyst — Status: [Not Started/In Progress/Complete] — Notes: [ ]
- [ ] Review pending approvals and approvals over SLA — Owner: Department Manager — Status: [Not Started/In Progress/Complete] — Notes: [ ]
- [ ] Review missing or invalid budget-code exceptions — Owner: Finance Reviewer — Status: [Not Started/In Progress/Complete] — Notes: [ ]
- [ ] Review emergency purchase requests for justification, approval history, and audit notes — Owner: Finance Reviewer — Status: [Not Started/In Progress/Complete] — Notes: [ ]
- [ ] Review vendor delays, unknown vendors, missing quotes, and procurement holds — Owner: Procurement Coordinator — Status: [Not Started/In Progress/Complete] — Notes: [ ]
- [ ] Review user questions and identify training reinforcement needs — Owner: Business Analyst — Status: [Not Started/In Progress/Complete] — Notes: [ ]
- [ ] Review dashboard metrics and refresh status — Owner: Project Manager — Status: [Not Started/In Progress/Complete] — Notes: [ ]
- [ ] Triage defects by severity, owner, workaround, and launch impact — Owner: Project Manager — Status: [Not Started/In Progress/Complete] — Notes: [ ]
- [ ] Provide training reinforcement for repeated questions or incorrect submissions — Owner: Business Analyst — Status: [Not Started/In Progress/Complete] — Notes: [ ]
- [ ] Prepare end-of-week pilot summary with adoption metrics, risks, defects, and recommended decision — Owner: Business Analyst — Status: [Not Started/In Progress/Complete] — Notes: [ ]

## Rollback / Manual Fallback Checklist

- [ ] Confirm fallback trigger conditions: workflow unavailable, role access prevents core users from working, approval routing blocks valid pilot requests, finance review cannot process budget-code exceptions, PO handoff cannot be tracked, or critical/high defect is not accepted for pilot use — Owner: Project Manager — Status: [Not Started/In Progress/Complete] — Notes: [ ]
- [ ] Confirm manual email/spreadsheet fallback owner and backup owner — Owner: Procurement Coordinator — Status: [Not Started/In Progress/Complete] — Notes: [ ]
- [ ] Confirm how in-flight requests are tracked with request ID, requester, department, amount, approval status, finance status, procurement status, delivery status, owner, and date/time of last update — Owner: Business Analyst — Status: [Not Started/In Progress/Complete] — Notes: [ ]
- [ ] Confirm user notification template for fallback start, current instructions, support contact, and expected next update — Owner: Project Manager — Status: [Not Started/In Progress/Complete] — Notes: [ ]
- [ ] Confirm defects are documented before restart with steps to reproduce, expected result, actual result, severity, owner, workaround, and restart decision — Owner: IT Systems Analyst — Status: [Not Started/In Progress/Complete] — Notes: [ ]

## Simulated Sign-Off Note

This table records the roles that would normally review pilot launch readiness in a real project. It is not evidence of real stakeholder approval.

| Role | Simulated review status | Comments |
|---|---|---|
| Project manager | Not applicable to synthetic case | Portfolio artifact only. |
| Procurement lead | Not applicable to synthetic case | Portfolio artifact only. |
| Finance representative | Not applicable to synthetic case | Portfolio artifact only. |
| Department manager | Not applicable to synthetic case | Portfolio artifact only. |
| IT systems analyst / ERP implementation consultant | Not applicable to synthetic case | Portfolio artifact only. |
| Executive sponsor | Not applicable to synthetic case | Portfolio artifact only. |
