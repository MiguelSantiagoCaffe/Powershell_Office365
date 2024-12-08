
Install-Module MSOnline
Connect-MsolService

$Users = Import-Csv -Path "C:\Users\TICZEGELIPAE\Desktop\UsersCDIupdatetenan.csv"

foreach ($User in $Users) {
    Set-MsolUser -UserPrincipalName $User.UserPrincipalName -Title $User.puestotrabajo -Department $User.area 
    }
#
$Users = Import-Csv -Path "C:\Users\TICZEGELIPAE\Desktop\UsersCDIupdatetenan.csv"

foreach ($User in $Users) {
    Set-MsolUser -UserPrincipalName $User.UserPrincipalName -Displayname $User.displayna
    }
#
Set-MsolUserPrincipalName -UserPrincipalName nicarhuayo@inlearning.edu.pe -NewUserPrincipalName backuplicense@inlearning.edu.pe
  
Set-MsolUserPrincipalName -UserPrincipalName backupanalista@inlearning.edu.pe -NewUserPrincipalName pbustamante@inlearning.edu.pe
############################################################################################################################################

#displayname csv
import-csv C:\Users\TICZEGELIPAE\Pictures\displayname.csv | foreach {Set-MsolUser -UserPrincipalName $_.UserPrincipalName -DisplayName $_.DisplayName}

#displayname unidad
Set-MsolUser -UserPrincipalName ln48616647@zegelipae.pe -NewDisplayName ln486

Set-User -Identity ln48616647@zegelipae.pe -DisplayName ln486

#####
Connect-MsolService
Connect-ExchangeOnline
Remove-DistributionGroup -Identity pruebakatherine@zegelipae.edu.pe

Set-DistributionGroup -Identity pruebakatherine@zegelipae.edu.pe -DisplayName "Accounting Group"