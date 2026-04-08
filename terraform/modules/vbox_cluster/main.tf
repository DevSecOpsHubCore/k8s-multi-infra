resource "virtualbox_vm" "k8s_node" {
  count     = var.node_count
  name      = format("${var.cluster_name}-%02d", count.index + 1)
  image     = var.box_image
  cpus      = 2
  memory    = "2048 mib"

  network_adapter {
    type           = "bridged"
    host_interface = var.host_interface
  }
}
