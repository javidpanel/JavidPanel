# Manual Obfuscator.io Workflow

## اصل ثابت

Core transport/config وارد Obfuscator.io نمی‌شود و Installer نیز هیچ API Key یا ارتباط REST با Obfuscator.io ندارد.

## مراحل هر نسخه

1. از بسته Owner فایل زیر را بردارید:

```text
manual-obfuscation/JavidPanel-vX.Y.Z-wrapper-source.js
```

2. همان فایل را شخصاً در Dashboard سایت Obfuscator.io Upload/Paste کنید.
3. تنظیماتی را انتخاب کنید که برای Cloudflare Worker/Service Worker با عملکرد نسخه شما سازگار باشد.
4. خروجی را دانلود کنید.
5. نام خروجی را به فرم زیر تغییر دهید:

```text
JavidPanel-vX.Y.Z-wrapper.obf.js
```

6. در Installer Admin فقط همین یک فایل را Upload کنید.
7. Installer Core داخلی را متصل و نسخه Beta را می‌سازد.
8. Beta را از Direct Test آزمایش کنید.
9. پس از تأیید، Public کنید.

## ممنوع در Repository عمومی

- Wrapper خوانا
- Core/Wrapper Build Factory خصوصی
- Artifact تست‌نشده
- Token یا Credential

Obfuscation از نظر فنی کد JavaScript را «غیرقابل کپی» نمی‌کند؛ نقش آن افزایش هزینه مهندسی معکوس در کنار License، Installation Marker و Release Control است.
