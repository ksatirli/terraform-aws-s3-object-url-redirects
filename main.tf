resource "aws_s3_bucket_object" "redirects" {
  for_each = var.urls

  bucket           = var.bucket
  key              = each.key
  content          = "<meta http-equiv=\"refresh\" content=\"0; url=${each.value}\" />"
  content_type     = "text/html"
  acl              = "public-read"
  website_redirect = each.value
}
