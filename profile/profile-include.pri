include(profile-deps.pri)
!contains(included_modules, profile-include) {
    included_modules += profile-include
    include(../nemomw-include.pri)
    INCLUDEPATH += $$PWD
    
    !CONFIG(harbour) {
        QMAKE_CXXFLAGS += -I/usr/include/profile-qt5
    }
    
    HEADERS += $$PWD/Profile
} 
