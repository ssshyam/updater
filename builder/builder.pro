#
# This file is part of the xTuple ERP: PostBooks Edition, a free and
# open source Enterprise Resource Planning software suite,
# Copyright (c) 1999-2009 by OpenMFG LLC, d/b/a xTuple.
# It is licensed to you under the Common Public Attribution License
# version 1.0, the full text of which (including xTuple-specific Exhibits)
# is available at www.xtuple.com/CPAL.  By using this software, you agree
# to be bound by its terms.
#

include( ../global.pri )

TEMPLATE = app
CONFIG += qt warn_on thread

DESTDIR = ../bin

LIBS += -L../lib -lupdatercommon -L../$${OPENRPT_DIR}/lib -lcommon -lrenderer
PRE_TARGETDEPS += ../lib/libupdatercommon.a ../$${OPENRPT_DIR}/lib/libcommon.a ../$${OPENRPT_DIR}/lib/librenderer.a

MOC_DIR = tmp
UI_DIR = tmp
OBJECTS_DIR = tmp

FORMS   += packagewindow.ui \
           texteditdialog.ui \
           providerdialog.ui \
           newprereqdialog.ui \
           queryeditor.ui
HEADERS += packagewindow.h \
           providerdialog.h \
           texteditdialog.h \
           queryeditor.h \
           newprereqdialog.h
SOURCES += main.cpp \
           packagewindow.cpp \
           providerdialog.cpp \
           texteditdialog.cpp \
           queryeditor.cpp \
           newprereqdialog.cpp

QT += xml qt3support sql

