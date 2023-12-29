provider "local" {
}

resource "local_sensitive_file" "kind-config" {
  filename = "./kind-config.yaml"
  source = "./templates/kind-config-template.yaml"
}