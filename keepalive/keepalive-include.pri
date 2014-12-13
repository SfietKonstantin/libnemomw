!contains(included_modules, keepalive-include) {
    included_modules += keepalive-include
    include(../nemomw-include.pri)
    QT += dbus

    INCLUDEPATH += $$PWD

    CONFIG(harbour) {
        INCLUDEPATH += $$PWD/../3rdparty/libiphb/src/
    } else {
        CONFIG += link_pkgconfig
        PKGCONFIG += keepalive
    }
    
    HEADERS += $$PWD/BackgroundActivity \
        $$PWD/BackgroundJob \
        $$PWD/DisplayBlanking \
        $$PWD/KeepAlive
} 
