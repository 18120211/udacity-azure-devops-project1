# Udacity Azure Devops Project 1
## Overview
- This repo using terraform to deploy web application on Azure Cloud.
- Author: minhthevo123@gmail.com 
## How to apply this terraform configuration
### Environment required
- [Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli) installed
- [Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli) installed
- [Packer](https://developer.hashicorp.com/packer/tutorials/docker-get-started/get-started-install-cli) installed
- Create Azure account/subscription. Be sure you have the contributor permission on that subscription
- Clone this repository
### Apply the configuration
- Create Azure Resource Group
```BASH
    az group create -n rg-udacity-images
```
- Create Service Princpal and assign Contributor permission to your subscription
```BASH
    az ad sp create-for-rbac -n MyApp --role Contributor --scopes /subscriptions/<YOUR_SUB_ID>
```

- Build web server image using Packer and upload image to Azure. Using the credentials created in the previous step.
```BASH
    cd packer
    packer build ./server.json
```
- Terraform part
```BASH
    cd terraform

    ### Initialize terraform project
    terraform init

    ### (Optional) See the terraform plan
    terraform plan

    ### Apply terraform configuration
    terraform apply

    ### Changing the minimum of web server instance 
    ### Or you can manually update the input in terraform/variables.tf file
    terraform apply -var min_vm_capacity=<MinSize(>=1)>
```

### Screenshots
1. Policy assignment
![Policy assignment](screenshots/tagging-policy.PNG)

2. Terraform state list after apply
![State list](screenshots/terraform-state-list.PNG)

3. Web application
- Note: This load balancer may be deleted when you review due to cost reduction
![Web server](screenshots/access_app.PNG)


### For Reviewer
1. Resource `azurerm_network_security_rule.internal` is just for testing and not be applied in prod environment
2. The default rules of Azure network security group are completely meet the network restriction in the project -> So, no network rule need to be specified. Kindly refer to MS offical docs: [Azure NSG](https://learn.microsoft.com/en-us/azure/virtual-network/network-security-groups-overview)