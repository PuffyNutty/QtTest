#include <cstdint>
#include <QPushButton>
#include <QWidget>

class Window : public QWidget
{
Q_OBJECT
public:
    explicit Window(QWidget* parent = 0);

signals:
    void checkmarkClicked11Times();

private slots:
    void slotToggleCheckMark(bool checked);
    void slotCheckmarkClicked11Times();

private:
    uint32_t _numberOfTimesClicked = 0;
    QPushButton* _pCheckMark;
};
