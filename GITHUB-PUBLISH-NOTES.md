# Public repository publication notes

The public repository must contain documentation, license, public issue templates and the final **obfuscated** Worker artifact only.

Do **not** publish:

- `worker.js` (owner-readable build)
- `build-private/`
- Installer BOT secrets
- Cloudflare tokens
- Telegram bot token
- production `MASTER_KEY`, `ADMIN_SECRET`, `ADMIN_PASSWORD`

The Telegram Installer implementation may be kept in a private operations repository if the objective is to prevent third parties from cloning the official installation channel.
