# azure-mdwh

Repository for demonstrating ARM deployment for Azure Synapse Data Lake Azure Data Factory etc.

An access policy is automatically created for the subscription/service Principal in the key vault on creation. Set the AAD objectId in the parameters file.

Also

- includes an example to deploy private link in to a VNet to access the Data Lake (mdwh-prv-template.json).
- how output from ARM template works and how to reference the output variable in powershell
- Azure Data Factory is deployed with a System Assigned Identity. This ID is added as an access policy to the key vault
