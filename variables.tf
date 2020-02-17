variable "project_name" {
  description = "Project name"
  type        = string
}

variable "environment" {
  description = "Infrastructure environment"
  type        = string
}

variable "name" {
  description = "Name of S3 bucket"
  type        = string
  default     = "Terraform State"
}

variable "versioning_enabled" {
  description = "If true, enable S3 bucket versioning"
  type        = bool
  default     = true
}

variable "acl" {
  description = "Private or Public ACL"
  type        = string
  default     = ""
}

variable "region" {
  description = "Region code"
  type        = string
}

variable "key_name" {
  description = "Key name"
  type        = string
  default     = "LockID"
}

variable "key_type" {
  description = "Key name"
  type        = string
  default     = "S"
}

variable "read_capacity" {
  description = "Read copacity"
  type        = string
  default     = "20"
}

variable "write_capacity" {
  description = "Write copacity"
  type        = string
  default     = "20"
}

variable "table_name" {
  description = "Table name"
  type        = string
  default     = "Terraform State DynamoDB session lock"
}