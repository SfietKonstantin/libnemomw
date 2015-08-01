include(qtversit-deps.pri)
!contains(included_modules, qtversit-include) {
    included_modules += qtversit-include
    include(../nemomw-include.pri)

    INCLUDEPATH += $$PWD \
            $$PWD/include/ \
            $$PWD/include/QtVersit
} 
