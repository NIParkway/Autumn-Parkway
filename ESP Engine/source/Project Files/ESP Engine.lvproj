<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="13008000">
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">true</Property>
	<Property Name="NI.Project.Description" Type="Str"></Property>
	<Item Name="My Computer" Type="My Computer">
		<Property Name="IOScan.Faults" Type="Str"></Property>
		<Property Name="IOScan.NetVarPeriod" Type="UInt">100</Property>
		<Property Name="IOScan.NetWatchdogEnabled" Type="Bool">false</Property>
		<Property Name="IOScan.Period" Type="UInt">10000</Property>
		<Property Name="IOScan.PowerupMode" Type="UInt">0</Property>
		<Property Name="IOScan.Priority" Type="UInt">9</Property>
		<Property Name="IOScan.ReportModeConflict" Type="Bool">true</Property>
		<Property Name="IOScan.StartEngineOnDeploy" Type="Bool">false</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Static Source" Type="Folder" URL="../../../../Master/source/Static Source">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="Tester" Type="Folder">
			<Item Name="events.vi" Type="VI" URL="../../VI Source/Tester/events.vi"/>
			<Item Name="home.vi" Type="VI" URL="../../VI Source/Tester/home.vi"/>
			<Item Name="notifications.vi" Type="VI" URL="../../VI Source/Tester/notifications.vi"/>
			<Item Name="reports.vi" Type="VI" URL="../../VI Source/Tester/reports.vi"/>
			<Item Name="search.vi" Type="VI" URL="../../VI Source/Tester/search.vi"/>
			<Item Name="singleEvent.vi" Type="VI" URL="../../VI Source/Tester/singleEvent.vi"/>
			<Item Name="singleRequest.vi" Type="VI" URL="../../VI Source/Tester/singleRequest.vi"/>
			<Item Name="singleTeam.vi" Type="VI" URL="../../VI Source/Tester/singleTeam.vi"/>
		</Item>
		<Item Name="FRCts20_EspEngine.lvlib" Type="Library" URL="../../VI Source/FRCts20_EspEngine.lvlib"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="user.lib" Type="Folder">
				<Item Name="1D Array to String__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/string/string.llb/1D Array to String__ogtk.vi"/>
				<Item Name="Filter Error Codes (Array)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/error/error.llb/Filter Error Codes (Array)__ogtk.vi"/>
				<Item Name="Filter Error Codes__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/error/error.llb/Filter Error Codes__ogtk.vi"/>
				<Item Name="Multi-line String to Array__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/string/string.llb/Multi-line String to Array__ogtk.vi"/>
				<Item Name="String to 1D Array__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/string/string.llb/String to 1D Array__ogtk.vi"/>
			</Item>
			<Item Name="vi.lib" Type="Folder">
				<Item Name="8.6CompatibleGlobalVar.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/8.6CompatibleGlobalVar.vi"/>
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="Easy Generate XML__JKI EasyXML.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/EasyXML/JKI_EasyXML.llb/Easy Generate XML__JKI EasyXML.vi"/>
				<Item Name="Easy Parse XML__JKI EasyXML.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/EasyXML/JKI_EasyXML.llb/Easy Parse XML__JKI EasyXML.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
				<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
				<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
				<Item Name="General Error Handler CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler CORE.vi"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="Get File Extension.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Get File Extension.vi"/>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
				<Item Name="Get System Directory.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/sysdir.llb/Get System Directory.vi"/>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
				<Item Name="GOOP Object Repository Method.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/_goopsup.llb/GOOP Object Repository Method.ctl"/>
				<Item Name="GOOP Object Repository Statistics.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/_goopsup.llb/GOOP Object Repository Statistics.ctl"/>
				<Item Name="GOOP Object Repository.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/_goopsup.llb/GOOP Object Repository.vi"/>
				<Item Name="LabVIEWHTTPClient.lvlib" Type="Library" URL="/&lt;vilib&gt;/httpClient/LabVIEWHTTPClient.lvlib"/>
				<Item Name="List Directory and LLBs.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/List Directory and LLBs.vi"/>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="LV Interface for Amazon S3.lvlib" Type="Library" URL="/&lt;vilib&gt;/National Instruments/LabVIEW Interface for Amazon S3/LV Interface for Amazon S3.lvlib"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="LVDateTimeRec.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVDateTimeRec.ctl"/>
				<Item Name="NI_Database_API.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/database/NI_Database_API.lvlib"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="NI_FTP.lvlib" Type="Library" URL="/&lt;vilib&gt;/FTP/NI_FTP.lvlib"/>
				<Item Name="NI_LVConfig.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/config.llb/NI_LVConfig.lvlib"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="NI_SMTPEmail.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/SMTP/NI_SMTPEmail.lvlib"/>
				<Item Name="NI_WebServices.lvlib" Type="Library" URL="/&lt;vilib&gt;/wsapi/NI_WebServices.lvlib"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="Path To Command Line String.vi" Type="VI" URL="/&lt;vilib&gt;/AdvancedString/Path To Command Line String.vi"/>
				<Item Name="PathToUNIXPathString.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/CFURL.llb/PathToUNIXPathString.vi"/>
				<Item Name="PDA Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/PDA/PDA Error Handler.vi"/>
				<Item Name="Recursive File List.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Recursive File List.vi"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="SHA-1.lvlib" Type="Library" URL="/&lt;vilib&gt;/National Instruments/LabVIEW Interface for Amazon S3/SHA-1/SHA-1.lvlib"/>
				<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Simple Error Handler.vi"/>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="System Directory Type.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/sysdir.llb/System Directory Type.ctl"/>
				<Item Name="System Exec.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/system.llb/System Exec.vi"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="Tools_String.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/Tools/String/Tools_String.lvlib"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="XML Parser.lvlib" Type="Library" URL="/&lt;vilib&gt;/National Instruments/LabVIEW Interface for Amazon S3/XML Parser/XML Parser.lvlib"/>
			</Item>
			<Item Name="AMC.lvlib" Type="Library" URL="../../../../Backend/source/VI Source/Dependencies/AMC/AMC.lvlib"/>
			<Item Name="AWS Credentials.vi" Type="VI" URL="../../../../Backend/source/VI Source/AWS Credentials.vi"/>
			<Item Name="AWS_Core.lvlib" Type="Library" URL="../../../../../../../Perforce/penguin_1666/mblack_PerforceWin/lvdotcom/source/aws-toolkit/r1/trunk/AWS Core Lib/VI Source/AWS_Core.lvlib"/>
			<Item Name="AWS_SHA-1.lvlib" Type="Library" URL="../../../../../../../Perforce/penguin_1666/mblack_PerforceWin/lvdotcom/source/aws-toolkit/r1/trunk/AWS Core Lib/VI Source/SHA-1/AWS_SHA-1.lvlib"/>
			<Item Name="AWS_SNS.lvlib" Type="Library" URL="../../../../../../../Perforce/penguin_1666/mblack_PerforceWin/lvdotcom/source/aws-toolkit/r1/trunk/SNS/VI Source/AWS_SNS.lvlib"/>
			<Item Name="AWS_XML Parser.lvlib" Type="Library" URL="../../../../../../../Perforce/penguin_1666/mblack_PerforceWin/lvdotcom/source/aws-toolkit/r1/trunk/AWS Core Lib/VI Source/XML Parser/AWS_XML Parser.lvlib"/>
			<Item Name="Current VIs Parent Directory__ogtk.vi" Type="VI" URL="../../../../Backend/source/VI Source/Dependencies/Current VIs Parent Directory__ogtk.vi"/>
			<Item Name="Current VIs Parents Ref__ogtk.vi" Type="VI" URL="../../../../Backend/source/VI Source/Dependencies/Current VIs Parents Ref__ogtk.vi"/>
			<Item Name="Escape JSON String.vi" Type="VI" URL="../../../../Backend/source/VI Source/Escape JSON String.vi"/>
			<Item Name="Execute SQL Query with Rows.vi" Type="VI" URL="../../../../Backend/source/VI Source/Dependencies/Execute SQL Query with Rows.vi"/>
			<Item Name="FRCts20_Backend_API.lvlib" Type="Library" URL="../../../../Backend/source/VI Source/FRCts20_Backend_API/FRCts20_Backend_API.lvlib"/>
			<Item Name="FRCts20_Backend_API_Event.ctl" Type="VI" URL="../../../../Web Methods/Backend/source/VI Source/FRCts20_Backend_API/FRCts20_Backend_API_Event.ctl"/>
			<Item Name="FRCts20_Backend_API_EventRoot.ctl" Type="VI" URL="../../../../Web Methods/Backend/source/VI Source/FRCts20_Backend_API/FRCts20_Backend_API_EventRoot.ctl"/>
			<Item Name="FRCts20_Backend_API_Request.ctl" Type="VI" URL="../../../../Web Methods/Backend/source/VI Source/FRCts20_Backend_API/FRCts20_Backend_API_Request.ctl"/>
			<Item Name="FRCts20_Backend_API_RequestRoot.ctl" Type="VI" URL="../../../../Web Methods/Backend/source/VI Source/FRCts20_Backend_API/FRCts20_Backend_API_RequestRoot.ctl"/>
			<Item Name="FRCts20_Backend_API_Status.ctl" Type="VI" URL="../../../../Web Methods/Backend/source/VI Source/FRCts20_Backend_API/FRCts20_Backend_API_Status.ctl"/>
			<Item Name="FRCts20_Backend_API_SW.ctl" Type="VI" URL="../../../../Web Methods/Backend/source/VI Source/FRCts20_Backend_API/FRCts20_Backend_API_SW.ctl"/>
			<Item Name="FRCts20_Backend_API_Team.ctl" Type="VI" URL="../../../../Web Methods/Backend/source/VI Source/FRCts20_Backend_API/FRCts20_Backend_API_Team.ctl"/>
			<Item Name="FRCts20_Backend_API_TeamRoot.ctl" Type="VI" URL="../../../../Web Methods/Backend/source/VI Source/FRCts20_Backend_API/FRCts20_Backend_API_TeamRoot.ctl"/>
			<Item Name="FRCts20_Backend_Engine.lvlib" Type="Library" URL="../../../../Backend/source/VI Source/FRCts20_Backend_Engine.lvlib"/>
			<Item Name="FRCts20_Backend_SNS_ParsePhoneNumber.vi" Type="VI" URL="../../../../Backend/source/VI Source/FRCts20_Backend_SNS_ParsePhoneNumber.vi"/>
			<Item Name="FRCts20_EspEngine_Event.ctl" Type="VI" URL="../../../../Web Methods/ESP Engine/source/VI Source/TypeDefs/FRCts20_EspEngine_Event.ctl"/>
			<Item Name="FRCts20_EspEngine_Request.ctl" Type="VI" URL="../../../../Web Methods/ESP Engine/source/VI Source/TypeDefs/FRCts20_EspEngine_Request.ctl"/>
			<Item Name="FRCts20_EspEngine_Team.ctl" Type="VI" URL="../../../../Web Methods/ESP Engine/source/VI Source/TypeDefs/FRCts20_EspEngine_Team.ctl"/>
			<Item Name="FRCts20_EspEngine_Universe.ctl" Type="VI" URL="../../../../Web Methods/ESP Engine/source/VI Source/TypeDefs/FRCts20_EspEngine_Universe.ctl"/>
			<Item Name="FRCts20_WebMethods.lvlib" Type="Library" URL="../../../../Web Methods/source/VI Source/FRCts20_WebMethods.lvlib"/>
			<Item Name="FRCts20_WebMethods.lvlib" Type="Library" URL="../../../../Web Methods/source/VI Source/Controls/FRCts20_WebMethods.lvlib"/>
			<Item Name="FRCts20_WebMethods_Convert_Events.vi" Type="VI" URL="../../../../Web Methods/source/VI Source/Controls/Type Conversion/FRCts20_WebMethods_Convert_Events.vi"/>
			<Item Name="FRCts20_WebMethods_Convert_Events_PUT.vi" Type="VI" URL="../../../../Web Methods/source/VI Source/Controls/Type Conversion/FRCts20_WebMethods_Convert_Events_PUT.vi"/>
			<Item Name="FRCts20_WebMethods_Convert_Home.vi" Type="VI" URL="../../../../Web Methods/source/VI Source/Controls/Type Conversion/FRCts20_WebMethods_Convert_Home.vi"/>
			<Item Name="FRCts20_WebMethods_Convert_Notifications.vi" Type="VI" URL="../../../../Web Methods/source/VI Source/Controls/Type Conversion/FRCts20_WebMethods_Convert_Notifications.vi"/>
			<Item Name="FRCts20_WebMethods_Convert_Request.vi" Type="VI" URL="../../../../Web Methods/source/VI Source/Controls/Type Conversion/FRCts20_WebMethods_Convert_Request.vi"/>
			<Item Name="FRCts20_WebMethods_Convert_Requests.vi" Type="VI" URL="../../../../Web Methods/source/VI Source/Controls/Type Conversion/FRCts20_WebMethods_Convert_Requests.vi"/>
			<Item Name="FRCts20_WebMethods_Convert_SingleEvent.vi" Type="VI" URL="../../../../Web Methods/source/VI Source/Controls/Type Conversion/FRCts20_WebMethods_Convert_SingleEvent.vi"/>
			<Item Name="FRCts20_WebMethods_Convert_Team.vi" Type="VI" URL="../../../../Web Methods/source/VI Source/Controls/Type Conversion/FRCts20_WebMethods_Convert_Team.vi"/>
			<Item Name="FRCts20_WebMethods_Convert_Teams.vi" Type="VI" URL="../../../../Web Methods/source/VI Source/Controls/Type Conversion/FRCts20_WebMethods_Convert_Teams.vi"/>
			<Item Name="FRCts20_WebMethods_ctl_request.ctl" Type="VI" URL="../../../../Web Methods/source/VI Source/Controls/Web Method Public Interface/FRCts20_WebMethods_ctl_request.ctl"/>
			<Item Name="FRCts20_WebMethods_ctl_singleEvent.ctl" Type="VI" URL="../../../../Web Methods/source/VI Source/Controls/Web Method Public Interface/FRCts20_WebMethods_ctl_singleEvent.ctl"/>
			<Item Name="FRCts20_WebMethods_ctl_singleTeam.ctl" Type="VI" URL="../../../../Web Methods/source/VI Source/Controls/Web Method Public Interface/FRCts20_WebMethods_ctl_singleTeam.ctl"/>
			<Item Name="FRCts20_WebMethods_ctl_teamIdentifier.ctl" Type="VI" URL="../../../../Web Methods/source/VI Source/Controls/Web Method Public Interface/FRCts20_WebMethods_ctl_teamIdentifier.ctl"/>
			<Item Name="FRCts20_WebMethods_ReadData_Competition.vi" Type="VI" URL="../../../../Web Methods/source/VI Source/FRCts20_WebMethods_ReadData_Competition.vi"/>
			<Item Name="FRCts20_WebMethods_Redirect_Competition.vi" Type="VI" URL="../../../../Web Methods/source/VI Source/FRCts20_WebMethods_Redirect_Competition.vi"/>
			<Item Name="Message Credentials.ctl" Type="VI" URL="../../../../Utilities/source/VI Source/Mailgun/Message Credentials.ctl"/>
			<Item Name="mysql_func_escape_sql.vi" Type="VI" URL="../../../../Backend/source/VI Source/Dependencies/mysql_func_escape_sql.vi"/>
			<Item Name="Strip Path - Arrays__ogtk.vi" Type="VI" URL="../../../../Backend/source/VI Source/Dependencies/Strip Path - Arrays__ogtk.vi"/>
			<Item Name="Strip Path - Traditional__ogtk.vi" Type="VI" URL="../../../../Backend/source/VI Source/Dependencies/Strip Path - Traditional__ogtk.vi"/>
			<Item Name="Strip Path__ogtk.vi" Type="VI" URL="../../../../Backend/source/VI Source/Dependencies/Strip Path__ogtk.vi"/>
			<Item Name="Tools_KeyedArray.lvlib" Type="Library" URL="../../../../Backend/source/VI Source/Dependencies/Keyed Array/Tools_KeyedArray.lvlib"/>
			<Item Name="ws_runtime.dll" Type="Document" URL="ws_runtime.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="ESPTester" Type="RESTful WS">
				<Property Name="Bld_buildCacheID" Type="Str">{758B21CA-2672-441B-B328-C3913E8A6D21}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">ESPTester</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">/C/Users/Mark Black/Perforce/penguin_1666/mblack_PerforceWin/user/mblack/Moonlight Parkway/NI_AB_PROJECTNAME/builds/ESP Engine/frcts</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{7EF672D1-2F57-4BFC-B9B2-B778DA499428}</Property>
				<Property Name="Destination[0].destName" Type="Str">frcts.lvws</Property>
				<Property Name="Destination[0].path" Type="Path">/C/Users/Mark Black/Perforce/penguin_1666/mblack_PerforceWin/user/mblack/Moonlight Parkway/NI_AB_PROJECTNAME/builds/ESP Engine/frcts/internal.llb</Property>
				<Property Name="Destination[0].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">/C/Users/Mark Black/Perforce/penguin_1666/mblack_PerforceWin/user/mblack/Moonlight Parkway/NI_AB_PROJECTNAME/builds/ESP Engine/frcts/data</Property>
				<Property Name="Destination[1].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="Destination[2].destName" Type="Str">static</Property>
				<Property Name="Destination[2].path" Type="Path">/C/Users/Mark Black/Perforce/penguin_1666/mblack_PerforceWin/user/mblack/Moonlight Parkway/NI_AB_PROJECTNAME/builds/ESP Engine/frcts/static</Property>
				<Property Name="Destination[2].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="Destination[2].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="DestinationCount" Type="Int">3</Property>
				<Property Name="RESTfulWebSrvc_routingTemplate[0].template" Type="Str">/events/</Property>
				<Property Name="RESTfulWebSrvc_routingTemplate[0].VIName" Type="Str">events.vi</Property>
				<Property Name="RESTfulWebSrvc_routingTemplate[1].template" Type="Str">/events/:Event</Property>
				<Property Name="RESTfulWebSrvc_routingTemplate[1].VIName" Type="Str">singleEvent.vi</Property>
				<Property Name="RESTfulWebSrvc_routingTemplate[2].routingType" Type="Str">Static</Property>
				<Property Name="RESTfulWebSrvc_routingTemplate[2].template" Type="Str">/static</Property>
				<Property Name="RESTfulWebSrvc_routingTemplate[3].template" Type="Str">/home/:Debug</Property>
				<Property Name="RESTfulWebSrvc_routingTemplate[3].VIName" Type="Str">home.vi</Property>
				<Property Name="RESTfulWebSrvc_routingTemplate[4].template" Type="Str">/Requests/:RequestId/:Debug</Property>
				<Property Name="RESTfulWebSrvc_routingTemplate[4].VIName" Type="Str">singleRequest.vi</Property>
				<Property Name="RESTfulWebSrvc_routingTemplate[5].template" Type="Str">/teams/:Debug</Property>
				<Property Name="RESTfulWebSrvc_routingTemplate[5].VIName" Type="Str">search.vi</Property>
				<Property Name="RESTfulWebSrvc_routingTemplate[6].template" Type="Str">/teams/:TeamUniqueID/:Debug</Property>
				<Property Name="RESTfulWebSrvc_routingTemplate[6].VIName" Type="Str">singleTeam.vi</Property>
				<Property Name="RESTfulWebSrvc_routingTemplate[7].template" Type="Str">/notifications</Property>
				<Property Name="RESTfulWebSrvc_routingTemplate[7].VIName" Type="Str">notifications.vi</Property>
				<Property Name="RESTfulWebSrvc_routingTemplate[8].template" Type="Str">/reports/:Debug</Property>
				<Property Name="RESTfulWebSrvc_routingTemplate[8].VIName" Type="Str">reports.vi</Property>
				<Property Name="RESTfulWebSrvc_routingTemplateCount" Type="Int">9</Property>
				<Property Name="Source[0].itemID" Type="Str">{95364C7C-E950-4C4E-ADF5-0BD62EA5E577}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Tester/events.vi</Property>
				<Property Name="Source[1].RESTfulVI.VIConfigInfoOutputType" Type="Str">Stream</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">RESTfulVI</Property>
				<Property Name="Source[2].Container.applyDestination" Type="Bool">true</Property>
				<Property Name="Source[2].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">2</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/Static Source</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[2].type" Type="Str">Container</Property>
				<Property Name="Source[3].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[3].itemID" Type="Ref">/My Computer/Tester/home.vi</Property>
				<Property Name="Source[3].RESTfulVI.VIConfigInfoOutputType" Type="Str">Stream</Property>
				<Property Name="Source[3].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[3].type" Type="Str">RESTfulVI</Property>
				<Property Name="Source[4].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[4].itemID" Type="Ref">/My Computer/Tester/singleEvent.vi</Property>
				<Property Name="Source[4].RESTfulVI.VIConfigInfoOutputType" Type="Str">Stream</Property>
				<Property Name="Source[4].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[4].type" Type="Str">RESTfulVI</Property>
				<Property Name="Source[5].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[5].itemID" Type="Ref">/My Computer/Tester/singleRequest.vi</Property>
				<Property Name="Source[5].RESTfulVI.VIConfigInfoOutputType" Type="Str">Stream</Property>
				<Property Name="Source[5].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[5].type" Type="Str">RESTfulVI</Property>
				<Property Name="Source[6].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[6].itemID" Type="Ref">/My Computer/Tester/singleTeam.vi</Property>
				<Property Name="Source[6].RESTfulVI.VIConfigInfoOutputType" Type="Str">Stream</Property>
				<Property Name="Source[6].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[6].type" Type="Str">RESTfulVI</Property>
				<Property Name="Source[7].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[7].itemID" Type="Ref">/My Computer/Tester/search.vi</Property>
				<Property Name="Source[7].RESTfulVI.VIConfigInfoOutputType" Type="Str">Stream</Property>
				<Property Name="Source[7].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[7].type" Type="Str">RESTfulVI</Property>
				<Property Name="Source[8].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[8].itemID" Type="Ref">/My Computer/Tester/notifications.vi</Property>
				<Property Name="Source[8].RESTfulVI.VIConfigInfoOutputType" Type="Str">Stream</Property>
				<Property Name="Source[8].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[8].type" Type="Str">RESTfulVI</Property>
				<Property Name="Source[9].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[9].itemID" Type="Ref">/My Computer/Tester/reports.vi</Property>
				<Property Name="Source[9].RESTfulVI.VIConfigInfoOutputType" Type="Str">Stream</Property>
				<Property Name="Source[9].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[9].type" Type="Str">RESTfulVI</Property>
				<Property Name="SourceCount" Type="Int">10</Property>
				<Property Name="TgtF_companyName" Type="Str">National Instruments</Property>
				<Property Name="TgtF_enableDebugging" Type="Bool">true</Property>
				<Property Name="TgtF_fileDescription" Type="Str">ESPTester</Property>
				<Property Name="TgtF_internalName" Type="Str">ESPTester</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2012 National Instruments</Property>
				<Property Name="TgtF_productName" Type="Str">ESPTester</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{81B895AB-530B-4737-B8A3-0B200E73D00A}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">frcts.lvws</Property>
				<Property Name="WebSrvc_standaloneService" Type="Bool">true</Property>
			</Item>
		</Item>
	</Item>
</Project>
