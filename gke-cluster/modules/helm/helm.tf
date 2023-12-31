resource "helm_release" "helm_releases" {
  for_each         = var.releases_map
  name             = each.key
  chart            = each.value.chart_source
  namespace        = each.value.namespace
  create_namespace = each.value.create_namespace

  set {
    name  = "deployment.replicaCount"
    value = each.value.replica_count
  }

  set {
    name  = "service.type"
    value = each.value.service_type
  }

  set {
    name  = "service.port"
    value = each.value.service_port
  }

  set {
    name  = "deployment.container.image.repository"
    value = each.value.container_image
  }

  set {
    name  = "AppVersion"
    value = each.value.image_version
  }

  set {
    name  = "message"
    value = each.value.message
  }

  set {
    name  = "ingress.configured"
    value = each.value.ingress_configured
  }

  set {
    name  = "ingress.pathPrefix"
    value = each.value.path_prefix
  }

}