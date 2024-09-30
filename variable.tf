variable "project_name" {
    type = string # here default value not given, user need to provide project name
}

variable "environment" {
  type = string # here default value not given, user need to provide environment
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"

}

variable "enable_dns_hostnames" {
    default = true
  
}

variable "common_tags" {
  default = {}
}

variable "vpc_tags" {
  default = {}
}

variable "igw_tags" {
  default = {}
}

# public subnet info
variable "public_subnet_cidrs" {
  type = list
  validation {
    condition = length(var.public_subnet_cidrs) == 2 
    error_message = "Please provide 2 valid public subnet CIDR"
  }
}

variable "public_subnet_tags" {
  default = {}
}

# private subnet info
variable "private_subnet_cidrs" {
  type = list
  validation {
    condition = length(var.private_subnet_cidrs) == 2 
    error_message = "Please provide 2 valid private subnet CIDR"
  }
}

variable "private_subnet_tags" {
  default = {}
}

# database subnet info
variable "database_subnet_cidrs" {
  type = list
  validation {
    condition = length(var.database_subnet_cidrs) == 2 
    error_message = "Please provide 2 valid database subnet CIDR"
  }
}

variable "database_subnet_tags" {
  default = {}
}

variable "database_subnet_group_tags" {
  default = {}
}

variable "nat_gateway_tags" {
  default = {}
}

variable "public_route_table_tags" {
  default = {}
}

variable "private_route_table_tags" {
  default = {}
}

variable "database_route_table_tags" {
  default = {}
}

variable "is_peering_required" {
    type = bool
    default = false
}

variable "vpc_peering_tags" {
    default = {}
}