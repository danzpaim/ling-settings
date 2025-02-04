/*
 * Copyright 2023-2024 Lingmo OS Team <lingmo@lingmo.org>
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License as
 * published by the Free Software Foundation; either version 2 of
 * the License or (at your option) version 3 or any later version
 * accepted by the membership of KDE e.V. (or its successor approved
 * by the membership of KDE e.V.), which shall act as a proxy
 * defined in Section 14 of version 3 of the license.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */
 
#ifndef MYNETWORKOBJECT_H
#define MYNETWORKOBJECT_H
#include <QObject>
#include <QNetworkAccessManager>
#include <QUrl>
#include <QNetworkRequest>
#include <QNetworkReply>
#include <QDebug>
#include <QImageReader>
class MyNetworkObject : public QObject
{
    Q_OBJECT

public:
    explicit MyNetworkObject(QObject *parent = 0);
    void get(QUrl url);
    void printAttribute(QNetworkReply *reply, QNetworkRequest::Attribute code, QString codeStr);
    QString dataStr;

public slots:
    void finishedSlot(QNetworkReply *reply);
    
signals:
    void requestFailSignal(QString str); //请求失败时，发送这个信号
    void requestSuccessSignal(QString str); //请求成功时，发送这个信号

private:
    QNetworkAccessManager *networkAccessManager;
    QNetworkReply *pReply;
};
#endif // MYNETWORKOBJECT_H
