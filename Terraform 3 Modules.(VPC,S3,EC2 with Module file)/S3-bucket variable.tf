variable "my_bucket" {
  default = "my-bucket-frequent-logs-2025-main-3-jan"

}

variable "versioning" {
  type    = bool
  default = true

}

variable "tags" {
  type = map(any)
  default = {
    environment = "Dev"
    terraform   = "true"
  }
}
