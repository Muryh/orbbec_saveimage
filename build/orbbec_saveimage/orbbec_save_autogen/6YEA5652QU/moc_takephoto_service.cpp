/****************************************************************************
** Meta object code from reading C++ file 'takephoto_service.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.12.8)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "takephoto_service.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'takephoto_service.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.12.8. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_takephoto_service_t {
    QByteArrayData data[7];
    char stringdata0[93];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_takephoto_service_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_takephoto_service_t qt_meta_stringdata_takephoto_service = {
    {
QT_MOC_LITERAL(0, 0, 17), // "takephoto_service"
QT_MOC_LITERAL(1, 18, 15), // "signalShowCloud"
QT_MOC_LITERAL(2, 34, 0), // ""
QT_MOC_LITERAL(3, 35, 13), // "saveImagAndPc"
QT_MOC_LITERAL(4, 49, 18), // "startSaveImagAndPc"
QT_MOC_LITERAL(5, 68, 11), // "std::string"
QT_MOC_LITERAL(6, 80, 12) // "baseFileName"

    },
    "takephoto_service\0signalShowCloud\0\0"
    "saveImagAndPc\0startSaveImagAndPc\0"
    "std::string\0baseFileName"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_takephoto_service[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
       3,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       1,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    0,   29,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
       3,    0,   30,    2, 0x0a /* Public */,
       4,    1,   31,    2, 0x0a /* Public */,

 // signals: parameters
    QMetaType::Void,

 // slots: parameters
    QMetaType::Bool,
    QMetaType::Void, 0x80000000 | 5,    6,

       0        // eod
};

void takephoto_service::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<takephoto_service *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->signalShowCloud(); break;
        case 1: { bool _r = _t->saveImagAndPc();
            if (_a[0]) *reinterpret_cast< bool*>(_a[0]) = std::move(_r); }  break;
        case 2: _t->startSaveImagAndPc((*reinterpret_cast< std::string(*)>(_a[1]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (takephoto_service::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&takephoto_service::signalShowCloud)) {
                *result = 0;
                return;
            }
        }
    }
}

QT_INIT_METAOBJECT const QMetaObject takephoto_service::staticMetaObject = { {
    &QObject::staticMetaObject,
    qt_meta_stringdata_takephoto_service.data,
    qt_meta_data_takephoto_service,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *takephoto_service::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *takephoto_service::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_takephoto_service.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int takephoto_service::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 3)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 3;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 3)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 3;
    }
    return _id;
}

// SIGNAL 0
void takephoto_service::signalShowCloud()
{
    QMetaObject::activate(this, &staticMetaObject, 0, nullptr);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
