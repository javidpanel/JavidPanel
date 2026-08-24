# مجوز و مدل توزیع JavidPanel

JavidPanel تحت مجوز اختصاصی Source-Available منتشر می‌شود و Open Source نیست.

## نکته مهم

قرار دادن یک فایل JavaScript در GitHub عمومی با هدف «غیرقابل کپی بودن» از نظر فنی ممکن نیست. License نیز مانع فنی کپی نیست؛ License حقوق استفاده را تعریف می‌کند.

برای کاهش کپی/تغییر غیرمجاز، مدل انتشار شامل این لایه‌هاست:

- License اختصاصی و منع Copy/Redistribution/Modification؛
- انتشار Production Artifact به‌صورت Obfuscated؛
- نصب رسمی فقط از طریق Telegram Installer؛
- Installation Marker؛
- Release Manifest و SHA-256؛
- بروزرسانی از کانال رسمی؛
- عدم انتشار Secrets و Build material حساس.

برای محدودیت فنی قوی‌تر از این، باید بخشی از منطق تجاری/صدور مجوز به یک سرویس سمت سرور تحت کنترل JavidPanel منتقل شود؛ Worker عمومی به‌تنهایی DRM کامل ایجاد نمی‌کند.
