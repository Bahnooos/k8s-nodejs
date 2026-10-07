# k8s-nodejs

A simple Node.js web application containerized with Docker and deployed to Kubernetes. This project demonstrates a static landing page served by Express, packaged for container deployment, and exposed through Kubernetes resources such as a Deployment, Service, and Ingress.

## Overview

This repository contains:

- A Node.js/Express application that serves a static HTML landing page
- A Docker image definition for containerizing the app
- Kubernetes manifests for deploying the app in a cluster
- Static assets for the frontend landing page

The app is designed to simulate a web application that can be migrated from a basic local setup into a containerized and Kubernetes-based deployment workflow.

## Project Structure

```text
.
├── app/
│   ├── Dockerfile
│   ├── images/
│   │   ├── career-quiz.png
│   │   ├── devops.png
│   │   ├── devsecops.png
│   │   └── it-beginners.png
│   ├── index.html
│   ├── package-lock.json
│   ├── package.json
│   └── server.js
├── k8s/
│   ├── deployment.yaml
│   ├── ingress.yaml
│   └── service.yaml
├── .gitignore
└── README.md
```

## Application Details

The app uses Express to serve the landing page from `app/index.html` and serves static files from `app/images`.

### Main files

- `app/server.js` – starts the Express server on port 3000
- `app/index.html` – landing page UI with course cards and images
- `app/Dockerfile` – builds the Node.js container
- `k8s/deployment.yaml` – Kubernetes Deployment for the app
- `k8s/service.yaml` – Kubernetes Service to expose the app internally
- `k8s/ingress.yaml` – ingress route for external access

## Prerequisites

Before running locally or building the container, make sure you have:

- Node.js 18+
- npm
- Docker
- A Kubernetes cluster or local Kubernetes environment such as Minikube or kind (for deployment manifests)

## Running Locally

From the `app` directory:

```bash
cd app
npm install
npm start
```

Then open:

```text
http://localhost:3000
```

## Building the Docker Image

From the repository root:

```bash
docker build -t nodejs-backend:v1 ./app
```

Run the container:

```bash
docker run -p 3000:3000 nodejs-backend:v1
```

## Kubernetes Deployment

Apply the manifests in the `k8s` directory:

```bash
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml
kubectl apply -f k8s/ingress.yaml
```

### Deployed resources

- Deployment: `nodejs-deployment`
- Service: `backend-service`
- Ingress: `nodejs-ingress`

## Notes

This project is a simple example of:

- containerizing a small app with Docker
- deploying it on Kubernetes
- exposing it via a Service and Ingress
- serving a static landing page using Node.js and Express

## License

This project is provided for learning and demonstration purposes.
