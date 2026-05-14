# User Stories and Acceptance Criteria

## How to Read This Artifact

This backlog translates the HarbourPoint Marine Services procurement workflow requirements into role-based user stories and testable acceptance criteria for a synthetic ERP-style procurement implementation case. It is written for business review, recruiter review, and UAT traceability. It does not claim that a real ERP platform has been configured.

The story IDs, requirement IDs, and business rule IDs preserve traceability from discovery and requirements through the completed UAT cases.

## Backlog Summary

| Story ID | Role | Capability | Related requirement IDs | Related business rule IDs | Priority | Status |
|---|---|---|---|---|---|---|
| US-001 | Operations requester | Create procurement request | BR-001; FR-001; FR-002 | BRULE-004 | Must Have | Ready for UAT mapping |
| US-002 | Operations requester | Validate required fields before submission | BR-002; FR-003; FR-005; FR-013; NFR-003; NFR-011 | BRULE-008; BRULE-009; BRULE-010 | Must Have | Ready for UAT mapping |
| US-003 | Operations requester | Attach quote or supporting document | BR-002; BR-007; FR-004; FR-020 | BRULE-017 | Should Have | Ready for UAT mapping |
| US-004 | Department manager | Route low-value request to department manager | BR-004; FR-007; FR-008 | BRULE-001; BRULE-004; BRULE-012 | Must Have | Ready for UAT mapping |
| US-005 | Finance reviewer | Route medium-value request to department manager and finance | BR-004; BR-005; FR-008; FR-009; FR-015 | BRULE-002; BRULE-005; BRULE-012 | Must Have | Ready for UAT mapping |
| US-006 | Executive sponsor | Route high-value request to department manager, finance, and executive sponsor | BR-004; BR-006; FR-008; FR-010 | BRULE-003; BRULE-005; BRULE-012 | Must Have | Ready for UAT mapping |
| US-007 | Department manager | Reject or return request with reason/comment | BR-003; BR-006; FR-011; FR-012 | BRULE-012; BRULE-015; BRULE-018 | Must Have | Ready for UAT mapping |
| US-008 | Finance reviewer | Flag missing or invalid budget code | BR-002; BR-005; FR-013; FR-014; FR-015; NFR-003 | BRULE-005; BRULE-009; BRULE-010; BRULE-018 | Must Have | Ready for UAT mapping |
| US-009 | Procurement coordinator | Review vendor details before PO creation | BR-007; BR-009; FR-018; FR-019; FR-020; FR-021 | BRULE-007; BRULE-011; BRULE-017; BRULE-018 | Must Have | Ready for UAT mapping |
| US-010 | Procurement coordinator | Generate or record purchase order status | BR-007; FR-022; FR-023; FR-026 | BRULE-014; BRULE-016; BRULE-017 | Must Have | Ready for UAT mapping |
| US-011 | Receiving / operations staff | Update receiving status | BR-008; FR-024; FR-025; FR-026 | BRULE-013; BRULE-016 | Must Have | Ready for UAT mapping |
| US-012 | Operations requester | View request status as requester | BR-003; BR-008; FR-012; FR-025; FR-026; NFR-007 | BRULE-016 | Must Have | Ready for UAT mapping |
| US-013 | Project manager | Search/filter procurement requests | BR-010; BR-011; FR-027; NFR-001; NFR-005 | BRULE-016; BRULE-018 | Should Have | Ready for UAT mapping |
| US-014 | Executive sponsor | View approval and exception dashboard | BR-003; BR-010; FR-028; NFR-009 | BRULE-016; BRULE-018 | Must Have | Ready for UAT mapping |
| US-015 | UAT tester / system admin | Track audit history and role access | BR-006; FR-029; FR-030; NFR-001; NFR-002; NFR-007; NFR-012 | BRULE-012; BRULE-013; BRULE-014 | Must Have | Ready for UAT mapping |
| US-016 | Operations requester | Manage emergency safety purchase exception | BR-006; BR-009; FR-003; FR-017; NFR-002 | BRULE-005; BRULE-008; BRULE-012; BRULE-018 | Must Have | Ready for UAT mapping |

## User Stories

### US-001: Create standardized purchase request

**User story:**  
As an operations requester, I want to create a purchase request using a standard intake form, so that HarbourPoint Marine Services receives consistent information before approval, finance review, and procurement review.

**Related requirements:**  
BR-001, FR-001, FR-002

**Related business rules:**  
BRULE-004

**Priority:**  
Must Have

**Acceptance criteria:**
- Given I am an authorized Maintenance pilot requester, when I start a new purchase request, then I can enter requester, department, request category, description, business reason, estimated CAD amount, priority, needed-by date, budget code, vendor if known, and delivery location.
- Given I choose a request category, when the category is selected, then the available values include Maintenance pilot categories such as parts, tools, safety equipment, maintenance services, vendor repairs, and operations supplies.
- Given I submit a complete purchase request, when submission is accepted, then the request is assigned a trackable request record that can be routed according to department ownership.

**Notes / assumptions:**  
The request record is platform-neutral and represents an ERP-style workflow object, not a configured record in a named ERP product.

### US-002: Validate required fields before submission

**User story:**  
As an operations requester, I want required fields and controlled values checked before normal submission, so that avoidable rework is reduced before the request reaches managers, finance, or procurement.

**Related requirements:**  
BR-002, FR-003, FR-005, FR-013, NFR-003, NFR-011

**Related business rules:**  
BRULE-008, BRULE-009, BRULE-010

**Priority:**  
Must Have

**Acceptance criteria:**
- Given a standard purchase request is missing a required field, when I attempt normal submission, then the workflow prevents normal submission and identifies the missing business information that must be corrected.
- Given the department, category, priority, budget code, vendor, status, or hold reason uses controlled reference values, when I enter a value outside the available list, then the workflow prompts me to select or correct the value where reference data is available.
- Given the request is marked as an emergency safety request, when required information is incomplete, then only the allowed fast-track exception path can continue and the emergency justification must still be captured.

**Notes / assumptions:**  
The exact final field-level mandatory rules may be refined during a real project, but this backlog follows the documented required-field baseline.

### US-003: Attach quote or supporting document

**User story:**  
As an operations requester, I want to attach a quote or supporting document to my purchase request, so that the manager, finance reviewer, and procurement coordinator can review the business need without chasing separate email attachments.

**Related requirements:**  
BR-002, BR-007, FR-004, FR-020

**Related business rules:**  
BRULE-017

**Priority:**  
Should Have

**Acceptance criteria:**
- Given I am creating or updating a purchase request, when I add a supporting document, then the request can include attachments such as quotes, photos, specifications, or vendor documents.
- Given procurement reviews an approved request, when a quote or supporting document is missing and needed for PO readiness, then procurement can place the request on hold with a standardized reason and comment.
- Given a supporting attachment is added, when authorized approvers or reviewers open the request, then they can identify that supporting evidence is available for review.

**Notes / assumptions:**  
The requirements do not define exact file type, file size, or quote-threshold rules. Those details remain open implementation-design or UAT clarification items.

### US-004: Route low-value request to department manager

**User story:**  
As a department manager, I want low-value purchase requests routed to my approval queue, so that requests under CAD 1,000 receive consistent department approval before procurement review.

**Related requirements:**  
BR-004, FR-007, FR-008

**Related business rules:**  
BRULE-001, BRULE-004, BRULE-012

**Priority:**  
Must Have

**Acceptance criteria:**
- Given a standard purchase request is under CAD 1,000, when the requester submits it with complete required information, then it routes to the department manager for the request department.
- Given I am the assigned department manager, when I review the low-value request, then I can see the request details, amount, category, business reason, budget code, vendor if known, and supporting comments or attachments.
- Given I approve the low-value request, when the decision is saved, then the decision maker, timestamp, decision type, and comment are recorded before the request moves toward procurement review.

**Notes / assumptions:**  
Delegation rules are not defined in this portfolio package and should not be assumed beyond department manager ownership.

### US-005: Route medium-value request to finance review

**User story:**  
As a finance reviewer, I want medium-value purchase requests routed through department approval and finance review, so that requests from CAD 1,000 to CAD 9,999 receive budget review before procurement review.

**Related requirements:**  
BR-004, BR-005, FR-008, FR-009, FR-015

**Related business rules:**  
BRULE-002, BRULE-005, BRULE-012

**Priority:**  
Must Have

**Acceptance criteria:**
- Given a standard purchase request is from CAD 1,000 to CAD 9,999, when the requester submits it, then the workflow requires department manager approval and finance review before procurement review.
- Given the department manager approves a medium-value request, when the request moves to finance review, then finance can record the budget review decision, correction notes, hold reason, and review completion.
- Given finance review is not complete, when procurement attempts to treat the request as PO-ready, then the request remains blocked from procurement review or PO handoff until finance review is resolved.

**Notes / assumptions:**  
This story uses the documented approval thresholds from the approval matrix.

### US-006: Route high-value request to executive sponsor

**User story:**  
As an executive sponsor, I want high-value purchase requests routed through department approval, finance review, and executive approval, so that requests of CAD 10,000 and above receive appropriate business control before procurement review.

**Related requirements:**  
BR-004, BR-006, FR-008, FR-010

**Related business rules:**  
BRULE-003, BRULE-005, BRULE-012

**Priority:**  
Must Have

**Acceptance criteria:**
- Given a standard purchase request is CAD 10,000 or above, when the requester submits it, then the workflow requires department manager approval, finance review, and executive sponsor approval before procurement review.
- Given finance review is complete for a high-value request, when executive approval is required, then the executive sponsor can review the request details, amount, business reason, budget context, and prior decision history.
- Given the executive sponsor approves or rejects the high-value request, when the decision is saved, then the decision maker, timestamp, decision type, and comment are recorded in the request history.

**Notes / assumptions:**  
Capital expenditure or special review requests may require executive approval regardless of amount under BRULE-006, but this story focuses on the standard high-value amount path.

### US-007: Reject or return request with reason

**User story:**  
As a department manager, I want to reject or return a purchase request with a clear reason and comment, so that requesters understand the decision and rejected requests do not continue to PO creation.

**Related requirements:**  
BR-003, BR-006, FR-011, FR-012

**Related business rules:**  
BRULE-012, BRULE-015, BRULE-018

**Priority:**  
Must Have

**Acceptance criteria:**
- Given I am reviewing a request, when I reject or return it, then I must enter a decision comment before the workflow saves the decision.
- Given a request is rejected, when procurement reviews PO-ready work, then the rejected request is not eligible for PO creation.
- Given a request is returned for correction, when the requester views the request, then the status and return comment are visible so the requester can understand what needs to be corrected.

**Notes / assumptions:**  
The UAT cases distinguish rejection from return-for-correction because the business outcome is different.

### US-008: Flag missing or invalid budget code

**User story:**  
As a finance reviewer, I want missing, inactive, invalid, or category-inconsistent budget codes flagged, so that budget issues are resolved before procurement continues.

**Related requirements:**  
BR-002, BR-005, FR-013, FR-014, FR-015, NFR-003

**Related business rules:**  
BRULE-005, BRULE-009, BRULE-010, BRULE-018

**Priority:**  
Must Have

**Acceptance criteria:**
- Given a standard purchase request has no budget code, when the requester attempts normal submission, then the workflow blocks normal submission unless the emergency safety exception rule applies.
- Given a purchase request has an inactive, invalid, or category-inconsistent budget code, when the request is submitted or reviewed, then it routes to finance hold or finance review and does not proceed to procurement review until resolved or formally excepted.
- Given finance places a request on hold for budget review, when the hold is saved, then a standardized finance hold reason and correction note are recorded for reporting and audit history.

**Notes / assumptions:**  
Budget code reference data is assumed to be available at a basic pilot-ready level, as documented in the requirements and rollout assumptions.

### US-009: Review vendor details before PO creation

**User story:**  
As a procurement coordinator, I want to review vendor details before PO creation, so that preferred vendor, new vendor, one-time vendor, unknown vendor, and non-preferred vendor situations are handled consistently.

**Related requirements:**  
BR-007, BR-009, FR-018, FR-019, FR-020, FR-021

**Related business rules:**  
BRULE-007, BRULE-011, BRULE-017, BRULE-018

**Priority:**  
Must Have

**Acceptance criteria:**
- Given an approved request reaches procurement review, when the vendor is preferred and required approvals, budget checks, and request details are complete, then the request can continue toward PO readiness review.
- Given the vendor is new, one-time, unknown, or non-preferred, when procurement reviews the request, then the request requires procurement review before PO creation.
- Given vendor, quote, lead time, delivery instruction, duplicate review, or clarification information is incomplete, when procurement cannot confirm PO readiness, then procurement can place the request on procurement hold with a standardized reason and comment.

**Notes / assumptions:**  
This story covers vendor review before PO creation, not a full vendor onboarding workflow.

### US-010: Generate or record purchase order status

**User story:**  
As a procurement coordinator, I want to generate or record purchase order status after required approvals and checks are complete, so that the request-to-purchase-order handoff is visible to requesters, managers, and leadership.

**Related requirements:**  
BR-007, FR-022, FR-023, FR-026

**Related business rules:**  
BRULE-014, BRULE-016, BRULE-017

**Priority:**  
Must Have

**Acceptance criteria:**
- Given required approvals, finance review when applicable, vendor status, quote status when needed, and delivery instructions are complete or formally excepted, when procurement records PO creation or PO handoff, then the request status updates to PO created.
- Given procurement records PO status, when the request moves to PO created, then PO reference, PO creation date, vendor contact status, and delivery instruction status can be recorded where available.
- Given open finance or procurement holds remain unresolved, when procurement attempts to record PO created, then the request cannot be closed or treated as PO-ready until holds are cleared or closed with an approved reason.

**Notes / assumptions:**  
This story records workflow status and PO handoff expectations; it does not claim that a real purchase order was generated in a production ERP.

### US-011: Update receiving status

**User story:**  
As receiving or operations staff, I want to update receiving status separately from request status, so that HarbourPoint can distinguish approval and PO progress from actual fulfillment progress.

**Related requirements:**  
BR-008, FR-024, FR-025, FR-026

**Related business rules:**  
BRULE-013, BRULE-016

**Priority:**  
Must Have

**Acceptance criteria:**
- Given a request has moved into ordering or delivery follow-up, when receiving information is updated, then the delivery status can be recorded as not ordered, ordered, not received, partially received, received, delayed, rejected, or cancelled.
- Given a delivery is partially received, when receiving status is saved, then the delivery status remains open and the request is not treated as fully fulfilled.
- Given a request is ready for closure, when receiving status is recorded as received, cancelled, or otherwise resolved with a closure reason, then closure can proceed only if other open finance or procurement holds are also resolved.

**Notes / assumptions:**  
Detailed inventory, warehouse management, and accounting receiving are outside the pilot scope.

### US-012: View request status as requester

**User story:**  
As an operations requester, I want to view the status of my purchase request, so that I can understand whether it is submitted, pending approval, on hold, approved, PO created, receiving updated, closed, rejected, or delayed without chasing email updates.

**Related requirements:**  
BR-003, BR-008, FR-012, FR-025, FR-026, NFR-007

**Related business rules:**  
BRULE-016

**Priority:**  
Must Have

**Acceptance criteria:**
- Given I submitted a purchase request, when I open my request status view, then I can see the current request status and delivery status as separate values.
- Given my request is returned, rejected, approved, placed on finance hold, placed on procurement hold, converted to PO status, updated for receiving, or delayed, when I view the request, then the latest status is visible in business-facing language.
- Given I am a requester, when I view request details, then confidential budget, vendor, approval, and audit information is limited according to role-based access expectations.

**Notes / assumptions:**  
Notifications are included as basic workflow expectations, but this story focuses on requester self-service status visibility.

### US-013: Search and filter procurement requests

**User story:**  
As a project manager, I want authorized users to search and filter procurement requests, so that pilot backlog, exceptions, approval aging, and status issues can be reviewed without manual spreadsheet reconciliation.

**Related requirements:**  
BR-010, BR-011, FR-027, NFR-001, NFR-005

**Related business rules:**  
BRULE-016, BRULE-018

**Priority:**  
Should Have

**Acceptance criteria:**
- Given I am an authorized user, when I search or filter requests, then I can use fields such as request ID, department, category, requester, approver, vendor, amount band, status, priority, budget code, exception reason, and date range.
- Given I filter by request status, delivery status, hold reason, or exception reason, when results are returned, then request workflow progress remains separate from delivery or receiving progress.
- Given I am not authorized to view certain spend, vendor, approval, or audit information, when search results are displayed, then restricted details are hidden or limited according to my role.

**Notes / assumptions:**  
Detailed dashboard layout is covered in the dashboard design specification; this story covers workflow search and filter behavior.

### US-014: View approval and exception dashboard

**User story:**  
As an executive sponsor, I want to view approval and exception reporting, so that I can monitor backlog, aging, cycle time, exception reasons, emergency requests, and receiving status for the Maintenance pilot.

**Related requirements:**  
BR-003, BR-010, FR-028, NFR-009

**Related business rules:**  
BRULE-016, BRULE-018

**Priority:**  
Must Have

**Acceptance criteria:**
- Given reporting extracts are available for the pilot, when I review approval and exception reporting, then I can see backlog, approval aging, finance holds, procurement holds, cycle time, category spend, vendor spend, emergency requests, and receiving status at a business summary level.
- Given exception reporting is displayed, when finance holds, procurement holds, duplicate warnings, emergency requests, rejections, returns, or receiving exceptions exist, then the report groups them using standardized reason codes where practical.
- Given reporting data is refreshed on an agreed pilot cadence, when I view the reporting output, then the refresh timing is clear enough to avoid confusing current workflow status with stale extract data.

**Notes / assumptions:**  
This is a backlog story for reporting inputs and business visibility. Power BI-style page design is covered in the dashboard specification.

### US-015: Track audit history and role access

**User story:**  
As a UAT tester or system admin, I want audit history and role-based access to be testable, so that HarbourPoint can confirm workflow decisions, comments, holds, PO status updates, receiving updates, and restricted information behave as expected.

**Related requirements:**  
BR-006, FR-029, FR-030, NFR-001, NFR-002, NFR-007, NFR-012

**Related business rules:**  
BRULE-012, BRULE-013, BRULE-014

**Priority:**  
Must Have

**Acceptance criteria:**
- Given a request is submitted, edited, approved, rejected, returned, placed on finance hold, placed on procurement hold, updated for PO status, updated for receiving, commented on, or closed, when audit history is reviewed by an authorized role, then the relevant event, user, timestamp, action, and comment are available.
- Given a user has a requester, department manager, finance reviewer, procurement coordinator, executive sponsor, administrator, UAT tester, or report viewer role, when they access workflow records, then their create, view, approve, edit, review, report, and administer permissions align to their business responsibility.
- Given UAT or training is performed, when synthetic records and role-based examples are used, then no real company, vendor, employee, or financial data is required.

**Notes / assumptions:**  
This story maps to the UAT cases for role-based access and audit history.

### US-016: Manage emergency safety purchase exception

**User story:**  
As an operations requester, I want emergency safety purchase requests to follow a controlled fast-track path, so that urgent operational needs can proceed while still preserving approval visibility and auditability.

**Related requirements:**  
BR-006, BR-009, FR-003, FR-017, NFR-002

**Related business rules:**  
BRULE-005, BRULE-008, BRULE-012, BRULE-018

**Priority:**  
Must Have

**Acceptance criteria:**
- Given I mark a purchase request as an emergency safety request, when I submit it through the fast-track path, then I must provide an emergency justification before the request can continue.
- Given an emergency safety request requires urgent action before normal finance review can occur, when department manager approval is captured, then finance visibility and post-approval audit notes remain required after urgent action where applicable.
- Given an emergency safety request is reported later, when exception reporting is reviewed, then the request is identifiable as an emergency safety exception with required justification, decision history, and audit notes.

**Notes / assumptions:**  
The emergency path is a fast-track path, not an uncontrolled bypass.

## Open Clarifications

| Gap | Why it is not invented in this backlog | Suggested owner in a real project |
|---|---|---|
| Approval delegation rules | The requirements define department ownership but not delegation authority. | Project manager; department managers |
| Exact quote requirement threshold | The requirements support attachments and procurement readiness but do not define when a quote is mandatory. | Procurement coordinator |
| Vendor master ownership details | The requirements assume basic vendor reference data but exclude full vendor onboarding workflow. | Procurement coordinator; IT systems analyst |
| Reporting refresh frequency | NFR-009 requires a clear cadence, but the exact cadence is not finalized. | Executive sponsor; report viewer |
| Record retention period | NFR-006 requires retention for an agreed period, but the exact duration is not specified. | Finance reviewer; project manager |
| Direct UAT coverage for availability, retention, accessibility, and integration-boundary NFRs | These remain documented constraints or review expectations rather than forced UAT mappings. | UAT tester; project manager |
