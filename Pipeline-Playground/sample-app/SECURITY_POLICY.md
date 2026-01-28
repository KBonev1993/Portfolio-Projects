# 🔐 Security Policy – CI/CD Gates

This project enforces security controls in the CI/CD pipeline to prevent insecure artifacts from progressing further in the delivery process.

## Container Image Policy
| Severity | Action |
|--------|--------|
| CRITICAL | Block build |
| HIGH | Block build |
| MEDIUM | Allow |
| LOW | Allow |

Rationale: High and Critical vulnerabilities represent unacceptable risk for production deployments.

## Tools Enforcing This Policy
- Trivy (Container image scanning)
- Hadolint (Dockerfile linting)

