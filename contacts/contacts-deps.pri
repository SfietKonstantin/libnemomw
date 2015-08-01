include(../qtcontacts/qtcontacts-deps.pri)
include(../qtversit/qtversit-deps.pri)
include(../mlocale/mlocale-deps.pri)

!contains(included_modules, contacts-deps) {
    included_modules += contacts-deps
    
    QT += dbus
    
    !CONFIG(harbour) {
        CONFIG += link_pkgconfig
        PKGCONFIG += contactcache-qt5
    }
} 
