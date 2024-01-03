# Generate HTTPS Certs via certbot + letsencrypt

`docker-compose up --build`


## Automation
- make `.env` file and `input.tfvars` file
- run
```
set -a && souce .env && set +a
terraform init
terraform plan # double check
terraform apply -var-file="input.tfvars" 
```
- to get certs
```
scp -i <key> -r ubuntu@<ip>:/manual-letsencrypt/letsencrypt-key/live/<domain> .
```
- to tear down
```
terraform destroy
```