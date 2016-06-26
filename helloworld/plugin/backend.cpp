#include "backend.h"

Backend::Backend(QObject *parent)
    : QObject(parent), m_model()
{
    connect(m_model,SIGNAL(backendCalled()),this,SLOT(handleBackendCall()));
}

Backend::~Backend()
{
    delete m_model;
}

void Backend::handleBackendCall()
{
    m_model->setText("Hello World");
}
