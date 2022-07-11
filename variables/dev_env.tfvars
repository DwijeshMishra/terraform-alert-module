rg_name = "Deployment"
rg_name_action = "Deployment"
alert_name = "test"
location = "eastus"
action_name = "test"
action_short_name = "test"
email_receiver_list = {
   key = {
      email_address = "test@gmail.com"
      name = "test"
      use_common_alert_schema = false
    },
  key2 = {
      email_address = "test3@gmail.com"
      name = "test"
      use_common_alert_schema = false
     }

}
query = file("${path.module}/queries/aks.txt")