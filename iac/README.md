
```bash
terraform init
terraform validate
terraform plan
terraform apply
```

```bash
terraform init
terraform validate
terraform plan -var-file="dev.tfvars"
terraform apply -var-file="dev.tfvars"
```

```bash
rm -rf .terraform
rm .terraform.lock.hcl
```