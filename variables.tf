variable "networks" {
    default = {
        "dev-vpc" = {
            address_space = ["10.0.0.0./9"]
            subnets = {
                "subnet_01" = {
                    address_prefix = ["10.1.0.0/16"],
                    enable_netgateway = true
                }
            }
        }
    }    
}

variable "users" {
    type = list(string)
    default = ["user1","user2","user3"]
}