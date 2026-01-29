#include <QApplication>

#include "pfy/Window.hpp"


int main(int argc, char* argv[])
{
    QApplication app(argc, argv);

    Window window;

    return app.exec();
}
