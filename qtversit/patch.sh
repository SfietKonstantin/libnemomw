#!/bin/sh

# Extract pim
if [ ! -d "$PWD/../3rdparty/qtpim/qtpim" ]; then
    tar -Jxf $PWD/../3rdparty/qtpim/qtpim-opensource-src-0.0~gita102eacec29d54e609e4ac4350b70bc7f7f92d5e.tar.xz -C $PWD/../3rdparty/qtpim/
    mv $PWD/../3rdparty/qtpim/qtpim-opensource-src-0.0~gita102eacec29d54e609e4ac4350b70bc7f7f92d5e $PWD/../3rdparty/qtpim/qtpim
fi

cp $PWD/../3rdparty/qtpim/qtpim/src/versit/*.h $PWD
cp $PWD/../3rdparty/qtpim/qtpim/src/versit/*.cpp $PWD

/usr/lib/qtchooser/qtchooser -run-tool=syncqt.pl -qt=5 $PWD -outdir $PWD -version 5.0.0

# Use NEMOMW_EXPORT macro
sed -i s,#include\ \<QtCore/qglobal.h\>,#include\ \"nemomw_global.h\",g *.h
sed -i s/QT_BUILD_VERSIT_LIB/NEMOMW_LIBRARY/g *.h
