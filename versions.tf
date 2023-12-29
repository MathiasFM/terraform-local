terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "2.4.1"
    }
    kind = {
      source  = "tehcyx/kind"
      version = "0.2.1"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.24.0"
    }
  }
  required_version = ">= 0.13.0"
}