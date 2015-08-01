!contains(included_modules, mlocale-deps) {
    included_modules += mlocale-deps
    
    QT += gui xml
    
    !CONFIG(harbour) {
        CONFIG += link_pkgconfig
        PKGCONFIG += mlocale5
    }
} 
