# JavidPanel

**JavidPanel** is a managed Cloudflare Worker panel with an official Telegram installer and a controlled Beta → Public release pipeline.

> Current project line: **v0.5.0**

## Distribution model

Production artifacts are published only after **manual wrapper obfuscation**, direct Beta validation, and explicit administrator promotion. The Installer has **no Obfuscator.io API integration** and stores no Obfuscator.io token.

## Release flow

1. The project owner manually obfuscates the private JavidPanel wrapper in the Obfuscator.io Dashboard.
2. Exactly **one obfuscated wrapper file** is uploaded to Installer Admin.
3. Installer attaches the byte-preserved embedded Core and creates an **Admin-only Beta**.
4. Beta is installed and tested directly from Installer Admin using a scoped Cloudflare API Token.
5. The administrator explicitly promotes the release to **Public**.
6. Existing Telegram users are notified only after a separate administrator-approved action.

## End-user operations

The Telegram installer provides guided installation and **My Panels** actions for update, reinstall, clean reinstall, and delete. Clean reinstall creates a new Worker/KV/address and removes the old resources after the replacement succeeds.

## Documentation

- [Persian overview](README-FA.md)
- [Installer setup](INSTALL-FA.md)
- [Installer architecture](docs/INSTALLER-BOT.md)
- [Release pipeline](docs/RELEASE.md)
- [Manual obfuscation](docs/OBFUSCATION.md)
- [Security policy](SECURITY.md)
- [License](LICENSE.md)

Official repository: https://github.com/JavidPanel/JavidPanel

## Security

Never publish Cloudflare API tokens, Telegram bot tokens, Installer `MASTER_KEY`, private wrapper source, or unobfuscated production builds in issues or commits.
