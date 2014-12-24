!contains(included_modules, keepalive) {
    included_modules += keepalive
    CONFIG(harbour) {
        system($$PWD/patch.sh)

        # libdsme
        INCLUDEPATH += $$PWD/../3rdparty/libdsme/include/
        HEADERS += $$PWD/../3rdparty/libdsme/include/dsme/messages.h
        
        # mce-dev
        INCLUDEPATH += $$PWD/../3rdparty/mce-dev/include/
        HEADERS += $$PWD/../3rdparty/mce-dev/include/mce/dbus-names.h
        
        # iphb
        INCLUDEPATH += $$PWD/../3rdparty/libiphb/src/
        HEADERS += $$PWD/../3rdparty/libiphb/src/iphb_internal.h \
            $$PWD/../3rdparty/libiphb/src/libiphb.h
        SOURCES += $$PWD/../3rdparty/libiphb/src/libiphb.c
        
        # keepalive
        HEADERS += $$PWD/backgroundactivity.h \
            $$PWD/backgroundactivity_p.h \
            $$PWD/common.h \
            $$PWD/displayblanking.h \
            $$PWD/displayblanking_p.h \
            $$PWD/heartbeat.h \
            $$PWD/mceiface.h
        SOURCES += $$PWD/backgroundactivity.cpp \
            $$PWD/backgroundactivity_p.cpp  \
            $$PWD/displayblanking.cpp  \
            $$PWD/displayblanking_p.cpp  \
            $$PWD/heartbeat.cpp \
            $$PWD/mceiface.cpp
    }
    # keepalive-qml
    system($$PWD/patch-qml.sh)
    HEADERS += $$PWD/declarativebackgroundactivity.h
    SOURCES += $$PWD/declarativebackgroundactivity.cpp
    include(keepalive-include.pri)
} 
