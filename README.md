# Fix Bangla Font in Linux

Incorrect Bangla Unicode font rendering is a common issue across many Linux distributions. The default fonts often appear broken, too small, or have significantly mismatched sizing compared to standard Latin/English fonts. 

This repository provides a quick, automated fix by installing the highly legible **Kalpurush** font and configuring it as the default fallback for Bengali text system-wide.

## Instructions

Open your terminal and execute the following commands to apply the fix:

### Install Bangla fonts
```
curl -sSL https://raw.githubusercontent.com/mobashirrahman/bangla-font-fix-linux/main/fonts-bangla-download.sh | sh
```

### Make Kalpurush default Bangla font
```
curl -sSL https://raw.githubusercontent.com/mobashirrahman/bangla-font-fix-linux/main/bangla-kalpurush-default.sh | sh
```

### Download Windows 10 fonts for linux
```
curl -sSL https://raw.githubusercontent.com/mobashirrahman/bangla-font-fix-linux/main/msfonts-download.sh | sh
```

## Extra Steps for Firefox Users

Follow these steps to configure fonts for Bengali and Latin text in Firefox:

1. **Open Firefox Settings:**
   - Navigate to `Settings`.

2. **Navigate to Fonts & Colors:**
   - Go to `Language & Appearance` -> `Fonts & Colors`.
   - Click on the `Advanced...` button.

3. **Configure Bengali Fonts:**
   - **Fonts for:** Select `Bengali`.
   - **Proportional:** Set to `Serif`, Size to `16`.
   - **Serif:** Set to `Kalpurush`.
   - **Sans-serif:** Set to `Kalpurush`.
   - **Monospace:** Set to `Consolas`, Size to `12`.
   - **Minimum font size:** Leave as `None`.

   - Click `OK` to save.

4. **Configure Latin Fonts:**
   - **Fonts for:** Select `Latin`.
   - **Proportional:** Set to `Serif`, Size to `16`.
   - **Serif:** Set to `Times New Roman`.
   - **Sans-serif:** Set to `Arial`.
   - **Monospace:** Set to `Consolas`, Size to `12`.
   - **Minimum font size:** Leave as `None`.

   - Click `OK` to save.

5. **Set Default Font:**
   - Ensure the default font is set to `Times New Roman`.

This setup ensures that Bengali text is displayed correctly with the desired fonts and sizes in Firefox.

## Extra Steps for Google Chrome & Microsoft Edge Users

By default, Chrome and Edge on Linux hardcode **Noto Sans Bengali** as the absolute fallback for Bengali text, completely ignoring your generic `sans-serif` settings if a webpage does not specify `<html lang="bn">` (which most don't).

This script **automatically hijacks** Chrome and Edge's hardcoded "Noto Sans Bengali" requests and forces them to use **Kalpurush** instead! You do not need any extensions.

However, for the best experience, you can also set Kalpurush as your standard font:

1. **Open Edge/Chrome Settings:**
   - Navigate to `edge://settings/fonts` (Edge) or `chrome://settings/fonts` (Chrome).

2. **Set Standard Fonts:**
   - **Standard font:** Set to `Kalpurush`.
   - **Serif font:** Set to `Kalpurush`.
   - **Sans-serif font:** Set to `Kalpurush`.

3. Restart your browser.

More Linux related Tutorials at: https://zihad.com.bd/posts/fix-bangla-fonts-broken-problem-linux/

### Extra
Download and Install 30+ Bangla fonts
https://github.com/tazihad/bangla-fonts
