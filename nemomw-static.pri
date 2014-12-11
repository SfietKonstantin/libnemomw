!contains(included_modules, nemomw-dynamic)
{
    TEMPLATE = lib
    TARGET = nemomw

    CONFIG += staticlib
    
    include(nemomw-include.pri)
} 
