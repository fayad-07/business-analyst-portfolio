# Future-State Procurement Process

## How To Read This Artifact

This process map shows a proposed platform-neutral ERP-style procurement workflow for HarbourPoint Marine Services, a fictional marine services and logistics company in St. John's, Newfoundland and Labrador. It is designed for a synthetic Business Analyst portfolio case and does not claim that SAP, Oracle, Microsoft Dynamics, NetSuite, or any other named ERP product has been configured.

Read the Mermaid map first to understand the intended request-to-purchase-order flow. Then review the controls and improvement tables to see how the future state addresses current email, spreadsheet, approval, budget, status, receiving, and reporting pain points.

## Future-State Process Map

```mermaid
flowchart TD
    classDef system fill:#e0f2fe,stroke:#0369a1,color:#222;
    classDef control fill:#dcfce7,stroke:#166534,color:#222;
    classDef exception fill:#fef3c7,stroke:#92400e,color:#222;
    classDef dashboard fill:#ede9fe,stroke:#6d28d9,color:#222;

    subgraph OR["Operations requester"]
        OR1["1. Opens ERP-style purchase request form"]
        OR2["2. Enters department, category, description, business reason, amount, priority, budget code, vendor if known, needed-by date, and attachments"]
        OR3["5. Corrects missing or invalid required fields"]
        OR4["20. Views request status and delivery status"]
    end

    subgraph SYS["ERP procurement workflow / system"]
        SYS1["3. Validates required fields and controlled-list values"]
        SYS2{"4. Required fields complete?"}
        SYS3["6. Checks duplicate warning, emergency flag, amount band, category, and routing rules"]
        SYS8{"7. Emergency safety fast-track?"}
        SYS4["8. Routes approval task and records audit history"]
        SYS5["10. Routes budget exception to finance hold or finance review"]
        SYS6["15. Updates request status: submitted, pending approval, on hold, approved, PO created, received, closed, rejected, delayed"]
        SYS7["21. Sends basic notifications for submission, approval, rejection, finance hold, PO creation, receiving update, and overdue approval"]
    end

    subgraph DM["Department manager"]
        DM1["8. Reviews approval queue with request details and comments"]
        DM2{"9. Approve, reject, or return?"}
        DM3["11. Returns or rejects with reason captured"]
        DM4["12. Approves according to amount and exception rules"]
        DM5["9A. Reviews emergency safety request with required justification and audit note"]
    end

    subgraph FIN["Finance / budget reviewer"]
        FIN1["13. Validates budget code, cost centre, and finance-review triggers"]
        FIN2{"14. Budget valid or approved exception?"}
        FIN3["16. Places request on finance hold with reason and required action"]
        FIN4["17. Confirms finance review complete"]
    end

    subgraph PC["Procurement coordinator"]
        PC1["18. Reviews approved request for vendor, quote, lead time, delivery instructions, and PO readiness"]
        PC2{"19. Procurement ready to create PO?"}
        PC3["22. Places procurement hold with reason: vendor setup, missing quote, duplicate review, or clarification"]
        PC4["23. Generates purchase order or prepares PO handoff in platform-neutral ERP-style workflow"]
        PC5["24. Sends PO and delivery instructions to vendor"]
    end

    subgraph VC["Vendor contact"]
        VC1["25. Confirms order, lead time, availability, or delay"]
    end

    subgraph RO["Receiving / operations"]
        RO1["26. Records receiving update: not received, partially received, received, delayed, rejected, or cancelled"]
    end

    subgraph LEAD["Leadership / reporting"]
        LEAD1["27. Reviews reporting dashboard for backlog, aging, cycle time, exceptions, spend category, vendor, approval, and receiving status"]
    end

    OR1 --> OR2 --> SYS1 --> SYS2
    SYS2 -- "No" --> OR3 --> OR2
    SYS2 -- "Yes" --> SYS3 --> SYS8
    SYS8 -- "No" --> SYS4 --> DM1 --> DM2
    SYS8 -- "Yes" --> DM5 --> SYS4
    DM2 -- "Return or reject" --> DM3 --> SYS6
    DM3 -- "Returned for correction" --> OR3
    DM2 -- "Approve" --> DM4 --> FIN1 --> FIN2
    FIN2 -- "No" --> SYS5 --> FIN3 --> SYS6
    FIN3 -- "Correction supplied" --> FIN1
    FIN2 -- "Yes" --> FIN4 --> PC1 --> PC2
    PC2 -- "No" --> PC3 --> SYS6
    PC3 -- "Resolved" --> PC1
    PC2 -- "Yes" --> PC4 --> SYS6 --> PC5 --> VC1 --> SYS6 --> RO1 --> SYS6
    SYS6 --> OR4
    SYS6 --> SYS7
    SYS6 --> LEAD1

    class SYS1,SYS2,SYS3,SYS4,SYS5,SYS6,SYS7,SYS8 system;
    class SYS1,SYS3,SYS4,FIN1,PC4,RO1,DM5 control;
    class DM3,FIN3,PC3 exception;
    class LEAD1 dashboard;
```

## Planned Status Concepts

| Status type | Example values | Purpose |
|---|---|---|
| Request status | Submitted, pending approval, returned, rejected, finance hold, procurement hold, approved, PO created, closed, delayed | Shows where the request is in the business workflow. |
| Delivery status | Not ordered, ordered, not received, partially received, received, delayed, rejected, cancelled | Shows fulfillment progress after procurement action. |

Keeping request status and delivery status separate prevents an approved request from being mistaken for a received item or service.

## Future-State Improvements

| Current issue addressed | Future-state improvement | Expected business value |
|---|---|---|
| Inconsistent email and spreadsheet intake | Standard ERP-style purchase request form with controlled fields. | Cleaner request information before approval, finance review, or procurement review begins. |
| Missing request details | Required-field validation before normal submission. | Less avoidable back-and-forth with requesters. |
| Unclear approval status | Approval routing and manager queue with captured decision comments. | Requesters and procurement can see whether approval is pending, returned, rejected, or approved. |
| Missing or invalid budget codes | Budget validation and finance hold path. | Finance issues become visible earlier and are tracked with reason codes. |
| Vendor follow-up delays | Procurement hold reasons for vendor setup, missing quote, duplicate review, or clarification. | Delays can be categorized instead of hidden in email threads. |
| Manual PO rework | PO generation or PO handoff after approvals and required details are complete. | Procurement works from a cleaner request record. |
| Poor requester visibility | Requester view of request status and delivery status. | Fewer manual status follow-ups. |
| Inconsistent receiving updates | Receiving update captured against the request or PO record. | Operations, procurement, and managers share a clearer fulfillment view. |
| Manual reporting | Dashboard fed by consistent request, exception, approval, procurement, and receiving status values. | Leadership can review backlog, aging, cycle time, exceptions, spend, and receiving status more consistently. |

## Controls Represented

| Control | How it works in the proposed workflow |
|---|---|
| Required-field validation | Normal submission requires key fields such as department, category, description, business reason, amount, priority, budget code, needed-by date, and vendor when known. |
| Controlled-list values | Departments, categories, budget codes, vendors, priorities, status values, and hold reasons use standard values where practical. |
| Amount-based approval routing | Requests route based on the documented approval bands: under CAD 1,000, CAD 1,000 to CAD 9,999, and CAD 10,000 and above. |
| Approval decision capture | Approvals, returns, and rejections include user, timestamp, decision, and comment history. |
| Finance budget validation | Invalid, inactive, missing, or inconsistent budget codes route to finance review or finance hold instead of being handled informally by email. |
| Emergency safety fast-track | Emergency safety requests can receive faster routing, but the workflow still captures justification, audit notes, approval history, and finance visibility where required. |
| Duplicate warning | Similar recent requests can be flagged for review without automatically blocking legitimate maintenance needs. |
| Procurement readiness check | Procurement confirms vendor, quote, lead time, delivery instructions, and PO readiness before PO generation or handoff. |
| Hold reason tracking | Finance and procurement holds use reason codes so exception reporting is consistent. |
| Basic notifications | Users receive practical notifications for submission, approval, rejection, finance hold, PO creation, receiving update, and overdue approval. |
| Audit trail | Request submission, approval, finance review, PO creation, receiving updates, holds, comments, and status changes are traceable. |
| Reporting dashboard | Leadership and managers can review backlog, aging, cycle time, approval bottlenecks, exception reasons, vendor/category spend, and receiving status. |

## Assumptions Carried Into Requirements And UAT

- The initial pilot remains focused on Maintenance procurement requests such as parts, tools, safety equipment, maintenance services, vendor repairs, and operations supplies.
- Approval thresholds, budget-code validation rules, and emergency safety handling are documented in the requirements, business rules, approval matrix, backlog, and UAT artifacts. Delegation rules remain an open policy detail.
- The workflow remains platform-neutral and should be translated into a named ERP product only in a real implementation context.
- Vendor master lookup, budget code reference data, user roles, and reporting extracts are assumed to exist at a basic pilot-ready level.
- Payment processing, full accounting integration, inventory management, and detailed warehouse receiving remain outside the initial workflow.

## Business Analyst Value Shown

This artifact turns the current procurement pain points into a practical future-state workflow that connects to the requirements, backlog, UAT, reporting, and rollout artifacts in the completed portfolio package. It shows how a junior BA can define intake, routing, finance review, procurement review, PO handoff, receiving visibility, exceptions, notifications, audit expectations, and reporting needs without overstating real ERP configuration experience.
