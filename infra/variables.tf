variable "cloud_id" {
  description = "Cloud ID"
  type        = string
}

variable "folder_id" {
  description = "Folder ID"
  type        = string
}

variable "ssh_key" {
  description = "SSH Public Key"
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
