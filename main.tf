
locals {
    sample_network = [for val in var.networks: [for i in val.subnets: i]]
}


output "subnets" {
    value = values(local.sample_network[0][0])[1]
}