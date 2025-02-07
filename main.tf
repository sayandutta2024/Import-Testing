terraform {
  backend "local" {
    path = "environment/Test/Keyvault/terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}

# Call the Network Module
module "network" {
  source              = "./modules/network"
  subscription_id     = var.subscription_id
  tenant_id           = var.tenant_id
  resource_group_name = var.resource_group_name
  location            = var.location
  vnet_cidr           = var.vnet_cidr
  subnet1_cidr        = var.subnet1_cidr
  subnet2_cidr        = var.subnet2_cidr
}

# Call the Security Module
module "security" {
  source              = "./modules/security"
  subscription_id     = var.subscription_id
  tenant_id           = var.tenant_id
  resource_group_name = var.resource_group_name
  location            = var.location
  keyvault_name       = var.keyvault_name
  vnet_id             = module.network.vnet_id   # Use VNet ID from Network module
  subnet_id           = module.network.subnet1_id # Default to Subnet 1 ID
  environment         = var.environment
  product_name        = var.product_name
}
