Install-Module AzureAD
Connect-AzureAD

#unidad este comando se puede manejar con excel #
Set-AzureADUser -ObjectID kaguilar@zegelipae.edu.pe -AccountEnabled $false

#por lote pero funciona con pocos usuarios#
Get-Content "C:\Users\TICZEGELIPAE\Documents\Accounts.txt" | ForEach { Set-MsolUser -UserPrincipalName $_ -BlockCredential $true }

####################

Set-AzureADUser -ObjectID kaguilar@zegelipae.edu.pe -AccountEnabled $false
Set-AzureADUser -ObjectID abarreda@zegelipae.edu.pe -AccountEnabled $false
Set-AzureADUser -ObjectID jbazalarb@zegelipae.edu.pe -AccountEnabled $false
Set-AzureADUser -ObjectID ecarreteros@zegelipae.edu.pe -AccountEnabled $false
Set-AzureADUser -ObjectID kcortezh@zegelipae.edu.pe -AccountEnabled $false
Set-AzureADUser -ObjectID jdoig@zegelipae.edu.pe -AccountEnabled $false
Set-AzureADUser -ObjectID iagarcia@zegelipae.edu.pe -AccountEnabled $false
Set-AzureADUser -ObjectID vagarcia@zegelipae.edu.pe -AccountEnabled $false
Set-AzureADUser -ObjectID vgarciar@zegelipae.edu.pe -AccountEnabled $false
Set-AzureADUser -ObjectID sahuamani@zegelipae.edu.pe -AccountEnabled $false
Set-AzureADUser -ObjectID oiturregui@zegelipae.edu.pe -AccountEnabled $false
Set-AzureADUser -ObjectID ijimenez@zegelipae.edu.pe -AccountEnabled $false
Set-AzureADUser -ObjectID nochoac@zegelipae.edu.pe -AccountEnabled $false
Set-AzureADUser -ObjectID doriundo@zegelipae.edu.pe -AccountEnabled $false
Set-AzureADUser -ObjectID gpena@zegelipae.edu.pe -AccountEnabled $false
Set-AzureADUser -ObjectID psalazar@zegelipae.edu.pe -AccountEnabled $false
Set-AzureADUser -ObjectID bsoria@zegelipae.edu.pe -AccountEnabled $false
Set-AzureADUser -ObjectID dvasquez@zegelipae.edu.pe -AccountEnabled $false
Set-AzureADUser -ObjectID mvilca@zegelipae.edu.pe -AccountEnabled $false
