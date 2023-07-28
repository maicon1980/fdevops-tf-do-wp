terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~>2.0.0"
    }
  }
}

provider "digitalocean" {
  token = var.do_token
}

module "wp_stack" {
  source  = "maicon1980/wp/digitalocean"
  region      = var.region
  wp_vm_count = var.wp_vm_count
  vms_ssh     = digitalocean_ssh_key.ssh.fingerprint
}

resource "digitalocean_ssh_key" "ssh" {
  name       = "sop-pc"
  public_key = file("~/.ssh/tf-digitalocean.pub")
}

