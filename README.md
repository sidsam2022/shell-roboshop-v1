# RoboShop - Automated Microservices Deployment via Shell Scripting

An end-to-end automated infrastructure provisioning and configuration pipeline for **RoboShop** (a 3-tier e-commerce application) built using **Linux Bash scripting** and the **AWS CLI**. 

---

## Project Overview
This repository contains modular shell scripts designed to automate the deployment of microservices and their underlying infrastructure on AWS EC2 (RHEL 9). It handles everything from dynamic AWS resource creation and Route 53 DNS mapping to dependency installations, service configurations, and database seeding.

---

## Architecture & Component Stack
* **Compute:** AWS EC2 (`t3.micro`) instances
* **Automation & Scripting:** Linux Bash, DNF, Systemd
* **Cloud & Networking:** AWS CLI, Route 53, Security Groups (Default VPC)
* **Databases & Middlewares:** 
  * MongoDB (Catalogue & User services)
  * Redis (Caching / Cart)
  * MySQL (Shipping service)
  * RabbitMQ (Payment queuing)

---

## Repository Structure

```text
├── 01-mongodb.sh          # MongoDB server installation & configuration
├── 02-redis.sh            # Redis caching server setup
├── 03-mysql.sh            # MySQL relational database setup
├── 04-rabbitmq.sh         # RabbitMQ message broker installation
├── 05-catalogue.sh        # Catalogue microservice deployment & seeding
├── 06-user.sh             # User microservice setup
├── 07-cart.sh             # Cart microservice setup
├── 08-shipping.sh         # Shipping microservice configuration
├── 09-payment.sh          # Payment microservice setup
├── 10-frontend.sh         # Nginx frontend configuration & routing
├── roboshop-v1updated.sh  # Master AWS EC2 provisioning & Route 53 script
└── *.service / *.repo     # Systemd service files and repository configs
