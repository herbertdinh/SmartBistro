# SmartBistro Test Plan

| Test ID | Feature | Input | Expected Output | Status |
|---|---|---|---|---|
| TC1 | QR Code Access | Scan QR / open menu page | Menu page loads successfully | Pass |
| TC2 | Order Placement | Select menu items | Order is added to cart | Pass |
| TC3 | Checkout | Confirm payment | Payment confirmation is displayed | Pass |
| TC4 | KDS Display | Submit order | Order appears in kitchen display | Pass |
| TC5 | Reservation | Enter booking details | Reservation confirmation appears | Pass |
| TC6 | Inventory Update | Complete order | Related stock level is reduced | Pending prototype integration |

## QA Metrics

- Test coverage: Core customer, KDS, reservation and admin workflows
- Defect density: To be calculated after defect logging
- Pass/fail rate: Initial prototype tests mostly passed
- Response time target: Under 2 seconds for key user actions
