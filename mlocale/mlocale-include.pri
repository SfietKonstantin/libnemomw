include(mlocale-deps.pri)
!contains(included_modules, mlocale-include) {
    included_modules += mlocale-include
    include(../nemomw-include.pri)

    INCLUDEPATH += $$PWD
        
    HEADERS += $$PWD/MDebug \
        $$PWD/MLocale \
        $$PWD/MLocaleBuckets
} 
