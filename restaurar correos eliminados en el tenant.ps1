Import-Csv C:\Users\msantiago\Desktop\cambiodominio.csv | 
foreach-object {Set-ADUser -Identity $_.SamAccountName -EmailAddress $_.mail}


#Remove-MsolUser -UserPrincipalName user -Force
Connect-MSOLService


#restaurar correo
Restore-MsolUser -UserPrincipalName careercenter@inlearning.edu.pe

Restore-MsolUser -UserPrincipalName prueba20@inlearning.edu.pe -AccountPassword "Clave_2023@#" -force
