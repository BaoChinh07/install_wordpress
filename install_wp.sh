#!/bin/bash

# ========================
# Tự động cài đặt WordPress mới nhất
# ========================

INSTALL_DIR=${1:-wordpress}

echo "📥 Đang tải WordPress mới nhất..."
curl -O https://wordpress.org/latest.zip

echo "📦 Đang giải nén..."
unzip -q latest.zip
rm -f latest.zip

echo "🚚 Di chuyển thư mục WordPress đến $INSTALL_DIR..."
rm -rf "$INSTALL_DIR"
mv wordpress "$INSTALL_DIR"

echo "✅ WordPress đã được cài vào thư mục $INSTALL_DIR"
