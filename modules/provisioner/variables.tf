# Variables
variable "trigger_public_ip" {
  description = "Values that, when changed,will cause the resource to be replaced."
}


variable "public_ip" {
  description = "Instance real IP address"
}

variable "username" {
  description = "Username on instance"
  type        = string
}

variable "private_key_pem" {
  description = "Generated private key"
}
