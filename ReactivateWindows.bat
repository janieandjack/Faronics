MKDIR c:\temp

cd c:\temp

wmic path SoftwareLicensingService get OA3xOriginalProductKey > c:\temp\winkey.txt

for /F "skip=1 delims==" %%i in (c:\temp\winkey.txt) do set WK=%%i

Set "WINKEY=%WK%"

cscript //B "%windir%\system32\slmgr.vbs" /ipk %WINKEY%
