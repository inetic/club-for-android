if [ "$1" = "clean" ]; then
  rm -rf libs obj club 2>/dev/null
  rm -rf jni/club 2>/dev/null
  exit
fi

git clone git://github.com/inetic/club jni/club
ndk-build

