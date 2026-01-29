#ifndef TESTBUTTON_HPP
#define TESTBUTTON_HPP

#include <QWidget>
#include <QPushButton>


class TestButton : public QWidget
{
Q_OBJECT
public:
    explicit TestButton(QWidget* parent = 0);

private:
    QPushButton* _pButton;

signals:
public slots:
};


#endif
