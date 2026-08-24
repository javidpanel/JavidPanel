# سیاست بروزرسانی v0.5.0

## کانال‌ها

- **Beta:** فقط Admin-only و برای Direct Test.
- **Public/Stable:** نسخه نصب عمومی Telegram و منبع Update کاربران.

## انتشار نسخه

هر Release ابتدا Beta است. Promote به Public نیازمند فرمان صریح مدیر است. Public شدن به‌تنهایی هیچ پیام گروهی یا آپدیت خودکاری را اجرا نمی‌کند.

## اطلاع‌رسانی

بعد از Public شدن، مدیر می‌تواند جداگانه «اطلاع‌رسانی کاربران» را تأیید کند. فقط کاربران Telegram که پنل قدیمی‌تر دارند هدف قرار می‌گیرند. پیام شامل مسیر مشاهده پنل‌ها و Update است.

## Update

Update همان Worker را با Release Public جدید Deploy می‌کند و همان KV/URL را نگه می‌دارد.

## Reinstall

Reinstall همان Worker/KV را دوباره Deploy می‌کند و برای تعمیر Script مناسب است.

## Clean Reinstall

Worker و KV جدید، آدرس جدید، Secure Path جدید و Password جدید ایجاد می‌شود. فقط بعد از موفقیت نصب جایگزین، منابع قبلی حذف می‌شوند. KV قبلی مهاجرت داده نمی‌شود.

## Delete

Worker و KV مربوط به نصب حذف و رکورد Inventory پاک می‌شود.

## GitHub

GitHub یک مقصد انتشار اختیاری برای Artifact Public است؛ Installer برای نصب‌های Telegram به GitHub وابستگی اجباری ندارد.
