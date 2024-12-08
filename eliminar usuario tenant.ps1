Connect-ExchangeOnline
Remove-DistributionGroup -Identity teamplataforma@Inlearning325.onmicrosoft.com
#eliminar grupo en OFFICE 365


#Remove-MsolUser -UserPrincipalName user -Force
Connect-MSOLService
$Users = Import-Csv -Path "C:\Users\TICZEGELIPAE\Pictures\eliminar desde tenant7.csv"

foreach ($User in $Users) {
    Remove-MsolUser -UserPrincipalName $User.UserPrincipalName -Force
    }


#restaurar correo
Restore-MsolUser -UserPrincipalName "davidchew@contoso.com"