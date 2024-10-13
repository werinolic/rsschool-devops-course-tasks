# AWS Terraform Infrastructure Setup

This Terraform project sets up a robust and secure AWS network infrastructure, including:

- **IAM Role:** A role for running github actions
- **VPC (Virtual Private Cloud):** A custom network environment.
- **Public and Private Subnets:** Distributed across multiple Availability Zones for high availability.
- **Internet Gateway:** Enables internet access for public subnets.
- **NAT Configuration:** Provides outbound internet access for private subnets using either a NAT Gateway or a NAT Instance.

## Project Structure

The Terraform project is organized into multiple .tf files for better readability and maintainability:

```
├── 00-backend.tf
├── 01-provider.tf
├── 02-oids.tf
├── 03-iamrole.tf
├── 04-vps.tf
├── 05-subnet.tf
├── 06-gateway.tf
├── 07-routertabel.tf
├── var.tf
└── README.md
```

## File Descriptions

```
00-backend.tf: Create s3 bucket to store terraform 
01-provider.tf: Configures the AWS provider.
02-oids.tf: oids configuration 
03-iamrole.tf github action role
04-vps.tf.tf: Creates the VPC.
05-subnet.tf: Sets up public and private subnets.
06-gateway.tf: Attaches an Internet Gateway to the VPC.
07-routertabel.tf: Configures route tables and their associations.
var.tf: Defines input variables for the configuration.
```

## Deployment Steps

1. Initialize Terraform. Initialize the Terraform working directory. This downloads the necessary provider plugins.

```bash
terraform init
```

2. Validate the Configuration. Ensure that the Terraform files are syntactically valid and internally consistent.

```bash
terraform validate
```

3. Review the Execution Plan. Generate and review an execution plan to see what Terraform will create.

```bash
terraform plan
```

4. Apply the Configuration. Deploy the infrastructure. Terraform will prompt for confirmation before applying changes.

```bash
terraform apply
```

5. Verify the Deployment. After successful execution, Terraform will output relevant information about the deployed resources.


## Cleanup

To destroy all resources created by Terraform, run:

```bash
terraform destroy
```

Optional: To destroy without a confirmation prompt:

```bash
terraform destroy -auto-approve
```

Warning: This action is irreversible and will delete all resources defined in the Terraform configuration.
