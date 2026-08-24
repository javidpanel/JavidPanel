# JavidPanel Installer Bot v0.5.1

Installer رسمی یک Cloudflare Worker مستقل و Control Plane نصب/بروزرسانی JavidPanel است.

## اجزا

- `BOT_KV`: کاربران ربات، نصب‌ها، Secrets رمزگذاری‌شده، Releaseها و صف Broadcast.
- Telegram Webhook: رابط کاربر نهایی.
- Installer Admin: مدیریت Telegram، Release، کاربران، پنل‌ها، Broadcast و تست مستقیم.
- JavidPanel Worker/KV: در حساب Cloudflare خود کاربر ساخته می‌شود.
- GitHub: مقصد اختیاری Artifact عمومی و مستندات.

## نصب Installer

فقط `MASTER_KEY` باید Cloudflare Worker Secret باشد. پس از Deploy:

```text
/setup  → تعیین رمز مدیر و Bot Token اختیاری
/admin  → Control Center
```

Admin Session با Cookie امضاشده HMAC، `HttpOnly`, `Secure`, `SameSite=Strict` کار می‌کند. صفحه Admin ابتدا `/admin/session` را با پاسخ 200 بررسی می‌کند و فقط در صورت احراز هویت Dashboard را می‌خواند؛ بنابراین 401 عادی در Console ایجاد نمی‌شود.

## Telegram

در Admin → Telegram:

1. Bot Token را وارد کنید.
2. Installer `getMe` را اجرا می‌کند.
3. Webhook Secret تصادفی می‌سازد.
4. `setWebhook` را برای `/telegram/webhook` اجرا می‌کند.
5. وضعیت ربات و Webhook در Dashboard نمایش داده می‌شود.

## Release Manager — یک فایل

Installer **هیچ ارتباط API با Obfuscator.io ندارد**.

چرخه ثابت:

```text
Private readable wrapper
        ↓  (manual Obfuscator.io Dashboard)
ONE obfuscated wrapper file
        ↓  Upload to Installer Admin
Embedded preserved Core + obfuscated wrapper
        ↓
SHA-256 validation
        ↓
Beta / Admin-only
        ↓
Direct Cloudflare test
        ↓
Explicit Promote
        ↓
Public Telegram installation
        ↓
Optional admin-approved update notification
```

شماره نسخه ترجیحاً در نام فایل باشد: `JavidPanel-vX.Y.Z-wrapper.obf.js`.

## Direct Test Lab

برای Release Beta مدیر می‌تواند بدون Telegram Cloudflare API Token را وارد کند، Account را انتخاب کند و Worker آزمایشی بسازد. پنل‌های آزمایشی از Inventory قابل Update/Reinstall/Clean Reinstall/Delete هستند.

## Telegram user panel lifecycle

در «پنل‌های من» هر کاربر می‌تواند:

- Update به Public جدید؛
- Reinstall روی همان Worker/KV؛
- Clean Reinstall با Worker/KV/URL/Password جدید؛
- Delete نصب.

Clean Reinstall برای خرابی Worker، خطای 1101 یا ازکارافتادن نصب قبلی طراحی شده و پس از ساخت موفق جایگزین، منابع قبلی را حذف می‌کند. داده‌های KV قدیمی حفظ نمی‌شوند.

## Update notification

Public شدن Release به‌تنهایی پیام ارسال نمی‌کند. مدیر باید جداگانه «اطلاع‌رسانی کاربران» را تأیید کند. فقط Telegram Userهایی که حداقل یک پنل با نسخه قدیمی‌تر دارند در Queue قرار می‌گیرند.

## رابط ربات

پیام‌ها فارسی، ساده و مرحله‌ای هستند و شامل نصب، پنل‌های من، راهنمای کامل، درباره پروژه و GitHub رسمی می‌شوند.
