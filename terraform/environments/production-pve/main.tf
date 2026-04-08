module "proxmox_k8s" {
  source = "../../modules/proxmox_cluster"
  
  pve_node      = "pve"
  template_name = "debian-12-template"
  gateway       = "192.168.0.1"
  
  node_config = {
    "pve-master"  = { id = 200, cpu = 2, ram = 4096, ip = "192.168.0.221" }
    "pve-worker1" = { id = 201, cpu = 2, ram = 2048, ip = "192.168.0.222" }
  }
}
