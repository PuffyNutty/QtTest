#include <QPushButton>
#include <QWidget>

class Window : public QWidget
{
Q_OBJECT
public:
    explicit Window(QWidget* parent = 0);

signals:

private slots:
    void slotToggleCheckMark(bool checked);

private:
    QPushButton* _pCheckMark;
};
