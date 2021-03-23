az network nsg rule create --name Work --priority 200 --access Allow --direction Inbound --source-port-range 10 --resource-group nsg-testing-scripts --nsg-name nsg-should-not-work


az deployment create --location WestUS --template-file azuredeploy.jsonls
