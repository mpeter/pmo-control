variable name { default = "" }
variable path { default = "" }



output "id" { value = "${digitalocean_ssh_key.default.id}" }
output "public_key" { value = "${digitalocean_ssh_key.default.public_key}" }
output "fingerprint" { value = "${digitalocean_ssh_key.default.fingerprint}" }
