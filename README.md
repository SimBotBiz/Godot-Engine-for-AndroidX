# Godot Engine for AndroidX

Modifications to Godot Engine to make it compatible with AndroidX (SDK API 28+)

This repo is only a collection of submodules that links to specific branches in
[https://github.com/SimBotBiz/godot](https://github.com/SimBotBiz/godot)

## Why this mod exists?

- You want to write some Godot Android module that is based upon the latest API (28+)
- You are that kind of developer who likes to live on the bleeding edge of code releases

## How-to compile custom Android export templates (Windows)

1. You need to have this pre-requisites installed and configured:
    - Android SDK 28+ and NDK 17+
    - JDK 8
    - Python 3.5+ (with pipenv)  

2. Clone the repo on your machine
     
    ```cmd
    git clone --recurse-submodule https://github.com/SimBotBiz/Godot-Engine-for-AndroidX.git
    ```
    or alternatively, clicking on the specific submodule of the release you are interested, you can download the repo as zip, i.e. for Godot 3.1.1-stable-adxmod:
    [https://github.com/SimBotBiz/godot/archive/7e5e7030f74bc60ce2d03dbdd8d993e9f0d8974b.zip](https://github.com/SimBotBiz/godot/archive/7e5e7030f74bc60ce2d03dbdd8d993e9f0d8974b.zip) 

3. Move on the folder of the version you want to compile
    ```cmd
    cd godot-3.1.1-stable-adxmod
    ```
    or unzip the file you downloaded

4. Configure the env and install needed packages,  
    Godot use a python based build system (SCons), I like to use pipenv to isolate my python projects and dependencies, so I'll use that!    
    ```cmd
    pipenv --python 3
    pipenv install scons pywin32
    ```

5. Compile and build the APKs (export templates),  
    this will build both release and debug targets for all supported android architectures,  
    if you don't test on AVD you can skip *x86* and *x86_64* to make it faster!
    
    *(change -jx accordingly on how many cpu cores you have, I'm on a quad-core cpu)*
    ```cmd
    pipenv run scons -j4 platform=android target=release android_arch=armv7
    pipenv run scons -j4 platform=android target=release android_arch=arm64v8
    pipenv run scons -j4 platform=android target=release android_arch=x86
    pipenv run scons -j4 platform=android target=release android_arch=x86_64
    
    pipenv run scons -j4 platform=android target=release_debug android_arch=armv7
    pipenv run scons -j4 platform=android target=release_debug android_arch=arm64v8
    pipenv run scons -j4 platform=android target=release_debug android_arch=x86
    pipenv run scons -j4 platform=android target=release_debug android_arch=x86_64
    
    cd platform\android\java
    
    .\gradlew build
    ```

6. *android_release.apk* and *android_debug.apk* should be in your `bin\` folder


## Do you want to know more?

- Official documentation:
[https://docs.godotengine.org/en/3.1/development/compiling/index.html](https://docs.godotengine.org/en/3.1/development/compiling/index.html)

## Is my work useful for you?

[![PayPal Donate](https://img.shields.io/badge/PayPal-Donate-blue)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=YBKKYKG3X6AEU)
