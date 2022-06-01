resource "digitalocean_droplet" "test_droplet" {
  count = var.create_droplet ? 1 : 0
  image = "ubuntu-20-04-x64"
  name = "test_droplet"
  region = "ams3"
  size = "s-1vcpu-1gb"

depends_on = [
  
]

}