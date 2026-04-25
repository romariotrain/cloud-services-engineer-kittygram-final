data "yandex_compute_image" "ubuntu" {
  family = "ubuntu-2404-lts"
}

resource "yandex_compute_instance" "kittygram" {
  name        = "kittygram-vm"
  platform_id = "standard-v3"
  zone        = var.yc_zone

  resources {
    cores         = 2
    memory        = 2
    core_fraction = 50
  }

  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.id
      size     = 20
      type     = "network-hdd"
    }
  }

  network_interface {
    subnet_id          = yandex_vpc_subnet.kittygram.id
    nat                = true
    security_group_ids = [yandex_vpc_security_group.kittygram.id]
  }

  metadata = {
    user-data = templatefile("${path.module}/cloud-init.yaml", {
      ssh_public_key = var.ssh_public_key
    })
    serial-port-enable = "1"
  }

}
