#!/bin/bash
# SHA256 hash audit of scripts directory

mkdir -p logs/hashes
find scripts -type f -exec sha256sum {} \; > logs/hashes/hash_report_$(date +%F).txt
echo "✅ Hash report created."
