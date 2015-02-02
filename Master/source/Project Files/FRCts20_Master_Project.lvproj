<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="14008000">
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
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Backend" Type="Folder">
			<Item Name="ConfigData" Type="Folder">
				<Item Name="FRCts20_Backend_Config.ini" Type="Document" URL="../../../../Backend/source/data/FRCts20_Backend_Config.ini"/>
			</Item>
			<Item Name="FRCts20_Backend_Engine.lvlib" Type="Library" URL="../../../../Backend/source/VI Source/FRCts20_Backend_Engine.lvlib"/>
			<Item Name="FRCts20_Backend_API.lvlib" Type="Library" URL="../../../../Backend/source/VI Source/FRCts20_Backend_API/FRCts20_Backend_API.lvlib"/>
		</Item>
		<Item Name="Static Source" Type="Folder" URL="../../Static Source">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="Web Methods" Type="Folder">
			<Item Name="FRCts20_WebMethods.lvlib" Type="Library" URL="../../../../Web Methods/source/VI Source/FRCts20_WebMethods.lvlib"/>
		</Item>
		<Item Name="ESP Engine" Type="Folder">
			<Item Name="FRCts20_EspEngine.lvlib" Type="Library" URL="../../../../ESP Engine/source/VI Source/FRCts20_EspEngine.lvlib"/>
		</Item>
		<Item Name="AWS_SNS.lvlib" Type="Library" URL="/&lt;vilib&gt;/National Instruments/NI Amazon Web Services (AWS) Toolkit for LabVIEW/SNS/VI Source/AWS_SNS.lvlib"/>
		<Item Name="AWS_Core.lvlib" Type="Library" URL="/&lt;vilib&gt;/National Instruments/NI Amazon Web Services (AWS) Toolkit for LabVIEW/AWS Core Lib/VI Source/AWS_Core.lvlib"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="user.lib" Type="Folder">
				<Item Name="String to 1D Array__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/string/string.llb/String to 1D Array__ogtk.vi"/>
				<Item Name="Multi-line String to Array__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/string/string.llb/Multi-line String to Array__ogtk.vi"/>
				<Item Name="Filter Error Codes__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/error/error.llb/Filter Error Codes__ogtk.vi"/>
				<Item Name="Filter Error Codes (Array)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/error/error.llb/Filter Error Codes (Array)__ogtk.vi"/>
				<Item Name="Convert EOLs__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/string/string.llb/Convert EOLs__ogtk.vi"/>
				<Item Name="Convert EOLs (String)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/string/string.llb/Convert EOLs (String)__ogtk.vi"/>
				<Item Name="Convert EOLs (String Array)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/string/string.llb/Convert EOLs (String Array)__ogtk.vi"/>
				<Item Name="Filtered Error Details - Cluster__ogtk.ctl" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/error/error.llb/Filtered Error Details - Cluster__ogtk.ctl"/>
				<Item Name="Clear All Errors__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/error/error.llb/Clear All Errors__ogtk.vi"/>
				<Item Name="Filter Error Codes (Scalar)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/error/error.llb/Filter Error Codes (Scalar)__ogtk.vi"/>
			</Item>
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Easy Generate XML__JKI EasyXML.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/EasyXML/JKI_EasyXML.llb/Easy Generate XML__JKI EasyXML.vi"/>
				<Item Name="Easy Parse XML__JKI EasyXML.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_JKI Toolkits/EasyXML/JKI_EasyXML.llb/Easy Parse XML__JKI EasyXML.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Get System Directory.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/sysdir.llb/Get System Directory.vi"/>
				<Item Name="NI_LVConfig.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/config.llb/NI_LVConfig.lvlib"/>
				<Item Name="NI_WebServices.lvlib" Type="Library" URL="/&lt;vilib&gt;/wsapi/NI_WebServices.lvlib"/>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="System Directory Type.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/sysdir.llb/System Directory Type.ctl"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="PDA Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/PDA/PDA Error Handler.vi"/>
				<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Simple Error Handler.vi"/>
				<Item Name="NI_Database_API.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/database/NI_Database_API.lvlib"/>
				<Item Name="GOOP Object Repository Method.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/_goopsup.llb/GOOP Object Repository Method.ctl"/>
				<Item Name="GOOP Object Repository Statistics.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/_goopsup.llb/GOOP Object Repository Statistics.ctl"/>
				<Item Name="GOOP Object Repository.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/_goopsup.llb/GOOP Object Repository.vi"/>
				<Item Name="System Exec.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/system.llb/System Exec.vi"/>
				<Item Name="LVDateTimeRec.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVDateTimeRec.ctl"/>
				<Item Name="Get File Extension.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Get File Extension.vi"/>
				<Item Name="Recursive File List.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Recursive File List.vi"/>
				<Item Name="NI_FTP.lvlib" Type="Library" URL="/&lt;vilib&gt;/FTP/NI_FTP.lvlib"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="8.6CompatibleGlobalVar.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/8.6CompatibleGlobalVar.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
				<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
				<Item Name="List Directory and LLBs.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/List Directory and LLBs.vi"/>
				<Item Name="AWS_XML Parser.lvlib" Type="Library" URL="/&lt;vilib&gt;/National Instruments/NI Amazon Web Services (AWS) Toolkit for LabVIEW/AWS Core Lib/VI Source/XML Parser/AWS_XML Parser.lvlib"/>
				<Item Name="LabVIEWHTTPClient.lvlib" Type="Library" URL="/&lt;vilib&gt;/httpClient/LabVIEWHTTPClient.lvlib"/>
				<Item Name="Path To Command Line String.vi" Type="VI" URL="/&lt;vilib&gt;/AdvancedString/Path To Command Line String.vi"/>
				<Item Name="PathToUNIXPathString.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/CFURL.llb/PathToUNIXPathString.vi"/>
				<Item Name="NI_SMTPEmail.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/SMTP/NI_SMTPEmail.lvlib"/>
				<Item Name="AWS_SHA-1.lvlib" Type="Library" URL="/&lt;vilib&gt;/National Instruments/NI Amazon Web Services (AWS) Toolkit for LabVIEW/AWS Core Lib/VI Source/SHA-1/AWS_SHA-1.lvlib"/>
				<Item Name="LV Interface for Amazon S3.lvlib" Type="Library" URL="/&lt;vilib&gt;/National Instruments/NI Amazon Web Services (AWS) Toolkit for LabVIEW/S3/vi source/LV Interface for Amazon S3.lvlib"/>
				<Item Name="XML Parser.lvlib" Type="Library" URL="/&lt;vilib&gt;/National Instruments/NI Amazon Web Services (AWS) Toolkit for LabVIEW/S3/vi source/XML Parser/XML Parser.lvlib"/>
				<Item Name="SHA-1.lvlib" Type="Library" URL="/&lt;vilib&gt;/National Instruments/NI Amazon Web Services (AWS) Toolkit for LabVIEW/S3/vi source/SHA-1/SHA-1.lvlib"/>
				<Item Name="General Error Handler Core CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler Core CORE.vi"/>
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
				<Item Name="Tools_String.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/Tools/String/Tools_String.lvlib"/>
			</Item>
			<Item Name="ws_runtime.dll" Type="Document" URL="ws_runtime.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="AMC.lvlib" Type="Library" URL="../../../../Backend/source/VI Source/Dependencies/AMC/AMC.lvlib"/>
			<Item Name="Tools_KeyedArray.lvlib" Type="Library" URL="../../../../Backend/source/VI Source/Dependencies/Keyed Array/Tools_KeyedArray.lvlib"/>
			<Item Name="Current VIs Parent Directory__ogtk.vi" Type="VI" URL="../../../../Backend/source/VI Source/Dependencies/Current VIs Parent Directory__ogtk.vi"/>
			<Item Name="Current VIs Parents Ref__ogtk.vi" Type="VI" URL="../../../../Backend/source/VI Source/Dependencies/Current VIs Parents Ref__ogtk.vi"/>
			<Item Name="Strip Path__ogtk.vi" Type="VI" URL="../../../../Backend/source/VI Source/Dependencies/Strip Path__ogtk.vi"/>
			<Item Name="Strip Path - Arrays__ogtk.vi" Type="VI" URL="../../../../Backend/source/VI Source/Dependencies/Strip Path - Arrays__ogtk.vi"/>
			<Item Name="Strip Path - Traditional__ogtk.vi" Type="VI" URL="../../../../Backend/source/VI Source/Dependencies/Strip Path - Traditional__ogtk.vi"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="FRCts" Type="RESTful WS">
				<Property Name="Bld_buildCacheID" Type="Str">{8304ED5C-DBB6-42D8-A66B-9D75CCAB4B4D}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">FRCts</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">/C/Github/Autumn-Parkway/build</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{496DF8E1-F179-47EA-9471-E7E6D9F5BDF5}</Property>
				<Property Name="Destination[0].destName" Type="Str">FRCts.lvws</Property>
				<Property Name="Destination[0].path" Type="Path">/C/Github/Autumn-Parkway/build/internal.llb</Property>
				<Property Name="Destination[0].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">/C/Github/Autumn-Parkway/build/data</Property>
				<Property Name="Destination[1].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="Destination[2].destName" Type="Str">static</Property>
				<Property Name="Destination[2].path" Type="Path">/C/Github/Autumn-Parkway/build/static</Property>
				<Property Name="Destination[2].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="Destination[2].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[3].destName" Type="Str">ini</Property>
				<Property Name="Destination[3].path" Type="Path">/C/Github/Autumn-Parkway/build</Property>
				<Property Name="Destination[3].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="Destination[3].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="DestinationCount" Type="Int">4</Property>
				<Property Name="RESTfulWebSrvc_routingTemplate[0].routingType" Type="Str">Static</Property>
				<Property Name="RESTfulWebSrvc_routingTemplate[0].template" Type="Str">/static</Property>
				<Property Name="RESTfulWebSrvc_routingTemplate[1].template" Type="Str">/home</Property>
				<Property Name="RESTfulWebSrvc_routingTemplate[1].VIName" Type="Str">FRCts20_WebMethods_Home_GET.vi</Property>
				<Property Name="RESTfulWebSrvc_routingTemplate[10].HTTPMethod" Type="Str">PUT</Property>
				<Property Name="RESTfulWebSrvc_routingTemplate[10].template" Type="Str">/requests/:UniqueId/:Action</Property>
				<Property Name="RESTfulWebSrvc_routingTemplate[10].VIName" Type="Str">FRCts20_WebMethods_Request_PUT.vi</Property>
				<Property Name="RESTfulWebSrvc_routingTemplate[11].HTTPMethod" Type="Str">DELETE</Property>
				<Property Name="RESTfulWebSrvc_routingTemplate[11].template" Type="Str">/requests/:request</Property>
				<Property Name="RESTfulWebSrvc_routingTemplate[11].VIName" Type="Str">FRCts20_WebMethods_Request_DELETE.vi</Property>
				<Property Name="RESTfulWebSrvc_routingTemplate[12].template" Type="Str">/requests/:RequestUniqueId</Property>
				<Property Name="RESTfulWebSrvc_routingTemplate[12].VIName" Type="Str">FRCts20_WebMethods_Request_GET.vi</Property>
				<Property Name="RESTfulWebSrvc_routingTemplate[13].template" Type="Str">/notifications</Property>
				<Property Name="RESTfulWebSrvc_routingTemplate[13].VIName" Type="Str">FRCts20_WebMethods_Notifications_GET.vi</Property>
				<Property Name="RESTfulWebSrvc_routingTemplate[14].HTTPMethod" Type="Str">POST</Property>
				<Property Name="RESTfulWebSrvc_routingTemplate[14].template" Type="Str">/notifications</Property>
				<Property Name="RESTfulWebSrvc_routingTemplate[14].VIName" Type="Str">FRCts20_WebMethods_Notifications_POST.vi</Property>
				<Property Name="RESTfulWebSrvc_routingTemplate[15].template" Type="Str">/reports</Property>
				<Property Name="RESTfulWebSrvc_routingTemplate[15].VIName" Type="Str">FRCts20_WebMethods_Reports_GET.vi</Property>
				<Property Name="RESTfulWebSrvc_routingTemplate[16].template" Type="Str">/search</Property>
				<Property Name="RESTfulWebSrvc_routingTemplate[16].VIName" Type="Str">FRCts20_WebMethods_Search_GET.vi</Property>
				<Property Name="RESTfulWebSrvc_routingTemplate[2].template" Type="Str">/events</Property>
				<Property Name="RESTfulWebSrvc_routingTemplate[2].VIName" Type="Str">FRCts20_WebMethods_Events_GET.vi</Property>
				<Property Name="RESTfulWebSrvc_routingTemplate[3].template" Type="Str">/events/:Event</Property>
				<Property Name="RESTfulWebSrvc_routingTemplate[3].VIName" Type="Str">FRCts20_WebMethods_SingleEvent_GET.vi</Property>
				<Property Name="RESTfulWebSrvc_routingTemplate[4].template" Type="Str">/teams</Property>
				<Property Name="RESTfulWebSrvc_routingTemplate[4].VIName" Type="Str">FRCts20_WebMethods_Teams_GET.vi</Property>
				<Property Name="RESTfulWebSrvc_routingTemplate[5].AuthPermissions" Type="Str">GetDB</Property>
				<Property Name="RESTfulWebSrvc_routingTemplate[5].HTTPMethod" Type="Str">POST</Property>
				<Property Name="RESTfulWebSrvc_routingTemplate[5].template" Type="Str">/teams</Property>
				<Property Name="RESTfulWebSrvc_routingTemplate[5].VIName" Type="Str">FRCts20_WebMethods_Team_POST.vi</Property>
				<Property Name="RESTfulWebSrvc_routingTemplate[6].template" Type="Str">/teams/:team</Property>
				<Property Name="RESTfulWebSrvc_routingTemplate[6].VIName" Type="Str">FRCts20_WebMethods_Team_GET.vi</Property>
				<Property Name="RESTfulWebSrvc_routingTemplate[7].AuthPermissions" Type="Str">GetDB</Property>
				<Property Name="RESTfulWebSrvc_routingTemplate[7].HTTPMethod" Type="Str">DELETE</Property>
				<Property Name="RESTfulWebSrvc_routingTemplate[7].template" Type="Str">/teams/:team</Property>
				<Property Name="RESTfulWebSrvc_routingTemplate[7].VIName" Type="Str">FRCts20_WebMethods_Team_DELETE.vi</Property>
				<Property Name="RESTfulWebSrvc_routingTemplate[8].HTTPMethod" Type="Str">POST</Property>
				<Property Name="RESTfulWebSrvc_routingTemplate[8].template" Type="Str">/teams/:team</Property>
				<Property Name="RESTfulWebSrvc_routingTemplate[8].VIName" Type="Str">FRCts20_WebMethods_Team_PUT.vi</Property>
				<Property Name="RESTfulWebSrvc_routingTemplate[9].HTTPMethod" Type="Str">POST</Property>
				<Property Name="RESTfulWebSrvc_routingTemplate[9].template" Type="Str">/requests</Property>
				<Property Name="RESTfulWebSrvc_routingTemplate[9].VIName" Type="Str">FRCts20_WebMethods_Request_POST.vi</Property>
				<Property Name="RESTfulWebSrvc_routingTemplateCount" Type="Int">17</Property>
				<Property Name="Source[0].itemID" Type="Str">{CC5F1CC7-E8AE-4889-B005-2D40A5DEFF5D}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].Container.applyDestination" Type="Bool">true</Property>
				<Property Name="Source[1].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">2</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Static Source</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[1].type" Type="Str">Container</Property>
				<Property Name="Source[10].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[10].itemID" Type="Ref">/My Computer/Web Methods/FRCts20_WebMethods.lvlib/Resources/Events/Web Methods/FRCts20_WebMethods_Events_POST.vi</Property>
				<Property Name="Source[10].type" Type="Str">VI</Property>
				<Property Name="Source[11].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[11].itemID" Type="Ref">/My Computer/Web Methods/FRCts20_WebMethods.lvlib/Resources/Home/Web Methods/FRCts20_WebMethods_Home_GET.vi</Property>
				<Property Name="Source[11].RESTfulVI.VIConfigInfoOutputType" Type="Str">Stream</Property>
				<Property Name="Source[11].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[11].type" Type="Str">RESTfulVI</Property>
				<Property Name="Source[12].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[12].itemID" Type="Ref">/My Computer/Web Methods/FRCts20_WebMethods.lvlib/Resources/Teams/WebMethods/FRCts20_WebMethods_Teams_GET.vi</Property>
				<Property Name="Source[12].RESTfulVI.VIConfigInfoOutputType" Type="Str">Stream</Property>
				<Property Name="Source[12].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[12].type" Type="Str">RESTfulVI</Property>
				<Property Name="Source[13].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[13].itemID" Type="Ref">/My Computer/Web Methods/FRCts20_WebMethods.lvlib/Resources/SingleEvent/Web Methods/FRCts20_WebMethods_SingleEvent_GET.vi</Property>
				<Property Name="Source[13].RESTfulVI.VIConfigInfoOutputType" Type="Str">Stream</Property>
				<Property Name="Source[13].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[13].type" Type="Str">RESTfulVI</Property>
				<Property Name="Source[14].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[14].itemID" Type="Ref">/My Computer/Web Methods/FRCts20_WebMethods.lvlib/Resources/Notifications/Web Methods/FRCts20_WebMethods_Notifications_GET.vi</Property>
				<Property Name="Source[14].RESTfulVI.VIConfigInfoOutputType" Type="Str">Stream</Property>
				<Property Name="Source[14].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[14].type" Type="Str">RESTfulVI</Property>
				<Property Name="Source[15].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[15].itemID" Type="Ref">/My Computer/Web Methods/FRCts20_WebMethods.lvlib/Resources/Reports/FRCts20_WebMethods_Reports_GET.vi</Property>
				<Property Name="Source[15].RESTfulVI.VIConfigInfoOutputType" Type="Str">Stream</Property>
				<Property Name="Source[15].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[15].type" Type="Str">RESTfulVI</Property>
				<Property Name="Source[16].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[16].itemID" Type="Ref">/My Computer/Web Methods/FRCts20_WebMethods.lvlib/Resources/Requests/Web Methods/FRCts20_WebMethods_Request_POST.vi</Property>
				<Property Name="Source[16].RESTfulVI.VIConfigInfoOutputType" Type="Str">Stream</Property>
				<Property Name="Source[16].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[16].type" Type="Str">RESTfulVI</Property>
				<Property Name="Source[17].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[17].itemID" Type="Ref">/My Computer/Web Methods/FRCts20_WebMethods.lvlib/Resources/Requests/Web Methods/FRCts20_WebMethods_Request_GET.vi</Property>
				<Property Name="Source[17].RESTfulVI.VIConfigInfoOutputType" Type="Str">Stream</Property>
				<Property Name="Source[17].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[17].type" Type="Str">RESTfulVI</Property>
				<Property Name="Source[18].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[18].itemID" Type="Ref">/My Computer/Web Methods/FRCts20_WebMethods.lvlib/Resources/Single Request/Web Methods/FRCts20_WebMethods_Request_PUT.vi</Property>
				<Property Name="Source[18].RESTfulVI.VIConfigInfoOutputType" Type="Str">Stream</Property>
				<Property Name="Source[18].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[18].type" Type="Str">RESTfulVI</Property>
				<Property Name="Source[19].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[19].itemID" Type="Ref">/My Computer/Web Methods/FRCts20_WebMethods.lvlib/Resources/Notifications/Web Methods/FRCts20_WebMethods_Notifications_POST.vi</Property>
				<Property Name="Source[19].RESTfulVI.VIConfigInfoOutputType" Type="Str">Stream</Property>
				<Property Name="Source[19].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[19].type" Type="Str">RESTfulVI</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/Backend/FRCts20_Backend_Engine.lvlib</Property>
				<Property Name="Source[2].Library.allowMissingMembers" Type="Bool">true</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[2].type" Type="Str">Library</Property>
				<Property Name="Source[20].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[20].itemID" Type="Ref">/My Computer/Web Methods/FRCts20_WebMethods.lvlib/Resources/Search/Web Methods/FRCts20_WebMethods_Search_GET.vi</Property>
				<Property Name="Source[20].RESTfulVI.VIConfigInfoOutputType" Type="Str">Stream</Property>
				<Property Name="Source[20].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[20].type" Type="Str">RESTfulVI</Property>
				<Property Name="Source[21].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[21].itemID" Type="Ref">/My Computer/Web Methods/FRCts20_WebMethods.lvlib/Resources/Single Request/Web Methods/FRCts20_WebMethods_Request_DELETE.vi</Property>
				<Property Name="Source[21].RESTfulVI.VIConfigInfoOutputType" Type="Str">Stream</Property>
				<Property Name="Source[21].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[21].type" Type="Str">RESTfulVI</Property>
				<Property Name="Source[22].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[22].itemID" Type="Ref">/My Computer/Backend/ConfigData/FRCts20_Backend_Config.ini</Property>
				<Property Name="Source[22].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[3].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[3].itemID" Type="Ref">/My Computer/Web Methods/FRCts20_WebMethods.lvlib/Resources/SingleTeam/Web Methods/FRCts20_WebMethods_Team_DELETE.vi</Property>
				<Property Name="Source[3].RESTfulVI.VIConfigInfoOutputType" Type="Str">Stream</Property>
				<Property Name="Source[3].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[3].type" Type="Str">RESTfulVI</Property>
				<Property Name="Source[4].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[4].itemID" Type="Ref">/My Computer/Web Methods/FRCts20_WebMethods.lvlib/Resources/SingleTeam/Web Methods/FRCts20_WebMethods_Team_GET.vi</Property>
				<Property Name="Source[4].RESTfulVI.VIConfigInfoOutputType" Type="Str">Stream</Property>
				<Property Name="Source[4].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[4].type" Type="Str">RESTfulVI</Property>
				<Property Name="Source[5].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[5].itemID" Type="Ref">/My Computer/Web Methods/FRCts20_WebMethods.lvlib/Resources/SingleTeam/Web Methods/FRCts20_WebMethods_Team_POST.vi</Property>
				<Property Name="Source[5].RESTfulVI.VIConfigInfoOutputType" Type="Str">Stream</Property>
				<Property Name="Source[5].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[5].type" Type="Str">RESTfulVI</Property>
				<Property Name="Source[6].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[6].itemID" Type="Ref">/My Computer/Web Methods/FRCts20_WebMethods.lvlib/Resources/SingleTeam/Web Methods/FRCts20_WebMethods_Team_PUT.vi</Property>
				<Property Name="Source[6].RESTfulVI.VIConfigInfoOutputType" Type="Str">Stream</Property>
				<Property Name="Source[6].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[6].type" Type="Str">RESTfulVI</Property>
				<Property Name="Source[7].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[7].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[7].itemID" Type="Ref">/My Computer/Backend/FRCts20_Backend_Engine.lvlib/API Commands</Property>
				<Property Name="Source[7].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[7].type" Type="Str">Container</Property>
				<Property Name="Source[8].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[8].itemID" Type="Ref">/My Computer/Backend/FRCts20_Backend_Engine.lvlib/FRCts20_Backend_Processor.vi</Property>
				<Property Name="Source[8].RESTfulVI.VIConfigInfoVIType" Type="Str">Auxiliary</Property>
				<Property Name="Source[8].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[8].type" Type="Str">RESTfulVI</Property>
				<Property Name="Source[9].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[9].itemID" Type="Ref">/My Computer/Web Methods/FRCts20_WebMethods.lvlib/Resources/Events/Web Methods/FRCts20_WebMethods_Events_GET.vi</Property>
				<Property Name="Source[9].RESTfulVI.VIConfigInfoOutputType" Type="Str">Stream</Property>
				<Property Name="Source[9].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[9].type" Type="Str">RESTfulVI</Property>
				<Property Name="SourceCount" Type="Int">23</Property>
				<Property Name="TgtF_enableDebugging" Type="Bool">true</Property>
				<Property Name="TgtF_fileDescription" Type="Str">FRCts</Property>
				<Property Name="TgtF_internalName" Type="Str">FRCts</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2011 </Property>
				<Property Name="TgtF_productName" Type="Str">FRCts</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{4AC4E4C0-1AD8-4B79-BBF9-E40266AEBAD5}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">FRCts.lvws</Property>
				<Property Name="WebSrvc_standaloneService" Type="Bool">true</Property>
			</Item>
		</Item>
	</Item>
</Project>
