Clear-Host
Import-AzurePublishSettingsFile -PublishSettingsFile "C:\Azure\CWP-App-based messaging for FMP-12-10-2014-credentials.publishsettings"
#Add-AzureAccount
#Get-AzureSubscription #Info about the subscription
#Get-AzureWebsite #List all web sites
#Get-AzureWebsite -Name cwpbeta

# Create new Azure Web Site
$date = Get-Date
$siteName = "PS-Created-" + $date.Ticks
$newSite = New-AzureWebsite -Name sssccq #$siteName

Show-AzureWebsite $newSite.Name
#Stop-AzureWebsite $newSite.Name
#Start-AzureWebsite $newSite.Name

Get-AzureWebsiteDeployment -Name cwpbeta

Switch-AzureWebsiteSlot -Name cwpbeta -Force

#https://cwpazuredeployuser@cwpbeta-cwpbetasecondslot.scm.azurewebsites.net:443/cwpbeta.git
#https://cwpazuredeployuser@cwpbeta                  .scm.azurewebsites.net:443/cwpbeta.git
