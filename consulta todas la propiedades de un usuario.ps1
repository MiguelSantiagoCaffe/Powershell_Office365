

Connect-MsolService
Get-MsolUser -UserPrincipalName msantiago@inlearning.edu.pe | Select-Object -Property Licenses 


Set-MsolUser -UserPrincipalName msantiago@inlearning.edu.pe




Get-MsolUser msantiago@inlearning.edu.pe -Properties *|more


Get-MsolUser -UserPrincipalName msantiago@inlearning.edu.pe | Select-Object *