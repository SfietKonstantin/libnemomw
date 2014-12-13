# libnemomw

`libnemomw` is a simple abstraction layer to Nemo middleware.

## Goal

In order to build a binary that depends on external libraries, a build
system have to 
- find the external library `include` path
- link with the external library

In case of Nemo middleware libraries that are not allowed in the store,
you also need an additional step, that is to build the library.

`libnemomw` tries to simplify the process by being able to abstract the
Nemo middleware layer. To easily target store, `libnemomw` can be a library
that contains all the Nemo middleware libraries you need. But if you don't
want to be redundant with the system, you can also have `libnemomw` behave
like a thin layer between your binary and system libraries.

If you use the harbour mode, `libnemomw` will build the needed middleware, 
and provide you a set of includes and depending libraries for your binary.
If you use the system libraries mode, `libnemomw` will be responsible of
finding system includes, as well as linking to the corresponding libraries.

Controlling the harbour mode is done via a qmake flag
    CONFIG += harbour
Either include it in your root `.pro` file, or pass it directly to qmake if
you want to enable the harbour mode.

## Usage

Depending on your needs, `libnemomw` can be built as a dynamic or static
library, as well as in harbour and system mode.

It is recommended to use git, and add libnemomw as a git submodule. When it's
added, don't forget to `git submodule init && git submodule update` inside
the submodule folder, to get 3rd party dependencies.

In order to build `libnemomw`, you need to define a specific qmake subproject,
by creating a `nemomw.pro` file. You will also need a `nemomw-deps.pri` file
to list dependencies, that are the additional libraries that are required to
link with.

`nemomw.pro` file is simply a list of `.pri` files that are provided by `libnemomw`.

In order to define the type of library you want to build, you will need to include
either [nemomw-dynamic.pri](nemomw-dynamic.pri) or [nemomw-static.pri](nemomw-static.pri).

Then, you should choose which middleware to be included in `libnemomw`. You should
use the `<middleware>.pri` files that are available in subfolders, 
like [keepalive.pri](keepalive/keepalive.pri)

Below is a simple nemomw project file. It is built statically and enabled keepalive and profile
middleware modules.

    include(nemomw-static.pri)
    include(keepalive/keepalive.pri)
    include(profile/profile.pri)

In order to make your life easier, you should also create an include `nemomw-deps.pri` that 
contains dependencies of your build of `libnemomw`. Just like `nemomw.pro`, you should use
the `<middleware>-deps.pri` files that are available in subfolders, 
like [keepalive-deps.pri](keepalive/keepalive-deps.pri).

    include($$PWD/keepalive/keepalive-deps.pri)
    include($$PWD/profile/profile-deps.pri)
    
Don't forget the macro `$$PWD`, as this dependencies file might be included in another location.

Finally, in your project you should also include the `<middleware>-include.pri` files to be able
to find the include files. Don't forget to link with `libnemomw`, and also include `nemomw-deps.pri`.

A simple project file is given below
    TEMPLATE = app
    TARGET = harbour-myapp
    
    # Dependencies
    include(../nemomw/nemomw-deps.pri)
    
    # Libraries
    LIBS += -L../nemomw/ -lnemomw
    
    # Includes
    include(../nemomw/keepalive/keepalive-include.pri)
    
    SOURCES += ...

The [phonebot](https://github.com/SfietKonstantin/phonebot) project uses `libnemomw`.

## Available middleware

- [keepalive](https://github.com/nemomobile/nemo-keepalive/)
- [notifications](https://github.com/SfietKonstantin/nemo-qml-plugin-notifications/), a slighty customized version that is always statically built inside `libnemomw`.
- [profile](https://github.com/nemomobile/libprofile-qt/)

## License

`libnemomw` itself is licensed in a BSD license, but, as `libnemomw` is only a thin layer over
Nemo middleware, it inherits the middleware libraries license. If you built it with, for example,
profile support, it will inherit the LGPL 2.1 license, making it unsuitable for linking with
a proprietary application.
