Write-Host "testing 123"
# $Cert = New-SelfSignedCertificate -CertstoreLocation Cert:\LocalMachine\My -DnsName $env:COMPUTERNAME
# New-Item -Path WSMan:\LocalHost\Listener -Transport HTTPS -Address * -CertificateThumbPrint $Cert.Thumbprint –Force
# $command = 'winrm set winrm/config/service/auth @{Basic="true"}'
# Invoke-Expression $command
# New-NetFirewallRule -DisplayName "Windows Remote Management (HTTPS-In)" -Name "Windows Remote Management (HTTPS-In)" -Profile Any -LocalPort 5986 -Protocol TCP

# # installing chocolatey
# Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# # Globally Auto confirm every action
# choco feature enable -n allowGlobalConfirmation

# choco install googlechrome
# choco install wireshark
# choco install fiddler

