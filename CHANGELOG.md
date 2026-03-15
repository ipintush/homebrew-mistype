# Mistype Changelog / יומן שינויים

---

## 1.1 (2026-03-11)

### Bug Fixes / תיקוני באגים

- **Clipboard race condition**: Rapid hotkey presses no longer cause stale converted text to be pasted. Each new conversion now cancels any pending clipboard-restore from the previous operation before starting.
  **תחרות על הלוח**: לחיצות מהירות על קיצור הדרך כבר לא גורמות להדבקת טקסט ישן. כל המרה חדשה מבטלת שחזור לוח ממבצע קודם לפני שהיא מתחילה.

- **Clipboard restore delay**: Increased from 0.15 s to 0.5 s so slow apps (e.g. heavy Electron apps) have enough time to finish processing Cmd+V before the original clipboard is restored.
  **עיכוב שחזור לוח**: הוגדל מ-0.15 שניות ל-0.5 שניות, כך שאפליקציות איטיות (כגון אפליקציות Electron כבדות) מספיקות לעבד את Cmd+V לפני שהלוח מוחזר.

### Features / תכונות חדשות

- **FN / Globe key support**: Globe+letter combinations (e.g. Globe+H) can now be recorded as custom hotkeys. The recorder accepts `.function` as a valid modifier and displays it as `fn` in the hotkey field and menu bar (e.g. `fn H`).
  **תמיכה במקש FN / Globe**: ניתן כעת להקליט שילובי Globe+אות (למשל Globe+H) כקיצורי דרך מותאמים אישית.

- **Special key names**: The hotkey display now shows human-readable names for Space, Return, Tab, F1–F12, and Globe instead of `?`.
  **שמות מפתחות קריאים**: התצוגה מציגה עכשיו שמות ברורים כמו Space, Return, Tab, F1–F12 במקום `?`.

---

## 1.0 (2026-01-01 — initial release / גרסה ראשונה)

- Menu-bar app for toggling text between Hebrew and English keyboard layouts. / אפליקציית שורת תפריט להמרת טקסט בין פריסות מקלדת עברית ואנגלית.
- Global hotkey (default Cmd+Shift+H): copies selected text, converts it, pastes it back. / קיצור דרך גלובלי (ברירת מחדל Cmd+Shift+H): מעתיק את הטקסט הנבחר, ממיר אותו ומדביק בחזרה.
- Custom hotkey recorder with Cmd / Ctrl / Option modifier support. / מקליט קיצורי דרך מותאמים אישית עם תמיכה ב-Cmd / Ctrl / Option.
- Accessibility permission prompt on first launch. / בקשת הרשאת נגישות בהפעלה הראשונה.
