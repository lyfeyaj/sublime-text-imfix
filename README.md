### Sublime Text Imfix

This is repo is aimed to fix sublime text 2 or 3's input method problem under Ubuntu

### Step to use this repo

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