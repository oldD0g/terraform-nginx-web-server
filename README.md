# Introduction

This is a Terraform build for a simple Nginx server on a Linux instance
in Azure.

The instance runs on Ubuntu 22.04 LTS "Jammy".

Cloud-init is used to install Docker and run an Nginx container, with a simple
test file dropped in to test content.

See http://<publicIP>/stuff.html  to test this build.

There are several cloud-init versions included in this code, with different ones
enabled by un-commenting it in the main.tf file in the instance section.

Once this plan is applied, extract the private key for the Ubuntu Nginx server using:

```
  terraform output tls_private_key  > ubuntu_key
```

Then you can use

```
  ssh -i ubuntu_key azzuser@<public_IP>
```

to log on.

Note that the security group allows only one IP address, if this changes at your ISP
you may need to re-create the instance with an updated security group.

# What is the public IP address of the instance?

This is printed at the end of the "terraform apply", but if you've lost it, use

```
  terraform output nginx_public_ip
```
