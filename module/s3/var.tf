variable "s3_bucket_name" {
  type        = string
  
}
variable "acl" {
  description = "The Access Control List (ACL) to apply to the S3 bucket"
  type        = string
  default     = "private" 
}
