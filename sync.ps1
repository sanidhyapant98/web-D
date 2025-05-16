# PowerShell script to sync changes with GitHub
Write-Host "Syncing changes with GitHub..." -ForegroundColor Green

# Get the current date and time for the commit message
$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

# Add all changes
Write-Host "Staging changes..." -ForegroundColor Yellow
git add .

# Commit changes with timestamp
Write-Host "Committing changes..." -ForegroundColor Yellow
git commit -m "Auto-sync: $timestamp"

# Push to GitHub
Write-Host "Pushing to GitHub..." -ForegroundColor Yellow
git push origin master

Write-Host "Sync completed successfully!" -ForegroundColor Green 