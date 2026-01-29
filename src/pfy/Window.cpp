#include <QPushButton>

#include "pfy/Window.hpp"


Window::Window(QWidget* parent)
: QWidget(parent)
{
    _pCheckMark = new QPushButton("I wish I were clicked");

    QObject::connect(_pCheckMark, SIGNAL (clicked()), this, SLOT (slotToggleCheckMark()));

    _pCheckMark->show();
}


void Window::slotToggleCheckMark()
{
    _checkMarkIsChecked = not _checkMarkIsChecked;
    if (_checkMarkIsChecked) {
        _pCheckMark->setText("Owie you clicked me.");
    } else {
        _pCheckMark->setText("Ahh that's better. Just don't click me again.");
    }
}
