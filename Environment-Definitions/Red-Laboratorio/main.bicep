param location string = resourceGroup().location

resource vnet 'Microsoft.Network/virtualNetworks@2023-09-01' = {
  name: 'vnet-estudiante-laboratorio'
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: ['10.0.0.0/16']
    }
    subnets: [
      {
        name: 'Subnet-Pruebas'
        properties: {
          addressPrefix: '10.0.1.0/24'
        }
      }
    ]
  }
}
