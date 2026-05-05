# Kiro RTL
(Hebrew below)

A simple plugin to add RTL (Right-to-Left) support for Hebrew text in Kiro chat

<img width="732" height="443" alt="image" src="https://github.com/user-attachments/assets/b0194663-0eef-4df2-8fff-5d4ac70f739f" />


## ⚡ Quick Installation

### Step 1: Download and Extract
1. **Download the ZIP file** `install-rtl-kiro-1.0.zip`
2. **Extract the ZIP file** to a folder (right-click → Extract All)
3. **Remember the folder location** (e.g., `C:\Users\YourName\Downloads\RTL-KIRO`)

### Step 2: Open PowerShell
1. **Press Windows key** and type "PowerShell"
2. **Choose "Windows PowerShell"** (NOT PowerShell x86 or ISE)
3. **Click to open it**

### Step 3: Navigate to the Folder
1. **Type `cd` followed by a space**
2. **Type the path to your extracted folder**
   ```powershell
   cd "C:\Users\YourName\Downloads\RTL-KIRO"
   ```
3. **Press Enter**

### Step 4: Install
1. **Close Kiro completely** (make sure it's not running)
2. **Copy and paste this command:**
   ```powershell
   powershell -ExecutionPolicy Bypass -File install-rtl-kiro.ps1
   ```
3. **Press Enter**
4. **Wait for "Installation completed successfully!" message**

### Step 5: Test
1. **Open Kiro**
2. **Type in Hebrew in the chat - text will be automatically right-aligned!**

## ✨ What It Does

The plugin adds smart CSS rules that automatically detect text direction:

- ✅ **Hebrew text** - Automatically right-aligned
- ✅ **English text** - Automatically left-aligned
- ✅ **Code blocks** - Always remain left-to-right (LTR)
- ✅ **Works in messages and input box**
- ✅ **Works with all Windows users**

## 🗑️ Uninstall

To remove the plugin:

1. **Open PowerShell** (same as Step 2 above)
2. **Navigate to the folder** (same as Step 3 above)
3. **Run the uninstall command:**
   ```powershell
   powershell -ExecutionPolicy Bypass -File uninstall-rtl-kiro.ps1
   ```

## 📁 Files

- ⚙️ `install-rtl-kiro.ps1` - Simple and fast installation script
- 🗑️ `uninstall-rtl-kiro.ps1` - Uninstall script

## 🔧 Troubleshooting

### If the plugin doesn't work:
1. Make sure Kiro is completely closed before installation
2. Run the script as the user who installed Kiro
3. Restart Kiro completely

### "File not found" error:
- Make sure you extracted the ZIP file first
- Make sure you're in the correct folder (use `cd` command)
- Make sure Kiro is installed in the standard location
- Run the script as the user who installed Kiro

### "Execution Policy" error:
- Make sure you're using the full command with `-ExecutionPolicy Bypass`
- Run PowerShell as Administrator if needed

---

**Created by Tal Cohen**  
**Version 1.0**

---

# יישור לימין ב-KIRO (עברית)

תוסף פשוט להוספת תמיכה ב-RTL (כיוון מימין לשמאל) לטקסט עברית בצ'אט של Kiro

## ⚡ התקנה מהירה

### שלב 1: הורדה וחילוץ
1. **הורד את קובץ ה-ZIP** `install-rtl-kiro-1.0.zip`
2. **חלץ את קובץ ה-ZIP** לתיקייה (לחיצה ימנית → חלץ הכל)
3. **זכור את מיקום התיקייה** (למשל: `C:\Users\השם שלך\Downloads\RTL-KIRO`)

### שלב 2: פתיחת PowerShell
1. **לחץ על מקש Windows** וכתוב "PowerShell"
2. **בחר ב-"Windows PowerShell"** (לא PowerShell x86 או ISE)
3. **לחץ לפתיחה**

### שלב 3: ניווט לתיקייה
1. **כתוב `cd` ואחריו רווח**
2. **כתוב את הנתיב לתיקייה שחילצת, לדוגמה:
   ```powershell
   cd "C:\Users\השם שלך\Downloads\RTL-KIRO"
   ```
3. **לחץ Enter**

### שלב 4: התקנה
1. **סגור את Kiro לחלוטין** (ודא שהוא לא רץ)
2. **העתק והדבק את הפקודה הזו:**
   ```powershell
   powershell -ExecutionPolicy Bypass -File install-rtl-kiro.ps1
   ```
3. **לחץ Enter**
4. **חכה להודעה "Installation completed successfully!"**

### שלב 5: בדיקה
1. **פתח את Kiro**
2. **כתוב בעברית בצ'אט - הטקסט יהיה מיושר לימין אוטומטית!**

## ✨ מה זה עושה

התוסף מוסיף כללי CSS חכמים שמזהים אוטומטית את כיוון הטקסט:

- ✅ **טקסט בעברית** - מיושר לימין אוטומטית
- ✅ **טקסט באנגלית** - מיושר לשמאל אוטומטית
- ✅ **בלוקי קוד** - תמיד נשארים משמאל לימין (LTR)
- ✅ **עובד בהודעות ובתיבת הכתיבה**
- ✅ **עובד עם כל משתמש Windows**

## 🗑️ הסרה

להסרת התוסף:

1. **פתח PowerShell** (כמו בשלב 2 למעלה)
2. **נווט לתיקייה** (כמו בשלב 3 למעלה)
3. **הרץ את פקודת ההסרה:**
   ```powershell
   powershell -ExecutionPolicy Bypass -File uninstall-rtl-kiro.ps1
   ```

## 📁 קבצים

- ⚙️ `install-rtl-kiro.ps1` - סקריפט התקנה פשוט ומהיר
- 🗑️ `uninstall-rtl-kiro.ps1` - סקריפט הסרה

## 🔧 פתרון בעיות

### אם התוסף לא עובד:
1. ודא ש-Kiro סגור לחלוטין לפני ההתקנה
2. הרץ את הסקריפט כמשתמש שהתקין את Kiro
3. אתחל את Kiro לחלוטין

### שגיאת "קובץ לא נמצא":
- ודא שחילצת את קובץ ה-ZIP קודם
- ודא שאתה בתיקייה הנכונה (השתמש בפקודת `cd`)
- ודא ש-Kiro מותקן במיקום הסטנדרטי
- הרץ את הסקריפט כמשתמש שהתקין את Kiro

### שגיאת "Execution Policy":
- ודא שאתה משתמש בפקודה המלאה עם `-ExecutionPolicy Bypass`
- הרץ את PowerShell כמנהל אם נדרש

---

**נוצר ע"י טל כהן**  
**גרסה 1.0**
