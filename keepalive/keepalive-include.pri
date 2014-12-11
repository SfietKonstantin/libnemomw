!contains(included_modules, keepalive-include)
{
    include(../nemomw-include.pri)
    QT += dbus

    INCLUDEPATH += $$PWD

    CONFIG(harbour) {
        INCLUDEPATH += $$PWD/../3rdparty/libiphb/src/
    } else {
        INCLUDEPATH += /usr/include/keepalive
    }
    
    HEADERS += $$PWD/KeepAlive
} 
