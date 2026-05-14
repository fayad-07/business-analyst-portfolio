# Non-Functional Requirements

## Purpose

This document defines non-functional requirements for the platform-neutral ERP-style procurement workflow in the HarbourPoint Marine Services synthetic portfolio case. These requirements describe quality, access, audit, reporting, privacy, performance, availability, and support expectations rather than specific ERP configuration.

The final column maps each non-functional requirement to completed user story and UAT coverage where the relationship is explicit. Items without a direct UAT ID are labelled as readiness, policy, accessibility, or scope constraints rather than forced into a guessed mapping.

## Requirement List

| ID | Requirement statement | Priority | Source stakeholder | Acceptance reference or related user story |
|---|---|---|---|---|
| NFR-001 | The workflow shall restrict access by role so users can only view, create, approve, edit, review, report on, or administer records appropriate to their business responsibility. | Must have | IT systems analyst; Project manager | US-013; US-015; UAT-014; UAT-018 |
| NFR-002 | The workflow shall maintain audit history for request submission, field changes, approvals, rejections, returns, finance review, procurement holds, PO status updates, receiving updates, comments, and closure. | Must have | Finance / budget reviewer; IT systems analyst | US-015; US-016; UAT-006; UAT-015 |
| NFR-003 | The workflow shall use validation and controlled-list values for key fields such as department, request category, budget code, vendor, priority, status, and exception reason where reference data is available. | Must have | Finance / budget reviewer; IT systems analyst | US-002; US-008; UAT-004; UAT-013 |
| NFR-004 | The workflow should be available to pilot users during normal HarbourPoint business hours with planned downtime communicated before UAT or rollout activities. | Should have | Project manager; Operations requester | Readiness assumption; no direct UAT ID |
| NFR-005 | Common user actions such as opening a request, saving a draft, submitting a request, approving a request, and filtering a queue should respond quickly enough to support daily operational use in the Maintenance pilot. | Should have | Operations requester; Department manager | US-013; UAT-018 |
| NFR-006 | Procurement request records, approval history, finance review notes, PO status, receiving status, and audit history should be retained for the agreed business retention period and remain available for reporting during that period. | Should have | Finance / budget reviewer; Executive sponsor | Retention policy gap; no direct UAT ID |
| NFR-007 | The workflow shall protect confidential business information by limiting access to budget codes, spend amounts, vendor details, approval comments, and audit history based on role need. | Must have | Finance / budget reviewer; IT systems analyst | US-012; US-015; UAT-014; UAT-015 |
| NFR-008 | User-facing workflow screens, forms, queues, and reports should follow reasonable accessibility expectations for readable labels, keyboard-friendly navigation, clear error messages, and sufficient contrast. | Should have | Operations requester; UAT tester | Accessibility review expectation; no direct UAT ID |
| NFR-009 | Reporting extracts should refresh on a cadence agreed for the pilot and should clearly state whether metrics are near real time, daily, weekly, or manually refreshed during UAT. | Should have | Executive sponsor; Report viewer | US-014; UAT-010; UAT-017; UAT-020 |
| NFR-010 | The workflow shall assume lightweight integration or reference-data dependencies for vendor master lookup, budget code reference data, user role directory, and reporting extract outputs without including payment, full accounting, or inventory integration in scope. | Must have | IT systems analyst; Project manager | Scope/dependency constraint; no direct UAT ID |
| NFR-011 | Error messages and validation prompts should explain the business correction needed, such as missing budget code, inactive vendor, missing business reason, or incomplete receiving update. | Should have | Operations requester; Procurement coordinator | US-002; UAT-004 |
| NFR-012 | The workflow should support UAT and training with realistic synthetic records and role-based access examples without exposing real company, vendor, employee, or financial data. | Must have | UAT tester; Project manager | US-015; UAT-014; UAT-015 |

## Traceability Notes

- Role access, audit history, validation, reporting refresh clarity, privacy, and synthetic UAT data are mapped to completed user stories and UAT cases where explicit coverage exists.
- Availability, retention, accessibility, and integration-boundary items are kept as documented constraints or review expectations because no direct UAT case was created for them.
- Detailed technical architecture, security design, and integration build specifications are outside this portfolio case.
