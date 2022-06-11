##Check to see if edge folder exists and if not create it

$path = "c:\edge\"
If (!(test-path $path))
{
	md $path
}

##Download XML file
Invoke-WebRequest https://raw.githubusercontent.com/janieandjack/Faronics/main/ie_site_list.xml -Outfile c:\edge\ie_site_list.xml

##Reg commands for Edge and XML
reg add "HKCU\SOFTWARE\Policies\Microsoft\Edge" /v InternetExplorerIntegrationLevel /t REG_DWORD /d "1" /f
reg add "HKCU\SOFTWARE\Policies\Microsoft\Edge" /v InternetExplorerIntegrationSiteList /t REG_SZ /d "C:\edge\ie_site_list.xml" /f
