!contains(included_modules, keepalive-deps) {
    included_modules += keepalive-deps
    
    !CONFIG(harbour) {
        CONFIG += link_pkgconfig
        PKGCONFIG += keepalive
    } else {
        QMAKE_LFLAGS += -lrt
    }
} 
