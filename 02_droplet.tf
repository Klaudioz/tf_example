#
# Creating the droplet
# https://www.terraform.io/docs/providers/do/r/droplet.html

resource "digitalocean_droplet" "web" {
  image     = "ubuntu-18-04-x64"
  name      = "web-1"
  region    = "nyc1"
  size      = "s-1vcpu-1gb"
  user_data = "${file("userdata2.yaml")}"
  ssh_keys  = ["${digitalocean_ssh_key.claudio.fingerprint}"]
}
