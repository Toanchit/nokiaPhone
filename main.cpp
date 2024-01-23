#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "myphone.h"
int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;
    MyPhone myPhone;
    const QUrl url(u"qrc:/Simple_qml/Main.qml"_qs);
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.rootContext()->setContextProperty("myPhone",&myPhone);
    engine.load(url);
    QObject *mykeyboard = engine.rootObjects().first()->findChild<QObject*>("myKeyboard");
    if(mykeyboard)
    {
        QObject::connect(mykeyboard,SIGNAL(myButton(string)),&engine,SLOT(onMyButton(string)));
    }
    return app.exec();
}
