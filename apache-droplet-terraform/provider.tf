provider "digitalocean" {
    token = var.do_token  
}

resource "digitalocean_project" "playground" {
  name        = "terraform_playground"
  description = "A project to represent terraform resources."
  purpose     = "Web Application"
  environment = "Development"
  resources = [
      digitalocean_droplet.web.urn,
      digitalocean_domain.default.urn
  ]
}