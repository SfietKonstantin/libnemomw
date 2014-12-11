!contains(included_modules, notifications-include)
{
    include(../nemomw-include.pri)
    QT += dbus

    INCLUDEPATH += $$PWD
    
    HEADERS += $$PWD/Notifications
} 
