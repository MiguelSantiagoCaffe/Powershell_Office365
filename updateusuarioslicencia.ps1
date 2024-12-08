AccountSkuId
LicenseAssignment
AddLicenses 
MsolUserLicense 
MsolUser
Uninstall
Install


install-Module MSOnline
Connect-MsolService

$Users = Import-Csv -Path "C:\Users\TICZEGELIPAE\Pictures\updateusuarioslicencia.csv"

foreach ($User in $Users) {
    Set-MsolUserLicense -UserPrincipalName $User.UserPrincipalName -AddLicenses $User.licencia
    }

    Get-MsolAccountSku



    Set-MsolUserLicense -UserPrincipalName "SV1234567" -AddLicenses "utpedupe:STANDARDWOFFPACK_IW_STUDENT"

    Set-MsolUserLicense -UserPrincipalName SV1234567@idat.edu.pe -AddLicenses "utpedupe:STANDARDWOFFPACK_IW_STUDENT"


