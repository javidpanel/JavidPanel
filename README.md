<p align="center">
  <img src="docs/assets/header.svg" alt="JavidPanel" width="100%">
</p>

<p align="center">
  <strong>Cloudflare Worker panel with a controlled Telegram installer and release workflow.</strong>
</p>

<p align="center">
  <a href="README-FA.md">فارسی</a> ·
  <a href="INSTALL-FA.md">Installation</a> ·
  <a href="SECURITY.md">Security</a> ·
  <a href="CHANGELOG.md">Changelog</a> ·
  <a href="LICENSE.md">License</a>
</p>

## Official links

| Resource | Address |
|---|---|
| Installer bot | [@javidpanelbot](https://t.me/javidpanelbot) |
| Telegram channel | [@javidpnl](https://t.me/javidpnl) |
| Repository | [JavidPanel/JavidPanel](https://github.com/JavidPanel/JavidPanel) |

## Release model

JavidPanel uses a deliberately simple release path. The owner keeps one complete readable `worker.js`, obfuscates that file manually, and uploads the single obfuscated result to Installer Admin. Every upload starts as **Beta**. Beta builds are installable only from the Installer Admin direct-test section. After validation, an administrator can promote the build to **Public** and optionally notify users with older installations.

```text
owner worker.js
     │
     ├─ manual obfuscation
     ▼
obfuscated worker.js
     │
     ├─ upload once in Installer Admin
     ▼
Beta ── test / debug ──► Public ──► optional user update notice
```

## Installer capabilities

The official installer provisions Cloudflare Worker and KV resources, creates a secure panel path and administrator password, keeps a per-user installation inventory, and exposes update, reinstall, clean reinstall and delete actions. The admin console also provides direct Cloudflare-token installation for Beta testing.

Optional forced membership can be enabled for one or more Telegram channels/groups. Membership targets are managed from Installer Admin; when enabled, the bot checks membership before allowing normal operations.

## Owner release workflow

1. Open `manual-obfuscation/JavidPanel-vX.Y.Z-worker.js` from the Owner package.
2. Obfuscate the **entire file** manually using your chosen Obfuscator.io settings.
3. Save the output as `JavidPanel-vX.Y.Z-worker.obf.js`.
4. Upload that single file in **Installer Admin → Releases**.
5. Install the Beta from **Direct Test** using a scoped Cloudflare API Token.
6. Validate the panel and promote the release to Public.
7. Notify existing users only when you explicitly choose to do so.

The public repository intentionally does not contain the readable production Worker or Installer control-plane source.

## Security notes

Cloudflare API tokens, Telegram bot tokens, Installer `MASTER_KEY`, private Worker source and unobfuscated builds must never be committed to the repository or posted in issues.

See [SECURITY.md](SECURITY.md) for operational guidance.
