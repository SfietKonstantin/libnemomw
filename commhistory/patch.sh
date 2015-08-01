#!/bin/sh

cp $PWD/../3rdparty/libcommhistory/src/*.h $PWD
cp $PWD/../3rdparty/libcommhistory/src/*.cpp $PWD

# Patches
sed -i s/#include\ \<QPair\>/#include\ \<QPair\>\\n#include\ \<QSharedPointer\>/g contactlistener.h

# Use NEMOMW_EXPORT macro
sed -i s/#include\ \"libcommhistoryexport.h\"/#include\ \"nemomw_global.h\"/g *.h
sed -i s/LIBCOMMHISTORY_EXPORT/NEMOMW_EXPORT/g *.h

sed -i s/#include\ \"libcommhistoryexport.h\"/#include\ \"nemomw_global.h\"/g *.cpp
sed -i s/LIBCOMMHISTORY_EXPORT/NEMOMW_EXPORT/g *.cpp
