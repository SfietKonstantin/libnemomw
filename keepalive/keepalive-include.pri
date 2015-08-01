include(keepalive-deps.pri)
!contains(included_modules, keepalive-include) {
    included_modules += keepalive-include
    include(../nemomw-include.pri)

    INCLUDEPATH += $$PWD

    CONFIG(harbour) {
        INCLUDEPATH += $$PWD/../3rdparty/libiphb/src/
    }
    
    HEADERS += $$PWD/BackgroundActivity \
        $$PWD/BackgroundJob \
        $$PWD/DisplayBlanking \
        $$PWD/KeepAlive
} 
