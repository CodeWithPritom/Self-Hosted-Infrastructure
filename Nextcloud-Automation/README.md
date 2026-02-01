# Private Cloud Storage with Nextcloud

This module documents the implementation of a full-scale private cloud storage solution using **Nextcloud** on top of my **DietPi** infrastructure.

### 🛠 Implementation Strategy
I chose Nextcloud to serve as the primary data hub for this lab. Unlike public cloud services, this gives me full control over my data and security.

**Key Features:**
- **DietPi Software Stack:** Deployed using the optimized DietPi installer for maximum efficiency on legacy hardware.
- **Cross-Platform Sync:** Successfully integrated with mobile and desktop clients for real-time data synchronization.
- **External Storage Integration:** Configured to manage local drive mounts within the cloud interface.

### 🛡 Security & Integration
- **Internal Access:** Secured via the local DietPi network.
- **Global Reach:** Accessed through the **Tailscale Funnel** network layer, ensuring an encrypted connection without exposing the server to the public internet.

### 📈 Learning Experience
Setting up Nextcloud taught me about:
- **Web Server Configuration:** Managing PHP and database backends on low-resource hardware.
- **Data Integrity:** Ensuring files are safely stored and accessible despite potential hardware limitations of an old laptop.
