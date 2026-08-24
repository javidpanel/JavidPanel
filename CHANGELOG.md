# Changelog

## 0.5.0 — 2026-08-24

- Removed all Obfuscator.io REST/API integration from Installer.
- Release creation now accepts one manually-obfuscated wrapper file.
- New releases always start as Beta/Admin-only.
- Added direct Cloudflare-token Beta install/test path in Installer Admin.
- Added explicit Public promotion and separate administrator-approved update notification.
- Added Telegram My Panels actions: update, reinstall, clean reinstall and delete.
- Reworked first-run Admin authentication around `/setup`, PBKDF2-SHA256 and a single `MASTER_KEY` Worker Secret.
- Removed unauthenticated Dashboard probing that caused noisy `admin/api/dashboard 401` Console errors.
- Added clearer Setup infrastructure checks/errors instead of opaque 500 failures.
- Preserved JavidPanel Core byte-for-byte.

## 0.4.0

- Introduced the first Installer control plane, release staging and direct GitHub publication design.

## 0.3.0

- Added official Telegram provisioning architecture and installation marker.
