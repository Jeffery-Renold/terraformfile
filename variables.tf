variable "subscription_id" {
  description = "The Subscription ID to deploy resources to"
  type        = string
  default = "52995645-4055-4db4-ad46-c611c4f1b8c2"
  
}
locals {
  rgs_list = {
    for r in local.input_data[rg/rgdata] : 
      name     = r.name
      location = r.location
    }
  }
