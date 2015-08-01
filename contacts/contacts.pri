include(../qtcontacts/qtcontacts.pri)
include(../qtversit/qtversit.pri)
include(../mlocale/mlocale.pri)

!contains(included_modules, contacts) {
    included_modules += contacts

    INCLUDEPATH += $$PWD/qtcontacts-sqlite/extensions
    
    CONFIG(harbour) {
        system($$PWD/patch.sh)

        INCLUDEPATH += $$PWD/../3rdparty/mce-dev/include/ \
            $$PWD/../3rdparty/qtcontacts-sqlite/src/extensions

        HEADERS += \
            $$PWD/cacheconfiguration.h \
            $$PWD/seasidecache.h \
            $$PWD/seasideexport.h \
            $$PWD/seasideimport.h \
            $$PWD/seasidecontactbuilder.h \
            $$PWD/synchronizelists.h \
            $$PWD/seasidenamegrouper.h \
            $$PWD/seasidepropertyhandler.h

        SOURCES += \
            $$PWD/cacheconfiguration.cpp \
            $$PWD/seasidecache.cpp \
            $$PWD/seasideexport.cpp \
            $$PWD/seasideimport.cpp \
            $$PWD/seasidecontactbuilder.cpp \
            $$PWD/seasidepropertyhandler.cpp

    }
    include(contacts-include.pri)
} 
