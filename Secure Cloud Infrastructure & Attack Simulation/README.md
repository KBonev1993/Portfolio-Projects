🛡️ Secure Cloud Infrastructure & Attack Simulation

Infrastructure security project using AWS (LocalStack), Terraform, Ansible, and Linux hardening practices

📌 Project Overview

This project demonstrates the design, provisioning, and security hardening of a cloud-based infrastructure, with a strong focus on defensive security and security best practices.

The infrastructure is deployed locally using AWS LocalStack, allowing safe experimentation with AWS services such as VPC, EC2, IAM, and ALB without real cloud costs.

🎯 Objectives

The main goals of this project are to demonstrate the ability to:

Design and provision secure cloud infrastructure

Apply security best practices (IAM, networking, OS hardening)

Assess security posture

Think from both defender and attacker perspectives

Prepare an environment suitable for attack simulations

🧱 Architecture

Cloud Provider (LocalStack AWS):

VPC with public and private subnets

EC2 Linux instances

Application Load Balancer (ALB)

Security Groups and Network ACLs

IAM roles with least privilege access

Provisioning & Configuration:

Terraform – infrastructure provisioning

Ansible – operating system hardening

Docker – test services deployment

Security Tooling:

auditd – system auditing

fail2ban – brute-force protection

SSH hardening (key-based authentication, root login disabled)

🔐 Security Focus Areas

IAM least privilege principle

Network segmentation (public vs private subnets)

Secure Security Group and NACL configuration

SSH hardening and access control

CIS-style Linux hardening

Logging and auditing

🛠️ Technology Stack

Terraform

Ansible

AWS (LocalStack)

Linux (Ubuntu / Amazon Linux)

Docker

auditd

fail2ban

Bash

🧪 Attack Simulation (Planned)

⚠️ Note: The attack simulation phase is planned but not yet implemented.

Planned attack scenarios include:

SSH brute-force attempts

Port scanning using nmap

Exploitation of misconfigured Security Groups

Local privilege escalation attempts

Validation of logging and alerting mechanisms

This phase will be used to validate the effectiveness of the implemented security controls.
