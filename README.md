# Introduction

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
