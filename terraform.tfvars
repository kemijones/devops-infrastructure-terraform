region                        = "eu-west-2"
key_name                      = "production"
ami_name_filter               = "ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"
ami_owner                     = "099720109477"
instance_type                 = "t2.medium"
jenkins_instance_name         = "Jenkins"
terraform_instance_name       = "Terraform"
maven_sonarqube_instance_name = "Maven-SonarQube"
associate_public_ip_address   = true
bucket_name_prefix            = "djtech"
versioning                    = "Enabled"
repository_name               = "my-repo"
tags = {
  Name        = "djtech"
  Environment = "dev"
}
ingress_rules = [
  {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  },
  {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  },
  {
    from_port   = 9000
    to_port     = 9000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
]

egress_rules = [
  {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
]

dynamodb_table_name     = "finance-state-locking"
dynamodb_read_capacity  = 20
dynamodb_write_capacity = 20
vpc_cidr                = "10.0.0.0/16"
public_subnet_cidrs     = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
availability_zones      = ["eu-west-2a", "eu-west-2b", "eu-west-2c"]
domain_name             = "djtechapp.com"
route53_zone_id         = "Z0961592DEIL29P6DCYL"
vpc_name                = "djtech-vpc"
private_subnet_cidrs    = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
