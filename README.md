### Terraform Bootcamp
> learning terraform

Installation
> Go to https://www.terraform.io/ 

*Copy link address for the Linux download*

In the command line download the package
```
$ wget https://releases.hashicorp.com/terraform/0.11.13/terraform_0.11.13_linux_amd64.zip
```
unzip file
```
$ apt-get install unzip
$ unzip terraform_0.11.13_linux_amd64.zip
```
Create a folder called downloads and move terraform binary there
```
$ mkdir downloads
$ mv terraform downloads/
```
delete zip
```
$ rm terraform_0.11.13_linux_amd64.zip
```
Add `downloads/` in `$PATH` in `.profile` and soucre `.profile`
```
PATH="$HOME/downloads:$PATH"
source .profile
```
Test terraform
```
$ terraform
```
test