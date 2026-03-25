provider "kubernetes" {
  config_path = "~/.kube/config"
}

resource "kubernetes_manifest" "hello_fn" {
  manifest = {
    apiVersion = "openfaas.com/v1"
    kind       = "Function"

    metadata = {
      name      = "hello-fn"
      namespace = "openfaas-fn"
    }

    spec = {
      name  = "hello-fn"
      image = "anushkakapur2023bcs0149/hello-fn:latest"
    }
  }
}