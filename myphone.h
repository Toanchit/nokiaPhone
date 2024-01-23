#ifndef MYPHONE_H
#define MYPHONE_H

#include <QObject>
#include <QDebug>
#include <QTimer>
#include <vector>
#include <map>
#include<iostream>

using namespace std;
class MyPhone: public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString  signal NOTIFY mysignal)
public:
    explicit MyPhone(QObject *parent = nullptr);
    void initDbKeyBoard();
signals:
    void mysignal(QString newText);
    void quit();

public slots:
    void onMenuClicked(const QString &newText);
    void updateClicked();
private:
    QTimer *timerClicked;
    QString currentButton;
    bool isCurrentClicked;
    int noClick;
    map<QString,vector<QChar>> listOfButton;
    map<QString,int> noChar;
    QString CurrentString;
};

#endif // MYPHONE_H
