variable "common_module_name" {
    type = string
    description = "Common module name at Architect"
    default = "IdentificationModuleBasic"
}

variable "example_flow_name" {
    type = string
    description = "Example flow name at Architect"
    default = "IdentificationExample"
}

variable "queue_name" {
    type = string
    description = "Example flow name at Architect"
    default = "modulosComunes"
}

variable "division" {
    type = string
    description = "Genesys organization deployment division"
    default = "Home"
}

variable "default_language" {
    type = string
    description = "Default language"
    default = "es-us"
}

#Genesys Cloud Credentials

variable "GENESYSCLOUD_CLIENT_ID" {
    type = string
    description = "GenesysCloud ClientId credential"
    sensitive = true
}

variable "GENESYSCLOUD_CLIENT_SECRET" {
    type = string
    description = "GenesysCloud ClientSecret credential"
    sensitive = true
}