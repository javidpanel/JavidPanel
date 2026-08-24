# ارتقای Installer از 0.5.2 به 0.5.3

این ارتقا دیتابیس ربات را تغییر نمی‌دهد. برای حفظ کاربران، پنل‌های نصب‌شده، Releaseها و Tokenهای رمزگذاری‌شده باید **BOT_KV و MASTER_KEY فعلی حفظ شوند**.

## روش امن پیشنهادی

1. وارد Cloudflare Dashboard شوید.
2. Workers & Pages → Worker فعلی `javidpanel-installer` را باز کنید.
3. وارد Edit code شوید.
4. محتوای فایل `worker.js` نسخه 0.5.3 را جایگزین کد فعلی کنید.
5. Deploy را بزنید.
6. Binding با نام `BOT_KV` و Secret با نام `MASTER_KEY` را حذف یا تغییر ندهید.
7. `/admin` را با Hard Refresh باز کنید (`Ctrl+F5`).

**برای ارتقای نصب موجود، `install-windows.ps1` یا `install-linux.sh` را اجرا نکنید**؛ این اسکریپت‌ها برای نصب Fresh هستند و MASTER_KEY تازه تولید می‌کنند.
