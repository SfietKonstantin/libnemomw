#!/bin/sh

cp $PWD/../3rdparty/libcontacts/src/*.h $PWD
cp $PWD/../3rdparty/libcontacts/src/*.cpp $PWD

# Use NEMOMW_EXPORT macro
rm $PWD/contactcacheexport.h
sed -i s/#include\ \"contactcacheexport.h\"/#include\ \<nemomw_global.h\>/g *.h
sed -i s/CONTACTCACHE_EXPORT/NEMOMW_EXPORT/g *.h

# Patch QtContacts-sqlite extension
sed -i s/Flags\(flagsValue\(\)\)/Flags\(static_cast\<int\>\(flagsValue\(\)\)\)/g $PWD/../3rdparty/qtcontacts-sqlite/src/extensions/qcontactstatusflags_impl.h
