TEMPLATE = aux
#TARGET = sailtoVienna


#MY_TRANSLATIONS = de
#for(trans, MY_TRANSLATIONS) {
#        TRANSLATIONS += "translations/$${TARGET}-$${trans}.ts"
#}
TRANSLATIONS += "translations/$${TARGET}-de.ts"

CONFIG += sailfishapp_i18n

qml.files = upstream/qml/silica
qml.path = /usr/share/$${TARGET}/qml

INSTALLS += qml
