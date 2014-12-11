!contains(included_modules, nemomw-dynamic)
{
    TEMPLATE = lib
    TARGET = nemomw
    QT -= gui

    DEFINES += NEMOMW_LIBRARY
    
    include(nemomw-include.pri)
} 
