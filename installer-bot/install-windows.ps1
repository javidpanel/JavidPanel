$ErrorActionPreference = "Stop"
Write-Host "== JavidPanel Installer v0.5.6 =="
if (-not (Get-Command node -ErrorAction SilentlyContinue)) { throw "Node.js 20+ is required" }
if (-not (Get-Command npm -ErrorAction SilentlyContinue)) { throw "npm is required" }
npm install
npx wrangler login
npx wrangler deploy
$MasterKey = node -e "console.log(require('crypto').randomBytes(64).toString('hex'))"
$MasterKey | npx wrangler secret put MASTER_KEY
$MasterKey = $null
Write-Host ""
Write-Host "Deployment completed."
Write-Host "Open the workers.dev URL shown by Wrangler and append /setup"
Write-Host "In /setup choose the admin password and optionally paste the Telegram Bot Token."
