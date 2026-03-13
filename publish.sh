#!/bin/bash

# --- CONFIGURATION ---
SOURCE_FILE="helloworld.md"
OUTPUT_FILE="index.html"
COMMIT_MSG="F001 Update: $(date +'%Y-%m-%d %H:%M:%S')"

echo "🚀 Starting deployment pipeline..."

# 1. Sync with GitHub first to prevent "Rejected" errors
echo "🔄 Pulling latest changes from GitHub..."
git pull origin main --rebase

# 2. Export Marp to HTML
echo "🎨 Exporting Marp slides..."
marp $SOURCE_FILE --html -o $OUTPUT_FILE

# 3. Add, Commit, and Push
echo "📦 Staging and Pushing..."
git add .
git commit -m "$COMMIT_MSG"
git push origin main

echo "✅ Success! Check your URL in a moment."
