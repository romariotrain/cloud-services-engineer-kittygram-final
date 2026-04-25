resource "yandex_vpc_network" "kittygram" {
  name = "kittygram-network"
}

resource "yandex_vpc_subnet" "kittygram" {
  name           = "kittygram-subnet"
  zone           = var.yc_zone
  network_id     = yandex_vpc_network.kittygram.id
  v4_cidr_blocks = ["10.10.0.0/24"]
}

resource "yandex_vpc_security_group" "kittygram" {
  name        = "kittygram-sg"
  description = "Allow SSH and gateway HTTP; all egress"
  network_id  = yandex_vpc_network.kittygram.id

  ingress {
    description    = "SSH"
    protocol       = "TCP"
    port           = 22
    v4_cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description    = "Gateway HTTP"
    protocol       = "TCP"
    port           = var.gateway_port
    v4_cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description    = "All outbound"
    protocol       = "ANY"
    v4_cidr_blocks = ["0.0.0.0/0"]
    from_port      = 0
    to_port        = 65535
  }
}
