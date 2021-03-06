# Creating a new domain
# https://www.terraform.io/docs/providers/do/r/record.html

resource "digitalocean_domain" "claudio_domain" {
  name = "claud.dev"
}

# Add a record to the domain
resource "digitalocean_record" "www" {
  domain = "${digitalocean_domain.claudio_domain.name}"
  type   = "A"
  name   = "resume"
  ttl    = "10"
  value  = "${digitalocean_droplet.web.ipv4_address}"
}

