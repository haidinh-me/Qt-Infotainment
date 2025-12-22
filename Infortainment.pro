QT += quick
QT += serialbus
QT += serialport
QT += network

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        Communication/CAN_Message.cpp \
        Communication/cancontroller.cpp \
        Controllers/audiovolum.cpp \
        Controllers/hvachandler.cpp \
        Controllers/inforbarclass.cpp \
        Controllers/system.cpp \
        main.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES +=

HEADERS += \
    Communication/CAN_Message.h \
    Communication/cancontroller.h \
    Controllers/audiovolum.h \
    Controllers/hvachandler.h \
    Controllers/inforbarclass.h \
    Controllers/system.h
