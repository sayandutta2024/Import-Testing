variable "subscription_id" {
  type        = string
  description = "Azure subscription ID"
}

variable "tenant_id" {
  type        = string
  description = "Azure tenant ID"
}

variable "resource_group_name" {
  type        = string
  description = "Resource group where resources will be created"
}

variable "location" {
  type        = string
  description = "Azure region for resource deployment"
}

variable "vnet_cidr" {
  type        = string
  description = "CIDR block for the virtual network"
}

variable "subnet1_cidr" {
  type        = string
  description = "CIDR block for Subnet 1"
}

variable "subnet2_cidr" {
  type        = string
  description = "CIDR block for Subnet 2"
}

variable "keyvault_name" {
  type        = string
  description = "Name of the Azure Key Vault"
}

variable "environment" {
  type        = string
  description = "Environment name (e.g., dev, staging, prod)"
}

variable "product_name" {
  type        = string
  description = "Product name for tagging resources"
}
