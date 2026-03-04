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

