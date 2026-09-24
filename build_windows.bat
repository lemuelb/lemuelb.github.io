@echo off
title LCFM Windows Desktop Automated Builder
echo =================================================================
echo ⚡ AUTOMATING WINDOWS COMPILATION FOR PROJECT LCFM
echo AUTHOR: LEMUEL BRADFORD | REGIONAL BASE: ILLAWARRA, NSW
echo =================================================================

echo 🔍 Checking local development dependencies...
call npm install

echo 🌐 Compiling the high-fidelity web interface matrix...
call npm run web:build

echo 🪟 Packaging standalone desktop executable shell (.EXE)...
call npm run desktop:pack

echo =================================================================
echo ✅ SUCCESS: Windows build complete.
echo The standalone app is located inside the /dist folder.
echo =================================================================
pause
