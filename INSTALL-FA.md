# راهنمای نصب JavidPanel Installer v0.5.0

## نصب روی Windows

1. بسته `JavidPanel-InstallerBot-v0.5.0.zip` را Extract کنید.
2. PowerShell را در همان پوشه باز کنید.
3. اجرا کنید:

```powershell
Set-ExecutionPolicy -Scope Process Bypass
.\install-windows.ps1
```

اسکریپت `wrangler login` را اجرا می‌کند، Worker و `BOT_KV` را Deploy/Provision می‌کند و یک `MASTER_KEY` تصادفی 128-hex را به‌صورت Cloudflare Worker Secret ثبت می‌کند.

## Linux / macOS

```bash
chmod +x install-linux.sh
./install-linux.sh
```

## راه‌اندازی اولیه

پس از Deploy، آدرس Worker را با `/setup` باز کنید:

```text
https://YOUR-INSTALLER-WORKER.workers.dev/setup
```

1. رمز مدیریت با حداقل ۱۲ کاراکتر تعیین کنید.
2. در صورت تمایل همان‌جا Telegram Bot Token را وارد کنید.
3. اگر Token وارد شود، Installer با `getMe` آن را بررسی و Webhook را خودکار روی `/telegram/webhook` تنظیم می‌کند.
4. سپس وارد `/admin` شوید.

> در v0.5.0 دیگر `ADMIN_PASSWORD` و `ADMIN_SECRET` به‌عنوان Worker Secret لازم نیستند. فقط `MASTER_KEY` Secret بوت‌استرپ است. رمز مدیر با PBKDF2-SHA256 در `BOT_KV` ذخیره می‌شود.

## ساخت نسخه جدید JavidPanel — فقط یک فایل

1. از بسته Owner فایل `manual-obfuscation/JavidPanel-vX.Y.Z-wrapper-source.js` را بردارید.
2. آن را شخصاً در Dashboard سایت Obfuscator.io مبهم کنید. Installer هیچ API یا Token مربوط به Obfuscator.io ندارد.
3. خروجی را با نامی مثل زیر ذخیره کنید:

```text
JavidPanel-v0.5.1-wrapper.obf.js
```

4. در Admin → «نسخه‌ها» فقط همین یک فایل را Upload کنید و تأیید کنید که فایل به‌صورت دستی مبهم شده است.
5. Installer شماره نسخه را از نام فایل تشخیص می‌دهد (فیلد Version فقط override اختیاری است)، Core ثابت را خودکار متصل و SHA-256ها را محاسبه می‌کند.
6. Release جدید همیشه ابتدا **Beta / Admin-only** است.

## تست مستقیم Beta

Admin → «تست مستقیم»:

1. Cloudflare API Token آزمایشی را Paste کنید.
2. Verify را بزنید و Account را انتخاب کنید.
3. Channel را Beta بگذارید.
4. نصب مستقیم را اجرا کنید.

این مسیر Telegram را دور می‌زند و برای تست Releaseهای جدید است. همان پنل آزمایشی از Admin قابل Update، Reinstall، Clean Reinstall و Delete است.

## Public کردن و اطلاع‌رسانی

پس از تأیید Beta:

1. روی **Public کن** بزنید.
2. از این لحظه نصب‌های جدید Telegram نسخه Public را می‌گیرند.
3. در صورت تمایل Artifact Public را روی GitHub منتشر کنید.
4. فقط وقتی آماده بودید، **اطلاع‌رسانی کاربران** را اجرا کنید. فقط کاربرانی که پنل فعال با نسخه قدیمی‌تر دارند پیام می‌گیرند و می‌توانند از دکمه‌های ربات آپدیت را شروع کنند.

## عملیات «پنل‌های من»

- **آپدیت:** همان Worker/KV با نسخه Public جدید Deploy می‌شود.
- **بازنصب:** همان Worker/KV دوباره با Release انتخابی Deploy می‌شود.
- **بازنصب تمیز:** Worker و KV جدید با آدرس، Secure Path و رمز جدید ساخته می‌شود؛ پس از موفقیت، Worker/KV قبلی حذف می‌شود. اطلاعات KV قبلی از جمله کاربران و تنظیمات قبلی از بین می‌رود.
- **حذف:** Worker و KV نصب حذف می‌شوند.

Repository رسمی: https://github.com/JavidPanel/JavidPanel
