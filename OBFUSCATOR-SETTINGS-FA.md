# تنظیم پیشنهادی مبهم‌سازی پنل جاوید

فایل `manual-obfuscation/worker.js` را به‌صورت کامل در Obfuscator.io باز کنید. برای پنل جاوید از حالت High استفاده نکنید؛ این حالت حجم و زمان اجرای کد را بی‌دلیل زیاد می‌کند.

تنظیم پیشنهادی:

- Target: `service-worker`
- Compact: روشن
- Simplify: روشن
- Identifier Names Generator: `hexadecimal`
- Rename Globals: خاموش
- Rename Properties: خاموش
- Self Defending: روشن
- String Array: روشن
- String Array Threshold: `0.60`
- String Array Encoding: خالی / بدون Encoding
- String Array Calls Transform: خاموش
- String Array Index Shift: روشن
- String Array Rotate: روشن
- String Array Shuffle: روشن
- String Array Wrappers Count: `1`
- Control Flow Flattening: خاموش
- Dead Code Injection: خاموش
- Debug Protection: خاموش
- Disable Console Output: خاموش
- Split Strings: خاموش
- Numbers To Expressions: خاموش
- Transform Object Keys: خاموش
- Source Map: خاموش
- Domain Lock: خاموش
- VM Obfuscation: خاموش

اگر بعد از چند نسخه پایدار محافظت بیشتری لازم بود، فقط `Control Flow Flattening` را با Threshold حدود `0.10` تا `0.15` آزمایش کنید. VM Obfuscation و Dead Code Injection برای این Worker توصیه نمی‌شوند.

بعد از مبهم‌سازی، خروجی را بدون هیچ ویرایش دیگری در پنل نصاب به‌عنوان نسخه آزمایشی بارگذاری کنید.
