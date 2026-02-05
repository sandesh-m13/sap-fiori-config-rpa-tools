# GUI Scripts (SAP Fiori Configuration)

This folder contains SAP GUI scripting files used to configure SAP Fiori content (e.g., Business catalogs creation and app assignments).

## Files
- **CatalogCreation.vbs**  
  Create business catalogs.
- **AppAdditionToCatalog.vbs**  
  Adds an app/target mapping to an existing business catalog.

## Prerequisites
- SAP GUI installed
- SAP GUI Scripting enabled (client + server)
- User authorization to maintain catalogs/apps

## How to run
1. Log in to the target SAP system using SAP GUI.
2. Open the transaction /n/ui2/flpcm_cust for your Fiori content maintenance.
3. Click on the 'SAP GUI Scripting' icon and paste your Script File path under the playback section
3. Run the script steps from the `.vbs` file using your GUI scripting method/tool.

## Inputs to update (before running)
- System / client
- Catalog ID / catalog name in the Excel file
- Update the correct path of the Excel file in .vbs file
- Edit .vbs file with option: Edit with notepad

## Notes
- Run in a sandbox environment first.
- Keep evidence (screenshots/logs) if required by your change process.
