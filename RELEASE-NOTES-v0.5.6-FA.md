# JavidPanel v0.5.6 — KV Quota Hotfix

- تشخیص دقیق خطای سقف روزانه Cloudflare Workers KV در نصب مستقیم و ربات.
- بازگرداندن HTTP 429 واقعی برای quota به‌جای خطای عمومی 502.
- نمایش روشن تفاوت Storage با سهمیه روزانه Write و زمان ریست 00:00 UTC.
- جلوگیری از Unhandled Promise در پنل مدیریت هنگام شکست عملیات سنگین.
- هسته JavidPanel و چهار کلید سازگاری `pwd`، `javid_embed`، `javid_users` و `javid_install_license` بدون تغییر باقی مانده‌اند.

نکته: این نسخه quota کلادفلیر را دور نمی‌زند. حساب Free که به 1000 Write روزانه رسیده تا ریست روزانه، ارتقای Workers Paid یا استفاده از حساب دیگر امکان Write جدید ندارد.
