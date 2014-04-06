TEMPLATE = aux

TRANSLATIONS += "translations/$${TARGET}-de.ts"
TRANSLATIONS += "translations/$${TARGET}-en.ts"

CONFIG += sailfishapp_i18n
CONFIG += sailfishapp_i18n_idbased

QML_FILES = $$files(qml/*)
for(file, QML_FILES) {
    qml.files += $$file
}
qml.path = /usr/share/$${TARGET}/qml

pyWL.files = upstream/pyWL
pyWL.path = /usr/share/$${TARGET}

glue.files = upstream/glue
glue.path = /usr/share/$${TARGET}

desktopcp.extra = cp upstream/data/sailtoVienna.desktop.sailfish sailtoVienna.desktop
desktopcp.path = /usr/share/applications
QMAKE_DISTCLEAN += sailtoVienna.desktop

desktop.files = sailtoVienna.desktop
desktop.path = /usr/share/applications

INSTALLS += qml pyWL glue desktopcp desktop
