# GitHub Publication Notes — v0.5.0

این Repository عمومی عمداً Wrapper خوانا، Build Factory خصوصی و سورس عملیاتی Installer Bot را شامل نمی‌شود.

Production JavidPanel Artifact فقط پس از این مراحل وارد `dist/` می‌شود:

1. Manual obfuscation of the private wrapper in Obfuscator.io Dashboard.
2. Single-file upload to Installer Admin.
3. Automatic preserved-Core assembly and SHA-256 validation.
4. Beta direct-install testing.
5. Explicit administrator promotion to Public.
6. Explicit GitHub publication.

Repository policy:

- never commit credentials or user Cloudflare tokens;
- never commit the readable private wrapper;
- never commit Owner release seeds or Installer control-plane source;
- publish `dist/JavidPanel.worker.js` only after Beta validation;
- keep `dist/manifest.json` synchronized with the exact artifact SHA-256.
