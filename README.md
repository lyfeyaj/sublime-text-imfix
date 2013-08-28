### Sublime Text Imfix

This is repo is aimed to do three things:

+ Install Sublime Text 3
+ Install Fcitx
+ Fix sublime text 2 or 3's input method problem under Ubuntu

### Step to use this repo ###

+ Updata and upgrade your system to the newst

```bash
sudo apt-get update && sudo apt-get upgrade
```

+ Clone this repo in your local directory : 

```bash
git clone https://github.com/lyfeyaj/sublime-text-imfix.git
```
    
+ Change directory to this folder :

```bash
cd sublime-text-imfix
```
    
+ Run the command : 

```bash
./sublime-imfix
```

+ Done!

### Todo

+ Add compile detail to this README

```bash
gcc -shared -o libsublime-imfix.so sublime_imfix.c  `pkg-config --libs --cflags gtk+-2.0` -fPIC
```