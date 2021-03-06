#-------------------------------------------------
#
# Project created by QtCreator 2015-08-02T13:13:50
#
#-------------------------------------------------

QT += core gui network
QMAKE_CXXFLAGS += -std=c++11

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = MyoLSLNode
TEMPLATE = app


SOURCES += main.cpp\
        mainwindow.cpp \
    datacollector.cpp

HEADERS  += mainwindow.h \
    datacollector.h

FORMS    += mainwindow.ui

win32: LIBS += -L$$PWD/lib/ -lmyo32
win32:CONFIG(release, debug|release): LIBS += -L$$PWD/lib/ -lliblsl32
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/lib/ -lliblsl32d

INCLUDEPATH += $$PWD/include
DEPENDPATH += $$PWD/include

RESOURCES += \
    images.qrc
