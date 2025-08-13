@echo off
echo ================================================
echo VakeelFriendly - Fixed Netlify Deployment
echo ================================================
echo.

echo The issue was with static export. We've switched to GitHub integration.
echo This method is more reliable and supports all Next.js features.
echo.

echo [Step 1] Check Git installation...
git --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: Git not found. Please install from: https://git-scm.com
    pause
    exit /b 1
)
echo ✓ Git is available

echo.
echo [Step 2] Initialize repository (if needed)...
if not exist .git (
    git init
    echo ✓ Git repository initialized
) else (
    echo ✓ Git repository exists
)

echo.
echo [Step 3] Add all files...
git add .
echo ✓ Files staged

echo.
echo [Step 4] Create commit...
git commit -m "VakeelFriendly - Ready for Netlify deployment" >nul 2>&1
if %errorlevel% equ 0 (
    echo ✓ Commit created
) else (
    echo ⚠ No changes to commit or already committed
)

echo.
echo ================================================
echo Next Steps (MANUAL):
echo ================================================
echo.
echo 1. Create GitHub Repository:
echo    → Go to: https://github.com/new
echo    → Repository name: vakeelfriendly
echo    → Make it PUBLIC (important!)
echo    → Don't initialize with README
echo    → Click "Create repository"
echo.
echo 2. Push your code:
echo    git remote add origin https://github.com/YOUR_USERNAME/vakeelfriendly.git
echo    git branch -M main
echo    git push -u origin main
echo.
echo 3. Deploy to Netlify:
echo    → Go to: https://netlify.com
echo    → Sign up/Login (free)
echo    → "New site from Git"
echo    → Choose "GitHub" and authorize
echo    → Select "vakeelfriendly" repository
echo    → Build settings:
echo      - Build command: npm run build
echo      - Publish directory: .next
echo    → Click "Deploy site"
echo.
echo 4. Your site will be live at:
echo    https://amazing-name-123456.netlify.app
echo.
echo ================================================
echo Why this method works better:
echo ================================================
echo ✓ No 404.html corruption issues
echo ✓ Full Next.js feature support
echo ✓ Automatic rebuilds on code changes
echo ✓ Better caching and performance
echo ✓ Professional deployment pipeline
echo.
pause
