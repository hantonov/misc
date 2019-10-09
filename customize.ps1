New-Item -ItemType "directory" -Path "c:\artifacts"
$url = "https://2.na.dl.wireshark.org/win64/Wireshark-win64-3.0.5.exe"
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
(New-Object System.Net.WebClient).DownloadFile($url, "c:\artifacts\Wireshark-win64-3.0.5.exe")

$url = "https://telerik-fiddler.s3.amazonaws.com/fiddler/FiddlerSetup.exe"
(New-Object System.Net.WebClient).DownloadFile($url, "c:\artifacts\FiddlerSetup.exe")

# $Cert = New-SelfSignedCertificate -CertstoreLocation Cert:\LocalMachine\My -DnsName $env:COMPUTERNAME
# New-Item -Path WSMan:\LocalHost\Listener -Transport HTTPS -Address * -CertificateThumbPrint $Cert.Thumbprint –Force
# $command = 'winrm set winrm/config/service/auth @{Basic="true"}'
# Invoke-Expression $command
# New-NetFirewallRule -DisplayName "Windows Remote Management (HTTPS-In)" -Name "Windows Remote Management (HTTPS-In)" -Profile Any -LocalPort 5986 -Protocol TCP

# # installing chocolatey
Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# # Globally Auto confirm every action
choco feature enable -n allowGlobalConfirmation

choco install googlechrome

