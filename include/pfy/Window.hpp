#include <cstdint>
#include <QDockWidget>
#include <QMainWindow>
#include <QWidget>

class Window : public QMainWindow
{
Q_OBJECT
public:
    explicit Window(const char* pTitle, uint32_t width, uint32_t height, QWidget* pParent = NULL);
     
private:
    QWidget* _pMainWidget = nullptr;
    QDockWidget* _pDockWidget = nullptr;
};
