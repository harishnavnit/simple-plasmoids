#ifndef BACKEND_H
#define BACKEND_H

#include <QObject>
#include <QPointer>

#include "model.h"

class Backend : public QObject
{
    Q_OBJECT
    //Q_PROPERTY(QObject* Model READ Model CONSTANT)

public:
    Backend(QObject *parent=Q_NULLPTR);
    ~Backend();

public Q_SLOTS:
    void handleBackendCall();

Q_SIGNALS:
    void backendCalled() const;

private:
    Model *m_model;
};

#endif // BACKEND_H
