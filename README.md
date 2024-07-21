# Coworking Space Service Extension
The Coworking Space Service is a set of APIs that enables users to request one-time tokens and administrators to authorize access to a coworking space. This service follows a microservice pattern and the APIs are split into distinct services that can be deployed and managed independently of one another.

For this project, you are a DevOps engineer who will be collaborating with a team that is building an API for business analysts. The API provides business analysts basic analytics data on user activity in the service. The application they provide you functions as expected locally and you are expected to help build a pipeline to deploy it in Kubernetes.

## Getting Started
1. Setup EKS Cluster
- Create EKS cluster
- Create EKS role on IAM
- Create Node Groups
- Create EKS role group on IAM 
- Update aws configure cli matching with account aws provided

2. Configure database (Postgres)
- Create pvc.yaml file
- Create pv.yaml file
- Create postgresql-deployment.yaml
- Create postgresql-service.yaml
- Run kubectl apply -f pvc.yaml
- Run kubectl apply -f pv.yaml
- Run kubectl apply -f postgresql-deployment.yaml
- Run kubectl apply -f postgresql-service.yaml

3. Build the Analytics Application Locally
- Setup Flask python application & run it locally

4. Deploy the Analytics Application
- Dockerized the application
- Set up Continuous Integration with CodeBuild
- Deploy the Application with Config Map(configmap.yaml), Secret(secret.yaml), Deployment file(coworking.yaml)

5. Setup CloudWatch Logging
- Use log groups feature in AWS CloudWatch / Logs.
