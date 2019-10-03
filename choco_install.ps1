# installing chocolatey
Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Globally Auto confirm every action
choco feature enable -n allowGlobalConfirmation

choco install googlechrome
choco install wireshark
choco install fiddler

