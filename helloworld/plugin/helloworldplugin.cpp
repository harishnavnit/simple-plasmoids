#include "helloworldplugin.h"
#include "backend.h"

#include <QtQml>

void HelloWorldPlugin::registerTypes(const char *uri)
{
    Q_ASSERT( uri == QLatin1String("org.kde.plasma.helloworld") );
    qmlRegisterType<Backend>( uri, 0, 1, "Backend" );
    qmlRegisterType<Model>( uri, 0, 1, "Model");
}
