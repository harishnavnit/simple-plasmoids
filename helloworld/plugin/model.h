#ifndef MODEL_H
#define MODEL_H

#include <QObject>

class Model : public QObject
{
    Q_OBJECT

public:
    Model(QObject *parent=Q_NULLPTR);
    ~Model();

    Q_INVOKABLE QString getText();
    void setText(QString );

Q_SIGNALS:
    void textChanged() const;

private:
    QString text;
};

#endif // MODEL_H
