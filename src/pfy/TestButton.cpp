#include <QApplication>
#include <QObject>

#include "pfy/TestButton.hpp"


TestButton::TestButton(QWidget* parent)
: QWidget(parent)
{
    _pButton = new QPushButton("Wowie a button!\n");
    _pButton->setGeometry(50, 50, 100, 100);

    connect(_pButton, SIGNAL (clicked()), this, SLOT (changeText()));

    _pButton->show();
}


void TestButton::changeText()
{
    _pButton->setText("Owie that hurt ;-;");
}
