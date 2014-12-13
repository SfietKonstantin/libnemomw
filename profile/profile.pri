!contains(included_modules, profile) {
    included_modules += profile
    CONFIG(harbour) {
        system($$PWD/patch.sh)
        
        HEADERS += $$PWD/profile.h \
            $$PWD/profile_p.h \
            $$PWD/keys_nokia.h \
            $$PWD/profile_dbus.h
        SOURCES += $$PWD/profile.cpp
    }

    include(profile-include.pri)
} 
