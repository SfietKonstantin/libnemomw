!contains(included_modules, mlite-deps) {
    included_modules += mlite-deps
    
    QT += dbus
    
    !CONFIG(harbour) {
        CONFIG += link_pkgconfig
        PKGCONFIG += mlite-qt5
    } else {
        CONFIG += link_pkgconfig
        PKGCONFIG += dconf
    }
} 
