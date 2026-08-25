<p align="center">
  <img src="assets/JavidPanel.png" alt="JavidPanel" width="100%">
</p>

<div align="center">

# JavidPanel

### A lightweight panel for personal and family use on Cloudflare

[![Panel](https://img.shields.io/badge/panel-v0.8.6-1677ff?style=flat-square)](https://github.com/JavidPanel/JavidPanel)
[![Persian](https://img.shields.io/badge/فارسی-README-00b894?style=flat-square)](README.md)
[![English](https://img.shields.io/badge/language-English-334155?style=flat-square)](README-EN.md)
[![Telegram](https://img.shields.io/badge/Telegram-@javidpanelbot-229ED9?style=flat-square)](https://t.me/javidpanelbot)

**[🤖 Install with the official bot](https://t.me/javidpanelbot)** · **[📚 Documentation](docs/en/index.md)** · **[📢 Official channel](https://t.me/javidpnl)**

</div>

---

## What is JavidPanel?

**JavidPanel** is a free panel for personal and family use that runs on the user's own Cloudflare account. Installation and maintenance are handled through the official Telegram bot, making setup, updates and routine management straightforward.

After installation, you can create separate users for family members or devices, manage expiration and traffic limits, and share the appropriate subscription link with each user.
Version 0.8.6 preserves existing installations and links while providing user management, Fragment settings, clean IPs, country lists, and node flags.

<table>
<tr>
<td width="25%" align="center"><b>⚡ Guided setup</b><br><sub>Step-by-step installation from the official bot</sub></td>
<td width="25%" align="center"><b>👥 User management</b><br><sub>Independent users and limits</sub></td>
<td width="25%" align="center"><b>🤖 Telegram control</b><br><sub>Manage panel users directly from the bot</sub></td>
<td width="25%" align="center"><b>🔄 Easy maintenance</b><br><sub>Update, reinstall and panel operations</sub></td>
</tr>
</table>

## Version 0.8.6

- Direct upgrade for 0.6.x installations without changing password, users, storage, or existing links
- Official country proxy lists served from this repository
- Clean IPs, Fragment settings, and full connection controls in the panel
- Country flags in generated node names
- Fixes for subscription nodes that previously failed to connect
- Installable mobile management web app
- Live panel status, support updates and management notifications

## How it works

<p align="center">
  <img src="assets/how-it-works-en.svg" alt="How JavidPanel works" width="100%">
</p>

The user starts installation with the official bot, the panel is provisioned on the selected Cloudflare account, and day-to-day user management, subscription access and maintenance remain available through the panel and the bot.

## Quick start

1. Open **[@javidpanelbot](https://t.me/javidpanelbot)**.
2. Choose **Install a new panel**.
3. Use the button inside the bot to create a scoped Cloudflare API Token.
4. Send the token only to the official bot.
5. Select the intended Cloudflare account if more than one is available.
6. When installation finishes, save the panel address and login details.

> JavidPanel is not installed by downloading a file from GitHub. The official installation path is the **@javidpanelbot** Telegram bot.

**[Full installation guide →](docs/en/installation.md)**

## Manage users from Telegram

From **My Panels**, select the intended panel and open **User Management**. Routine user operations can be performed directly from the official bot, including:

- listing users
- creating a user
- setting expiration and traffic limits
- viewing user details
- extending a user
- deleting a user after confirmation
- receiving supported subscription links or QR codes

**[User management guide →](docs/en/user-management.md)**

## Panel maintenance from the bot

The official bot remains useful after installation. From **My Panels**, available operations can include:

| Action | Purpose |
|---|---|
| **Update** | Move the panel to the latest public release |
| **Reinstall** | Re-deploy the same installation |
| **Clean reinstall** | Create a fresh panel with new access details |
| **Delete** | Remove the selected panel after confirmation |

## Country proxy lists

Country files are available in [proxy](proxy) and are used by the panel's country selector.

## Mobile management app

The management panel can be installed from a mobile browser and used as a standalone app with bottom navigation, mobile notifications and live background updates.

<p align="center"><img src="assets/branding/javidpanel-app-icon.png" alt="JavidPanel app icon" width="160"></p>

## Documentation

| Guide | Description |
|---|---|
| **[Documentation home](docs/en/index.md)** | Complete English documentation index |
| **[Installation](docs/en/installation.md)** | Account, token and bot installation |
| **[Official bot](docs/en/telegram-bot.md)** | My Panels and maintenance operations |
| **[Bot user management](docs/en/user-management.md)** | Create, view, extend and delete users |
| **[Mobile management app](docs/en/admin-app.md)** | Installation, navigation and notifications |
| **[Clients & subscriptions](docs/en/clients.md)** | Subscription links and QR usage |
| **[FAQ](docs/en/faq.md)** | Frequently asked questions |
| **[Security](SECURITY-EN.md)** | Token, password and subscription safety |

## Official resources

- 🤖 **Bot:** [@javidpanelbot](https://t.me/javidpanelbot)
- 📢 **Channel:** [@javidpnl](https://t.me/javidpnl)
- 💻 **GitHub:** [JavidPanel/JavidPanel](https://github.com/JavidPanel/JavidPanel)

---

<div align="center">

**JavidPanel — free for personal and family use**

[فارسی](README.md) · [Security](SECURITY-EN.md) · [License](LICENSE.md)

</div>
