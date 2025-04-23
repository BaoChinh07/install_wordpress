#!/bin/bash

# ========================
# Script: install_wp.sh
# Mục đích: Tự động cài WordPress mới nhất từ GitHub Repo
# ========================

# URL tới file wordpress.zip trong repo GitHub của bạn
REPO_URL="https://github.com/BaoChinh07/install_wordpress/raw/master/wordpress.zip"

echo "🌐 Đang tải WordPress từ repo..."
curl -L -o wordpress.zip "$REPO_URL" || { echo "❌ Tải wordpress.zip thất bại!"; exit 1; }

echo "📦 Đang giải nén..."
unzip -q wordpress.zip || { echo "❌ Giải nén thất bại!"; exit 1; }

echo "🚚 Đang di chuyển source vào thư mục hiện tại..."
mv wordpress/* ./ || { echo "❌ Di chuyển thất bại!"; exit 1; }

echo "🧹 Dọn dẹp file tạm..."
rm -rf wordpress.zip wordpress

echo "✅ WordPress đã được cài đặt hoàn tất!"

