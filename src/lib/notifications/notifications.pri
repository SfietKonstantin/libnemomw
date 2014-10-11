system($$PWD/patch.sh)

QT += dbus

SOURCES += \
    $$PWD/notification.cpp \
    $$PWD/notificationmanagerproxy.cpp

HEADERS += \
    $$PWD/notification.h \
    $$PWD/notificationmanagerproxy.h

