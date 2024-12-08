Agregar un miembro a un grupo de Lista distribucion
Import-Module ExchangeOnlineManagement
Install-Module -Name ExchangeOnlineManagement -RequiredVersion 3.1.0
Connect-ExchangeOnline

Add-DistributionGroupMember -Identity "seli@zegelipae.edu.pe" -Member "mmantilla@zegel.edu.pe"
#################################

falta probar el remove
##Remove-DistributionGroupMember

##eliminar usuario de listadistribucion
Remove-DistributionGroupMember -Identity "correodiferente@zegelipae.edu.pe" -Member "msantiago@zegel.edu.pe"