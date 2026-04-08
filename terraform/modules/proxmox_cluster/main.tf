resource "proxmox_vm_qemu" "k8s_node" {
  for_each    = var.node_config
  name        = each.key
  target_node = var.pve_node
  vmid        = each.value.id
  clone       = var.template_name

  cores   = each.value.cpu
  memory  = each.value.ram
  
  ipconfig0 = "ip=${each.value.ip}/24,gw=${var.gateway}"
  
  sshkeys = var.ssh_public_key
}
