set arg1=%1
set arg2=%2
net user %arg1% %arg2% /add /y
net localgroup "Administrators" %arg1% /add /y
