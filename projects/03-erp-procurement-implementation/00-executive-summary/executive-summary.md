# Executive Summary

## Portfolio Context

This executive summary is part of a simulated Business Analyst portfolio case. HarbourPoint Marine Services is a fictional organization, and the proposed ERP-style procurement workflow is a demonstration scenario only. No real company data, vendor data, financial data, client delivery, or ERP configuration is represented.

## Business Problem

HarbourPoint Marine Services relies on email and spreadsheets to manage procurement requests for operations, maintenance, logistics, safety equipment, repair services, and vendor support. This creates inconsistent intake, uneven approval handling, missing budget information, manual procurement follow-up, unclear purchase order status, and limited management visibility.

For a field-oriented marine services business, these gaps can affect day-to-day coordination. Requesters may not know whether an item has been approved or ordered. Managers may not see what is waiting for approval. Finance may receive incomplete budget coding. Procurement may spend time chasing missing details before a purchase order can be prepared.

## Current-State Pain Points

| Pain point | Business impact |
|---|---|
| Requests are submitted by email or spreadsheet | Information arrives in different formats, making review and follow-up harder. |
| Required details are often missing | Procurement and finance may need repeated clarification before work can continue. |
| Approval rules are inconsistent | Requesters and managers may not share the same understanding of who must approve a request. |
| Budget codes are missing or incorrect | Finance review can be delayed, and reporting quality is weaker. |
| Purchase order status is not visible | Requesters may rely on manual follow-up to know whether a request is ordered, delayed, received, or closed. |
| Receiving updates are not consistently captured | Procurement and operations may not have a shared view of fulfillment status. |
| Reporting is manual | Leadership has limited visibility into backlog, cycle time, exceptions, pending approvals, and spend categories. |

## Proposed Future-State Workflow

The proposed future state is a platform-neutral ERP-style procurement workflow. The workflow is intended to standardize how purchase requests are submitted, reviewed, approved, converted into purchase orders, and tracked through receiving.

At a high level, the future workflow would include:

1. A standardized purchase request form with required fields.
2. Validation for key information such as department, category, amount, vendor, budget code, priority, and business reason.
3. Approval routing based on amount, department, finance review needs, and exception scenarios.
4. Finance review for budget code issues, higher-value requests, and exceptions.
5. Procurement review once approvals and required details are complete.
6. Purchase order creation and vendor communication.
7. Receiving status updates that stay separate from request approval status.
8. Reporting on request volume, aging, approval bottlenecks, exceptions, vendor/category spend, and fulfillment status.

The workflow is intentionally platform-neutral. It reflects ERP implementation concepts without claiming configuration in a specific ERP product.

## Key Recommendations

- Standardize purchase request intake before approval or procurement review begins.
- Define clear approval thresholds for low-, medium-, and high-value requests.
- Treat emergency safety requests as a fast-track path with required audit notes, not as an uncontrolled bypass.
- Require budget code capture and route invalid or unrecognized budget codes to finance review.
- Keep request status and delivery status separate so workflow progress is not confused with fulfillment progress.
- Provide requesters, managers, finance, and procurement with role-appropriate status visibility.
- Use a Maintenance department pilot before expanding to other request types and departments.
- Create practical reporting that supports decisions, not just dashboard presentation.

## Expected Benefits

Because this is a simulated case, no achieved benefit claims are made. The proposed workflow is intended to:

- Reduce avoidable rework caused by missing request information.
- Improve visibility into approval, purchase order, and receiving status.
- Support more consistent approval routing and exception handling.
- Improve finance review by making budget code issues visible earlier.
- Give procurement clearer information before vendor communication and PO creation.
- Support leadership reporting on backlog, cycle time, pending approvals, exceptions, and spend patterns.
- Provide a more controlled pilot rollout with clearer training, support, and adoption measures.

## Risks And Assumptions

| Area | Risk or assumption |
|---|---|
| Approval rules | Approval thresholds and exception paths need stakeholder confirmation before configuration. |
| User adoption | Requesters and managers may continue using email unless the new process is supported by training and clear expectations. |
| Data quality | Vendor, budget code, and category reference data must be ready enough to support validation and reporting. |
| Role access | Requester, manager, finance, procurement, executive sponsor, admin, tester, and report viewer permissions need clear ownership. |
| Reporting expectations | Stakeholders must agree on metric definitions such as cycle time, pending approval aging, exception rate, and fulfillment status. |
| Scope control | Payment processing, full accounting integration, inventory management, and advanced escalation workflows should remain out of scope for the initial pilot. |
| UAT readiness | Business testers need plain-language test cases and realistic synthetic examples to validate workflow behavior. |

## Implementation Readiness Summary

The case is structured around a practical implementation path: clarify scope, document current state, define the future workflow, confirm requirements and business rules, prepare synthetic data and reporting requirements, support UAT, and plan a phased rollout.

The recommended pilot starts with Maintenance because its requests are operationally concrete and include common procurement scenarios such as parts, tools, safety equipment, vendor repairs, and maintenance services. After the pilot is validated, the workflow can be expanded to Vessel Operations, Logistics, Administration, IT, and Finance-related request types.

## Suggested Success Metrics

The following metrics would help assess adoption and workflow quality after rollout:

- Number of purchase requests submitted through the standardized workflow.
- Percentage of requests submitted with complete required fields.
- Number and age of requests pending manager approval.
- Number and age of requests pending finance review.
- Count of requests on hold due to budget code, vendor, duplicate, or missing quote issues.
- Time from submitted request to approval.
- Time from approval to purchase order creation.
- Request status distribution by department and category.
- Delivery status distribution for ordered requests.
- UAT pass/fail rate and defect aging during pilot validation.
- Training attendance and post-launch support issue volume.

