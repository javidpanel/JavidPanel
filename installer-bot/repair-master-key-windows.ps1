$ErrorActionPreference = "Stop"
if (-not (Get-Command node -ErrorAction SilentlyContinue)) { throw "Node.js 20+ is required" }
$MasterKey = node -e "console.log(require('crypto').randomBytes(64).toString('hex'))"
$MasterKey | npx wrangler secret put MASTER_KEY
$MasterKey = $null
Write-Host "MASTER_KEY replaced. IMPORTANT: replacing it invalidates encrypted tokens already stored in BOT_KV. Use this only for a fresh/broken installation."
