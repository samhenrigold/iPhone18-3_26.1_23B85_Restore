uint64_t IFTelemetrySELFMapperIssues.init(rawValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_100020FF8;
  v8._object = a2;
  v6 = sub_10001A12C(v5, v8);

  *a3 = v6 != 0;
  return result;
}

Swift::Int sub_1000016B8()
{
  sub_10001A1AC();
  sub_100019F9C();
  return sub_10001A1BC();
}

Swift::Int sub_10000172C(uint64_t a1)
{
  sub_10001A1AC();
  sub_100019F9C();
  return sub_10001A1BC();
}

uint64_t sub_100001780@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100021030;
  v7._object = v3;
  v5 = sub_10001A12C(v4, v7);

  *a2 = v5 != 0;
  return result;
}

void sub_100001830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100019F7C();
  v6 = swift_allocObject();
  v6[2] = 0xD00000000000001BLL;
  v6[3] = 0x800000010001A760;
  v6[4] = 0xD00000000000001DLL;
  v6[5] = 0x800000010001B1C0;
  v6[6] = a2;
  v6[7] = a3;
  v8[4] = sub_100002870;
  v8[5] = v6;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100001CE8;
  v8[3] = &unk_100021108;
  v7 = _Block_copy(v8);

  AnalyticsSendEventLazy();
  _Block_release(v7);
}

void sub_1000019A0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7)
{

  v12 = sub_100019F0C();
  v13 = a4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v19[0] = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_100001D8C(a1, a2, v19);
    _os_log_impl(&_mh_execute_header, v12, v13, "%s", v14, 0xCu);
    sub_100002334(v15);
  }

  v16 = sub_100019F7C();
  v17 = swift_allocObject();
  v17[2] = 0xD00000000000001BLL;
  v17[3] = 0x800000010001A760;
  v17[4] = 0xD00000000000001DLL;
  v17[5] = 0x800000010001B1C0;
  v17[6] = a1;
  v17[7] = a2;
  v19[4] = a6;
  v19[5] = v17;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_100001CE8;
  v19[3] = a7;
  v18 = _Block_copy(v19);

  AnalyticsSendEventLazy();
  _Block_release(v18);
}

unint64_t sub_100001BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_100002594(&qword_100024CA8, &qword_10001A888);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10001A770;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x800000010001B230;
  *(inited + 48) = sub_100019F7C();
  *(inited + 56) = 0x6D614E726F727265;
  *(inited + 64) = 0xE900000000000065;
  *(inited + 72) = sub_100019F7C();
  *(inited + 80) = 0x6E6F73616572;
  *(inited + 88) = 0xE600000000000000;
  *(inited + 96) = sub_100019F7C();
  v7 = sub_10000275C(inited);
  swift_setDeallocating();
  sub_100002594(&qword_100024CB0, &qword_10001A890);
  swift_arrayDestroy();
  return v7;
}

Class sub_100001CE8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_1000025E0();
    v4.super.isa = sub_100019F5C().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

uint64_t sub_100001D74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100001D8C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100001E58(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100002538(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100002334(v11);
  return v7;
}

unint64_t sub_100001E58(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100001F64(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_10001A09C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100001F64(uint64_t a1, unint64_t a2)
{
  v3 = sub_100001FB0(a1, a2);
  sub_1000020E0(&off_100021068);
  return v3;
}

char *sub_100001FB0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_1000021CC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_10001A09C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_100019FBC();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000021CC(v10, 0);
        result = sub_10001A06C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1000020E0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100002240(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1000021CC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100002594(&qword_100024C98, &qword_10001A880);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100002240(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100002594(&qword_100024C98, &qword_10001A880);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_100002334(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_100002380()
{

  return _swift_deallocObject(v0, 64, 7);
}

unint64_t sub_1000023DC()
{
  result = qword_100024C90;
  if (!qword_100024C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024C90);
  }

  return result;
}

uint64_t sub_100002458(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *sub_1000024AC(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_100002538(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100002594(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1000025E0()
{
  result = qword_100024CA0;
  if (!qword_100024CA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100024CA0);
  }

  return result;
}

unint64_t sub_10000262C(uint64_t a1, uint64_t a2)
{
  sub_10001A1AC();
  sub_100019F9C();
  v4 = sub_10001A1BC();

  return sub_1000026A4(a1, a2, v4);
}

unint64_t sub_1000026A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_10001A14C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10000275C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002594(&qword_100024CB8, qword_10001A898);
    v3 = sub_10001A11C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_10000262C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100002884()
{
  sub_1000028F8();
  sub_10001A03C();

  return sub_100019F3C();
}

unint64_t sub_1000028F8()
{
  result = qword_100024CC0;
  if (!qword_100024CC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100024CC0);
  }

  return result;
}

uint64_t sub_100002944@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC23IFTelemetrySELFIngestor21IFTelemetrySELFMapper_logger;
  v4 = sub_100019F2C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id sub_1000029BC(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = a3;
  v25 = a1;
  v26 = a2;
  v3 = sub_100002594(&qword_100024CC8, &qword_10001A8C8);
  __chkstk_darwin(v3 - 8);
  v5 = &v23 - v4;
  v6 = sub_100019EDC();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v23 - v11;
  v13 = sub_100002594(&qword_100024CD0, &qword_10001A8D0);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v23 - v17;
  v19 = sub_10001986C();
  v20 = *(*(v19 - 8) + 56);
  v20(v18, 1, 1, v19);
  sub_100002CD4(v24, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100002D44(v5, &qword_100024CC8, &qword_10001A8C8);
  }

  else
  {
    (*(v7 + 32))(v12, v5, v6);
    (*(v7 + 16))(v10, v12, v6);
    sub_10001985C();
    (*(v7 + 8))(v12, v6);
    sub_100002D44(v18, &qword_100024CD0, &qword_10001A8D0);
    v20(v16, 0, 1, v19);
    sub_100003D7C(v16, v18, &qword_100024CD0, &qword_10001A8D0);
  }

  sub_100003D7C(v18, v25, &qword_100024CD0, &qword_10001A8D0);
  v21 = v26;

  return v21;
}

uint64_t sub_100002CD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002594(&qword_100024CC8, &qword_10001A8C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100002D44(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002594(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100002DA4(uint64_t a1)
{
  v117 = sub_100019EDC();
  v114 = *(v117 - 8);
  v2 = __chkstk_darwin(v117);
  v108 = &v98 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v107 = &v98 - v4;
  v5 = sub_100002594(&qword_100024CD8, qword_10001A8D8);
  v121 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v8 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v101 = &v98 - v10;
  v11 = __chkstk_darwin(v9);
  v109 = &v98 - v12;
  v13 = __chkstk_darwin(v11);
  v122 = &v98 - v14;
  __chkstk_darwin(v13);
  v16 = &v98 - v15;
  v17 = sub_100002594(&qword_100024CC8, &qword_10001A8C8);
  v18 = __chkstk_darwin(v17 - 8);
  v118 = &v98 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = &v98 - v21;
  __chkstk_darwin(v20);
  v24 = &v98 - v23;
  v25 = sub_100002594(&qword_100024CD0, &qword_10001A8D0);
  v26 = __chkstk_darwin(v25 - 8);
  v100 = &v98 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v99 = &v98 - v29;
  v30 = __chkstk_darwin(v28);
  v106 = &v98 - v31;
  v32 = __chkstk_darwin(v30);
  v119 = &v98 - v33;
  v34 = __chkstk_darwin(v32);
  v116 = &v98 - v35;
  v36 = __chkstk_darwin(v34);
  v38 = &v98 - v37;
  __chkstk_darwin(v36);
  v40 = &v98 - v39;
  type metadata accessor for IFPlatformRequestClientEventConverter();
  v41 = sub_100016848(a1);
  v102 = v24;
  v120 = v5;
  if (v41)
  {
    v42 = v41;
    sub_10001989C();
    sub_1000029BC(v40, v42, v24);
    sub_100002D44(v24, &qword_100024CC8, &qword_10001A8C8);
    v43 = *(v5 + 48);
    sub_100003D7C(v40, v16, &qword_100024CD0, &qword_10001A8D0);
    *&v16[v43] = v42;
    v44 = sub_100003B8C(0, 1, 1, &_swiftEmptyArrayStorage);
    v46 = *(v44 + 2);
    v45 = *(v44 + 3);
    v47 = v44;
    if (v46 >= v45 >> 1)
    {
      v47 = sub_100003B8C((v45 > 1), v46 + 1, 1, v44);
    }

    v48 = v119;

    *(v47 + 2) = v46 + 1;
    sub_100003D7C(v16, &v47[((*(v121 + 80) + 32) & ~*(v121 + 80)) + *(v121 + 72) * v46], &qword_100024CD8, qword_10001A8D8);
  }

  else
  {
    v47 = &_swiftEmptyArrayStorage;
    v48 = v119;
  }

  type metadata accessor for IFPlatformClientEventConverter();
  v49 = sub_100009EE0();
  v50 = v22;
  v51 = v122;
  if (v49)
  {
    v52 = v49;
    v53 = v102;
    sub_10001989C();
    sub_1000029BC(v38, v52, v53);
    sub_100002D44(v53, &qword_100024CC8, &qword_10001A8C8);
    v54 = *(v120 + 48);
    sub_100003D7C(v38, v51, &qword_100024CD0, &qword_10001A8D0);
    *(v51 + v54) = v52;
    v55 = v47;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v55 = sub_100003B8C(0, *(v47 + 2) + 1, 1, v47);
    }

    v57 = *(v55 + 2);
    v56 = *(v55 + 3);
    v48 = v119;
    if (v57 >= v56 >> 1)
    {
      v55 = sub_100003B8C((v56 > 1), v57 + 1, 1, v55);
    }

    *(v55 + 2) = v57 + 1;
    sub_100003D7C(v51, &v55[((*(v121 + 80) + 32) & ~*(v121 + 80)) + *(v121 + 72) * v57], &qword_100024CD8, qword_10001A8D8);
  }

  else
  {
    v55 = v47;
  }

  type metadata accessor for IFPlanGenerationEventConverter();
  v58 = sub_100014ED8(a1);
  if (v58)
  {
    v59 = v58;
    v98 = v8;
    if (v58 >> 62)
    {
      v97 = v58;
      result = sub_10001A10C();
      v59 = v97;
    }

    else
    {
      result = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v61 = v109;
    v62 = v118;
    if (result)
    {
      if (result < 1)
      {
        __break(1u);
        return result;
      }

      v63 = 0;
      v111 = (v114 + 48);
      v112 = v59 & 0xC000000000000001;
      v104 = (v114 + 16);
      v105 = (v114 + 32);
      v103 = (v114 + 8);
      v114 = v59;
      v115 = a1;
      v113 = result;
      do
      {
        v122 = v55;
        if (v112)
        {
          v64 = sub_10001A08C();
        }

        else
        {
          v64 = *(v59 + 8 * v63 + 32);
        }

        v65 = v64;
        sub_10001989C();
        v66 = sub_10001986C();
        v67 = *(*(v66 - 8) + 56);
        v67(v48, 1, 1, v66);
        sub_100002CD4(v50, v62);
        v68 = v50;
        v69 = v117;
        if ((*v111)(v62, 1, v117) == 1)
        {
          sub_100002D44(v68, &qword_100024CC8, &qword_10001A8C8);
          sub_100002D44(v62, &qword_100024CC8, &qword_10001A8C8);
        }

        else
        {
          v70 = v107;
          (*v105)(v107, v118, v69);
          (*v104)(v108, v70, v69);
          v71 = v106;
          sub_10001985C();
          v72 = *v103;
          v73 = v118;
          v110 = v65;
          v74 = v109;
          v72(v70, v69);
          sub_100002D44(v119, &qword_100024CD0, &qword_10001A8D0);
          sub_100002D44(v68, &qword_100024CC8, &qword_10001A8C8);
          v62 = v73;
          v61 = v74;
          v65 = v110;
          v67(v71, 0, 1, v66);
          v75 = v71;
          v48 = v119;
          sub_100003D7C(v75, v119, &qword_100024CD0, &qword_10001A8D0);
        }

        v50 = v68;
        v76 = v116;
        sub_100003D7C(v48, v116, &qword_100024CD0, &qword_10001A8D0);
        v77 = *(v120 + 48);
        sub_100003D7C(v76, v61, &qword_100024CD0, &qword_10001A8D0);
        *(v61 + v77) = v65;
        v78 = v65;
        v55 = v122;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        a1 = v115;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v55 = sub_100003B8C(0, *(v55 + 2) + 1, 1, v55);
        }

        v81 = *(v55 + 2);
        v80 = *(v55 + 3);
        if (v81 >= v80 >> 1)
        {
          v55 = sub_100003B8C((v80 > 1), v81 + 1, 1, v55);
        }

        ++v63;

        *(v55 + 2) = v81 + 1;
        sub_100003D7C(v61, &v55[((*(v121 + 80) + 32) & ~*(v121 + 80)) + *(v121 + 72) * v81], &qword_100024CD8, qword_10001A8D8);
        v59 = v114;
      }

      while (v113 != v63);
    }

    v8 = v98;
  }

  type metadata accessor for IFRequestLinkConverter();
  v82 = sub_1000046A0(a1);
  if (v82)
  {
    v83 = v82;
    v84 = v102;
    sub_10001989C();
    v85 = v99;
    sub_1000029BC(v99, v83, v84);
    sub_100002D44(v84, &qword_100024CC8, &qword_10001A8C8);
    v86 = *(v120 + 48);
    v87 = v101;
    sub_100003D7C(v85, v101, &qword_100024CD0, &qword_10001A8D0);
    *(v87 + v86) = v83;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v55 = sub_100003B8C(0, *(v55 + 2) + 1, 1, v55);
    }

    v89 = *(v55 + 2);
    v88 = *(v55 + 3);
    if (v89 >= v88 >> 1)
    {
      v55 = sub_100003B8C((v88 > 1), v89 + 1, 1, v55);
    }

    *(v55 + 2) = v89 + 1;
    sub_100003D7C(v101, &v55[((*(v121 + 80) + 32) & ~*(v121 + 80)) + *(v121 + 72) * v89], &qword_100024CD8, qword_10001A8D8);
  }

  type metadata accessor for IFFeedbackLearningEventConverter();
  v90 = sub_10000AC5C();
  if (v90)
  {
    v91 = v90;
    v92 = v102;
    sub_10001989C();
    v93 = v100;
    sub_1000029BC(v100, v91, v92);
    sub_100002D44(v92, &qword_100024CC8, &qword_10001A8C8);
    v94 = *(v120 + 48);
    sub_100003D7C(v93, v8, &qword_100024CD0, &qword_10001A8D0);
    *&v8[v94] = v91;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v55 = sub_100003B8C(0, *(v55 + 2) + 1, 1, v55);
    }

    v96 = *(v55 + 2);
    v95 = *(v55 + 3);
    if (v96 >= v95 >> 1)
    {
      v55 = sub_100003B8C((v95 > 1), v96 + 1, 1, v55);
    }

    *(v55 + 2) = v96 + 1;
    sub_100003D7C(v8, &v55[((*(v121 + 80) + 32) & ~*(v121 + 80)) + *(v121 + 72) * v96], &qword_100024CD8, qword_10001A8D8);
  }

  return v55;
}

uint64_t IFTelemetrySELFMapper.deinit()
{
  v1 = OBJC_IVAR____TtC23IFTelemetrySELFIngestor21IFTelemetrySELFMapper_logger;
  v2 = sub_100019F2C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t IFTelemetrySELFMapper.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC23IFTelemetrySELFIngestor21IFTelemetrySELFMapper_logger;
  v2 = sub_100019F2C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t sub_100003A84()
{
  v0 = swift_allocObject();
  sub_1000028F8();
  sub_10001A03C();
  sub_100019F3C();
  return v0;
}

uint64_t sub_100003B10()
{
  sub_1000028F8();
  sub_10001A03C();
  sub_100019F3C();
  return v0;
}

void *sub_100003B8C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100002594(&qword_100024D80, &qword_10001A908);
  v10 = *(sub_100002594(&qword_100024CD8, qword_10001A8D8) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100002594(&qword_100024CD8, qword_10001A8D8) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_100003D7C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002594(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t type metadata accessor for IFTelemetrySELFMapper(uint64_t a1)
{
  result = qword_100025A30;
  if (!qword_100025A30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100003E38(uint64_t a1)
{
  result = sub_100019F2C();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100003EE0()
{
  v0 = sub_100019F2C();
  sub_10000449C(v0, qword_100025D00);
  sub_100003FD8(v0, qword_100025D00);
  sub_1000028F8();
  sub_10001A03C();
  return sub_100019F3C();
}

uint64_t sub_100003F74()
{
  if (qword_100025A40 != -1)
  {
    swift_once();
  }

  v0 = sub_100019F2C();

  return sub_100003FD8(v0, qword_100025D00);
}

uint64_t sub_100003FD8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100004010@<X0>(uint64_t a1@<X8>)
{
  if (qword_100025A40 != -1)
  {
    swift_once();
  }

  v2 = sub_100019F2C();
  v3 = sub_100003FD8(v2, qword_100025D00);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *sub_1000040B8()
{
  v0 = sub_100002594(&qword_100024D88, qword_10001A910);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v22 - v4;
  v6 = [objc_allocWithZone(IFPlatformRequestSchemaIFPlatformRequestFailed) init];
  if (!v6)
  {
    if (qword_100025A40 != -1)
    {
      swift_once();
    }

    v13 = sub_100019F2C();
    sub_100003FD8(v13, qword_100025D00);
    sub_1000017F4(0xD000000000000047, 0x800000010001B2B0, v14);
    return 0;
  }

  v7 = v6;
  v8 = [objc_allocWithZone(IFTSchemaIFTIntelligenceFlowError) init];
  if (!v8)
  {
    if (qword_100025A40 != -1)
    {
      swift_once();
    }

    v15 = sub_100019F2C();
    sub_100003FD8(v15, qword_100025D00);
    sub_1000017F4(0xD000000000000038, 0x800000010001B300, v16);

    return 0;
  }

  v9 = v8;
  sub_100019DEC();
  v10 = sub_100019DAC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v5, 1, v10) == 1)
  {
    sub_1000043E8(v5);
  }

  else
  {
    v17 = sub_100019D8C();
    (*(v11 + 8))(v5, v10);
    if ((v17 & 0x100000000) == 0)
    {
      [v9 setCode:v17];
    }
  }

  sub_100019DEC();
  if (v12(v3, 1, v10) == 1)
  {
    sub_1000043E8(v3);
  }

  else
  {
    sub_100019D9C();
    v19 = v18;
    (*(v11 + 8))(v3, v10);
    if (v19)
    {
      v20 = sub_100019F7C();

      [v9 setDomain:v20];
    }
  }

  [v7 setCriticalError:v9];

  return v7;
}

uint64_t sub_1000043E8(uint64_t a1)
{
  v2 = sub_100002594(&qword_100024D88, qword_10001A910);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *sub_10000449C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100004500()
{
  v0 = sub_100019F2C();
  sub_10000449C(v0, qword_100025D18);
  sub_100003FD8(v0, qword_100025D18);
  sub_1000028F8();
  sub_10001A03C();
  return sub_100019F3C();
}

uint64_t sub_100004594()
{
  if (qword_100025A48 != -1)
  {
    swift_once();
  }

  v0 = sub_100019F2C();

  return sub_100003FD8(v0, qword_100025D18);
}

uint64_t sub_1000045F8@<X0>(uint64_t a1@<X8>)
{
  if (qword_100025A48 != -1)
  {
    swift_once();
  }

  v2 = sub_100019F2C();
  v3 = sub_100003FD8(v2, qword_100025D18);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *sub_1000046A0(uint64_t a1)
{
  v2 = sub_100002594(&qword_100024E28, qword_10001A970);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v31 - v6;
  sub_1000198AC();
  v8 = sub_10001988C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v5, 1, v8) == 1)
  {
    (*(v9 + 56))(v7, 1, 1, v8);
    if (v10(v5, 1, v8) != 1)
    {
      sub_100002D44(v5, &qword_100024E28, qword_10001A970);
    }
  }

  else
  {
    (*(v9 + 32))(v7, v5, v8);
    (*(v9 + 56))(v7, 0, 1, v8);
  }

  v11 = sub_100004D3C(v7);
  v13 = v12;
  sub_100002D44(v7, &qword_100024E28, qword_10001A970);
  if ((v13 & 1) == 0)
  {
    v14 = sub_10000507C(a1);
    if (v14)
    {
      v16 = v14;
      v17 = v15;
      v18 = [objc_allocWithZone(SISchemaRequestLink) init];
      if (v18)
      {
        v19 = v18;
        v20 = [objc_allocWithZone(SISchemaRequestLinkInfo) init];
        if (v20)
        {
          v21 = v20;
          v22 = [objc_allocWithZone(SISchemaRequestLinkInfo) init];
          if (v22)
          {
            v23 = v22;
            [v21 setComponent:v11];
            [v21 setUuid:v16];
            [v23 setComponent:HIDWORD(v11)];
            [v23 setUuid:v17];
            [v19 setSource:v21];
            [v19 setTarget:v23];

            v16 = v23;
LABEL_22:

            return v19;
          }

          if (qword_100025A48 != -1)
          {
            swift_once();
          }

          v28 = sub_100019F2C();
          sub_100003FD8(v28, qword_100025D18);
          sub_1000017F4(0xD00000000000002ELL, 0x800000010001B380, v29);
        }

        else
        {
          if (qword_100025A48 != -1)
          {
            swift_once();
          }

          v26 = sub_100019F2C();
          sub_100003FD8(v26, qword_100025D18);
          sub_1000017F4(0xD00000000000002ELL, 0x800000010001B380, v27);
        }
      }

      else
      {
        if (qword_100025A48 != -1)
        {
          swift_once();
        }

        v24 = sub_100019F2C();
        sub_100003FD8(v24, qword_100025D18);
        sub_1000017F4(0xD00000000000002ELL, 0x800000010001B380, v25);
      }

      v19 = 0;
      v21 = v17;
      goto LABEL_22;
    }
  }

  return 0;
}

void *sub_100004AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [objc_allocWithZone(SISchemaRequestLink) init];
  if (!v8)
  {
    if (qword_100025A48 != -1)
    {
      swift_once();
    }

    v14 = sub_100019F2C();
    sub_100003FD8(v14, qword_100025D18);
    sub_1000017F4(0xD00000000000002ELL, 0x800000010001B380, v15);
    return 0;
  }

  v9 = v8;
  v10 = [objc_allocWithZone(SISchemaRequestLinkInfo) init];
  if (!v10)
  {
    if (qword_100025A48 != -1)
    {
      swift_once();
    }

    v16 = sub_100019F2C();
    sub_100003FD8(v16, qword_100025D18);
    sub_1000017F4(0xD00000000000002ELL, 0x800000010001B380, v17);

    return 0;
  }

  v11 = v10;
  v12 = [objc_allocWithZone(SISchemaRequestLinkInfo) init];
  if (!v12)
  {
    if (qword_100025A48 != -1)
    {
      swift_once();
    }

    v18 = sub_100019F2C();
    sub_100003FD8(v18, qword_100025D18);
    sub_1000017F4(0xD00000000000002ELL, 0x800000010001B380, v19);

    return 0;
  }

  v13 = v12;
  [v11 setComponent:a1];
  [v11 setUuid:a2];
  [v13 setComponent:a3];
  [v13 setUuid:a4];
  [v9 setSource:v11];
  [v9 setTarget:v13];

  return v9;
}

uint64_t sub_100004D3C(uint64_t a1)
{
  v2 = sub_100002594(&qword_100024E28, qword_10001A970);
  __chkstk_darwin(v2 - 8);
  v4 = &v24 - v3;
  v5 = sub_10001988C();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v24 - v10;
  sub_10000605C(a1, v4, &qword_100024E28, qword_10001A970);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100002D44(v4, &qword_100024E28, qword_10001A970);
    if (qword_100025A48 != -1)
    {
      swift_once();
    }

    v12 = sub_100019F2C();
    sub_100003FD8(v12, qword_100025D18);
    v13 = sub_100019F0C();
    v14 = sub_10001A01C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "IntelligenceFlow.Telemetry event has no target so no request link target component", v15, 2u);
    }

    return 0;
  }

  v17 = *(v6 + 32);
  v17(v11, v4, v5);
  v17(v9, v11, v5);
  v18 = (*(v6 + 88))(v9, v5);
  if (v18 == enum case for IntelligenceFlowTarget.queryDecorationServiceHandle(_:) || v18 == enum case for IntelligenceFlowTarget.fullPlannerTokenGeneratorInterfaceLLMCacheManagerLookupCall(_:) || v18 == enum case for IntelligenceFlowTarget.fullPlannerTokenGeneratorInterfaceLLMCacheManagerInsertCall(_:) || v18 == enum case for IntelligenceFlowTarget.fullPlannerTokenGeneratorConstrainedDecodingInterfaceLLMCacheManagerLookupCall(_:) || v18 == enum case for IntelligenceFlowTarget.fullPlannerTokenGeneratorConstrainedDecodingInterfaceLLMCacheManagerInsertCall(_:) || v18 == enum case for IntelligenceFlowTarget.planResolverServiceHandle(_:))
  {
    return 0x2E0000002DLL;
  }

  if (v18 != enum case for IntelligenceFlowTarget.sessionCoordinatorAccept(_:))
  {
    (*(v6 + 8))(v9, v5);
    return 0;
  }

  return 0x2D0000002ELL;
}

char *sub_10000507C(uint64_t a1)
{
  v128 = sub_100019E3C();
  v131 = *(v128 - 8);
  __chkstk_darwin(v128);
  v130 = v116 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100002594(&qword_100024EC8, qword_10001AC30);
  v4 = __chkstk_darwin(v3 - 8);
  v132 = v116 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v135 = v116 - v6;
  v7 = sub_100002594(&qword_100024E28, qword_10001A970);
  v8 = __chkstk_darwin(v7 - 8);
  v133 = v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = v116 - v10;
  v12 = sub_100002594(&qword_100024ED0, "r\x1B");
  v13 = __chkstk_darwin(v12 - 8);
  v129 = v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = v116 - v15;
  v17 = sub_100002594(&qword_100024ED8, "Z\x1B");
  v18 = __chkstk_darwin(v17 - 8);
  v126 = v116 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = v116 - v20;
  v22 = sub_100002594(&qword_100024EE0, "r\x1B");
  v23 = __chkstk_darwin(v22 - 8);
  v127 = v116 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v124 = v116 - v26;
  __chkstk_darwin(v25);
  v28 = v116 - v27;
  v29 = sub_10001981C();
  v139 = *(v29 - 8);
  v30 = __chkstk_darwin(v29);
  v134 = v116 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v125 = v116 - v33;
  v34 = __chkstk_darwin(v32);
  v123 = v116 - v35;
  __chkstk_darwin(v34);
  v137 = a1;
  v138 = v116 - v36;
  sub_1000198DC();
  v37 = sub_1000198CC();
  v38 = *(v37 - 8);
  v39 = *(v38 + 48);
  if (v39(v16, 1, v37) == 1)
  {
    sub_100002D44(v16, &qword_100024ED0, "r\x1B");
LABEL_5:
    (*(v139 + 56))(v28, 1, 1, v29);
LABEL_6:
    sub_100002D44(v28, &qword_100024EE0, "r\x1B");
    if (qword_100025A48 != -1)
    {
      swift_once();
    }

    v43 = sub_100019F2C();
    sub_100003FD8(v43, qword_100025D18);
    v44 = sub_100019F0C();
    v45 = sub_10001A01C();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "IntelligenceFlow.Telemetry event has no requestEventId, can't form SELF request link message", v46, 2u);
    }

    return 0;
  }

  v136 = v29;
  v122 = v11;
  sub_1000198BC();
  v40 = *(v38 + 8);
  v40(v16, v37);
  v41 = sub_10001994C();
  v42 = *(v41 - 8);
  v121 = *(v42 + 48);
  if (v121(v21, 1, v41) == 1)
  {
    sub_100002D44(v21, &qword_100024ED8, "Z\x1B");
    v29 = v136;
    goto LABEL_5;
  }

  v118 = v40;
  sub_10001990C();
  v117 = *(v42 + 8);
  v117(v21, v41);
  v48 = v139;
  v49 = v136;
  v119 = *(v139 + 48);
  v120 = v139 + 48;
  if (v119(v28, 1, v136) == 1)
  {
    goto LABEL_6;
  }

  v50 = *(v48 + 32);
  v116[1] = v48 + 32;
  v116[0] = v50;
  v50(v138, v28, v49);
  v51 = v122;
  sub_1000198AC();
  v52 = sub_10001988C();
  v53 = *(v52 - 8);
  if ((*(v53 + 48))(v51, 1, v52) == 1)
  {
LABEL_18:
    v60 = objc_allocWithZone(SISchemaUUID);
    v61 = v138;
    isa = sub_1000197FC().super.isa;
    v133 = [v60 initWithNSUUID:isa];

    v63 = v135;
    sub_1000198FC();
    v64 = sub_1000198EC();
    v65 = *(v64 - 8);
    v66 = (*(v65 + 48))(v63, 1, v64);
    v56 = v122;
    v67 = v136;
    v68 = v139;
    if (v66 != 1)
    {
      v69 = v132;
      sub_10000605C(v63, v132, &qword_100024EC8, qword_10001AC30);
      if ((*(v65 + 88))(v69, v64) == enum case for IntelligenceFlowTelemetry.Objective.pnr(_:))
      {
        (*(v65 + 96))(v69, v64);
        v70 = v131;
        v71 = v69;
        v72 = v130;
        v73 = v128;
        (*(v131 + 32))(v130, v71, v128);
        v74 = v127;
        sub_100019E1C();
        v75 = v74;
        if (v119(v74, 1, v67) != 1)
        {
          v95 = v125;
          (v116[0])(v125, v75, v67);
          v96 = v70;
          v97 = objc_allocWithZone(SISchemaUUID);
          v98 = sub_1000197FC().super.isa;
          [v97 initWithNSUUID:v98];

          v99 = *(v68 + 8);
          v99(v95, v67);
          (*(v96 + 8))(v72, v73);
          v99(v138, v67);
          sub_100002D44(v63, &qword_100024EC8, qword_10001AC30);
          v56 = v122;
          goto LABEL_36;
        }

        v76 = v73;
        sub_100002D44(v74, &qword_100024EE0, "r\x1B");
        v56 = v122;
        if (qword_100025A48 != -1)
        {
          swift_once();
        }

        v77 = sub_100019F2C();
        sub_100003FD8(v77, qword_100025D18);
        v78 = sub_100019F0C();
        v79 = sub_10001A01C();
        v80 = os_log_type_enabled(v78, v79);
        v81 = v130;
        v82 = v138;
        if (v80)
        {
          v83 = swift_slowAlloc();
          *v83 = 0;
          _os_log_impl(&_mh_execute_header, v78, v79, "IntelligenceFlow.Telemetry event has no contextId, can't form SELF request link message", v83, 2u);
        }

        (*(v131 + 8))(v81, v76);
        (*(v68 + 8))(v82, v67);
LABEL_32:
        sub_100002D44(v63, &qword_100024EC8, qword_10001AC30);
LABEL_48:
        sub_100002D44(v56, &qword_100024E28, qword_10001A970);
        return 0;
      }

      (*(v65 + 8))(v69, v64);
    }

    v84 = v134;
    sub_10001980C();
    v85 = objc_allocWithZone(SISchemaUUID);
    v86 = sub_1000197FC().super.isa;
    v87 = [v85 initWithNSUUID:v86];

    v88 = *(v68 + 8);
    v88(v84, v67);
    if (qword_100025A48 != -1)
    {
      swift_once();
    }

    v89 = sub_100019F2C();
    sub_100003FD8(v89, qword_100025D18);
    v90 = sub_100019F0C();
    v91 = sub_10001A02C();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&_mh_execute_header, v90, v91, "errorMessage", v92, 2u);
    }

    v88(v61, v67);
    goto LABEL_32;
  }

  v54 = v133;
  sub_10000605C(v122, v133, &qword_100024E28, qword_10001A970);
  if ((*(v53 + 88))(v54, v52) != enum case for IntelligenceFlowTarget.sessionCoordinatorAccept(_:))
  {
    (*(v53 + 8))(v54, v52);
    goto LABEL_18;
  }

  v55 = v129;
  sub_1000198DC();
  if (v39(v55, 1, v37) == 1)
  {
    sub_100002D44(v55, &qword_100024ED0, "r\x1B");
    v56 = v122;
    v57 = v136;
    v59 = v138;
    v58 = v139;
LABEL_43:
    if (qword_100025A48 != -1)
    {
      swift_once();
    }

    v106 = sub_100019F2C();
    sub_100003FD8(v106, qword_100025D18);
    v107 = sub_100019F0C();
    v108 = sub_10001A02C();
    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      *v109 = 0;
      _os_log_impl(&_mh_execute_header, v107, v108, "IntelligenceFlow.Telemetry event has no clientRequestId, can't form SELF request link message", v109, 2u);
    }

    (*(v58 + 8))(v59, v57);
    goto LABEL_48;
  }

  v93 = v126;
  sub_1000198BC();
  v118(v55, v37);
  v94 = v121(v93, 1, v41);
  v58 = v139;
  if (v94 == 1)
  {
    sub_100002D44(v93, &qword_100024ED8, "Z\x1B");
    v56 = v122;
    v57 = v136;
    v59 = v138;
    goto LABEL_43;
  }

  v100 = sub_10001991C();
  v102 = v101;
  v117(v93, v41);
  v103 = HIBYTE(v102) & 0xF;
  if ((v102 & 0x2000000000000000) == 0)
  {
    v103 = v100 & 0xFFFFFFFFFFFFLL;
  }

  v57 = v136;
  v59 = v138;
  if (!v103)
  {

    v56 = v122;
    goto LABEL_43;
  }

  v104 = v124;
  sub_1000197EC();

  v105 = v119(v104, 1, v57);
  v56 = v122;
  if (v105 == 1)
  {
    sub_100002D44(v104, &qword_100024EE0, "r\x1B");
    goto LABEL_43;
  }

  v110 = v123;
  (v116[0])(v123, v104, v57);
  v111 = objc_allocWithZone(SISchemaUUID);
  v112 = sub_1000197FC().super.isa;
  v133 = [v111 initWithNSUUID:v112];

  v113 = objc_allocWithZone(SISchemaUUID);
  v114 = sub_1000197FC().super.isa;
  [v113 initWithNSUUID:v114];

  v115 = *(v58 + 8);
  v115(v110, v57);
  v115(v59, v57);
LABEL_36:
  sub_100002D44(v56, &qword_100024E28, qword_10001A970);
  return v133;
}

uint64_t sub_10000605C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002594(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000060C4()
{
  v0 = sub_100019F2C();
  sub_10000449C(v0, qword_100025D30);
  sub_100003FD8(v0, qword_100025D30);
  sub_1000028F8();
  sub_10001A03C();
  return sub_100019F3C();
}

uint64_t sub_100006158()
{
  if (qword_100025A50 != -1)
  {
    swift_once();
  }

  v0 = sub_100019F2C();

  return sub_100003FD8(v0, qword_100025D30);
}

uint64_t sub_1000061BC@<X0>(uint64_t a1@<X8>)
{
  if (qword_100025A50 != -1)
  {
    swift_once();
  }

  v2 = sub_100019F2C();
  v3 = sub_100003FD8(v2, qword_100025D30);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *sub_100006264(uint64_t a1)
{
  v2 = sub_100002594(&qword_100024EE0, "r\x1B");
  __chkstk_darwin(v2 - 8);
  v56 = &v50 - v3;
  v4 = sub_10001981C();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v50 - v10;
  __chkstk_darwin(v9);
  v57 = &v50 - v12;
  v13 = sub_100002594(&qword_100024ED0, "r\x1B");
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v50 - v17;
  v19 = sub_100002594(&qword_100024ED8, "Z\x1B");
  v20 = __chkstk_darwin(v19 - 8);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v50 - v23;
  v25 = [objc_allocWithZone(IFPlatformRequestSchemaIFPlatformRequestInvoked) init];
  if (v25)
  {
    v26 = v25;
    v54 = v8;
    v55 = v11;
    v59 = a1;
    sub_100006940(a1, v18);
    v27 = sub_1000198CC();
    v28 = *(v27 - 8);
    v58 = *(v28 + 48);
    if (v58(v18, 1, v27) == 1)
    {
      sub_100002D44(v18, &qword_100024ED0, "r\x1B");
    }

    else
    {
      v52 = v5;
      v53 = v4;
      sub_1000198BC();
      (*(v28 + 8))(v18, v27);
      v31 = sub_10001994C();
      v32 = *(v31 - 8);
      if ((*(v32 + 48))(v24, 1, v31) == 1)
      {
        sub_100002D44(v24, &qword_100024ED8, "Z\x1B");
        v5 = v52;
        v4 = v53;
      }

      else
      {
        v51 = v26;
        v33 = sub_10001991C();
        v35 = v34;
        (*(v32 + 8))(v24, v31);
        v36 = HIBYTE(v35) & 0xF;
        if ((v35 & 0x2000000000000000) == 0)
        {
          v36 = v33 & 0xFFFFFFFFFFFFLL;
        }

        if (v36)
        {
          v37 = v56;
          sub_1000197EC();

          v5 = v52;
          v4 = v53;
          v38 = (*(v52 + 48))(v37, 1, v53);
          v26 = v51;
          if (v38 == 1)
          {
            sub_100002D44(v37, &qword_100024EE0, "r\x1B");
          }

          else
          {
            (*(v5 + 32))(v57, v37, v4);
            v39 = objc_allocWithZone(SISchemaUUID);
            isa = sub_1000197FC().super.isa;
            v41 = [v39 initWithNSUUID:isa];

            [v26 setClientTraceId:v41];
            (*(v5 + 8))(v57, v4);
          }
        }

        else
        {

          v5 = v52;
          v4 = v53;
          v26 = v51;
        }
      }
    }

    sub_100006940(v59, v16);
    if (v58(v16, 1, v27) == 1)
    {
      sub_100002D44(v16, &qword_100024ED0, "r\x1B");
    }

    else
    {
      sub_1000198BC();
      (*(v28 + 8))(v16, v27);
      v42 = sub_10001994C();
      v43 = *(v42 - 8);
      if ((*(v43 + 48))(v22, 1, v42) == 1)
      {
        sub_100002D44(v22, &qword_100024ED8, "Z\x1B");
      }

      else
      {
        v44 = v54;
        sub_10001993C();
        (*(v43 + 8))(v22, v42);
        v45 = v55;
        (*(v5 + 32))(v55, v44, v4);
        v46 = objc_allocWithZone(SISchemaUUID);
        v47 = sub_1000197FC().super.isa;
        v48 = [v46 initWithNSUUID:v47];

        [v26 setIfSessionId:v48];
        (*(v5 + 8))(v45, v4);
      }
    }
  }

  else
  {
    if (qword_100025A50 != -1)
    {
      swift_once();
    }

    v29 = sub_100019F2C();
    sub_100003FD8(v29, qword_100025D30);
    sub_1000017F4(0xD00000000000003ALL, 0x800000010001B3F0, v30);
    return 0;
  }

  return v26;
}

uint64_t sub_100006940(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002594(&qword_100024ED0, "r\x1B");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000069D4()
{
  v0 = sub_100019F2C();
  sub_10000449C(v0, qword_100025D48);
  sub_100003FD8(v0, qword_100025D48);
  sub_1000028F8();
  sub_10001A03C();
  return sub_100019F3C();
}

uint64_t sub_100006A68()
{
  if (qword_100025A58 != -1)
  {
    swift_once();
  }

  v0 = sub_100019F2C();

  return sub_100003FD8(v0, qword_100025D48);
}

uint64_t sub_100006ACC@<X0>(uint64_t a1@<X8>)
{
  if (qword_100025A58 != -1)
  {
    swift_once();
  }

  v2 = sub_100019F2C();
  v3 = sub_100003FD8(v2, qword_100025D48);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_100006B74(uint64_t a1)
{
  v2 = sub_100002594(&qword_100024E28, qword_10001A970);
  __chkstk_darwin(v2 - 8);
  v4 = &v34 - v3;
  v5 = sub_10001988C();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v34 - v11;
  __chkstk_darwin(v10);
  v14 = &v34 - v13;
  sub_100007160(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000071D0(v4);
    if (qword_100025A58 != -1)
    {
      swift_once();
    }

    v15 = sub_100019F2C();
    sub_100003FD8(v15, qword_100025D48);
    v16 = sub_100019F0C();
    v17 = sub_10001A01C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "IntelligenceFlow.Telemetry event has no target so no request event target", v18, 2u);
    }
  }

  else
  {
    (*(v6 + 32))(v14, v4, v5);
    v21 = *(v6 + 16);
    v21(v12, v14, v5);
    v22 = (*(v6 + 88))(v12, v5);
    if (v22 == enum case for IntelligenceFlowTarget.standardPlannerMakePlan(_:))
    {
      (*(v6 + 8))(v14, v5);
      v20 = 0;
      v19 = 1;
      goto LABEL_22;
    }

    if (v22 == enum case for IntelligenceFlowTarget.standardPlannerSetup(_:))
    {
      (*(v6 + 8))(v14, v5);
      v20 = 0;
      v19 = 2;
      goto LABEL_22;
    }

    if (v22 == enum case for IntelligenceFlowTarget.queryDecorationServiceSetup(_:))
    {
      (*(v6 + 8))(v14, v5);
      v20 = 0;
      v19 = 101;
      goto LABEL_22;
    }

    if (v22 == enum case for IntelligenceFlowTarget.planOverridesServiceSetup(_:))
    {
      (*(v6 + 8))(v14, v5);
      v20 = 0;
      v19 = 201;
      goto LABEL_22;
    }

    if (v22 == enum case for IntelligenceFlowTarget.fullPlannerServiceSetup(_:))
    {
      (*(v6 + 8))(v14, v5);
      v20 = 0;
      v19 = 301;
      goto LABEL_22;
    }

    if (v22 == enum case for IntelligenceFlowTarget.planResolverServiceSetup(_:))
    {
      (*(v6 + 8))(v14, v5);
      v20 = 0;
      v19 = 401;
      goto LABEL_22;
    }

    if (v22 == enum case for IntelligenceFlowTarget.responseGenerationServiceSetup(_:))
    {
      (*(v6 + 8))(v14, v5);
      v20 = 0;
      v19 = 501;
      goto LABEL_22;
    }

    if (qword_100025A58 != -1)
    {
      swift_once();
    }

    v24 = sub_100019F2C();
    sub_100003FD8(v24, qword_100025D48);
    v21(v9, v14, v5);
    v25 = sub_100019F0C();
    v26 = sub_10001A01C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v35 = v27;
      v37 = swift_slowAlloc();
      v38 = v37;
      *v27 = 136315138;
      sub_100007238();
      v36 = v26;
      v28 = sub_10001A13C();
      v30 = v29;
      v31 = *(v6 + 8);
      v31(v9, v5);
      v32 = sub_100001D8C(v28, v30, &v38);

      v33 = v35;
      *(v35 + 1) = v32;
      _os_log_impl(&_mh_execute_header, v25, v36, "Unrecognized IntelligenceFlow.Telemetry target %s so no request event target", v33, 0xCu);
      sub_100002334(v37);
    }

    else
    {

      v31 = *(v6 + 8);
      v31(v9, v5);
    }

    v31(v14, v5);
    v31(v12, v5);
  }

  v19 = 0;
  v20 = 1;
LABEL_22:
  v39 = v20;
  return v19 | (v20 << 32);
}

uint64_t sub_100007160(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002594(&qword_100024E28, qword_10001A970);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000071D0(uint64_t a1)
{
  v2 = sub_100002594(&qword_100024E28, qword_10001A970);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100007238()
{
  result = qword_100024F80;
  if (!qword_100024F80)
  {
    sub_10001988C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024F80);
  }

  return result;
}

uint64_t sub_1000072B4()
{
  v0 = sub_100019F2C();
  sub_10000449C(v0, qword_100025D60);
  sub_100003FD8(v0, qword_100025D60);
  sub_1000028F8();
  sub_10001A03C();
  return sub_100019F3C();
}

uint64_t sub_100007348()
{
  if (qword_100025A60 != -1)
  {
    swift_once();
  }

  v0 = sub_100019F2C();

  return sub_100003FD8(v0, qword_100025D60);
}

uint64_t sub_1000073AC@<X0>(uint64_t a1@<X8>)
{
  if (qword_100025A60 != -1)
  {
    swift_once();
  }

  v2 = sub_100019F2C();
  v3 = sub_100003FD8(v2, qword_100025D60);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *sub_100007454(uint64_t a1, uint64_t a2)
{
  v56 = a2;
  v2 = sub_100019DFC();
  v52 = *(v2 - 8);
  v53 = v2;
  __chkstk_darwin(v2);
  v51 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100019DDC();
  v55 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002594(&qword_100025020, qword_10001AA80);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v51 - v11;
  v13 = sub_100002594(&qword_100024EE0, "r\x1B");
  __chkstk_darwin(v13 - 8);
  v15 = &v51 - v14;
  v16 = sub_10001981C();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [objc_allocWithZone(IFPlatformRequestSchemaIFPlatformRequestContext) init];
  if (v20)
  {
    v21 = v20;
    v54 = v10;
    sub_100019E1C();
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {
      sub_100002D44(v15, &qword_100024EE0, "r\x1B");
    }

    else
    {
      (*(v17 + 32))(v19, v15, v16);
      v24 = objc_allocWithZone(SISchemaUUID);
      isa = sub_1000197FC().super.isa;
      v26 = [v24 initWithNSUUID:isa];

      [v21 setTraceId:v26];
      (*(v17 + 8))(v19, v16);
    }

    v27 = v12;
    sub_100019E2C();
    v28 = sub_100019E0C();
    v29 = *(v28 - 8);
    if ((*(v29 + 48))(v12, 1, v28) == 1)
    {
      goto LABEL_10;
    }

    v34 = v54;
    sub_100007CCC(v12, v54);
    v35 = (*(v29 + 88))(v34, v28);
    if (v35 != enum case for IntelligenceFlowPlatformPnR.StateInfo.started(_:))
    {
      if (v35 == enum case for IntelligenceFlowPlatformPnR.StateInfo.ended(_:))
      {
        (*(v29 + 96))(v34, v28);
        v38 = v55;
        (*(v55 + 32))(v6, v34, v4);
        type metadata accessor for IFPlatformRequestEndedConverter();
        v39 = sub_100007F04();
        [v21 setEnded:v39];

        (*(v38 + 8))(v6, v4);
      }

      else
      {
        if (v35 != enum case for IntelligenceFlowPlatformPnR.StateInfo.failed(_:))
        {
          (*(v29 + 8))(v34, v28);
LABEL_10:
          if (qword_100025A60 != -1)
          {
            swift_once();
          }

          v30 = sub_100019F2C();
          sub_100003FD8(v30, qword_100025D60);
          v31 = sub_100019F0C();
          v32 = sub_10001A02C();
          if (os_log_type_enabled(v31, v32))
          {
            v33 = swift_slowAlloc();
            *v33 = 0;
            _os_log_impl(&_mh_execute_header, v31, v32, "failed parsing pnr.stateInfo", v33, 2u);
          }

          goto LABEL_32;
        }

        (*(v29 + 96))(v34, v28);
        v41 = v51;
        v40 = v52;
        v42 = v53;
        (*(v52 + 32))(v51, v34, v53);
        type metadata accessor for IFPlatformRequestFailedConverter();
        v43 = sub_1000040B8();
        [v21 setFailed:v43];

        (*(v40 + 8))(v41, v42);
      }

LABEL_32:
      sub_100002D44(v27, &qword_100025020, qword_10001AA80);
      return v21;
    }

    v36 = [objc_allocWithZone(IFPlatformRequestSchemaIFPlatformRequestStarted) init];
    if (v36)
    {
      v37 = v36;
      if ((v56 & 0x100000000) != 0)
      {
        if (qword_100025A60 != -1)
        {
          swift_once();
        }

        v46 = sub_100019F2C();
        sub_100003FD8(v46, qword_100025D60);
        v47 = sub_100019F0C();
        v48 = sub_10001A02C();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          *v49 = 0;
          _os_log_impl(&_mh_execute_header, v47, v48, "target is nil, not setting", v49, 2u);
        }

        v34 = v54;
      }

      else
      {
        [v36 setIfPlatformRequestTarget:?];
      }

      [v21 setStartedOrChanged:v37];

      (*(v29 + 8))(v34, v28);
      goto LABEL_32;
    }

    if (qword_100025A60 != -1)
    {
      swift_once();
    }

    v44 = sub_100019F2C();
    sub_100003FD8(v44, qword_100025D60);
    sub_1000017F4(0xD000000000000048, 0x800000010001B510, v45);

    (*(v29 + 8))(v54, v28);
    sub_100002D44(v12, &qword_100025020, qword_10001AA80);
  }

  else
  {
    if (qword_100025A60 != -1)
    {
      swift_once();
    }

    v22 = sub_100019F2C();
    sub_100003FD8(v22, qword_100025D60);
    sub_1000017F4(0xD000000000000040, 0x800000010001B4C0, v23);
  }

  return 0;
}

uint64_t sub_100007CCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002594(&qword_100025020, qword_10001AA80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100007D60()
{
  v0 = sub_100019F2C();
  sub_10000449C(v0, qword_100025D78);
  sub_100003FD8(v0, qword_100025D78);
  sub_1000028F8();
  sub_10001A03C();
  return sub_100019F3C();
}

uint64_t sub_100007DF8()
{
  if (qword_100025A68 != -1)
  {
    swift_once();
  }

  v0 = sub_100019F2C();

  return sub_100003FD8(v0, qword_100025D78);
}

uint64_t sub_100007E5C@<X0>(uint64_t a1@<X8>)
{
  if (qword_100025A68 != -1)
  {
    swift_once();
  }

  v2 = sub_100019F2C();
  v3 = sub_100003FD8(v2, qword_100025D78);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *sub_100007F04()
{
  v0 = sub_100002594(&qword_100024D88, qword_10001A910);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v22 - v4;
  v6 = [objc_allocWithZone(IFPlatformRequestSchemaIFPlatformRequestEnded) init];
  if (!v6)
  {
    if (qword_100025A68 != -1)
    {
      swift_once();
    }

    v13 = sub_100019F2C();
    sub_100003FD8(v13, qword_100025D78);
    sub_1000017F4(0xD000000000000046, 0x800000010001B5B0, v14);
    return 0;
  }

  v7 = v6;
  v8 = [objc_allocWithZone(IFTSchemaIFTIntelligenceFlowError) init];
  if (!v8)
  {
    if (qword_100025A68 != -1)
    {
      swift_once();
    }

    v15 = sub_100019F2C();
    sub_100003FD8(v15, qword_100025D78);
    sub_1000017F4(0xD000000000000038, 0x800000010001B300, v16);

    return 0;
  }

  v9 = v8;
  sub_100019DCC();
  v10 = sub_100019DAC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v5, 1, v10) == 1)
  {
    sub_1000043E8(v5);
  }

  else
  {
    v17 = sub_100019D8C();
    (*(v11 + 8))(v5, v10);
    if ((v17 & 0x100000000) == 0)
    {
      [v9 setCode:v17];
    }
  }

  sub_100019DCC();
  if (v12(v3, 1, v10) == 1)
  {
    sub_1000043E8(v3);
  }

  else
  {
    sub_100019D9C();
    v19 = v18;
    (*(v11 + 8))(v3, v10);
    if (v19)
    {
      v20 = sub_100019F7C();

      [v9 setDomain:v20];
    }
  }

  [v7 setHandledError:v9];

  return v7;
}

uint64_t sub_100008258()
{
  v0 = sub_100019F2C();
  sub_10000449C(v0, qword_100025A78);
  sub_100003FD8(v0, qword_100025A78);
  return sub_100019F1C();
}

uint64_t sub_1000082F8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100009D3C;

  return sub_100008CE4(a1);
}

uint64_t sub_1000083A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v42 = a3;
  v6 = sub_100002594(&qword_100024CD0, &qword_10001A8D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v37 - v7;
  v9 = sub_100002594(&qword_100025178, &unk_10001AC10);
  v10 = __chkstk_darwin(v9 - 8);
  v44 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v37 - v12;
  result = sub_100002DA4(a2);
  if (!result)
  {
    return result;
  }

  v16 = result;
  v17 = 0;
  v18 = *(result + 16);
  *&v15 = 136315138;
  v37 = v15;
  v38 = v13;
  v40 = v18;
  v41 = result;
  while (1)
  {
    if (v17 == v18)
    {
      v19 = sub_100002594(&qword_100024CD8, qword_10001A8D8);
      (*(*(v19 - 8) + 56))(v44, 1, 1, v19);
      v43 = v18;
      goto LABEL_10;
    }

    if ((v17 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v17 >= *(v16 + 16))
    {
      goto LABEL_20;
    }

    v20 = sub_100002594(&qword_100024CD8, qword_10001A8D8);
    v21 = *(v20 - 8);
    v22 = v44;
    sub_100009C64(v16 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v17, v44);
    v43 = v17 + 1;
    (*(v21 + 56))(v22, 0, 1, v20);
LABEL_10:
    sub_100003D7C(v44, v13, &qword_100025178, &unk_10001AC10);
    v23 = sub_100002594(&qword_100024CD8, qword_10001A8D8);
    if ((*(*(v23 - 8) + 48))(v13, 1, v23) == 1)
    {
    }

    v24 = *&v13[*(v23 + 48)];
    sub_100003D7C(v13, v8, &qword_100024CD0, &qword_10001A8D0);
    sub_10001982C();
    if (v4)
    {

      v4 = 0;
    }

    if (qword_100025A70 != -1)
    {
      swift_once();
    }

    v25 = sub_100019F2C();
    sub_100003FD8(v25, qword_100025A78);
    v26 = v24;
    v27 = sub_100019F0C();
    v28 = sub_10001A01C();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v45 = v30;
      *v29 = v37;
      v31 = [v26 qualifiedMessageName];
      v32 = sub_100019F8C();
      v39 = v4;
      v33 = v32;
      v35 = v34;

      v36 = sub_100001D8C(v33, v35, &v45);

      *(v29 + 4) = v36;
      v4 = v39;
      _os_log_impl(&_mh_execute_header, v27, v28, "IFTelemetry message is appended %s to SELF staging pool", v29, 0xCu);
      sub_100002334(v30);

      v13 = v38;
    }

    else
    {
    }

    result = sub_100009CD4(v8);
    v18 = v40;
    v16 = v41;
    v17 = v43;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100008884(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000892C;

  return sub_100008CE4(a1);
}

uint64_t sub_10000892C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100008A20(uint64_t a1)
{
  v2 = sub_100009790();

  return IngestionExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000096E4();
  sub_10001987C();
  return 0;
}

void *sub_100008AC8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100002594(&qword_100025180, &unk_10001AC20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100002594(&qword_100025188, &qword_10001ACA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_100008BFC()
{
  if (qword_100025A70 != -1)
  {
    swift_once();
  }

  v0 = sub_100019F2C();
  sub_100003FD8(v0, qword_100025A78);
  oslog = sub_100019F0C();
  v1 = sub_10001A01C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "IFTelemetrySELFIngestor Initializing", v2, 2u);
  }
}

uint64_t sub_100008CE4(uint64_t a1)
{
  v1[5] = a1;
  v2 = sub_10001983C();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v1[8] = *(v3 + 64);
  v1[9] = swift_task_alloc();
  v4 = sub_1000197DC();
  v1[10] = v4;
  v1[11] = *(v4 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();

  return _swift_task_switch(sub_100008E38, 0, 0);
}

uint64_t sub_100008E38()
{
  v48 = v0;
  type metadata accessor for IFDefaultsLib(0);
  v0[17] = IFDefaultsLib.__allocating_init(domain:)(0xD000000000000021, 0x800000010001B640);
  sub_100002594(&qword_100025168, &qword_10001AC08);
  v1 = sub_100019DBC();
  v46 = IFBiomeLib.__allocating_init(stream:)(v1);
  v0[18] = v46;
  type metadata accessor for IFTelemetrySELFMapper(0);
  v44 = sub_100003A84();
  v0[19] = v44;
  if (qword_100025A70 != -1)
  {
    swift_once();
  }

  v2 = sub_100019F2C();
  sub_100003FD8(v2, qword_100025A78);
  v3 = sub_100019F0C();
  v4 = sub_10001A01C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Begin ingesting", v5, 2u);
  }

  v7 = v0[15];
  v6 = v0[16];
  v9 = v0[13];
  v8 = v0[14];
  v11 = v0[10];
  v10 = v0[11];

  IFDefaultsLib.lastCollectionDate.getter(v6);
  sub_1000197CC();
  v12 = swift_allocObject();
  v0[20] = v12;
  v43 = v12;
  *(v12 + 16) = &_swiftEmptyArrayStorage;
  v13 = *(v10 + 16);
  v0[21] = v13;
  v0[22] = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v8, v6, v11);
  v13(v9, v7, v11);
  v14 = sub_100019F0C();
  v15 = sub_10001A01C();
  v16 = os_log_type_enabled(v14, v15);
  v18 = v0[13];
  v17 = v0[14];
  v20 = v0[10];
  v19 = v0[11];
  if (v16)
  {
    v21 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v21 = 136315394;
    sub_100009C0C();
    log = v14;
    v41 = v15;
    v22 = sub_10001A13C();
    v24 = v23;
    v25 = *(v19 + 8);
    v25(v17, v20);
    v26 = sub_100001D8C(v22, v24, &v47);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2080;
    v27 = sub_10001A13C();
    v29 = v28;
    v25(v18, v20);
    v30 = sub_100001D8C(v27, v29, &v47);

    *(v21 + 14) = v30;
    _os_log_impl(&_mh_execute_header, log, v41, "Fetch range: %s, %s", v21, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v25 = *(v19 + 8);
    v25(v18, v20);
    v25(v17, v20);
  }

  v0[23] = v25;
  v31 = v0[9];
  v32 = v0[6];
  v33 = v0[7];
  (*(v33 + 16))(v31, v0[5], v32);
  v34 = (*(v33 + 80) + 24) & ~*(v33 + 80);
  v35 = swift_allocObject();
  v0[24] = v35;
  *(v35 + 16) = v44;
  (*(v33 + 32))(v35 + v34, v31, v32);
  v36 = *(*v46 + 144);

  v45 = (v36 + *v36);
  v37 = swift_task_alloc();
  v0[25] = v37;
  *v37 = v0;
  v37[1] = sub_100009390;
  v38 = v0[15];
  v39 = v0[16];

  return v45(v39, v38, sub_10000982C, v43, sub_100009B68, v35);
}

uint64_t sub_100009390()
{

  return _swift_task_switch(sub_1000094C4, 0, 0);
}

uint64_t sub_1000094C4()
{
  v1 = *(v0 + 160);
  swift_beginAccess();
  v2 = *(v0 + 184);
  if (*(*(v1 + 16) + 16))
  {
    v4 = *(v0 + 120);
    v3 = *(v0 + 128);
    v5 = *(v0 + 80);
    swift_willThrow();
    swift_errorRetain();

    v2(v4, v5);
    v2(v3, v5);
  }

  else
  {
    v8 = *(v0 + 120);
    v7 = *(v0 + 128);
    v9 = *(v0 + 96);
    v10 = *(v0 + 80);
    (*(v0 + 168))(v9, v8, v10);
    IFDefaultsLib.lastCollectionDate.setter(v9);

    v2(v8, v10);
    v2(v7, v10);
  }

  v6 = *(v0 + 8);

  return v6();
}

unint64_t sub_1000096E4()
{
  result = qword_100025158;
  if (!qword_100025158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025158);
  }

  return result;
}

unint64_t sub_100009790()
{
  result = qword_100025160;
  if (!qword_100025160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025160);
  }

  return result;
}

uint64_t sub_1000097F4()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10000982C(uint64_t a1)
{
  if (a1)
  {
    v2 = v1;
    swift_errorRetain();
    if (qword_100025A70 != -1)
    {
      swift_once();
    }

    v4 = sub_100019F2C();
    sub_100003FD8(v4, qword_100025A78);
    v5 = sub_100019F0C();
    v6 = sub_10001A02C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Error, loadBiomeEvent failed", v7, 2u);
    }

    swift_beginAccess();
    v8 = *(v2 + 16);
    swift_errorRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 16) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_100008AC8(0, v8[2] + 1, 1, v8);
      *(v2 + 16) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_100008AC8((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v8[v11 + 4] = a1;
    *(v2 + 16) = v8;
    swift_endAccess();
  }

  else
  {
    if (qword_100025A70 != -1)
    {
      swift_once();
    }

    v12 = sub_100019F2C();
    sub_100003FD8(v12, qword_100025A78);
    oslog = sub_100019F0C();
    v13 = sub_10001A01C();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v13, "Ingest completed.", v14, 2u);
    }
  }
}

uint64_t sub_100009AA4()
{
  v1 = sub_10001983C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_100009B68(uint64_t a1)
{
  v3 = *(sub_10001983C() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = objc_autoreleasePoolPush();
  sub_1000083A0(v5, a1, v1 + v4);

  __objc_autoreleasePoolPop(v6);
}

unint64_t sub_100009C0C()
{
  result = qword_100025170;
  if (!qword_100025170)
  {
    sub_1000197DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025170);
  }

  return result;
}

uint64_t sub_100009C64(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002594(&qword_100024CD8, qword_10001A8D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100009CD4(uint64_t a1)
{
  v2 = sub_100002594(&qword_100024CD0, &qword_10001A8D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100009D40()
{
  v0 = sub_100019F2C();
  sub_10000449C(v0, qword_100025D90);
  sub_100003FD8(v0, qword_100025D90);
  sub_1000028F8();
  sub_10001A03C();
  return sub_100019F3C();
}

uint64_t sub_100009DD4()
{
  if (qword_100025B90 != -1)
  {
    swift_once();
  }

  v0 = sub_100019F2C();

  return sub_100003FD8(v0, qword_100025D90);
}

uint64_t sub_100009E38@<X0>(uint64_t a1@<X8>)
{
  if (qword_100025B90 != -1)
  {
    swift_once();
  }

  v2 = sub_100019F2C();
  v3 = sub_100003FD8(v2, qword_100025D90);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id sub_100009EE0()
{
  v0 = sub_100019DFC();
  v73 = *(v0 - 8);
  v74 = v0;
  __chkstk_darwin(v0);
  v72 = &v69 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100019DDC();
  v76 = *(v2 - 8);
  v77 = v2;
  __chkstk_darwin(v2);
  v75 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100002594(&qword_100025020, qword_10001AA80);
  v5 = __chkstk_darwin(v4 - 8);
  v80 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v84 = &v69 - v7;
  v8 = sub_100002594(&qword_100024EE0, "r\x1B");
  __chkstk_darwin(v8 - 8);
  v10 = &v69 - v9;
  v11 = sub_10001981C();
  v78 = *(v11 - 8);
  v79 = v11;
  __chkstk_darwin(v11);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100002594(&qword_100024EC8, qword_10001AC30);
  __chkstk_darwin(v14 - 8);
  v16 = &v69 - v15;
  v17 = sub_100019E3C();
  v82 = *(v17 - 8);
  v83 = v17;
  __chkstk_darwin(v17);
  v81 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100002594(&qword_100024ED0, "r\x1B");
  __chkstk_darwin(v19 - 8);
  v21 = &v69 - v20;
  v22 = sub_100002594(&qword_100024E28, qword_10001A970);
  __chkstk_darwin(v22 - 8);
  v24 = &v69 - v23;
  type metadata accessor for IFPlatformTargetConverter();
  sub_1000198AC();
  v25 = sub_100006B74(v24);
  sub_100002D44(v24, &qword_100024E28, qword_10001A970);
  result = 0;
  if ((v25 & 0x100000000) == 0)
  {
    v27 = [objc_allocWithZone(IFPlatformSchemaIFPlatformClientEvent) init];
    if (v27)
    {
      v71 = v27;
      v28 = [objc_allocWithZone(IFPlatformSchemaIFPlatformTargetContext) init];
      if (v28)
      {
        v29 = v28;
        type metadata accessor for IFPlatformClientEventMetadataConverter();
        sub_1000198DC();
        v30 = sub_1000135FC(v21);
        sub_100002D44(v21, &qword_100024ED0, "r\x1B");
        [v71 setEventMetadata:v30];

        sub_1000198FC();
        v31 = sub_1000198EC();
        v32 = *(v31 - 8);
        if ((*(v32 + 48))(v16, 1, v31) == 1)
        {

          sub_100002D44(v16, &qword_100024EC8, qword_10001AC30);
          return v71;
        }

        if ((*(v32 + 88))(v16, v31) != enum case for IntelligenceFlowTelemetry.Objective.pnr(_:))
        {

          (*(v32 + 8))(v16, v31);
          return v71;
        }

        v70 = v29;
        (*(v32 + 96))(v16, v31);
        v38 = v81;
        v37 = v82;
        v39 = v16;
        v40 = v83;
        (*(v82 + 32))(v81, v39, v83);
        sub_100019E1C();
        v41 = v78;
        v42 = v79;
        if ((*(v78 + 48))(v10, 1, v79) == 1)
        {
          sub_100002D44(v10, &qword_100024EE0, "r\x1B");
        }

        else
        {
          (*(v41 + 32))(v13, v10, v42);
          v43 = objc_allocWithZone(SISchemaUUID);
          v44 = v41;
          isa = sub_1000197FC().super.isa;
          v46 = [v43 initWithNSUUID:isa];

          [v70 setTraceId:v46];
          (*(v44 + 8))(v13, v42);
        }

        v47 = v84;
        sub_100019E2C();
        v48 = sub_100019E0C();
        v49 = *(v48 - 8);
        if ((*(v49 + 48))(v47, 1, v48) == 1)
        {
          goto LABEL_20;
        }

        v55 = v80;
        sub_100007CCC(v47, v80);
        v56 = (*(v49 + 88))(v55, v48);
        if (v56 != enum case for IntelligenceFlowPlatformPnR.StateInfo.started(_:))
        {
          if (v56 == enum case for IntelligenceFlowPlatformPnR.StateInfo.ended(_:))
          {
            v59 = v80;
            (*(v49 + 96))(v80, v48);
            v61 = v75;
            v60 = v76;
            v62 = v77;
            (*(v76 + 32))(v75, v59, v77);
            type metadata accessor for IFPlatformTargetEndedConverter();
            v63 = sub_100013D1C();
            v64 = "setEnded:";
          }

          else
          {
            if (v56 != enum case for IntelligenceFlowPlatformPnR.StateInfo.failed(_:))
            {
              (*(v49 + 8))(v80, v48);
LABEL_20:
              if (qword_100025B90 != -1)
              {
                swift_once();
              }

              v50 = sub_100019F2C();
              sub_100003FD8(v50, qword_100025D90);
              v51 = sub_100019F0C();
              v52 = sub_10001A02C();
              if (os_log_type_enabled(v51, v52))
              {
                v53 = swift_slowAlloc();
                *v53 = 0;
                _os_log_impl(&_mh_execute_header, v51, v52, "failed parsing pnr.stateInfo", v53, 2u);
              }

              v54 = v70;
              goto LABEL_33;
            }

            v65 = v80;
            (*(v49 + 96))(v80, v48);
            v61 = v72;
            v60 = v73;
            v62 = v74;
            (*(v73 + 32))(v72, v65, v74);
            type metadata accessor for IFPlatformTargetFailedConverter();
            v63 = sub_1000149E4();
            v64 = "setFailed:";
          }

          v54 = v70;
          [v70 v64];

          (*(v60 + 8))(v61, v62);
LABEL_33:
          sub_100002D44(v47, &qword_100025020, qword_10001AA80);
          v66 = v71;
          [v71 setIfPlatformTargetContext:v54];

          (*(v37 + 8))(v38, v40);
          return v66;
        }

        v57 = [objc_allocWithZone(IFPlatformSchemaIFPlatformTargetStarted) init];
        if (v57)
        {
          v58 = v57;
          [v57 setIfPlatformTarget:v25];
          v54 = v70;
          [v70 setStartedOrChanged:v58];

          (*(v49 + 8))(v80, v48);
          goto LABEL_33;
        }

        if (qword_100025B90 != -1)
        {
          swift_once();
        }

        v67 = sub_100019F2C();
        sub_100003FD8(v67, qword_100025D90);
        sub_1000017F4(0xD000000000000040, 0x800000010001B6F0, v68);

        (*(v37 + 8))(v38, v40);
        (*(v49 + 8))(v80, v48);
        sub_100002D44(v47, &qword_100025020, qword_10001AA80);
      }

      else
      {
        if (qword_100025B90 != -1)
        {
          swift_once();
        }

        v35 = sub_100019F2C();
        sub_100003FD8(v35, qword_100025D90);
        sub_1000017F4(0xD000000000000038, 0x800000010001B6B0, v36);
      }
    }

    else
    {
      if (qword_100025B90 != -1)
      {
        swift_once();
      }

      v33 = sub_100019F2C();
      sub_100003FD8(v33, qword_100025D90);
      sub_1000017F4(0xD000000000000030, 0x800000010001B670, v34);
    }

    return 0;
  }

  return result;
}

uint64_t sub_10000AAAC()
{
  v0 = sub_100019F2C();
  sub_10000449C(v0, qword_100025DA8);
  sub_100003FD8(v0, qword_100025DA8);
  sub_1000133C4(0, &qword_100024CC0, OS_os_log_ptr);
  sub_10001A03C();
  return sub_100019F3C();
}

uint64_t sub_10000AB50()
{
  if (qword_100025BA0 != -1)
  {
    swift_once();
  }

  v0 = sub_100019F2C();

  return sub_100003FD8(v0, qword_100025DA8);
}

uint64_t sub_10000ABB4@<X0>(uint64_t a1@<X8>)
{
  if (qword_100025BA0 != -1)
  {
    swift_once();
  }

  v2 = sub_100019F2C();
  v3 = sub_100003FD8(v2, qword_100025DA8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id sub_10000AC5C()
{
  v0 = sub_100002594(&qword_100024EC8, qword_10001AC30);
  __chkstk_darwin(v0 - 8);
  v2 = &v17 - v1;
  v3 = sub_100019D7C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002594(&qword_100024E28, qword_10001A970);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  sub_1000198AC();
  v10 = sub_10000BE40(v9);
  sub_100002D44(v9, &qword_100024E28, qword_10001A970);
  result = 0;
  if (v10)
  {
    sub_1000198FC();
    v12 = sub_1000198EC();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v2, 1, v12) == 1)
    {
      sub_100002D44(v2, &qword_100024EC8, qword_10001AC30);
    }

    else
    {
      if ((*(v13 + 88))(v2, v12) == enum case for IntelligenceFlowTelemetry.Objective.feedbackLearning(_:))
      {
        (*(v13 + 96))(v2, v12);
        (*(v4 + 32))(v6, v2, v3);
        v16 = sub_100012910();
        (*(v4 + 8))(v6, v3);
        return v16;
      }

      (*(v13 + 8))(v2, v12);
    }

    if (qword_100025BA0 != -1)
    {
      swift_once();
    }

    v14 = sub_100019F2C();
    sub_100003FD8(v14, qword_100025DA8);
    sub_1000017F4(0xD00000000000003DLL, 0x800000010001B780, v15);
    return 0;
  }

  return result;
}

id sub_10000B340()
{
  v0 = [objc_allocWithZone(FLSchemaFLActionEvaluationStarted) init];
  v1 = v0;
  if (v0)
  {
    [v0 setExists:1];
  }

  else
  {
    sub_100013288();
    swift_allocError();
    *v2 = 0xD000000000000021;
    *(v2 + 8) = 0x800000010001B8B0;
    *(v2 + 16) = 0;
    swift_willThrow();
  }

  return v1;
}

id sub_10000B408()
{
  v0 = [objc_allocWithZone(FLSchemaFLActionEvaluationFailed) init];
  v1 = v0;
  if (v0)
  {
    [v0 setExists:1];
  }

  else
  {
    sub_100013288();
    swift_allocError();
    *v2 = 0xD000000000000020;
    *(v2 + 8) = 0x800000010001B8E0;
    *(v2 + 16) = 0;
    swift_willThrow();
  }

  return v1;
}

id sub_10000B570()
{
  v0 = [objc_allocWithZone(FLSchemaFLToolCandidateCategory) init];
  v1 = v0;
  if (v0)
  {
    [v0 setExists:1];
  }

  else
  {
    sub_100013288();
    swift_allocError();
    *v2 = 0xD00000000000001FLL;
    *(v2 + 8) = 0x800000010001B910;
    *(v2 + 16) = 0;
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_10000B648(uint64_t a1)
{
  v2 = sub_100019A0C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for IntelligenceFlowFeedbackLearning.EvaluationSource.unknown(_:))
  {
    return 0;
  }

  if (v6 == enum case for IntelligenceFlowFeedbackLearning.EvaluationSource.actionExecutedSuccessfully(_:))
  {
    return 1;
  }

  if (v6 == enum case for IntelligenceFlowFeedbackLearning.EvaluationSource.actionNotExecuted(_:))
  {
    return 2;
  }

  if (v6 == enum case for IntelligenceFlowFeedbackLearning.EvaluationSource.actionExecutionFailed(_:))
  {
    return 3;
  }

  if (v6 == enum case for IntelligenceFlowFeedbackLearning.EvaluationSource.actionCriticalFailure(_:))
  {
    return 4;
  }

  if (v6 == enum case for IntelligenceFlowFeedbackLearning.EvaluationSource.actionCancelled(_:))
  {
    return 5;
  }

  if (v6 == enum case for IntelligenceFlowFeedbackLearning.EvaluationSource.actionConfirmationYes(_:))
  {
    return 6;
  }

  if (v6 == enum case for IntelligenceFlowFeedbackLearning.EvaluationSource.actionConfirmationNo(_:))
  {
    return 7;
  }

  if (v6 != enum case for IntelligenceFlowFeedbackLearning.EvaluationSource.actionConfirmationAbandon(_:))
  {
    (*(v3 + 8))(v5, v2);
    return 0;
  }

  return 8;
}

id sub_10000B83C()
{
  v0 = [objc_allocWithZone(FLSchemaFLInteractionDonationStarted) init];
  v1 = v0;
  if (v0)
  {
    [v0 setExists:1];
  }

  else
  {
    sub_100013288();
    swift_allocError();
    *v2 = 0xD000000000000024;
    *(v2 + 8) = 0x800000010001B930;
    *(v2 + 16) = 0;
    swift_willThrow();
  }

  return v1;
}

double sub_10000B904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a2;
  v6 = sub_100002594(&qword_100025230, &qword_10001ACA8);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  v9 = sub_1000197DC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000605C(a1, v8, &qword_100025230, &qword_10001ACA8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100002D44(v8, &qword_100025230, &qword_10001ACA8);
    sub_100013288();
    swift_allocError();
    *v13 = v17;
    *(v13 + 8) = a3;
    *(v13 + 16) = 1;
    swift_willThrow();
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    sub_10001979C();
    v3 = v14;
    (*(v10 + 8))(v12, v9);
  }

  return v3;
}

id sub_10000BB2C()
{
  v1 = sub_100002594(&qword_100025238, &qword_10001ACB0);
  __chkstk_darwin(v1 - 8);
  v3 = &v12 - v2;
  v4 = sub_100002594(&qword_100025240, &qword_10001ACB8);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  v7 = [objc_allocWithZone(FLSchemaFLCandidateInteraction) init];
  if (v7)
  {
    sub_100019B2C();
    v8 = sub_10000EF24(v6);
    sub_100002D44(v6, &qword_100025240, &qword_10001ACB8);
    if (v0)
    {
    }

    else
    {
      [v7 setIdentifier:v8];

      sub_100019B3C();
      v10 = sub_1000108E4(v3);
      sub_100002D44(v3, &qword_100025238, &qword_10001ACB0);
      [v7 setAlignment:v10];
    }
  }

  else
  {
    sub_100013288();
    swift_allocError();
    *v9 = 0xD00000000000001ELL;
    *(v9 + 8) = 0x800000010001B960;
    *(v9 + 16) = 0;
    swift_willThrow();
  }

  return v7;
}

char *sub_10000BD1C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000BD3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000BD3C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100002594(&qword_100025348, &qword_10001AE38);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

uint64_t sub_10000BE40(uint64_t a1)
{
  v2 = sub_100002594(&qword_100024E28, qword_10001A970);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - v3;
  v5 = sub_10001988C();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v20 - v10;
  sub_10000605C(a1, v4, &qword_100024E28, qword_10001A970);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100002D44(v4, &qword_100024E28, qword_10001A970);
    if (qword_100025BA0 != -1)
    {
      swift_once();
    }

    v12 = sub_100019F2C();
    sub_100003FD8(v12, qword_100025DA8);
    v13 = sub_100019F0C();
    v14 = sub_10001A01C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "IntelligenceFlow.Telemetry event has no target", v15, 2u);
    }
  }

  else
  {
    v16 = *(v6 + 32);
    v16(v11, v4, v5);
    v16(v9, v11, v5);
    v17 = (*(v6 + 88))(v9, v5);
    if (v17 == enum case for IntelligenceFlowTarget.feedbackLearningEvaluateTask(_:) || v17 == enum case for IntelligenceFlowTarget.feedbackLearningDonateInteraction(_:))
    {
      return 1;
    }

    (*(v6 + 8))(v9, v5);
  }

  return 0;
}

char *sub_10000C110()
{
  v0 = sub_100002594(&qword_100025390, &qword_10001AE70);
  __chkstk_darwin(v0 - 8);
  v2 = &v27 - v1;
  v3 = sub_100002594(&qword_1000252E0, &qword_10001ADE8);
  __chkstk_darwin(v3 - 8);
  v5 = &v27 - v4;
  v6 = sub_100002594(&qword_100024EE0, "r\x1B");
  __chkstk_darwin(v6 - 8);
  v8 = &v27 - v7;
  v9 = sub_10001981C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v28 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100019D5C();
  v12 = sub_100019D4C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v2, 1, v12) == 1)
  {
    v14 = &qword_100025390;
    v15 = &qword_10001AE70;
    v16 = v2;
LABEL_5:
    sub_100002D44(v16, v14, v15);
    (*(v10 + 56))(v8, 1, 1, v9);
LABEL_6:
    sub_100002D44(v8, &qword_100024EE0, "r\x1B");
    sub_100013288();
    swift_allocError();
    *v19 = xmmword_10001AC80;
    *(v19 + 16) = 1;
    swift_willThrow();
    return v8;
  }

  sub_100019D3C();
  (*(v13 + 8))(v2, v12);
  v17 = sub_100019EFC();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v5, 1, v17) == 1)
  {
    v14 = &qword_1000252E0;
    v15 = &qword_10001ADE8;
    v16 = v5;
    goto LABEL_5;
  }

  sub_100019EEC();
  (*(v18 + 8))(v5, v17);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    goto LABEL_6;
  }

  v21 = v28;
  (*(v10 + 32))(v28, v8, v9);
  v22 = [objc_allocWithZone(FLSchemaFLClientEventMetadata) init];
  if (v22)
  {
    v8 = v22;
    v23 = objc_allocWithZone(SISchemaUUID);
    isa = sub_1000197FC().super.isa;
    v25 = [v23 initWithNSUUID:isa];

    [v8 setFlId:v25];
  }

  else
  {
    sub_100013288();
    swift_allocError();
    *v26 = 0xD00000000000001DLL;
    *(v26 + 8) = 0x800000010001BD70;
    *(v26 + 16) = 0;
    swift_willThrow();
  }

  (*(v10 + 8))(v21, v9);
  return v8;
}

id sub_10000C5A8(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = a3;
  v22 = a2;
  v4 = sub_100002594(&qword_1000252E0, &qword_10001ADE8);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_100002594(&qword_100024EE0, "r\x1B");
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - v8;
  v10 = sub_10001981C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000605C(a1, v6, &qword_1000252E0, &qword_10001ADE8);
  v14 = sub_100019EFC();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v6, 1, v14) == 1)
  {
    sub_100002D44(v6, &qword_1000252E0, &qword_10001ADE8);
    (*(v11 + 56))(v9, 1, 1, v10);
  }

  else
  {
    sub_100019EEC();
    (*(v15 + 8))(v6, v14);
    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      (*(v11 + 32))(v13, v9, v10);
      v18 = objc_allocWithZone(SISchemaUUID);
      isa = sub_1000197FC().super.isa;
      v16 = [v18 initWithNSUUID:isa];

      (*(v11 + 8))(v13, v10);
      return v16;
    }
  }

  sub_100002D44(v9, &qword_100024EE0, "r\x1B");
  sub_100013288();
  swift_allocError();
  v16 = v23;
  *v17 = v22;
  *(v17 + 8) = v16;
  *(v17 + 16) = 1;
  swift_willThrow();

  return v16;
}

uint64_t sub_10000C8E0(uint64_t a1)
{
  v2 = sub_100002594(&qword_100025358, &qword_10001AE48);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_100019B5C();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  sub_10000605C(a1, v4, &qword_100025358, &qword_10001AE48);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100002D44(v4, &qword_100025358, &qword_10001AE48);
  }

  else
  {
    v12 = *(v6 + 32);
    v12(v11, v4, v5);
    v12(v9, v11, v5);
    v13 = (*(v6 + 88))(v9, v5);
    if (v13 != enum case for IntelligenceFlowFeedbackLearning.ActionResolutionState.unknown(_:))
    {
      if (v13 == enum case for IntelligenceFlowFeedbackLearning.ActionResolutionState.incomplete(_:))
      {
        return 1;
      }

      if (v13 == enum case for IntelligenceFlowFeedbackLearning.ActionResolutionState.complete(_:))
      {
        return 2;
      }

      (*(v6 + 8))(v9, v5);
    }
  }

  return 0;
}

uint64_t sub_10000CB20(uint64_t a1)
{
  v2 = sub_100002594(&qword_100025320, &qword_10001AE18);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_10001995C();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  sub_10000605C(a1, v4, &qword_100025320, &qword_10001AE18);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100002D44(v4, &qword_100025320, &qword_10001AE18);
  }

  else
  {
    v12 = *(v6 + 32);
    v12(v11, v4, v5);
    v12(v9, v11, v5);
    v13 = (*(v6 + 88))(v9, v5);
    if (v13 != enum case for IntelligenceFlowFeedbackLearning.TaskStatus.unknown(_:))
    {
      if (v13 == enum case for IntelligenceFlowFeedbackLearning.TaskStatus.resultUnknown(_:))
      {
        return 1;
      }

      if (v13 == enum case for IntelligenceFlowFeedbackLearning.TaskStatus.inferredSuccess(_:))
      {
        return 2;
      }

      if (v13 == enum case for IntelligenceFlowFeedbackLearning.TaskStatus.inferredFailureUnknown(_:))
      {
        return 3;
      }

      if (v13 == enum case for IntelligenceFlowFeedbackLearning.TaskStatus.inferredFailureExecutionFailure(_:))
      {
        return 4;
      }

      if (v13 == enum case for IntelligenceFlowFeedbackLearning.TaskStatus.inferredFailureCriticalFailure(_:))
      {
        return 5;
      }

      if (v13 == enum case for IntelligenceFlowFeedbackLearning.TaskStatus.abandoned(_:))
      {
        return 6;
      }

      if (v13 == enum case for IntelligenceFlowFeedbackLearning.TaskStatus.cancelled(_:))
      {
        return 7;
      }

      if (v13 == enum case for IntelligenceFlowFeedbackLearning.TaskStatus.didNotExecute(_:))
      {
        return 8;
      }

      (*(v6 + 8))(v9, v5);
    }
  }

  return 0;
}

uint64_t sub_10000CE08(uint64_t a1)
{
  v2 = sub_100002594(&qword_100025318, &qword_10001AE10);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_100019A1C();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  sub_10000605C(a1, v4, &qword_100025318, &qword_10001AE10);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100002D44(v4, &qword_100025318, &qword_10001AE10);
  }

  else
  {
    v12 = *(v6 + 32);
    v12(v11, v4, v5);
    v12(v9, v11, v5);
    v13 = (*(v6 + 88))(v9, v5);
    if (v13 != enum case for IntelligenceFlowFeedbackLearning.TaskPromptStatus.unknown(_:))
    {
      if (v13 == enum case for IntelligenceFlowFeedbackLearning.TaskPromptStatus.none(_:))
      {
        return 1;
      }

      if (v13 == enum case for IntelligenceFlowFeedbackLearning.TaskPromptStatus.confirmationYes(_:))
      {
        return 2;
      }

      if (v13 == enum case for IntelligenceFlowFeedbackLearning.TaskPromptStatus.confirmationNo(_:))
      {
        return 3;
      }

      if (v13 == enum case for IntelligenceFlowFeedbackLearning.TaskPromptStatus.confirmationAbandon(_:))
      {
        return 4;
      }

      (*(v6 + 8))(v9, v5);
    }
  }

  return 0;
}

id sub_10000D080(uint64_t a1)
{
  v3 = sub_100002594(&qword_100025318, &qword_10001AE10);
  __chkstk_darwin(v3 - 8);
  v5 = &v25 - v4;
  v6 = sub_100002594(&qword_100025350, &qword_10001AE40);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v25 - v10;
  v12 = sub_100002594(&qword_100025320, &qword_10001AE18);
  __chkstk_darwin(v12 - 8);
  v14 = &v25 - v13;
  v15 = [objc_allocWithZone(FLSchemaFLTaskOutcome) init];
  if (v15)
  {
    v27 = v1;
    v26 = a1;
    sub_10000605C(a1, v11, &qword_100025350, &qword_10001AE40);
    v16 = sub_10001998C();
    v17 = *(v16 - 8);
    v18 = *(v17 + 48);
    if (v18(v11, 1, v16) == 1)
    {
      sub_100002D44(v11, &qword_100025350, &qword_10001AE40);
      v19 = sub_10001995C();
      (*(*(v19 - 8) + 56))(v14, 1, 1, v19);
    }

    else
    {
      sub_10001996C();
      (*(v17 + 8))(v11, v16);
    }

    v21 = sub_10000CB20(v14);
    sub_100002D44(v14, &qword_100025320, &qword_10001AE18);
    [v15 setTaskStatus:v21];
    sub_10000605C(v26, v9, &qword_100025350, &qword_10001AE40);
    if (v18(v9, 1, v16) == 1)
    {
      sub_100002D44(v9, &qword_100025350, &qword_10001AE40);
      v22 = sub_100019A1C();
      (*(*(v22 - 8) + 56))(v5, 1, 1, v22);
    }

    else
    {
      sub_10001997C();
      (*(v17 + 8))(v9, v16);
    }

    v23 = sub_10000CE08(v5);
    sub_100002D44(v5, &qword_100025318, &qword_10001AE10);
    [v15 setPromptStatus:v23];
  }

  else
  {
    sub_100013288();
    swift_allocError();
    *v20 = 0xD000000000000015;
    *(v20 + 8) = 0x800000010001BBF0;
    *(v20 + 16) = 0;
    swift_willThrow();
  }

  return v15;
}

uint64_t sub_10000D478(uint64_t a1)
{
  v2 = sub_100002594(&qword_100025310, &qword_10001AE08);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_100019D6C();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  sub_10000605C(a1, v4, &qword_100025310, &qword_10001AE08);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100002D44(v4, &qword_100025310, &qword_10001AE08);
  }

  else
  {
    v12 = *(v6 + 32);
    v12(v11, v4, v5);
    v12(v9, v11, v5);
    v13 = (*(v6 + 88))(v9, v5);
    if (v13 != enum case for IntelligenceFlowFeedbackLearning.Evaluator.unknown(_:))
    {
      if (v13 == enum case for IntelligenceFlowFeedbackLearning.Evaluator.actionPrompt(_:))
      {
        return 1;
      }

      if (v13 == enum case for IntelligenceFlowFeedbackLearning.Evaluator.fixed(_:))
      {
        return 2;
      }

      if (v13 == enum case for IntelligenceFlowFeedbackLearning.Evaluator.taskCompletion(_:))
      {
        return 3;
      }

      if (v13 == enum case for IntelligenceFlowFeedbackLearning.Evaluator.majorityMediator(_:))
      {
        return 4;
      }

      if (v13 == enum case for IntelligenceFlowFeedbackLearning.Evaluator.waterfallMediator(_:))
      {
        return 5;
      }

      (*(v6 + 8))(v9, v5);
    }
  }

  return 0;
}

uint64_t sub_10000D70C(uint64_t a1)
{
  v2 = sub_100002594(&qword_100025308, &qword_10001AE00);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_1000199AC();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  sub_10000605C(a1, v4, &qword_100025308, &qword_10001AE00);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100002D44(v4, &qword_100025308, &qword_10001AE00);
  }

  else
  {
    v12 = *(v6 + 32);
    v12(v11, v4, v5);
    v12(v9, v11, v5);
    v13 = (*(v6 + 88))(v9, v5);
    if (v13 != enum case for IntelligenceFlowFeedbackLearning.EvaluationVote.unknown(_:))
    {
      if (v13 == enum case for IntelligenceFlowFeedbackLearning.EvaluationVote.abstain(_:))
      {
        return 1;
      }

      if (v13 == enum case for IntelligenceFlowFeedbackLearning.EvaluationVote.success(_:))
      {
        return 2;
      }

      if (v13 == enum case for IntelligenceFlowFeedbackLearning.EvaluationVote.failure(_:))
      {
        return 3;
      }

      (*(v6 + 8))(v9, v5);
    }
  }

  return 0;
}

id sub_10000D968()
{
  v45 = sub_100019A0C();
  v1 = *(v45 - 8);
  v2 = __chkstk_darwin(v45);
  v54 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v53 = &v35 - v4;
  v5 = sub_100002594(&qword_100025308, &qword_10001AE00);
  __chkstk_darwin(v5 - 8);
  v7 = &v35 - v6;
  v8 = sub_100002594(&qword_100025310, &qword_10001AE08);
  __chkstk_darwin(v8 - 8);
  v10 = &v35 - v9;
  v11 = [objc_allocWithZone(FLSchemaFLTaskEvaluationNode) init];
  if (v11)
  {
    v44 = v0;
    sub_100019A8C();
    v12 = sub_10000D478(v10);
    sub_100002D44(v10, &qword_100025310, &qword_10001AE08);
    [v11 setEvaluator:v12];
    sub_100019A6C();
    v13 = sub_10000D70C(v7);
    sub_100002D44(v7, &qword_100025308, &qword_10001AE00);
    v43 = v11;
    [v11 setResult:v13];
    v14 = sub_100019A7C();
    v15 = *(v14 + 16);
    if (v15)
    {
      v55 = &_swiftEmptyArrayStorage;
      sub_10000BD1C(0, v15, 0);
      v17 = *(v1 + 16);
      v16 = v1 + 16;
      v18 = v55;
      v19 = (*(v16 + 64) + 32) & ~*(v16 + 64);
      v41 = v14;
      v20 = v14 + v19;
      v50 = *(v16 + 56);
      v51 = v17;
      v21 = (v16 + 16);
      v22 = (v16 + 72);
      v48 = enum case for IntelligenceFlowFeedbackLearning.EvaluationSource.actionExecutedSuccessfully(_:);
      v49 = enum case for IntelligenceFlowFeedbackLearning.EvaluationSource.unknown(_:);
      v46 = enum case for IntelligenceFlowFeedbackLearning.EvaluationSource.actionExecutionFailed(_:);
      v47 = enum case for IntelligenceFlowFeedbackLearning.EvaluationSource.actionNotExecuted(_:);
      v42 = enum case for IntelligenceFlowFeedbackLearning.EvaluationSource.actionCriticalFailure(_:);
      v40 = enum case for IntelligenceFlowFeedbackLearning.EvaluationSource.actionCancelled(_:);
      v38 = enum case for IntelligenceFlowFeedbackLearning.EvaluationSource.actionConfirmationNo(_:);
      v39 = enum case for IntelligenceFlowFeedbackLearning.EvaluationSource.actionConfirmationYes(_:);
      v52 = v16;
      v36 = (v16 - 8);
      v37 = enum case for IntelligenceFlowFeedbackLearning.EvaluationSource.actionConfirmationAbandon(_:);
      v23 = v45;
      while (1)
      {
        v24 = v53;
        v51(v53, v20, v23);
        v25 = v54;
        (*v21)(v54, v24, v23);
        v26 = (*v22)(v25, v23);
        if (v26 != v49)
        {
          if (v26 == v48)
          {
            v27 = 1;
            goto LABEL_22;
          }

          if (v26 == v47)
          {
            v27 = 2;
            goto LABEL_22;
          }

          if (v26 == v46)
          {
            v27 = 3;
            goto LABEL_22;
          }

          if (v26 == v42)
          {
            v27 = 4;
            goto LABEL_22;
          }

          if (v26 == v40)
          {
            v27 = 5;
            goto LABEL_22;
          }

          if (v26 == v39)
          {
            v27 = 6;
            goto LABEL_22;
          }

          if (v26 == v38)
          {
            v27 = 7;
            goto LABEL_22;
          }

          if (v26 == v37)
          {
            v27 = 8;
            goto LABEL_22;
          }

          (*v36)(v54, v23);
        }

        v27 = 0;
LABEL_22:
        v55 = v18;
        v29 = v18[2];
        v28 = v18[3];
        if (v29 >= v28 >> 1)
        {
          sub_10000BD1C((v28 > 1), v29 + 1, 1);
          v23 = v45;
          v18 = v55;
        }

        v18[2] = v29 + 1;
        *(v18 + v29 + 8) = v27;
        v20 += v50;
        if (!--v15)
        {

          goto LABEL_29;
        }
      }
    }

    v18 = &_swiftEmptyArrayStorage;
LABEL_29:
    v31 = v18[2];
    v11 = v43;
    if (v31)
    {
      v55 = &_swiftEmptyArrayStorage;
      sub_10001A0CC();
      v32 = 32;
      do
      {
        sub_10001A19C();
        sub_10001A0AC();
        sub_10001A0DC();
        sub_10001A0EC();
        sub_10001A0BC();
        v32 += 4;
        --v31;
      }

      while (v31);
    }

    sub_1000133C4(0, &qword_100025340, NSNumber_ptr);
    isa = sub_100019FDC().super.isa;

    [v11 setSources:isa];
  }

  else
  {
    sub_100013288();
    swift_allocError();
    *v30 = 0xD00000000000001CLL;
    *(v30 + 8) = 0x800000010001BBD0;
    *(v30 + 16) = 0;
    swift_willThrow();
  }

  return v11;
}

id sub_10000DF44(uint64_t a1)
{
  v3 = sub_100019A9C();
  v44 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002594(&qword_100025350, &qword_10001AE40);
  __chkstk_darwin(v6 - 8);
  v8 = &v39 - v7;
  v9 = sub_100002594(&qword_100025368, &qword_10001AE58);
  v10 = __chkstk_darwin(v9 - 8);
  v39 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v39 - v13;
  __chkstk_darwin(v12);
  v16 = &v39 - v15;
  v17 = sub_100002594(&qword_100025358, &qword_10001AE48);
  __chkstk_darwin(v17 - 8);
  v19 = &v39 - v18;
  v43 = [objc_allocWithZone(FLSchemaFLTaskEvaluation) init];
  if (!v43)
  {
    sub_100013288();
    swift_allocError();
    *v24 = 0xD000000000000018;
    *(v24 + 8) = 0x800000010001BC30;
    *(v24 + 16) = 0;
    swift_willThrow();
    return v43;
  }

  v40 = v1;
  v41 = a1;
  v42 = v3;
  sub_10000605C(a1, v16, &qword_100025368, &qword_10001AE58);
  v20 = sub_1000199EC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  if (v22(v16, 1, v20) == 1)
  {
    sub_100002D44(v16, &qword_100025368, &qword_10001AE58);
    v23 = sub_100019B5C();
    (*(*(v23 - 8) + 56))(v19, 1, 1, v23);
  }

  else
  {
    sub_1000199DC();
    (*(v21 + 8))(v16, v20);
  }

  v26 = sub_10000C8E0(v19);
  sub_100002D44(v19, &qword_100025358, &qword_10001AE48);
  v25 = v43;
  [v43 setActionResolutionState:v26];
  sub_10000605C(v41, v14, &qword_100025368, &qword_10001AE58);
  if (v22(v14, 1, v20) == 1)
  {
    sub_100002D44(v14, &qword_100025368, &qword_10001AE58);
    v27 = sub_10001998C();
    (*(*(v27 - 8) + 56))(v8, 1, 1, v27);
  }

  else
  {
    sub_1000199BC();
    (*(v21 + 8))(v14, v20);
  }

  v28 = v40;
  v29 = sub_10000D080(v8);
  sub_100002D44(v8, &qword_100025350, &qword_10001AE40);
  if (v28)
  {

    return v25;
  }

  [v25 setTaskOutcome:v29];

  v30 = v39;
  sub_10000605C(v41, v39, &qword_100025368, &qword_10001AE58);
  if (v22(v30, 1, v20) == 1)
  {
    sub_100002D44(v30, &qword_100025368, &qword_10001AE58);
    isa = 0;
LABEL_20:
    [v25 setEvaluationNodes:isa];

    return v25;
  }

  v32 = sub_1000199CC();
  (*(v21 + 8))(v30, v20);
  v33 = v32;
  v34 = *(v32 + 16);
  if (!v34)
  {

LABEL_19:
    sub_1000133C4(0, &qword_100025370, FLSchemaFLTaskEvaluationNode_ptr);
    isa = sub_100019FDC().super.isa;

    goto LABEL_20;
  }

  v45 = &_swiftEmptyArrayStorage;
  result = sub_10001A0CC();
  v36 = 0;
  v41 = v33 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
  v40 = v44 + 16;
  v37 = (v44 + 8);
  while (v36 < *(v33 + 16))
  {
    v38 = v42;
    (*(v44 + 16))(v5, v41 + *(v44 + 72) * v36, v42);
    sub_10000D968();
    ++v36;
    (*v37)(v5, v38);
    sub_10001A0AC();
    sub_10001A0DC();
    sub_10001A0EC();
    result = sub_10001A0BC();
    if (v34 == v36)
    {

      v25 = v43;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10000E61C(uint64_t a1)
{
  v2 = sub_100002594(&qword_100025360, &qword_10001AE50);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_10001999C();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  sub_10000605C(a1, v4, &qword_100025360, &qword_10001AE50);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100002D44(v4, &qword_100025360, &qword_10001AE50);
  }

  else
  {
    v12 = *(v6 + 32);
    v12(v11, v4, v5);
    v12(v9, v11, v5);
    v13 = (*(v6 + 88))(v9, v5);
    if (v13 != enum case for IntelligenceFlowFeedbackLearning.EvaluationType.unknown(_:))
    {
      if (v13 == enum case for IntelligenceFlowFeedbackLearning.EvaluationType.fastEvaluator(_:))
      {
        return 1;
      }

      if (v13 == enum case for IntelligenceFlowFeedbackLearning.EvaluationType.fullEvaluator(_:))
      {
        return 2;
      }

      (*(v6 + 8))(v9, v5);
    }
  }

  return 0;
}

id sub_10000E85C()
{
  v1 = sub_100002594(&qword_1000252E0, &qword_10001ADE8);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = [objc_allocWithZone(FLSchemaFLParameterCandidateCategory) init];
  if (v4)
  {
    sub_100019B7C();
    v5 = sub_10000C5A8(v3, 0x6574656D61726170, 0xEF6449656D614E72);
    sub_100002D44(v3, &qword_1000252E0, &qword_10001ADE8);
    if (v0)
    {
    }

    else
    {
      [v4 setParameterNameId:v5];
    }
  }

  else
  {
    sub_100013288();
    swift_allocError();
    *v6 = 0xD000000000000024;
    *(v6 + 8) = 0x800000010001BB60;
    *(v6 + 16) = 0;
    swift_willThrow();
  }

  return v4;
}

void *sub_10000E9C4(uint64_t a1)
{
  v2 = sub_100019B8C();
  v33 = *(v2 - 8);
  v34 = v2;
  __chkstk_darwin(v2);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100002594(&qword_100025338, &qword_10001AE30);
  __chkstk_darwin(v5 - 8);
  v7 = &v33 - v6;
  v8 = sub_100019A5C();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v33 - v13;
  v15 = [objc_allocWithZone(FLSchemaFLCandidateCategory) init];
  if (v15)
  {
    sub_10000605C(a1, v7, &qword_100025338, &qword_10001AE30);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_100002D44(v7, &qword_100025338, &qword_10001AE30);
      sub_100013288();
      swift_allocError();
      *v16 = 0xD000000000000011;
      *(v16 + 8) = 0x800000010001BBB0;
      *(v16 + 16) = 1;
      swift_willThrow();
      v17 = v15;
    }

    else
    {
      (*(v9 + 32))(v14, v7, v8);
      (*(v9 + 16))(v12, v14, v8);
      v19 = (*(v9 + 88))(v12, v8);
      if (v19 == enum case for IntelligenceFlowFeedbackLearning.CandidateCategory.tool(_:))
      {
        v20 = *(v9 + 8);
        v20(v12, v8);
        v21 = [objc_allocWithZone(FLSchemaFLToolCandidateCategory) init];
        v17 = v15;
        if (v21)
        {
          v22 = v21;
          [v21 setExists:1];
          [v15 setTool:v22];
        }

        else
        {
          sub_100013288();
          swift_allocError();
          *v30 = 0xD00000000000001FLL;
          *(v30 + 8) = 0x800000010001B910;
          *(v30 + 16) = 0;
          swift_willThrow();
        }

        v20(v14, v8);
      }

      else
      {
        v17 = v15;
        v23 = v35;
        if (v19 == enum case for IntelligenceFlowFeedbackLearning.CandidateCategory.parameter(_:))
        {
          (*(v9 + 96))(v12, v8);
          v24 = v33;
          v25 = v12;
          v26 = v34;
          (*(v33 + 32))(v4, v25, v34);
          v27 = sub_10000E85C();
          if (v23)
          {
          }

          else
          {
            v31 = v27;
            [v17 setParameter:v27];
          }

          (*(v24 + 8))(v4, v26);
          (*(v9 + 8))(v14, v8);
        }

        else
        {
          sub_100013288();
          swift_allocError();
          *v28 = 0xD000000000000011;
          *(v28 + 8) = 0x800000010001BBB0;
          *(v28 + 16) = 2;
          swift_willThrow();

          v29 = *(v9 + 8);
          v29(v14, v8);
          v29(v12, v8);
        }
      }
    }
  }

  else
  {
    sub_100013288();
    swift_allocError();
    *v18 = 0xD00000000000001BLL;
    *(v18 + 8) = 0x800000010001BB90;
    *(v18 + 16) = 0;
    swift_willThrow();
    return 0;
  }

  return v17;
}

uint64_t sub_10000EF24(uint64_t a1)
{
  v3 = sub_100002594(&qword_1000252E0, &qword_10001ADE8);
  __chkstk_darwin(v3 - 8);
  v5 = v20 - v4;
  v6 = sub_100002594(&qword_100025240, &qword_10001ACB8);
  __chkstk_darwin(v6 - 8);
  v8 = v20 - v7;
  v9 = sub_100019B0C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000605C(a1, v8, &qword_100025240, &qword_10001ACB8);
  v13 = 1;
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100002D44(v8, &qword_100025240, &qword_10001ACB8);
    sub_100013288();
    swift_allocError();
    *v14 = 0xD000000000000013;
    *(v14 + 8) = 0x800000010001B9E0;
    *(v14 + 16) = 1;
    swift_willThrow();
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v15 = [objc_allocWithZone(FLSchemaFLCandidateIdentifier) init];
    if (v15)
    {
      v13 = v15;
      sub_100019AFC();
      v16 = sub_10000C5A8(v5, 0xD00000000000001FLL, 0x800000010001BA20);
      if (!v1)
      {
        v18 = v16;
        sub_100002D44(v5, &qword_1000252E0, &qword_10001ADE8);
        [v13 setCandidateId:v18];

        (*(v10 + 8))(v12, v9);
        return v13;
      }

      sub_100002D44(v5, &qword_1000252E0, &qword_10001ADE8);
    }

    else
    {
      sub_100013288();
      swift_allocError();
      *v17 = 0xD00000000000001DLL;
      *(v17 + 8) = 0x800000010001BA00;
      *(v17 + 16) = 0;
      swift_willThrow();
    }

    (*(v10 + 8))(v12, v9);
  }

  return v13;
}

uint64_t sub_10000F274(uint64_t a1)
{
  v2 = sub_100002594(&qword_100025330, &qword_10001AE28);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_100019B1C();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  sub_10000605C(a1, v4, &qword_100025330, &qword_10001AE28);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100002D44(v4, &qword_100025330, &qword_10001AE28);
  }

  else
  {
    v12 = *(v6 + 32);
    v12(v11, v4, v5);
    v12(v9, v11, v5);
    v13 = (*(v6 + 88))(v9, v5);
    if (v13 != enum case for IntelligenceFlowFeedbackLearning.CandidateResolution.unknown(_:))
    {
      if (v13 == enum case for IntelligenceFlowFeedbackLearning.CandidateResolution.unresolved(_:))
      {
        return 1;
      }

      if (v13 == enum case for IntelligenceFlowFeedbackLearning.CandidateResolution.resolvedNotSelected(_:))
      {
        return 2;
      }

      if (v13 == enum case for IntelligenceFlowFeedbackLearning.CandidateResolution.resolvedSelected(_:))
      {
        return 3;
      }

      if (v13 == enum case for IntelligenceFlowFeedbackLearning.CandidateResolution.executed(_:))
      {
        return 4;
      }

      (*(v6 + 8))(v9, v5);
    }
  }

  return 0;
}

uint64_t sub_10000F4EC(uint64_t a1)
{
  v2 = sub_100002594(&qword_100025328, &qword_10001AE20);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_1000199FC();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  sub_10000605C(a1, v4, &qword_100025328, &qword_10001AE20);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100002D44(v4, &qword_100025328, &qword_10001AE20);
  }

  else
  {
    v12 = *(v6 + 32);
    v12(v11, v4, v5);
    v12(v9, v11, v5);
    v13 = (*(v6 + 88))(v9, v5);
    if (v13 != enum case for IntelligenceFlowFeedbackLearning.CandidateOutcome.unknown(_:))
    {
      if (v13 == enum case for IntelligenceFlowFeedbackLearning.CandidateOutcome.confirmationAbandoned(_:))
      {
        return 1;
      }

      if (v13 == enum case for IntelligenceFlowFeedbackLearning.CandidateOutcome.confirmationConfirmed(_:))
      {
        return 2;
      }

      if (v13 == enum case for IntelligenceFlowFeedbackLearning.CandidateOutcome.confirmationRejected(_:))
      {
        return 3;
      }

      if (v13 == enum case for IntelligenceFlowFeedbackLearning.CandidateOutcome.disambiguationAbandoned(_:))
      {
        return 4;
      }

      if (v13 == enum case for IntelligenceFlowFeedbackLearning.CandidateOutcome.disambiguationCandidateSelected(_:))
      {
        return 5;
      }

      if (v13 == enum case for IntelligenceFlowFeedbackLearning.CandidateOutcome.disambiguationOtherCandidateSelected(_:))
      {
        return 6;
      }

      if (v13 == enum case for IntelligenceFlowFeedbackLearning.CandidateOutcome.disambiguationRejected(_:))
      {
        return 7;
      }

      if (v13 == enum case for IntelligenceFlowFeedbackLearning.CandidateOutcome.inferredSuccess(_:))
      {
        return 8;
      }

      if (v13 == enum case for IntelligenceFlowFeedbackLearning.CandidateOutcome.inferredFailure(_:))
      {
        return 9;
      }

      if (v13 == enum case for IntelligenceFlowFeedbackLearning.CandidateOutcome.unableToDeriveOutcome(_:))
      {
        return 10;
      }

      if (v13 == enum case for IntelligenceFlowFeedbackLearning.CandidateOutcome.inferredFromTask(_:))
      {
        return 11;
      }

      (*(v6 + 8))(v9, v5);
    }
  }

  return 0;
}

id sub_10000F828()
{
  v1 = sub_100002594(&qword_100025328, &qword_10001AE20);
  __chkstk_darwin(v1 - 8);
  v3 = &v20 - v2;
  v4 = sub_100002594(&qword_100025330, &qword_10001AE28);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v7 = sub_100002594(&qword_100025240, &qword_10001ACB8);
  __chkstk_darwin(v7 - 8);
  v9 = &v20 - v8;
  v10 = sub_100002594(&qword_100025338, &qword_10001AE30);
  __chkstk_darwin(v10 - 8);
  v12 = &v20 - v11;
  v13 = [objc_allocWithZone(FLSchemaFLCandidateEvaluation) init];
  if (v13)
  {
    sub_100019ABC();
    v14 = sub_10000E9C4(v12);
    sub_100002D44(v12, &qword_100025338, &qword_10001AE30);
    if (v0)
    {
    }

    else
    {
      [v13 setCandidateCategory:v14];

      sub_100019ACC();
      v15 = sub_10000EF24(v9);
      sub_100002D44(v9, &qword_100025240, &qword_10001ACB8);
      [v13 setCandidateIdentifier:v15];

      sub_100019AAC();
      v18 = sub_10000F274(v6);
      sub_100002D44(v6, &qword_100025330, &qword_10001AE28);
      [v13 setResolution:v18];
      sub_100019ADC();
      v19 = sub_10000F4EC(v3);
      sub_100002D44(v3, &qword_100025328, &qword_10001AE20);
      [v13 setOutcome:v19];
    }
  }

  else
  {
    sub_100013288();
    swift_allocError();
    *v16 = 0xD00000000000001DLL;
    *(v16 + 8) = 0x800000010001BC10;
    *(v16 + 16) = 0;
    swift_willThrow();
  }

  return v13;
}

id sub_10000FB34(uint64_t a1)
{
  v3 = sub_100019AEC();
  v34 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002594(&qword_100025360, &qword_10001AE50);
  __chkstk_darwin(v6 - 8);
  v8 = &v27 - v7;
  v9 = sub_100002594(&qword_100025368, &qword_10001AE58);
  __chkstk_darwin(v9 - 8);
  v11 = &v27 - v10;
  v12 = sub_100002594(&qword_1000252E0, &qword_10001ADE8);
  __chkstk_darwin(v12 - 8);
  v14 = &v27 - v13;
  v15 = [objc_allocWithZone(FLSchemaFLActionEvaluationEnded) init];
  if (!v15)
  {
    sub_100013288();
    swift_allocError();
    *v23 = 0xD00000000000001FLL;
    *(v23 + 8) = 0x800000010001BC50;
    *(v23 + 16) = 0;
    swift_willThrow();
    return v15;
  }

  sub_100019BCC();
  v16 = sub_10000C5A8(v14, 0xD000000000000021, 0x800000010001BC70);
  sub_100002D44(v14, &qword_1000252E0, &qword_10001ADE8);
  if (v1)
  {
LABEL_11:

    return v15;
  }

  [v15 setIfSessionId:v16];

  v17 = sub_100019BEC();
  if ((v17 & 0x100000000) != 0)
  {
    sub_100013288();
    swift_allocError();
    *v24 = 0xD000000000000027;
    *(v24 + 8) = 0x800000010001BCA0;
    *(v24 + 16) = 1;
    swift_willThrow();
    goto LABEL_11;
  }

  [v15 setActionStatementId:v17];
  sub_100019BBC();
  v18 = sub_10000DF44(v11);
  sub_100002D44(v11, &qword_100025368, &qword_10001AE58);
  [v15 setTaskEvaluation:v18];

  v19 = sub_100019BFC();
  v20 = *(v19 + 16);
  if (!v20)
  {

LABEL_14:
    sub_1000133C4(0, &qword_100025378, FLSchemaFLCandidateEvaluation_ptr);
    isa = sub_100019FDC().super.isa;

    [v15 setCandidateEvaluations:isa];

    sub_100019BDC();
    v26 = sub_10000E61C(v8);
    sub_100002D44(v8, &qword_100025360, &qword_10001AE50);
    [v15 setEvaluationType:v26];
    return v15;
  }

  v29 = a1;
  v30 = v15;
  v28 = v8;
  v35 = &_swiftEmptyArrayStorage;
  result = sub_10001A0CC();
  v22 = 0;
  v32 = v19 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
  v31 = v34 + 16;
  v33 = (v34 + 8);
  while (v22 < *(v19 + 16))
  {
    (*(v34 + 16))(v5, v32 + *(v34 + 72) * v22, v3);
    sub_10000F828();
    ++v22;
    (*v33)(v5, v3);
    sub_10001A0AC();
    sub_10001A0DC();
    sub_10001A0EC();
    result = sub_10001A0BC();
    if (v20 == v22)
    {

      v8 = v28;
      v15 = v30;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100010078()
{
  v1 = sub_100019C0C();
  v32 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100002594(&qword_100025388, &qword_10001AE68);
  __chkstk_darwin(v4 - 8);
  v6 = &v31 - v5;
  v7 = sub_100019C1C();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v31 - v12;
  sub_100019C2C();
  v14 = 1;
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    (*(v8 + 32))(v13, v6, v7);
    v16 = [objc_allocWithZone(FLSchemaFLActionEvaluationContext) init];
    if (v16)
    {
      v14 = v16;
      (*(v8 + 16))(v11, v13, v7);
      v17 = (*(v8 + 88))(v11, v7);
      if (v17 == enum case for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.StateInfo.started(_:))
      {
        v18 = *(v8 + 8);
        v18(v11, v7);
        v19 = [objc_allocWithZone(FLSchemaFLActionEvaluationStarted) init];
        if (v19)
        {
          v20 = v19;
          [v19 setExists:1];
          [v14 setStartedOrChanged:v20];
LABEL_7:

          v18(v13, v7);
          return v14;
        }

        v25 = 0x800000010001B8B0;
        sub_100013288();
        swift_allocError();
        v27 = 0xD000000000000021;
        goto LABEL_17;
      }

      if (v17 != enum case for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.StateInfo.ended(_:))
      {
        if (v17 != enum case for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.StateInfo.failed(_:))
        {
          sub_100013288();
          swift_allocError();
          *v28 = 0xD00000000000001ALL;
          *(v28 + 8) = 0x800000010001BD20;
          *(v28 + 16) = 2;
          swift_willThrow();

          v14 = *(v8 + 8);
          (v14)(v13, v7);
          (v14)(v11, v7);
          return v14;
        }

        v18 = *(v8 + 8);
        v18(v11, v7);
        v24 = [objc_allocWithZone(FLSchemaFLActionEvaluationFailed) init];
        if (v24)
        {
          v20 = v24;
          [v24 setExists:1];
          [v14 setFailed:v20];
          goto LABEL_7;
        }

        v25 = 0x800000010001B8E0;
        sub_100013288();
        swift_allocError();
        v27 = 0xD000000000000020;
LABEL_17:
        *v26 = v27;
        *(v26 + 8) = v25;
        *(v26 + 16) = 0;
        swift_willThrow();

        v18(v13, v7);
        return v14;
      }

      (*(v8 + 96))(v11, v7);
      v22 = v32;
      (*(v32 + 32))(v3, v11, v1);
      v23 = sub_10000FB34(v3);
      if (!v0)
      {
        v30 = v23;
        [v14 setEnded:v23];

        (*(v22 + 8))(v3, v1);
        (*(v8 + 8))(v13, v7);
        return v14;
      }

      (*(v22 + 8))(v3, v1);
    }

    else
    {
      v14 = 0x800000010001BD40;
      sub_100013288();
      swift_allocError();
      *v21 = 0xD000000000000021;
      *(v21 + 8) = 0x800000010001BD40;
      *(v21 + 16) = 0;
      swift_willThrow();
    }

    (*(v8 + 8))(v13, v7);
    return v14;
  }

  sub_100002D44(v6, &qword_100025388, &qword_10001AE68);
  sub_100013288();
  swift_allocError();
  *v15 = 0xD00000000000001ALL;
  *(v15 + 8) = 0x800000010001BD20;
  *(v15 + 16) = 1;
  swift_willThrow();
  return v14;
}

uint64_t sub_100010688(uint64_t a1)
{
  v2 = sub_100002594(&qword_1000252F8, &qword_10001ADF8);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_100019D2C();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  sub_10000605C(a1, v4, &qword_1000252F8, &qword_10001ADF8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100002D44(v4, &qword_1000252F8, &qword_10001ADF8);
  }

  else
  {
    v12 = *(v6 + 32);
    v12(v11, v4, v5);
    v12(v9, v11, v5);
    v13 = (*(v6 + 88))(v9, v5);
    if (v13 != enum case for IntelligenceFlowFeedbackLearning.Trigger.unknown(_:))
    {
      if (v13 == enum case for IntelligenceFlowFeedbackLearning.Trigger.triggerUnknown(_:))
      {
        return 1;
      }

      if (v13 == enum case for IntelligenceFlowFeedbackLearning.Trigger.realtimeSession(_:))
      {
        return 2;
      }

      if (v13 == enum case for IntelligenceFlowFeedbackLearning.Trigger.endOfSession(_:))
      {
        return 3;
      }

      (*(v6 + 8))(v9, v5);
    }
  }

  return 0;
}

uint64_t sub_1000108E4(uint64_t a1)
{
  v2 = sub_100002594(&qword_100025238, &qword_10001ACB0);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_100019B6C();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  sub_10000605C(a1, v4, &qword_100025238, &qword_10001ACB0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100002D44(v4, &qword_100025238, &qword_10001ACB0);
  }

  else
  {
    v12 = *(v6 + 32);
    v12(v11, v4, v5);
    v12(v9, v11, v5);
    v13 = (*(v6 + 88))(v9, v5);
    if (v13 != enum case for IntelligenceFlowFeedbackLearning.UserAlignmentCategory.unknown(_:))
    {
      if (v13 == enum case for IntelligenceFlowFeedbackLearning.UserAlignmentCategory.categoryUnknown(_:))
      {
        return 1;
      }

      if (v13 == enum case for IntelligenceFlowFeedbackLearning.UserAlignmentCategory.explicitlyRejected(_:))
      {
        return 2;
      }

      if (v13 == enum case for IntelligenceFlowFeedbackLearning.UserAlignmentCategory.implicitlyRejected(_:))
      {
        return 3;
      }

      if (v13 == enum case for IntelligenceFlowFeedbackLearning.UserAlignmentCategory.executed(_:))
      {
        return 4;
      }

      if (v13 == enum case for IntelligenceFlowFeedbackLearning.UserAlignmentCategory.implicitlyAccepted(_:))
      {
        return 5;
      }

      if (v13 == enum case for IntelligenceFlowFeedbackLearning.UserAlignmentCategory.explicitlyAccepted(_:))
      {
        return 6;
      }

      if (v13 == enum case for IntelligenceFlowFeedbackLearning.UserAlignmentCategory.transientDeviceConfigurationFailure(_:))
      {
        return 7;
      }

      if (v13 == enum case for IntelligenceFlowFeedbackLearning.UserAlignmentCategory.notSelected(_:))
      {
        return 8;
      }

      (*(v6 + 8))(v9, v5);
    }
  }

  return 0;
}

void *sub_100010BCC(uint64_t a1)
{
  v2 = sub_100002594(&qword_100024EE0, "r\x1B");
  __chkstk_darwin(v2 - 8);
  v92 = &v73 - v3;
  v91 = sub_10001981C();
  v77 = *(v91 - 8);
  __chkstk_darwin(v91);
  v90 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100002594(&qword_1000252E0, &qword_10001ADE8);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v97 = &v73 - v9;
  v10 = sub_100002594(&qword_100025240, &qword_10001ACB8);
  v11 = __chkstk_darwin(v10 - 8);
  v93 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v99 = &v73 - v13;
  v14 = sub_100002594(&qword_100025238, &qword_10001ACB0);
  __chkstk_darwin(v14 - 8);
  v76 = &v73 - v15;
  v100 = sub_100019B0C();
  v95 = *(v100 - 8);
  v16 = __chkstk_darwin(v100);
  v18 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v98 = &v73 - v19;
  v20 = sub_100002594(&qword_1000252E8, &qword_10001ADF0);
  __chkstk_darwin(v20 - 8);
  v22 = &v73 - v21;
  v23 = sub_100019A4C();
  __chkstk_darwin(v23);
  v25 = &v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1;
  v28 = v27;
  v30 = v29;
  sub_10000605C(v26, v22, &qword_1000252E8, &qword_10001ADF0);
  if ((*(v28 + 48))(v22, 1, v30) == 1)
  {
    sub_100002D44(v22, &qword_1000252E8, &qword_10001ADF0);
    return 0;
  }

  else
  {
    (*(v28 + 32))(v25, v22, v30);
    v75 = [objc_allocWithZone(FLSchemaFLTupleInteraction) init];
    if (v75)
    {
      v74 = v28;
      v73 = v30;
      result = sub_100019A2C();
      v32 = &_swiftEmptyArrayStorage;
      v101 = &_swiftEmptyArrayStorage;
      v83 = result[2];
      if (v83)
      {
        v33 = 0;
        v86 = v95 + 56;
        v87 = v95 + 16;
        v85 = v95 + 48;
        v82 = (v95 + 32);
        v81 = (v77 + 48);
        v80 = (v77 + 32);
        v79 = (v77 + 8);
        v88 = result;
        v89 = (v95 + 8);
        v96 = v25;
        v78 = v8;
        while (v33 < result[2])
        {
          v84 = v32;
          v34 = v95;
          v35 = result + ((*(v34 + 80) + 32) & ~*(v34 + 80));
          v36 = *(v95 + 72);
          v94 = v33;
          v37 = &v35[v36 * v33];
          v38 = *(v95 + 16);
          v39 = v98;
          v40 = v100;
          v38(v98, v37, v100);
          v41 = v99;
          v38(v99, v39, v40);
          (*(v34 + 56))(v41, 0, 1, v40);
          v42 = v93;
          sub_10000605C(v41, v93, &qword_100025240, &qword_10001ACB8);
          if ((*(v34 + 48))(v42, 1, v40) == 1)
          {

            sub_100002D44(v42, &qword_100025240, &qword_10001ACB8);
            sub_100013288();
            swift_allocError();
            *v67 = 0xD000000000000013;
            *(v67 + 8) = 0x800000010001B9E0;
            *(v67 + 16) = 1;
            swift_willThrow();

            sub_100002D44(v99, &qword_100025240, &qword_10001ACB8);
            (*v89)(v98, v100);
            v68 = v74;
            v45 = v96;
            goto LABEL_23;
          }

          v43 = v18;
          (*v82)(v18, v42, v100);
          v44 = [objc_allocWithZone(FLSchemaFLCandidateIdentifier) init];
          v45 = v96;
          if (!v44)
          {

            sub_100013288();
            swift_allocError();
            *v69 = 0xD00000000000001DLL;
            *(v69 + 8) = 0x800000010001BA00;
            *(v69 + 16) = 0;
            swift_willThrow();

            goto LABEL_22;
          }

          v46 = v44;
          v47 = v97;
          sub_100019AFC();
          sub_10000605C(v47, v8, &qword_1000252E0, &qword_10001ADE8);
          v48 = sub_100019EFC();
          v49 = *(v48 - 8);
          if ((*(v49 + 48))(v8, 1, v48) == 1)
          {

            sub_100002D44(v8, &qword_1000252E0, &qword_10001ADE8);
            v55 = v92;
            (*(v77 + 56))(v92, 1, 1, v91);
            goto LABEL_21;
          }

          v50 = v8;
          v51 = v100;
          v52 = v97;
          v53 = v92;
          sub_100019EEC();
          v54 = v50;
          v55 = v53;
          (*(v49 + 8))(v54, v48);
          v56 = v91;
          if ((*v81)(v53, 1, v91) == 1)
          {

LABEL_21:
            v45 = v96;
            sub_100002D44(v55, &qword_100024EE0, "r\x1B");
            sub_100013288();
            swift_allocError();
            *v70 = 0xD00000000000001FLL;
            *(v70 + 8) = 0x800000010001BA20;
            *(v70 + 16) = 1;
            swift_willThrow();

            sub_100002D44(v97, &qword_1000252E0, &qword_10001ADE8);
LABEL_22:
            v71 = *v89;
            v72 = v100;
            (*v89)(v43, v100);
            sub_100002D44(v99, &qword_100025240, &qword_10001ACB8);
            v71(v98, v72);
            v68 = v74;
LABEL_23:
            (*(v68 + 8))(v45, v73);
          }

          v57 = v90;
          (*v80)(v90, v55, v56);
          v58 = objc_allocWithZone(SISchemaUUID);
          isa = sub_1000197FC().super.isa;
          v60 = [v58 initWithNSUUID:isa];

          (*v79)(v57, v56);
          sub_100002D44(v52, &qword_1000252E0, &qword_10001ADE8);
          [v46 setCandidateId:v60];

          v61 = *v89;
          (*v89)(v43, v51);
          sub_100002D44(v99, &qword_100025240, &qword_10001ACB8);
          v61(v98, v51);
          sub_100019FCC();
          v25 = v96;
          if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_100019FEC();
          }

          v33 = v94 + 1;
          sub_100019FFC();
          v32 = v101;
          v18 = v43;
          v8 = v78;
          result = v88;
          if (v83 == v33)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_16:

        sub_1000133C4(0, &qword_1000252F0, FLSchemaFLCandidateIdentifier_ptr);
        v63 = sub_100019FDC().super.isa;

        v64 = v75;
        [v75 setIdentifiers:v63];

        v65 = v76;
        sub_100019A3C();
        v66 = sub_1000108E4(v65);
        sub_100002D44(v65, &qword_100025238, &qword_10001ACB0);
        [v64 setAlignment:v66];
        (*(v74 + 8))(v25, v73);
        return v64;
      }
    }

    else
    {
      sub_100013288();
      swift_allocError();
      *v62 = 0xD00000000000001ALL;
      *(v62 + 8) = 0x800000010001B9C0;
      *(v62 + 16) = 0;
      swift_willThrow();
      return (*(v28 + 8))(v25, v30);
    }
  }

  return result;
}

id sub_10001180C(unint64_t a1)
{
  v88 = a1;
  v1 = sub_100002594(&qword_100025238, &qword_10001ACB0);
  __chkstk_darwin(v1 - 8);
  v80 = &v73 - v2;
  v3 = sub_100002594(&qword_100025240, &qword_10001ACB8);
  __chkstk_darwin(v3 - 8);
  v81 = &v73 - v4;
  v5 = sub_100019B4C();
  v82 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002594(&qword_1000252E8, &qword_10001ADF0);
  __chkstk_darwin(v8 - 8);
  v78 = &v73 - v9;
  v10 = sub_100002594(&qword_1000252F8, &qword_10001ADF8);
  __chkstk_darwin(v10 - 8);
  v79 = &v73 - v11;
  v12 = sub_100002594(&qword_1000252E0, &qword_10001ADE8);
  __chkstk_darwin(v12 - 8);
  v84 = &v73 - v13;
  v14 = sub_1000197DC();
  v89 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v83 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v73 - v17;
  v19 = sub_100002594(&qword_100025230, &qword_10001ACA8);
  v20 = __chkstk_darwin(v19 - 8);
  v22 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v87 = &v73 - v24;
  v25 = __chkstk_darwin(v23);
  v27 = &v73 - v26;
  __chkstk_darwin(v25);
  v29 = &v73 - v28;
  v30 = [objc_allocWithZone(FLSchemaFLInteractionDonationEnded) init];
  v31 = v30;
  if (!v30)
  {
    sub_100013288();
    swift_allocError();
    *v34 = 0xD000000000000022;
    *(v34 + 8) = 0x800000010001BA40;
    *(v34 + 16) = 0;
    swift_willThrow();
    return v31;
  }

  v76 = v5;
  v77 = v7;
  v86 = v30;
  sub_100019C6C();
  sub_10000605C(v29, v27, &qword_100025230, &qword_10001ACA8);
  v32 = *(v89 + 48);
  if (v32(v27, 1, v14) == 1)
  {
    sub_100002D44(v27, &qword_100025230, &qword_10001ACA8);
    sub_100013288();
    swift_allocError();
    *v33 = 0xD000000000000025;
    *(v33 + 8) = 0x800000010001BA70;
    *(v33 + 16) = 1;
    swift_willThrow();
    v31 = v86;

    sub_100002D44(v29, &qword_100025230, &qword_10001ACA8);
    return v31;
  }

  v35 = v89;
  v74 = *(v89 + 32);
  v75 = v89 + 32;
  v74(v18, v27, v14);
  sub_10001979C();
  v37 = v36;
  v38 = *(v35 + 8);
  v89 = v35 + 8;
  v73 = v38;
  v38(v18, v14);
  sub_100002D44(v29, &qword_100025230, &qword_10001ACA8);
  v39 = v86;
  [v86 setAbsoluteTime:v37];
  v40 = v87;
  sub_100019C7C();
  sub_10000605C(v40, v22, &qword_100025230, &qword_10001ACA8);
  if (v32(v22, 1, v14) == 1)
  {
    sub_100002D44(v22, &qword_100025230, &qword_10001ACA8);
    sub_100013288();
    swift_allocError();
    *v41 = 0xD000000000000025;
    *(v41 + 8) = 0x800000010001BAA0;
    *(v41 + 16) = 1;
    swift_willThrow();

    sub_100002D44(v40, &qword_100025230, &qword_10001ACA8);
    return v39;
  }

  v42 = v83;
  v74(v83, v22, v14);
  sub_10001979C();
  v44 = v43;
  v73(v42, v14);
  sub_100002D44(v40, &qword_100025230, &qword_10001ACA8);
  [v39 setDonationTime:v44];
  v45 = v84;
  sub_100019C5C();
  v46 = v85;
  v47 = sub_10000C5A8(v45, 0xD000000000000024, 0x800000010001BAD0);
  v31 = v39;
  if (v46)
  {
    sub_100002D44(v45, &qword_1000252E0, &qword_10001ADE8);
LABEL_14:

    return v31;
  }

  v48 = v47;
  sub_100002D44(v45, &qword_1000252E0, &qword_10001ADE8);
  [v39 setIfSessionId:v48];

  v49 = sub_100019CAC();
  if ((v49 & 0x100000000) != 0)
  {
    v53 = 0x800000010001BB00;
    sub_100013288();
    swift_allocError();
    v55 = 0xD00000000000002ALL;
    goto LABEL_13;
  }

  [v39 setActionStatementId:v49];
  v50 = v79;
  sub_100019C8C();
  v51 = sub_100010688(v50);
  sub_100002D44(v50, &qword_1000252F8, &qword_10001ADF8);
  [v39 setDonationTrigger:v51];
  v52 = sub_100019C9C();
  if (v52 == 2)
  {
    v53 = 0x800000010001BB30;
    sub_100013288();
    swift_allocError();
    v55 = 0xD000000000000028;
LABEL_13:
    *v54 = v55;
    *(v54 + 8) = v53;
    *(v54 + 16) = 1;
    swift_willThrow();
    goto LABEL_14;
  }

  [v39 setWasTupleDonated:v52 & 1];
  v57 = v78;
  sub_100019CBC();
  v58 = sub_100010BCC(v57);
  sub_100002D44(v57, &qword_1000252E8, &qword_10001ADF0);
  [v39 setTuple:v58];

  v59 = sub_100019C4C();
  v60 = *(v59 + 16);
  if (!v60)
  {
LABEL_21:

    sub_1000133C4(0, &qword_100025300, FLSchemaFLCandidateInteraction_ptr);
    isa = sub_100019FDC().super.isa;

    v31 = v86;
    [v86 setCandidates:isa];

    return v31;
  }

  v90 = &_swiftEmptyArrayStorage;
  result = sub_10001A0CC();
  v61 = 0;
  v88 = v59 + ((*(v82 + 80) + 32) & ~*(v82 + 80));
  v87 = (v82 + 16);
  v89 = v82 + 8;
  v62 = v77;
  while (v61 < *(v59 + 16))
  {
    v63 = v59;
    v64 = v76;
    (*(v82 + 16))(v62, v88 + *(v82 + 72) * v61, v76);
    v65 = [objc_allocWithZone(FLSchemaFLCandidateInteraction) init];
    v66 = v81;
    if (!v65)
    {

      sub_100013288();
      swift_allocError();
      *v72 = 0xD00000000000001ELL;
      *(v72 + 8) = 0x800000010001B960;
      *(v72 + 16) = 0;
      swift_willThrow();
      v31 = v86;

      (*v89)(v77, v64);

      return v31;
    }

    v67 = v65;
    sub_100019B2C();
    v68 = sub_10000EF24(v66);
    ++v61;
    sub_100002D44(v66, &qword_100025240, &qword_10001ACB8);
    [v67 setIdentifier:v68];

    v69 = v80;
    sub_100019B3C();
    v70 = sub_1000108E4(v69);
    sub_100002D44(v69, &qword_100025238, &qword_10001ACB0);
    [v67 setAlignment:v70];
    (*v89)(v62, v64);
    sub_10001A0AC();
    sub_10001A0DC();
    sub_10001A0EC();
    result = sub_10001A0BC();
    v59 = v63;
    if (v60 == v61)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1000123A4()
{
  v1 = sub_100019CCC();
  v29 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100002594(&qword_100025380, &qword_10001AE60);
  __chkstk_darwin(v4 - 8);
  v6 = &v28 - v5;
  v7 = sub_100019CDC();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v28 - v12;
  sub_100019CEC();
  v14 = 1;
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100002D44(v6, &qword_100025380, &qword_10001AE60);
    sub_100013288();
    swift_allocError();
    *v15 = 0xD00000000000001DLL;
    *(v15 + 8) = 0x800000010001BCD0;
    *(v15 + 16) = 1;
    swift_willThrow();
    return v14;
  }

  (*(v8 + 32))(v13, v6, v7);
  v16 = [objc_allocWithZone(FLSchemaFLInteractionDonationContext) init];
  if (!v16)
  {
    v14 = 0x800000010001BCF0;
    sub_100013288();
    swift_allocError();
    *v21 = 0xD000000000000024;
    *(v21 + 8) = 0x800000010001BCF0;
    *(v21 + 16) = 0;
    swift_willThrow();
LABEL_12:
    (*(v8 + 8))(v13, v7);
    return v14;
  }

  v14 = v16;
  (*(v8 + 16))(v11, v13, v7);
  v17 = (*(v8 + 88))(v11, v7);
  if (v17 != enum case for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.StateInfo.started(_:))
  {
    if (v17 != enum case for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.StateInfo.ended(_:))
    {
      sub_100013288();
      swift_allocError();
      *v24 = 0xD00000000000001DLL;
      *(v24 + 8) = 0x800000010001BCD0;
      *(v24 + 16) = 2;
      swift_willThrow();

      v14 = *(v8 + 8);
      (v14)(v13, v7);
      (v14)(v11, v7);
      return v14;
    }

    (*(v8 + 96))(v11, v7);
    v22 = v29;
    (*(v29 + 32))(v3, v11, v1);
    v23 = sub_10001180C(v3);
    if (!v0)
    {
      v27 = v23;
      [v14 setEnded:v23];

      (*(v22 + 8))(v3, v1);
      (*(v8 + 8))(v13, v7);
      return v14;
    }

    (*(v22 + 8))(v3, v1);
    goto LABEL_12;
  }

  v18 = *(v8 + 8);
  v18(v11, v7);
  v19 = [objc_allocWithZone(FLSchemaFLInteractionDonationStarted) init];
  if (v19)
  {
    v20 = v19;
    [v19 setExists:1];
    [v14 setStartedOrChanged:v20];
  }

  else
  {
    sub_100013288();
    swift_allocError();
    *v25 = 0xD000000000000024;
    *(v25 + 8) = 0x800000010001B930;
    *(v25 + 16) = 0;
    swift_willThrow();
  }

  v18(v13, v7);
  return v14;
}

id sub_100012910()
{
  v1 = sub_100019CFC();
  v68 = *(v1 - 8);
  v69 = v1;
  __chkstk_darwin(v1);
  v66 = &v65 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100019C3C();
  v70 = *(v3 - 8);
  v71 = v3;
  __chkstk_darwin(v3);
  v67 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100002594(&qword_100025398, &qword_10001AE78);
  __chkstk_darwin(v5 - 8);
  v7 = &v65 - v6;
  v8 = sub_100019B9C();
  v73 = *(v8 - 8);
  v74 = v8;
  v9 = __chkstk_darwin(v8);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v72 = &v65 - v12;
  v13 = sub_100002594(&qword_1000253A0, &qword_10001AE80);
  __chkstk_darwin(v13 - 8);
  v15 = &v65 - v14;
  v16 = sub_100019D0C();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [objc_allocWithZone(FLSchemaFLClientEvent) init];
  v21 = v20;
  if (!v20)
  {
    sub_100013288();
    swift_allocError();
    *v24 = 0xD000000000000015;
    *(v24 + 8) = 0x800000010001BD90;
    *(v24 + 16) = 0;
    swift_willThrow();
    return v21;
  }

  v75 = v20;
  v22 = v16;
  v23 = sub_10000C110();
  if (!v0)
  {
    v25 = v23;
    v65 = 0;
    v26 = v75;
    [v75 setEventMetadata:v23];

    sub_100019D1C();
    v27 = v17;
    if ((*(v17 + 48))(v15, 1, v22) == 1)
    {
      sub_100002D44(v15, &qword_1000253A0, &qword_10001AE80);
      sub_100013288();
      swift_allocError();
      *v28 = 0xD000000000000017;
      *(v28 + 8) = 0x800000010001BDB0;
      *(v28 + 16) = 1;
      swift_willThrow();

      return v26;
    }

    v29 = v15;
    v30 = v19;
    (*(v17 + 32))(v19, v29, v22);
    sub_100019BAC();
    v31 = v73;
    v32 = v74;
    if ((*(v73 + 48))(v7, 1, v74) == 1)
    {
      sub_100002D44(v7, &qword_100025398, &qword_10001AE78);
      sub_100013288();
      swift_allocError();
      *v33 = 0xD00000000000001DLL;
      *(v33 + 8) = 0x800000010001BDD0;
      *(v33 + 16) = 1;
      swift_willThrow();
      v34 = v75;

      v35 = v22;
      v21 = v34;
      (*(v27 + 8))(v30, v35);
      return v21;
    }

    v36 = v72;
    (*(v31 + 32))(v72, v7, v32);
    (*(v31 + 16))(v11, v36, v32);
    v37 = (*(v31 + 88))(v11, v32);
    if (v37 == enum case for IntelligenceFlowFeedbackLearning.Event.EventValue.actionEvaluation(_:))
    {
      (*(v31 + 96))(v11, v32);
      v38 = v67;
      (*(v70 + 32))(v67, v11, v71);
      if (qword_100025BA0 != -1)
      {
        swift_once();
      }

      v39 = sub_100019F2C();
      sub_100003FD8(v39, qword_100025DA8);
      v40 = sub_100019F0C();
      v41 = sub_10001A01C();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v40, v41, "Making Feedback Learning action Evaluation", v42, 2u);
      }

      v43 = v65;
      v44 = sub_100010078();
      if (v43)
      {
        v45 = v38;
        v46 = v75;

        v48 = v70;
        v47 = v71;
LABEL_23:
        (*(v48 + 8))(v45, v47);
        (*(v31 + 8))(v72, v32);
        v55 = v22;
        v21 = v46;
        (*(v27 + 8))(v30, v55);
        return v21;
      }

      v60 = v44;
      [v75 setEvaluationContext:v44];

      v62 = v70;
      v61 = v71;
    }

    else
    {
      if (v37 != enum case for IntelligenceFlowFeedbackLearning.Event.EventValue.interactionDonation(_:))
      {
        sub_100013288();
        swift_allocError();
        *v56 = xmmword_10001AC90;
        *(v56 + 16) = 2;
        swift_willThrow();
        v57 = v75;

        v58 = *(v31 + 8);
        v58(v72, v32);
        v59 = v22;
        v21 = v57;
        (*(v27 + 8))(v30, v59);
        v58(v11, v32);
        return v21;
      }

      (*(v31 + 96))(v11, v32);
      v38 = v66;
      (*(v68 + 32))(v66, v11, v69);
      if (qword_100025BA0 != -1)
      {
        swift_once();
      }

      v49 = sub_100019F2C();
      sub_100003FD8(v49, qword_100025DA8);
      v50 = sub_100019F0C();
      v51 = sub_10001A01C();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&_mh_execute_header, v50, v51, "Making Feedback Learning interaction donation", v52, 2u);
      }

      v53 = v65;
      v54 = sub_1000123A4();
      if (v53)
      {
        v45 = v38;
        v46 = v75;

        v48 = v68;
        v47 = v69;
        goto LABEL_23;
      }

      v63 = v54;
      [v75 setDonationContext:v54];

      v62 = v68;
      v61 = v69;
    }

    (*(v62 + 8))(v38, v61);
    (*(v31 + 8))(v72, v32);
    (*(v27 + 8))(v30, v22);
    return v75;
  }

  v21 = v75;

  return v21;
}

uint64_t sub_100013270(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

unint64_t sub_100013288()
{
  result = qword_100025228;
  if (!qword_100025228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025228);
  }

  return result;
}

__n128 sub_10001330C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100013320(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100013368(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000133C4(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void type metadata accessor for FLSchemaFLEvaluationSource()
{
  if (!qword_1000253A8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1000253A8);
    }
  }
}

uint64_t sub_10001345C()
{
  v0 = sub_100019F2C();
  sub_10000449C(v0, qword_100025DC0);
  sub_100003FD8(v0, qword_100025DC0);
  sub_1000028F8();
  sub_10001A03C();
  return sub_100019F3C();
}

uint64_t sub_1000134F0()
{
  if (qword_100025C30 != -1)
  {
    swift_once();
  }

  v0 = sub_100019F2C();

  return sub_100003FD8(v0, qword_100025DC0);
}

uint64_t sub_100013554@<X0>(uint64_t a1@<X8>)
{
  if (qword_100025C30 != -1)
  {
    swift_once();
  }

  v2 = sub_100019F2C();
  v3 = sub_100003FD8(v2, qword_100025DC0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id sub_1000135FC(uint64_t a1)
{
  v2 = sub_100002594(&qword_100024ED0, "r\x1B");
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v43 - v6;
  v8 = sub_100002594(&qword_100024ED8, "Z\x1B");
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v43 - v12;
  v14 = sub_10001981C();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v43 - v19;
  v21 = [objc_allocWithZone(IFPlatformSchemaIFPlatformClientEventMetadata) init];
  if (v21)
  {
    v45 = v15;
    v46 = v14;
    v48 = v21;
    sub_100006940(a1, v7);
    v22 = sub_1000198CC();
    v23 = *(v22 - 8);
    v47 = *(v23 + 48);
    if (v47(v7, 1, v22) == 1)
    {
      sub_100002D44(v7, &qword_100024ED0, "r\x1B");
    }

    else
    {
      v43 = a1;
      v44 = v11;
      sub_1000198BC();
      (*(v23 + 8))(v7, v22);
      v27 = sub_10001994C();
      v28 = *(v27 - 8);
      if ((*(v28 + 48))(v13, 1, v27) == 1)
      {
        sub_100002D44(v13, &qword_100024ED8, "Z\x1B");
      }

      else
      {
        sub_10001993C();
        (*(v28 + 8))(v13, v27);
        v30 = v45;
        v29 = v46;
        (*(v45 + 32))(v20, v18, v46);
        v31 = objc_allocWithZone(SISchemaUUID);
        isa = sub_1000197FC().super.isa;
        v33 = [v31 initWithNSUUID:isa];

        [v48 setIfSessionId:v33];
        (*(v30 + 8))(v20, v29);
      }

      a1 = v43;
      v11 = v44;
    }

    sub_100006940(a1, v5);
    if (v47(v5, 1, v22) == 1)
    {
      v34 = &qword_100024ED0;
      v35 = "r\x1B";
      v36 = v5;
LABEL_15:
      sub_100002D44(v36, v34, v35);
      return v48;
    }

    sub_1000198BC();
    (*(v23 + 8))(v5, v22);
    v37 = sub_10001994C();
    v38 = *(v37 - 8);
    if ((*(v38 + 48))(v11, 1, v37) == 1)
    {
      v34 = &qword_100024ED8;
      v35 = "Z\x1B";
      v36 = v11;
      goto LABEL_15;
    }

    v39 = sub_10001992C();
    v41 = v40;
    (*(v38 + 8))(v11, v37);
    result = v48;
    if ((v41 & 1) == 0)
    {
      v42 = v48;
      [v48 setPostingSpanId:v39];
      return v42;
    }
  }

  else
  {
    if (qword_100025C30 != -1)
    {
      swift_once();
    }

    v24 = sub_100019F2C();
    sub_100003FD8(v24, qword_100025DC0);
    sub_1000017F4(0xD000000000000039, 0x800000010001BDF0, v25);
    return 0;
  }

  return result;
}

uint64_t sub_100013B7C()
{
  v0 = sub_100019F2C();
  sub_10000449C(v0, qword_100025DD8);
  sub_100003FD8(v0, qword_100025DD8);
  sub_1000028F8();
  sub_10001A03C();
  return sub_100019F3C();
}

uint64_t sub_100013C10()
{
  if (qword_100025C38 != -1)
  {
    swift_once();
  }

  v0 = sub_100019F2C();

  return sub_100003FD8(v0, qword_100025DD8);
}

uint64_t sub_100013C74@<X0>(uint64_t a1@<X8>)
{
  if (qword_100025C38 != -1)
  {
    swift_once();
  }

  v2 = sub_100019F2C();
  v3 = sub_100003FD8(v2, qword_100025DD8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *sub_100013D1C()
{
  v0 = sub_100002594(&qword_100024D88, qword_10001A910);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v22 - v4;
  v6 = [objc_allocWithZone(IFPlatformSchemaIFPlatformTargetEnded) init];
  if (!v6)
  {
    if (qword_100025C38 != -1)
    {
      swift_once();
    }

    v13 = sub_100019F2C();
    sub_100003FD8(v13, qword_100025DD8);
    sub_1000017F4(0xD00000000000003ELL, 0x800000010001BE80, v14);
    return 0;
  }

  v7 = v6;
  v8 = [objc_allocWithZone(IFTSchemaIFTIntelligenceFlowError) init];
  if (!v8)
  {
    if (qword_100025C38 != -1)
    {
      swift_once();
    }

    v15 = sub_100019F2C();
    sub_100003FD8(v15, qword_100025DD8);
    sub_1000017F4(0xD000000000000038, 0x800000010001B300, v16);

    return 0;
  }

  v9 = v8;
  sub_100019DCC();
  v10 = sub_100019DAC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v5, 1, v10) == 1)
  {
    sub_1000043E8(v5);
  }

  else
  {
    v17 = sub_100019D8C();
    (*(v11 + 8))(v5, v10);
    if ((v17 & 0x100000000) == 0)
    {
      [v9 setCode:v17];
    }
  }

  sub_100019DCC();
  if (v12(v3, 1, v10) == 1)
  {
    sub_1000043E8(v3);
  }

  else
  {
    sub_100019D9C();
    v19 = v18;
    (*(v11 + 8))(v3, v10);
    if (v19)
    {
      v20 = sub_100019F7C();

      [v9 setDomain:v20];
    }
  }

  [v7 setHandledError:v9];

  return v7;
}

uint64_t sub_100014070()
{
  v0 = sub_100019F2C();
  sub_10000449C(v0, qword_100025DF0);
  sub_100003FD8(v0, qword_100025DF0);
  sub_1000028F8();
  sub_10001A03C();
  return sub_100019F3C();
}

uint64_t sub_100014104()
{
  if (qword_100025C40 != -1)
  {
    swift_once();
  }

  v0 = sub_100019F2C();

  return sub_100003FD8(v0, qword_100025DF0);
}

uint64_t sub_100014168@<X0>(uint64_t a1@<X8>)
{
  if (qword_100025C40 != -1)
  {
    swift_once();
  }

  v2 = sub_100019F2C();
  v3 = sub_100003FD8(v2, qword_100025DF0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id sub_100014210(uint64_t a1)
{
  v2 = sub_100002594(&qword_100024ED0, "r\x1B");
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v44 - v6;
  v8 = sub_100002594(&qword_100024ED8, "Z\x1B");
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v44 - v12;
  v14 = sub_100002594(&qword_100024EE0, "r\x1B");
  __chkstk_darwin(v14 - 8);
  v16 = &v44 - v15;
  v17 = sub_10001981C();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [objc_allocWithZone(IFPlatformRequestSchemaIFPlatformRequestClientEventMetadata) init];
  if (v21)
  {
    v46 = v20;
    v49 = v17;
    v51 = v21;
    sub_100006940(a1, v7);
    v22 = sub_1000198CC();
    v23 = *(v22 - 8);
    v48 = *(v23 + 48);
    v24 = v48(v7, 1, v22);
    v50 = v23;
    if (v24 == 1)
    {
      sub_100002D44(v7, &qword_100024ED0, "r\x1B");
    }

    else
    {
      v47 = a1;
      v45 = v11;
      sub_1000198BC();
      (*(v23 + 8))(v7, v22);
      v28 = sub_10001994C();
      v29 = *(v28 - 8);
      if ((*(v29 + 48))(v13, 1, v28) != 1)
      {
        sub_10001990C();
        (*(v29 + 8))(v13, v28);
        v34 = v49;
        v35 = (*(v18 + 48))(v16, 1, v49);
        v11 = v45;
        a1 = v47;
        if (v35 != 1)
        {
          v36 = v46;
          (*(v18 + 32))(v46, v16, v34);
          v37 = objc_allocWithZone(SISchemaUUID);
          isa = sub_1000197FC().super.isa;
          v39 = [v37 initWithNSUUID:isa];

          [v51 setIfRequestId:v39];
          a1 = v47;
          (*(v18 + 8))(v36, v34);
LABEL_11:
          v30 = v50;
          sub_100006940(a1, v5);
          if (v48(v5, 1, v22) == 1)
          {
            sub_100002D44(v5, &qword_100024ED0, "r\x1B");
            return v51;
          }

          else
          {
            sub_1000198BC();
            (*(v30 + 8))(v5, v22);
            v31 = sub_10001994C();
            v32 = *(v31 - 8);
            v33 = (*(v32 + 48))(v11, 1, v31);
            v27 = v51;
            if (v33 == 1)
            {
              sub_100002D44(v11, &qword_100024ED8, "Z\x1B");
            }

            else
            {
              v40 = sub_10001992C();
              v42 = v41;
              (*(v32 + 8))(v11, v31);
              if ((v42 & 1) == 0)
              {
                [v27 setPostingSpanId:v40];
              }
            }
          }

          return v27;
        }

LABEL_10:
        sub_100002D44(v16, &qword_100024EE0, "r\x1B");
        goto LABEL_11;
      }

      sub_100002D44(v13, &qword_100024ED8, "Z\x1B");
      v11 = v45;
      a1 = v47;
    }

    (*(v18 + 56))(v16, 1, 1, v49);
    goto LABEL_10;
  }

  if (qword_100025C40 != -1)
  {
    swift_once();
  }

  v25 = sub_100019F2C();
  sub_100003FD8(v25, qword_100025DF0);
  sub_1000017F4(0xD000000000000041, 0x800000010001BF00, v26);
  return 0;
}

uint64_t sub_100014840()
{
  v0 = sub_100019F2C();
  sub_10000449C(v0, qword_100025E08);
  sub_100003FD8(v0, qword_100025E08);
  sub_1000028F8();
  sub_10001A03C();
  return sub_100019F3C();
}

uint64_t sub_1000148D8()
{
  if (qword_100025C48 != -1)
  {
    swift_once();
  }

  v0 = sub_100019F2C();

  return sub_100003FD8(v0, qword_100025E08);
}

uint64_t sub_10001493C@<X0>(uint64_t a1@<X8>)
{
  if (qword_100025C48 != -1)
  {
    swift_once();
  }

  v2 = sub_100019F2C();
  v3 = sub_100003FD8(v2, qword_100025E08);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *sub_1000149E4()
{
  v0 = sub_100002594(&qword_100024D88, qword_10001A910);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v22 - v4;
  v6 = [objc_allocWithZone(IFPlatformSchemaIFPlatformTargetFailed) init];
  if (!v6)
  {
    if (qword_100025C48 != -1)
    {
      swift_once();
    }

    v13 = sub_100019F2C();
    sub_100003FD8(v13, qword_100025E08);
    sub_1000017F4(0xD00000000000003FLL, 0x800000010001BFA0, v14);
    return 0;
  }

  v7 = v6;
  v8 = [objc_allocWithZone(IFTSchemaIFTIntelligenceFlowError) init];
  if (!v8)
  {
    if (qword_100025C48 != -1)
    {
      swift_once();
    }

    v15 = sub_100019F2C();
    sub_100003FD8(v15, qword_100025E08);
    sub_1000017F4(0xD000000000000038, 0x800000010001B300, v16);

    return 0;
  }

  v9 = v8;
  sub_100019DEC();
  v10 = sub_100019DAC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v5, 1, v10) == 1)
  {
    sub_1000043E8(v5);
  }

  else
  {
    v17 = sub_100019D8C();
    (*(v11 + 8))(v5, v10);
    if ((v17 & 0x100000000) == 0)
    {
      [v9 setCode:v17];
    }
  }

  sub_100019DEC();
  if (v12(v3, 1, v10) == 1)
  {
    sub_1000043E8(v3);
  }

  else
  {
    sub_100019D9C();
    v19 = v18;
    (*(v11 + 8))(v3, v10);
    if (v19)
    {
      v20 = sub_100019F7C();

      [v9 setDomain:v20];
    }
  }

  [v7 setCriticalError:v9];

  return v7;
}

uint64_t sub_100014D38()
{
  v0 = sub_100019F2C();
  sub_10000449C(v0, qword_100025E20);
  sub_100003FD8(v0, qword_100025E20);
  sub_1000028F8();
  sub_10001A03C();
  return sub_100019F3C();
}

uint64_t sub_100014DCC()
{
  if (qword_100025C50 != -1)
  {
    swift_once();
  }

  v0 = sub_100019F2C();

  return sub_100003FD8(v0, qword_100025E20);
}

uint64_t sub_100014E30@<X0>(uint64_t a1@<X8>)
{
  if (qword_100025C50 != -1)
  {
    swift_once();
  }

  v2 = sub_100019F2C();
  v3 = sub_100003FD8(v2, qword_100025E20);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100014ED8(uint64_t a1)
{
  v2 = sub_100019E5C();
  v113 = *(v2 - 8);
  v114 = v2;
  __chkstk_darwin(v2);
  v112 = &v96 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100002594(&qword_100025610, &qword_10001AFE0);
  v5 = __chkstk_darwin(v4 - 8);
  v101 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v102 = &v96 - v7;
  v8 = sub_100002594(&qword_100025618, &unk_10001AFE8);
  __chkstk_darwin(v8 - 8);
  v111 = &v96 - v9;
  v10 = sub_100019E8C();
  v104 = *(v10 - 8);
  v105 = v10;
  __chkstk_darwin(v10);
  v103 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100002594(&qword_100024EC8, qword_10001AC30);
  __chkstk_darwin(v12 - 8);
  v109 = &v96 - v13;
  v108 = sub_100019EBC();
  v106 = *(v108 - 8);
  __chkstk_darwin(v108);
  v107 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100002594(&qword_100024ED0, "r\x1B");
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v96 - v19;
  v21 = sub_100002594(&qword_100024ED8, "Z\x1B");
  v22 = __chkstk_darwin(v21 - 8);
  v24 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v96 - v25;
  v27 = sub_100002594(&qword_100024EE0, "r\x1B");
  __chkstk_darwin(v27 - 8);
  v29 = &v96 - v28;
  v110 = sub_10001981C();
  v115 = *(v110 - 8);
  v30 = __chkstk_darwin(v110);
  v100 = &v96 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v33 = &v96 - v32;
  v34 = sub_100002594(&qword_100024E28, qword_10001A970);
  __chkstk_darwin(v34 - 8);
  v36 = &v96 - v35;
  v116 = a1;
  sub_1000198AC();
  LOBYTE(a1) = sub_100015FD0(v36);
  sub_100002D44(v36, &qword_100024E28, qword_10001A970);
  result = 0;
  if (a1)
  {
    v38 = [objc_allocWithZone(PGSchemaPGClientEventMetadata) init];
    if (!v38)
    {
      if (qword_100025C50 != -1)
      {
        swift_once();
      }

      v41 = sub_100019F2C();
      sub_100003FD8(v41, qword_100025E20);
      sub_1000017F4(0xD00000000000003FLL, 0x800000010001C020, v42);
      return 0;
    }

    v99 = v38;
    sub_1000198DC();
    v39 = sub_1000198CC();
    v40 = *(v39 - 8);
    v98 = *(v40 + 48);
    if (v98(v20, 1, v39) == 1)
    {
      sub_100002D44(v20, &qword_100024ED0, "r\x1B");
    }

    else
    {
      sub_1000198BC();
      v97 = v40;
      (*(v40 + 8))(v20, v39);
      v43 = sub_10001994C();
      v44 = *(v43 - 8);
      if ((*(v44 + 48))(v26, 1, v43) != 1)
      {
        sub_10001990C();
        (*(v44 + 8))(v26, v43);
        v45 = v110;
        v61 = (*(v115 + 48))(v29, 1, v110);
        v40 = v97;
        if (v61 != 1)
        {
          v62 = v115;
          (*(v115 + 32))(v33, v29, v45);
          v63 = objc_allocWithZone(SISchemaUUID);
          isa = sub_1000197FC().super.isa;
          v65 = [v63 initWithNSUUID:isa];

          [v99 setIfRequestId:v65];
          v66 = v62;
          v40 = v97;
          (*(v66 + 8))(v33, v45);
LABEL_12:
          sub_1000198DC();
          v46 = v98(v18, 1, v39);
          v47 = v109;
          if (v46 == 1)
          {
            sub_100002D44(v18, &qword_100024ED0, "r\x1B");
            v48 = v114;
          }

          else
          {
            sub_1000198BC();
            (*(v40 + 8))(v18, v39);
            v49 = sub_10001994C();
            v50 = *(v49 - 8);
            v51 = (*(v50 + 48))(v24, 1, v49);
            v48 = v114;
            if (v51 != 1)
            {
              v67 = sub_10001992C();
              v69 = v68;
              (*(v50 + 8))(v24, v49);
              v53 = v112;
              v52 = v113;
              if ((v69 & 1) == 0)
              {
                [v99 setPostingSpanId:v67];
              }

LABEL_17:
              sub_1000198FC();
              v54 = sub_1000198EC();
              v55 = *(v54 - 8);
              v56 = (*(v55 + 48))(v47, 1, v54);
              v57 = v111;
              if (v56 == 1)
              {
                sub_100002D44(v47, &qword_100024EC8, qword_10001AC30);
LABEL_27:
                if (qword_100025C50 != -1)
                {
                  swift_once();
                }

                v70 = sub_100019F2C();
                sub_100003FD8(v70, qword_100025E20);
                sub_1000017F4(0xD00000000000003ALL, 0x800000010001C060, v71);

                return 0;
              }

              if ((*(v55 + 88))(v47, v54) != enum case for IntelligenceFlowTelemetry.Objective.planGeneration(_:))
              {
                (*(v55 + 8))(v47, v54);
                goto LABEL_27;
              }

              (*(v55 + 96))(v47, v54);
              v58 = v106;
              (*(v106 + 32))(v107, v47, v108);
              sub_100019EAC();
              v59 = sub_100019E9C();
              v60 = *(v59 - 8);
              if ((*(v60 + 48))(v57, 1, v59) == 1)
              {
                sub_100002D44(v57, &qword_100025618, &unk_10001AFE8);
LABEL_40:
                if (qword_100025C50 != -1)
                {
                  swift_once();
                }

                v80 = sub_100019F2C();
                sub_100003FD8(v80, qword_100025E20);
                sub_1000017F4(0xD000000000000043, 0x800000010001C0A0, v81);

                (*(v58 + 8))(v107, v108);
                return 0;
              }

              if ((*(v60 + 88))(v57, v59) != enum case for PlanGeneration.Event.planCreation(_:))
              {
                (*(v60 + 8))(v57, v59);
                goto LABEL_40;
              }

              (*(v60 + 96))(v57, v59);
              v72 = swift_projectBox();
              (*(v104 + 16))(v103, v72, v105);

              v73 = v102;
              sub_100019E7C();
              v74 = sub_100019E6C();
              v75 = *(v74 - 8);
              if ((*(v75 + 48))(v73, 1, v74) == 1)
              {
                goto LABEL_34;
              }

              v82 = v101;
              sub_10000605C(v73, v101, &qword_100025610, &qword_10001AFE0);
              v83 = (*(v75 + 88))(v82, v74);
              if (v83 == enum case for PlanGeneration.Event.PlanCreation.StateInfo.started(_:))
              {
                (*(v75 + 96))(v82, v74);
                (*(v52 + 32))(v53, v82, v48);
                v84 = v100;
                sub_10001980C();
                v85 = objc_allocWithZone(SISchemaUUID);
                v86 = sub_1000197FC().super.isa;
                v87 = [v85 initWithNSUUID:v86];

                (*(v115 + 8))(v84, v45);
                v88 = v99;
                v89 = sub_100016290(v99, v87);
                if (v89)
                {
                  v90 = v89;
                  v91 = sub_100019E4C();
                  v93 = sub_1000164C4(v88, v87, v91, v92);

                  if (v93)
                  {
                    sub_100002594(&qword_100025620, qword_10001AFF8);
                    v94 = swift_allocObject();
                    *(v94 + 16) = xmmword_10001AFD0;
                    *(v94 + 32) = v90;
                    *(v94 + 40) = v93;

                    (*(v52 + 8))(v53, v48);
                    (*(v104 + 8))(v103, v105);
                    (*(v106 + 8))(v107, v108);
                    sub_100002D44(v102, &qword_100025610, &qword_10001AFE0);
                    return v94;
                  }
                }

                (*(v52 + 8))(v53, v48);
                (*(v104 + 8))(v103, v105);
                (*(v106 + 8))(v107, v108);
                sub_100002D44(v102, &qword_100025610, &qword_10001AFE0);
                return 0;
              }

              if (v83 == enum case for PlanGeneration.Event.PlanCreation.StateInfo.ended(_:))
              {

                (*(v104 + 8))(v103, v105);
                (*(v106 + 8))(v107, v108);
                (*(v75 + 8))(v101, v74);
              }

              else
              {
                v95 = v101;
                if (v83 != enum case for PlanGeneration.Event.PlanCreation.StateInfo.failed(_:))
                {
                  (*(v75 + 8))(v101, v74);
LABEL_34:
                  if (qword_100025C50 != -1)
                  {
                    swift_once();
                  }

                  v76 = sub_100019F2C();
                  sub_100003FD8(v76, qword_100025E20);
                  v77 = sub_100019F0C();
                  v78 = sub_10001A02C();
                  if (os_log_type_enabled(v77, v78))
                  {
                    v79 = swift_slowAlloc();
                    *v79 = 0;
                    _os_log_impl(&_mh_execute_header, v77, v78, "Unhandled plan generation state", v79, 2u);
                    v73 = v102;
                  }

                  (*(v104 + 8))(v103, v105);
                  (*(v106 + 8))(v107, v108);
                  goto LABEL_51;
                }

                (*(v104 + 8))(v103, v105);
                (*(v106 + 8))(v107, v108);
                (*(v75 + 8))(v95, v74);
              }

LABEL_51:
              sub_100002D44(v73, &qword_100025610, &qword_10001AFE0);
              return 0;
            }

            sub_100002D44(v24, &qword_100024ED8, "Z\x1B");
          }

          v53 = v112;
          v52 = v113;
          goto LABEL_17;
        }

LABEL_11:
        sub_100002D44(v29, &qword_100024EE0, "r\x1B");
        goto LABEL_12;
      }

      sub_100002D44(v26, &qword_100024ED8, "Z\x1B");
      v40 = v97;
    }

    v45 = v110;
    (*(v115 + 56))(v29, 1, 1, v110);
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_100015FD0(uint64_t a1)
{
  v2 = sub_100002594(&qword_100024E28, qword_10001A970);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = sub_10001988C();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v18 - v10;
  sub_10000605C(a1, v4, &qword_100024E28, qword_10001A970);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100002D44(v4, &qword_100024E28, qword_10001A970);
    if (qword_100025C50 != -1)
    {
      swift_once();
    }

    v12 = sub_100019F2C();
    sub_100003FD8(v12, qword_100025E20);
    v13 = sub_100019F0C();
    v14 = sub_10001A01C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "IntelligenceFlow.Telemetry event has no target so SELF PlanGeneration client event", v15, 2u);
    }
  }

  else
  {
    v16 = *(v6 + 32);
    v16(v11, v4, v5);
    v16(v9, v11, v5);
    if ((*(v6 + 88))(v9, v5) == enum case for IntelligenceFlowTarget.fullPlannerPromptGeneratorMakePlan(_:))
    {
      return 1;
    }

    (*(v6 + 8))(v9, v5);
  }

  return 0;
}

void *sub_100016290(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(PGSchemaPGClientEvent) init];
  if (!v4)
  {
    if (qword_100025C50 != -1)
    {
      swift_once();
    }

    v10 = sub_100019F2C();
    sub_100003FD8(v10, qword_100025E20);
    sub_1000017F4(0xD000000000000036, 0x800000010001C130, v11);
    return 0;
  }

  v5 = v4;
  v6 = [objc_allocWithZone(PGSchemaPGRequestContext) init];
  if (!v6)
  {
    if (qword_100025C50 != -1)
    {
      swift_once();
    }

    v12 = sub_100019F2C();
    sub_100003FD8(v12, qword_100025E20);
    sub_1000017F4(0xD000000000000040, 0x800000010001C1B0, v13);

    return 0;
  }

  v7 = v6;
  v8 = [objc_allocWithZone(PGSchemaPGRequestStarted) init];
  if (!v8)
  {
    if (qword_100025C50 != -1)
    {
      swift_once();
    }

    v14 = sub_100019F2C();
    sub_100003FD8(v14, qword_100025E20);
    sub_1000017F4(0xD000000000000048, 0x800000010001C200, v15);

    return 0;
  }

  v9 = v8;
  [v8 setLinkId:a2];
  [v7 setStartedOrChanged:v9];
  [v5 setEventMetadata:a1];
  [v5 setPgRequestContext:v7];

  return v5;
}

void *sub_1000164C4(uint64_t a1, uint64_t a2, uint64_t a3, NSString a4)
{
  v7 = [objc_allocWithZone(PGSchemaPGClientEvent) init];
  if (!v7)
  {
    if (qword_100025C50 != -1)
    {
      swift_once();
    }

    v11 = sub_100019F2C();
    sub_100003FD8(v11, qword_100025E20);
    sub_1000017F4(0xD000000000000036, 0x800000010001C130, v12);
    return 0;
  }

  v8 = v7;
  v9 = [objc_allocWithZone(PGSchemaPGPromptTier1) init];
  if (!v9)
  {
    if (qword_100025C50 != -1)
    {
      swift_once();
    }

    v13 = sub_100019F2C();
    sub_100003FD8(v13, qword_100025E20);
    sub_1000017F4(0xD00000000000003CLL, 0x800000010001C170, v14);

    return 0;
  }

  v10 = v9;
  [v9 setLinkId:a2];
  if (a4)
  {
    a4 = sub_100019F7C();
  }

  [v10 setPrompt:a4];

  [v8 setEventMetadata:a1];
  [v8 setPgPromptTier1:v10];

  return v8;
}

uint64_t sub_1000166A8()
{
  v0 = sub_100019F2C();
  sub_10000449C(v0, qword_100025E38);
  sub_100003FD8(v0, qword_100025E38);
  sub_1000028F8();
  sub_10001A03C();
  return sub_100019F3C();
}

uint64_t sub_10001673C()
{
  if (qword_100025C58 != -1)
  {
    swift_once();
  }

  v0 = sub_100019F2C();

  return sub_100003FD8(v0, qword_100025E38);
}

uint64_t sub_1000167A0@<X0>(uint64_t a1@<X8>)
{
  if (qword_100025C58 != -1)
  {
    swift_once();
  }

  v2 = sub_100019F2C();
  v3 = sub_100003FD8(v2, qword_100025E38);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *sub_100016848(uint64_t a1)
{
  v2 = sub_100002594(&qword_100024EC8, qword_10001AC30);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v33 - v6;
  v8 = sub_100019E3C();
  v37 = *(v8 - 8);
  __chkstk_darwin(v8);
  v36 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100002594(&qword_100024ED0, "r\x1B");
  __chkstk_darwin(v10 - 8);
  v12 = &v33 - v11;
  v13 = sub_100002594(&qword_100024E28, qword_10001A970);
  __chkstk_darwin(v13 - 8);
  v15 = &v33 - v14;
  type metadata accessor for IFPlatformRequestTargetConverter();
  sub_1000198AC();
  v16 = sub_100016F68(v15);
  sub_100002D44(v15, &qword_100024E28, qword_10001A970);
  v17 = 0;
  if ((v16 & 0x100000000) == 0)
  {
    v18 = [objc_allocWithZone(IFPlatformRequestSchemaIFPlatformRequestClientEvent) init];
    if (v18)
    {
      v17 = v18;
      v34 = v8;
      type metadata accessor for IFPlatformRequestMetadataConverter();
      sub_1000198DC();
      v19 = sub_100014210(v12);
      sub_100002D44(v12, &qword_100024ED0, "r\x1B");
      [v17 setEventMetadata:v19];

      v35 = a1;
      sub_1000198FC();
      v20 = sub_1000198EC();
      v21 = *(v20 - 8);
      v22 = *(v21 + 48);
      if (v22(v7, 1, v20) == 1)
      {
        sub_100002D44(v7, &qword_100024EC8, qword_10001AC30);
      }

      else
      {
        if ((*(v21 + 88))(v7, v20) == enum case for IntelligenceFlowTelemetry.Objective.pnr(_:))
        {
          (*(v21 + 96))(v7, v20);
          v26 = v36;
          v25 = v37;
          v27 = v34;
          (*(v37 + 32))(v36, v7, v34);
          type metadata accessor for IFPlatformRequestContextConverter();
          v38 = 0;
          v28 = sub_100007454(v26, v16);
          [v17 setIfPlatformRequestContext:v28];

          (*(v25 + 8))(v26, v27);
          return v17;
        }

        (*(v21 + 8))(v7, v20);
      }

      sub_1000198FC();
      if (v22(v5, 1, v20) == 1)
      {
        sub_100002D44(v5, &qword_100024EC8, qword_10001AC30);
      }

      else
      {
        v29 = (*(v21 + 88))(v5, v20);
        v30 = enum case for IntelligenceFlowTelemetry.Objective.impendingRequestDetected(_:);
        (*(v21 + 8))(v5, v20);
        if (v29 == v30)
        {
          type metadata accessor for IFPlatformRequestInvokedConverter();
          sub_1000198DC();
          v31 = sub_100006264(v12);
          sub_100002D44(v12, &qword_100024ED0, "r\x1B");
          [v17 setIfPlatformRequestInvoked:v31];
        }
      }
    }

    else
    {
      if (qword_100025C58 != -1)
      {
        swift_once();
      }

      v23 = sub_100019F2C();
      sub_100003FD8(v23, qword_100025E38);
      sub_1000017F4(0xD000000000000038, 0x800000010001C270, v24);
      return 0;
    }
  }

  return v17;
}

uint64_t sub_100016DC8()
{
  v0 = sub_100019F2C();
  sub_10000449C(v0, qword_100025E50);
  sub_100003FD8(v0, qword_100025E50);
  sub_1000028F8();
  sub_10001A03C();
  return sub_100019F3C();
}

uint64_t sub_100016E5C()
{
  if (qword_100025C60 != -1)
  {
    swift_once();
  }

  v0 = sub_100019F2C();

  return sub_100003FD8(v0, qword_100025E50);
}

uint64_t sub_100016EC0@<X0>(uint64_t a1@<X8>)
{
  if (qword_100025C60 != -1)
  {
    swift_once();
  }

  v2 = sub_100019F2C();
  v3 = sub_100003FD8(v2, qword_100025E50);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_100016F68(uint64_t a1)
{
  v2 = sub_100002594(&qword_100024E28, qword_10001A970);
  __chkstk_darwin(v2 - 8);
  v4 = &v34 - v3;
  v5 = sub_10001988C();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v34 - v11;
  __chkstk_darwin(v10);
  v14 = &v34 - v13;
  sub_100007160(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000071D0(v4);
    if (qword_100025C60 != -1)
    {
      swift_once();
    }

    v15 = sub_100019F2C();
    sub_100003FD8(v15, qword_100025E50);
    v16 = sub_100019F0C();
    v17 = sub_10001A01C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "IntelligenceFlow.Telemetry event has no target so no platform request event target", v18, 2u);
    }
  }

  else
  {
    (*(v6 + 32))(v14, v4, v5);
    v21 = *(v6 + 16);
    v21(v12, v14, v5);
    v22 = (*(v6 + 88))(v12, v5);
    if (v22 == enum case for IntelligenceFlowTarget.standardPlannerMakePlan(_:))
    {
      (*(v6 + 8))(v14, v5);
      v20 = 0;
      v19 = 1;
      goto LABEL_24;
    }

    if (v22 == enum case for IntelligenceFlowTarget.standardPlannerRun(_:))
    {
      (*(v6 + 8))(v14, v5);
      v20 = 0;
      v19 = 2;
      goto LABEL_24;
    }

    if (v22 == enum case for IntelligenceFlowTarget.queryDecorationServiceHandle(_:))
    {
      (*(v6 + 8))(v14, v5);
      v20 = 0;
      v19 = 101;
      goto LABEL_24;
    }

    if (v22 == enum case for IntelligenceFlowTarget.planOverridesServiceHandle(_:))
    {
      (*(v6 + 8))(v14, v5);
      v20 = 0;
      v19 = 201;
      goto LABEL_24;
    }

    if (v22 == enum case for IntelligenceFlowTarget.fullPlannerServiceHandle(_:))
    {
      (*(v6 + 8))(v14, v5);
      v20 = 0;
      v19 = 301;
      goto LABEL_24;
    }

    if (v22 == enum case for IntelligenceFlowTarget.planResolverServiceHandle(_:))
    {
      (*(v6 + 8))(v14, v5);
      v20 = 0;
      v19 = 401;
      goto LABEL_24;
    }

    if (v22 == enum case for IntelligenceFlowTarget.responseGenerationServiceHandle(_:))
    {
      (*(v6 + 8))(v14, v5);
      v20 = 0;
      v19 = 501;
      goto LABEL_24;
    }

    if (v22 == enum case for IntelligenceFlowTarget.sessionCoordinatorAccept(_:))
    {
      (*(v6 + 8))(v14, v5);
      v20 = 0;
      v19 = 601;
      goto LABEL_24;
    }

    if (qword_100025C60 != -1)
    {
      swift_once();
    }

    v24 = sub_100019F2C();
    sub_100003FD8(v24, qword_100025E50);
    v21(v9, v14, v5);
    v25 = sub_100019F0C();
    v26 = sub_10001A01C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v35 = v27;
      v37 = swift_slowAlloc();
      v38 = v37;
      *v27 = 136315138;
      sub_100007238();
      v36 = v26;
      v28 = sub_10001A13C();
      v30 = v29;
      v31 = *(v6 + 8);
      v31(v9, v5);
      v32 = sub_100001D8C(v28, v30, &v38);

      v33 = v35;
      *(v35 + 1) = v32;
      _os_log_impl(&_mh_execute_header, v25, v36, "Unrecognized IntelligenceFlow.Telemetry target %s so no platform request event target", v33, 0xCu);
      sub_100002334(v37);
    }

    else
    {

      v31 = *(v6 + 8);
      v31(v9, v5);
    }

    v31(v14, v5);
    v31(v12, v5);
  }

  v19 = 0;
  v20 = 1;
LABEL_24:
  v39 = v20;
  return v19 | (v20 << 32);
}

uint64_t sub_1000175D8()
{
  sub_1000028F8();
  sub_10001A03C();

  return sub_100019F3C();
}

uint64_t sub_100017654@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC23IFTelemetrySELFIngestor13IFDefaultsLib_logger;
  v4 = sub_100019F2C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void *IFDefaultsLib.userDefaults.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC23IFTelemetrySELFIngestor13IFDefaultsLib_userDefaults);
  v2 = v1;
  return v1;
}

uint64_t IFDefaultsLib.__allocating_init(domain:)(uint64_t a1, uint64_t a2)
{
  v2 = swift_allocObject();
  sub_1000028F8();
  sub_10001A03C();
  sub_100019F3C();
  v3 = objc_allocWithZone(NSUserDefaults);
  v4 = sub_100019F7C();

  v5 = [v3 initWithSuiteName:v4];

  *(v2 + OBJC_IVAR____TtC23IFTelemetrySELFIngestor13IFDefaultsLib_userDefaults) = v5;
  return v2;
}

uint64_t IFDefaultsLib.init(domain:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1000028F8();
  sub_10001A03C();
  sub_100019F3C();
  v4 = objc_allocWithZone(NSUserDefaults);
  v5 = sub_100019F7C();

  v6 = [v4 initWithSuiteName:v5];

  *(v3 + OBJC_IVAR____TtC23IFTelemetrySELFIngestor13IFDefaultsLib_userDefaults) = v6;
  return v3;
}

uint64_t IFDefaultsLib.deinit()
{
  v1 = OBJC_IVAR____TtC23IFTelemetrySELFIngestor13IFDefaultsLib_logger;
  v2 = sub_100019F2C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t IFDefaultsLib.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC23IFTelemetrySELFIngestor13IFDefaultsLib_logger;
  v2 = sub_100019F2C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t IFDefaultsLib.lastCollectionDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000197DC();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v28 - v8;
  sub_1000197BC();
  v10 = *(v1 + OBJC_IVAR____TtC23IFTelemetrySELFIngestor13IFDefaultsLib_userDefaults);
  if (v10)
  {
    v11 = sub_100019F7C();
    v12 = [v10 valueForKey:v11];

    if (v12)
    {
      sub_10001A05C();
      swift_unknownObjectRelease();
    }

    else
    {
      v28 = 0u;
      v29 = 0u;
    }

    v30 = v28;
    v31 = v29;
    if (*(&v29 + 1))
    {
      sub_100017E40(&v30);
      v13 = sub_100019F7C();
      [v10 doubleForKey:v13];
      v15 = v14;

      v16 = sub_100019F0C();
      v17 = sub_10001A01C();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *&v30 = v19;
        *v18 = 136315394;
        *(v18 + 4) = sub_100001D8C(0xD000000000000015, 0x800000010001C360, &v30);
        *(v18 + 12) = 2048;
        *(v18 + 14) = v15;
        _os_log_impl(&_mh_execute_header, v16, v17, "The userdefault has key %s with the value %f", v18, 0x16u);
        sub_100002334(v19);
      }

      sub_10001978C();
      sub_1000183E8();
      v20 = sub_100019F6C();
      v21 = *(v4 + 8);
      v22 = (v4 + 32);
      if (v20)
      {
        v21(v9, v3);
        return (*v22)(a1, v7, v3);
      }

      else
      {
        v21(v7, v3);
        return (*v22)(a1, v9, v3);
      }
    }
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
  }

  sub_100017E40(&v30);
  v24 = sub_100019F0C();
  v25 = sub_10001A01C();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *&v30 = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_100001D8C(0xD000000000000015, 0x800000010001C360, &v30);
    _os_log_impl(&_mh_execute_header, v24, v25, "The userdefault contained no value for %s", v26, 0xCu);
    sub_100002334(v27);
  }

  return (*(v4 + 32))(a1, v9, v3);
}

uint64_t sub_100017E40(uint64_t a1)
{
  v2 = sub_100002594(&qword_1000257F0, &qword_10001B0E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100017ECC(uint64_t a1)
{
  v2 = sub_1000197DC();
  __chkstk_darwin(v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return IFDefaultsLib.lastCollectionDate.setter(v4);
}

uint64_t IFDefaultsLib.lastCollectionDate.setter(uint64_t a1)
{
  v2 = v1;
  sub_10001979C();
  v5 = v4;
  v6 = sub_100019F0C();
  v7 = sub_10001A01C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_100001D8C(0xD000000000000015, 0x800000010001C360, &v21);
    *(v8 + 12) = 2048;
    *(v8 + 14) = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "Set key %s to %f", v8, 0x16u);
    sub_100002334(v9);
  }

  v10 = *(v2 + OBJC_IVAR____TtC23IFTelemetrySELFIngestor13IFDefaultsLib_userDefaults);
  if (v10)
  {
    v11 = v10;
    isa = sub_10001A00C().super.super.isa;
    v13 = sub_100019F7C();
    [v11 setValue:isa forKey:v13];
  }

  else
  {
    v14 = sub_100019F0C();
    v15 = sub_10001A01C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v21 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_100001D8C(0xD000000000000015, 0x800000010001C360, &v21);
      _os_log_impl(&_mh_execute_header, v14, v15, "Fail to set key %s due to empty userdefaults", v16, 0xCu);
      sub_100002334(v17);
    }
  }

  v18 = sub_1000197DC();
  v19 = *(*(v18 - 8) + 8);

  return v19(a1, v18);
}

void (*IFDefaultsLib.lastCollectionDate.modify(void *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = sub_1000197DC();
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v8 = malloc(v7);
  }

  v4[4] = v8;
  IFDefaultsLib.lastCollectionDate.getter(v8);
  return sub_100018334;
}

void sub_100018334(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    IFDefaultsLib.lastCollectionDate.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    IFDefaultsLib.lastCollectionDate.setter(*(*a1 + 32));
  }

  free(v4);
  free(v3);

  free(v2);
}

unint64_t sub_1000183E8()
{
  result = qword_1000257F8;
  if (!qword_1000257F8)
  {
    sub_1000197DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000257F8);
  }

  return result;
}

uint64_t type metadata accessor for IFDefaultsLib(uint64_t a1)
{
  result = qword_100025C68;
  if (!qword_100025C68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100018494(uint64_t a1)
{
  result = sub_100019F2C();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100018558()
{
  sub_1000028F8();
  sub_10001A03C();

  return sub_100019F3C();
}

uint64_t sub_1000185CC@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_100025E78;
  v4 = sub_100019F2C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_100018664()
{
  v1 = *(v0 + qword_100025E80);

  return v1;
}

uint64_t IFBiomeLib.__allocating_init(stream:)(uint64_t a1)
{
  v2 = swift_allocObject();
  IFBiomeLib.init(stream:)(a1);
  return v2;
}

uint64_t IFBiomeLib.init(stream:)(uint64_t a1)
{
  sub_1000028F8();
  sub_10001A03C();
  sub_100019F3C();
  v3 = (v1 + qword_100025E80);
  *v3 = 0x656D656C65544649;
  v3[1] = 0xEB00000000797274;
  *(v1 + qword_100025E88) = a1;
  return v1;
}

uint64_t sub_1000187A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[17] = a6;
  v7[18] = v6;
  v7[15] = a4;
  v7[16] = a5;
  v7[13] = a2;
  v7[14] = a3;
  v7[12] = a1;
  v7[19] = *v6;
  sub_100002594(&qword_100025230, &qword_10001ACA8);
  v7[20] = swift_task_alloc();

  return _swift_task_switch(sub_100018878, 0, 0);
}

uint64_t sub_100018878()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 104);
  v3 = sub_1000197DC();
  v4 = *(v3 - 8);
  (*(v4 + 16))(v1, v2, v3);
  (*(v4 + 56))(v1, 0, 1, v3);
  v5.super.isa = sub_1000197AC().super.isa;
  isa = 0;
  if ((*(v4 + 48))(v1, 1, v3) != 1)
  {
    v7 = *(v0 + 160);
    isa = sub_1000197AC().super.isa;
    (*(v4 + 8))(v7, v3);
  }

  v8 = [objc_allocWithZone(BMPublisherOptions) initWithStartDate:v5.super.isa endDate:isa maxEvents:0 lastN:0 reversed:0];

  v9 = v8;
  sub_100019ECC();

  v24 = (v0 + 40);
  v23 = *(v0 + 40);
  v25 = swift_allocObject();
  v26 = v25;
  *(v25 + 16) = 0;
  if (!v23)
  {
    v10 = *(v0 + 32);
    *(v0 + 56) = *(v0 + 16);
    *(v0 + 72) = v10;
    *(v0 + 88) = *(v0 + 48);
    v11 = *(v0 + 80);
    if (!v11)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  sub_100018CD0(v0 + 16, v0 + 56);
  v11 = *(v0 + 80);
  if (v11)
  {
LABEL_5:
    v12 = v9;
    v13 = *(v0 + 136);
    v14 = *(v0 + 144);
    v15 = *(v0 + 112);
    v27 = *(v0 + 120);
    sub_100019200((v0 + 56), v11);
    v16 = swift_allocObject();
    v16[2] = v14;
    v16[3] = v26;
    v16[4] = v15;
    v16[5] = v27;
    v17 = swift_allocObject();
    *(v17 + 16) = v14;
    *(v17 + 24) = v15;
    *(v17 + 32) = v27;
    *(v17 + 48) = v13;
    *(v17 + 56) = v26;
    v9 = v12;
    v24 = (v0 + 40);
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    sub_100019F4C();

    sub_100002334((v0 + 56));
  }

LABEL_6:
  v18 = sub_100019F0C();
  v19 = sub_10001A01C();
  if (!os_log_type_enabled(v18, v19))
  {

    if (!*v24)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v20 = swift_slowAlloc();
  *v20 = 0;
  _os_log_impl(&_mh_execute_header, v18, v19, "loadBiomeEvent completed.", v20, 2u);

  if (*v24)
  {
LABEL_10:
    sub_100002334((v0 + 16));
  }

LABEL_11:

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_100018CD0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100018D34(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(char *), uint64_t a6, uint64_t a7)
{
  v36 = a5;
  v37 = a7;
  v35 = a6;
  v38 = a4;
  v39 = a3;
  v8 = *(*a2 + 80);
  v9 = sub_10001A04C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v35 - v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = __chkstk_darwin(AssociatedTypeWitness);
  v16 = &v35 - v15;
  v17 = *(v8 - 8);
  __chkstk_darwin(v14);
  v19 = &v35 - v18;
  (*(v20 + 16))(v16, a1, AssociatedTypeWitness);
  v21 = swift_dynamicCast();
  v22 = *(v17 + 56);
  if (v21)
  {
    v22(v12, 0, 1, v8);
    (*(v17 + 32))(v19, v12, v8);
    v36(v19);
    (*(v17 + 8))(v19, v8);
    v23 = v37;
    result = swift_beginAccess();
    v25 = *(v23 + 16);
    v26 = __OFADD__(v25, 1);
    v27 = v25 + 1;
    if (v26)
    {
      __break(1u);
    }

    else
    {
      *(v23 + 16) = v27;
    }
  }

  else
  {
    v22(v12, 1, 1, v8);
    (*(v10 + 8))(v12, v9);

    v28 = sub_100019F0C();
    v29 = sub_10001A02C();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v40[0] = v31;
      *v30 = 136315138;
      v32 = sub_10001A1CC();
      v34 = sub_100001D8C(v32, v33, v40);

      *(v30 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v28, v29, "Error: Biome stream event type is incorrect for stream: %s", v30, 0xCu);
      sub_100002334(v31);
    }

    return v39(0);
  }

  return result;
}

uint64_t IFBiomeLib.deinit()
{
  v1 = qword_100025E78;
  v2 = sub_100019F2C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t IFBiomeLib.__deallocating_deinit()
{
  IFBiomeLib.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

void *sub_100019200(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100019244()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001928C(uint64_t *a1)
{
  v2 = *(v1 + 32);
  v3 = *a1;
  if (*a1)
  {
    swift_errorRetain();
    v4 = sub_100019F0C();
    v5 = sub_10001A02C();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      swift_errorRetain();
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v8;
      *v7 = v8;
      _os_log_impl(&_mh_execute_header, v4, v5, "Error, sink failed: %@", v6, 0xCu);
      sub_100019724(v7);
    }

    v9 = v3;
  }

  else
  {
    v10 = *(v1 + 24);

    v11 = sub_100019F0C();
    v12 = sub_10001A01C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      swift_beginAccess();
      *(v13 + 4) = *(v10 + 16);

      _os_log_impl(&_mh_execute_header, v11, v12, "%ld of events loaded from Biome stream", v13, 0xCu);
    }

    else
    {
    }

    v9 = 0;
  }

  return v2(v9);
}

uint64_t sub_10001947C()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000194E0(uint64_t a1)
{
  result = sub_100019F2C();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of IFBiomeLib.loadBiomeEvent(startDate:endDate:completionHandler:receiveEventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(*v6 + 144) + **(*v6 + 144));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_10000892C;

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_100019724(uint64_t a1)
{
  v2 = sub_100002594(&qword_1000258A8, &unk_10001B1D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}