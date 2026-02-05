# Web Automation Scripts (SAP Fiori Configuration)

This folder contains JSON scripts for web automation (UI.Vision extension) to manage SAP Fiori Launchpad Spaces/Pages. Echo steps have been added to show script progress; you can review them in the **Logs** section of UI.Vision.

Timestamped CSV reports are generated for every script, providing a complete audit trail for configuration activities.

## Scripts in this folder

- **SpaceCreation.json**  
  Creates a new Fiori Space.

- **PageCreation.json**  
  Creates a Fiori Page.

- **PageAdditionToSpace.json**  
  Adds/assigns a Page to a Space. The script reloads the webpage only when the Space ID changes, ensuring fewer backend calls.

- **PageExistCheckInSpace.json**  
  Checks whether a Page already exists/is assigned in a Space and scrapes all assigned pages to an output `.csv` file for further comparison.

## Recommended run order

1. PageCreation.json  
2. SpaceCreation.json  
3. PageExistCheckInSpace.json (optional check)  
4. PageAdditionToSpace.json  

## Prerequisites

- Access to SAP Fiori Launchpad and the required Fiori admin apps  
- Authorization for the Fiori Admin role  
- A web automation runner: the UI.Vision extension installed in your browser  
- Optionally, you can use UiPath web automation by updating some command names in the `.json` files  

## Required user inputs (update before running)

- In each script, replace **your Fiori Launchpad URL** and your **Transport Request (TR) description** in **Step 1 and Step 2**.
- Upload the following CSV files in UI.Vision’s **CSV** tab:
  - `pages.csv` (COL1 = Page ID, COL2 = Page Title)
  - `spaces.csv` (COL1 = Space ID, COL2 = Space Title)
  - `pageaddtospace.csv` (COL1 = Space ID, COL2 = Page ID)

## Notes / Tips

- Run in the sandbox system first.
- UI.Vision runs locally in your browser and does not make external internet calls, so it is safe to use for Fiori configuration activities.

## Troubleshooting (common)

- If the script is not working for you, you may need to update the XPaths.
