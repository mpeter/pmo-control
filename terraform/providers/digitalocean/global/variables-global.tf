variable "ssh_keys_public" {
    type    = "map"
    default = {
       rh-pmo-id_rsa = "ssh-keys/rh-pmo-id_rsa.pub"
    }
}

variable "ssh_keys_private" {
    type    = "map"
    default = {
        rh-pmo-id_rsa = "ssh-keys/rh-pmo-id_rsa"
    }
}
