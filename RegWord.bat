:: #Check to see if temp folder exists and if not create it

:: #$path = "c:\temp\"
:: #If (!(test-path $path))
:: #{
:: #    md $path
:: #}

:: #Write-Output "Saving current register as RegOld"

:: #Back up registry key and name it RegOld.reg
:: #Name back up RegOld
reg export HKEY_CLASSES_ROOT\ms-msdt RegOld.reg

:: #Move RegOld to c:\temp
:: #Get-Item -Path c:\Users\Reg Test\*.reg | Move-Item -Destination c:\temp

:: #Write-Output "RegOld is in c:\temp"

:: #Delete
reg delete HKEY_CLASSES_ROOT\ms-msdt /f

:: #Write-Output "Old Reg has been deleted"

:: #To Undo and restore registry key
:: #reg import RegOld
