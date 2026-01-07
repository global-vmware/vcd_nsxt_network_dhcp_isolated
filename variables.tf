variable "vdc_org_name" {}

variable "vdc_edge_name" {}

variable "vdc_group_name" {}

variable "segments" {
  type = map(object({
    listener_ip_address = string
    pool_ranges         = list(map(string))
    dns_servers         = list(string)
    lease_time          = optional(number, 2592000)
  }))

  description = "Map of network segments to configure DHCP on"
}
