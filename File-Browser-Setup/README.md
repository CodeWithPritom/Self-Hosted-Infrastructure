[Unit]
Description=File Browser
After=network-online.target

[Service]
User=root
Group=root
ExecStart=/opt/filebrowser/filebrowser -a 0.0.0.0 -p 8099 -d /mnt/dietpi_userdata/filebrowser/filebrowser.db
Restart=always
RestartSec=10

[Install]
WantedBy=multi-user.target
