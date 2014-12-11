!contains(included_modules, notifications)
{
    # Notifications is a patched API, so both harbour and non-harbour use the same API
    system($$PWD/patch.sh)

    SOURCES += \
        $$PWD/notification.cpp \
        $$PWD/notificationmanagerproxy.cpp

    HEADERS += \
        $$PWD/notification.h \
        $$PWD/notificationmanagerproxy.h
    include(notifications-include.pri)
} 
