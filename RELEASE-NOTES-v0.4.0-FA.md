# Release Notes — JavidPanel v0.4.0

نسخه 0.4.0 تمرکز ویژه‌ای روی چرخه نصب رسمی، انتشار نسخه و مدیریت امن Artifact دارد.

## Installer Bot Control Center

- نصب مستقل Installer Bot روی Cloudflare Worker.
- KV مستقل `BOT_KV` برای کاربران ربات، پنل‌های نصب‌شده، Broadcast، Releaseها و تنظیمات.
- ورود امن مدیر با Session امضاشده HMAC.
- ثبت Bot Token از داخل پنل مدیریت و ذخیره رمزنگاری‌شده AES-GCM.
- ساخت خودکار Webhook Secret و اجرای مستقیم Telegram `setWebhook`.
- مشاهده وضعیت Bot و Webhook از داخل پنل.

## Release Manager

- دریافت Core عادی و Javid Wrapper به‌صورت دو بخش مستقل.
- حفظ Core بدون Obfuscation.
- پشتیبانی از Wrapper از پیش Obfuscated.
- پشتیبانی از Obfuscator.io REST API برای مبهم‌سازی خودکار Wrapper.
- اتصال خودکار Core + Wrapper.
- SHA-256 مجزا برای Core، Wrapper و Artifact نهایی.
- Stage/Activate جداگانه برای جلوگیری از انتشار Build ناقص.
- نگهداری Release history.
- انتخاب Release فعال برای نصب و Auto Update.

## GitHub Publisher

- ذخیره GitHub fine-grained PAT به‌صورت رمزنگاری‌شده.
- تست دسترسی Repository از داخل پنل.
- انتشار خودکار `dist/JavidPanel.worker.js`.
- تولید و انتشار `dist/manifest.json`.
- ایجاد GitHub Release و Tag نسخه.

## Installer Bot Bootstrap

- اضافه شدن `wrangler.jsonc`، `package.json` و `.dev.vars.example` مستقل.
- سازگاری با Deploy to Cloudflare Button.
- Provision خودکار KV توسط Cloudflare Deploy.
- مستندات مرحله‌به‌مرحله برای کاربران مبتدی.

## JavidPanel Worker

- نسخه UI/Legal به 0.4.0 ارتقا یافت.
- Core transport/config بدون تغییر باقی مانده است.
