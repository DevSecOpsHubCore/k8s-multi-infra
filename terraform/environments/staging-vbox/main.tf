module "vbox_k8s" {
  source = "../../modules/vbox_cluster"
  
  cluster_name   = "vbox-lab"
  node_count     = 2
  host_interface = "Wi-Fi" # Nome da sua placa no Windows
}
