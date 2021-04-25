# terraform-container

Workaround for issue:

"Error: Incompatible provider version
│ 
│ Provider registry.terraform.io/hashicorp/template v2.2.0 does not have a package available for your current platform, darwin_arm64."

Since all Terraform providers are not yet available for Mac M1 architecture so they need to be run on different architecture machine or architecture emulation.
Dockerfile is for creating container based on x86-64 Ubuntu image that bundles Terraform and aws-cli and mounts local terraform files and aws credentials/configs.
docker-compose.yml.j2 is jinja2 templated docker-compose for bringing up the container, container will sleep for quite a while, so it need to be killed manually when done with terraform.