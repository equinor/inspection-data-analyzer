using 'infrastructure.bicep'
param environment = 'YourEnvName'
param resourceGroupName = 'IDA${environment}'

param location = 'northeurope'
param objectIdFgRobots = '5ac08731-48dd-4499-9151-7bf6b8ab8eac'

param objectIdEnterpriseApplication = '56f5f63f-d18a-47b6-97d7-779994f489bf' // ObjectID enterprise application ida-prod

param managedIdentityName = 'IDAprodMI'

param keyVaultName = 'idakv-${environment}'

param administratorLogin = 'idapostgresqlserver_${environment}'
param administratorLoginPassword = ''

param serverName = 'idaserver${environment}'
param postgresConnectionString = ''

param storageAccountNameAnon = 'storageanon1${environment}'

param storageAccountNameRaw = 'storageraw1${environment}'

param storageAccountNameVis = 'storagevis1${environment}'

param principalId = 'bf81095d-e13d-481d-a4e8-a5c17faad398' //aurora-aks-kubelet-shared prod environment
param roleDefinitionId = 'f1a07417-d97a-45cb-824c-7a7467783830' // azure built-in role for managed identity operator

// Grant Flotilla (FlotillaBackendAuthProd) role assignment as "Storage Blob Data Reader" to storageanon account
param roleDefinitionIDFlotillaApp = '2a2b9908-6ea1-4ae2-8e65-a410df84e7d1' // Storage Blob Data Reader
param principalIdFlotillaApp = '17c50841-e5d6-4eae-a74b-98d0d2e0b592' // ObjectID enterprise application FlotillaBackendAuthProd
