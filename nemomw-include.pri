!contains(included_modules, nemomw-headers)
{
    included_modules += nemomw-headers
    INCLUDEPATH += $$PWD
    HEADERS += $$PWD/nemomw_global.h
} 
