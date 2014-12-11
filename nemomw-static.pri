!contains(included_modules, nemomw-dynamic)
{
    TEMPLATE = lib
    TARGET = nemomw
    QT -= gui

    CONFIG += staticlib
    
    include(nemomw-include.pri)
} 
