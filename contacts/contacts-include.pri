include(../qtcontacts/qtcontacts-include.pri)
include(../qtversit/qtversit-include.pri)
include(../mlocale/mlocale-include.pri)
include(contacts-deps.pri)

!contains(included_modules, contacts-include) {
    included_modules += contacts-include
    include(../nemomw-include.pri)

    INCLUDEPATH += $$PWD
    
    CONFIG(harbour) {
        CONFIG += link_pkgconfig
        packagesExist(mlite5) {
            PKGCONFIG += mlite5
            DEFINES += HAS_MLITE
        } else {
            warning("[contacts] mlite not available. Some functionality may not work as expected.")
        }
    }
} 
