!contains(included_modules, mlite-include) {
    included_modules += mlite-include
    include(../nemomw-include.pri)
    QT += dbus
    

    INCLUDEPATH += $$PWD
    
    !CONFIG(harbour) {
        CONFIG += link_pkgconfig
        PKGCONFIG += mlite-qt5
    } else {
        CONFIG += link_pkgconfig
        PKGCONFIG += dconf
    }
    
    HEADERS += $$PWD/MDConfGroup \
        $$PWD/MDesktopEntry \
        $$PWD/MGConfItem \
        $$PWD/MNotification \
        $$PWD/MNotificationGroup \
        $$PWD/NetworkService \
        $$PWD/MRemoteAction
} 
