$path = "C:\temp\"
    
If (!(test-path $path))
{
    md $path
}

Invoke-WebRequest https://raw.githubusercontent.com/janieandjack/Faronics/main/CredManager.bat -Outfile c:\Temp\credmanager.bat
