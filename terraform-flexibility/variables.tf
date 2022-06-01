variable "droplet_names" {
    type = list(string)
    default = ["first", "second", "third", "foureth"]
}

variable "create_droplet" {
  type = bool
  default = true
}