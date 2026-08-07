resource "helm_release" "argocd" {

  name = "argocd"

  repository = "https://argoproj.github.io/argo-helm"

  chart = "argo-cd"

  version = "8.2.7"

  namespace = "argocd"

  create_namespace = true

  timeout = 600

  values = [
    yamlencode({
      server = {
        service = {
          type = "ClusterIP"
        }
      }
    })
  ]

  depends_on = [
    aws_eks_node_group.main
  ]
}
