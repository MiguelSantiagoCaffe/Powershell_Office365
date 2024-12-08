Connect-ExchangeOnline


Get-DistributionGroupMember -Identity DoceAte_@idat.edu.pe |Select-Object DisplayName,PrimarySMTPAddress|
Export-Csv –Path C:\Users\TICZEGELIPAE\Downloads\REPORTELISTASGENERAL\prueba_.csv 

################################################################################
#script con columnas modificadas
Get-DistributionGroupMember -Identity centralidat@idat.edu.pe | 
Select-Object @{
    Name = 'NombreCompleto'
        Expression = { $_.DisplayName }
    }, @{
        Name = 'CorreoElectronico'
        Expression = { $_.PrimarySMTPAddress }
    }|

Export-Csv –Path C:\Users\TICZEGELIPAE\Documents\REPORTELISTASGENERAL\prue.csv 
