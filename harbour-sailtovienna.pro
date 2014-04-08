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

desktop.files = upstream/data/harbour-sailtovienna.desktop
desktop.path = /usr/share/applications

icon.files = upstream/data/harbour-sailtovienna.png
icon.path = /usr/share/icons/hicolor/86x86/apps

INSTALLS += qml pyWL glue desktop icon
