# Business Requirements Document

## Purpose

This Business Requirements Document defines the business outcomes HarbourPoint Marine Services expects from a platform-neutral ERP-style procurement request-to-purchase-order workflow. It is part of a synthetic Business Analyst portfolio case and does not represent real client delivery, real company data, real vendor data, or configuration in SAP, Oracle, Microsoft Dynamics, NetSuite, or any other named ERP product.

The document translates the completed discovery and process mapping artifacts into business requirements that support the user stories, UAT cases, reporting requirements, and rollout planning in this portfolio package.

## Background

HarbourPoint Marine Services is a fictional marine services and logistics company in St. John's, Newfoundland and Labrador. The current procurement process relies on email and spreadsheets for purchase requests covering parts, tools, safety equipment, maintenance services, vendor repairs, and operations supplies.

The current process creates inconsistent intake, unclear approval status, missing or incorrect budget codes, manual procurement follow-up, weak receiving visibility, and manual leadership reporting. The proposed future state is a platform-neutral ERP-style workflow that standardizes purchase request intake, supports approval routing, validates budget information, prepares cleaner purchase order handoffs, tracks receiving updates, and gives stakeholders clearer operational reporting.

## Business Objectives

- Standardize procurement request intake for the Maintenance pilot.
- Improve visibility into request approval, finance review, purchase order, and receiving status.
- Reduce avoidable rework caused by missing request details and missing budget codes.
- Support consistent approval controls for low-, medium-, high-value, emergency, and special review requests.
- Improve auditability of approvals, rejections, holds, comments, and status changes.
- Give procurement cleaner request information before vendor communication and PO creation.
- Provide leadership reporting on backlog, exceptions, cycle time, approval aging, spend category, vendor patterns, and receiving status.
- Keep the pilot practical for a junior BA or implementation analyst portfolio without claiming real ERP configuration.

## Stakeholders

| Stakeholder | Business interest |
|---|---|
| Executive sponsor | Operational visibility, controlled approval rules, adoption metrics, and pilot readiness. |
| Project manager or implementation lead | Scope control, risks, dependencies, UAT readiness, and rollout coordination. |
| Operations requester | Clear request form, required fields, status visibility, and fewer manual follow-ups. |
| Department manager | Approval queue, amount thresholds, decision comments, and approval aging visibility. |
| Finance / budget reviewer | Budget code quality, finance review triggers, exception handling, and audit history. |
| Procurement coordinator | Complete request data, vendor details, PO readiness, and hold reason visibility. |
| Receiving / operations staff | Clear receiving update responsibility and separate delivery status tracking. |
| IT systems analyst / ERP support | Role access expectations, reference data assumptions, audit history, and reporting extract needs. |
| Vendor contact | Accurate PO and delivery information from procurement. |
| UAT tester / business super user | Testable requirements, expected outcomes, and traceability to UAT cases. |
| Report viewer | Reliable status, exception, spend, and cycle-time reporting. |

## Current-State Summary

The current process starts when an operations requester sends a purchase request by email or spreadsheet. Department managers approve through email, finance reviews budget codes when information is available, procurement re-enters details into a manual tracker, vendors respond through separate email threads, and receiving updates are sent by email or kept in local spreadsheets.

The main business problems are inconsistent request details, missing budget codes, unclear approval status, procurement rework, hidden vendor delays, manual PO preparation, unclear receiving visibility, and leadership reports assembled from inboxes and spreadsheets.

## Future-State Summary

The future state is a platform-neutral ERP-style procurement workflow. Requesters submit purchase requests through a standardized form. Required fields and controlled-list values are validated before normal submission. Requests are routed based on amount, department, category, emergency flag, budget code condition, and exception type. Department managers, finance reviewers, and executive sponsors approve or review where required. Procurement reviews complete approved requests before PO generation or PO handoff. Receiving updates are captured separately from request status. Stakeholders receive basic notifications, and leadership can review consistent reporting on backlog, aging, cycle time, exceptions, approvals, spend, and receiving status.

## Scope

### In Scope

- Maintenance department pilot for procurement requests.
- Purchase request intake for parts, tools, safety equipment, maintenance services, vendor repairs, and operations supplies.
- Required-field, budget-code, approval, finance-review, procurement-review, PO handoff, receiving, status, notification, audit, and reporting requirements.
- Approval thresholds using CAD amount bands and defined exception scenarios.
- Role-level access expectations for requesters, managers, finance, procurement, executive sponsors, administrators, testers, and report viewers.
- Traceability sufficient to connect business requirements to user stories, UAT cases, reporting, and rollout artifacts.

### Out Of Scope

- Real ERP configuration or named-platform implementation.
- Real production rollout, live reporting workspace setup, or real company data migration.
- Accounts payable processing, invoice matching, payment approval, payment execution, and banking integration.
- Full accounting integration, inventory management, warehouse management, or stock replenishment.
- Advanced sourcing, RFx, supplier scorecards, contract lifecycle management, or mobile app design.

## Business Requirements

| ID | Business requirement | Priority | Source stakeholder |
|---|---|---|---|
| BR-001 | HarbourPoint must standardize procurement request intake so Maintenance pilot users submit purchase requests with consistent business information. | Must have | Executive sponsor; Operations requester |
| BR-002 | HarbourPoint must reduce avoidable procurement and finance rework caused by missing request details, unclear business reasons, missing budget codes, and incomplete vendor information. | Must have | Procurement coordinator; Finance / budget reviewer |
| BR-003 | HarbourPoint must improve approval visibility so requesters, managers, procurement, and leadership can see whether a request is pending, returned, rejected, approved, on hold, PO created, received, closed, or delayed. | Must have | Operations requester; Department manager; Executive sponsor |
| BR-004 | HarbourPoint must apply consistent approval controls based on request amount, department ownership, finance review needs, executive review needs, and exception type. | Must have | Department manager; Finance / budget reviewer; Executive sponsor |
| BR-005 | HarbourPoint must improve budget-code quality so finance review issues are identified earlier and spend reporting can rely on consistent budget coding. | Must have | Finance / budget reviewer |
| BR-006 | HarbourPoint must support auditability of approval decisions, rejection reasons, finance holds, procurement holds, emergency handling, PO events, receiving updates, and closure decisions. | Must have | Finance / budget reviewer; Project manager |
| BR-007 | HarbourPoint must give procurement enough complete and approved request information to prepare cleaner purchase order handoffs and reduce manual follow-up. | Must have | Procurement coordinator |
| BR-008 | HarbourPoint must distinguish request workflow status from delivery or receiving status so stakeholders do not confuse approval progress with fulfillment progress. | Must have | Receiving / operations staff; Procurement coordinator |
| BR-009 | HarbourPoint must support controlled exception handling for emergency safety requests, duplicate warnings, preferred vendor exceptions, missing quotes, invalid budget codes, and capital expenditure review. | Should have | Department manager; Finance / budget reviewer; Procurement coordinator |
| BR-010 | HarbourPoint must provide leadership and managers with reporting inputs for backlog, approval aging, cycle time, exception reasons, category spend, vendor spend, and receiving status. | Must have | Executive sponsor; Report viewer |
| BR-011 | HarbourPoint must support a controlled Maintenance pilot that can be evaluated before expansion to Vessel Operations, Logistics, Administration, IT, and Finance request types. | Should have | Project manager; Executive sponsor |
| BR-012 | HarbourPoint must preserve platform-neutral implementation documentation so the workflow can be discussed without claiming configuration in a specific ERP product. | Must have | ERP implementation consultant; IT systems analyst |

## Success Metrics

The following metrics are proposed measurement areas for reporting and rollout review. Because this is a synthetic portfolio case, these are intended measurement areas rather than achieved results.

| Metric | Intended use |
|---|---|
| Purchase requests submitted through standardized workflow | Adoption tracking for the Maintenance pilot. |
| Percentage of submitted requests with complete required fields | Intake quality and rework prevention. |
| Requests pending manager approval by age band | Approval bottleneck monitoring. |
| Requests pending finance review by age band | Budget review bottleneck monitoring. |
| Count of finance holds by reason | Budget-code and coding-quality monitoring. |
| Count of procurement holds by reason | Vendor, quote, duplicate, and clarification monitoring. |
| Time from submission to approval | Approval cycle-time monitoring. |
| Time from approval to PO creation | Procurement handoff monitoring. |
| Request status distribution | Workflow backlog and exception visibility. |
| Delivery status distribution | Fulfillment and receiving visibility. |
| Emergency safety requests with post-approval audit notes | Exception-control monitoring. |
| UAT pass/fail rate and defect aging | Pilot readiness monitoring using the UAT and defect-log artifacts. |

## Assumptions

- HarbourPoint Marine Services, the scenario, and all future data examples are synthetic.
- The Maintenance department remains the initial pilot group.
- Request categories include parts, tools, safety equipment, maintenance services, vendor repairs, and operations supplies.
- Approval bands use under CAD 1,000, CAD 1,000 to CAD 9,999, and CAD 10,000 and above for this portfolio case.
- Emergency safety requests can use a fast-track path but still require justification, approval history, and post-approval audit notes.
- Vendor master lookup, budget code reference data, role/access directory, and reporting extract capability are assumed at a basic pilot-ready level.
- Payment processing, invoice matching, inventory management, and detailed warehouse receiving remain outside the pilot.
- User stories, UAT cases, reporting artifacts, and rollout materials map to these requirements without pretending a real ERP system was configured.

## Risks

| Risk | Potential impact | Mitigation approach |
|---|---|---|
| Approval thresholds are not confirmed by stakeholders | Routing may be disputed during UAT or rollout. | Review the approval matrix with managers, finance, and the executive sponsor before backlog mapping. |
| Budget code reference data is incomplete | Valid requests may be delayed or reporting may be unreliable. | Confirm budget code ownership, active values, and exception handling before UAT. |
| Users keep using email or spreadsheets | Adoption and reporting quality may remain weak. | Address through the rollout, training, and support artifacts. |
| Emergency requests are treated as uncontrolled bypasses | Auditability and financial control may be weakened. | Require justification, timestamped decisions, and post-approval audit notes. |
| Vendor data is not ready | Procurement may place many requests on hold. | Confirm preferred vendors and new vendor exception handling before pilot testing. |
| Reporting definitions differ by stakeholder | Dashboard metrics may not be trusted. | Use the dashboard specification and SQL query pack to keep metric logic visible for review. |
| Scope expands beyond Maintenance pilot | The case may become too broad for a junior BA portfolio artifact pack. | Keep the artifact pack focused on the Maintenance pilot and emergency Safety examples. |

## Out-Of-Scope Items

- Building or configuring a real ERP system.
- Naming or implying implementation of SAP, Oracle, Microsoft Dynamics, NetSuite, or a CRM.
- Treating the portfolio artifacts as evidence of a live ERP build, deployment, or client delivery.
- Committing achieved performance claims such as percentage cycle-time reduction.
- Designing full finance, accounts payable, invoice, payment, inventory, or warehouse processes.
- Creating fake screenshots, fake Jira exports, fake Confluence exports, or fake ERP screens.

## Simulated Approval / Sign-Off Note

This section records the approval roles that would normally review the specification in a real project. It is not evidence of real stakeholder approval.

| Role | Simulated review status | Comments |
|---|---|---|
| Executive sponsor | Not applicable to synthetic case | Portfolio artifact only. |
| Department manager | Not applicable to synthetic case | Portfolio artifact only. |
| Finance / budget reviewer | Not applicable to synthetic case | Portfolio artifact only. |
| Procurement coordinator | Not applicable to synthetic case | Portfolio artifact only. |
| Project manager | Not applicable to synthetic case | Portfolio artifact only. |
