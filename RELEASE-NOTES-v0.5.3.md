# JavidPanel v0.5.3

Maintenance release for the official Installer.

## Changes

- Fixed the generated Admin page JavaScript escaping issue that prevented the login interface from executing.
- Added an internal `/favicon.ico` response for Installer pages.
- Standardized Persian end-user naming in Telegram as **پنل جاوید**.
- Kept existing `BOT_KV`, `MASTER_KEY`, administrator password records, users, installed panels and release inventory compatible with in-place upgrade.

## Upgrade

Keep the current `BOT_KV` binding and the current `MASTER_KEY`. Replace only the Installer Worker with v0.5.3, deploy, then hard-refresh `/admin`.
