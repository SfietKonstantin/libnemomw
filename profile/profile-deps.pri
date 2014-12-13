!contains(included_modules, profile-deps) {
    included_modules += profile-deps
    
    QT += dbus
    
    !CONFIG(harbour) {
        QMAKE_LFLAGS += -lprofile-qt5
    }
} 
