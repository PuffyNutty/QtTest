#include "pfy/TestButton.hpp"


TestButton::TestButton(QWidget* parent)
: QWidget(parent)
{
    _pButton = new QPushButton("Wowie a button!\n");
    _pButton->setGeometry(50, 50, 100, 100);
    _pButton->show();
}
