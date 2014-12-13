#!/bin/sh

cp $PWD/../3rdparty/libprofile-qt/src/*.h $PWD
cp $PWD/../3rdparty/libprofile-qt/src/*.cpp $PWD

# Use NEMOMW_EXPORT macro
sed -i s/#include\ \<QObject\>/#include\ \"nemomw_global.h\"\\n\\n#include\ \<QObject\>/g profile.h
sed -i s/class\ P_EXPORT/class\ NEMOMW_EXPORT/g profile.h

