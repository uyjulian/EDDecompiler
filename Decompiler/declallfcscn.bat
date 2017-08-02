
%~d0
cd/d "%~dp0"
set PYTHONPATH=D:\Study\Code\EDDecompiler;D:\Study\Code\PyLibs
set "input=D:\Study\Script\SoraVoiceScripts\backup\FC_Steam\ED6_DT01"
::set "input=D:\Study\Script\SoraVoiceScripts\backup\FC\ED6_DT01"


del /q "%input%\*.py"

py D:\Study\Code\EDDecompiler\Decompiler\ED6FCScenarioScript.py "%input%"

