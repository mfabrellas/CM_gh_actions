variable "TF_ENV" {
    type = string
    default = "WORK"
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