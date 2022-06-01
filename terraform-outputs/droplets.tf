resource "digitalocean_droplet" "web" {
  count  = 3
  image  = "ubuntu-20-04-x64"
  name   = "test-droplet-${count.index}"
  region = "ams3"
  size   = "s-1vcpu-1gb"
}

output "droplet_ip_addresses" {
  value = digitalocean_droplet.web[*].ipv4_address
}