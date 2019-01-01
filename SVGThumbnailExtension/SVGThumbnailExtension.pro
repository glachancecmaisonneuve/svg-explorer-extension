
TARGET = SVGThumbnailExtension
TEMPLATE = lib
CONFIG(release, debug|release) {
    DEFINES += NDEBUG
}
CONFIG(debug, debug|release) {
    DEFINES += DEBUG
}
CONFIG(release, debug|release):
CONFIG += dll
CONFIG += create_prl
CONFIG += link_prl
CONFIG +=debug_and_release
CONFIG -= import_plugins
QT = core gui winextras svg widgets
QWT_CONFIG += QwtSvg
LIBS += -lshell32 -luser32

win32:LIBS += \
    shlwapi.lib \
    advapi32.lib \
    gdiplus.lib

DEFINES += SVGTHUMBNAILEXTENSION_LIBRARY

SOURCES += \
    ThumbnailProvider.cpp \
    Main.cpp \
    ClassFactory.cpp

HEADERS +=\
    ThumbnailProvider.h \
    ClassFactory.h \
    Common.h

DEF_FILE += \
    ThumbnailProvider.def

OTHER_FILES += \
    ThumbnailProvider.def
