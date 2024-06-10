
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

```bash
cd sqlineage/iac
export ARM_ACCESS_KEY=STORAGEACCOUNTACCESKEYHERE
terraform init -backend-config="storage_account_name=sttfsqlindev001" -backend-config="container_name=terraform-state" -backend-config="key=terraform.tfstate" -backend-config="access_key=$ARM_ACCESS_KEY"
terraform plan -var-file="dev.tfvars"
```

```bash
cd sqlineage/iac
export ARM_ACCESS_KEY=STORAGEACCOUNTACCESKEYHERE
terraform init -backend-config="storage_account_name=sttfsqlintest001" -backend-config="container_name=terraform-state" -backend-config="key=terraform.tfstate" -backend-config="access_key=$ARM_ACCESS_KEY"
terraform plan -var-file="test.tfvars"
```

```bash
cd sqlineage/iac
export ARM_ACCESS_KEY=STORAGEACCOUNTACCESKEYHERE
terraform init -backend-config="storage_account_name=sttfsqlindev001" -backend-config="container_name=terraform-state" -backend-config="key=terraform.tfstate" -backend-config="access_key=$ARM_ACCESS_KEY"
terraform apply -var-file="dev.tfvars" -auto-approve
```

```bash
cd sqlineage/iac
export ARM_ACCESS_KEY=STORAGEACCOUNTACCESKEYHERE
terraform init -reconfigure -backend-config="storage_account_name=sttfsqlintest001" -backend-config="container_name=terraform-state" -backend-config="key=terraform.tfstate" -backend-config="access_key=$ARM_ACCESS_KEY"
terraform apply -var-file="test.tfvars" -auto-approve
```

```bash
cd sqlineage/iac
export ARM_ACCESS_KEY=STORAGEACCOUNTACCESKEYHERE
terraform init -reconfigure -backend-config="storage_account_name=sttfsqlinmain001" -backend-config="container_name=terraform-state" -backend-config="key=terraform.tfstate" -backend-config="access_key=$ARM_ACCESS_KEY"
terraform apply -var-file="main.tfvars" -auto-approve
```