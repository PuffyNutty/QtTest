#include <QPushButton>

#include "pfy/Window.hpp"


Window::Window(QWidget* parent)
: QWidget(parent)
{
    _pCheckMark = new QPushButton("I wish I were clicked");
    _pCheckMark->setCheckable(true);

    QObject::connect(_pCheckMark, SIGNAL (clicked(bool)), this, SLOT (slotToggleCheckMark(bool)));

    _pCheckMark->show();
}


void Window::slotToggleCheckMark(bool checked)
{
    if (checked) {
        _pCheckMark->setText("Owie you clicked me.");
    } else {
        _pCheckMark->setText("Ahh that's better. Just don't click me again.");
    }
}
