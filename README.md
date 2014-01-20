### Sublime Text Imfix

This repo is aimed to do three things:

+ Install Sublime Text 3
+ Install Fcitx Input Method
+ Fix Sublime Text 2/3's input method problem under Ubuntu(Debian) System

### Step to use this repo ###

+ Update and then upgrade your system to the newest

```bash
sudo apt-get update && sudo apt-get upgrade
```

+ Clone this repo in your local directory : 

```bash
git clone https://github.com/lyfeyaj/sublime-text-imfix.git
```
    
+ Change your current directory to this folder `sublime-text-imfix`:

```bash
cd sublime-text-imfix
```
    
+ Run the below script : 

```bash
./sublime-imfix
```

+ Done! Re-login your X windows. And then you can enjoy using Sublime Text 3 with Fctix Input Method!

### Completion Preview Image:

![Fcitx](image/fcitx.png)

### Todo

+ Add compile detail to this README

```bash
gcc -shared -o libsublime-imfix.so sublime_imfix.c  `pkg-config --libs --cflags gtk+-2.0` -fPIC
```