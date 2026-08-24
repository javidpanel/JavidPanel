# Security Policy

## Reporting a vulnerability

از Private Vulnerability Reporting در GitHub استفاده کنید. API Tokenها، Bot Token، رمز مدیریت، Secure Path، Subscription URL، Cloudflare Account ID یا کلیدهای رمزنگاری را در Issue عمومی قرار ندهید.

## Bootstrap secret

Installer Worker فقط به یک Secret بوت‌استرپ نیاز دارد:

- `MASTER_KEY` — حداقل ۳۲ کاراکتر تصادفی؛ نصب‌کننده ۱۲۸ رقم hex تولید می‌کند.

رمز مدیر در `/setup` تعیین و با PBKDF2-SHA256 (salt اختصاصی) در `BOT_KV` ذخیره می‌شود؛ Password خام در KV ذخیره نمی‌شود.

## Encrypted runtime secrets

موارد زیر با AES-GCM و کلیدی مشتق‌شده از `MASTER_KEY` در `BOT_KV` نگهداری می‌شوند:

- Telegram Bot Token
- Telegram Webhook Secret
- GitHub fine-grained PAT در صورت استفاده از Publisher داخلی
- Cloudflare API Tokenهای کاربران/نصب‌های آزمایشی که برای عملیات بعدی پنل لازم‌اند
- رمزهای تولیدشده JavidPanel که برای نگهداری Inventory لازم‌اند

**هیچ Obfuscator.io API Token در Installer وجود ندارد یا ذخیره نمی‌شود.** Obfuscation فقط دستی و خارج از Installer انجام می‌شود.

## Telegram webhook authentication

Installer برای Webhook یک Secret تصادفی می‌سازد و آن را با `setWebhook` ثبت می‌کند. درخواست‌های `/telegram/webhook` باید Header مربوط به Telegram Secret Token را داشته باشند.

## Release integrity

- Core ثابت Installer با SHA-256 داخلی کنترل می‌شود.
- Wrapper مبهم‌شده ورودی SHA-256 مستقل دارد.
- Worker نهایی نیز SHA-256 مستقل دارد.
- هر Release جدید ابتدا Beta/Admin-only است و فقط با Promote صریح مدیر Public می‌شود.

## Cloudflare user tokens

فقط API Token محدود استفاده شود؛ Global API Key نباید درخواست یا ذخیره شود. در صورت ظن به نشت Token آن را از Cloudflare فوراً Revoke کنید.
