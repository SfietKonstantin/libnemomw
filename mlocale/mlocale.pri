!contains(included_modules, mlocale) {
    included_modules += mlocale
    
    CONFIG(harbour) {
        system($$PWD/patch.sh)

        RESOURCES += $$PWD/i18n.qrc

        DEFINES += TRANSLATION_DIR=\\\"/usr/share/l10n/mlocale5\\\" \
            ML_ICUEXTRADATA_DIR=\\\"/usr/share/mlocale5/icu\\\"

        HEADERS += \
            $$PWD/mbreakiterator.h \
            $$PWD/mlocale.h \
            $$PWD/mlocalebuckets.h \
            $$PWD/mcountry.h \
            $$PWD/mcity.h \
            $$PWD/mlocationdatabase.h \
            $$PWD/mlocaleabstractconfigitem.h \
            $$PWD/mlocaleabstractconfigitemfactory.h \
            $$PWD/mlocalenullconfigitem.h \
            $$PWD/mlocalenullconfigitemfactory.h

        HEADERS += \
            $$PWD/debug.h

        SOURCES += \
            $$PWD/mbreakiterator.cpp \
            $$PWD/mlocale.cpp \
            $$PWD/mlocalebuckets.cpp \
            $$PWD/mcountry.cpp \
            $$PWD/mcity.cpp \
            $$PWD/mlocationdatabase.cpp \
            $$PWD/mlocaleabstractconfigitem.cpp \
            $$PWD/mlocalenullconfigitem.cpp \
            $$PWD/mlocalenullconfigitemfactory.cpp \
            $$PWD/debug.cpp

        HEADERS += \
            $$PWD/mnullbreakiterator.h

        SOURCES += \
            $$PWD/mnullbreakiterator.cpp

        HEADERS += $$PWD/mlocalebuckets_p.h \
            $$PWD/mbreakiteratorif.h
    }
    include(mlocale-include.pri)
} 
