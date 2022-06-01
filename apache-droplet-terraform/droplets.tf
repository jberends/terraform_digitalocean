data "digitalocean_ssh_key" "jochem_berends_feb22" {
  name = "jochem_berends_feb22"
}

resource "digitalocean_droplet" "web" {
  image = "ubuntu-20-04-x64"
  name = data.external.droplet_name.result.name
  region = "ams3"
  size = "s-1vcpu-1gb"
  ssh_keys = [
      data.digitalocean_ssh_key.jochem_berends_feb22.id
    ]

  connection {
    host = self.ipv4_address
    user = "root"
    type = "ssh"
    private_key = file(var.private_key)
    timeout = "2m"
  }

  provisioner "remote-exec" {
    inline = [
      "export PATH=$PATH:/usr/bin",
      # Install Apache
      "apt update",
      "apt -y install apache2"
    ]
  }
}