# 🔐 DevSecOps Pipeline Playground

Production-ready **DevSecOps CI/CD pipeline** built with Jenkins, Docker, and open-source security tooling.  
Designed for **security-first CI/CD**, portfolio presentation, and technical interviews.

---

## 📌 Project Overview

This project demonstrates a fully working **DevSecOps pipeline** that integrates security controls directly into the CI/CD process.  
It covers **build, test, linting, container security scanning, and artifact reporting**, following real-world DevSecOps best practices.

The pipeline is intentionally designed to be:
- ✅ Interview-ready
- ✅ Easy to explain stage-by-stage
- ✅ Runnable locally with Jenkins + Docker
- ✅ Clean, readable, and security-focused

---

## 🎯 Objectives

- Build a realistic Jenkins CI/CD pipeline
- Integrate **security scanning early (shift-left security)**
- Enforce quality and security gates
- Generate machine-readable and human-readable security reports
- Demonstrate DevSecOps mindset (not just tools)

---

## 🧱 Pipeline Stages

1. **Prepare Workspace**
   - Clean workspace
   - Prepare report directories

2. **Build Docker Image**
   - Build application image using hardened Dockerfile
   - Reproducible, deterministic builds

3. **Run Unit Tests**
   - Execute `pytest` inside container
   - Export JUnit XML test reports to Jenkins

4. **Dockerfile Linting (Hadolint)**
   - Static analysis of Dockerfile
   - Best practices and security warnings

5. **Container Vulnerability Scan (Trivy)**
   - Scan image for vulnerabilities
   - Severity-based control (CRITICAL / HIGH)
   - HTML security report generation

6. **Docker Push (Conditional)**
   - Executed only if security gates pass
   - Prevents insecure images from being published

---

## 🔐 Security Focus Areas

- Shift-left security in CI/CD
- Container vulnerability scanning
- Dockerfile best practices
- Severity-based vulnerability gating
- Secure-by-default pipeline behavior
- Clear separation between **fail**, **warn**, and **pass** states

---

## 🧪 Security Proof & Evidence

The repository includes **proof artifacts** to demonstrate security improvements and iterations:

