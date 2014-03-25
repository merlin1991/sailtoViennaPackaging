TEMPLATE = aux

TRANSLATIONS += "translations/$${TARGET}-de.ts"

CONFIG += sailfishapp_i18n

qml.files = upstream/qml/silica
qml.path = /usr/share/$${TARGET}/qml

pyWL.files = upstream/pyWL
pyWL.path = /usr/share/$${TARGET}

glue.files = upstream/glue
glue.path = /usr/share/$${TARGET}

desktopcp.extra = cp upstream/data/sailtoVienna.desktop.sailfish sailtoVienna.desktop
desktopcp.path = /usr/share/applications

desktop.files = sailtoVienna.desktop
desktop.path = /usr/share/applications

INSTALLS += qml pyWL glue desktopcp desktop
