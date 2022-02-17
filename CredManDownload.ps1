$path = "C:\temp\"
    
If (!(test-path $path))
{
    md $path
}

Invoke-WebRequest https://raw.githubusercontent.com/ellesaidh/Rename/main/credmanager.bat -Outfile c:\Temp\credmanager.bat
