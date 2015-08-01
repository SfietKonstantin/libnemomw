!contains(included_modules, qtversit) {
    included_modules += qtversit
    
    CONFIG(harbour) {
        system($$PWD/patch.sh)

        HEADERS += \
            $$PWD/qversitglobal.h \
            $$PWD/qversitdocument.h \
            $$PWD/qversitproperty.h \
            $$PWD/qversitreader.h \
            $$PWD/qversitwriter.h \
            $$PWD/qversitcontactexporter.h \
            $$PWD/qversitcontactimporter.h \
            $$PWD/qversitcontacthandler.h \
            $$PWD/qversitresourcehandler.h

        HEADERS += \
            $$PWD/qversitdocument_p.h \
            $$PWD/qversitdocumentwriter_p.h \
            $$PWD/qversitproperty_p.h \
            $$PWD/qversitreader_p.h \
            $$PWD/qversitwriter_p.h \
            $$PWD/qvcard21writer_p.h \
            $$PWD/qvcard30writer_p.h \
            $$PWD/qvcardrestorehandler_p.h \
            $$PWD/qversitcontactexporter_p.h \
            $$PWD/qversitcontactimporter_p.h \
            $$PWD/qversitdefs_p.h \
            $$PWD/qversitcontactsdefs_p.h \
            $$PWD/qversitcontactpluginloader_p.h \
            $$PWD/qversitutils_p.h \
            $$PWD/qversitpluginsearch_p.h

        SOURCES += \
            $$PWD/qversitdocument.cpp \
            $$PWD/qversitdocument_p.cpp \
            $$PWD/qversitdocumentwriter_p.cpp \
            $$PWD/qversitproperty.cpp \
            $$PWD/qversitreader.cpp \
            $$PWD/qversitreader_p.cpp \
            $$PWD/qversitwriter.cpp \
            $$PWD/qversitwriter_p.cpp \
            $$PWD/qvcard21writer.cpp \
            $$PWD/qvcard30writer.cpp \
            $$PWD/qvcardrestorehandler_p.cpp \
            $$PWD/qversitcontactexporter.cpp \
            $$PWD/qversitcontactexporter_p.cpp \
            $$PWD/qversitcontactimporter.cpp \
            $$PWD/qversitcontactimporter_p.cpp \
            $$PWD/qversitresourcehandler.cpp \
            $$PWD/qversitcontacthandler.cpp \
            $$PWD/qversitcontactpluginloader_p.cpp \
            $$PWD/qversitutils.cpp
    }
    include(qtversit-include.pri)
} 
