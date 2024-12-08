Connect-MsolService
$userUPN="sv48616647@idat.edu.pe"
$newPassword="Clave2023@@@"
Set-MsolUserPassword -UserPrincipalName $userUPN -NewPassword $newPassword -ForceChangePassword $false

