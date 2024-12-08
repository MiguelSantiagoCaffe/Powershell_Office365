# Instalar el módulo de PowerShell para Microsoft Graph si aún no está instalado
Install-Module -Name Microsoft.Graph.Users -Scope CurrentUser -Force -AllowClobber

# Importar el módulo de PowerShell para Microsoft Graph
Import-Module Microsoft.Graph.Users

# Definir las credenciales de la aplicación y el recurso (puedes obtener estos valores desde Azure AD)
$appId = "e9de8486-0-f84dd6b35442"
$appSecret = "lqK8Q~a1r~awMFBFDgg3Pabt9"
$tenantId = "c4a66c348be1-b2c26a430158"

# Crear el contexto de autenticación
$context = New-MgGraphAuthenticationContext -ClientApplicationId $appId -ClientApplicationSecret $appSecret -TenantId $tenantId

# Autenticarse
Connect-MgGraph -Context $context

# Asignar una licencia a un usuario específico
$userObjectId = "74142c86-7c3c-417d-90af-d0c295dc48b8"
$licenseId = "utpedupe:STANDARDWOFFPACK_IW_STUDENT"

# Nota: El objectId del usuario y el Id de la licencia deben ser proporcionados por Microsoft Graph.
# Puedes obtener el objectId del usuario y los Ids de licencia consultando Microsoft Graph API.

# Construir el cuerpo de la solicitud
$body = @{
    addLicenses = @(
        @{
            skuId = $licenseId
        }
    )
}

# Enviar la solicitud para asignar la licencia
Invoke-MgGraphRequest -HttpMethod POST -Url "/users/$userObjectId/assignLicense" -ContentType "application/json" -Body ($body | ConvertTo-Json)

# Desconectarse de Microsoft Graph
Disconnect-MgGraph
