include(qtcontacts-deps.pri)
!contains(included_modules, qtcontacts-include) {
    included_modules += qtcontacts-include
    include(../nemomw-include.pri)

    INCLUDEPATH += $$PWD \
            $$PWD/details \
            $$PWD/engines \
            $$PWD/filters \
            $$PWD/requests \
            $$PWD/include/ \
            $$PWD/include/QtContacts \
            $$PWD/include/QtContacts/5.0.0/QtContacts
} 
