
# Project LittleApp

Flask app designed to demonstrate a CI/CD pipeline using GitHub Actions, Terraform, Azure Container Registry (ACR), and Azure Container Instances (ACI).

## Prerequisites

An Azure account with an active subscription.
The Azure CLI installed on your local machine.
Docker installed on your local machine.
Python installed on your local machine.
Terraform installed on your local machine.

## Overview

This project includes a simple Flask application (`app.py`) that returns a welcome message. Application is containerized using Docker, the infrastructure required to deploy the application on Azure is managed using Terraform. The CI/CD pipeline is implemented using GitHub Actions, which automates the processes of building the Docker image, pushing it to Azure Container Registry, and deploying the application using Azure Container Instances.

## Repository Structure

- `.github/workflows/ci-cd-pipeline.yml`: GitHub Actions workflow for CI/CD.
- `app.py`: Flask application.
- `Dockerfile`: Dockerfile for building the application's container image.
- `requirements.txt`: Python dependencies.
- `terraform/`:  Terraform configuration files for provisioning Azure resources.

## Setting Up

### Configuring GitHub Secrets

In GitHub repository add the following secrets:

- `AZURE_CREDENTIALS`: JSON output from creating the Service Principal.
- `ARM_CLIENT_ID`: The `appId` from the JSON output.
- `ARM_CLIENT_SECRET`: The `password` from the JSON output.
- `ARM_SUBSCRIPTION_ID`:  Azure subscription ID.
- `ARM_TENANT_ID`: The `tenant` from the JSON output.
- `ACR_NAME`: name of your Azure Container Registry.

## Deploying with CI/CD

The CI/CD pipeline is triggered on every push to the `main` branch. It performs the following steps:

1. Checks out the repository.
2. Sets up Azure CLI and configures credentials.
3. Sets up Terraform and executes the Terraform scripts to provision Azure resources.
4. Builds the Docker image and pushes it to Azure Container Registry.
5. Deploys the container image to Azure Container Instances.
6. Optionally, cleans up the Terraform-managed resources.

## Accessing the Application

After deployment, the public IP address of the container instance is output by Terraform. 