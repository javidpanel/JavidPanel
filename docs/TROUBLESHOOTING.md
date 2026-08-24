# عیب‌یابی JavidPanel Installer v0.5.0

## `admin/api/dashboard` خطای 401 می‌دهد

در v0.5.0 صفحه Admin قبل از Dashboard ابتدا `/admin/session` را بررسی می‌کند. اگر هنوز 401 در Console می‌بینید:

1. مطمئن شوید Worker Installer واقعاً v0.5.0 است.
2. `/setup` را کامل کنید.
3. Cookieهای همان دامنه workers.dev را پاک کرده و دوباره وارد `/admin` شوید.
4. `/admin/session` باید HTTP 200 و `authenticated:true` برگرداند.

خود endpoint `/admin/api/dashboard` بدون Session عمداً 401 است؛ این رفتار امنیتی صحیح است.

## `/setup` خطای 500/503 می‌دهد

`/setup/status` را باز کنید. اگر `masterKey:false` بود، `MASTER_KEY` Worker Secret تنظیم نشده است. نصب‌کننده رسمی آن را خودکار می‌سازد. خطای v0.5.0 در این حالت باید صریحاً HTTP 503 با پیام MASTER_KEY باشد، نه 500 مبهم.

## Token کلادفلیر رد می‌شود

- API Token باشد، نه Global API Key.
- Account هدف باید برای Token قابل مشاهده باشد.
- Worker Scripts و Workers KV باید Write/Edit باشند.

## Beta در ربات دیده نمی‌شود

این رفتار عمدی است. Beta فقط از Admin → «تست مستقیم» قابل نصب است. برای عمومی‌شدن باید Release را Promote کنید.

## فایل Release رد می‌شود

فقط Wrapper مبهم‌شده را Upload کنید؛ Core یا Worker کامل نباید داخل فایل باشد. نام پیشنهادی:

```text
JavidPanel-vX.Y.Z-wrapper.obf.js
```

## Clean Reinstall

این عملیات Worker/KV/URL/Password جدید می‌سازد و بعد از موفقیت منابع قبلی را حذف می‌کند. داده‌های KV قبلی منتقل نمی‌شوند. قبل از اجرا این موضوع را به کاربر یادآوری کنید.
