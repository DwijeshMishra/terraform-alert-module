resource "azurerm_monitor_action_group"  "alertactiongroup" {
  name                = var.action_name
  resource_group_name = var.rg_name_action
  short_name          = var.action_short_name

  dynamic email_receiver {
    for_each = var.email_receiver_list
      content {
        name                    = lookup(email_receiver.value, "name", null)
        email_address           = lookup(email_receiver.value, "email_address", null)
        use_common_alert_schema = lookup(email_receiver.value, "use_common_alert_schema", true)
      }
  }
}
