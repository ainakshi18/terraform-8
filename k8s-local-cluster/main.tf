provider "kubernetes" {
  config_path = "~/.kube/config"
}

resource "kubernetes_namespace" "local_app" {
  metadata {
    name = "local-app"
  }
}

resource "kubernetes_deployment" "nginx" {
  metadata {
    name      = "nginx"
    namespace = kubernetes_namespace.local_app.metadata[0].name
  }

  spec {
    replicas = 1
    selector {
      match_labels = {
        app = "nginx"
      }
    }
    template {
      metadata {
        labels = {
          app = "nginx"
        }
      }
      spec {
        container {
          name  = "nginx"
          image = "nginx:latest"
        }
      }
    }
  }
}
