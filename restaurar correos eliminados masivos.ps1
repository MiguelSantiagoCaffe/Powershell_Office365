Connect-MSOLService

$Users = Import-Csv -Path "C:\Users\TICZEGELIPAE\Pictures\restaurarcorreo.csv" 
foreach ($User in $Users) 
{Restore-MsolUser -UserPrincipalName $User.usuario}


Connect-MSOLService
Restore-MsolUser -UserPrincipalName gbarrientos@utpedupe.onmicrosoft.com