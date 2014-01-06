<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="13008000">
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
		<Item Name="Actual code" Type="Folder">
			<Item Name="Dependencies" Type="Folder" URL="../../VI Source/Dependencies">
				<Property Name="NI.DISK" Type="Bool">true</Property>
			</Item>
			<Item Name="FA_FIRST.lvlib" Type="Library" URL="../../../../../FlockFRC/trunk/FA_FIRST API/FA_FIRST.lvlib"/>
			<Item Name="FRCts20_Backend_API.lvlib" Type="Library" URL="../../VI Source/FRCts20_Backend_API/FRCts20_Backend_API.lvlib"/>
			<Item Name="FRCts20_Backend_Engine.lvlib" Type="Library" URL="../../VI Source/FRCts20_Backend_Engine.lvlib"/>
			<Item Name="FRCts20_Backend_TestCode.lvlib" Type="Library" URL="../../VI Source/TestCode/FRCts20_Backend_TestCode.lvlib"/>
		</Item>
		<Item Name="OLDBackend" Type="Folder">
			<Item Name="source" Type="Folder">
				<Item Name="Project Files" Type="Folder">
					<Item Name="dummy.txt" Type="Document" URL="../dummy.txt"/>
					<Item Name="FRCts20_Backend_Project.aliases" Type="Document" URL="../FRCts20_Backend_Project.aliases"/>
					<Item Name="FRCts20_Backend_Project.lvlps" Type="Document" URL="../FRCts20_Backend_Project.lvlps"/>
				</Item>
				<Item Name="Static Source" Type="Folder">
					<Item Name="FRCts20_Backend_Config.ini" Type="Document" URL="../../Static Source/FRCts20_Backend_Config.ini"/>
					<Item Name="FRCts20_Backend_XMLMain.xml" Type="Document" URL="../../Static Source/FRCts20_Backend_XMLMain.xml"/>
					<Item Name="FRCts20_Backend_XMLMain.xml.old" Type="Document" URL="../../Static Source/FRCts20_Backend_XMLMain.xml.old"/>
				</Item>
				<Item Name="VI Source" Type="Folder">
					<Item Name="FRCts20_Backend_API" Type="Folder"/>
					<Item Name="Templates" Type="Folder">
						<Item Name="FRCts20_Backend_Dyn_Template.vit" Type="VI" URL="../../VI Source/Templates/FRCts20_Backend_Dyn_Template.vit"/>
						<Item Name="FRCts20_Backend_Template.vit" Type="VI" URL="../../VI Source/Templates/FRCts20_Backend_Template.vit"/>
					</Item>
					<Item Name="TestCode" Type="Folder"/>
					<Item Name="dummy.txt" Type="Document" URL="../../VI Source/dummy.txt"/>
					<Item Name="FRCts20_Backend_Controls.lvlib" Type="Library" URL="../../VI Source/FRCts20_Backend_Controls.lvlib"/>
					<Item Name="FRCts20_Backend_DynamicLoad.lvlib" Type="Library" URL="../../VI Source/FRCts20_Backend_DynamicLoad.lvlib"/>
					<Item Name="FRCts20_Backend_StaticLib.lvlib" Type="Library" URL="../../VI Source/FRCts20_Backend_StaticLib.lvlib"/>
					<Item Name="FRCts20_Backend_WebMethods.lvlib" Type="Library" URL="../../VI Source/FRCts20_Backend_WebMethods.lvlib"/>
				</Item>
			</Item>
		</Item>
		<Item Name="Control 1.ctl" Type="VI" URL="../../../../../../../../../Desktop/Control 1.ctl"/>
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
			<Item Name="AWS Credentials.vi" Type="VI" URL="../../VI Source/AWS Credentials.vi"/>
			<Item Name="AWS_Core.lvlib" Type="Library" URL="../../../../../../../Perforce/penguin_1666/mblack_PerforceWin/lvdotcom/source/aws-toolkit/r1/trunk/AWS Core Lib/VI Source/AWS_Core.lvlib"/>
			<Item Name="AWS_SHA-1.lvlib" Type="Library" URL="../../../../../../../Perforce/penguin_1666/mblack_PerforceWin/lvdotcom/source/aws-toolkit/r1/trunk/AWS Core Lib/VI Source/SHA-1/AWS_SHA-1.lvlib"/>
			<Item Name="AWS_SNS Publish Parameters.ctl" Type="VI" URL="../../../../../../../lvdotcom/source/aws-toolkit/r1/trunk/SNS/VI Source/Public Typedefs/AWS_SNS Publish Parameters.ctl"/>
			<Item Name="AWS_SNS Set Credentials.vi" Type="VI" URL="../../../../../../../lvdotcom/source/aws-toolkit/r1/trunk/SNS/VI Source/AWS SNS Class/Utilities/AWS_SNS Set Credentials.vi"/>
			<Item Name="AWS_SNS Subcribe Parameters.ctl" Type="VI" URL="../../../../../../../lvdotcom/source/aws-toolkit/r1/trunk/SNS/VI Source/Public Typedefs/AWS_SNS Subcribe Parameters.ctl"/>
			<Item Name="AWS_SNS.lvlib" Type="Library" URL="../../../../MasterBuild/internal.llb/lvdotcom/source/aws-toolkit/r1/trunk/SNS/VI Source/AWS_SNS.lvlib"/>
			<Item Name="AWS_SNS.lvlib" Type="Library" URL="../../../../../../../Perforce/penguin_1666/mblack_PerforceWin/lvdotcom/source/aws-toolkit/r1/trunk/SNS/VI Source/AWS_SNS.lvlib"/>
			<Item Name="AWS_XML Parser.lvlib" Type="Library" URL="../../../../../../../Perforce/penguin_1666/mblack_PerforceWin/lvdotcom/source/aws-toolkit/r1/trunk/AWS Core Lib/VI Source/XML Parser/AWS_XML Parser.lvlib"/>
			<Item Name="Escape JSON String.vi" Type="VI" URL="../../VI Source/Escape JSON String.vi"/>
			<Item Name="FRCts20_Backend_API_Event.ctl" Type="VI" URL="../../../../Web Methods/Backend/source/VI Source/FRCts20_Backend_API/FRCts20_Backend_API_Event.ctl"/>
			<Item Name="FRCts20_Backend_API_EventRoot.ctl" Type="VI" URL="../../../../Web Methods/Backend/source/VI Source/FRCts20_Backend_API/FRCts20_Backend_API_EventRoot.ctl"/>
			<Item Name="FRCts20_Backend_API_Request.ctl" Type="VI" URL="../../../../Web Methods/Backend/source/VI Source/FRCts20_Backend_API/FRCts20_Backend_API_Request.ctl"/>
			<Item Name="FRCts20_Backend_API_RequestRoot.ctl" Type="VI" URL="../../../../Web Methods/Backend/source/VI Source/FRCts20_Backend_API/FRCts20_Backend_API_RequestRoot.ctl"/>
			<Item Name="FRCts20_Backend_API_Status.ctl" Type="VI" URL="../../../../Web Methods/Backend/source/VI Source/FRCts20_Backend_API/FRCts20_Backend_API_Status.ctl"/>
			<Item Name="FRCts20_Backend_API_SW.ctl" Type="VI" URL="../../../../Web Methods/Backend/source/VI Source/FRCts20_Backend_API/FRCts20_Backend_API_SW.ctl"/>
			<Item Name="FRCts20_Backend_API_Team.ctl" Type="VI" URL="../../../../Web Methods/Backend/source/VI Source/FRCts20_Backend_API/FRCts20_Backend_API_Team.ctl"/>
			<Item Name="FRCts20_Backend_API_TeamRoot.ctl" Type="VI" URL="../../../../Web Methods/Backend/source/VI Source/FRCts20_Backend_API/FRCts20_Backend_API_TeamRoot.ctl"/>
			<Item Name="FRCts20_Backend_SNS_ParsePhoneNumber.vi" Type="VI" URL="../../VI Source/FRCts20_Backend_SNS_ParsePhoneNumber.vi"/>
			<Item Name="FRCts20_EspEngine.lvlib" Type="Library" URL="../../../../ESP Engine/source/VI Source/FRCts20_EspEngine.lvlib"/>
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
			<Item Name="ws_runtime.dll" Type="Document" URL="ws_runtime.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
