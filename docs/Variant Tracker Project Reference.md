# Functionality of the VariationTrackerProject Library
[Variation Tracker Project Google Apps Script](https://script.google.com/home/projects/1bIhg7fWREGLvxvuhn_oNXexZnd6vRRkuzA7TgL--67JS0QW5rP6WKwr9/edit)

## createVarTrackerMenu()
### Description
This function will create a custom menu called "🧬 Tracker" in the active spreadsheet. The custom menu will include two menu items:
1. "☁ Get Release!": When selected, this menu item will execute the getRelease() function. You can customize the getRelease() function to retrieve and display a selected release date or perform any other relevant actions.
2. "How to Use": When selected, this menu item will execute the showHowTo() function.
Users can access the custom menu by navigating to the "🧬 Tracker" menu in the Google Sheets document. They can then select the desired menu item to perform the associated action. This provides a user-friendly interface for interacting with the tracker and accessing specific functionalities.
### Parameters
None
### Returns
None


## refreshAll()
### Description
This function will first enable the execution of all data sources in the spreadsheet using SpreadsheetApp.enableAllDataSourcesExecution(). This ensures that the data sources can be refreshed. Then, it calls spreadsheet.refreshAllDataSources() to initiate the refresh process for all data sources in the spreadsheet. This action retrieves the latest data from the sources and updates the corresponding data in the spreadsheet. As a result, you can maintain accurate and up-to-date information in the Variant Tracker Reports.
### Parameters
None
### Returns
None


## updateFilterView()
### Description
This function will retrieve the filter views in the "alerts" sheet, update the filter ranges to include the latest data, and apply the changes to the filter views in the spreadsheet. This ensures that the filter views display the most up-to-date information.
### Parameters
None
### Returns
None


## getRelease()
### Description
This function calls refreshAll() to refresh all of the data in the spreadsheet, then updates the filter views in the spreadsheet by calling the updateFilterView() function. It then pulls data for the “selectedRelease” date and updates the “loadedRelease” to this value to make the Variant Tracker Report display data to reflect this date.
### Parameters
None
### Returns
None


## showHowTo()
### Description
This function will display a dialog box titled "How to use this report" in the active spreadsheet. The dialog box contains an embedded Google Document that provides detailed instructions and guidelines on how to navigate, interpret, and interact with the report. Users can refer to the instructions in the dialog box to better understand and utilize the features and functionality of the report.
### Parameters
None
### Returns
None


# Deploying Changes to the Functions and Updating Existing Reports
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Changes to these functions, or the creation of new functions, that are meant to be applied to all Variant Tracker Reports must be done in the master file, [Variation Tracker Project Google Apps Script](https://script.google.com/home/projects/1bIhg7fWREGLvxvuhn_oNXexZnd6vRRkuzA7TgL--67JS0QW5rP6WKwr9/edit). Once all updates are complete, the Google Script must be deployed as a new version of the Variation Tracker Project Google Apps Script. This is done by selecting the blue “Deploy” button in the top right corner of the interface and selecting “New deployment” from the dropdown menu. Select the deployment type as “Library” and add a description to the deployment that includes a version number to ensure the most up-to-date Google Script can be easily selected. Once this is done, select “Deploy” in the bottom right hand corner of the popup window you are working in.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Now each Variant Tracker Report must be individually updated as they are each running on the outdated deployment of the Variation Tracker Project Google Apps Script. To do this, systematically work through each report by selecting “Extensions” followed by “Apps Script” in each report’s Google Sheets toolbar. This will open a new window containing functions that locally execute the functions from the master file. From here, select the library titled, “VariationTrackerProject”. This will open a popup window with the option to select a version of the VariationTrackerProject library. Select the most recent version (highest number) and select “Save”. Once this step is completed for every variant tracker report, all of the sheets will be properly updated.
