
Install-Module MSOnline
Connect-MsolService

$Users = Import-Csv -Path "C:\Users\TICZEGELIPAE\Documents\newusuarioslicencia.csv"

foreach ($User in $Users) {
    New-MsolUser -UserPrincipalName $User.UserPrincipalName -DisplayName $User.DisplayName -FirstName $User.FirstName -LastName $User.LastName -UsageLocation $User.lugar -LicenseAssignment $User.licencia -Password $User.Password
}

Set-MsolUserLicense -UserPrincipalName "SV1234567@idat.edu.pe" -AddLicenses "utpedupe:STANDARDWOFFPACK_IW_STUDENT"


Get-MsolUser -UserPrincipalName "SV123401@idat.edu.pe"
