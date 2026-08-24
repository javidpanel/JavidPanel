# JavidPanel v0.5.2

- رفع خطای Setup ربات ناشی از سقف PBKDF2 در Cloudflare Workers؛ iteration از 160,000 به 100,000 اصلاح شد و مقدار iteration همراه رکورد احراز هویت ذخیره می‌شود.
- ساده‌سازی کامل Release Factory: مالک فقط یک `worker.js` کامل را مبهم می‌کند و Installer همان یک فایل مبهم‌شده را به‌عنوان Beta ثبت می‌کند.
- حذف Core/Wrapper assembly از Installer.
- حفظ چرخه Beta → Direct Test → Public → Optional User Notification.
- بازنویسی مستندات عمومی برای انتشار رسمی و بین‌المللی.
