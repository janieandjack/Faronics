echo off
set /p username=Enter users Gymboree username:

set /p pw=Enter users Gymboree password:

:: add a new line for each server that needs to be added to the Credential Manager
cmdkey.exe /add:corpfs24 /user:gymboree\%username% /pass:%pw%
cmdkey.exe /add:Corpfs20 /user:gymboree\%username% /pass:%pw%
cmdkey.exe /add:Corp-fs-02 /user:gymboree\%username% /pass:%pw%
cmdkey.exe /add:Corpmom1 /user:gymboree\%username% /pass:%pw%
cmdkey.exe /add:Corpmfs0 /user:gymboree\%username% /pass:%pw%
cmdkey.exe /add:Corppdm20 /user:gymboree\%username% /pass:%pw%
cmdkey.exe /add:Corpvc21 /user:gymboree\%username% /pass:%pw%
cmdkey.exe /add:Corpqt21 /user:gymboree\%username% /pass:%pw%
cmdkey.exe /add:Corpqt40-test /user:gymboree\%username% /pass:%pw%
