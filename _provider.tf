# ENV VAR: https://www.terraform.io/docs/commands/environment-variables.html

variable "digitalocean_token" {}

# Configure the DigitalOcean Provider
provider "digitalocean" {
  token = "${var.digitalocean_token}"
}

