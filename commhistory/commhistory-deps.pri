include(../contacts/contacts-deps.pri)

!contains(included_modules, commhistory-deps) {
    included_modules += commhistory-deps

    QT += core-private sql

    !CONFIG(harbour) {
        CONFIG += link_pkgconfig
        PKGCONFIG += libcommhistory
    }
} 
