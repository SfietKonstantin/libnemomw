#!/bin/sh

# Extract pim
if [ ! -d "$PWD/../3rdparty/qtpim/qtpim" ]; then
    tar -Jxf $PWD/../3rdparty/qtpim/qtpim-opensource-src-0.0~gita102eacec29d54e609e4ac4350b70bc7f7f92d5e.tar.xz -C $PWD/../3rdparty/qtpim/
    mv $PWD/../3rdparty/qtpim/qtpim-opensource-src-0.0~gita102eacec29d54e609e4ac4350b70bc7f7f92d5e $PWD/../3rdparty/qtpim/qtpim
fi

cp $PWD/../3rdparty/qtpim/qtpim/src/contacts/*.h $PWD
cp $PWD/../3rdparty/qtpim/qtpim/src/contacts/*.cpp $PWD
mkdir -p $PWD/details
cp $PWD/../3rdparty/qtpim/qtpim/src/contacts/details/*.h $PWD/details
cp $PWD/../3rdparty/qtpim/qtpim/src/contacts/details/*.cpp $PWD/details
mkdir -p $PWD/engines
cp $PWD/../3rdparty/qtpim/qtpim/src/contacts/engines/*.h $PWD/engines
cp $PWD/../3rdparty/qtpim/qtpim/src/contacts/engines/*.cpp $PWD/engines
mkdir -p $PWD/filters
cp $PWD/../3rdparty/qtpim/qtpim/src/contacts/filters/*.h $PWD/filters
cp $PWD/../3rdparty/qtpim/qtpim/src/contacts/filters/*.cpp $PWD/filters
mkdir -p $PWD/requests
cp $PWD/../3rdparty/qtpim/qtpim/src/contacts/requests/*.h $PWD/requests
cp $PWD/../3rdparty/qtpim/qtpim/src/contacts/requests/*.cpp $PWD/requests

/usr/lib/qtchooser/qtchooser -run-tool=syncqt.pl -qt=5 $PWD -outdir $PWD -version 5.0.0

# Use NEMOMW_EXPORT macro
sed -i s,#include\ \<QtCore/qglobal.h\>,#include\ \"nemomw_global.h\",g *.h
sed -i s/QT_BUILD_CONTACTS_LIB/NEMOMW_LIBRARY/g *.h
