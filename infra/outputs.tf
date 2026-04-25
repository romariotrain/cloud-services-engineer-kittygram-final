output "vm_external_ip" {
  description = "Public IPv4 of the Kittygram VM"
  value       = yandex_compute_instance.kittygram.network_interface.0.nat_ip_address
}

output "kittygram_url" {
  description = "URL to put into tests.yml as kittygram_domain"
  value       = "http://${yandex_compute_instance.kittygram.network_interface.0.nat_ip_address}:${var.gateway_port}"
}

output "bucket_name" {
  value = yandex_storage_bucket.kittygram.bucket
}
