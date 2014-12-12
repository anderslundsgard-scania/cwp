param(
  [string]$sitename
)

Import-AzurePublishSettingsFile -PublishSettingsFile "C:\Azure\CWP-App-based messaging for FMP-12-10-2014-credentials.publishsettings"
Switch-AzureWebsiteSlot -Name $sitename -Force