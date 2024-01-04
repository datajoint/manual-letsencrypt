# Manual Letsencrypt
This repo has been created historically to generate letsencrypt certs for a domain, and then it has been used only for the purpose of keeping a secured domain(fakeservices.datajoint.io) for internal development.

Previously to get the letsencrypt certs, you need to:
- Create an EC2 instance, create a Route 53 record to point to the instance
- SSH into the instance, install docker, clone this repo, start docker compose to get the certs
- Delete the Route 53 record
- When renewing certs, you need to repeat the above steps(the instance can be kept and stopped)

Since this is a repeating manual process, we want to automate it by using terraform(the above manual step still works).
- In the `terraform` directory, make `.env` file and `input.tfvars` file from the example files
- run
```
set -a && souce .env && set +a
terraform init
terraform plan # double check
terraform apply -var-file="input.tfvars" 
# enter yes
```
- to get certs
```
scp -i <key> -r ubuntu@<ip>:/manual-letsencrypt/letsencrypt-key/live/<domain> .
```
- to tear down(please don't forget to do this)
```
terraform destroy -var-file="input.tfvars" 
# enter yes
```