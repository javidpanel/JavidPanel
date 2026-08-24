# Installer Security Architecture v0.5.0

## Trust boundaries

1. Installer Worker — کنترل مرکزی نصب و Release.
2. `BOT_KV` — State و Secrets رمزگذاری‌شده.
3. Cloudflare Account کاربر — مقصد Worker/KV هر نصب.
4. Telegram API — رابط ربات با Webhook Secret.
5. GitHub — مقصد اختیاری انتشار Public.
6. Obfuscator.io Dashboard — فقط ابزار دستی مالک پروژه؛ هیچ اتصال API از Installer وجود ندارد.

## Admin authentication

- اولین Setup در `/setup`.
- Password با PBKDF2-SHA256 و salt اختصاصی ذخیره می‌شود.
- Session با HMAC مشتق‌شده از `MASTER_KEY` امضا می‌شود.
- Cookie دارای `HttpOnly`, `Secure`, `SameSite=Strict` است.

## Secret encryption

Runtime Secretها با AES-GCM رمزگذاری می‌شوند. `MASTER_KEY` فقط Worker Secret است و در KV نوشته نمی‌شود.

## Release integrity

Installer SHA-256 Core، Wrapper و Worker نهایی را ثبت می‌کند. Release جدید Beta/Admin-only است؛ Promote و Notify دو Action مستقل و صریح هستند.

## Cloudflare tokens

Token کاربر برای امکان Update/Reinstall بعدی به‌صورت AES-GCM ذخیره می‌شود. Global API Key پشتیبانی نمی‌شود.
