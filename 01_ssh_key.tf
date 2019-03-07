#
# Exporting our SSH key
# https://www.terraform.io/docs/providers/do/r/ssh_key.html
# ENV VAR: https://www.terraform.io/docs/commands/environment-variables.html

resource "digitalocean_ssh_key" "claudio" {
  name       = "claudio"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}

