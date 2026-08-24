# JavidPanel v0.3.0 — GitHub / Installer Architecture

## تغییرات پنل JavidPanel

- افزودن GitHub رسمی پروژه در پنل مدیریت و پنل مشترک.
- افزودن Footer نسخه، Copyright و وضعیت توزیع Proprietary.
- حفظ کامل دو خط فیزیکی Core نسخه 0.2.1 در مقایسه بایت‌به‌بایت.
- افزودن Installation Marker به Wrapper؛ Production Build بدون Provision رسمی Installer فعال نمی‌شود.
- حفظ UI، فونت Vazir، Hero، QR بزرگ و Date/Jalali features نسخه قبل.

## Telegram Installer Worker

- Provision خودکار KV و Worker در حساب Cloudflare کاربر.
- ساخت رمز قوی و Secure Path و تحویل URL/رمز در Telegram.
- نگهداری Cloudflare API Token و رمز پنل به‌شکل AES-GCM encrypted در KV Installer.
- لیست «پنل‌های من»، کنترل Auto Update و محدودیت تعداد نصب.
- داشبورد مدیریت Installer با کاربران، Block/Unblock، آمار نصب، تنظیم متن و دکمه‌های ربات.
- Broadcast صف‌بندی‌شده با متن، تصویر و دکمه URL.
- Release Manifest + SHA-256 verification و بروزرسانی برنامه‌ریزی‌شده پنل‌ها.

## انتشار GitHub

- مجموعه مستندات حرفه‌ای، Security Policy، Changelog، Issue Template و License اختصاصی آماده شد.
- Public repository staging به‌صورت Git local commit آماده است.
- Worker خوانا و سورس عملیاتی Installer عمداً از Public staging حذف شده‌اند.

## مرحله خارجی باقی‌مانده

Production Worker باید مطابق `docs/OBFUSCATION.md` در Obfuscator.io پردازش شود. ابزارهای این محیط امکان Submit/Download از Dashboard حساب Obfuscator.io را ندارند، بنابراین برای جلوگیری از انتشار اشتباه سورس خوانا، Artifact نهایی Public هنوز تولید/Push نشده است.
