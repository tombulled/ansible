# Static IP

To configure a static IP:

```console
$ cat /etc/netplan/01-netcfg.yaml
network:
  version: 2
  renderer: networkd
  ethernets:
    eth0:
      dhcp4: no
      addresses:
        - 10.0.1.251/24
      routes:
        - to: default
          via: 10.0.1.1
      nameservers:
          addresses: [10.0.1.253]
```

Then:

```console
$ sudo netplan apply
```

# Sudo without password

To enable sudo without a password, create a file such as the following:

```console
$ sudo ls -l /etc/sudoers.d/90-cloud-init-users
-r--r----- 1 root root 152 Apr 19  2022 /etc/sudoers.d/90-cloud-init-users
$ sudo cat /etc/sudoers.d/90-cloud-init-users
# Created by cloud-init v. 22.1-14-g2e17a0d6-0ubuntu1~22.04.5 on Tue, 19 Apr 2022 10:12:39 +0000

# User rules for ubuntu
ubuntu ALL=(ALL) NOPASSWD:ALL
```
