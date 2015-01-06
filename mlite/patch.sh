#!/bin/sh

cp $PWD/../3rdparty/mlite/src/*.xml $PWD
cp $PWD/../3rdparty/mlite/src/*.h $PWD
cp $PWD/../3rdparty/mlite/src/*.cpp $PWD

# Use NEMOMW_EXPORT macro
for f in *.h; do
    sed -i s/#include\ \"mlite-global.h\"/#include\ \"nemomw_global.h\"/g $f
    sed -i s/MLITESHARED_EXPORT/NEMOMW_EXPORT/g $f
done

qdbusxml2cpp $PWD/notificationmanager.xml -p mnotificationmanagerproxy -c MNotificationManagerProxy -i metatypedeclarations.h