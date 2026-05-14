# Stakeholder Interview Guide

## Portfolio Context

This discovery guide is part of a synthetic Business Analyst portfolio case for HarbourPoint Marine Services, a fictional marine services and logistics company in St. John's, Newfoundland and Labrador. The questions are designed to support a platform-neutral ERP-style procurement implementation scenario. No real company, vendor, financial, or ERP configuration data is represented.

## Purpose

The purpose of these interviews is to clarify how procurement requests are submitted, approved, coded, converted into purchase orders, received, reported, and supported today. The outputs will feed later scope confirmation, process maps, requirements, business rules, UAT examples, reporting design, and rollout planning.

The initial pilot is expected to focus on Maintenance requests, with later expansion to Vessel Operations, Logistics, Administration, IT, and Finance-related request types after the workflow is validated.

## Interview Approach

- Use these questions as a guide, not as a script.
- Confirm current-state pain points before discussing future-state preferences.
- Ask for examples of recent requests, exceptions, delays, and rework.
- Separate confirmed business rules from preferences, assumptions, and open questions.
- Avoid committing to a specific ERP product or configuration design during discovery.
- Record where answers differ by department, request type, amount, vendor, or urgency.

## Stakeholder Groups

The discovery should include:

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

## Executive Sponsor And Operations Leadership

1. What business problem should this procurement workflow solve first: speed, control, visibility, auditability, data quality, or another priority?
2. Which departments and request types should be included in the first pilot, and which should wait until later?
3. What would make the Maintenance pilot credible enough to expand to other departments?
4. Which procurement metrics matter most to leadership: backlog, aging, cycle time, exception rate, spend by category, vendor delays, or approval bottlenecks?
5. What approval or spending controls are non-negotiable for the organization?
6. How much process variation between departments is acceptable before the workflow becomes too hard to manage?
7. Which risks would cause leadership to delay rollout?
8. Who should own final decisions on scope, approval thresholds, budget validation rules, and rollout timing?

## Project Manager Or Implementation Lead

1. What decisions must be confirmed before process mapping and requirements work can begin?
2. Which stakeholder groups are required for discovery sign-off, and who can make final scope decisions?
3. What timeline assumptions should be used for discovery, process mapping, requirements, UAT preparation, and pilot rollout?
4. What scope changes would need sponsor approval rather than being handled as normal clarification?
5. Which dependencies are most likely to affect pilot readiness: reference data, approval rules, role access, UAT availability, training, or reporting definitions?
6. What project risks should be tracked separately from normal open questions?
7. How should unresolved decisions be documented so later requirements do not overstate certainty?
8. What evidence would show that the Maintenance pilot is ready for UAT?

## Maintenance Requesters

1. What types of items or services do you most often request, such as parts, tools, safety equipment, repairs, services, or supplies?
2. How do you submit procurement requests today, and what information do you usually include?
3. Which request details are hardest to know at the time of submission, such as vendor, quote, part number, budget code, delivery date, or amount?
4. When a request is urgent, what makes it urgent, and how do you communicate that today?
5. What status updates do you need after submitting a request?
6. What causes you to follow up manually with a manager, procurement, finance, or receiving?
7. How should the workflow handle requests where the vendor or final amount is not known yet?
8. What training, examples, or job aids would help requesters use a standardized request form correctly?

## Department Managers And Approvers

1. What criteria do you use today when deciding whether to approve a procurement request?
2. Which approval thresholds should apply to low-, medium-, and high-value requests?
3. Should approval rules differ by department, request category, vendor type, urgency, or budget code?
4. How should the workflow handle emergency safety requests that need fast approval but still require audit history?
5. What information must be visible before you can approve confidently?
6. When should a request be returned to the requester instead of rejected outright?
7. How long should requests remain pending before escalation or follow-up?
8. Who should approve when a manager is unavailable, on leave, or has a conflict of interest?

## Procurement Team

1. What information must be complete before procurement can begin vendor communication or purchase order preparation?
2. Which missing details most often cause procurement rework today?
3. How are vendors selected today for parts, repair services, safety equipment, and operational supplies?
4. How should the workflow distinguish between preferred vendors, new vendors, one-time vendors, and vendor exceptions?
5. What steps are required before a purchase order can be created?
6. Which request types should procurement be able to place on hold, and what hold reasons should be tracked?
7. What purchase order status values would be useful to show requesters and managers?
8. How should procurement record delays caused by vendor lead time, missing quote, duplicate request, budget issue, or incomplete request details?
9. What reporting would help procurement manage daily workload and aging requests?

## Finance And Budget Reviewers

1. What budget code information should be required on a purchase request?
2. How should the workflow validate department, cost center, project, category, or account coding?
3. Which requests need finance review before procurement can create a purchase order?
4. What amount thresholds or exception types should trigger finance review?
5. What should happen when a budget code is missing, inactive, invalid, or inconsistent with the request category?
6. Should finance be able to correct budget coding directly, or should requests be returned to the requester or manager?
7. What audit details are required for budget code changes and finance approvals?
8. Which reporting fields are required for spend analysis by department, category, vendor, budget code, and status?

## Receiving, Warehouse, And Operations Staff

1. How is receipt of goods or services confirmed today?
2. Who is responsible for recording whether items are received, partially received, rejected, delayed, or cancelled?
3. How should the workflow handle partial receiving, backorders, substituted items, or damaged goods?
4. What information from the purchase order is needed to confirm receiving accurately?
5. How should requesters be notified when items are received or delayed?
6. What receiving information should be visible to procurement, managers, and finance?
7. Should request approval status and delivery or receiving status be tracked separately?
8. Which receiving exceptions should appear in management reports?

## IT, ERP Administrator, Or System Support

1. What user roles and access levels are needed for requester, approver, finance, procurement, receiving, report viewer, tester, and admin users?
2. What reference data must be available before the workflow can be tested, such as departments, vendors, budget codes, request categories, users, and approval limits?
3. Which data fields should be required, optional, validated, or selected from controlled lists?
4. What audit history should be captured for submission, approval, return, rejection, budget changes, PO creation, receiving updates, and closure?
5. What status values should be standardized so reporting remains consistent?
6. What system constraints should be considered for notifications, approvals, attachments, comments, and reporting extracts?
7. How should user access, role changes, approval delegation, and inactive users be maintained?
8. What test environment, sample data, and support process would be needed before UAT?

## UAT Testers Or Business Super Users

1. Which real-world procurement request scenarios should be represented in UAT using synthetic examples?
2. What normal purchase request should pass through intake, approval, procurement review, PO creation, and receiving without exceptions?
3. Which exception scenarios must be tested, such as invalid budget code, missing quote, duplicate warning, emergency safety request, or vendor delay?
4. What information would testers need to decide whether a test passed or failed?
5. Which roles should participate in UAT so requester, approver, finance, procurement, receiving, and report viewer paths are covered?
6. What defects or usability issues would block pilot launch?
7. How should test feedback be captured without turning every preference into a new requirement?
8. What training or quick reference material should be available before testers begin?

## Training, Change, And Business Support

1. Which stakeholder groups will need training before the pilot launch?
2. What tasks should be covered in role-based training for requesters, approvers, finance, procurement, receiving, and managers?
3. What common mistakes should be addressed in quick reference guides or examples?
4. How should users get help during the first weeks after launch?
5. What communications are needed to explain when email or spreadsheet requests should stop?
6. What adoption measures should be monitored after launch?
7. Which departments or user groups may resist the new workflow, and why?
8. What feedback loop should be used to capture issues during the pilot without expanding scope too quickly?

## Cross-Functional Discovery Areas

### Request Intake

- What fields are required for a request to be considered complete?
- Which request categories should be available in the pilot?
- Which attachments should be supported, such as quotes, photos, specifications, or vendor documents?
- Which request priorities are valid, and how should users justify urgent requests?

### Approval Rules

- What approval thresholds should be used for low-, medium-, and high-value requests?
- Which exception types require extra approval or finance review?
- How should returned, rejected, cancelled, and resubmitted requests be handled?
- How should approval delegation work when an approver is unavailable?

### Budget Coding

- Which budget fields must be captured at submission?
- Which budget coding errors should block submission versus trigger finance review?
- Who can change budget coding after submission?
- How should budget changes be captured in audit history?

### Vendor Setup

- What is the current process for using a new vendor?
- Which vendor information is needed before procurement can continue?
- Should new vendor setup be included in the pilot workflow or tracked as an exception?
- How should preferred vendors and one-time vendors be identified?

### Purchase Order Creation

- What must be true before a request can move to PO creation?
- Which PO details should be visible to requesters and managers?
- How should PO creation delays be categorized?
- Should cancelled or duplicate requests remain visible in reporting?

### Receiving

- Who confirms receipt of goods or services?
- How should partial receiving and backorders be recorded?
- Which receiving statuses are needed for reporting?
- How should receiving exceptions be escalated?

### Reporting

- Which operational reports are needed daily or weekly?
- Which leadership reports are needed monthly?
- How should cycle time, aging, backlog, exception rate, and fulfillment status be defined?
- Which filters are required, such as department, category, vendor, approver, budget code, priority, and status?

### Exceptions

- Which exceptions are most common today?
- Which exceptions should stop the workflow, and which should allow work to continue with notes?
- Who owns resolution for budget, vendor, duplicate, missing quote, urgent request, and receiving exceptions?
- How should exception reasons be standardized?

### Audit And History

- Which user actions need timestamps, comments, and user identifiers?
- How long should request history remain visible to business users?
- Who should be able to view approval history, budget changes, PO events, and receiving updates?
- What evidence is needed for audit or management review?

### Training And Rollout

- Which pilot users should be involved in UAT?
- What examples should training use?
- When should legacy email or spreadsheet intake be reduced or stopped?
- What post-launch support metrics should be monitored?

## Interview Output Template

For each interview, capture:

- Stakeholder name or role.
- Department or function.
- Interview date.
- Current-state pain points.
- Future-state needs.
- Confirmed business rules.
- Open questions.
- Risks or concerns.
- Example request scenarios.
- Follow-up owner and due date.
