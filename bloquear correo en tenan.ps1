Install-Module MSOnline
Connect-MsolService
##
Connect-ExchangeOnline

##
Set-ExecutionPolicy RemoteSigned 
Install-Module -Name ExchangeOnlineManagement 
Import-Module ExchangeOnlineManagement
##
Install-Module AzureAD
Connect-AzureAD


Set-AzureADUser -ObjectID SV48616647@idat.edu.pe -AccountEnabled $false

Set-AzureADUser -ObjectID hballena@zegel.edu.pe -AccountEnabled $false
Set-AzureADUser -ObjectID jacalderon@zegel.edu.pe -AccountEnabled $false
Set-AzureADUser -ObjectID ccastro@zegel.edu.pe -AccountEnabled $false
Set-AzureADUser -ObjectID jgonzalesd@zegel.edu.pe -AccountEnabled $false
Set-AzureADUser -ObjectID dmonsalve@zegel.edu.pe -AccountEnabled $false
Set-AzureADUser -ObjectID eramirez@zegel.edu.pe -AccountEnabled $false
Set-AzureADUser -ObjectID eulloa@zegel.edu.pe -AccountEnabled $false
Set-AzureADUser -ObjectID lvilchez@zegel.edu.pe -AccountEnabled $false
Set-AzureADUser -ObjectID asurco@zegel.edu.pe	 -AccountEnabled $false
Set-AzureADUser -ObjectID fknunez@zegelipae.pe -AccountEnabled $false


# Importa los usuarios desde el archivo CSV
$usuarios = Import-Csv -Path "ruta\a\usuarios.csv"

# Recorre cada usuario y deshabilita la cuenta
foreach ($usuario in $usuarios) {
    Set-AzureADUser -ObjectId $usuario.UserPrincipalName -AccountEnabled $false
}
