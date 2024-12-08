# Conectar al entorno de Microsoft 365 (por ejemplo, Microsoft Teams)
# Connect-MicrosoftTeams  <-- Si necesitas conectar, descomenta esta línea y agrega el comando correcto para conectarte
#reporte de usuarios que no se han INICIADO SESECION en 1 dia

$usuariosSinInicio = Get-CsOnlineUser | Where-Object { $_.LastSignInTime -lt (Get-Date).AddDays(-180) }

# Crear un reporte en formato CSV (puedes cambiar el formato según tus necesidades)
$reporte = @()
foreach ($usuario in $usuariosSinInicio) {
    $usuarioInfo = [PSCustomObject] @{
        NombreUsuario = $usuario.DisplayName
        CorreoElectronico = $usuario.UserPrincipalName
        UltimaSesion = $usuario.LastSignInTime
        Puesto = $usuario.Title
    }
    $reporte += $usuarioInfo
}

# Guardar el reporte en un archivo CSV
$reporte | Export-Csv -Path "C:\Users\TICZEGEL\Desktop\ReporteUsuariosSinInicio10.csv" -NoTypeInformation

# Mostrar el reporte en la consola (opcional)
$reporte | Format-Table

Write-Host "Reporte generado exitosamente."


#Get-CsOnlineUser | Where-Object { $_.LastSignInTime -lt (Get-Date).AddDays(-7) }