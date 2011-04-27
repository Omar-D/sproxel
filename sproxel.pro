#-------------------------------------------------
#
# SPROXEL sprite-ish voxel editor
#
#-------------------------------------------------

QT       += core gui opengl

TARGET = sproxel
TEMPLATE = app

unix:!macx {
  CONFIG += link_pkgconfig
  PKGCONFIG += IlmBase
}

macx {
  INCLUDEPATH += /usr/local/include/OpenEXR
  LIBS += -lImath -lIex
}

win32 {
   # TODO find ilmbase libs on win32
}

SOURCES += \
    GLCamera.cpp \
    GLModelWidget.cpp \
    MainWindow.cpp \
    main.cpp \
    newprojectdialog.cpp

HEADERS  += \
    Foundation.h \
    GLCamera.h \
    GLModelWidget.h \
    GameVoxelGrid.h \
    MainWindow.h \
    newprojectdialog.h

FORMS += \
    newprojectdialog.ui
