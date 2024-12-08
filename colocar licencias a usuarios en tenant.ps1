# Conectarse a Microsoft 365
Connect-MsolService

# Asignar una licencia a los usuarios
$usuarios = "pruebas00@idat.edu.pe"
$sku = "utpedupe:STANDARDWOFFPACK_IW_STUDENT"  # Reemplaza esto con el SKU de la licencia que deseas asignar

foreach ($usuario in $usuarios) {
    Set-MsolUserLicense -UserPrincipalName $usuario -AddLicenses $sku
}



Set-MsolUserLicense -UserPrincipalName pruebas00@idat.edu.pe -AddLicenses utpedupe:STANDARDWOFFPACK_IW_STUDENT

#estos script son correctos pero no funcionan por contabilidad
