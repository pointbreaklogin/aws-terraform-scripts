
# **Three-Tier AWS Architecture – Terraform Project**

## **📌 Architecture Diagram**

```md
![Architecture Diagram](three-tier-architecture-1.png)
```

![Architecture Diagram](three-tier-architecture-1.png)

---

# **📝 Overview**

This project deploys a **highly available, secure, and scalable 3-Tier Architecture on AWS** using Terraform.
The architecture includes:

* **Presentation Tier (Public Subnet)** → NGINX (React static hosting)
* **Application Tier (Private Subnet)** → Node.js + PM2
* **Data Tier (Private Subnet)** → Amazon RDS (MySQL)
* Multi-AZ deployment across **Availability Zone A & B**
* Layer-7 load balancing using **Application Load Balancer (ALB)**
* HTTPS termination with SSL

--- 

# **⚙ Technologies Used**

* **Terraform**
* **AWS VPC, EC2, ALB, RDS, Route53, ACM**
* **NGINX**
* **Node.js + PM2**
* **MySQL**

---

# **🔐 Security Design**

| Layer              | Security                                  |
| ------------------ | ----------------------------------------- |
| **Public Subnet**  | Only ALB + NGINX exposed to internet      |
| **Private Subnet** | Node.js app accessible only from NGINX SG |
| **DB Subnet**      | MySQL accessible only from Application SG |
| **No public IPs**  | For backend + DB tiers                    |
| **NAT Gateway**    | Safe outbound internet access             |

---

# **🔁 Request Flow**

1. User accesses **[https://yourdomain.com](https://yourdomain.com)**
2. Route53 → ALB
3. ALB routes to **NGINX (Public Subnet)**
4. NGINX serves UI and forwards API requests to **Node.js (Private Subnet)**
5. Node.js connects to **RDS MySQL**
6. Response goes back through same path

---


# **📦 Features**

* Multi-AZ High Availability
* Secure Public + Private Subnet Architecture
* Automated backend and frontend deployment
* Backend process manager (PM2)
* Encrypted database connections
* Scalable ALB front-end

---

