


$csvFileLocation = "C:\Users\TICZEGELIPAE\Pictures\correoeliminados.csv" 

$users = Import-Csv -Path $csvFileLocation 

foreach ($user in $users) {$upn = $user.'UserPrincipalName' 

(get-MsolUser -UserPrincipalName $upn).licenses.AccountSkuId | 

foreach{Set-MgUserLicense -UserPrincipalName $upn -AddLicense 'utpedupe:STANDARDWOFFPACK_STUDENT' }}


Connect-MsolService
Connect-MsolService

Connect-ExchangeOnline


Set-MsolUserLicense -UserPrincipalName SV48616647@idat.edu.pe -AddLicense utpedupe:STANDARDWOFFPACK_IW_STUDENT


Get-MsolAccountSku

utpedupe:STANDARDWOFFPACK_IW_STUDENT


Set-MsolUser
Set-MsolUserLicense
Set-MgUserLicense

Get-MsolUser -UserPrincipalName msantiago@inlearning.edu.pe | Select-Object -Property Licenses, UserPrincipalName 

Get-MsolUser -UserPrincipalName msantiago@inlearning.edu.pe | Select-Object -Property *


$Users = Import-Csv -Path "C:\Users\TICZEGELIPAE\Pictures\reportelicencias.csv"

foreach ($User in $Users) {
    Get-MsolUser -UserPrincipalName $user.UserPrincipalName | Select-Object -Property Licenses, UserPrincipalName  | Export-Csv -Path "C:\Users\TICZEGELIPAE\Downloads\NewAccountResults.csv" –NoTypeInformation }





    $Users = Import-Csv -Path "C:\Users\TICZEGELIPAE\Pictures\reportelicencias.csv"

foreach ($User in $Users) {
    Get-MsolUser -UserPrincipalName $user.UserPrincipalName | Select-Object -Property Licenses, UserPrincipalName }