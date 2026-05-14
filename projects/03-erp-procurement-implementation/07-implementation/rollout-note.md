# Rollout Note

## How to Read This Artifact

This rollout note supports a synthetic ERP-style procurement workflow pilot for HarbourPoint Marine Services, a fictional marine services and logistics company in St. John's, Newfoundland and Labrador. It is written as a Business Analyst / implementation analyst planning artifact and does not claim a real ERP implementation, production launch, or configuration in a named ERP product.

## Rollout Objective

The pilot rollout is intended to move selected procurement requests from email and spreadsheet tracking into a standardized ERP-style request-to-PO workflow. The pilot is designed to support more complete purchase request intake, clearer approval visibility, earlier budget-code validation, cleaner procurement handoffs, and more consistent reporting visibility.

The rollout does not guarantee reduced cycle time or rework. Instead, it defines the controls, training, support, and measurement approach HarbourPoint would use to evaluate whether the pilot workflow is ready for broader adoption.

## Pilot Department

Maintenance is the primary pilot department. Safety is included as a secondary pilot participant where emergency safety purchases need fast-track handling, audit notes, and after-the-fact finance visibility.

This scope is reasonable because Maintenance has high operational relevance, frequent parts and service requests, clear approval and budget-code needs, and practical examples involving repairs, tools, vendor services, and receiving updates. Safety participation gives the pilot useful emergency-purchase scenarios without expanding the rollout to every department. The combined scope is large enough to test the future workflow, but small enough to manage during pilot support.

## Rollout Scope

### In Scope for Pilot

- Maintenance purchase requests for parts, tools, safety equipment, maintenance services, vendor repairs, and operations supplies.
- Emergency safety purchase examples that require fast-track handling, justification, audit notes, and finance visibility.
- Standardized request intake, required-field validation, approval routing, finance review, procurement review, PO handoff, receiving status, notifications, audit history, and reporting extracts.
- Role-based participation by requesters, department managers, finance reviewers, procurement coordinator, project manager, executive sponsor, UAT testers, and IT/ERP support roles.
- Pilot adoption metrics and daily first-week hypercare review.

### Out of Scope for Pilot

- Real ERP configuration, production deployment, or named-platform implementation.
- Expansion to Vessel Operations, Logistics, Administration, IT, and Finance request types during this pilot issue.
- Accounts payable, invoice matching, payment approval, tax, banking, inventory management, warehouse management, and vendor onboarding workflow.
- Advanced notification preferences, SMS alerts, or complex escalation automation.
- Portfolio packaging, LinkedIn/resume positioning, and final artifact QA beyond pilot rollout readiness.

### Assumptions

- HarbourPoint Marine Services, users, vendors, request records, and financial examples are synthetic.
- The approval matrix uses the documented bands: under CAD 1,000, CAD 1,000 to CAD 9,999, CAD 10,000 and above, plus emergency safety and special review scenarios.
- Basic reference data exists for pilot users, departments, request categories, budget codes, vendors, status values, and hold reason codes.
- Request status remains separate from delivery status in workflow views and reporting.
- Open UAT defects are reviewed before go/no-go and either resolved, accepted for pilot with mitigation, or deferred with owner approval.

### Dependencies

- Approval matrix sign-off by department management, finance, procurement, project manager, and executive sponsor.
- Pilot user list and role access setup by IT systems analyst / ERP implementation consultant.
- Budget-code and vendor reference lists prepared by finance and procurement.
- Reporting view validated against the synthetic procurement request extract.
- Training and quick reference materials distributed before launch.
- Support channel, defect log ownership, and first-week hypercare schedule confirmed.

### Entry Criteria

- UAT test cases completed or reviewed for pilot-critical scenarios.
- Critical and high UAT defects reviewed, with launch decision recorded.
- Approval routing, finance review, procurement review, and emergency safety handling validated for pilot examples.
- Role access tested for requesters, managers, finance, procurement, report viewers, and support roles.
- Pilot users trained or scheduled for first-day support.
- Rollback/manual fallback process understood by project manager, procurement, finance, and department manager.

### Exit Criteria

- Pilot users can submit and track selected Maintenance requests through the standardized workflow.
- First-week issues, questions, and defects are logged and triaged.
- Adoption metrics are reviewed with project manager, procurement, finance, department manager, and executive sponsor.
- Open risks and defects are understood before any expansion decision.
- Decision is made to continue pilot, adjust workflow rules, expand carefully, or pause for fixes.

## Stakeholder Communication Plan

| Audience | Message | Channel | Timing | Owner | Success signal |
|---|---|---|---|---|---|
| Operations requesters | Pilot requests for Maintenance items should be submitted through the standardized workflow instead of email/spreadsheet intake. | Launch email, team huddle, quick reference guide | One week before launch and launch day | Business Analyst | Requesters know where to submit and what fields are required. |
| Department managers | Approval queues, decision comments, amount thresholds, and overdue approval visibility are part of pilot readiness. | Manager briefing and approval matrix review | One week before launch | Project Manager | Managers confirm approval responsibilities and SLA expectations. |
| Finance/budget reviewers | Budget-code validation, finance holds, and review notes must be handled through the pilot workflow. | Finance walkthrough and reference list review | One week before launch | Finance Reviewer | Finance confirms budget-code reference list and hold reason process. |
| Procurement coordinator | Approved requests should arrive with required details before PO handoff; vendor, quote, and delivery issues use procurement hold reasons. | Workflow walkthrough and cutover checklist | Three business days before launch | Procurement Coordinator | Procurement confirms PO readiness steps and support ownership. |
| Project manager | Pilot readiness depends on UAT review, access, training, reporting validation, support ownership, and go/no-go sign-off. | Readiness meeting and cutover checklist | Two business days before launch | Project Manager | Go/no-go decision is recorded with open risks. |
| Executive sponsor | Pilot is designed to test adoption, controls, visibility, and readiness before broader rollout. | Sponsor briefing and dashboard review | Before go/no-go and after first week | Project Manager | Sponsor confirms pilot boundaries and review cadence. |
| IT systems analyst / ERP implementation consultant | Role access, workflow availability, reference data, notifications, and reporting refresh need day-of-cutover verification. | Technical readiness checklist | Three business days before launch and launch morning | IT Systems Analyst | Access and workflow smoke checks are complete. |
| UAT testers | UAT observations and open defects feed go/no-go, training, and hypercare planning. | UAT closeout note and defect review meeting | Before go/no-go | Business Analyst | UAT testers confirm critical scenarios have been reviewed. |

## Training Plan

Training is role-based and focused on practical pilot tasks. Sessions use short workflow walkthroughs, realistic synthetic examples, a quick reference guide, office-hour support, and extra first-week support so users can ask questions as they use the workflow.

| Audience | Training topic | Format | Duration | Owner | Completion signal |
|---|---|---|---|---|---|
| Operations requesters | Create purchase request, required fields, attachments, budget code, status lookup | Live walkthrough plus quick reference guide | 45 minutes | Business Analyst | User submits or practices one complete request. |
| Department managers | Approval queue, amount thresholds, approve/reject/return comments, overdue approvals | Manager walkthrough | 30 minutes | Project Manager | Manager completes one practice approval decision. |
| Finance/budget reviewers | Budget-code validation, finance hold reasons, correction notes, finance review completion | Role-based working session | 45 minutes | Finance Reviewer | Reviewer completes one finance hold and one review completion scenario. |
| Procurement coordinator | Procurement review, vendor issue handling, quote/attachment check, PO handoff, delivery instructions | Role-based working session | 60 minutes | Procurement Coordinator | Coordinator completes one PO-ready review and one procurement hold scenario. |
| Project manager | Pilot metrics, defect review, hypercare cadence, go/no-go tracking | Readiness briefing | 30 minutes | Business Analyst | Project manager confirms review cadence and issue categories. |
| Executive sponsor | Pilot objective, dashboard views, go/no-go criteria, expansion decisions | Sponsor briefing | 20 minutes | Project Manager | Sponsor confirms decision expectations. |
| IT/ERP support | Access checks, workflow smoke test, reference data, reporting refresh, defect handoff | Technical readiness session | 45 minutes | IT Systems Analyst | Support confirms launch-day monitoring checklist. |
| UAT testers | How UAT outcomes translate into rollout risks, training needs, and pilot support | UAT closeout review | 30 minutes | Business Analyst | Testers confirm open defects and workarounds are documented. |

## Support Model

First-line support is handled by the Business Analyst and procurement coordinator during the first week of pilot use. Requesters and managers raise questions through the agreed pilot support channel. Finance questions go first to the finance reviewer, and technical access or workflow availability issues escalate to the IT systems analyst / ERP implementation consultant.

The escalation path is:

1. Pilot user contacts first-line support through the support channel.
2. Business Analyst categorizes the item as question, training need, access issue, data/reference issue, workflow defect, reporting issue, or policy decision.
3. Procurement, finance, IT/ERP support, or the project manager takes ownership based on category.
4. Critical workflow defects or go/no-go risks are escalated to the project manager and executive sponsor.

Defects are logged with scenario, steps to reproduce, expected result, actual result, severity, owner, and status. The first week includes a daily hypercare check-in to review new issues, pending approvals, budget-code exceptions, emergency requests, vendor delays, dashboard refresh status, and training reinforcement needs.

Support ownership is shared but controlled: the Business Analyst owns triage and documentation, procurement owns PO readiness questions, finance owns budget-code and finance hold questions, IT/ERP support owns access and workflow availability, and the project manager owns prioritization and sponsor escalation.

## Adoption Metrics

These are proposed pilot metrics, not achieved results.

- Number of requests submitted through the new workflow.
- Percent of requests with complete required fields.
- Count of missing or invalid budget-code exceptions.
- Pending approvals over SLA.
- Number of emergency requests with audit notes.
- User support tickets or questions by category.
- Number of rejected requests with documented reasons.
- Number of returned requests requiring correction.
- Count of procurement holds by reason, including vendor issue, missing quote, duplicate review, and clarification.
- Dashboard review cadence and whether the reporting view refreshed as expected.

## Go/No-Go Criteria

- UAT critical and high defects reviewed, with resolution, accepted workaround, or launch deferral decision documented.
- Approval matrix signed off for the Maintenance pilot and emergency safety scenarios.
- Role access tested for requesters, managers, finance, procurement, reporting, UAT, and support roles.
- Training completed for pilot users or first-day assisted support scheduled.
- Reporting view validated for backlog, approval aging, finance holds, procurement holds, emergency requests, and receiving status.
- Budget-code and vendor reference lists prepared for pilot use.
- Support owner, support channel, and daily hypercare cadence confirmed.
- Rollback/manual fallback process understood for email/spreadsheet tracking if the workflow is unavailable or a launch-blocking defect is found.

## Post-Launch Review Plan

The first review occurs at the end of launch day, followed by daily hypercare check-ins during the first week and a formal pilot review at the end of week one.

Attendees should include the project manager, Business Analyst, department manager, procurement coordinator, finance reviewer, IT systems analyst / ERP implementation consultant, UAT tester representative, and executive sponsor as needed.

Questions to ask:

- Are requesters using the workflow instead of email/spreadsheets for pilot requests?
- Which required fields are confusing or incomplete?
- Are approval queues and finance review routes working as expected?
- Are emergency safety requests capturing justification and audit notes?
- Are procurement handoffs cleaner, or are users still missing vendor, quote, or delivery details?
- Do support tickets indicate training gaps, data issues, workflow defects, or policy questions?
- Does reporting reflect current workflow and exception status clearly enough for pilot review?

Metrics to review include request volume, required-field completeness, missing/invalid budget-code exceptions, pending approvals over SLA, emergency requests with audit notes, rejected/returned requests with documented reasons, support questions, procurement holds, and dashboard refresh status.

Decision options:

- Continue pilot.
- Adjust workflow rules.
- Expand to another department.
- Pause for fixes.

## BA Portfolio Value

This artifact demonstrates rollout planning, stakeholder communication, training readiness, adoption measurement, go/no-go thinking, and implementation support. It shows how a junior Business Analyst or implementation analyst can translate requirements, business rules, UAT outcomes, reporting needs, and pilot risks into practical rollout planning without claiming a real ERP implementation.
