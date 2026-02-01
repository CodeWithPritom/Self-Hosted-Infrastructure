# 🌐 Self-Healing Private Cloud Infrastructure
### 🚀 Converting Legacy Hardware into a Zero-Trust Resilient Lab
![Cloud Infrastructure](https://img.shields.io/badge/Infrastructure-as--Code-blueviolet?style=for-the-badge&logo=linux)
![Status](https://img.shields.io/badge/Status-Self--Healing-green?style=for-the-badge)
![Security](https://img.shields.io/badge/Security-Zero--Trust-red?style=for-the-badge)

---

## 📖 Executive Summary
This project is a deep-dive into **Platform Engineering** and **Cloud Infrastructure**. I have converted a 10-year-old laptop into a fully functional, globally accessible, and self-healing private cloud. This lab serves as the foundation for my transition into **MLOps** and **Solution Architecture**.

> **"Turning 'E-Waste' into 'High-Performance Infrastructure'."**

---

## 🛠 Tech Stack & Architecture
| Layer | Technology Used |
| :--- | :--- |
| **OS** | ![DietPi](https://img.shields.io/badge/DietPi-Debian-A22846?logo=debian) (Optimized Linux) |
| **Networking** | ![Tailscale](https://img.shields.io/badge/Tailscale-Zero--Trust-4433FF?logo=tailscale) (Encrypted Tunneling) |
| **Automation** | ![Systemd](https://img.shields.io/badge/Systemd-Service-0078D4) (Self-Healing Logic) |
| **Storage** | ![Nextcloud](https://img.shields.io/badge/Nextcloud-Storage-0082C9?logo=nextcloud) |
| **Communication**| ![Matrix](https://img.shields.io/badge/Matrix-Synapse-000000?logo=matrix) (E2EE Chat) |

---

## 📂 Project Modules (Deep Dives)

### 🤖 [Automation & Self-Healing](./File-Browser-Setup)
**Problem:** Service downtime and manual restarts.
**Solution:** Custom Systemd units with `Restart=always` logic.
- Managed to achieve 99.9% uptime despite hardware reboots.
- Log analysis via `journalctl` for real-time debugging.

### 🔒 [Zero-Trust Networking](./Tailscale-Networking)
**Problem:** ISP-level port blocking and SSL timeouts (502 Bad Gateway).
**Solution:** Port-shifting and Tailscale Funneling.
- Internal Traffic: Port `8099` ➡️ Global Gateway: Port `10000`.
- Implemented **Encrypted Tunnels** bypassing traditional risky Port Forwarding.

### ☁️ [Private Cloud Storage](./Nextcloud-Automation)
- Full-scale implementation of Nextcloud for decentralized data access.
- Integrated local drive mounts into a unified cloud interface.

### 💬 [Matrix Secure Chat](./Matrix-Chat-Server)
- Deployed a decentralized communication server (Synapse).
- End-to-End Encryption (E2EE) for private team communication.

---

## 🛠 The Troubleshooting Diary (Engineering Mindset)
During this journey, I didn't just "install" apps; I solved real infrastructure problems:
1. **The Database Lock Crisis:** Identified SQLite deadlocks in the File Browser database. Solved using process-kill routines and state resets.
2. **The Funnel Conflict:** Debugged 502 Bad Gateway errors by analyzing Tailscale gateway logs and shifting traffic to Port 10000.
3. **Hardware Constraints:** Monitored system health using `htop` to ensure stable performance on legacy CPU/RAM.

---

## 📈 Roadmap: The Path to 2026-2035
- [x] **Phase 1:** Bare-metal Linux & Service Automation. (Current)
- [ ] **Phase 2:** Containerization (Moving to **Docker** & **Docker-Compose**).
- [ ] **Phase 3:** Infrastructure as Code (Managing lab via **Terraform**).
- [ ] **Phase 4:** MLOps (Deploying and Scaling AI Models on this infrastructure).

---

## 🤝 Connect with Me
- **GitHub:** [CodeWithPritom](https://github.com/YourGitHubLink)
- **LinkedIn:** [Your LinkedIn Profile]
- **Focus:** Cloud Support | Platform Engineering | MLOps

---
*This lab is a living document. I update it as I break things and fix them again.*
