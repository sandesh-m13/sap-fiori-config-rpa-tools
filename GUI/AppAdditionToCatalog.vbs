Set objExcel = CreateObject("Excel.Application")
objExcel.Workbooks.open("C:\Users\SMali\Downloads\AppAdditionToCat.xlsx")
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
session.findById("wnd[0]/usr/tabsMAIN_TAB/tabpMAIN_TAB_CAT/ssubMAIN_TAB_SCA:/UI2/FLP_CONT_MGR:2100/txtGV_FILTER_CAT").text = objSheet.Cells(intRow, 1).Value
session.findById("wnd[0]/usr/tabsMAIN_TAB/tabpMAIN_TAB_CAT/ssubMAIN_TAB_SCA:/UI2/FLP_CONT_MGR:2100/txtGV_FILTER_CAT").caretPosition = 29
session.findById("wnd[0]/usr/tabsMAIN_TAB/tabpMAIN_TAB_CAT/ssubMAIN_TAB_SCA:/UI2/FLP_CONT_MGR:2100/btnFILTER_GO_CAT").press
session.findById("wnd[0]/usr/tabsMAIN_TAB/tabpMAIN_TAB_CAT/ssubMAIN_TAB_SCA:/UI2/FLP_CONT_MGR:2100/cntlCONTAINER_CAT_TAB/shellcont/shell/shellcont[0]/shell").pressToolbarButton "&TRANSPORT_CAT"
session.findById("wnd[1]/usr/ctxtKO008-TRKORR").text = "SD2K123456"
session.findById("wnd[1]/tbar[0]/btn[0]").press
session.findById("wnd[0]/usr/tabsMAIN_TAB/tabpMAIN_TAB_CAT/ssubMAIN_TAB_SCA:/UI2/FLP_CONT_MGR:2100/cntlCONTAINER_CAT_TAB/shellcont/shell/shellcont[1]/shell/shellcont[0]/shell").pressToolbarContextButton "&ADD_TTMS"
session.findById("wnd[0]/usr/tabsMAIN_TAB/tabpMAIN_TAB_CAT/ssubMAIN_TAB_SCA:/UI2/FLP_CONT_MGR:2100/cntlCONTAINER_CAT_TAB/shellcont/shell/shellcont[1]/shell/shellcont[0]/shell").selectContextMenuItem "&ADD_THIS"
session.findById("wnd[0]/usr/txtGV_FILTER_TTM_SEL").text = objSheet.Cells(intRow, 2).Value
session.findById("wnd[0]/usr/txtGV_FILTER_TTM_SEL").caretPosition = 6
session.findById("wnd[0]/usr/btnFILTER_GO_TTM_SEL").press
MsgBox "Please select the required item and press OK to continue."
introw=introw+1
Loop
objExcel.Quit
