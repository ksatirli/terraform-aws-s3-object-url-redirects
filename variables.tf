variable "bucket" {
  type        = string
  description = "S3 Bucket to create URL Redirect Object in"
}

variable "urls" {
  type        = map(string)
  description = "List of Maps of Strings with Slug-URL key-values"
}
