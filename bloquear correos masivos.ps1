

Connect-AzureAD

# Importa los usuarios desde el archivo CSV
$usuarios = Import-Csv -Path "C:\Users\TICZEGEL\Desktop\bloquearcorreosmasivo.csv"

# Recorre cada usuario y deshabilita la cuenta
foreach ($usuario in $usuarios) {
    Set-AzureADUser -ObjectId $usuario.UserPrincipalName -AccountEnabled $false
}
