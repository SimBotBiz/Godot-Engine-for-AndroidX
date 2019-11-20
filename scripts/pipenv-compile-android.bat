pipenv run scons -j4 target=release 		platform=android android_arch=armv7 	tools=no use_lto=yes
pipenv run scons -j4 target=release 		platform=android android_arch=arm64v8 	tools=no use_lto=yes
pipenv run scons -j4 target=release 		platform=android android_arch=x86 		tools=no use_lto=yes
pipenv run scons -j4 target=release 		platform=android android_arch=x86_64 	tools=no use_lto=yes
																										
pipenv run scons -j4 target=release_debug 	platform=android android_arch=armv7 	tools=no use_lto=yes
pipenv run scons -j4 target=release_debug 	platform=android android_arch=arm64v8	tools=no use_lto=yes
pipenv run scons -j4 target=release_debug 	platform=android android_arch=x86 		tools=no use_lto=yes
pipenv run scons -j4 target=release_debug 	platform=android android_arch=x86_64 	tools=no use_lto=yes

%ANDROID_NDK_ROOT%\toolchains\llvm\prebuilt\windows-x86_64\bin\llvm-strip.exe -strip-debug "platform\android\java\libs\release\armeabi-v7a\libgodot_android.so"
%ANDROID_NDK_ROOT%\toolchains\llvm\prebuilt\windows-x86_64\bin\llvm-strip.exe -strip-debug "platform\android\java\libs\release\arm64-v8a\libgodot_android.so"
%ANDROID_NDK_ROOT%\toolchains\llvm\prebuilt\windows-x86_64\bin\llvm-strip.exe -strip-debug "platform\android\java\libs\release\x86\libgodot_android.so"
%ANDROID_NDK_ROOT%\toolchains\llvm\prebuilt\windows-x86_64\bin\llvm-strip.exe -strip-debug "platform\android\java\libs\release\x86_64\libgodot_android.so"

cd platform\android\java

.\gradlew build