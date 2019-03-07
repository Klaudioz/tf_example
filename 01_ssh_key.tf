#
# Exporting our SSH key
# https://www.terraform.io/docs/providers/do/r/ssh_key.html

resource "digitalocean_ssh_key" "claudio" {
  name       = "claudio"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}

