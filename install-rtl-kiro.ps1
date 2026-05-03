# Kiro RTL Hebrew Support Installer - Optimized
$ErrorActionPreference = "Stop"
Write-Host "--- Kiro RTL Hebrew Support Installer ---" -ForegroundColor Green

# 1. Path Setup using Environment Variables
$basePath = "$env:LOCALAPPDATA\Programs\Kiro\resources\app\extensions\kiro.kiro-agent\packages\continuedev\gui\dist\assets"
$cssFile = Join-Path $basePath "index.css"
$backupFile = "$cssFile.rtl-backup"

# 2. Check for Installation
if (-not (Test-Path $cssFile)) {
    Write-Host "ERROR: Kiro CSS file not found at: $cssFile" -ForegroundColor Red
    Write-Host "Make sure Kiro is installed and the path is correct." -ForegroundColor Yellow
    Pause
    exit 1
}

try {
    # 3. Backup Logic
    if (-not (Test-Path $backupFile)) {
        Copy-Item $cssFile $backupFile
        Write-Host "[+] Created secure backup: index.css.rtl-backup" -ForegroundColor Green
    } else {
        # Optional: Restore from backup every time to ensure a clean slate
        Copy-Item $backupFile $cssFile -Force 
        Write-Host "[*] Restored from clean backup before applying changes" -ForegroundColor Gray
    }

    # 4. RTL CSS Block
$rtlCSS = @'

/* Kiro RTL Hebrew Support - V5 (System Stability Edition) */

/* 1. Apply RTL to free text content only - using focused selectors */
.kiro-chat-message-body > div:not([class*="agent-"]), 
.kiro-chat-message-markdown p, 
.kiro-chat-message-markdown ul, 
.kiro-chat-message-markdown ol,
.kiro-focus-area {
  direction: rtl !important;
  text-align: right !important;
  unicode-bidi: plaintext !important;
}

/* 2. Fix code blocks and remove minimum height distortions */
.kiro-chat-message pre, 
.kiro-chat-message code, 
.kiro-code-preview,
pre code {
  direction: ltr !important;
  text-align: left !important;
  unicode-bidi: bidi-override !important;
  min-height: unset !important; /* Remove 40px that distorts display */
  display: block;
}

/* 3. Protect system UI elements - keep them always LTR */
.agent-outcome-summary,
[class*="agent-outcome"],
[class*="step-container"],
.kiro-chat-message-body button {
  direction: ltr !important;
  text-align: left !important;
  unicode-bidi: normal !important;
}

/* 4. Fix Hebrew lists padding */
.kiro-chat-message-markdown ul, 
.kiro-chat-message-markdown ol {
  padding-right: 1.5em !important;
  padding-left: 0 !important;
}

/* 5. Inline code within sentences */
.kiro-chat-message-markdown p code, 
.kiro-chat-message-markdown li code {
  direction: ltr !important;
  display: inline-block !important;
  min-height: unset !important;
  padding: 0 4px !important;
  unicode-bidi: embed !important;
}
'@

    # 5. Check if already patched
    $currentContent = Get-Content $cssFile -Raw
    if ($currentContent -match "START-KIRO-RTL") {
        Write-Host "[!] RTL support is already installed. Updating content..." -ForegroundColor Yellow
        # If you want to update it, the 'Restore' step above already handled it
    }

    Add-Content -Path $cssFile -Value $rtlCSS -Encoding UTF8
    Write-Host "`n[SUCCESS] RTL support installed successfully!" -ForegroundColor Green

} catch {
    Write-Host "`nERROR: Could not write to file. Is Kiro running?" -ForegroundColor Red
    Write-Host "Exception: $($_.Exception.Message)" -ForegroundColor White
}

Write-Host "`nNext steps: Restart Kiro and enjoy Hebrew support." -ForegroundColor Cyan
