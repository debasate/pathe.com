@echo off
title Pathe Cinema - Website Deployment

echo.
echo 🎬 Pathe Cinema - Website Deployment
echo ======================================
echo.

REM Check if index.html exists
if not exist "index.html" (
    echo ❌ Error: index.html not found
    pause
    exit /b 1
)

echo 📦 Files ready for deployment!
echo.
echo 🚀 Deployment Options:
echo 1. GitHub Pages (Free)
echo 2. Netlify Drop (Free) 
echo 3. Vercel (Free)
echo 4. Open local test
echo 5. Show file info
echo.

set /p choice="Enter your choice (1-5): "

if "%choice%"=="1" (
    echo.
    echo 📤 GitHub Pages Instructions:
    echo 1. Create new repository on GitHub
    echo 2. Upload all files to the repository
    echo 3. Go to Settings → Pages
    echo 4. Select 'Deploy from branch: main'
    echo 5. Site will be available at: https://username.github.io/repository-name
    echo.
    start https://github.com/new
) else if "%choice%"=="2" (
    echo.
    echo 📤 Netlify Drop Instructions:
    echo 1. Go to netlify.com/drop
    echo 2. Drag and drop this entire folder
    echo 3. Get your free .netlify.app URL
    echo.
    start https://netlify.com/drop
) else if "%choice%"=="3" (
    echo.
    echo 📤 Vercel Instructions:
    echo 1. Upload to GitHub first
    echo 2. Go to vercel.com
    echo 3. Import your GitHub repository
    echo 4. Automatic deployment starts
    echo.
    start https://vercel.com
) else if "%choice%"=="4" (
    echo.
    echo 🖥️ Opening local test...
    start index.html
) else if "%choice%"=="5" (
    echo.
    echo 📁 File Structure:
    dir /b
    echo.
    echo 📊 File Count:
    dir *.* /s /-c | find "File(s)"
) else (
    echo ❌ Invalid choice
)

echo.
echo ✅ Ready for deployment!
echo 🌐 Don't forget to update your domain in CNAME file
echo.
pause