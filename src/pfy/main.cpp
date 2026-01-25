#include <iostream>
#include <QApplication>
#include <QPushButton>

int main(int argc, char* argv[])
{
    QApplication app(argc, argv);
    QFont font("Avenir");
    QPushButton button("Hello World");
    button.setToolTip("A tooltip");
    button.setFont(font);
    button.show();
    return app.exec();
}
