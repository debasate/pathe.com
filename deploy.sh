#!/bin/bash

# Pathé Cinema Website - Deployment Script
echo "🎬 Pathé Cinema - Website Deployment"
echo "======================================"

# Check if we have the required files
if [ ! -f "index.html" ]; then
    echo "❌ Error: index.html not found"
    exit 1
fi

# Create backup
echo "📦 Creating backup..."
timestamp=$(date +"%Y%m%d_%H%M%S")
mkdir -p backups
tar -czf "backups/pathe_backup_$timestamp.tar.gz" . --exclude=backups --exclude=.git

# Deployment options
echo ""
echo "🚀 Choose deployment option:"
echo "1. GitHub Pages (Free)"
echo "2. Netlify Drop (Free)"
echo "3. Vercel (Free)"
echo "4. FTP Upload (Paid hosting)"
echo "5. Local server test"

read -p "Enter your choice (1-5): " choice

case $choice in
    1)
        echo "📤 Preparing for GitHub Pages..."
        echo "1. Create a new repository on GitHub"
        echo "2. Upload these files to the repository"
        echo "3. Go to Settings → Pages"
        echo "4. Select 'Deploy from branch: main'"
        echo "5. Your site will be available at: https://username.github.io/repository-name"
        ;;
    2)
        echo "📤 Preparing for Netlify..."
        echo "1. Go to https://netlify.com/drop"
        echo "2. Drag and drop this entire folder"
        echo "3. Get your free .netlify.app URL"
        echo "4. Add custom domain in Domain Settings if desired"
        ;;
    3)
        echo "📤 Preparing for Vercel..."
        echo "1. Upload to GitHub first"
        echo "2. Go to https://vercel.com"
        echo "3. Import your GitHub repository"
        echo "4. Automatic deployment will start"
        ;;
    4)
        echo "📤 Preparing for FTP upload..."
        echo "You'll need:"
        echo "- FTP credentials from your hosting provider"
        echo "- Upload all files to public_html/ or www/ folder"
        echo "- Configure DNS records for your domain"
        ;;
    5)
        echo "🖥️  Starting local test server..."
        if command -v python3 &> /dev/null; then
            echo "Server starting on http://localhost:8000"
            python3 -m http.server 8000
        elif command -v python &> /dev/null; then
            echo "Server starting on http://localhost:8000"
            python -m SimpleHTTPServer 8000
        else
            echo "❌ Python not found. Install Python or use a different method."
        fi
        ;;
    *)
        echo "❌ Invalid choice"
        exit 1
        ;;
esac

echo ""
echo "✅ Deployment preparation complete!"
echo "📁 Files ready in current directory"
echo "🌐 Don't forget to update domain in CNAME file"