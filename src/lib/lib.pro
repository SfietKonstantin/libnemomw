TEMPLATE = lib
TARGET = nemomw

!CONFIG(nemomw-static): DEFINES += NEMOMW_LIBRARY
CONFIG(nemomw-static): CONFIG += staticlib

INCLUDEPATH += $$PWD
HEADERS += \
    nemomw_global.h \
    Notifications

CONFIG(nemomw-notifications): include(notifications/notifications.pri)
CONFIG(nemomw-qml): include(qml/qml.pri)
