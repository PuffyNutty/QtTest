#include <string>
#include <sstream>
#include <QPushButton>

#include "pfy/Window.hpp"


Window::Window(QWidget* parent)
: QWidget(parent)
{
    _pCheckMark = new QPushButton("I wish I were clicked");
    _pCheckMark->setCheckable(true);

    QObject::connect(_pCheckMark, SIGNAL (clicked(bool)), this, SLOT (slotToggleCheckMark(bool)));
    QObject::connect(this, SIGNAL (checkmarkClicked11Times()), this, SLOT (slotCheckmarkClicked11Times()));

    _pCheckMark->show();
}


void Window::slotToggleCheckMark(bool checked)
{
    _numberOfTimesClicked++;
    if (_numberOfTimesClicked >= 11) {
        emit checkmarkClicked11Times();
        return;
    }

    std::stringstream numberToStringConverter;
    std::string strNumberOfTimesClicked;
    numberToStringConverter << _numberOfTimesClicked;
    numberToStringConverter >> strNumberOfTimesClicked;
    std::string constantText = "Owie you clicked me: ";
    std::string fullText = constantText + strNumberOfTimesClicked;
    _pCheckMark->setText(fullText.c_str());
}


void Window::slotCheckmarkClicked11Times()
{
    _pCheckMark->setText("STOP CLICKING MEEEEEEE");
}
