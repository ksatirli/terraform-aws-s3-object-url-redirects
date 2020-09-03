# Terraform Module: AWS S3 Object URL Redirects

> Terraform Module for managing AWS S3 Objects for URL redirects.

## Table of Contents

- [Terraform Module: AWS S3 Object URL Redirects](#terraform-module-aws-s3-object-url-redirects)
  - [Table of Contents](#table-of-contents)
  - [Requirements](#requirements)
  - [Dependencies](#dependencies)
  - [Usage](#usage)
    - [Inputs](#inputs)
    - [Outputs](#outputs)
  - [Author Information](#author-information)
  - [License](#license)

## Requirements

This module requires Terraform version `0.13.0` or newer.

## Dependencies

This module depends on a correctly configured [AWS Provider](https://www.terraform.io/docs/providers/aws/index.html) in your Terraform codebase.

## Usage

Add the module to your Terraform resources like so:

```hcl
variable "urls" {
  type        = map(string)
  description = "List of Maps of Strings with Slug-URL key-values"
  default = {
    "home"    = "https://example.com/"
    "console" = "https://console.example.com/"
  }
}

module "url_redirects" {
  source  = "operatehappy/s3-object-url-redirects/aws"
  version = "1.0.0"

  bucket = "redirect-bucket"
  urls   = var.urls
}
```

Then, fetch the module from the [Terraform Registry](https://registry.terraform.io/modules/operatehappys3-object-url-redirects) using `terraform get`.

Additional usage examples are available in the `examples` directory via [GitHub](https://github.com/operatehappy/terraform-aws-s3-object-url-redirects/tree/master/examples).

### Inputs

| Name | Description | Type | Default |
|------|-------------|------|---------|
| bucket | S3 Bucket to create URL Redirect Object in | `string` | n/a |
| urls | List of Maps of Strings with Slug-URL key-values | `map(string)` | n/a |

## Author Information

This module is maintained by the contributors listed on [GitHub](https://github.com/operatehappy/terraform-aws-s3-object-url-redirects/graphs/contributors).

Development of this module was sponsored by [Operate Happy](https://github.com/operatehappy).

## License

Licensed under the Apache License, Version 2.0 (the "License").

You may obtain a copy of the License at [apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0).

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an _"AS IS"_ basis, without WARRANTIES or conditions of any kind, either express or implied.

See the License for the specific language governing permissions and limitations under the License.
