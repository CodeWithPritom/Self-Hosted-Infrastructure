# 🤖 Infrastructure Automation with Ansible

This module marks my transition from manual CLI commands to **Infrastructure as Code (IaC)**. I am using Ansible to automate system health checks and configuration management on my DietPi server.

### 🎯 Why Ansible?
As part of my **Platform Engineering** roadmap, I am learning to manage infrastructure that scales. While I currently manage one server (my old laptop), this same code can manage 1,000+ servers simultaneously.

### 📄 The Playbook: `system_check.yml`
I developed a playbook to perform the following automated tasks:
1. **Auto-logging:** Creates a progress log on the server.
2. **Uptime Monitoring:** Captures system uptime and load averages.
3. **Debugging:** Outputs system status directly to the console.

### 🚀 Execution & Results
I ran the playbook using the following command:
`ansible-playbook system_check.yml`

**Terminal Output:**
```text
PLAY [My First Automation Playbook] ********************************************
TASK [Gathering Facts] *********************************************************
ok: [localhost]
TASK [Show Uptime on Screen] ***************************************************
ok: [localhost] => {
    "msg": "Bhai, your old laptop has been running for: 03:25:48 up 13 min..."
}
PLAY RECAP *********************************************************************
localhost : ok=4  changed=2  unreachable=0  failed=0
