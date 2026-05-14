# ERP Procurement Request to Purchase Order Implementation Case

## Quick Read

This is a simulated Business Analyst portfolio case for HarbourPoint Marine Services, a fictional marine services and logistics company in St. John's, Newfoundland and Labrador. The case shows how a junior BA or implementation analyst could support a platform-neutral ERP-style procurement workflow project, moving purchase requests from email and spreadsheets toward standardized request intake, approval routing, budget validation, purchase order handoff, receiving visibility, and operational reporting.

The project is designed for a recruiter, junior BA hiring manager, or implementation analyst interviewer to review in 5-10 minutes, with deeper artifacts available for interview discussion.

## Honesty And Synthetic Data Disclaimer

This is a synthetic portfolio case. HarbourPoint Marine Services is fictional. The scenario, vendors, request records, amounts, business rules, defects, UAT examples, and reporting artifacts are created for demonstration only. This project does not claim real client delivery, real ERP configuration, real company data, or production experience with SAP, Oracle, Microsoft Dynamics, NetSuite, or any named ERP platform.

## Portfolio Objective

The portfolio objective is to demonstrate practical BA and implementation support work:

- Clarifying a messy operational procurement process.
- Translating stakeholder needs into scope, requirements, business rules, and user stories.
- Documenting current-state and future-state workflows in business language.
- Supporting UAT with plain-language test cases, traceability, and defect logging.
- Connecting workflow data to SQL and Power BI-style reporting requirements.
- Preparing rollout, training, risk, and cutover materials for a controlled pilot.

## Suggested 5-10 Minute Review Path

1. Start with the [portfolio summary](PORTFOLIO-SUMMARY.md) for the fastest recruiter-facing overview.
2. Read this README for the project framing, tools represented, and interview story.
3. Read the [executive summary](00-executive-summary/executive-summary.md) for the business problem, proposed future state, expected benefits, risks, and success metrics.
4. Skim the [current-state process map](02-process-maps/current-state-procurement-process.md), [future-state process map](02-process-maps/future-state-procurement-process.md), and [business requirements document](03-requirements/business-requirements-document.md) for BA documentation depth.
5. Review the [dashboard design specification](05-data-and-reporting/dashboard-design-spec.md), [SQL query pack](05-data-and-reporting/procurement-sql-queries.sql), and [UAT test cases](06-uat/uat-test-cases.csv) for implementation support, testing, SQL, and reporting thinking.
6. Review the [rollout note](07-implementation/rollout-note.md) for change management and pilot-readiness thinking.

## Deeper Interview Walkthrough Path

Use this path for a 20-30 minute interview discussion:

1. Start with the current-state pain points and future-state workflow.
2. Walk through the approval matrix, business rules, and traceability matrix.
3. Connect the user stories to UAT cases and sample defects.
4. Open the synthetic dataset, SQL query pack, and dashboard spec to explain reporting decisions.
5. Finish with rollout, cutover, training/support, and risk register artifacts.

## Business Scenario

HarbourPoint Marine Services relies on email and spreadsheets for requests for parts, tools, safety equipment, maintenance services, vendor repairs, and operations supplies. Approvals are inconsistent, budget codes are often missing or incorrect, procurement staff spend time chasing details, and requesters do not have clear status visibility once a request is submitted.

The simulated project proposes a platform-neutral ERP-style procurement workflow that standardizes purchase request intake, validates required fields, routes approvals by amount and exception type, supports finance review, creates a clearer handoff to purchase order creation, records receiving status updates, and gives leadership better reporting on backlog, cycle time, approvals, exceptions, and spend categories.

## What This Demonstrates

- Business process analysis for a practical operations workflow.
- ERP implementation support without claiming configuration work.
- Requirements writing, business rules, acceptance criteria, and traceability.
- UAT preparation and defect-management thinking.
- SQL and Power BI-style reporting requirements tied to business questions.
- Change rollout planning for a phased pilot.
- Clear communication for non-technical business stakeholders.

## Tools Represented

- **Excel:** CSV/XLSX-friendly datasets, approval matrix, traceability, UAT cases, defect log, and risk register.
- **SQL:** portable query examples for procurement workflow reporting questions.
- **Power BI:** Power BI-style dashboard design specification with pages, KPIs, filters, visuals, and decision-use notes.
- **Process mapping tool:** Mermaid-style current-state and future-state process maps.
- **Jira/Confluence-style documentation:** IDs, priorities, statuses, user stories, acceptance criteria, defect IDs, decision notes, and traceability without pretending these are exported from those tools.

## Artifact Index

| Area | Artifact | Status |
|---|---|---|
| Project summary | [PORTFOLIO-SUMMARY.md](PORTFOLIO-SUMMARY.md) | Complete |
| Project shell | [README.md](README.md) | Complete in ISSUE-001 |
| Executive summary | [00-executive-summary/executive-summary.md](00-executive-summary/executive-summary.md) | Complete in ISSUE-001 |
| Discovery | [01-discovery/stakeholder-interview-guide.md](01-discovery/stakeholder-interview-guide.md) | Complete in ISSUE-002 |
| Discovery | [01-discovery/scope-and-assumptions.md](01-discovery/scope-and-assumptions.md) | Complete in ISSUE-002 |
| Process maps | [02-process-maps/current-state-procurement-process.md](02-process-maps/current-state-procurement-process.md) | Complete |
| Process maps | [02-process-maps/future-state-procurement-process.md](02-process-maps/future-state-procurement-process.md) | Complete |
| Requirements | [03-requirements/business-requirements-document.md](03-requirements/business-requirements-document.md) | Complete |
| Requirements | [03-requirements/functional-requirements.md](03-requirements/functional-requirements.md) | Complete |
| Requirements | [03-requirements/non-functional-requirements.md](03-requirements/non-functional-requirements.md) | Complete |
| Requirements | [03-requirements/business-rules-catalogue.md](03-requirements/business-rules-catalogue.md) | Complete |
| Requirements | [03-requirements/approval-matrix.csv](03-requirements/approval-matrix.csv) | Complete |
| Requirements | [03-requirements/requirements-traceability-matrix.csv](03-requirements/requirements-traceability-matrix.csv) | Complete; final QA mapping updated |
| Agile backlog | [04-agile-backlog/user-stories-and-acceptance-criteria.md](04-agile-backlog/user-stories-and-acceptance-criteria.md) | Complete in ISSUE-005 |
| Data and reporting | [05-data-and-reporting/synthetic-procurement-requests.csv](05-data-and-reporting/synthetic-procurement-requests.csv) | Complete in ISSUE-006 |
| Data and reporting | [05-data-and-reporting/data-dictionary.md](05-data-and-reporting/data-dictionary.md) | Complete in ISSUE-006 |
| Data and reporting | [05-data-and-reporting/procurement-sql-queries.sql](05-data-and-reporting/procurement-sql-queries.sql) | Complete in ISSUE-007 |
| Data and reporting | [05-data-and-reporting/dashboard-design-spec.md](05-data-and-reporting/dashboard-design-spec.md) | Complete in ISSUE-007 |
| UAT | [06-uat/uat-test-cases.csv](06-uat/uat-test-cases.csv) | Complete in ISSUE-008 |
| UAT | [06-uat/defect-log-template.csv](06-uat/defect-log-template.csv) | Complete in ISSUE-008 |
| Implementation | [07-implementation/rollout-note.md](07-implementation/rollout-note.md) | Complete in ISSUE-009 |
| Implementation | [07-implementation/cutover-checklist.md](07-implementation/cutover-checklist.md) | Complete in ISSUE-009 |
| Implementation | [07-implementation/training-and-support-note.md](07-implementation/training-and-support-note.md) | Complete in ISSUE-009 |
| Implementation | [07-implementation/implementation-risk-register.csv](07-implementation/implementation-risk-register.csv) | Complete in ISSUE-009 |

## Resume Bullets

- Simulated an ERP-style procurement implementation case for a fictional marine services organization, documenting request intake, approval routing, budget validation, purchase order handoff, receiving visibility, and reporting needs.
- Created BA-ready project artifacts including executive summary, discovery materials, process maps, requirements, business rules, user stories, traceability, UAT cases, defect log, SQL reporting examples, and rollout support documents.
- Designed a synthetic procurement dataset and reporting specification to analyze approval bottlenecks, exception reasons, request status, delivery status, vendor delays, and category spend without using real company or vendor data.
- Framed implementation risks, assumptions, pilot rollout needs, and adoption metrics in practical business language for recruiter and interview discussion.

## LinkedIn Featured Description

**ERP Procurement Request to Purchase Order Implementation Case**  
Simulated Business Analyst portfolio project for a fictional St. John's marine services organization. The case demonstrates how a junior BA or implementation analyst can support an ERP-style procurement workflow project through discovery, process mapping, requirements, business rules, UAT support, SQL/reporting analysis, and rollout planning. All data and company details are synthetic and used for portfolio demonstration only.

## Interview Talking Points

- **Why this project:** It shows implementation support skills through a concrete procurement workflow instead of a generic dashboard or school-style analysis.
- **Business problem:** Requesters, managers, finance, and procurement need a shared process for intake, approvals, budget validation, PO handoff, receiving updates, and reporting.
- **BA contribution:** The BA role is to clarify current pain points, document future workflow expectations, define requirements and business rules, support UAT, and prepare rollout materials.
- **ERP framing:** The workflow is platform-neutral and uses ERP concepts without claiming hands-on configuration in a named ERP system.
- **Data and reporting:** SQL and Power BI-style artifacts are used to answer business questions about bottlenecks, exceptions, statuses, and spend patterns.
- **Integrity:** The project is clearly labelled as a simulation and uses synthetic data only.

## Completion Checklist

- [x] Root project folder exists: `03-erp-procurement-implementation/`.
- [x] Required folder structure exists for executive summary, discovery, process maps, requirements, agile backlog, data/reporting, UAT, and implementation artifacts.
- [x] Recruiter-first README created.
- [x] Executive summary created.
- [x] Synthetic portfolio disclaimer included.
- [x] Tools represented.
- [x] Artifact index links to completed files.
- [x] Resume bullets included.
- [x] LinkedIn Featured description included.
- [x] Interview talking points included.
- [x] Discovery and scope artifacts completed.
- [x] Process maps completed.
- [x] Requirements, rules, approval matrix, and traceability completed.
- [x] Agile backlog completed.
- [x] Synthetic dataset and data dictionary completed.
- [x] SQL and dashboard design specification completed.
- [x] UAT cases and defect log completed.
- [x] Rollout, cutover, training/support, and risk register completed.
- [x] Final QA completed for folder structure, synthetic-data disclaimer, portfolio honesty, traceability cleanup, and recruiter-first packaging.

## Final Portfolio Status

The artifact pack is portfolio-ready as a synthetic case study. It can be used for resume discussion, LinkedIn Featured attachment, and interview walkthroughs, provided it is always described as a designed and documented portfolio case using fictional HarbourPoint Marine Services data, not as a real ERP deployment or client implementation.
