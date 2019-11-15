QT += widgets
requires(qtConfig(filedialog))
qtHaveModule(printsupport): QT += printsupport

HEADERS       = imageviewer.h
SOURCES       = imageviewer.cpp \
                main.cpp

win32: LIBS += -LC:\opencv_build\install\x86\vc15\lib -lopencv_core410d -lopencv_imgproc410d -lopencv_highgui410d -lopencv_imgcodecs410d -lopencv_videoio410d -lopencv_video410d -lopencv_calib3d410d -lopencv_photo410d -lopencv_features2d410d

INCLUDEPATH += C:\opencv_build\install\include
DEPENDPATH += C:\opencv_build\install\include

# install
target.path = $$[QT_INSTALL_EXAMPLES]/widgets/widgets/imageviewer
INSTALLS += target

