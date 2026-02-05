Set objExcel = CreateObject("Excel.Application")
objExcel.Workbooks.open("C:\Users\SMali\Downloads\CatalogCreation.xlsx")
Set objSheet = objExcel.ActiveWorkbook.Worksheets(1)
If Not IsObject(application) Then
   Set SapGuiAuto  = GetObject("SAPGUI")
   Set application = SapGuiAuto.GetScriptingEngine
End If
If Not IsObject(connection) Then
   Set connection = application.Children(0)
End If
If Not IsObject(session) Then
   Set session    = connection.Children(0)
End If
If IsObject(WScript) Then
   WScript.ConnectObject session,     "on"
   WScript.ConnectObject application, "on"
End If
introw=1
Do While objSheet.Cells(intRow, 1).Value <> ""
session.findById("wnd[0]").maximize
session.findById("wnd[0]/usr/tabsMAIN_TAB/tabpMAIN_TAB_CAT/ssubMAIN_TAB_SCA:/UI2/FLP_CONT_MGR:2100/cntlCONTAINER_CAT_TAB/shellcont/shell/shellcont[0]/shell").pressToolbarButton "&CREATE_CAT"
session.findById("wnd[1]/usr/txtGV_CATALOG_ID").text = objSheet.Cells(intRow, 1).Value
session.findById("wnd[1]/usr/txtGV_CATALOG_TITLE").text = objSheet.Cells(intRow, 2).Value
session.findById("wnd[1]/usr/txtGV_CATALOG_TITLE").setFocus
session.findById("wnd[1]/usr/txtGV_CATALOG_TITLE").caretPosition = 61
session.findById("wnd[1]/tbar[0]/btn[0]").press
session.findById("wnd[1]/usr/ctxtKO008-TRKORR").text = objSheet.Cells(intRow, 3).Value
session.findById("wnd[1]/usr/ctxtKO008-TRKORR").caretPosition = 10
session.findById("wnd[1]/tbar[0]/btn[0]").press
introw=introw+1
Loop
objExcel.Quit
