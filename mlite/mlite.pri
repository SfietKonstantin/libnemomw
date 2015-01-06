!contains(included_modules, mlite) {
    included_modules += mlite
    system($$PWD/copyheaders.sh)
    
    CONFIG(harbour) {
        system($$PWD/patch.sh)

        HEADERS += $$PWD/mdataaccess.h \
            $$PWD/mdatastore.h \
            $$PWD/mdconf_p.h \
            $$PWD/mdconfgroup.h \
            $$PWD/mdesktopentry.h \
            $$PWD/mdesktopentry_p.h \
            $$PWD/metatypedeclarations.h \
            $$PWD/mfiledatastore_p.h \
            $$PWD/mgconfitem.h \
            $$PWD/mnotification.h \
            $$PWD/mnotification_p.h \
            $$PWD/mnotificationgroup.h \
            $$PWD/mnotificationgroup_p.h \
            $$PWD/mremoteaction.h \
            $$PWD/mremoteaction_p.h

        SOURCES += $$PWD/mdconf.cpp \
            $$PWD/mdconfgroup.cpp \
            $$PWD/mdesktopentry.cpp \
            $$PWD/mfiledatastore.cpp \
            $$PWD/mgconfitem.cpp \
            $$PWD/mnotification.cpp \
            $$PWD/mnotificationgroup.cpp \
            $$PWD/mremoteaction.cpp
            
        HEADERS += $$PWD/mnotificationmanagerproxy.h
        SOURCES += $$PWD/mnotificationmanagerproxy.cpp

        OTHER_FILES = $$PWD/notificationmanager.xml
    }
    include(mlite-include.pri)
} 
