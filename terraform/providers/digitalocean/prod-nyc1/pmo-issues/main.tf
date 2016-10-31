variable root {}

module "issues-compute" {
    source = "../../../../modules/digitalocean/compute/droplet"
    image = "${data.terraform_remote_state.global.centos}"
    name = "issues"
    region = "nyc1"
    size = "2gb"
    backups = false
    ssh_keys = ["${data.terraform_remote_state.global.ssh_keys.id.0}"]
    private_key = "${var.root}/${data.terraform_remote_state.global.private_keys["rh-pmo-id_rsa"]}"
}
