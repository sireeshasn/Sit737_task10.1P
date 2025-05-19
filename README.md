
# Sit737_task10.1P

---

## ✅ Overview

This report documents the deployment and monitoring of a simple Node.js microservice containerized using Docker, orchestrated via Kubernetes, and hosted on Google Cloud Platform (GCP). The application includes enhanced logging via Winston and is monitored using GCP’s Stackdriver Monitoring and Logging (now called Cloud Monitoring and Logging).

---

## ⚙️ Tools & Technologies Used

| Tool/Platform            | Usage                                      |
|--------------------------|--------------------------------------------|
| Node.js + Express        | REST API backend                           |
| Winston Logger           | Application logging                        |
| Docker                   | Containerization of the microservice       |
| Kubernetes (GKE Autopilot) | Cluster management and deployment        |
| Docker Hub               | Hosting Docker image                       |
| Google Cloud Monitoring  | Real-time metrics: CPU, memory             |
| Google Cloud Logging     | Log analysis and debugging (Winston logs)  |

---

## 📦 Application Summary

A Node.js-based microservice exposes three endpoints:

- `/power?num1=2&num2=3` – Exponentiation
- `/sqrt?num=16` – Square root
- `/modulo?num1=10&num2=3` – Modulo operation

Logs are handled via Winston and sent to standard output for visibility in GCP Log Explorer.

---

## 🚀 Deployment Steps

### 1. Dockerization
- Wrote a `Dockerfile` based on `node:18-alpine`.
- Used `.dockerignore` to exclude unnecessary files.
- Built and pushed image to Docker Hub:  
  `sireeshasn/enhanced-calculator:latest`

### 2. Kubernetes Deployment
- Created `deployment.yaml` and `service.yaml`.
- Deployed to GKE Autopilot cluster in region `australia-southeast1` using:
  ```bash
  kubectl apply -f deployment.yaml
  kubectl apply -f service.yaml
>>>>>>> 008e9f09bc89631ef7708ea948173d6c7842c5a5
