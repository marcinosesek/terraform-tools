terraform {
  backend "s3" {
      bucket = "mosesek-terraform-bucket"
      key = "provision-software/"
  }
}
