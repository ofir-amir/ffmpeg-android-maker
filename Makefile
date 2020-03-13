# TODO: pass this to the container
export ANDROID_SDK_HOME = $(HOME)/Android/Sdk
export ANDROID_NDK_HOME = $(HOME)/Android/Sdk/ndk/21.0.6113669/

$(PWD)/sources/ffmpeg/ffmpeg-git/configure:
	git clone https://github.com/LTNGlobal-opensource/FFmpeg-ltn $(PWD)/sources/ffmpeg/ffmpeg-git

clone-ffmpeg: $(PWD)/sources/ffmpeg/ffmpeg-git/configure

all: clone-ffmpeg
	./ffmpeg-android-maker.sh --source-git-branch=vid.lted.0.17
