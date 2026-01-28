# 🛡️ Secure Cloud Infrastructure & Attack Simulation

Local **cloud infrastructure security project** built with AWS LocalStack, Terraform, and Ansible.  
Focused on **defensive security, infrastructure hardening, and attack simulation readiness**.  
Designed for **portfolio presentation and security-focused technical interviews**.

---

## 📌 Project Overview

This project demonstrates the **design, provisioning, and security hardening of cloud infrastructure** using a security-first mindset.  
Deployed locally with **AWS LocalStack**, it enables safe experimentation with **VPC, EC2, IAM, and Application Load Balancer (ALB)** without real cloud costs.

---

## 🎯 Objectives

- Design and provision **secure cloud infrastructure**
- Apply **security best practices** (IAM, networking, OS hardening)
- Assess overall **security posture**
- Think from both **defender and attacker perspectives**
- Prepare an environment suitable for **attack simulations**

---

## 🧱 Architecture

### Cloud Infrastructure (LocalStack AWS)
- VPC with **public and private subnets**
- EC2 Linux instances
- Application Load Balancer (ALB)
- Security Groups and Network ACLs
- IAM roles following the **least privilege principle**

### Provisioning & Configuration
- **Terraform** – infrastructure provisioning
- **Ansible** – OS hardening and baseline configuration
- **Docker** – deployment of test services

### Security Tooling
- `auditd` – system auditing and event logging
- `fail2ban` – brute-force attack protection
- SSH hardening:
  - Key-based authentication only
  - Root login disabled

---

## 🔐 Security Focus Areas

- IAM **least privilege access**
- **Network segmentation** (public vs private subnets)
- Secure **Security Group and NACL configuration**
- **SSH hardening and access control**
- **CIS-style Linux hardening**
- Centralized **logging and auditing**

---

## 🛠️ Technology Stack

Terraform | Ansible | AWS LocalStack | Linux (Ubuntu / Amazon Linux) | Docker | auditd | fail2ban | Bash

---

## 🧪 Attack Simulation (Planned)

⚠️ **Note:** Attack simulation phase is planned but not yet implemented.

### Planned Scenarios
- SSH brute-force attempts
- Port scanning using `nmap`
- Exploitation of misconfigured Security Groups
- Local privilege escalation
- Validation of logging and alerting mechanisms

---

## 🚧 Project Status

Infrastructure provisioning and security hardening are **implemented**.  
Attack simulation scenarios are **planned** and will be added in future iterations.

---

## 🎯 Why This Project Matters

This project demonstrates:
- A **defender-first mindset** in cloud infrastructure design
- Practical e
