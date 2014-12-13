!contains(included_modules, nemomw-dynamic) {
    included_modules += nemomw-static
    TEMPLATE = lib
    TARGET = nemomw
    QT -= gui

    CONFIG += staticlib
    
    include(nemomw-include.pri)
} 
