#!/bin/sh

cp $PWD/../../3rdparty/nemo-qml-plugin-notifications/src/org.freedesktop.Notifications.xml $PWD
cp $PWD/../../3rdparty/nemo-qml-plugin-notifications/src/notification.h $PWD
cp $PWD/../../3rdparty/nemo-qml-plugin-notifications/src/notification.cpp $PWD

# Use NEMOMW_EXPORT macro
sed -i s/#define\ NOTIFICATION_H/#define\ NOTIFICATION_H\\n\\n#include\ \"nemomw_global.h\"/g notification.h
sed -i s/Q_DECL_EXPORT/NEMOMW_EXPORT/g notification.h

qdbusxml2cpp org.freedesktop.Notifications.xml -p notificationmanagerproxy -c NotificationManagerProxy -i notification.h
