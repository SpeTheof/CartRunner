@echo off
echo ====================================
echo   CART RUNNER DEPLOYER v1.0
echo ====================================
echo.
echo Deploying to Netlify...
echo.

powershell -ExecutionPolicy Bypass -Command "netlify deploy --prod"

echo.
echo Done! Check your site at https://cartrunner.netlify.app/
pause
