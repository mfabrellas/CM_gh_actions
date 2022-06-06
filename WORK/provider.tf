terraform {
  required_version = "~> 1.1.7"
  required_providers {
    genesyscloud = {
      source  = "mypurecloud/genesyscloud"
      version = "~> 1.3.0"
    } 
  }
}

provider "genesyscloud" {
  oauthclient_id       = "${var.GENESYSCLOUD_CLIENT_ID}"
  oauthclient_secret   = "${var.GENESYSCLOUD_CLIENT_SECRET}"
  aws_region           = "us-east-1"
}


terraform {
  backend "local" {
    path = "../.terraform-WORK/terraform.tfstate"
  }
}
