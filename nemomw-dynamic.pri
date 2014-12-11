!contains(included_modules, nemomw-dynamic)
{
    TEMPLATE = lib
    TARGET = nemomw

    DEFINES += NEMOMW_LIBRARY
    
    include(nemomw-include.pri)
} 
