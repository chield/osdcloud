Write-Host  -ForegroundColor Cyan "Starting Interstellar's Custom OSDCloud ..."
Start-Sleep -Seconds 5

#Change Display Resolution
Write-Host  -ForegroundColor Cyan "Installing DisplaySettings PowerShell Module"
Install-Module -Name DisplaySettings -Force
Set-DisplayResolution -Width 1280 -Height 1024

#Make sure I have the latest OSD Content
Write-Host  -ForegroundColor Cyan "Updating the awesome OSD PowerShell Module"
Install-Module OSD -Force

Write-Host  -ForegroundColor Cyan "Importing the sweet OSD PowerShell Module"
Import-Module OSD -Force

#Start OSDCloud ZTI the RIGHT way
Write-Host  -ForegroundColor Cyan "Start OSDCloud with Interstellar Parameters"
Start-OSDCloud "-OSName 'Windows 11 23H2 x64' -OSLanguage en-us -OSEdition Pro -OSActivation Retail -ZTI" -Wallpaper "C:\Interstellar\INTERSTELLAR-Background.jpg"

#Anything I want  can go right here and I can change it at any time since it is in the Cloud!!!!!
Write-Host  -ForegroundColor Cyan "Starting OSDCloud PostAction ..."
Write-Warning "I'm not sure of what to put here yet"

#Restart from WinPE
Write-Host  -ForegroundColor Cyan "Restarting in 20 seconds!"
Start-Sleep -Seconds 20
wpeutil reboot
