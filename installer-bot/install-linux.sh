#!/usr/bin/env bash
set -euo pipefail
command -v node >/dev/null || { echo "Node.js 20+ is required"; exit 1; }
command -v npm >/dev/null || { echo "npm is required"; exit 1; }
echo "== JavidPanel Installer v0.5.6 =="
npm install
npx wrangler login
npx wrangler deploy
MASTER_KEY="$(node -e "console.log(require('crypto').randomBytes(64).toString('hex'))")"
printf '%s' "$MASTER_KEY" | npx wrangler secret put MASTER_KEY
unset MASTER_KEY
echo
echo "Deployment completed. Open the workers.dev URL shown by Wrangler and append /setup"
