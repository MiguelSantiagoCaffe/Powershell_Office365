﻿Install-Module MSOnline
Connect-MsolService

$Users = Import-Csv -Path "C:\Users\TICZEGELIPAE\Desktop\UsersCDIal.csv"

foreach ($User in $Users) {
    New-MsolUser -UserPrincipalName $User.UserPrincipalName -DisplayName $User.DisplayName -FirstName $User.FirstName -LastName $User.LastName -Password $User.Password
}