# Create Resource Group
az group create -l uksouth -n az-k8s-7gkg-rg

# Deploy template with in-line parameters
az deployment group create -g az-k8s-7gkg-rg  --template-uri https://github.com/Azure/AKS-Construction/releases/download/0.10.7/main.json --parameters `
	resourceName=az-k8s-7gkg `
	agentCount=2 `
	agentCountMax=4 `
	enable_aad=true `
	enableAzureRBAC=true `
	adminPrincipalId=$(az ad signed-in-user show --query id --out tsv) `
	registries_sku=Basic `
	acrPushRolePrincipalId=$(az ad signed-in-user show --query id --out tsv) `
	omsagent=true `
	retentionInDays=30 `
	azurepolicy=audit

# Get credentials for your new AKS cluster & login (interactive)
az aks get-credentials -g az-k8s-7gkg-rg -n aks-az-k8s-7gkg
kubectl get nodes