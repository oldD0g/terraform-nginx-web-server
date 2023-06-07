data "cloudinit_config" "server_config" {
  gzip          = true
  base64_encode = true
  part {
    content_type = "text/cloud-config"
    #content = file("cloud-init/cloud-init.yml")
    content = file("cloud-init/cloud-init-non-docker.yml")
  }
}

