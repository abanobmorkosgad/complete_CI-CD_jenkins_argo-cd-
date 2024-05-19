# DevOps Project with Jenkins, SonarQube, EKS, ArgoCD

This project demonstrates a complete DevOps pipeline using Jenkins, SonarQube, Amazon EKS, and ArgoCD. The pipeline includes code quality checks, building and deploying a Java Maven application.

## Project Overview

1. *Jenkins*: CI/CD pipeline setup on AWS EC2.
2. *SonarQube*: Code quality checks on AWS EC2.
3. *EKS Cluster*: Kubernetes cluster with 2 nodes on AWS.
4. *ArgoCD*: GitOps continuous delivery tool for Kubernetes.

## Project Workflow

1. *Setup Jenkins* on AWS EC2 instance.
2. *Setup SonarQube* on a separate AWS EC2 instance.
3. *Deploy EKS Cluster* with 2 nodes.
4. *Deploy ArgoCD* on EKS using operators.
5. *Jenkins Pipeline*:
   - Run pipeline in Docker container as agent.
   - Check code quality using SonarQube.
   - Build application and create Docker image using Dockerfile.
   - Push Docker image to Docker Hub.
   - Edit Kubernetes deployment file with the new image and push to GitHub repo.
6. *ArgoCD*:
   - Sync with GitHub repo.
   - Deploy the Java Maven application.

## Prerequisites

- AWS account with necessary permissions.
- Docker installed on your local machine.
- Jenkins installed on AWS EC2.
- SonarQube installed on AWS EC2.
- EKS cluster with kubectl and aws-cli configured.
- ArgoCD installed on EKS.
