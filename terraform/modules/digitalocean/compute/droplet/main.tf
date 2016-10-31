variable image {
  default = ""
}

variable name {
  default = ""
}

variable region {
  default = ""
}

variable size {
  default = "512mb"
}

variable backups {
    default = false
}

variable ipv6 {
    default = false
}

variable private_networking {
    default = true
}

variable ssh_keys {
    default = []
}

variable private_key {
    default = "~/.ssh/id_rsa"
}

variable user { default = "root" }

variable tags {
    default = []
}

variable user_data {
    default = ""
}

variable volume_ids {
    default = []
}

resource "digitalocean_droplet" "default" {
  image              = "${var.image}"
  name               = "${var.name}"
  region             = "${var.region}"
  size               = "${var.size}"
  backups            = "${var.backups}"
  ipv6               = "${var.ipv6}"
  private_networking = "${var.private_networking}"
  ssh_keys           = ["${var.ssh_keys}"]
  tags               = "${var.tags}"
  user_data          = "${var.user_data}"
  volume_ids         = "${var.volume_ids}"
}

output "id" {
  value = "${digitalocean_droplet.default.id}"
}
