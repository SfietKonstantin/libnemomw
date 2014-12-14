#!/bin/sh

cp $PWD/../3rdparty/libconnman-qt/libconnman-qt/*.xml $PWD
cp $PWD/../3rdparty/libconnman-qt/libconnman-qt/*.h $PWD
cp $PWD/../3rdparty/libconnman-qt/libconnman-qt/*.cpp $PWD

# Use NEMOMW_EXPORT macro
sed -i s/#define\ CLOCKMODEL_H/#define\ CLOCKMODEL_H\\n\\n#include\ \"nemomw_global.h\"/g clockmodel.h
sed -i s/class\ ClockModel/class\ NEMOMW_EXPORT\ ClockModel/g clockmodel.h

sed -i s/#define\ CONNMANNETWORKPROXYFACTORY_H/#define\ CONNMANNETWORKPROXYFACTORY_H\\n\\n#include\ \"nemomw_global.h\"/g connmannetworkproxyfactory.h
sed -i s/class\ ConnmanNetworkProxyFactory/class\ NEMOMW_EXPORT\ ConnmanNetworkProxyFactory/g connmannetworkproxyfactory.h

sed -i s/#define\ COUNTER_H/#define\ COUNTER_H\\n\\n#include\ \"nemomw_global.h\"/g counter.h
sed -i s/class\ Counter/class\ NEMOMW_EXPORT\ Counter/g counter.h

sed -i s/#define\ NETWORKMANAGER_H/#define\ NETWORKMANAGER_H\\n\\n#include\ \"nemomw_global.h\"/g networkmanager.h
sed -i s/class\ NetworkManager\ /class\ NEMOMW_EXPORT\ NetworkManager\ /g networkmanager.h
sed -i s/class\ NetworkManagerFactory\ /class\ NEMOMW_EXPORT\ NetworkManagerFactory\ /g networkmanager.h

sed -i s/#define\ NETWORKSERVICE_H/#define\ NETWORKSERVICE_H\\n\\n#include\ \"nemomw_global.h\"/g networkservice.h
sed -i s/class\ NetworkService/class\ NEMOMW_EXPORT\ NetworkService/g networkservice.h

sed -i s/#include\ \<QObject\>/#include\ \"nemomw_global.h\"\\n\\n#include\ \<QObject\>/g networksession.h
sed -i s/class\ NetworkSession/class\ NEMOMW_EXPORT\ NetworkSession/g networksession.h

sed -i s/#define\ NETWORKTECHNOLOGY_H/#define\ NETWORKTECHNOLOGY_H\\n\\n#include\ \"nemomw_global.h\"/g networktechnology.h
sed -i s/class\ NetworkTechnology/class\ NEMOMW_EXPORT\ NetworkTechnology/g networktechnology.h

sed -i s/#define\ SESSIONAGENT_H/#define\ SESSIONAGENT_H\\n\\n#include\ \"nemomw_global.h\"/g sessionagent.h
sed -i s/class\ SessionAgent/class\ NEMOMW_EXPORT\ SessionAgent/g sessionagent.h

sed -i s/#define\ USERAGENT_H/#define\ USERAGENT_H\\n\\n#include\ \"nemomw_global.h\"/g useragent.h
sed -i s/class\ UserAgent/class\ NEMOMW_EXPORT\ UserAgent/g useragent.h
