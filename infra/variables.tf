variable "yc_token" {
  description = "Yandex Cloud OAuth or IAM token"
  type        = string
  sensitive   = true
}

variable "yc_cloud_id" {
  description = "Yandex Cloud ID"
  type        = string
}

variable "yc_folder_id" {
  description = "Yandex Cloud folder ID"
  type        = string
}

variable "yc_zone" {
  description = "Default availability zone"
  type        = string
  default     = "ru-central1-a"
}

variable "ssh_public_key" {
  description = "SSH public key for VM access"
  type        = string
}

variable "gateway_port" {
  description = "Public HTTP port for the gateway service"
  type        = number
  default     = 80
}

variable "bucket_name" {
  description = "Application S3 bucket name"
  type        = string
  default     = "kittygram-app-romariotrain"
}

variable "s3_access_key" {
  description = "Static access key for S3 bucket"
  type        = string
  sensitive   = true
}

variable "s3_secret_key" {
  description = "Static secret key for S3 bucket"
  type        = string
  sensitive   = true
}
