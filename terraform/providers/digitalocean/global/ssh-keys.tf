variable root {}

resource "digitalocean_ssh_key" "default" {
    name = "${element(keys(var.ssh_keys_public), count.index)}"
    public_key = "${file("${var.root}/${element(values(var.ssh_keys_public), count.index)}")}"
    count = "${length(var.ssh_keys_public)}"
}

output "ssh_keys" {
    value = "${
    map(
        "name", digitalocean_ssh_key.default.*.name,
        "id", digitalocean_ssh_key.default.*.id,
        "public_key", digitalocean_ssh_key.default.*.public_key
    )}"
}
output "private_keys" {
    value = "${var.ssh_keys_private}" // ugly and bad
}

#lookup(var.ssh_keys_public, count.index)
#"private_key", element(${var.ssh_keys_private, count.index)}
