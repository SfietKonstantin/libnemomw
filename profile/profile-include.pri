!contains(included_modules, profile-include) {
    included_modules += profile-include
    include(../nemomw-include.pri)
    QT += dbus

    INCLUDEPATH += $$PWD
    
    !CONFIG(harbour) {
        QMAKE_CXXFLAGS += -I/usr/include/profile-qt5
    }
    
    HEADERS += $$PWD/Profile
} 
