@echo off
setlocal
echo 🔄 正在從 GitHub 下載 HZ-SmartOffice.ps1...

set TEMPPS1=%TEMP%\HZ-SmartOffice.ps1

powershell -ExecutionPolicy Bypass -Command ^
  "Invoke-WebRequest -UseBasicParsing -Uri 'https://raw.githubusercontent.com/showrenlee/HZ-SmartOffice/main/HZ-SmartOffice.ps1' -OutFile '%TEMPPS1%'; Start-Process powershell -ArgumentList '-ExecutionPolicy Bypass -NoExit -File \"%TEMPPS1%\"'"

endlocal
