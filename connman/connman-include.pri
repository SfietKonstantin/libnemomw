!contains(included_modules, connman-include) {
    included_modules += connman-include
    include(../nemomw-include.pri)
    QT += dbus

    INCLUDEPATH += $$PWD
    
    HEADERS += $$PWD/ClockModel \
        $$PWD/ConnmanNetworkProxyFactory \
        $$PWD/Counter \
        $$PWD/NetworkManager \
        $$PWD/NetworkManagerFactory \
        $$PWD/NetworkService \
        $$PWD/NetworkSession \
        $$PWD/NetworkTechnology \
        $$PWD/SessionAgent \
        $$PWD/UserAgent
} 
