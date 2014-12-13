!contains(included_modules, profile-include)
{
    include(../nemomw-include.pri)
    QT += dbus

    INCLUDEPATH += $$PWD
    
    HEADERS += $$PWD/Profile
} 
