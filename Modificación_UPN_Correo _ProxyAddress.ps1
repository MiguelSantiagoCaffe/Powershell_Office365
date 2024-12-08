Import-Module ActiveDirectory
[String]$Ruta = Read-Host "Por favor indicar ruta del archivo CSV (Por Ejemplo C:\usuarios.csv)"
Import-Csv -Path $Ruta | foreach-object {
    #Modificar UPN    
    Write-host “Modificando UPN para el usuario $($_.SamAccountName) a $($_.NuevoDominio)” -Foregroundcolor Cyan
    Set-ADUser $_.sAMAccountName -userprincipalname $_.NuevoDominio -Verbose
    Write-Host "Se modificó UPN para el usuario $($_.SamAccountName) exitosamente" -ForegroundColor Cyan


    #Modificar proxyaddress
    Write-Host "Modificando proxyaddres para el usuario $($_.SamAccountName)" -ForegroundColor Cyan            
    Set-ADUser $_.sAMAccountName -Remove @{Proxyaddresses="SMTP:"+$_.ActualDominio} -Verbose
    Set-ADUser $_.sAMAccountName -Add @{Proxyaddresses="SMTP:"+$_.NuevoDominio} -Verbose
    Set-ADUser $_.sAMAccountName -Add @{Proxyaddresses="smtp:"+$_.ActualDominio} -Verbose
    Write-Host "Se modificó proxyaddres para el usuario $($_.SamAccountName) exitosamente" -ForegroundColor Cyan

    #Modificar correo electrónico
    Write-host “Modificando correo electrónico para el usuario $($_.SamAccountName) a $($_.NuevoDominio)” -Foregroundcolor Cyan
    Set-ADUser $_.sAMAccountName -EmailAddress $_.NuevoDominio -Verbose
    Write-Host "Se modificó correo electrónico para el usuario $($_.SamAccountName) exitosamente" -ForegroundColor Cyan

}

""
Write-Host La modificación ha sido correcta - Felicidades!!!
""


