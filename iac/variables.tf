variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The location of the resource group"
  type        = string
  default     = "East US"
}

variable "increment" {
  description = "The increment i.e. 001, 002, 003"
  type        = string
  default     = "001"
}