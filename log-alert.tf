module "azurerm_monitor_scheduled_query_rules_alert" {
  source            = "./modules/azurerm_monitor_scheduled_query_rules_alert"
  action_short_name = var.action_short_name
  action_name       = var.action_name
  query             = file("${path.module}/queries/aks.txt")
  rg_name_action = var.rg_name_action
  rg_name = var.rg_name
}
