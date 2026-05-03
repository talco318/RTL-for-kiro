# Kiro RTL Hebrew Support Uninstaller
Write-Host "Removing Kiro RTL Hebrew Support..." -ForegroundColor Red

# Auto-detect user
$user = $env:USERNAME
$cssFile = "C:\Users\$user\AppData\Local\Programs\Kiro\resources\app\extensions\kiro.kiro-agent\packages\continuedev\gui\dist\assets\index.css"
$backupFile = $cssFile + ".rtl-backup"

# Check if files exist
if (-not (Test-Path $cssFile)) {
    Write-Host "ERROR: Kiro CSS file not found" -ForegroundColor Red
    Read-Host "Press Enter to exit"
    exit 1
}

if (-not (Test-Path $backupFile)) {
    Write-Host "WARNING: No backup found" -ForegroundColor Yellow
    $continue = Read-Host "Continue anyway? (y/N)"
    if ($continue -ne "y") {
        exit 0
    }
} else {
    # Restore from backup
    Copy-Item $backupFile $cssFile -Force
    Write-Host "Original CSS restored from backup" -ForegroundColor Green
    
    $removeBackup = Read-Host "Remove backup file? (y/N)"
    if ($removeBackup -eq "y") {
        Remove-Item $backupFile -Force
        Write-Host "Backup removed" -ForegroundColor Green
    }
}

Write-Host ""
Write-Host "RTL support removed successfully!" -ForegroundColor Green
Write-Host "Restart Kiro to see changes" -ForegroundColor Yellow
Write-Host ""
Read-Host "Press Enter to finish"