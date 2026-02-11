cls
@ECHO OFF
title Folder FolderLocker
if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK
if NOT EXIST FolderLocker goto MDFolderLocker
:CONFIRM
echo Are you sure u want to Lock the folder(Y/N)
set/p "cho=>"
if %cho%==Y goto LOCK
if %cho%==y goto LOCK
if %cho%==n goto END
if %cho%==N goto END
echo Invalid choice.
goto CONFIRM
:LOCK
ren FolderLocker "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
echo Folder FolderLocker
goto End
:UNLOCK
echo Enter password to Unlock folder
set/p "pass=>"
if NOT %pass%==cihuy goto FAIL
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" FolderLocker
echo Folder Unlocked successfully
goto End
:FAIL
echo Invalid password
goto end
:MDFolderLocker
md FolderLocker
echo FolderLocker created successfully
goto End
:End