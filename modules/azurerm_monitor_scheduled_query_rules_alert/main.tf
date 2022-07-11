resource "azurerm_monitor_scheduled_query_rules_alert" "example" {
  name                = var.alert_name
  location            = var.location
  resource_group_name = var.rg_name

#dynamic "action" {
 #   for_each = var.action
 #   content {
      # action_group_id - (required) is a type of string
      #action_group_id = action.value["action_group_id"]    
 #     action_group_id = [azurerm_monitor_action_group.alertactiongroup.id]
#    }
#  }
  action {
    action_group = [azurerm_monitor_action_group.alertactiongroup.id]
  }
  
  data_source_id = azurerm_kubernetes_cluster.heath_aks.id
  description    = "alert for kubernetes log error"
  enabled        = true
  # Count all requests with server error result code grouped into 5-minute bins
#  dynamic "query" {
#    for_each = var.query
#    content {
#      query = query.value["query"]
#    }
#  }
  query       = var.query
  severity    = 1
  frequency   = 180
  time_window = 300
  trigger {
    operator  = "GreaterThan"
    threshold = 0
  } 
}

