# SilverStripe Security Theme

## Usage

```yml

---
Name: app-security-theme
After:
- '#coresecurity'
---

SilverStripe\Security\Security:
  template_main: LittleGiant\SilverstripeSecurityTheme\SecurityPage
  logo: 'path/to/your/image.png' # Optional logo image (supports bitmaps)
  logo_width: 100 # Optional width constraint
  focus_accent: '#9fa8da' # Optional focused border color
  button_accent: '#3f51b5' # Optional button background
  button_color: '#fff' # Optional button color
  button_border_color: '#3f51b5' # Optional button color
  input_active_border_color: '#3f51b5' # Optional input:focused border color

```

## Screenshot

![Screenshot](https://github.com/littlegiant/silverstripe-security-theme/blob/master/screenshot.png)
