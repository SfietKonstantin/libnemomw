#!/bin/sh

cp $PWD/../3rdparty/libprofile-qt/src/*.h $PWD
cp $PWD/../3rdparty/libprofile-qt/src/*.cpp $PWD
cp $PWD/../3rdparty/libprofile-qt/src/Profile $PWD

# Use NEMOMW_EXPORT macro
sed -i s/#include\ \<QObject\>/#include\ \"nemomw_global.h\"\\n\\n#include\ \<QObject\>/g profile.h
sed -i s/P_EXPORT/NEMOMW_EXPORT/g profile.h

