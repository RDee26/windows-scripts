@echo off
SET st2Path=C:\Users\sumsung\AppData\Local\atom\atom.exe
 
rem add it for all file types
@reg add "HKEY_CLASSES_ROOT\*\shell\Open with Atom"         /t REG_SZ /v "" /d "Open with Atom"   /f
@reg add "HKEY_CLASSES_ROOT\*\shell\Open with Atom"         /t REG_EXPAND_SZ /v "Icon" /d "%st2Path%,0" /f
@reg add "HKEY_CLASSES_ROOT\*\shell\Open with Atom\command" /t REG_SZ /v "" /d "%st2Path% \"%%1\"" /f
 
rem add it for folders
@reg add "HKEY_CLASSES_ROOT\Folder\shell\Open with Atom"         /t REG_SZ /v "" /d "Open with Atom"   /f
@reg add "HKEY_CLASSES_ROOT\Folder\shell\Open with Atom"         /t REG_EXPAND_SZ /v "Icon" /d "%st2Path%,0" /f
@reg add "HKEY_CLASSES_ROOT\Folder\shell\Open with Atom\command" /t REG_SZ /v "" /d "%st2Path% \"%%1\"" /f
pause