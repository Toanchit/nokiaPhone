#include "myphone.h"

MyPhone::MyPhone(QObject *parent):
    QObject(parent),
    currentButton(""),
    isCurrentClicked(false),
    noClick(0),
    CurrentString("")
{
    timerClicked = new QTimer(this);
    connect(timerClicked,SIGNAL(timeout()),this,SLOT(updateClicked()));
    initDbKeyBoard();
}
void MyPhone::initDbKeyBoard()
{
    listOfButton["0"]={' ','0'};
    noChar["0"]=2;
    listOfButton["1"]={'1'};
    noChar["1"]=1;
    listOfButton["2"] = {'2','a','b','c'};
    noChar["2"] = 4;
    listOfButton["3"] = {'3','d','e','f'};
    noChar["3"]=4;
    listOfButton["4"]={'4','g','h','i'};
    noChar["4"]=4;
    listOfButton["5"]={'5','j','k','l'};
    noChar["5"]=4;
    listOfButton["6"]={'6','m','n','o'};
    noChar["6"]=4;
    listOfButton["7"]={'7','p','q','r','s'};
    noChar["7"]=5;
    listOfButton["8"]={'8','t','u','v'};
    noChar["8"]=4;
    listOfButton["9"]={'9','w','x','y','z'};
    noChar["4"]=5;
    listOfButton["*"]={'*','+'};
    noChar["*"]=2;
    listOfButton["#"]={'#'};
    noChar["#"]=1;
}
void MyPhone::onMenuClicked(const QString &newText)
{
    QChar updateText;
    if(newText=="11")
    {
        CurrentString.removeLast();
        isCurrentClicked=false;
        timerClicked->stop();
    }
    else
    {
        if(currentButton !=newText)
        {
            currentButton=newText;
            isCurrentClicked = true;
            noClick=0;
            timerClicked->start(1500);
            updateText = listOfButton[currentButton][noClick%noChar[currentButton]];
        }
        else if(isCurrentClicked)
        {
            noClick++;
            timerClicked->start(1500);
            CurrentString.removeLast();
        }
        else
        {
            noClick=0;
            isCurrentClicked = true;
            timerClicked->start(1500);
        }
        updateText = listOfButton[currentButton][noClick%noChar[currentButton]];
        CurrentString.append(updateText);
    }
    emit mysignal(CurrentString);
}
void MyPhone::updateClicked()
{
    if(isCurrentClicked)
    {
        isCurrentClicked =false;
        timerClicked->stop();
    }
}


