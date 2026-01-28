🛡️ Secure Cloud Infrastructure & Attack Simulation

Infrastructure security project using AWS (LocalStack), Terraform, Ansible, and Linux hardening practices.

📌 Project Overview

This project demonstrates the design, provisioning, and security hardening of cloud-based infrastructure, focusing on defensive security and best practices.
Deployed locally with AWS LocalStack, it allows safe experimentation with services like VPC, EC2, IAM, and ALB without real cloud costs.

🎯 Objectives

Design and provision secure cloud infrastructure

Apply security best practices (IAM, networking, OS hardening)

Assess security posture

Think from both defender and attacker perspectives

Prepare an environment suitable for attack simulations

🧱 Architecture

Cloud Provider (LocalStack AWS): VPC with public and private subnets, EC2 Linux instances, Application Load Balancer (ALB), Security Groups and Network ACLs, IAM roles with least privilege access
Provisioning & Configuration: Terraform (infrastructure provisioning), Ansible (OS hardening), Docker (test services deployment)
Security Tooling: auditd (system auditing), fail2ban (brute-force protection), SSH hardening (key-based authentication, root login disabled)

🔐 Security Focus Areas

IAM least privilege principle, network segmentation (public vs private subnets), secure Security Group and NACL configuration, SSH hardening and access control, CIS-style Linux hardening, logging and auditing

🛠️ Technology Stack

Terraform, Ansible, AWS (LocalStack), Linux (Ubuntu / Amazon Linux), Docker, auditd, fail2ban, Bash

🧪 Attack Simulation (Planned)

⚠️ Note: Attack simulation phase is planned but not yet implemented.
Planned scenarios: SSH brute-force attempts, port scanning with nmap, exploitation of misconfigured Security Groups, local privilege escalation, validation of logging and alerting mechanisms.
