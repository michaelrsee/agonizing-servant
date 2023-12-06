param storageAccountName string // Passed in from Github Action
param location string = resourceGroup().location // Use the same location as the resource group
param sku string = 'Standard_LRS' // Standard Locally-redundant storage

// Storage account resource
resource storageAccount 'Microsoft.Storage/storageAccounts@2021-08-01' = {
  name: storageAccountName
  location: location
  sku: {
    name: sku
  }
  kind: 'StorageV2' // General-purpose v2 storage account
  properties: {
    accessTier: 'Hot'
  }
}
