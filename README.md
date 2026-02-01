# 🚀 Project: Old Laptop to Self-Healing Private Cloud Infrastructure
**Role: Cloud & Platform Engineering Lab**

This repository documents my journey of converting a decades-old laptop into a resilient, globally accessible private cloud. [cite_start]This is not just a hobby project; it is a hands-on implementation of the **Cloud → Platform → MLOps** engineering track[cite: 3, 269].

---

## 🏗 Phase 1: Bare-Metal to Linux OS
The goal was to build a lightweight foundation. I chose **DietPi** (Debian-based) for its minimal resource footprint, which is crucial for maximizing hardware life.

**Challenges faced during installation:**
- **Network Interface Drivers:** Fixing Wi-Fi connectivity via CLI.
- [cite_start]**System Hardening:** Initial setup of SSH and basic Linux permissions[cite: 167, 188, 271].

---

## ☁️ Phase 2: Cloud Services Deployment
I deployed a suite of services to handle data, communication, and management:
- **Nextcloud:** For private data storage and sync.
- **Matrix Synapse:** A decentralized, secure messaging server.
- **File Browser:** Lightweight file management utility.

---

## 🔒 Phase 3: Zero-Trust Networking & Security
[cite_start]A critical part of **Platform Engineering** is secure access[cite: 173]. I avoided risky port forwarding and implemented **Tailscale Funnels**.

### The "Port Mapping" Battle:
- **Problem:** Standard SSL ports (9443) were blocked or caused timeouts. 
- **Solution:** I performed a "Port Shift," re-mapping internal traffic from Port 8099 to a global Tailscale endpoint on Port 10000.
- [cite_start]**Concept:** This implemented a **Zero-Trust** architecture where no service is directly exposed to the open internet[cite: 162, 272].

---

## 🤖 Phase 4: Automation & Self-Healing (The Engineering Core)
Manual process management is not scalable. [cite_start]To move toward a **Platform Engineer** role, I transitioned from manual execution to **Systemd Automation**[cite: 166, 274, 283].

### Systemd Implementation:
I wrote a custom service unit to ensure high availability.
```ini
[Service]
ExecStart=/opt/filebrowser/filebrowser -a 0.0.0.0 -p 8099 -d /mnt/path/to/db
Restart=always
RestartSec=10

````

---

## 🧩 Phase 5: Troubleshooting Diary (Log Analysis)

This phase demonstrates real-world **Cloud Support & Infrastructure Troubleshooting** through incident-driven debugging.

### 🚨 The 502 Bad Gateway Crisis

**Discovery**

* Inspected real-time logs using:

  ```bash
  journalctl -u filebrowser -f
  ```
* Identified repeated timeout errors causing HTTP 502 responses

**Root Cause**

* A **SQLite database deadlock** caused by multiple orphaned (“ghost”) processes accessing the database concurrently

**Resolution**

* Implemented a cleanup routine using `pkill`
* Reset the database state to clear lock contention
* Result: stable service recovery with no recurring gateway errors

---

## 📊 Resource Monitoring & Performance Analysis

* Monitored CPU and RAM usage using `htop`
* Stress-tested the system during heavy **Nextcloud upload workloads**
* Key insights:

  * Identified hardware bottlenecks
  * Determined practical scaling limits
  * Informed future optimization and containerization strategy

---

## 📈 Future Roadmap (2026–2035 Alignment)

Planned evolution toward a production-grade Platform Engineering stack:

* [ ] **Dockerization**
  Migrate all services into containers for better isolation and portability

* [ ] **Infrastructure as Code (IaC)**
  Manage infrastructure declaratively using **Terraform**

* [ ] **MLOps Pipeline**
  Deploy a lightweight AI/ML model using this infrastructure as the backend

---

## 🧠 Key Takeaways

* Designed and operated a **self-healing private cloud** on constrained hardware
* Applied **Zero-Trust security principles** without public port exposure
* Demonstrated production-style **incident response and root-cause analysis**
* Built a scalable foundation aligned with **Cloud → Platform → MLOps** career progression

💡 *This project reflects real-world problem solving, not tutorials or simulations.*
