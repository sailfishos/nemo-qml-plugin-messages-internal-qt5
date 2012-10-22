TARGET = nemomessages
PLUGIN_IMPORT_PATH = org/nemomobile/messages

CONFIG += link_pkgconfig
PKGCONFIG += commhistory TelepathyQt4

SOURCES += plugin.cpp \
    src/accountsmodel.cpp \
    src/conversationchannel.cpp \
    src/groupmanager.cpp

HEADERS += src/accountsmodel.h \
    src/conversationchannel.h \
    src/groupmanager.h

# do not edit below here, move this to a shared .pri?
TEMPLATE = lib
CONFIG += qt plugin hide_symbols
QT += declarative

target.path = $$[QT_INSTALL_IMPORTS]/$$PLUGIN_IMPORT_PATH
INSTALLS += target

qmldir.files += $$PWD/qmldir
qmldir.path +=  $$[QT_INSTALL_IMPORTS]/$$$$PLUGIN_IMPORT_PATH
INSTALLS += qmldir
