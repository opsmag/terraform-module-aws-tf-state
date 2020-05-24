resource "aws_s3_bucket" "s3_bucket" {
  bucket = "${var.infrastructure}-${var.environment}-${var.region}-terraform-state"
  acl    = var.acl

  versioning {
    enabled = var.versioning_enabled
  }

  tags = {
    Name        = var.name
    Environment = var.environment
  }
}

resource "aws_dynamodb_table" "dynamodb_table" {
  name           = "${var.infrastructure}-${var.environment}-${var.region}-terraform-state"
  hash_key       = var.key_name
  read_capacity  = var.read_capacity
  write_capacity = var.write_capacity

  attribute {
    name = var.key_name
    type = var.key_type
  }

  tags = {
    Name        = var.table_name
    Environment = var.environment
  }
}