include(notifications-deps.pri)
!contains(included_modules, notifications-include) {
    included_modules += notifications-include
    include(../nemomw-include.pri)

    INCLUDEPATH += $$PWD
    
    HEADERS += $$PWD/Notification
} 
