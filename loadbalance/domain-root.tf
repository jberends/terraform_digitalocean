resource "digitalocean_domain" "default" {
   name = "tf.do.ke-works.net"
   ip_address = digitalocean_loadbalancer.www-lb.ip
}