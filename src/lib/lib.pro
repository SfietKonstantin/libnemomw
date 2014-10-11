TEMPLATE = lib
TARGET = nemomw

!CONFIG(static): DEFINES += NEMOMW_LIBRARY
CONFIG(static): CONFIG += staticlib

INCLUDEPATH += $$PWD
HEADERS += \
    nemomw_global.h \
    Notifications

CONFIG(notifications): include(notifications/notifications.pri)
