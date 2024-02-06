Write-Host  -ForegroundColor Cyan "Starting Interstellar's Custom OSDCloud ..."
Start-Sleep -Seconds 5

#Change Display Resolution
#Write-Host  -ForegroundColor Cyan "Installing DisplaySettings PowerShell Module"
#Install-Module -Name DisplaySettings -Force
#Set-DisplayResolution -Width 1280 -Height 1024

#Make sure I have the latest OSD Content
Write-Host  -ForegroundColor Cyan "Updating the awesome OSD PowerShell Module"
Install-Module OSD -Force

Write-Host  -ForegroundColor Cyan "Importing the sweet OSD PowerShell Module"
Import-Module OSD -Force

#Start OSDCloud ZTI the RIGHT way
Write-Host  -ForegroundColor Cyan "Start OSDCloud with Interstellar Parameters"
Start-OSDCloud -OSLanguage en-us -OSBuild 23H2 -OSEdition Pro -OSActivation Retail -ZTI

#Restart from WinPE
Write-Host  -ForegroundColor Cyan "Restarting in 20 seconds!"
Start-Sleep -Seconds 20
wpeutil reboot
