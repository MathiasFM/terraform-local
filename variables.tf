variable "cluster_name" {
  description = "The name of the cluster."
  type        = string
  default     = "local-terraform"
}

variable "cluster_config_path" {
  description = "Path for kubeconfig."
  type        = string
  default     = "./templates/kind-config-template.yaml"
}

variable "container_port" {
  description = "Ports for container."
  type        = list(number)
  default     = []
}

variable "host_port" {
  description = "Ports for host."
  type        = list(number)
  default     = []
}

variable "listen_address" {
  description = "IP address to listen on."
  type        = list(string)
  default     = []
}