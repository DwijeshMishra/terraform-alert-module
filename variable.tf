variable "alert_name" {
  description = "Name of Application Insights resource."
  default     = "test"
}
variable "location" {
  description = "Location of Application Insights resource."
  default     = "eastus"
}
variable "rg_name" {
  description = "Name of containing Resource Group."
}
variable "rg_name_action" {
  type = string
}


variable "email_receiver_list" {
  description = "email receiver list"
  type = map(object({
    name                    = string
    email_address           = string
    use_common_alert_schema = bool
  }))
  default = {
    "key1" = {
      email_address           = "test3@gmail.com"
      name                    = "test"
      use_common_alert_schema = false
    }
    "key2" = {
      email_address           = "dwijeshm3@gmail.com"
      name                    = "dwijesh"
      use_common_alert_schema = false
    }
  }
}
variable "action_name" {
  type = string
}
variable "action_short_name" {
  type = string
}

variable "action" {
  type = set(object(
    {
      action_group_id = string
    }
  ))
  default = []
}

