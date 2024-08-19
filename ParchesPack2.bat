@ECHO OFF

:: Cambiar "Picker" a "PartyPack"
CD ".\Main\games"
RENAME "Picker" "PartyPack"
:: Borrar "Picker.swf"
CD "PartyPack"
DEL "Picker.swf"
:: Cambiar "QuiplashXL" a "Quiplash"
CD ..
RENAME "QuiplashXL" "Quiplash"
CD "Quiplash"
DEL "QuiplashXL.swf"
:: Copiar y pegar "ArchivosEGSySwitch"
CD ..
CD ..
CD ..
xcopy "ArchivosEGSySwitch" "Main" /s /y
:: Hacer versión EGS y Switch en JPP2-ES-EGS-SWITCH.zip
CD "Main"
DEL "jbg.config.jet"
"%ProgramFiles%\WinRAR\WinRAR.exe" a -afzip -ibck -r -y "../../../Zips/JPP2-ES-EGS-SWITCH.zip" "."
:: Copiar y pegar "ArchivosMacEGS"
CD ..
xcopy "ArchivosMacEGS" "Main" /s /y
:: Hacer versión Mac EGS en JPP2-ES-MAC-EGS.zip
CD "Main"
"%ProgramFiles%\WinRAR\WinRAR.exe" a -afzip -ibck -r -y "../../../Zips/JPP2-ES-MAC-EGS.zip" "."
:: Cambiar "PartyPack" a "Picker"
CD ".\games"
RENAME "PartyPack" "Picker"
:: Borrar "JBPP2Picker.swf"
CD "Picker"
DEL "JBPP2Picker.swf"
:: Cambiar "Quiplash" a "QuiplashXL"
CD ..
RENAME "Quiplash" "QuiplashXL"
:: Borrar "QuiplashXL.swf"
CD "QuiplashXL"
DEL "Quiplash.swf"
:: Copiar y pegar "ArchivosSteam"
CD ..
CD ..
CD ..
xcopy "ArchivosSteam" "Main" /s /y
CD "Main"
DEL "config.jet"
:: Hacer versión Steam en JPP2-ES.zip
"%ProgramFiles%\WinRAR\WinRAR.exe" a -afzip -ibck -r -y "../../../Zips/JPP2-ES.zip" "."