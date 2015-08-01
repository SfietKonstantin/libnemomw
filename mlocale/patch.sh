#!/bin/sh

cp $PWD/../3rdparty/libmlocale/src/include/MDebug $PWD
cp $PWD/../3rdparty/libmlocale/src/include/MLocale $PWD
cp $PWD/../3rdparty/libmlocale/src/include/MLocaleBuckets $PWD

cp $PWD/../3rdparty/libmlocale/src/mbreakiterator.h $PWD
cp $PWD/../3rdparty/libmlocale/src/mlocale.h $PWD
cp $PWD/../3rdparty/libmlocale/src/mlocalebuckets.h $PWD
cp $PWD/../3rdparty/libmlocale/src/mcountry.h $PWD
cp $PWD/../3rdparty/libmlocale/src/mcity.h $PWD
cp $PWD/../3rdparty/libmlocale/src/mlocationdatabase.h $PWD
cp $PWD/../3rdparty/libmlocale/src/mlocaleabstractconfigitem.h $PWD
cp $PWD/../3rdparty/libmlocale/src/mlocaleabstractconfigitemfactory.h $PWD
cp $PWD/../3rdparty/libmlocale/src/mlocalenullconfigitem.h $PWD
cp $PWD/../3rdparty/libmlocale/src/mlocalenullconfigitemfactory.h $PWD
cp $PWD/../3rdparty/libmlocale/src/debug.h $PWD
cp $PWD/../3rdparty/libmlocale/src/mnullbreakiterator.h $PWD

cp $PWD/../3rdparty/libmlocale/src/mbreakiterator.cpp $PWD
cp $PWD/../3rdparty/libmlocale/src/mlocale.cpp $PWD
cp $PWD/../3rdparty/libmlocale/src/mlocalebuckets.cpp $PWD
cp $PWD/../3rdparty/libmlocale/src/mcountry.cpp $PWD
cp $PWD/../3rdparty/libmlocale/src/mcity.cpp $PWD
cp $PWD/../3rdparty/libmlocale/src/mlocationdatabase.cpp $PWD
cp $PWD/../3rdparty/libmlocale/src/mlocaleabstractconfigitem.cpp $PWD
cp $PWD/../3rdparty/libmlocale/src/mlocalenullconfigitem.cpp $PWD
cp $PWD/../3rdparty/libmlocale/src/mlocalenullconfigitemfactory.cpp $PWD
cp $PWD/../3rdparty/libmlocale/src/debug.cpp $PWD
cp $PWD/../3rdparty/libmlocale/src/mnullbreakiterator.cpp $PWD

cp $PWD/../3rdparty/libmlocale/src/mlocalebuckets_p.h $PWD
cp $PWD/../3rdparty/libmlocale/src/mbreakiteratorif.h $PWD
cp $PWD/../3rdparty/libmlocale/src/mlocale_p.h $PWD
cp $PWD/../3rdparty/libmlocale/src/mdebug.h $PWD

cp $PWD/../3rdparty/libmlocale/src/i18n.qrc $PWD
cp $PWD/../3rdparty/libmlocale/src/libmeegotouch_rtl.qm $PWD
cp $PWD/../3rdparty/libmlocale/src/libmeegotouch_ltr.qm $PWD
cp $PWD/../3rdparty/libmlocale/src/zone.alias.fallback $PWD

## Use NEMOMW_EXPORT macro
sed -i s/mlocaleexport.h/nemomw_global.h/g *.h
sed -i s/MLOCALE_EXPORT/NEMOMW_EXPORT/g *.h
