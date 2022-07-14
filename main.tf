terraform {
  backend "azurerm" {
    resource_group_name  = "RG2"
    storage_account_name = "zsatest"
    container_name       = "tfstatefile"
    key                  = "dev.terraform.tfstate"
  }
}
module "RG" {
  source   = "./modules/RG" #A
  rgname   = var.rgname     #B
  location = var.location
}
module "SA" {
  source   = "./modules/StorageAccount"
  sname    = var.sname
   location = var.location
}