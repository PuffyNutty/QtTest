#include <QPushButton>

#include "pfy/Window.hpp"


Window::Window(const char* pTitle, uint32_t width, uint32_t height, QWidget* pParent) 
: QMainWindow(pParent)
{
    this->setGeometry(50, 50, width, height);
    this->setWindowTitle(pTitle);

    _pMainWidget = new QWidget(this);
    QPalette mainWidgetColor = _pMainWidget->palette();
    mainWidgetColor.setColor(QPalette::Window, Qt::green);
    _pMainWidget->setAutoFillBackground(true);
    _pMainWidget->setPalette(mainWidgetColor);
    this->setCentralWidget(_pMainWidget);

    _pDockWidget = new QDockWidget(tr("Dock Widget"), this);
    _pDockWidget->setAllowedAreas(Qt::LeftDockWidgetArea | Qt::RightDockWidgetArea);
    QPushButton* pTestButton = new QPushButton(_pDockWidget);
    pTestButton->setText("push me or else");
    pTestButton->setCheckable(true);
    _pDockWidget->setWidget(pTestButton);
    this->addDockWidget(Qt::LeftDockWidgetArea, _pDockWidget);
    

    this->show();
}

