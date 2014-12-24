!contains(included_modules, connman-deps) {
    included_modules += connman-deps
    
    QT += dbus
    
    !CONFIG(harbour) {
        CONFIG += link_pkgconfig
        PKGCONFIG += connman-qt5
    }
} 
