# Scope And Assumptions

## Portfolio Context

This scope and assumptions artifact is part of a synthetic Business Analyst portfolio case for HarbourPoint Marine Services, a fictional marine services and logistics company in St. John's, Newfoundland and Labrador. The case demonstrates discovery and scope framing for a platform-neutral ERP-style procurement workflow. It does not represent real client delivery, real company data, real vendor data, production financial data, or configuration in a named ERP product.

## Business Problem

HarbourPoint Marine Services currently relies on email and spreadsheets for procurement requests. Request details arrive in inconsistent formats, approvals are not always handled the same way, budget codes may be missing or incorrect, procurement staff spend time chasing information, receiving updates are not consistently visible, and leadership reporting is manual.

The proposed future state is a platform-neutral ERP-style procurement workflow that standardizes request intake, validates required information, routes approvals, supports finance review, enables purchase order handoff, captures receiving status, and gives stakeholders clearer reporting on backlog, cycle time, exceptions, and spend categories.

## Initial Implementation Scope

The initial implementation scope is a controlled Maintenance department pilot for procurement request-to-purchase-order workflow support.

### In Scope

- Standardized purchase request intake for Maintenance pilot users.
- Required field capture for requester, department, request category, description, business reason, estimated amount, priority, vendor information when known, budget code, needed-by date, and supporting attachments when applicable.
- Request categories relevant to Maintenance, including parts, tools, safety equipment, maintenance services, vendor repairs, and operations supplies.
- Approval routing concepts based on amount, department, request type, urgency, and exception conditions.
- Finance review concepts for missing, invalid, inactive, or questionable budget coding.
- Procurement review after required request information and approvals are complete.
- Purchase order handoff status visibility, including whether a request is ready for PO creation, on hold, ordered, cancelled, or closed.
- Vendor setup discovery for preferred vendors, new vendors, one-time vendors, and vendor exceptions.
- Receiving status discovery for not received, partially received, received, delayed, rejected, cancelled, or closed scenarios.
- Exception handling concepts for missing information, budget code issues, vendor setup needs, duplicate requests, missing quote, emergency safety requests, receiving discrepancies, and vendor delays.
- Audit and history needs for request submission, approval, return, rejection, finance review, budget code changes, procurement hold reasons, PO creation, receiving updates, comments, and closure.
- Reporting discovery for backlog, aging, cycle time, approval bottlenecks, exception reasons, request status, delivery status, vendor/category spend, and pilot adoption.
- Role-based training and support discovery for requesters, approvers, finance, procurement, receiving, managers, testers, report viewers, and administrators.
- Pilot rollout planning inputs, including user readiness, support process, feedback capture, and adoption measures.

### Out Of Scope For The Initial Pilot Workflow

- Accounts payable processing, invoice matching, payment approval, payment execution, and bank/payment integration.
- Full general ledger or accounting system integration.
- Inventory management, stock replenishment, warehouse optimization, or inventory valuation.
- Supplier contract lifecycle management.
- Formal vendor onboarding workflow beyond discovery of vendor setup needs and exceptions.
- Advanced sourcing, tendering, RFx, bid comparison, or supplier scorecard functionality.
- Automated budget reservation, budget consumption posting, or real-time financial commitment accounting.
- Complex multi-entity, multi-currency, tax, or intercompany procurement handling.
- Mobile application design or field-device deployment.
- Advanced escalation engine design beyond identifying possible approval follow-up needs.
- ERP product selection, licensing, configuration, customization, integration development, or production deployment.
- Real production rollout, live ERP configuration, live reporting workspace setup, or real company data migration.

## Stakeholder Groups

The pilot discovery should cover:

- Executive sponsor and operations leadership.
- Project manager or implementation lead.
- Maintenance requesters.
- Department managers and approvers.
- Procurement team members.
- Finance and budget reviewers.
- Receiving, warehouse, or operations staff.
- IT, ERP administrator, or system support representative.
- UAT testers or business super users.
- Training, change, or business support representative.

## Discovery Areas Covered

The Issue 002 discovery artifacts cover:

- Request intake.
- Approval rules.
- Budget coding.
- Vendor setup.
- Purchase order creation and handoff.
- Receiving.
- Reporting.
- Exceptions.
- Audit and history.
- Training.
- Rollout.

## Assumptions

- HarbourPoint Marine Services is fictional, and all scenario details are synthetic.
- The initial pilot will focus on Maintenance because Maintenance requests are concrete, frequent, and representative of common procurement patterns.
- Maintenance request types include parts, tools, safety equipment, maintenance services, vendor repairs, and operations supplies.
- The future workflow will be platform-neutral and will not reference a named ERP product.
- Requesters will use a standardized request form instead of sending free-form email or spreadsheet requests for pilot scope items.
- Basic reference data will be available for pilot testing, including departments, request categories, users, approvers, vendors, budget codes, and status values.
- Approval routing will be based on a combination of request amount, department, request category, urgency, and exception type.
- A practical discovery baseline will use amount bands under CAD 1,000, CAD 1,000 to CAD 9,999, and CAD 10,000 and above, but final thresholds still require stakeholder confirmation.
- Finance review will be needed for missing, inactive, invalid, or inconsistent budget coding and for selected higher-value or exception requests.
- Procurement will not begin PO preparation until required request details, approvals, and finance review requirements are complete.
- Request workflow status and receiving or delivery status should be tracked separately.
- Emergency safety requests may need a faster path, but they still require audit notes and after-the-fact visibility.
- Reporting definitions such as cycle time, aging, backlog, exception rate, and fulfillment status need stakeholder confirmation before dashboard or SQL artifacts are created.
- UAT will use realistic synthetic examples rather than real company data.
- Training should be role-based because requesters, approvers, finance, procurement, receiving, and managers perform different tasks.

## Constraints

- The case must remain realistic for a junior BA or implementation analyst portfolio and should not imply real client delivery or production ERP configuration.
- The workflow must remain product-neutral and should avoid SAP, Oracle, Microsoft Dynamics, NetSuite, or other named-platform implementation claims.
- The initial pilot must stay narrow enough to review clearly while still demonstrating a realistic procurement workflow.
- Discovery artifacts should support the completed process, requirements, data, UAT, and rollout artifacts without expanding beyond the portfolio scenario.
- Synthetic data must avoid real vendor, employee, client, and financial records.
- Approval thresholds, role permissions, and reporting definitions are documented in later artifacts, with delegation, exact retention period, and final reporting refresh cadence still treated as open policy details.
- The portfolio case should use plain business language rather than excessive technical configuration detail.

## Dependencies

- Stakeholder confirmation of pilot departments, request categories, and request intake fields.
- Agreement on approver roles, approval thresholds, delegation rules, and emergency handling.
- Project manager confirmation of discovery sign-off path, issue sequencing, and scope-change control.
- Finance input on budget code format, validation needs, correction rights, and review triggers.
- Procurement input on vendor readiness, vendor master ownership, PO handoff criteria, hold reasons, and daily workload reporting.
- Receiving or operations input on delivery status values, partial receiving, damaged goods, rejected items, and backorder handling.
- IT or system support input on roles, reference data, notifications, audit history, environment readiness, and reporting extracts.
- Training and change input on role-based materials, support process, feedback loop, and adoption measures.
- Process maps, requirements, rules, backlog, data/reporting, UAT, rollout, and risk artifacts to convert discovery findings into the completed portfolio package.

## Open Questions

- What exact amount thresholds should define low-, medium-, and high-value requests?
- Which roles can approve requests, and who can delegate approval authority?
- Should approval thresholds differ by department, category, vendor, budget code, or urgency?
- What is the approved emergency purchase policy for safety-related requests, and when can finance review occur after urgent action?
- Which request categories are included in the Maintenance pilot on day one?
- Which fields are mandatory at submission, and which can be completed later by procurement or finance?
- Should requesters be allowed to submit requests when vendor, quote, budget code, or final amount is unknown?
- Which budget code errors should block submission, and which should route to finance review?
- Can finance correct budget coding directly, or must the request return to the requester or manager?
- What is the minimum vendor information needed before procurement can continue?
- Who owns vendor master data setup, updates, deactivation, and validation?
- Should new vendor setup be handled inside this workflow or tracked as an exception outside the workflow?
- What exact status values should be used for request workflow and receiving or delivery progress?
- Who records receiving updates for goods, services, partial deliveries, damaged items, and cancelled items?
- Which comments or attachments should be required for returns, rejections, emergency approvals, budget changes, and receiving exceptions?
- Which audit history should be visible to requesters, managers, finance, procurement, and report viewers?
- What reports are needed for daily operations versus monthly leadership review?
- What reporting refresh frequency is realistic for the pilot: near real time, daily, weekly, or manual export during UAT?
- What metric definitions should be used for cycle time, approval aging, backlog, exception rate, and fulfillment status?
- What training format is realistic for pilot users: live walkthrough, quick reference guide, recorded demo, drop-in support, or a mix?
- When should legacy email and spreadsheet intake stop for pilot request types?
- What support channel will handle pilot questions and defects after launch?
- What criteria will determine whether the pilot is ready to expand beyond Maintenance?

## Risks

| Risk | Potential impact | Mitigation approach |
|---|---|---|
| Approval rules remain unclear | Workflow routing may be disputed or inconsistent. | Confirm thresholds, approver roles, delegation, and exception paths before requirements are finalized. |
| Users continue using email and spreadsheets | Adoption metrics and reporting quality may be weak. | Provide role-based training, clear launch communication, and a defined support path. |
| Budget code reference data is incomplete | Requests may be delayed or coded inconsistently. | Confirm budget code ownership and validation rules with finance before UAT. |
| Vendor data is not ready | Procurement may place many requests on hold. | Identify preferred vendors, new vendor needs, and minimum vendor data before pilot testing. |
| Request fields are too complex | Requesters may submit incomplete or inaccurate requests. | Keep intake fields practical, use controlled lists where possible, and provide examples. |
| Emergency requests bypass controls | Auditability and reporting may be weakened. | Define a fast-track path with mandatory justification, timestamped approvals, and follow-up review. |
| Receiving updates are not maintained | Requesters and managers may still lack fulfillment visibility. | Assign receiving ownership and keep request status separate from delivery status. |
| Reporting definitions are inconsistent | Dashboards may not be trusted by leadership. | Use the dashboard specification and SQL query pack to keep metric logic visible for review. |
| Pilot scope expands too early | The artifact pack may become too broad and less credible. | Keep the project centered on procurement request-to-purchase-order workflow support and avoid expanding into AP, inventory, production ERP configuration, or real deployment claims. |
| Training is too generic | Users may not understand their role-specific tasks. | Use the role-based training/support note and realistic synthetic examples to reinforce common scenarios. |

## Scope Control Notes

- This discovery artifact defines boundaries and assumptions; the rest of the project artifacts translate those boundaries into process maps, requirements, backlog, reporting, UAT, rollout, and risk materials.
- The completed portfolio package should remain focused on the Maintenance pilot and emergency Safety examples.
- Any future expansion to other departments should be framed as a discussion path, not as completed implementation work.
