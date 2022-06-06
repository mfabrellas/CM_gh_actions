variable "common_module_name1" {
    type = string
    description = "First routing Common module name at Architect"
}

variable "common_module_name2" {
    type = string
    description = "One to one Common module name at Architect"
}

variable "common_module_name3" {
    type = string
    description = "Pool Attention Common module name at Architect"
}

variable "example_flow_name" {
    type = string
    description = "Example flow name at Architect"
}

variable "queue1_name" {
    type = string
    description = "Queue for One to One Agents"
}

variable "queue2_name" {
    type = string
    description = "Queue for Pool Attention Agents"
}

variable "queue1_flow1" {
    type = string
    description = "In-Queue call flow name at Architect"
}

variable "queue1_flow2" {
    type = string
    description = "In-Queue call flow name at Architect"
}

variable "queue2_flow1" {
    type = string
    description = "In-Queue call flow name at Architect"
}

variable "queue2_flow2" {
    type = string
    description = "In-Queue call flow name at Architect"
}

variable "division" {
    type = string
    description = "Genesys organization deployment division"
}

variable "default_language" {
    type = string
    description = "Default language"
}

