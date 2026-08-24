# JavidPanel v0.5.0

JavidPanel یک پنل حرفه‌ای مبتنی بر Cloudflare Worker با پنل مدیریت فشرده، پنل مشترک، مدیریت چندکاربره، تاریخ شمسی و چرخه نصب/بروزرسانی کنترل‌شده است.

## اصل انتشار نسخه‌ها

از نسخه 0.5.0 هیچ اتصال API به Obfuscator.io وجود ندارد. فرایند ثابت انتشار این است:

1. Wrapper خصوصی JavidPanel از بسته Owner برداشته می‌شود.
2. مالک پروژه Wrapper را شخصاً در Dashboard سایت Obfuscator.io مبهم می‌کند.
3. فقط **یک فایل خروجی مبهم‌شده** در Installer Admin بارگذاری می‌شود.
4. Installer، Core ثابت و دست‌نخورده را از داخل خودش به فایل متصل می‌کند، SHA-256 می‌سازد و Release را در وضعیت **Beta** قرار می‌دهد.
5. Beta فقط از بخش «تست مستقیم» پنل Installer و با Cloudflare API Token قابل نصب/آزمایش است.
6. پس از تست و دیباگ، مدیر نسخه را به **Public** ارتقا می‌دهد.
7. اطلاع‌رسانی آپدیت کاربران قدیمی فقط با فرمان جداگانه مدیر انجام می‌شود؛ آپدیت اجباری نیست.

## نصب رسمی کاربر نهایی

کاربر نهایی از Telegram Installer رسمی استفاده می‌کند. ربات Cloudflare API Token محدود را دریافت می‌کند و به‌صورت خودکار KV، Worker، Binding، Secure Path و رمز مدیریت قوی را می‌سازد. در «پنل‌های من» عملیات آپدیت، بازنصب، بازنصب تمیز و حذف در دسترس است.

## Installer Bot

بسته مستقل `JavidPanel-InstallerBot-v0.5.0` یک Cloudflare Worker مستقل است. نصب آن با اسکریپت Windows/Linux انجام می‌شود. بعد از Deploy فقط `MASTER_KEY` به‌صورت Worker Secret نیاز است؛ رمز مدیر در اولین ورود از مسیر `/setup` تعیین و به‌صورت PBKDF2-SHA256 در KV نگهداری می‌شود. Bot Token نیز از `/setup` یا Admin وارد شده و Webhook خودکار تنظیم می‌شود.

## GitHub

Repository رسمی: https://github.com/JavidPanel/JavidPanel

Repository عمومی شامل مستندات و Artifactهای عمومیِ تأییدشده است. Wrapper خوانا، Core خصوصی Build Factory و سورس عملیاتی Installer در Repository عمومی قرار نمی‌گیرند.

## راهنماها

- `INSTALL-FA.md` — نصب Installer برای مدیر پروژه.
- `docs/INSTALLER-BOT.md` — معماری و امکانات ربات.
- `docs/RELEASE.md` — چرخه Beta → Public → Notify.
- `docs/OBFUSCATION.md` — روش دستی Obfuscator.io.
- `docs/SECURITY.md` — معماری امنیتی.
- `LICENSE.md` — شرایط حقوقی و محدودیت توزیع.
