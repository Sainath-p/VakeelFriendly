@echo off
echo ================================================
echo VakeelFriendly - Deployment Setup Script
echo ================================================
echo.

echo [1/4] Checking if Git is installed...
git --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: Git is not installed or not in PATH
    echo Please download and install Git from: https://git-scm.com
    echo.
    pause
    exit /b 1
)
echo ✓ Git is installed

echo.
echo [2/4] Initializing Git repository...
if not exist .git (
    git init
    echo ✓ Git repository initialized
) else (
    echo ✓ Git repository already exists
)

echo.
echo [3/4] Adding files to Git...
git add .
git status --porcelain | find /c /v "" >nul
if %errorlevel% equ 0 (
    echo ✓ Files added to Git
) else (
    echo ⚠ No changes to commit
)

echo.
echo [4/4] Creating initial commit...
git commit -m "Initial commit - VakeelFriendly Legal Practice Management Platform" >nul 2>&1
if %errorlevel% equ 0 (
    echo ✓ Initial commit created
) else (
    echo ⚠ Commit already exists or no changes to commit
)

echo.
echo ================================================
echo Setup Complete! Next Steps:
echo ================================================
echo.
echo 1. Create a GitHub repository:
echo    → Go to https://github.com/new
echo    → Name: vakeelfriendly
echo    → Make it PUBLIC
echo    → Don't initialize with README
echo.
echo 2. Add your GitHub repository as remote:
echo    git remote add origin https://github.com/YOUR_USERNAME/vakeelfriendly.git
echo.
echo 3. Push your code to GitHub:
echo    git branch -M main
echo    git push -u origin main
echo.
echo 4. Deploy to Vercel:
echo    → Visit https://vercel.com
echo    → Sign up with GitHub
echo    → Import your vakeelfriendly repository
echo    → Deploy with one click!
echo.
echo 5. Your app will be live at:
echo    https://vakeelfriendly.vercel.app
echo.
echo ================================================
echo For detailed instructions, see DEPLOYMENT.md
echo ================================================
echo.
pause
