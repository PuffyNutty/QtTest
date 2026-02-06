#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <cstdlib>
#include <iostream>

int main(int argc, char* argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.loadFromModule("MyModule", "Main");

    if (engine.rootObjects().isEmpty()) {
        return EXIT_FAILURE;
    }

    std::cout << "Hello World\n";

    return app.exec();
}
