resource "azurerm_storage_account" "sa" {
    for_each = var.sa
    name = each.key
    location = each.value.location
    resource_group_name = var.rg[each.key]
    account_tier = "Standard"
    account_replication_type = "LRS"
} 