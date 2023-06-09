createVarTrackerMenu()
Description
This function will create a custom menu called "🧬 Tracker" in the active spreadsheet. The custom menu will include two menu items:
1. "☁ Get Release!": When selected, this menu item will execute the getRelease() function. You can customize the getRelease() function to retrieve and display a selected release date or perform any other relevant actions.
2. "How to Use": When selected, this menu item will execute the showHowTo() function.
Users can access the custom menu by navigating to the "🧬 Tracker" menu in the Google Sheets document. They can then select the desired menu item to perform the associated action. This provides a user-friendly interface for interacting with the tracker and accessing specific functionalities.
Parameters
None
Returns
None


refreshAll()
Description
This function will first enable the execution of all data sources in the spreadsheet using SpreadsheetApp.enableAllDataSourcesExecution(). This ensures that the data sources can be refreshed. Then, it calls spreadsheet.refreshAllDataSources() to initiate the refresh process for all data sources in the spreadsheet. This action retrieves the latest data from the sources and updates the corresponding data in the spreadsheet. As a result, you can maintain accurate and up-to-date information in the Variant Tracker Reports.
Parameters
None
Returns
None


updateFilterView()
Description
This function will retrieve the filter views in the "alerts" sheet, update the filter ranges to include the latest data, and apply the changes to the filter views in the spreadsheet. This ensures that the filter views display the most up-to-date information.
Parameters
None
Returns
None


getRelease()
Description
This function calls refreshAll() to refresh all of the data in the spreadsheet, then updates the filter views in the spreadsheet by calling the updateFilterView() function. It then pulls data for the “selectedRelease” date and updates the “loadedRelease” to this value to make the Variant Tracker Report display data to reflect this date.
Parameters
None
Returns
None


showHowTo()
Description
This function will display a dialog box titled "How to use this report" in the active spreadsheet. The dialog box contains an embedded Google Document that provides detailed instructions and guidelines on how to navigate, interpret, and interact with the report. Users can refer to the instructions in the dialog box to better understand and utilize the features and functionality of the report.
Parameters
None
Returns
None