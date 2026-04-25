resource "yandex_storage_bucket" "kittygram" {
  bucket     = var.bucket_name
  access_key = var.s3_access_key
  secret_key = var.s3_secret_key
}
