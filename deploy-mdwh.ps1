$location = "westeurope"
$resourceGroupName = "mdwh-rg"
New-AzResourceGroup -Name $resourceGroupName -Location $location -Force 

$params = @{
    ResourceGroupName     = $resourceGroupName
    TemplateFile          = 'arm\mdwh-template.json'
    TemplateParameterFile = 'arm\mdwh-parameters.json'
    Mode                  = 'Incremental'
    Verbose               = $true
}
$deploy = New-AzResourceGroupDeployment @params

$storageAccountName = $deploy.Outputs.storageAccountName.value
$storageAccountConnectionString = $deploy.Outputs.storageAccountConnectionString.value

Write-Host $storageAccountName
Write-Host $storageAccountConnectionString


