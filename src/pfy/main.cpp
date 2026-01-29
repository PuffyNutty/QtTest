#include <QApplication>

#include "pfy/TestButton.hpp"


int main(int argc, char* argv[])
{
    QApplication app(argc, argv);

    TestButton button;
    
    return app.exec();
}
