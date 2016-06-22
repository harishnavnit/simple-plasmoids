#include "backend.h"

#include <QDebug>

Backend::Backend(QObject *parent)
    : QObject(parent)
{
    connect(m_model,SIGNAL(backendCalled()),this,SLOT(handleBackendCall()));
}

Backend::~Backend()
{
    delete m_model;
}

void Backend::backendCalled()
{
    qDebug() << "Backend instantiated";
}

void Backend::handleBackendCall()
{
    m_model->setText("Hello World");
}
