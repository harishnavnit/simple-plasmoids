#ifndef HELLOWORLDPLUGIN_H
#define HELLOWORLDPLUGIN_H

#include <QQmlEngine>
#include <QQmlExtensionPlugin>

class HelloWorldPlugin : public QQmlExtensionPlugin
{
    Q_OBJECT
    Q_PLUGIN_METADATA(IID "org.qt-project.Qt.QQmlExtensionPlugin");

public:
    virtual void registerTypes(const char *uri);
};

#endif // HELLOWORLDPLUGIN_H
