# Boardgame End-to-End DevOps Project

## About the Project

I worked on deploying a Boardgame Database application on AWS and automating the deployment process using DevOps tools.

I used Terraform for infrastructure provisioning and Jenkins to automate the CI/CD pipeline. The pipeline builds the application, performs code quality and security checks, creates a Docker image, and deploys the application to an Amazon EKS cluster.

I also configured Prometheus, Grafana, and Blackbox Exporter to monitor application availability.

## Application Source Code

The application source code is available here:

[Boardgame Repository](https://github.com/Chaithanya2710/Boardgame)

## Tools Used

- AWS EC2 and Amazon EKS
- Terraform
- Jenkins
- Git and GitHub
- Maven
- SonarQube
- Trivy
- Nexus Repository
- Docker and Docker Hub
- Kubernetes
- Prometheus
- Grafana
- Blackbox Exporter
- Ansible

## CI/CD Pipeline

The Jenkins pipeline follows these steps:

1. Clone the application code from GitHub.
2. Compile and test the application using Maven.
3. Analyze the code using SonarQube.
4. Scan the source code and dependencies using Trivy.
5. Upload the build artifact to Nexus Repository.
6. Build the Docker image.
7. Scan the Docker image using Trivy.
8. Push the image to Docker Hub.
9. Deploy the application to Amazon EKS.

## Infrastructure

I used Terraform to manage the AWS infrastructure required for the project.

The Terraform configuration files are available in the `Terraform/` directory.

## Deployment

The application is deployed to Amazon EKS using Kubernetes Deployment and Service configurations.

The Jenkins pipeline applies the Kubernetes manifest and verifies that the deployment and Service resources are created.

## Monitoring

I configured Prometheus and Grafana for monitoring and used Blackbox Exporter to check the availability of application endpoints.

The monitoring setup includes:

- Prometheus targets and their health status.
- HTTP probes through Blackbox Exporter.
- Application response and probe duration metrics in Grafana.

## What I Learned

- Provisioning AWS infrastructure using Terraform.
- Creating CI/CD pipelines using Jenkins.
- Integrating build, code quality, and security scanning tools.
- Building and pushing Docker images.
- Deploying applications on Kubernetes using Amazon EKS.
- Monitoring application availability using Prometheus, Grafana, and Blackbox Exporter.

