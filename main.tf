provider "kind" {}

provider "kubernetes" {
  config_path = pathexpand(var.cluster_config_path)
}

resource "kind_cluster" "default" {
  name            = var.cluster_name
  kubeconfig_path = pathexpand(var.cluster_config_path)
  wait_for_ready  = true

  kind_config {
    api_version = "kind.x-k8s.io/v1alpha4"
    kind        = "Cluster"

    node {
      role = "control-plane"

      kubeadm_config_patches = [
        "kind: InitConfiguration\nnodeRegistration:\n  kubeletExtraArgs:\n    node-labels: \"ingress-ready=true\"\n"
      ]

      extra_port_mappings {
        container_port = var.container_port[0]
        host_port      = var.host_port[0]
        listen_address = var.listen_address[0]
      }

      extra_port_mappings {
        container_port = var.container_port[1]
        host_port      = var.host_port[1]
        listen_address = var.listen_address[0]
      }
    }

    node {
      role = var.worker_node_name
    }

    node {
      role = var.worker_node_name
    }
  }
}