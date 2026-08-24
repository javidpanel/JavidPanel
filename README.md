<p align="center"><img src="docs/assets/header.svg" alt="JavidPanel" width="100%"></p>

# JavidPanel

**JavidPanel** is a free Cloudflare-based panel intended for personal and family use. The official Telegram bot installs the panel into your own Cloudflare account and provides the panel address and administrator password.

> JavidPanel is not a commercial product. Selling the panel, selling access to it, or redistributing a rebranded paid version is not permitted.

## Official links

- Installer and update bot: [javidpanelbot](https://t.me/javidpanelbot)
- Project channel: [javidpnl](https://t.me/javidpnl)
- Repository: [JavidPanel/JavidPanel](https://github.com/JavidPanel/JavidPanel)
- Persian user guide: [README-FA.md](README-FA.md)

## What is a Cloudflare Worker?

A Worker is a small program that runs on Cloudflare's network. JavidPanel runs as a Worker, so a normal personal installation does not require a separate VPS or a Linux server.

The installer creates the required resources in your own Cloudflare account. You remain responsible for your Cloudflare account, panel credentials, users, and subscription links.

## Installation

The normal installation path is the official Telegram bot. You need:

1. a Cloudflare account with a verified email address;
2. a scoped Cloudflare access token created from the link provided by the bot;
3. the official installer bot.

See the [Persian installation guide](INSTALL-FA.md) for the complete step-by-step process.

## Using the panel

After installation, sign in to the panel and open **Users**. Create a separate user for yourself or each family member. A user can have an expiration period and an optional traffic limit.

Each user receives a dedicated status page with subscription information, QR codes, client links, usage information, and connection guidance.

## Recommended mobile client

Happ is the first recommended mobile client in the JavidPanel user page.

- [Android — Google Play](https://play.google.com/store/apps/details?id=com.happproxy)
- [Android — direct releases](https://github.com/Happ-proxy/happ-android/releases/latest)
- [iPhone — App Store](https://apps.apple.com/us/app/happ-proxy-utility/id6504287215)

## Updates

Open the official bot and choose the panel update check. If a newer public version is available, an update action appears next to your installed panel.

[Check for updates in the official bot](https://t.me/javidpanelbot?start=update)

## Safety

Keep Cloudflare tokens, panel administrator passwords, and subscription links private. Use only the official bot and repository links listed above.
