output "ip_addresses" {
  value = {
      for instance in digitalocean_droplet.test_droplet:
      "ip" => instance.ipv4_address
      if instance.region == "ams3"
  }
}