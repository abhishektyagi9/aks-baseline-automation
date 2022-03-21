module "pod_identity_addon" {
  source             = "./add-ons/aad-pod-identity"
  aks_clusters       = module.caf.aks_clusters
  aks_cluster_key    = var.aks_cluster_key
  managed_identities = module.caf.managed_identities
  aad_pod_identity   = var.aad_pod_identity
}

output "pod_identity_addon_output" {
  value = module.pod_identity_addon
}
