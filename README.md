# Self-Hosted n8n Automation Platform on AWS EC2

![AWS](https://img.shields.io/badge/AWS-EC2-orange)
![Docker](https://img.shields.io/badge/Docker-27.x-blue)
![Nginx](https://img.shields.io/badge/Nginx-1.26-green)
![SSL](https://img.shields.io/badge/SSL-Certbot-yellow)
![n8n](https://img.shields.io/badge/n8n-1.x-red)

## Project Overview
This project deploys a secure, self-hosted n8n workflow automation platform on 
AWS EC2 using Docker Compose. Nginx acts as a reverse proxy with SSL/TLS 
encryption provided by Certbot, ensuring secure HTTPS access. The setup provides 
a hardened, high-availability environment for running custom business workflow 
automations.

## Architecture
Internet → HTTPS (443) → Nginx Reverse Proxy → Docker (n8n:5678) → AWS EC2
↑
Certbot SSL
## Tools & Technologies
| Category | Tools |
|---|---|
| Cloud | AWS EC2 |
| Containerization | Docker, Docker Compose |
| Reverse Proxy | Nginx 1.26 |
| SSL/TLS | Certbot (Let's Encrypt) |
| Automation Platform | n8n |
| OS | Ubuntu 22.04 LTS |
| Security | HTTPS, SSL termination |

## Project Structure
n8n-aws-docker-nginx/
├── docker-compose.yml
├── nginx.conf
├── setup.sh
└── README.md

## Workflow
1. AWS EC2 instance launched with Ubuntu 22.04
2. Docker and Docker Compose installed
3. n8n container deployed via Docker Compose
4. Nginx configured as reverse proxy
5. Certbot issues free SSL certificate from Let's Encrypt
6. n8n accessible securely via HTTPS

## Prerequisites
- AWS EC2 instance (t2.micro or higher)
- Ubuntu 22.04 LTS
- A registered domain name pointed to EC2 public IP
- Port 80 and 443 open in Security Group

## How to Run

### Step 1 — Clone the Repository
```bash
git clone https://github.com/sanjayt-1503/n8n-aws-docker-nginx.git
cd n8n-aws-docker-nginx
```

### Step 2 — Update Domain Name
Edit `docker-compose.yml` and `nginx.conf` — replace `your-domain.com` 
with your actual domain name

### Step 3 — Run Setup Script
```bash
chmod +x setup.sh
./setup.sh
```

### Step 4 — Generate SSL Certificate
```bash
sudo certbot --nginx -d your-domain.com
```

### Step 5 — Access n8n
https://your-domain.com
## Security Features
- HTTPS enforced — HTTP redirects to HTTPS automatically
- SSL/TLS certificate auto-renewal via Certbot
- Nginx reverse proxy hides internal port
- Docker volume for persistent n8n data

## Author
**Sanjay T**
- LinkedIn: https://www.linkedin.com/in/sanjay-t-38a5b4331/
- Email: sanjayt06.off@gmail.com
