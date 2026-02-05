# SAP Fiori Config RPA Tools

A small portfolio repository with ready-to-use artifacts and notes to help automate parts of **SAP Fiori** configuration using UI.Vision **RPA**.

## What’s included

### `gui/`
GUI-oriented step notes for Business catalog-related activities:
- `CatalogCreation.txt` — steps for creating a business catalog
- `AppAdditionToCatalog.txt` — steps for adding an app to a catalog

See `gui/README.md` for context and how these steps map to your automation flow.

### `web/`
Automation-ready JSON templates for common Fiori Launchpad (FLP) configuration tasks:
- `SpaceCreation.json` — create a Space
- `PageCreation.json` — create a Page
- `PageAdditionToSpace.json` — assign/add a Page to a Space

See `web/README.md` for usage notes and any prerequisites.

## Repository structure
```text
sap-fiori-config-rpa-tools/
├─ README.md
├─ gui/
│  ├─ README.md
│  ├─ CatalogCreation.txt
│  └─ AppAdditionToCatalog.txt
└─ web/
   ├─ README.md
   ├─ SpaceCreation.json
   ├─ PageCreation.json
   └─ PageAdditionToSpace.json

