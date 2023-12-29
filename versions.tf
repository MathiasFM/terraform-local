terraform {
  required_providers {
    local = {
        source = "hashicorp/local"
        version = "2.4.1"       
    }
  }
  required_version = ">= 0.13.0"
}