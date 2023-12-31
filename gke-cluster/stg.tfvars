# ## Main variables
# project_id  = "gcp-stg-405122"
# region      = "us-east4"
# zone        = "us-east4-a"
# credentials = ".//gcp-keys.json"

# ## VPC Variables
# vpc_name      = "gke-stg-vpc"
# subnet_name   = "gke-stg"
# ip_cidr_block = "10.2.0.0/16"
# routing_mode  = "GLOBAL"

# ## GKE Variables
# regional           = true
# cluster_name       = "gke-stg-cluster"
# initial_node_count = "1"
# machine_type       = "e2-medium"
# gke_nodes          = "1"
# oauth_scopes = [
#   "https://www.googleapis.com/auth/logging.write",
#   "https://www.googleapis.com/auth/monitoring",
# ]
# disk_size_gb = "10"
# node_locations = [
#   "us-east4-a",
#   "us-east4-b",
#   "us-east4-c"
# ]

# ## UPTIME_CHECK Variables
# uptime_type = "k8s_service"
# uptime_config = {
#   "HTTP_GKE_Check_Backend_1" = {
#     checker_type    = "STATIC_IP_CHECKERS"
#     checker_period  = "60s"
#     checker_timeout = "10s"
#     path            = "/backend1-stg"
#     port            = "80"
#   }
#   "HTTP_GKE_Check_Backend_2" = {
#     checker_type    = "STATIC_IP_CHECKERS"
#     checker_period  = "60s"
#     checker_timeout = "10s"
#     path            = "/backend2-stg"
#     port            = "80"
#   }
#   "HTTP_GKE_Check_Backend_3" = {
#     checker_type    = "STATIC_IP_CHECKERS"
#     checker_period  = "60s"
#     checker_timeout = "10s"
#     path            = "/backend3-stg"
#     port            = "80"
#   }
# }


# ## HELM Variables
# releases_map = {
#   "gke-stg-backend-1" = {
#     chart_source       = "../hello-kubernetes"
#     namespace          = "gke-stg-hw"
#     create_namespace   = true
#     service_type       = "ClusterIP"
#     replica_count      = "3"
#     service_port       = "80"
#     container_image    = "paulbouwer/hello-kubernetes"
#     image_version      = "1.10"
#     ingress_configured = true
#     path_prefix        = "backend1-stg"
#     message            = "Hello World from First Backend [STG]"
#   }
#   "gke-stg-backend-2" = {
#     chart_source       = "../hello-kubernetes"
#     namespace          = "gke-stg-hw"
#     create_namespace   = true
#     service_type       = "ClusterIP"
#     replica_count      = "3"
#     service_port       = "80"
#     container_image    = "paulbouwer/hello-kubernetes"
#     image_version      = "1.10"
#     ingress_configured = true
#     path_prefix        = "backend2-stg"
#     message            = "Hello World from Second Backend [STG]"
#   }
#   "gke-stg-backend-3" = {
#     chart_source       = "../hello-kubernetes"
#     namespace          = "gke-stg-hw"
#     create_namespace   = true
#     service_type       = "ClusterIP"
#     replica_count      = "3"
#     service_port       = "80"
#     container_image    = "paulbouwer/hello-kubernetes"
#     image_version      = "1.10"
#     ingress_configured = true
#     path_prefix        = "backend3-stg"
#     message            = "Hello World from Third Backend [STG]"
#   }
# }

# ingress_name                 = "ingress-nginx"
# ingress_controller_namespace = "ingress-stg"
# ingress_namespace            = "gke-stg-hw"
# ingress_repository           = "https://kubernetes.github.io/ingress-nginx"
# ingress_chart                = "ingress-nginx"
# ingress_create_namespace     = true