!contains(included_modules, qtcontacts) {
    included_modules += qtcontacts
    
    CONFIG(harbour) {
        system($$PWD/patch.sh)

        HEADERS += \
            $$PWD/qcontact.h \
            $$PWD/qcontactabstractrequest.h \
            $$PWD/qcontactaction.h \
            $$PWD/qcontactactiondescriptor.h \
            $$PWD/qcontactactionfactory.h \
            $$PWD/qcontactactiontarget.h \
            $$PWD/qcontactchangeset.h \
            $$PWD/qcontactdetail.h \
            $$PWD/qcontactfetchhint.h \
            $$PWD/qcontactfilter.h \
            $$PWD/qcontactid.h \
            $$PWD/qcontactmanager.h \
            $$PWD/qcontactmanagerengine.h \
            $$PWD/qcontactmanagerenginefactory.h \
            $$PWD/qcontactobserver.h \
            $$PWD/qcontactrelationship.h \
            $$PWD/qcontactsortorder.h \
            $$PWD/qcontactsglobal.h \
            $$PWD/qcontacts.h \
            $$PWD/qcontactengineid.h

        HEADERS += \
            $$PWD/qcontact_p.h \
            $$PWD/qcontactabstractrequest_p.h \
            $$PWD/qcontactactiondescriptor_p.h \
            $$PWD/qcontactactionmanager_p.h \
            $$PWD/qcontactactiontarget_p.h \
            $$PWD/qcontactchangeset_p.h \
            $$PWD/qcontactdetail_p.h \
            $$PWD/qcontactfetchhint_p.h \
            $$PWD/qcontactfilter_p.h \
            $$PWD/qcontactmanager_p.h \
            $$PWD/qcontactrelationship_p.h \
            $$PWD/qcontactsortorder_p.h \
            $$PWD/qcontactspluginsearch_p.h

        SOURCES += \
            $$PWD/qcontact.cpp \
            $$PWD/qcontactabstractrequest.cpp \
            $$PWD/qcontactaction.cpp \
            $$PWD/qcontactactiondescriptor.cpp \
            $$PWD/qcontactactionfactory.cpp \
            $$PWD/qcontactactionmanager_p.cpp \
            $$PWD/qcontactactiontarget.cpp \
            $$PWD/qcontactchangeset.cpp \
            $$PWD/qcontactdetail.cpp \
            $$PWD/qcontactfetchhint.cpp \
            $$PWD/qcontactfilter.cpp \
            $$PWD/qcontactid.cpp \
            $$PWD/qcontactmanager_p.cpp \
            $$PWD/qcontactmanager.cpp \
            $$PWD/qcontactmanagerengine.cpp \
            $$PWD/qcontactmanagerenginefactory.cpp \
            $$PWD/qcontactobserver.cpp \
            $$PWD/qcontactrelationship.cpp \
            $$PWD/qcontactsortorder.cpp \
            $$PWD/qcontactengineid.cpp

        HEADERS += \
            $$PWD/details/qcontactaddress.h \
            $$PWD/details/qcontactanniversary.h \
            $$PWD/details/qcontactavatar.h \
            $$PWD/details/qcontactbirthday.h \
            $$PWD/details/qcontactdetails.h \
            $$PWD/details/qcontactdisplaylabel.h \
            $$PWD/details/qcontactemailaddress.h \
            $$PWD/details/qcontactfamily.h \
            $$PWD/details/qcontactfavorite.h \
            $$PWD/details/qcontactgender.h \
            $$PWD/details/qcontactgeolocation.h \
            $$PWD/details/qcontactglobalpresence.h \
            $$PWD/details/qcontactguid.h \
            $$PWD/details/qcontacthobby.h \
            $$PWD/details/qcontactname.h \
            $$PWD/details/qcontactnickname.h \
            $$PWD/details/qcontactnote.h \
            $$PWD/details/qcontactonlineaccount.h \
            $$PWD/details/qcontactorganization.h \
            $$PWD/details/qcontactphonenumber.h \
            $$PWD/details/qcontactpresence.h \
            $$PWD/details/qcontactringtone.h \
            $$PWD/details/qcontactsynctarget.h \
            $$PWD/details/qcontacttag.h \
            $$PWD/details/qcontacttimestamp.h \
            $$PWD/details/qcontacttype.h \
            $$PWD/details/qcontacturl.h \
            $$PWD/details/qcontactversion.h \
            $$PWD/details/qcontactextendeddetail.h

        SOURCES += $$PWD/details/qcontactdetails.cpp

        HEADERS += $$PWD/engines/qcontactinvalidbackend_p.h
        SOURCES += $$PWD/engines/qcontactinvalidbackend.cpp

        HEADERS += \
            $$PWD/filters/qcontactactionfilter.h \
            $$PWD/filters/qcontactchangelogfilter.h \
            $$PWD/filters/qcontactdetailfilter.h \
            $$PWD/filters/qcontactdetailrangefilter.h \
            $$PWD/filters/qcontactfilters.h \
            $$PWD/filters/qcontactidfilter.h \
            $$PWD/filters/qcontactintersectionfilter.h \
            $$PWD/filters/qcontactinvalidfilter.h \
            $$PWD/filters/qcontactrelationshipfilter.h \
            $$PWD/filters/qcontactunionfilter.h

        HEADERS += \
            $$PWD/filters/qcontactactionfilter_p.h \
            $$PWD/filters/qcontactchangelogfilter_p.h \
            $$PWD/filters/qcontactdetailfilter_p.h \
            $$PWD/filters/qcontactdetailrangefilter_p.h \
            $$PWD/filters/qcontactidfilter_p.h \
            $$PWD/filters/qcontactintersectionfilter_p.h \
            $$PWD/filters/qcontactrelationshipfilter_p.h \
            $$PWD/filters/qcontactunionfilter_p.h

        SOURCES += \
            $$PWD/filters/qcontactactionfilter.cpp \
            $$PWD/filters/qcontactchangelogfilter.cpp \
            $$PWD/filters/qcontactdetailfilter.cpp \
            $$PWD/filters/qcontactdetailrangefilter.cpp \
            $$PWD/filters/qcontactidfilter.cpp \
            $$PWD/filters/qcontactintersectionfilter.cpp \
            $$PWD/filters/qcontactinvalidfilter.cpp \
            $$PWD/filters/qcontactrelationshipfilter.cpp \
            $$PWD/filters/qcontactunionfilter.cpp

        HEADERS += \
            $$PWD/requests/qcontactfetchrequest.h \
            $$PWD/requests/qcontactfetchbyidrequest.h \
            $$PWD/requests/qcontactidfetchrequest.h \
            $$PWD/requests/qcontactsaverequest.h \
            $$PWD/requests/qcontactremoverequest.h \
            $$PWD/requests/qcontactrelationshipfetchrequest.h \
            $$PWD/requests/qcontactrelationshipremoverequest.h \
            $$PWD/requests/qcontactrelationshipsaverequest.h \
            $$PWD/requests/qcontactrequests.h

        HEADERS += \
            $$PWD/requests/qcontactrequests_p.h

        SOURCES += \
            $$PWD/requests/qcontactfetchrequest.cpp \
            $$PWD/requests/qcontactfetchbyidrequest.cpp \
            $$PWD/requests/qcontactidfetchrequest.cpp \
            $$PWD/requests/qcontactsaverequest.cpp \
            $$PWD/requests/qcontactremoverequest.cpp \
            $$PWD/requests/qcontactrelationshipfetchrequest.cpp \
            $$PWD/requests/qcontactrelationshipremoverequest.cpp \
            $$PWD/requests/qcontactrelationshipsaverequest.cpp

    }
    include(qtcontacts-include.pri)
} 
