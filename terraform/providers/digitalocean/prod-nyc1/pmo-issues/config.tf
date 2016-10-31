#
variable do_token {}

provider "digitalocean" {
  token = "${var.do_token}"
}

data "terraform_remote_state" "global" {
    backend = "local"
    config {
        path = "${path.module}/../../global/terraform.tfstate"
    }
}