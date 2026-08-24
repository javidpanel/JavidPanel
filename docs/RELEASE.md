# Release Pipeline v0.5.1

## قانون ثابت

Obfuscation کاملاً دستی است. Installer به Obfuscator.io API متصل نمی‌شود.

## ورودی مدیر

در هر انتشار فقط **یک فایل** وارد Installer Admin می‌شود:

```text
JavidPanel-vX.Y.Z-wrapper.obf.js
```

این فایل خروجی دستی Obfuscator.io برای Wrapper خصوصی JavidPanel است.

## Build خودکار Installer

Installer Core ثابت را از Artifact داخلی خود می‌خواند، SHA-256 آن را با مقدار مورد انتظار تطبیق می‌دهد، سپس:

```text
preserved Core + manually-obfuscated wrapper = final Worker
```

و این Metadata را ثبت می‌کند:

- Version
- Core SHA-256
- Wrapper SHA-256
- Final artifact SHA-256
- Size
- Source filename
- Release notes اختیاری
- Status/channel

## Beta

هر Upload جدید بدون استثنا `beta` و `admin-only` است. Telegram Installer عمومی Beta را نمی‌بیند.

## Direct validation

Beta از داخل Installer Admin با Cloudflare API Token روی یک Worker تستی نصب می‌شود. همین مسیر برای Update/Reinstall/Clean Reinstall/Delete تستی هم استفاده می‌شود.

## Public promotion

بعد از تست، مدیر به‌صورت صریح Release را Public می‌کند. از آن لحظه نصب جدید Telegram از همان Public Release استفاده می‌کند.

## Notification

Public شدن، Notification خودکار ندارد. «اطلاع‌رسانی کاربران» یک Action جداگانه است و فقط پس از تأیید مدیر اجرا می‌شود.

## GitHub

انتشار Artifact Public روی GitHub اختیاری است. GitHub نباید Wrapper خوانا یا فایل‌های Owner/Build Factory را دریافت کند.
