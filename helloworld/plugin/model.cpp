#include "model.h"

Model::Model(QObject *parent) : QObject(parent)
{
    text = "";
}

Model::~Model()
{
}

QString Model::getText()
{
    return text;
}

void Model::setText(QString s)
{
    text = s;
}
