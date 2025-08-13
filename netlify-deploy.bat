@echo off
echo ================================================
echo VakeelFriendly - Netlify Deployment Guide
echo ================================================
echo.

echo Checking Node.js and npm...
node --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: Node.js is not installed
    echo Please download from: https://nodejs.org
    pause
    exit /b 1
)
echo ✓ Node.js is installed

npm --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: npm is not available
    pause
    exit /b 1
)
echo ✓ npm is available

echo.
echo Installing dependencies...
npm install
if %errorlevel% neq 0 (
    echo ERROR: Failed to install dependencies
    pause
    exit /b 1
)
echo ✓ Dependencies installed

echo.
echo Building the project for production...
npm run build
if %errorlevel% neq 0 (
    echo ERROR: Build failed
    echo Please check for any TypeScript or build errors
    pause
    exit /b 1
)
echo ✓ Build successful

echo.
echo ================================================
echo Build Complete! Ready for Netlify Deployment
echo ================================================
echo.
echo Your built files are in the 'out' directory
echo.
echo OPTION 1 - Manual Deployment (Easiest):
echo ----------------------------------------
echo 1. Go to https://netlify.com
echo 2. Sign up/Login (free account)
echo 3. Drag and drop the 'out' folder to Netlify
echo 4. Your site will be live instantly!
echo.
echo OPTION 2 - GitHub Integration:
echo ------------------------------
echo 1. First, set up Git and push to GitHub:
echo    git init
echo    git add .
echo    git commit -m "Initial commit"
echo    git remote add origin https://github.com/USERNAME/vakeelfriendly.git
echo    git push -u origin main
echo.
echo 2. Connect to Netlify:
echo    → Go to https://netlify.com
echo    → Sign up with GitHub
echo    → New site from Git
echo    → Choose your repository
echo    → Build command: npm run build
echo    → Publish directory: out
echo    → Deploy!
echo.
echo Your site will be available at:
echo https://YOUR-SITE-NAME.netlify.app
echo.
echo ================================================
pause
