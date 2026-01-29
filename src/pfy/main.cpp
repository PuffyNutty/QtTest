#include <QApplication>
#include <QProgressBar>
#include <QSlider>


int main(int argc, char* argv[])
{
    QApplication app(argc, argv);

    // Allocate root QWidget on stack, all its children on the heap. This is conventional.
    // When root QWidget goes out of scope, it automatically deletes all children.
    QWidget window;
    window.setFixedSize(500, 500);
    
    QProgressBar* pProgressBar = new QProgressBar(&window);
    pProgressBar->setRange(0, 100);
    pProgressBar->setValue(0);
    pProgressBar->setGeometry(50, 50, 400, 50);
    
    QSlider* pSlider = new QSlider(&window);
    pSlider->setOrientation(Qt::Horizontal);
    pSlider->setRange(0, 100);
    pSlider->setValue(0);
    pSlider->setGeometry(50, 100, 400, 50);

    window.show();
    QObject::connect(pSlider, SIGNAL (valueChanged(int)), pProgressBar, SLOT (setValue(int)));

    return app.exec();
}
