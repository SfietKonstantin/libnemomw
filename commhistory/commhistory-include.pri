include(../contacts/contacts-include.pri)
include(commhistory-deps.pri)

!contains(included_modules, commhistory-include) {
    included_modules += commhistory-include
    include(../nemomw-include.pri)

    INCLUDEPATH += $$PWD
} 
