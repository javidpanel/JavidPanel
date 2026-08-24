# Changelog

## 0.5.3 — 2026-08-24

- Fixed Installer Admin login UI JavaScript generation.
- Added Installer favicon response.
- Standardized Telegram end-user naming as «پنل جاوید».
- Preserved existing Installer KV/session compatibility.

## 0.5.2 — 2026-08-24

- Fixed Cloudflare Workers PBKDF2 compatibility by limiting setup iterations to 100,000.
- Added optional forced membership for multiple Telegram channels/groups.
- Added official bot `@javidpanelbot` and channel `@javidpnl` links.
- Standardized the Owner release process around one complete Worker file for manual obfuscation.
- Refined public repository documentation and project presentation.

## 0.5.0 — 2026-08-24

- Removed Obfuscator.io REST/API integration from Installer.
- Release creation accepts one manually-obfuscated Worker file.
- New releases start as Beta/Admin-only.
- Added direct Cloudflare-token Beta install/test path in Installer Admin.
- Added explicit Public promotion and separate administrator-approved update notification.
- Added Telegram My Panels actions: update, reinstall, clean reinstall and delete.
- Reworked first-run Admin authentication around `/setup`, PBKDF2-SHA256 and a single `MASTER_KEY` Worker Secret.
