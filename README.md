# GCP Challenge Labs
## This is a repo to store the knowledge of some of the terraform labs from Google Cloud - Cloud Architect Training. 

This terraform infrastructure configuration files creates: 
- 2 instances (tf-instance-1 and 2)
- 1 VPC (network) with 2 subnets (subnet-01 and 02)
- 1 Google Cloud Storage Bucket (used for terraform state storing, remotly)
- 1 firewall rule to allow ingress tcp:80 

# Notes
Also note that it was needed to reduce the version of hashicorp provider, in order to proceed in the lab and terraform commands. 
Originally I was using the 4.18 (April 2022) version

# Future 
This will be used to create some other infrastructure for other personal projects; 

# To Do
- improve the terraform code, and
- follow terraform best practices
