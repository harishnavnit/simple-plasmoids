#include "model.h"

Model::Model(QObject *parent)
    : QObject(parent), text("Hello World")
{
}

Model::~Model()
{
}

QString Model::getText()
{
    //emit backendCalled();
    return text;
}

void Model::setText(QString s)
{
    text = s;
    emit textChanged();
}
