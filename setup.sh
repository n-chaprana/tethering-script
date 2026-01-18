#!/bin/bash

echo "Installing required tools: hostapd, dnsmasq, iptables..."

# Update package list
echo "Updating package list..."
sudo apt update

# Install required tools
echo "Installing hostapd, dnsmasq, and iptables..."
sudo apt install -y hostapd dnsmasq iptables

# Verify installation
echo "Verifying installations..."
if command -v hostapd &> /dev/null; then
    echo "✅ hostapd installed successfully"
else
    echo "❌ hostapd installation failed"
    exit 1
fi

if command -v dnsmasq &> /dev/null; then
    echo "✅ dnsmasq installed successfully"
else
    echo "❌ dnsmas-than installation failed"
    exit 1
fi

if command -v iptables &> /dev/null; then
    echo "✅ iptables installed successfully"
else
    echo "❌ iptables installation failed"
    exit 1
fi

echo "✅ All required tools installed and verified successfully."
echo "Setup complete. You can now use the tethering script."
