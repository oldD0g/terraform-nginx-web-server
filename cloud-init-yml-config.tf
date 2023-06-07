data "cloudinit_config" "server_config" {
  gzip          = true
  base64_encode = true
  part {
    content_type = "text/cloud-config"
    # The initial cloud-init.yml uses mostly runcmd to run a Docker nginx server
    #content = file("cloud-init/cloud-init.yml")
    content = file("cloud-init/cloud-init-non-docker.yml")
  }
}

