include(../contacts/contacts.pri)

!contains(included_modules, commhistory) {
    included_modules += commhistory
    
    CONFIG(harbour) {
        system($$PWD/patch.sh)

        INCLUDEPATH += $$PWD/../3rdparty/qtcontacts-sqlite/src/extensions

        HEADERS += $$PWD/adaptor.h \
            $$PWD/callevent.h \
            $$PWD/callmodel.h \
            $$PWD/callmodel_p.h \
            $$PWD/commhistorydatabase.h \
            $$PWD/commhistorydatabasepath.h \
            $$PWD/commonutils.h \
            $$PWD/constants.h \
            $$PWD/contactgroup.h \
            $$PWD/contactgroupmodel.h \
            $$PWD/contactgroupmodel_p.h \
            $$PWD/contactlistener.h \
            $$PWD/contactresolver.h \
            $$PWD/conversationmodel.h \
            $$PWD/conversationmodel_p.h \
            $$PWD/databaseio.h \
            $$PWD/databaseio_p.h \
            $$PWD/debug.h \
            $$PWD/draftsmodel.h \
            $$PWD/event.h \
            $$PWD/eventmodel.h \
            $$PWD/eventmodel_p.h \
            $$PWD/eventtreeitem.h \
            $$PWD/group.h \
            $$PWD/groupmanager.h \
            $$PWD/groupmanager_p.h \
            $$PWD/groupmodel.h \
            $$PWD/groupmodel_p.h \
            $$PWD/groupobject.h \
            $$PWD/libcommhistoryexport.h \
            $$PWD/messagepart.h \
            $$PWD/mmsconstants.h \
            $$PWD/mmsreadreportmodel.h \
            $$PWD/recentcontactsmodel.h \
            $$PWD/singleeventmodel.h \
            $$PWD/updatesemitter.h

        SOURCES += $$PWD/adaptor.cpp \
            $$PWD/callmodel.cpp \
            $$PWD/commhistorydatabase.cpp \
            $$PWD/commonutils.cpp \
            $$PWD/contactgroup.cpp \
            $$PWD/contactgroupmodel.cpp \
            $$PWD/contactlistener.cpp \
            $$PWD/contactresolver.cpp \
            $$PWD/conversationmodel.cpp \
            $$PWD/databaseio.cpp \
            $$PWD/draftsmodel.cpp \
            $$PWD/event.cpp \
            $$PWD/eventmodel.cpp \
            $$PWD/eventmodel_p.cpp \
            $$PWD/eventtreeitem.cpp \
            $$PWD/group.cpp \
            $$PWD/groupmanager.cpp \
            $$PWD/groupmodel.cpp \
            $$PWD/groupobject.cpp \
            $$PWD/messagepart.cpp \
            $$PWD/mmsreadreportmodel.cpp \
            $$PWD/recentcontactsmodel.cpp \
            $$PWD/singleeventmodel.cpp \
            $$PWD/updatesemitter.cpp
    }
    # commhistory-qml
    # system($$PWD/patch-qml.sh)
    # HEADERS += ...
    # SOURCES += ...
    include(commhistory-include.pri)
} 
