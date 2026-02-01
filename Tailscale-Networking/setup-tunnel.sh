#!/bin/bash
# Tailscale Zero-Trust Connectivity Script
# This script sets up the secure tunnel for local services

echo "Starting Tailscale Serve on Port 8099..."
sudo tailscale serve --bg 8099

echo "Starting Tailscale Funnel on Port 10000..."
sudo tailscale funnel --bg 10000

echo "Infrastructure is now globally accessible via Tailscale Gateway."
