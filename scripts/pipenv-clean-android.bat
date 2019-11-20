pipenv run scons -c target=release platform=android android_arch=armv7 
pipenv run scons -c target=release platform=android android_arch=arm64v8
pipenv run scons -c target=release platform=android android_arch=x86
pipenv run scons -c target=release platform=android android_arch=x86_64

pipenv run scons -c target=release_debug platform=android android_arch=armv7
pipenv run scons -c target=release_debug platform=android android_arch=arm64v8	
pipenv run scons -c target=release_debug platform=android android_arch=x86
pipenv run scons -c target=release_debug platform=android android_arch=x86_64