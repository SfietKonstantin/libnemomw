#!/bin/sh

cp $PWD/../3rdparty/nemo-keepalive/plugin/declarativebackgroundactivity.h $PWD
cp $PWD/../3rdparty/nemo-keepalive/plugin/declarativebackgroundactivity.cpp $PWD

sed -i s/#\ include\ \<QObject\>/#\ include\ \"nemomw_global.h\"\\n#\ include\ \<QObject\>/g declarativebackgroundactivity.h
sed -i s/class\ DeclarativeKeepAlive\ :/class\ NEMOMW_EXPORT\ DeclarativeKeepAlive:/g declarativebackgroundactivity.h
sed -i s/class\ DeclarativeBackgroundJob\ :/class\ NEMOMW_EXPORT\ DeclarativeBackgroundJob:/g declarativebackgroundactivity.h
sed -i s/,\ public\ QQmlParserStatus//g declarativebackgroundactivity.h
sed -i /^QML_DECLARE_TYPE/d declarativebackgroundactivity.h
sed -i /#\ include\ \<qqml.h\>/d declarativebackgroundactivity.h
