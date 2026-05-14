# Functional Requirements

## Purpose

This document defines functional requirements for the platform-neutral ERP-style procurement request-to-purchase-order workflow for HarbourPoint Marine Services. It is part of a synthetic Business Analyst portfolio case and does not claim configuration in a real ERP product.

The requirements describe what the future workflow should do from a business user perspective. The final column maps each functional requirement to the completed user story and UAT coverage where a clear mapping exists.

## Requirement List

| ID | Requirement statement | Priority | Source stakeholder | Acceptance reference or related user story |
|---|---|---|---|---|
| FR-001 | The workflow shall allow an operations requester to create a purchase request for Maintenance pilot categories including parts, tools, safety equipment, maintenance services, vendor repairs, and operations supplies. | Must have | Operations requester | US-001; UAT-001 |
| FR-002 | The purchase request form shall capture requester, department, request category, description, business reason, estimated amount in CAD, priority, needed-by date, budget code, vendor if known, and delivery location. | Must have | Operations requester; Procurement coordinator | US-001; UAT-001 |
| FR-003 | The workflow shall identify required fields before normal submission and prevent submission when required fields are missing, except where an emergency safety rule allows fast-track handling. | Must have | Operations requester; Finance / budget reviewer | US-002; US-016; UAT-004; UAT-006 |
| FR-004 | The workflow shall support attachments such as quotes, photos, specifications, vendor documents, or other supporting evidence on the purchase request. | Should have | Operations requester; Procurement coordinator | US-003; UAT-016 |
| FR-005 | The workflow shall validate controlled-list fields for department, request category, priority, budget code, vendor, status, and hold reason where reference data is available. | Must have | IT systems analyst; Finance / budget reviewer | US-002; UAT-004 |
| FR-006 | The workflow shall assign a unique request identifier to each submitted purchase request for tracking, reporting, and traceability. | Must have | Project manager; Procurement coordinator | US-001; UAT-001 |
| FR-007 | The workflow shall route submitted requests to the correct department manager for approval based on department ownership. | Must have | Department manager | US-004; UAT-001 |
| FR-008 | The workflow shall apply amount-based approval routing for requests under CAD 1,000, CAD 1,000 to CAD 9,999, and CAD 10,000 and above. | Must have | Department manager; Executive sponsor | US-004; US-005; US-006; UAT-001; UAT-002; UAT-003 |
| FR-009 | The workflow shall route requests of CAD 1,000 to CAD 9,999 to department manager approval plus finance review. | Must have | Finance / budget reviewer | US-005; UAT-002; UAT-013 |
| FR-010 | The workflow shall route requests of CAD 10,000 and above to department manager approval, finance review, and executive sponsor approval. | Must have | Executive sponsor; Finance / budget reviewer | US-006; UAT-003 |
| FR-011 | The workflow shall allow approvers to approve, reject, or return a request for correction with a mandatory decision comment. | Must have | Department manager | US-007; UAT-007 |
| FR-012 | The workflow shall notify the requester when a request is submitted, returned, rejected, approved, placed on finance hold, placed on procurement hold, converted to PO status, updated for receiving, or overdue for approval. | Should have | Operations requester; Project manager | US-007; US-012; UAT-007; UAT-012; UAT-017 |
| FR-013 | The workflow shall validate whether a budget code is present and recognized before normal routing continues. | Must have | Finance / budget reviewer | US-002; US-008; UAT-004; UAT-013 |
| FR-014 | The workflow shall route missing, inactive, invalid, or inconsistent budget code conditions to finance hold or finance review according to the business rules catalogue. | Must have | Finance / budget reviewer | US-008; UAT-004; UAT-013 |
| FR-015 | The workflow shall allow finance reviewers to record budget review decisions, finance hold reasons, correction notes, and review completion. | Must have | Finance / budget reviewer | US-005; US-008; UAT-002; UAT-013 |
| FR-016 | The workflow shall flag potential duplicate requests using recent requester, category, vendor, amount range, and date-window indicators without automatically blocking legitimate requests. | Should have | Department manager; Procurement coordinator | US-009; UAT-011 |
| FR-017 | The workflow shall allow emergency safety requests to follow faster routing when justified while still capturing required audit notes and post-approval review information. | Must have | Operations requester; Department manager; Finance / budget reviewer | US-016; UAT-006 |
| FR-018 | The workflow shall allow the requester or procurement coordinator to identify whether the vendor is preferred, new, one-time, or unknown at submission or procurement review. | Should have | Procurement coordinator | US-009; UAT-005 |
| FR-019 | The workflow shall route non-preferred, new, one-time, or unknown vendor situations to procurement review before PO creation. | Should have | Procurement coordinator | US-009; UAT-005 |
| FR-020 | The workflow shall provide procurement coordinators with a review queue for approved requests requiring vendor, quote, lead time, delivery instruction, duplicate, or PO readiness review. | Must have | Procurement coordinator | US-003; US-009; UAT-005; UAT-016; UAT-019 |
| FR-021 | The workflow shall allow procurement coordinators to place a request on procurement hold with a standardized reason and comment. | Must have | Procurement coordinator | US-009; UAT-005; UAT-016; UAT-019 |
| FR-022 | The workflow shall allow procurement coordinators to create a PO status or PO handoff once required approvals, finance review, vendor details, and request details are complete. | Must have | Procurement coordinator | US-010; UAT-008 |
| FR-023 | The workflow shall record PO reference, PO creation date, vendor contact status, and delivery instruction status when a request moves to PO created. | Should have | Procurement coordinator; Vendor contact | US-010; UAT-008 |
| FR-024 | The workflow shall support receiving updates with delivery status values including not ordered, ordered, not received, partially received, received, delayed, rejected, and cancelled. | Must have | Receiving / operations staff | US-011; UAT-009; UAT-019 |
| FR-025 | The workflow shall keep request status separate from delivery status in user views and reporting extracts. | Must have | Receiving / operations staff; Report viewer | US-011; US-012; UAT-009; UAT-019; UAT-020 |
| FR-026 | The workflow shall display request status history to authorized users including submitted, pending approval, returned, rejected, finance hold, procurement hold, approved, PO created, closed, and delayed. | Must have | Operations requester; Department manager; Procurement coordinator | US-010; US-011; US-012; UAT-008; UAT-009; UAT-017; UAT-020 |
| FR-027 | The workflow shall allow authorized users to search and filter purchase requests by request ID, department, category, requester, approver, vendor, amount band, status, priority, budget code, exception reason, and date range. | Should have | Report viewer; Procurement coordinator | US-013; UAT-018 |
| FR-028 | The workflow shall support reporting extracts for backlog, approval aging, finance holds, procurement holds, cycle time, category spend, vendor spend, emergency requests, and receiving status. | Must have | Executive sponsor; Report viewer | US-014; UAT-010; UAT-017; UAT-020 |
| FR-029 | The workflow shall maintain an audit trail for submission, edits, approvals, rejections, returns, finance review, procurement holds, PO creation, receiving updates, comments, and closure. | Must have | Finance / budget reviewer; IT systems analyst | US-015; UAT-015 |
| FR-030 | The workflow shall enforce role-based permissions for requesters, department managers, finance reviewers, procurement coordinators, executive sponsors, administrators, UAT testers, and report viewers. | Must have | IT systems analyst; Project manager | US-015; UAT-014; UAT-015 |

## Traceability Notes

- User story and UAT references are mapped only where the completed backlog and UAT artifacts make the relationship clear.
- Reporting requirements in this file define workflow extract needs; detailed Power BI-style dashboard design is documented in `05-data-and-reporting/dashboard-design-spec.md`.
- This document remains a specification artifact and does not claim a configured or tested production ERP system.
