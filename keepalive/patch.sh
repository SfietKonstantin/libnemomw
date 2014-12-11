#!/bin/sh

cp $PWD/../3rdparty/nemo-keepalive/lib/mceiface.xml $PWD
cp $PWD/../3rdparty/nemo-keepalive/lib/*.h $PWD
cp $PWD/../3rdparty/nemo-keepalive/lib/*.cpp $PWD

# Use NEMOMW_EXPORT macro
for f in *.h; do
    sed -i s/#\ include\ \<QObject\>/#\ include\ \"nemomw_global.h\"\\n#\ include\ \<QObject\>/g $f
    sed -i s/Q_DECL_EXPORT/NEMOMW_EXPORT/g $f
done

sed -i s/class\ BackgroundActivity:/class\ NEMOMW_EXPORT\ BackgroundActivity:/g backgroundactivity.h
sed -i s/class\ DisplayBlanking:/class\ NEMOMW_EXPORT\ DisplayBlanking:/g displayblanking.h
sed -i s/class\ Heartbeat\ :/class\ NEMOMW_EXPORT\ Heartbeat:/g heartbeat.h
sed -i s,\<iphbd/libiphb.h\>,\<libiphb.h\>,g heartbeat.h

qdbusxml2cpp -p mceiface.h:mceiface.cpp mceiface.xml
