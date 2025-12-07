id sub_100019A48@<X0>(uint64_t a1@<X8>)
{
  v5 = v1 + 16 * a1;
  *(v2 + 192) = *(v5 + 32);
  *(v2 + 200) = *(v5 + 40);
  v6 = *(v3 + 2736);

  return objc_allocWithZone(v6);
}

uint64_t sub_100019A70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *(v5 - 128);

  return sub_1000AC804(a1, a2, v3, v4, v7, a3);
}

uint64_t sub_100019AC8()
{
  *(v1 - 112) = v0;

  return swift_errorRetain();
}

uint64_t *sub_100019AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  *(v32 - 96) = a1;
  *(v32 - 88) = a2;
  *(v32 - 120) = v31;
  *(v32 - 112) = v29;
  *(v32 - 104) = v28;
  v34 = *(v27 + 8);
  a26 = v30;
  a27 = v34;

  return sub_100013234(&a23);
}

void sub_100019B24()
{
  sub_100006A04();
  v2 = v1;
  v3 = *(v0 + 72);
  v20 = v3;
  v4 = *(v3 + 16);
  if (v4)
  {
    v19 = _swiftEmptyArrayStorage;

    sub_10001E058(0, v4, 0);
    v5 = _swiftEmptyArrayStorage;
    v6 = v3 + 32;
    do
    {
      sub_10001E1DC(v16);
      v19 = v5;
      v8 = v5[2];
      v7 = v5[3];
      if (v8 >= v7 >> 1)
      {
        sub_10001E058((v7 > 1), v8 + 1, 1);
      }

      v9 = v17;
      v10 = v18;
      sub_10001C5D0(v16, v17);
      sub_10000518C();
      __chkstk_darwin(v11);
      sub_100002958();
      v14 = v13 - v12;
      (*(v15 + 16))(v13 - v12);
      sub_10001E5C0(v8, v14, &v19, v9, v10);
      sub_1000034F8(v16);
      v5 = v19;
      v6 += 88;
      --v4;
    }

    while (v4);
    sub_10001A940(&v20, &unk_10019CEE8);
    sub_10000EF08(v5, v2);
  }

  else
  {
    sub_100018530();
  }

  sub_1000069EC();
}

void sub_100019CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{

  QueryType.namespace<A>(_:)(v46, v47, v48, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46);
}

uint64_t sub_100019DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return _assertionFailure(_:_:file:line:flags:)();
}

double sub_100019DD8@<D0>(uint64_t *a1@<X8>)
{
  v3 = v1[11];
  if (!v3)
  {
    return sub_100018530();
  }

  v4 = v1[12];
  v5 = v1[10];
  sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014BC40;
  v7 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
  *(inited + 64) = &protocol witness table for Expression<A>;
  *(inited + 32) = 0x4552454857;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = _swiftEmptyArrayStorage;
  *(inited + 56) = v7;
  *(inited + 96) = sub_10002EB80(&qword_10019CBE0, &unk_100152980);
  *(inited + 104) = &protocol witness table for Expression<A>;
  *(inited + 72) = v5;
  *(inited + 80) = v3;
  *(inited + 88) = v4;

  sub_10000EF08(inited, a1);
  swift_setDeallocating();
  sub_100018898();
  return result;
}

void sub_100019EE0(uint64_t *a1@<X8>)
{
  v3 = v1[13];
  if (v3)
  {
    v4 = v1[14];
    v5 = v1[15];
    v6 = v1[16];
    sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10014BC40;
    v8 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
    *(inited + 64) = &protocol witness table for Expression<A>;
    *(inited + 32) = 0x59422050554F5247;
    *(inited + 40) = 0xE800000000000000;
    *(inited + 48) = _swiftEmptyArrayStorage;
    *(inited + 56) = v8;

    sub_100018C6C(v4, v5, v6);
    sub_10000C124(v3, (inited + 72));
    sub_10000EF08(inited, v11);
    swift_setDeallocating();
    sub_100018898();

    if (v5)
    {
      v9 = swift_initStackObject();
      *(v9 + 16) = xmmword_10014BC40;
      sub_10001C4A4(v11, v9 + 32);
      v10 = swift_initStackObject();
      *(v10 + 16) = xmmword_10014BC40;
      *(v10 + 56) = v8;
      *(v10 + 64) = &protocol witness table for Expression<A>;
      *(v10 + 32) = 0x474E49564148;
      *(v10 + 40) = 0xE600000000000000;
      *(v10 + 48) = _swiftEmptyArrayStorage;
      *(v10 + 96) = sub_10002EB80(&qword_10019CBE0, &unk_100152980);
      *(v10 + 104) = &protocol witness table for Expression<A>;
      *(v10 + 72) = v4;
      *(v10 + 80) = v5;
      *(v10 + 88) = v6;
      sub_10000EF08(v10, (v9 + 72));
      swift_setDeallocating();
      sub_100018898();
      sub_10000EF08(v9, a1);
      swift_setDeallocating();
      sub_100018898();
      sub_1000034F8(v11);
    }

    else
    {
      sub_10001A798(v11, a1);
    }
  }

  else
  {
    sub_100018530();
  }
}

void sub_10001A0C8()
{
  sub_100006A04();
  v2 = *(v0 + 168);
  v27 = v2;
  v3 = *(v2 + 16);
  if (v3)
  {
    v19 = v1;
    v26 = _swiftEmptyArrayStorage;

    sub_10001E058(0, v3, 0);
    v4 = _swiftEmptyArrayStorage;
    v5 = v2 + 32;
    do
    {
      sub_10001C4A4(v5, v20);
      sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10014BC40;
      *(inited + 56) = sub_10002EB80(&qword_10019CA28, &unk_100152718);
      *(inited + 64) = &protocol witness table for Expression<A>;
      *(inited + 32) = 0x4E4F494E55;
      *(inited + 40) = 0xE500000000000000;
      *(inited + 48) = _swiftEmptyArrayStorage;
      v8 = v21;
      v7 = v22;
      sub_1000034B4(v20, v21);
      *(inited + 96) = v8;
      *(inited + 104) = *(v7 + 8);
      sub_100013234((inited + 72));
      sub_1000073F4();
      (*(v9 + 16))();
      sub_10000EF08(inited, v23);
      swift_setDeallocating();
      sub_100018898();
      sub_1000034F8(v20);
      v26 = v4;
      v11 = v4[2];
      v10 = v4[3];
      if (v11 >= v10 >> 1)
      {
        sub_10001E058((v10 > 1), v11 + 1, 1);
      }

      v12 = v24;
      v13 = v25;
      sub_10001C5D0(v23, v24);
      sub_10000518C();
      __chkstk_darwin(v14);
      sub_100002958();
      sub_100013A54();
      (*(v15 + 16))(v4);
      v16 = sub_10001E1D0();
      sub_10001E5C0(v16, v17, v18, v12, v13);
      sub_1000034F8(v23);
      v4 = v26;
      v5 += 40;
      --v3;
    }

    while (v3);
    sub_10001A940(&v27, &unk_10019CEE0);
    sub_10000EF08(v4, v19);
  }

  else
  {
    *(v1 + 32) = 0;
    *v1 = 0u;
    *(v1 + 16) = 0u;
  }

  sub_1000069EC();
}

double sub_10001A36C@<D0>(uint64_t *a1@<X8>)
{
  if (!*(*(v1 + 136) + 16))
  {
    return sub_100018530();
  }

  sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014BC40;
  v4 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
  *(inited + 64) = &protocol witness table for Expression<A>;
  *(inited + 32) = 0x594220524544524FLL;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = _swiftEmptyArrayStorage;
  *(inited + 56) = v4;

  sub_10000C124(v5, (inited + 72));

  sub_100009AA4(a1);
  swift_setDeallocating();
  sub_100018898();
  return result;
}

void sub_10001A450(uint64_t *a1@<X8>)
{
  if (*(v1 + 161))
  {
    sub_100018530();
  }

  else
  {
    v3 = *(v1 + 160);
    v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v4);

    if (v3)
    {
      v5 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
      a1[4] = &protocol witness table for Expression<A>;
      *a1 = 0x2054494D494CLL;
      a1[1] = 0xE600000000000000;
      a1[2] = _swiftEmptyArrayStorage;
      a1[3] = v5;
    }

    else
    {
      sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10014BC40;
      v7 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
      *(inited + 64) = &protocol witness table for Expression<A>;
      *(inited + 32) = 0x2054494D494CLL;
      *(inited + 40) = 0xE600000000000000;
      *(inited + 48) = _swiftEmptyArrayStorage;
      *(inited + 56) = v7;
      v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v8);

      *(inited + 96) = v7;
      *(inited + 104) = &protocol witness table for Expression<A>;
      *(inited + 72) = 0x2054455346464FLL;
      *(inited + 80) = 0xE700000000000000;
      *(inited + 88) = _swiftEmptyArrayStorage;
      sub_100009AA4(a1);
      swift_setDeallocating();
      sub_100018898();
    }
  }
}

uint64_t sub_10001A604(uint64_t a1)
{

  return CheckedContinuation.resume(throwing:)(v1 + 40, a1);
}

void sub_10001A620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  *(v19 + 16) = v21;
  v22 = v19 + 16 * v20;
  *(v22 + 32) = a19;
  *(v22 + 40) = a18;
}

uint64_t sub_10001A650()
{

  return sub_1000075C4(v1, 1, 1, v0);
}

void sub_10001A674(char a1, uint64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  if (a3)
  {
    sub_1000079A4();
    if (v13 != v14)
    {
      sub_100006A88();
      if (v13)
      {
        __break(1u);
        return;
      }

      sub_100007164();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = a4[2];
  if (v12 <= v15)
  {
    v16 = a4[2];
  }

  else
  {
    v16 = v12;
  }

  if (v16)
  {
    sub_10002EB80(a5, a6);
    v17 = swift_allocObject();
    v18 = j__malloc_size(v17);
    v17[2] = v15;
    v17[3] = 2 * ((v18 - 32) / 40);
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    if (v17 != a4 || &a4[5 * v15 + 4] <= v17 + 4)
    {
      memmove(v17 + 4, a4 + 4, 40 * v15);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10002EB80(a7, a8);
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_10001A798(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10001A7D8()
{

  return type metadata accessor for Logger();
}

uint64_t sub_10001A7F4()
{

  return type metadata accessor for Optional();
}

void *sub_10001A830(void *a1)
{
  *(v2 + 208) = v1[5];
  *(v2 + 216) = v1[6];

  return memmove(a1, v1 + 7, 24 * v3);
}

uint64_t sub_10001A85C()
{

  return swift_allocObject();
}

uint64_t sub_10001A874()
{
}

uint64_t sub_10001A8D0(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(v3 - 112) = result;
  *(v3 - 104) = a2;
  *(v3 - 96) = a3;
  return result;
}

void sub_10001A8DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  sub_100013640(v11, &a10);
}

uint64_t sub_10001A8FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 a14)
{
  *(v14 + 16) = v15;

  return sub_10001A798(&a14, v14 + v17 * v16 + 32);
}

uint64_t sub_10001A91C(uint64_t a1)
{

  return BidirectionalCollection<>.joined(separator:)();
}

uint64_t sub_10001A940(uint64_t a1, uint64_t x1_0)
{
  v4 = sub_1000FDAEC(a1, x1_0);
  sub_10002EB80(v4, v5);
  sub_1000073F4();
  (*(v6 + 8))(a1);
  return a1;
}

BOOL sub_10001A9A4()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_10001A9D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return sub_10001A798(&a9, va);
}

uint64_t sub_10001AA00()
{
  sub_1000034F8(v0);
}

uint64_t *sub_10001AA8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 64) = a2;
  v3 = (a1 + 32);

  return sub_100013234(v3);
}

void sub_10001AAB0(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t sub_10001ABB0(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return String.hash(into:)();
}

uint64_t sub_10001ABE0()
{
  *(v3 - 128) = v2;
  *(v3 - 120) = v1;
  *(v3 - 112) = v0;
  *(v3 - 168) = 40;
  *(v3 - 160) = 0xE100000000000000;
}

uint64_t Connection.prepare(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v7 = sub_10001209C();
    result = Connection.prepare(_:_:)(v7, v8, v9);
    if (!v3)
    {
      v11 = Statement.bind(_:)(a3);

      return v11;
    }
  }

  else
  {
    type metadata accessor for Statement();
    swift_allocObject();

    return sub_10001AD60(v12, a1, a2);
  }

  return result;
}

uint64_t Connection.handle.getter(uint64_t a1, uint64_t a2)
{
  sub_100011208(v2 + 16, a2);
  result = *(v2 + 16);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001AD60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = 0;
  *(v3 + 40) = 1;
  *(v3 + 56) = 0;
  *(v3 + 64) = 0;
  *(v3 + 48) = 0;
  *(v3 + 24) = a1;
  *(v3 + 32) = 0;
  v5 = Connection.handle.getter(a1, a2);
  v6 = String.utf8CString.getter();

  swift_beginAccess();
  v7 = sqlite3_prepare_v2(v5, (v6 + 32), -1, (v3 + 16), 0);
  swift_endAccess();

  sub_100015DD4(v7, 0);
  sub_1000053AC();
  if (v4)
  {
  }

  return v3;
}

uint64_t Statement.bind(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
  }

  sub_10001AFE8(1);
  sub_100008318();
  swift_beginAccess();
  if (v2 == sqlite3_bind_parameter_count(*(v1 + 16)))
  {
    v4 = a1 + 32;
    v5 = -v2;
    v6 = 1;
    do
    {
      sub_10001B038(v4, v6++);
      v4 += 40;
    }

    while (v5 + v6 != 1);
  }

  _StringGuts.grow(_:)(29);
  sqlite3_bind_parameter_count(*(v1 + 16));
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  v10 = v9;

  v11._object = 0x8000000100158FD0;
  v11._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v11);
  v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v12);

  v13._countAndFlagsBits = 0x64657373617020;
  v13._object = 0xE700000000000000;
  String.append(_:)(v13);
  result = sub_100007418("Fatal error", v14, v15, v8, v10, "AppIntents_SQLite/Statement.swift");
  __break(1u);
  return result;
}

{
  sub_10001AFE8(1);
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);

  sub_100008318();
  swift_beginAccess();
  v8 = 0;
  v9 = (v5 + 63) >> 6;
  if (v7)
  {
    while (1)
    {
      v10 = v8;
LABEL_8:
      v11 = __clz(__rbit64(v7)) | (v10 << 6);
      v12 = (*(a1 + 48) + 16 * v11);
      v3 = *v12;
      v2 = v12[1];
      sub_10001B618(*(a1 + 56) + 40 * v11, &v23);
      v21 = v23;
      v22 = v24;
      v13 = v25;

      if (!v2)
      {
        break;
      }

      v23 = v21;
      v24 = v22;
      v25 = v13;
      v14 = *(v1 + 16);
      v15 = String.utf8CString.getter();
      v16 = sqlite3_bind_parameter_index(v14, (v15 + 32));

      if (v16 < 1)
      {
        goto LABEL_14;
      }

      v7 &= v7 - 1;

      sub_10001B038(&v23, v16);
      sub_100003E9C(&v23, &qword_100199ED0, &qword_10014ED20);
      v8 = v10;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

LABEL_12:
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        goto LABEL_12;
      }

      v7 = *(a1 + 64 + 8 * v10);
      ++v8;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_14:
    _StringGuts.grow(_:)(23);

    v18._countAndFlagsBits = v3;
    v18._object = v2;
    String.append(_:)(v18);
    result = sub_100007418("Fatal error", v19, v20, 0xD000000000000015, 0x8000000100158FF0, "AppIntents_SQLite/Statement.swift");
    __break(1u);
  }

  return result;
}

uint64_t sub_10001AFE8(char a1)
{
  swift_beginAccess();
  result = sqlite3_reset(*(v1 + 16));
  if (a1)
  {
    return sqlite3_clear_bindings(*(v1 + 16));
  }

  return result;
}

uint64_t sub_10001B038(sqlite3_int64 a1, uint64_t a2)
{
  if (!*(a1 + 24))
  {
    swift_beginAccess();
    if (a2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a2 <= 0x7FFFFFFF)
    {
      return sqlite3_bind_null(v2[2], a2);
    }

    __break(1u);
    goto LABEL_46;
  }

  sub_10001B618(a1, v15);
  if (v16)
  {
    sub_10002EB80(&unk_10019ABC0, &qword_10014F8D0);
    if (swift_dynamicCast())
    {
      v3 = v13;
      swift_beginAccess();
      if (a2 >= 0xFFFFFFFF80000000)
      {
        if (a2 <= 0x7FFFFFFF)
        {
          v4 = *(v13 + 16);
          if (!(v4 >> 31))
          {
            v2 = v2[2];
            if (qword_10019CA00 == -1)
            {
LABEL_8:
              sqlite3_bind_blob(v2, a2, (v3 + 32), v4, qword_10019E5B8);
            }

LABEL_49:
            swift_once();
            goto LABEL_8;
          }

LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

LABEL_46:
      __break(1u);
      goto LABEL_47;
    }
  }

  else
  {
    sub_100003E9C(v15, &qword_100199ED0, &qword_10014ED20);
  }

  sub_10001B618(a1, v15);
  if (v16)
  {
    sub_10002EB80(&unk_10019ABC0, &qword_10014F8D0);
    if (swift_dynamicCast())
    {
      swift_beginAccess();
      if (a2 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (a2 <= 0x7FFFFFFF)
      {
        return sqlite3_bind_double(v2[2], a2, *&v13);
      }

      __break(1u);
      goto LABEL_52;
    }
  }

  else
  {
    sub_100003E9C(v15, &qword_100199ED0, &qword_10014ED20);
  }

  sub_10001B618(a1, v15);
  if (v16)
  {
    sub_10002EB80(&unk_10019ABC0, &qword_10014F8D0);
    if (swift_dynamicCast())
    {
      swift_beginAccess();
      if (a2 >= 0xFFFFFFFF80000000)
      {
        if (a2 <= 0x7FFFFFFF)
        {
          return sqlite3_bind_int64(v2[2], a2, v13);
        }

        goto LABEL_53;
      }

LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }
  }

  else
  {
    sub_100003E9C(v15, &qword_100199ED0, &qword_10014ED20);
  }

  sub_10001B618(a1, v15);
  if (v16)
  {
    sub_10002EB80(&unk_10019ABC0, &qword_10014F8D0);
    if (swift_dynamicCast())
    {
      swift_beginAccess();
      if (a2 >= 0xFFFFFFFF80000000)
      {
        if (a2 <= 0x7FFFFFFF)
        {
          v2 = v2[2];
          if (qword_10019CA00 == -1)
          {
LABEL_30:
            v8 = qword_10019E5B8;
            v9 = String.utf8CString.getter();

            sqlite3_bind_text(v2, a2, (v9 + 32), -1, v8);
          }

LABEL_56:
          swift_once();
          goto LABEL_30;
        }

LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

LABEL_54:
      __break(1u);
      goto LABEL_55;
    }
  }

  else
  {
    sub_100003E9C(v15, &qword_100199ED0, &qword_10014ED20);
  }

  sub_10001B618(a1, v15);
  if (v16)
  {
    sub_10002EB80(&unk_10019ABC0, &qword_10014F8D0);
    if (swift_dynamicCast())
    {
      v10 = v13;
LABEL_39:
      v16 = &type metadata for Int64;
      v17 = &protocol witness table for Int64;
      v15[0] = v10;
      sub_10001B038(v15, a2);
      v11 = v15;
      return sub_100003E9C(v11, &qword_100199ED0, &qword_10014ED20);
    }
  }

  else
  {
    sub_100003E9C(v15, &qword_100199ED0, &qword_10014ED20);
  }

  sub_10001B618(a1, v15);
  if (v16)
  {
    sub_10002EB80(&unk_10019ABC0, &qword_10014F8D0);
    if (swift_dynamicCast())
    {
      v10 = v13;
      goto LABEL_39;
    }
  }

  else
  {
    sub_100003E9C(v15, &qword_100199ED0, &qword_10014ED20);
  }

  sub_10001B618(a1, &v13);
  if (!v14)
  {
    v11 = &v13;
    return sub_100003E9C(v11, &qword_100199ED0, &qword_10014ED20);
  }

  sub_1000716A0(&v13, v15);
  *&v13 = 0;
  *(&v13 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(33);
  v12._object = 0x80000001001590C0;
  v12._countAndFlagsBits = 0xD00000000000001FLL;
  String.append(_:)(v12);
  sub_10002EB80(&unk_10019ABC0, &qword_10014F8D0);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10001B618(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002EB80(&qword_100199ED0, &qword_10014ED20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_10001B688(void *a1)
{
  v2 = v1;
  v4 = swift_allocObject();
  v140 = swift_allocObject();
  v141 = v4;
  *(v4 + 16) = _swiftEmptyDictionarySingleton;
  v126 = (v4 + 16);
  *(v140 + 16) = 0;
  v5 = a1[3];
  v6 = a1[4];
  v142 = a1;
  sub_1000034B4(a1, v5);
  (*(v6 + 16))(v153, v5, v6);
  v7 = v153[1];

  sub_100018C3C(v153);
  v8 = *(v7 + 16);
  v125 = (v140 + 16);
  swift_beginAccess();
  v9 = 0;
  v130 = v7 + 32;
  v131 = v7;
  v127 = v8;
  while (1)
  {
    while (1)
    {
      if (v9 == v8)
      {

        swift_beginAccess();
        v46 = *(v141 + 16);

        return v46;
      }

      if (v9 >= *(v131 + 16))
      {
        goto LABEL_101;
      }

      v134 = v9;
      sub_10001C4A4(v130 + 40 * v9, v150);
      v10 = v151;
      v11 = v152;
      sub_1000034B4(v150, v151);
      v12 = (*(v11 + 8))(v10, v11);
      v14 = v13;

      v15 = HIBYTE(v14) & 0xF;
      if ((v14 & 0x2000000000000000) == 0)
      {
        v15 = v12 & 0xFFFFFFFFFFFFLL;
      }

      if (v15)
      {
        v136 = v2;
        v16 = _swiftEmptyArrayStorage;
        v17 = 4 * v15;
        v18 = 15;
LABEL_8:
        v132 = v16;
        for (i = v18; ; i = String.index(after:)())
        {
          v20 = i >> 14;
          v21 = v18 >> 14;
          if (i >> 14 == v17)
          {
            break;
          }

          if (String.subscript.getter() == 46 && v22 == 0xE100000000000000)
          {

LABEL_17:
            if (v21 == v20)
            {
              v16 = v132;
            }

            else
            {
              if (v20 < v21)
              {
                goto LABEL_104;
              }

              v25 = String.subscript.getter();
              v27 = v26;
              v128 = v29;
              v129 = v28;
              v16 = v132;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_10001C504();
                v16 = v32;
              }

              v30 = v16[2];
              if (v30 >= v16[3] >> 1)
              {
                sub_10001C504();
                v16 = v33;
              }

              v16[2] = v30 + 1;
              v31 = &v16[4 * v30];
              v31[4] = v25;
              v31[5] = v27;
              v31[6] = v129;
              v31[7] = v128;
            }

            v18 = String.index(after:)();
            goto LABEL_8;
          }

          v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v24)
          {
            goto LABEL_17;
          }
        }

        v34 = v132;
        if (v21 == v17)
        {

          v2 = v136;
        }

        else
        {
          v2 = v136;
          if (v17 < v21)
          {
            goto LABEL_105;
          }

          v35 = String.subscript.getter();
          v37 = v36;
          v39 = v38;
          v41 = v40;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_10001C504();
            v34 = v121;
          }

          v42 = v34[2];
          if (v42 >= v34[3] >> 1)
          {
            sub_10001C504();
            v34 = v122;
          }

          v34[2] = v42 + 1;
          v43 = &v34[4 * v42];
          v43[4] = v35;
          v43[5] = v37;
          v43[6] = v39;
          v43[7] = v41;
        }
      }

      else
      {

        v34 = _swiftEmptyArrayStorage;
      }

      v44 = v34[2];
      if (v44)
      {
        v137 = v2;
        __src[0] = _swiftEmptyArrayStorage;
        sub_100011438(0, v44, 0);
        v45 = 0;
        v46 = __src[0];
        v47 = v34 + 7;
        while (v45 < v34[2])
        {
          v48 = v44;
          v49 = v34;

          v50 = static String._fromSubstring(_:)();
          v52 = v51;

          __src[0] = v46;
          v53 = v46[2];
          v54 = v46[3];
          if (v53 >= v54 >> 1)
          {
            sub_100011438(v54 > 1, v53 + 1, 1);
            v46 = __src[0];
          }

          ++v45;
          v46[2] = v53 + 1;
          v55 = &v46[2 * v53];
          v55[4] = v50;
          v55[5] = v52;
          v47 += 4;
          v44 = v48;
          v34 = v49;
          if (v48 == v45)
          {

            v2 = v137;
            goto LABEL_43;
          }
        }

        __break(1u);
LABEL_98:

        sub_1000034F8(__src);
LABEL_94:
        sub_1000034F8(v147);
        sub_1000034F8(v150);

        return v46;
      }

      v46 = _swiftEmptyArrayStorage;
LABEL_43:
      if (!v46[2])
      {
        goto LABEL_102;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1001340BC();
        v46 = v120;
      }

      v56 = v46[2];
      if (!v56)
      {
        goto LABEL_103;
      }

      v57 = v56 - 1;
      v58 = &v46[2 * v57];
      v60 = v58[4];
      v59 = v58[5];
      v135 = v134 + 1;
      v46[2] = v57;
      __src[0] = v46;

      sub_10002EB80(&unk_10019ACC0, &qword_1001507B0);
      sub_1001340D0(&qword_10019BB00, &unk_10019ACC0, &qword_1001507B0, &protocol conformance descriptor for [A]);
      v61 = BidirectionalCollection<>.joined(separator:)();
      v63 = v62;

      if (v60 == 42 && v59 == 0xE100000000000000)
      {
        break;
      }

      v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v65)
      {
        goto LABEL_59;
      }

      v66 = v2;

      v67 = v151;
      v68 = v152;
      sub_1000034B4(v150, v151);
      v69 = (*(v68 + 8))(v67, v68);
      v71 = v70;

      v72 = *v125;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      __dst[0] = *v126;
      v74 = __dst[0];
      v75 = sub_10000C2A0(v69, v71);
      v77 = *(v74 + 16);
      v78 = (v76 & 1) == 0;
      v79 = v77 + v78;
      if (__OFADD__(v77, v78))
      {
        goto LABEL_106;
      }

      v80 = v75;
      v81 = v76;
      sub_10002EB80(&qword_10019CEF8, &unk_1001532B0);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v79))
      {
        v82 = sub_10000C2A0(v69, v71);
        if ((v81 & 1) != (v83 & 1))
        {
          goto LABEL_109;
        }

        v80 = v82;
      }

      v2 = v66;
      v84 = __dst[0];
      if (v81)
      {
        *(*(__dst[0] + 56) + 8 * v80) = v72;
      }

      else
      {
        *(__dst[0] + 8 * (v80 >> 6) + 64) |= 1 << v80;
        v116 = (v84[6] + 16 * v80);
        *v116 = v69;
        v116[1] = v71;
        *(v84[7] + 8 * v80) = v72;
        v117 = v84[2];
        v118 = __OFADD__(v117, 1);
        v119 = v117 + 1;
        if (v118)
        {
          goto LABEL_108;
        }

        v84[2] = v119;
      }

      *v126 = v84;
      swift_endAccess();
      v8 = v127;
      if (__OFADD__(v72, 1))
      {
        goto LABEL_107;
      }

      *v125 = v72 + 1;
      sub_1000034F8(v150);
LABEL_91:
      v9 = v135;
    }

LABEL_59:
    sub_10001C4A4(v142, v147);
    sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
    v85 = swift_allocObject();
    *(v85 + 16) = xmmword_10014CE90;
    *(v85 + 56) = sub_10002EB80(&qword_10019CA28, &unk_100152718);
    *(v85 + 64) = &protocol witness table for Expression<A>;
    *(v85 + 32) = 42;
    *(v85 + 40) = 0xE100000000000000;
    *(v85 + 48) = _swiftEmptyArrayStorage;
    v86 = v148;
    v87 = v149;
    sub_10001C5D0(v147, v148);
    v88 = (*(v87 + 32))(__src, v86, v87);
    *v89 = 0;
    *(v89 + 8) = v85;

    v88(__src, 0);
    sub_10002EB80(&qword_10019CC98, &qword_100152B20);
    v90 = swift_allocObject();
    *(v90 + 16) = xmmword_10014CE90;
    v133 = v90;
    sub_10001C4A4(v147, v90 + 32);
    v91 = v142[3];
    v92 = v142[4];
    sub_1000034B4(v142, v91);
    (*(v92 + 16))(v154, v91, v92);
    v93 = v155;
    v159 = v155;

    sub_100018C3C(v154);
    v94 = *(v93 + 16);
    if (v94)
    {
      v146 = _swiftEmptyArrayStorage;
      sub_100128C00(0, v94, 0);
      v95 = v146;
      v96 = v93 + 32;
      do
      {
        sub_100011F4C();
        memcpy(__dst, __src, sizeof(__dst));
        sub_10001A798(&__dst[1], v145);
        sub_10001A940(&__dst[6], &unk_10019CBC0);
        v146 = v95;
        v98 = v95[2];
        v97 = v95[3];
        if (v98 >= v97 >> 1)
        {
          sub_100128C00((v97 > 1), v98 + 1, 1);
          v95 = v146;
        }

        v95[2] = v98 + 1;
        sub_10001A798(v145, &v95[5 * v98 + 4]);
        v96 += 88;
        --v94;
      }

      while (v94);
      sub_10001A940(&v159, &unk_10019CEE8);
    }

    else
    {
      sub_10001A940(&v159, &unk_10019CEE8);

      v95 = _swiftEmptyArrayStorage;
    }

    __src[0] = v133;
    v46 = __src;
    sub_10001C620(v95);
    v99 = __src[0];
    v100 = HIBYTE(v63) & 0xF;
    if ((v63 & 0x2000000000000000) == 0)
    {
      v100 = v61 & 0xFFFFFFFFFFFFLL;
    }

    if (!v100)
    {
      break;
    }

    v138 = v2;
    v101 = 0;
    v102 = *(__src[0] + 16);
    for (j = __src[0] + 32; ; j += 40)
    {
      if (v102 == v101)
      {

        sub_100133A50();
        swift_allocError();
        *v123 = v61;
        *(v123 + 8) = v63;
        *(v123 + 16) = 0;
        *(v123 + 24) = 0;
        swift_willThrow();
        goto LABEL_94;
      }

      if (v101 >= *(v99 + 16))
      {
        __break(1u);
        goto LABEL_100;
      }

      sub_10001C4A4(j, __src);
      sub_1000034B4(__src, __src[3]);
      sub_100017FF8();
      sub_100017D44();
      v104 = __dst[3];
      v105 = __dst[4];
      sub_1000034B4(__dst, __dst[3]);
      v106 = (*(v105 + 8))(v104, v105);
      v46 = v107;

      if (v106 == v61 && v46 == v63)
      {
        break;
      }

      v109 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_1000034F8(__dst);
      if (v109)
      {
        goto LABEL_84;
      }

      sub_1000034F8(__src);
      ++v101;
    }

    sub_1000034F8(__dst);
LABEL_84:

    sub_10001C7B4(__src, v139, 1, v141, v140);
    v2 = v138;
    v8 = v127;
    if (v138)
    {
      goto LABEL_98;
    }

    sub_1000034F8(__src);
    sub_1000034F8(v147);
    sub_1000034F8(v150);
    v9 = v135;
  }

  v110 = 0;
  v111 = *(v99 + 16);
  for (k = v99 + 32; ; k += 40)
  {
    if (v111 == v110)
    {

      sub_1000034F8(v147);
      sub_1000034F8(v150);
      v8 = v127;
      goto LABEL_91;
    }

    if (v110 >= *(v99 + 16))
    {
      break;
    }

    sub_10001C4A4(k, __src);
    v113 = v142[3];
    v114 = v142[4];
    sub_1000034B4(v142, v113);
    (*(v114 + 16))(v156, v113, v114);
    v115 = v157;
    v158 = v157;

    sub_100018C3C(v156);
    v46 = *(v115 + 16);
    sub_10001A940(&v158, &unk_10019CEE8);
    sub_10001C7B4(__src, v139, v46 != 0, v141, v140);
    if (v2)
    {
      sub_1000034F8(__src);

      goto LABEL_94;
    }

    ++v110;
    sub_1000034F8(__src);
  }

LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10001C45C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001C4A4(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  sub_1000073F4();
  (*v3)(a2);
  return a2;
}

void sub_10001C504()
{
  sub_1000088A4();
  if (v4)
  {
    sub_1000079A4();
    if (v5 != v6)
    {
      sub_100006A88();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100007164();
    }
  }

  sub_100006778();
  if (v3)
  {
    sub_10002EB80(&qword_10019B3B0, &unk_100150190);
    v7 = sub_10001A85C();
    sub_100011820(v7);
    sub_100011108(v8);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v9 = sub_10000751C();
  if (v1)
  {
    if (v3 != v0 || &v10[32 * v2] <= v9)
    {
      memmove(v9, v10, 32 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_10001C5D0(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

void sub_10001C648(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t *a3, uint64_t *a4)
{
  v6 = *(a1 + 16);
  v7 = *(*v4 + 16);
  if (__OFADD__(v7, v6))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  a2(v7 + v6, 1);
  v10 = *v4;
  if (!*(a1 + 16))
  {

    if (!v6)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_10012E798();
  if (v12 != v13)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v14 = v10 + 40 * v11;
  v15 = sub_10002EB80(a3, a4);
  sub_100011560(v14 + 32, v16, v17, v15);

  if (!v6)
  {
LABEL_8:
    *v4 = v10;
    return;
  }

  v18 = *(v10 + 16);
  v13 = __OFADD__(v18, v6);
  v19 = v18 + v6;
  if (!v13)
  {
    *(v10 + 16) = v19;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_10001C724(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_10001C7B4(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v77 = a2;
  v75 = a4;
  v76 = a5;
  LODWORD(v73) = a3;
  sub_1000034B4(a1, a1[3]);
  DynamicType = swift_getDynamicType();
  v7 = a1[3];
  v8 = a1[4];
  sub_1000034B4(a1, v7);
  (*(v8 + 16))(v83, v7, v8);
  v9 = v83[3];
  v74 = v83[2];

  sub_100018C3C(v83);
  v10 = a1[3];
  v11 = a1[4];
  sub_1000034B4(a1, v10);
  (*(v11 + 16))(v84, v10, v11);
  v12 = v84[6];
  v13 = v84[7];

  sub_100018C3C(v84);
  v14 = *(v8 + 40);
  v81 = DynamicType;
  v82 = v8;
  sub_100013234(v80);
  v14(v74, v9, v12, v13, DynamicType, v8);
  v15 = a1[3];
  v16 = a1[4];
  sub_1000034B4(a1, v15);
  (*(v16 + 16))(v85, v15, v16);
  LOBYTE(v8) = v85[0];
  v17 = v85[1];

  sub_100018C3C(v85);
  v18 = v81;
  v19 = v82;
  sub_10001C5D0(v80, v81);
  v20 = (*(v19 + 32))(v79, v18, v19);
  *v21 = v8;
  *(v21 + 8) = v17;

  v20(v79, 0);
  v23 = v81;
  v22 = v82;
  sub_1000034B4(v80, v81);
  v24 = (*(*(v22 + 8) + 8))(v23);
  v26 = v25;
  Connection.prepare(_:_:)(v24, v27, _swiftEmptyArrayStorage);
  if (v78)
  {

    return sub_1000034F8(v80);
  }

  v72 = 0;
  Statement.bind(_:)(v26);

  Statement.columnNames.getter();
  v30 = v29;

  v31 = *(v30 + 16);
  if (v31)
  {
    v79[0] = _swiftEmptyArrayStorage;
    sub_100011438(0, v31, 0);
    v32 = v79[0];
    v78 = v30;
    v33 = (v30 + 40);
    do
    {
      v35 = *(v33 - 1);
      v34 = *v33;

      v36 = sub_1000198BC(34, 0xE100000000000000, v35, v34);
      v38 = v37;

      v79[0] = v32;
      v40 = v32[2];
      v39 = v32[3];
      v41 = v32;
      if (v40 >= v39 >> 1)
      {
        sub_100011438(v39 > 1, v40 + 1, 1);
        v41 = v79[0];
      }

      v41[2] = v40 + 1;
      v42 = &v41[2 * v40];
      v42[4] = v36;
      v42[5] = v38;
      v33 += 2;
      --v31;
      v32 = v41;
    }

    while (v31);
  }

  else
  {

    v32 = _swiftEmptyArrayStorage;
  }

  if (v73)
  {
    __chkstk_darwin(v43);
    v71[2] = a1;
    v44 = v72;
    v45 = sub_10012EBBC(sub_100134114, v71, v32);
    v72 = v44;

    v32 = v45;
  }

  v47 = v75;
  v46 = v76;
  v74 = v32[2];
  if (!v74)
  {
LABEL_25:

    return sub_1000034F8(v80);
  }

  swift_beginAccess();
  swift_beginAccess();
  v48 = 0;
  v49 = v32 + 5;
  v73 = v32;
  while (v48 < v32[2])
  {
    v50 = *(v49 - 1);
    v51 = *v49;
    v78 = *(v46 + 16);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v86 = *(v47 + 16);
    v53 = v86;
    *(v47 + 16) = 0x8000000000000000;
    v77 = v50;
    v54 = sub_10000C2A0(v50, v51);
    v56 = v53[2];
    v57 = (v55 & 1) == 0;
    v58 = v56 + v57;
    if (__OFADD__(v56, v57))
    {
      goto LABEL_27;
    }

    v59 = v54;
    v60 = v55;
    sub_10002EB80(&qword_10019CEF8, &unk_1001532B0);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v58))
    {
      v61 = sub_10000C2A0(v77, v51);
      v32 = v73;
      if ((v60 & 1) != (v62 & 1))
      {
        goto LABEL_30;
      }

      v59 = v61;
      if (v60)
      {
LABEL_22:

        v63 = v86;
        *(v86[7] + 8 * v59) = v78;
        goto LABEL_23;
      }
    }

    else
    {
      v32 = v73;
      if (v60)
      {
        goto LABEL_22;
      }
    }

    v63 = v86;
    v86[(v59 >> 6) + 8] |= 1 << v59;
    v64 = (v63[6] + 16 * v59);
    v65 = v78;
    *v64 = v77;
    v64[1] = v51;
    *(v63[7] + 8 * v59) = v65;
    v66 = v63[2];
    v67 = __OFADD__(v66, 1);
    v68 = v66 + 1;
    if (v67)
    {
      goto LABEL_29;
    }

    v63[2] = v68;
LABEL_23:
    v47 = v75;
    *(v75 + 16) = v63;
    swift_endAccess();
    v46 = v76;
    v69 = *(v76 + 16);
    v67 = __OFADD__(v69, 1);
    v70 = v69 + 1;
    if (v67)
    {
      goto LABEL_28;
    }

    ++v48;
    *(v76 + 16) = v70;
    v49 += 2;
    if (v74 == v48)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void ScalarQuery.init(_:database:)()
{
  sub_10001AB9C();
  v5 = v4;
  v6 = sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  v7 = sub_100004C0C(v6);
  *(v7 + 16) = xmmword_10014CE90;
  sub_10002EB80(&qword_10019CA28, &unk_100152718);
  sub_1000129F4(&protocol witness table for Expression<A>);
  *(v7 + 48) = _swiftEmptyArrayStorage;
  *(v7 + 56) = v8;
  *v5 = 0;
  *(v5 + 8) = v7;
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  *(v5 + 48) = v1;
  *(v5 + 56) = v0;
  *(v5 + 64) = 1;
  *(v5 + 72) = _swiftEmptyArrayStorage;
  sub_10000536C(_swiftEmptyArrayStorage, 0);
}

BOOL sub_10001CEB0()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1 & 1, v0);
}

uint64_t Statement.columnCount.getter()
{
  if (*(v0 + 40) != 1)
  {
    return *(v0 + 32);
  }

  sub_100002ECC();
  swift_beginAccess();
  result = sqlite3_column_count(*(v0 + 16));
  *(v0 + 32) = result;
  *(v0 + 40) = 0;
  return result;
}

void Statement.columnNames.getter()
{
  if (*(v0 + 48))
  {

    return;
  }

  v1 = Statement.columnCount.getter();
  if (v1 < 0xFFFFFFFF80000000)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v2 = v1;
  if (v1 > 0x7FFFFFFF)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v1 < 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!v1)
  {
LABEL_13:
    *(v0 + 48) = _swiftEmptyArrayStorage;

    return;
  }

  sub_100011438(0, v1, 0);
  sub_100008318();
  swift_beginAccess();
  v3 = 0;
  while (sqlite3_column_name(*(v0 + 16), v3))
  {
    v4 = String.init(cString:)();
    v6 = v5;
    v8 = _swiftEmptyArrayStorage[2];
    v7 = _swiftEmptyArrayStorage[3];
    if (v8 >= v7 >> 1)
    {
      sub_100011438(v7 > 1, v8 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v8 + 1;
    v9 = &_swiftEmptyArrayStorage[2 * v8];
    v9[4] = v4;
    v9[5] = v6;
    if (v2 == v3)
    {
      __break(1u);
      goto LABEL_15;
    }

    if (v2 == ++v3)
    {
      goto LABEL_13;
    }
  }

LABEL_18:
  __break(1u);
}

uint64_t Statement.__deallocating_deinit()
{
  Statement.deinit();

  return _swift_deallocClassInstance(v0);
}

uint64_t Statement.deinit()
{
  sub_100002ECC();
  swift_beginAccess();
  sqlite3_finalize(*(v0 + 16));

  return v0;
}

void sub_10001D13C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (qword_1001983E8 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  v7 = v11;
  v6 = v12;
  if (qword_1001983F0 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)(qword_10019E4F8, unk_10019E500, a1, a2, &type metadata for String, &protocol witness table for String, &v11);
  v9 = v11;
  v8 = v12;
  if (qword_1001983F8 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  v10 = v11;
  *a3 = v7;
  a3[1] = v6;
  a3[2] = v9;
  a3[3] = v8;
  a3[4] = v10;
}

uint64_t sub_10001D304()
{
}

uint64_t sub_10001D31C()
{

  return swift_arrayDestroy();
}

void sub_10001D338(char a1, uint64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6)
{

  sub_10001A674(a1, a2, a3, a4, a5, a6, v6, v7);
}

uint64_t sub_10001D350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);

  return sub_100013334(va, v28 + 72);
}

uint64_t sub_10001D3C8(uint64_t a1)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10001D400(uint64_t a1)
{
  sub_100027014();
  sub_1000036C4();
  v3 = v1;
  v5 = v4;
  v7 = v6;
  sub_1000036D0();
  v9 = v8;
  sub_10000788C();
  *v10 = v9;
  v12 = *(v11 + 16);
  v13 = *v2;
  sub_10000298C();
  *v14 = v13;

  if (v3)
  {
    _convertErrorToNSError(_:)();
    sub_10001D304();
    sub_10001725C();
  }

  else if (v5)
  {
    sub_100091D5C();
    String._bridgeToObjectiveC()();
    sub_100091E9C();

    sub_100091ED8();
  }

  else
  {
    v7 = 0;
  }

  v15 = *(v9 + 24);
  v16 = sub_10001AB0C();
  v17(v16);

  _Block_release(v15);
  sub_100003A00();
  sub_100091EFC();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25);
}

uint64_t sub_10001D55C()
{
}

BOOL sub_10001D594(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v10, v11);
}

BOOL sub_10001D5C8()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_10001D5E0()
{

  return sub_1001102E0(v0, v1);
}

void sub_10001D664(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t sub_10001D6A8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a5 + 16);
  v10(v22, a3, a5);
  v11 = v22[3];
  v18 = v22[2];

  sub_100018C3C(v22);
  v10(v23, a3, a5);
  v13 = v23[6];
  v12 = v23[7];

  sub_100018C3C(v23);
  (*(a6 + 40))(v18, v11, v13, v12, a4, a6);
  v10(v24, a3, a5);
  (*(a6 + 24))(v24, a4, a6);
  v14 = *(a6 + 32);

  v15 = v14(v21, a4, a6);
  *v16 = a1;
  *(v16 + 8) = a2;

  return v15(v21, 0);
}

void *sub_10001D840(const void *a1)
{
  memcpy(v4, v1, sizeof(v4));
  sub_10001970C(v4);
  return memcpy(v1, a1, 0xB0uLL);
}

uint64_t == infix<A>(_:_:)()
{
  sub_100012AF8();
  return sub_10001D890();
}

{
  sub_100012AF8();
  return sub_10012C034();
}

{
  sub_10012E858();
  return sub_10012C1B4(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11);
}

{
  sub_10000472C();
  return sub_10012C6A4(v0);
}

{
  sub_10012E858();
  return sub_10012C818(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11);
}

uint64_t sub_10001D9E4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return static String._unconditionallyBridgeFromObjectiveC(_:)();
}

void QueryType.join(_:_:on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  sub_100134208();
  a45 = v46;
  a46 = v47;
  v72 = v48;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v63 = v57[3];
  v64 = v57[4];
  sub_1000034B4(v57, v63);
  (*(v64 + 16))(&a12, v63, v64);
  v65 = a23;
  v66 = sub_100007A28();
  sub_100018C6C(v66, v67, v68);
  sub_100018C3C(&a12);

  if (v65)
  {
    v56 = && infix(_:_:)(v56);
    sub_10001D69C();
    v69 = sub_100007A28();
    sub_100018CD0(v69, v70, v71);
  }

  sub_10001DB48(v60, v58, v56, v54, v52, v50, v72, v62);

  sub_100018D9C();
}

uint64_t sub_10001DB48@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_1000073F4();
  (*(v15 + 16))(a8, v17, v16);
  sub_10001C4A4(a2, v35);
  if (a4)
  {
    v18 = sub_10002EB80(&qword_10019CBE0, &unk_100152980);
    v19 = &protocol witness table for Expression<A>;
    v20 = a5;
    v21 = a3;
  }

  else
  {
    v19 = 0;
    v18 = 0;
    v20 = 0;
    v21 = 0;
  }

  LOBYTE(__src[0]) = a1;
  sub_10001A798(v35, &__src[1]);
  __src[6] = v21;
  __src[7] = a4;
  __src[8] = v20;
  __src[9] = v18;
  __src[10] = v19;
  v22 = *(a7 + 32);
  sub_10001DD70();
  sub_100018C6C(v23, v24, v25);
  v26 = v22(v33, a6, a7);
  v28 = v27;
  sub_10001DDD4();
  v29 = *(*(v28 + 72) + 16);
  sub_10001DF24(v29);
  v30 = *(v28 + 72);
  *(v30 + 16) = v29 + 1;
  memcpy((v30 + 88 * v29 + 32), __src, 0x58uLL);
  return v26(v33, 0);
}

uint64_t sub_10001DCDC()
{

  return sub_10008160C(v0, v2, v1);
}

uint64_t sub_10001DD04()
{

  return swift_slowAlloc();
}

uint64_t sub_10001DD7C(uint64_t (*a1)(void))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    sub_10000274C();
    result = a1();
    *v1 = result;
  }

  return result;
}

void *sub_10001DDEC(void *result, int64_t a2, char a3, void *a4)
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
    sub_10002EB80(&qword_10019CCA8, &qword_100152B38);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[11 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 88 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10002EB80(&qword_10019CCB0, &unk_100152B40);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_10001DF3C(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_10001DF8C(void *a1, uint64_t a2)
{
  Connection.prepareRowIterator(_:)(a1);
  if (!v2)
  {
    type metadata accessor for LNActionRecord(0);

    RowIterator.compactMap<A>(_:)();
    v3 = v5;
  }

  return v3;
}

char *sub_10001E058(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100128C40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_10001E078(uint64_t a1, ...)
{

  return String.hash(into:)();
}

uint64_t sub_10001E0A4()
{

  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t sub_10001E11C()
{
  sub_1000034F8(v0);
}

void sub_10001E160(uint64_t a1)
{
  v2 = 0xEA00000000007265;

  String.append(_:)(*&a1);
}

uint64_t sub_10001E178(void *a1)
{
  sub_1000034B4(a1, v1);

  return Expressible.asSQL()()._countAndFlagsBits;
}

uint64_t sub_10001E1B0()
{
}

uint64_t sub_10001E1DC@<X0>(uint64_t *a1@<X8>)
{
  sub_100011F4C();
  v2 = v21;
  sub_10001A798(v22, v25);
  v23[0] = *&v22[5];
  v23[1] = *&v22[7];
  v24 = v22[9];
  sub_100011F4C();
  if (v20)
  {
    sub_10001A798(&v19, &v21);
    sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10014ECA0;
    v4 = 0xE000000000000000;
    *&v19 = 0;
    *(&v19 + 1) = 0xE000000000000000;
    v5 = 0;
    switch(v2)
    {
      case 1:
        v4 = 0xE500000000000000;
        v5 = 0x52454E4E49;
        break;
      case 2:
        v5 = 0x54554F205446454CLL;
        v4 = 0xEA00000000005245;
        break;
      case 3:
        break;
      default:
        v4 = 0xE500000000000000;
        v5 = 0x53534F5243;
        break;
    }

    v9 = v4;
    String.append(_:)(*&v5);

    v10._countAndFlagsBits = 0x4E494F4A20;
    v10._object = 0xE500000000000000;
    String.append(_:)(v10);
    v11 = v19;
    v12 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
    *(inited + 64) = &protocol witness table for Expression<A>;
    *(inited + 32) = v11;
    *(inited + 48) = _swiftEmptyArrayStorage;
    *(inited + 56) = v12;
    sub_1000034B4(v25, v26);
    sub_100017D44();
    *(inited + 136) = v12;
    *(inited + 144) = &protocol witness table for Expression<A>;
    *(inited + 112) = 20047;
    *(inited + 120) = 0xE200000000000000;
    *(inited + 128) = _swiftEmptyArrayStorage;
    sub_10001C4A4(&v21, inited + 152);
    sub_100013640(inited, a1);
    swift_setDeallocating();
    sub_100018898();
    sub_1000034F8(&v21);
  }

  else
  {
    sub_10001A940(&v19, &qword_10019CBC0);
    sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
    v6 = swift_initStackObject();
    *(v6 + 16) = xmmword_10014BC40;
    v7 = 0xE000000000000000;
    v21 = 0;
    v22[0] = 0xE000000000000000;
    v8 = 0;
    switch(v2)
    {
      case 1:
        v7 = 0xE500000000000000;
        v8 = 0x52454E4E49;
        break;
      case 2:
        v8 = 0x54554F205446454CLL;
        v7 = 0xEA00000000005245;
        break;
      case 3:
        break;
      default:
        v7 = 0xE500000000000000;
        v8 = 0x53534F5243;
        break;
    }

    v13 = v7;
    String.append(_:)(*&v8);

    v14._countAndFlagsBits = 0x4E494F4A20;
    v14._object = 0xE500000000000000;
    String.append(_:)(v14);
    v15 = v21;
    v16 = v22[0];
    v17 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
    *(v6 + 64) = &protocol witness table for Expression<A>;
    *(v6 + 32) = v15;
    *(v6 + 40) = v16;
    *(v6 + 48) = _swiftEmptyArrayStorage;
    *(v6 + 56) = v17;
    sub_1000034B4(v25, v26);
    sub_100017D44();
    sub_100013640(v6, a1);
    swift_setDeallocating();
    sub_100018898();
  }

  sub_10001A940(v23, &qword_10019CBC0);
  return sub_1000034F8(v25);
}

uint64_t sub_10001E5C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_100013234(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_10001A798(&v12, v10 + 40 * a1 + 32);
}

__n128 sub_10001E658(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

void sub_10001E670()
{
  sub_100004DF0();
  v2 = v1;
  v4 = v3;
  if (qword_100198470 != -1)
  {
    sub_1000081EC(&qword_100198470);
  }

  memcpy(v33, &unk_10019C610, 0xB0uLL);
  if (v2)
  {
    sub_1000196B0(v33, &v17);
    if (qword_100198478 != -1)
    {
      sub_100002E00();
      swift_once();
    }

    sub_100003A8C(&qword_10019C6C0);
    v17 = v4;
    v18 = v2;
    v5 = == infix<A>(_:_:)();
    v7 = v6;
    v9 = v8;
    memcpy(v16, v33, sizeof(v16));
    QueryType.filter(_:)(v5, v7, v9, &type metadata for Table, &protocol witness table for Table, v10, v11, v12, v15, v16[0], v16[1], v16[2], v16[3], v16[4], v16[5], v16[6], v16[7], v16[8], v16[9], v16[10], v16[11], v16[12], v16[13], v16[14], v16[15], v16[16], v16[17], v16[18], v16[19], v16[20], v16[21], v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);

    sub_10001970C(v33);
    v13 = &v17;
  }

  else
  {
    sub_1000196B0(v33, &v17);
    v13 = v33;
  }

  memcpy(v32, v13, sizeof(v32));
  v20 = &type metadata for Table;
  v21 = &protocol witness table for Table;
  sub_100003A98();
  v17 = swift_allocObject();
  memcpy((v17 + 16), v32, 0xB0uLL);
  Connection.prepareRowIterator(_:)(&v17);
  v14 = sub_1000034F8(&v17);
  if (!v0)
  {
    __chkstk_darwin(v14);

    RowIterator.compactMap<A>(_:)();
  }

  sub_100004674();
}

uint64_t sub_10001E8EC()
{

  if (v0[13])
  {
  }

  if (v0[15])
  {

    if (v0[17])
    {
    }
  }

  sub_100003A98();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10001E984()
{
  sub_1000046C8();
  v1(0);
  sub_10000482C();
  v2 = sub_1000077D8();
  v3(v2);
  return v0;
}

uint64_t sub_10001E9DC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_10000482C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10001EA34@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  result = Statement.failableNext()();
  if (v5)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v6 = result;
    if (result)
    {
    }

    else
    {
      a1 = 0;
    }

    *a2 = a1;
    a2[1] = v6;
  }

  return result;
}

void sub_10001EAB4()
{
  sub_100004DF0();
  v35 = v1;
  v3 = v2;
  v5 = v4;
  v6 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  __chkstk_darwin(v6 - 8);
  v8 = &v31 - v7;
  if (qword_1001980C8 != -1)
  {
    swift_once();
  }

  memcpy(v49, &unk_10019D848, 0xB0uLL);
  if (v3)
  {
    sub_1000196B0(v49, &v37);
    if (qword_1001980D0 != -1)
    {
      sub_1000070F4();
      swift_once();
    }

    sub_100003A8C(&qword_10019D8F8);
    v37 = v5;
    v38 = v3;
    == infix<A>(_:_:)();
    v10 = v9;
    memcpy(v36, v49, sizeof(v36));
    v11 = sub_10000373C();
    QueryType.filter(_:)(v11, v12, v10, v13, v14, v15, v16, v17, v31, v32, v33, v34, v35, v36[0], v36[1], v36[2], v36[3], v36[4], v36[5], v36[6], v36[7], v36[8], v36[9], v36[10], v36[11], v36[12], v36[13], v36[14], v36[15], v36[16], v36[17], v36[18], v36[19], v36[20], v36[21], v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47);

    sub_10001970C(v49);
    v18 = &v37;
  }

  else
  {
    sub_1000196B0(v49, &v37);
    v18 = v49;
  }

  memcpy(v48, v18, sizeof(v48));
  v40 = &type metadata for Table;
  v41 = &protocol witness table for Table;
  sub_100003A98();
  v37 = swift_allocObject();
  memcpy((v37 + 16), v48, 0xB0uLL);
  v19 = Connection.prepare(_:)(&v37);
  sub_1000034F8(&v37);
  if (!v0)
  {
    swift_retain_n();
    v32 = v19;
    dispatch thunk of _AnySequenceBox._makeIterator()();
    v33 = _swiftEmptyArrayStorage;
    v20 = &unk_100198000;
    while (1)
    {
      dispatch thunk of _AnyIteratorBoxBase.next()();
      if (!v37)
      {
        break;
      }

      if (v20[26] != -1)
      {
        sub_1000070F4();
        swift_once();
      }

      Row.get<A>(_:)();
      v21 = v37;
      v22 = v38;
      if (qword_1001980D8 != -1)
      {
        swift_once();
      }

      sub_100003A8C(&qword_10019D910);
      Row.get<A>(_:)();
      v34 = v21;
      sub_100003D44(0, &qword_1001994F8, LNAutoShortcutMetadata_ptr);
      v23 = type metadata accessor for URL();
      sub_1000075C4(v8, 1, 1, v23);
      v24 = static LNAutoShortcutMetadata.fromJSON(_:bundleURL:effectiveBundleIdentifier:)();
      sub_100003E9C(v8, &qword_1001990C0, &unk_10014E200);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100021568(0, *(v33 + 2) + 1, 1, v33);
        v33 = v29;
      }

      v20 = &unk_100198000;
      v25 = v33;
      v27 = *(v33 + 2);
      v26 = *(v33 + 3);
      if (v27 >= v26 >> 1)
      {
        sub_100021568(v26 > 1, v27 + 1, 1, v33);
        v25 = v30;
      }

      *(v25 + 2) = v27 + 1;
      v33 = v25;
      v28 = &v25[24 * v27];
      *(v28 + 4) = v34;
      *(v28 + 5) = v22;
      *(v28 + 6) = v24;
    }
  }

  sub_100004674();
}

uint64_t sub_10001EFBC()
{

  if (v0[13])
  {
  }

  if (v0[15])
  {

    if (v0[17])
    {
    }
  }

  sub_100003A98();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10001F054()
{
  sub_1000070C8();
  sub_1000048B4();
  v3 = v2;
  sub_10000788C();
  *v4 = v3;
  v5 = *v1;
  sub_10000298C();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    sub_100011B30();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    v10 = sub_10001AB40();

    return v11(v10);
  }
}

uint64_t sub_10001F17C(void *a1)
{
  v2 = [a1 uniqueInstallIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_10001F1EC()
{
  sub_100006A04();
  v2 = v1;
  v4 = v3;
  v5 = sub_10002EB80(&qword_10019BA18, &qword_100150EB8);
  sub_100004B70(v5);
  sub_100003A54();
  __chkstk_darwin(v6);
  sub_10000AE14();
  v68 = v7;
  sub_1000FD5B8();
  v69 = type metadata accessor for Date();
  sub_100002944();
  v66 = v8;
  __chkstk_darwin(v9);
  sub_100002958();
  v65 = v11 - v10;
  sub_1000FD5B8();
  v12 = type metadata accessor for URL();
  sub_100002944();
  v71 = v13;
  __chkstk_darwin(v14);
  sub_100002958();
  v17 = v16 - v15;
  v18 = sub_10002EB80(&qword_10019BAE0, &qword_100150F70);
  sub_100004B70(v18);
  sub_100003A54();
  __chkstk_darwin(v19);
  sub_10000D5C4();
  v72 = type metadata accessor for URLResourceValues();
  sub_100002944();
  v67 = v20;
  __chkstk_darwin(v21);
  sub_100002958();
  v22 = sub_1000FD8B0();
  sub_10000482C();
  __chkstk_darwin(v23);
  sub_100002958();
  v26 = (v25 - v24);
  v27 = sub_100027068(v2, &selRef_bundleIdentifier);
  if (!v28)
  {

    goto LABEL_10;
  }

  v29 = v27;
  v30 = v28;
  v70 = v12;
  objc_opt_self();
  v31 = swift_dynamicCastObjCClass();
  if (!v31)
  {
    *v26 = v29;
    v26[1] = v30;
    goto LABEL_7;
  }

  *v26 = v29;
  v26[1] = v30;
  v32 = v2;
  v33 = sub_10001F17C(v31);
  if (v34 >> 60 == 15)
  {
LABEL_7:
    v36 = [v2 URL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10002EB80(&qword_10019BAE8, &qword_100150F78);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10014CE90;
    *(inited + 32) = NSURLContentModificationDateKey;
    v38 = NSURLContentModificationDateKey;
    sub_1000B5528(inited);
    URL.resourceValues(forKeys:)();
    (*(v71 + 8))(v17, v70);

    sub_1000FD2A0();
    sub_1000075C4(v39, v40, v41, v72);
    v42 = sub_100012014();
    v43(v42);
    URLResourceValues.contentModificationDate.getter();
    sub_100028670(v68, 1, v69);
    if (!v44)
    {
      (*(v66 + 32))(v65, v68, v69);
      Date.timeIntervalSinceReferenceDate.getter();
      sub_1000FD87C(v50);
      sub_100002714();
      (*(v66 + 8))(v65, v69);
      (*(v67 + 8))(v0, v72);
      v51 = (v26 + v22[6]);
      *v51 = v68;
      v51[1] = v65;
      goto LABEL_11;
    }

    v45 = sub_100012014();
    v46(v45);

    sub_1000FC404(v68, &qword_10019BA18);

LABEL_10:
    sub_100007E2C();
    sub_1000075C4(v47, v48, v49, v22);
    goto LABEL_15;
  }

  v35 = (v26 + v22[6]);
  *v35 = v33;
  v35[1] = v34;
LABEL_11:
  v52 = [v2 registrationDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  if (v31)
  {
    v53 = v31;
    v54 = sub_10001F918();

    v55 = v22[8];
    v56 = v54 & 1;
  }

  else
  {
    v53 = 0;
    v55 = v22[8];
    v56 = 1;
  }

  *(v26 + v55) = v56;
  *(v26 + v22[9]) = 0;
  v57 = [v2 URL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1000FD2A0();
  sub_1000075C4(v58, v59, v60, v70);
  sub_10001A8A4();
  sub_100027104(v26, v4);
  v61 = sub_1000FD08C();
  sub_1000075C4(v61, v62, v63, v22);
  sub_100006AE8();
  sub_100027240(v26, v64);
LABEL_15:
  sub_1000069EC();
}

uint64_t sub_10001F7A0()
{
  sub_1000036A0();
  sub_1000036D0();
  v3 = v2;
  sub_10000788C();
  *v4 = v3;
  v5 = *v1;
  *v4 = v5;
  v3[19] = v6;
  v3[20] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000879F4, 0, 0);
  }

  else
  {
    v7 = swift_task_alloc();
    v3[21] = v7;
    *v7 = v5;
    v7[1] = sub_100020BC8;
    v8 = sub_10001313C(v3[14]);

    return sub_10001F900(v8, v9);
  }
}

uint64_t sub_10001F900(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_100003B20();
}

uint64_t sub_10001F918()
{
  v1 = [v0 entitlements];
  v2 = String._bridgeToObjectiveC()();
  sub_1000270C0();
  v3 = [v1 objectForKey:v2 ofClass:swift_getObjCClassFromMetadata()];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
    sub_10003D580(v8);
  }

  return 0;
}

uint64_t sub_10001FA28()
{
  sub_1000070C8();
  sub_1000036D0();
  v3 = v2;
  sub_10000788C();
  *v4 = v3;
  v5 = *v1;
  sub_10000298C();
  *v6 = v5;
  *(v3 + 248) = v0;

  if (v0)
  {
    v7 = sub_10001FB84;
  }

  else
  {
    sub_1000034F8((v3 + 16));
    v7 = sub_10008795C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10001FB84()
{
  v24 = v0;
  v3 = v0[28];
  v4 = v0[13];

  sub_10001FE58(v4);
  sub_1000034F8(v0 + 2);
  if (qword_1001982F0 != -1)
  {
    sub_100091E24(&qword_1001982F0);
  }

  v5 = v0[10];
  v6 = type metadata accessor for Logger();
  sub_10000347C(v6, qword_10019E008);
  v7 = v5;
  sub_100018338();
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  static os_log_type_t.error.getter();

  v9 = sub_100012824();
  v11 = v0[16];
  v10 = v0[17];
  if (v9)
  {
    v13 = v0[14];
    v12 = v0[15];
    swift_slowAlloc();
    sub_100005D18();
    v14 = sub_10001DD04();
    v23 = v14;
    *v10 = 136315394;
    *(v10 + 4) = sub_100004C50(v13, v12, &v23);
    *(v10 + 6) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v15;
    *v2 = v15;
    sub_100012858();
    _os_log_impl(v16, v17, v18, v19, v20, 0x16u);
    sub_100003EFC(v2, &unk_10019A260, &unk_10014D030);
    sub_100003A0C();
    sub_1000034F8(v14);
    sub_100004D70();
    sub_100004D8C();
  }

  else
  {
  }

  sub_100021304();

  sub_100003A00();

  return v21();
}

uint64_t sub_10001FD88()
{
  sub_1000070C8();
  v1 = *(v0 + 32);
  v2 = objc_opt_self();
  v3 = v1;

  sub_1000FD1B8([v2 currentConnection]);
  v4 = swift_task_alloc();
  v5 = sub_1000FD0C8(v4);
  *v5 = v6;
  v5[1] = sub_10001F054;
  v7 = sub_10000687C();

  return sub_10001FEB4(v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_10001FE58(uint64_t a1)
{
  v2 = type metadata accessor for LSLinkBundleRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001FEB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v7[9] = type metadata accessor for RegistryError(0);
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();

  return _swift_task_switch(sub_10001FF64, 0, 0);
}

void sub_1000202D4(void *a1@<X8>)
{
  sub_10001E670();
  if (!v1)
  {
    v4 = v3;
    v5 = *(v3 + 16);
    if (v5)
    {
      specialized ContiguousArray.reserveCapacity(_:)();
      v6 = 48;
      do
      {
        v7 = *(v4 + v6);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v6 += 24;
        --v5;
      }

      while (v5);
    }

    *a1 = _swiftEmptyArrayStorage;
  }
}

uint64_t sub_100020404@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

unint64_t sub_10002043C(char a1)
{
  if (a1)
  {
    return 0xD000000000000021;
  }

  else
  {
    return 0xD00000000000001BLL;
  }
}

uint64_t sub_100020474()
{
  v0 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  __chkstk_darwin(v0 - 8);
  v2 = v6 - v1;
  if (qword_100198478 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  v3 = v6[2];
  if (qword_100198488 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  sub_100020830();
  v4 = type metadata accessor for URL();
  sub_1000075C4(v2, 1, 1, v4);
  static LNEnumMetadata.fromJSON(_:bundleURL:effectiveBundleIdentifier:)();
  sub_1000209B0(v2);

  return v3;
}

uint64_t sub_100020660()
{
  sub_1000036A0();
  sub_1000050EC();
  *v3 = v2;
  v4 = *v1;
  sub_10000298C();
  *v5 = v4;
  *(v6 + 336) = v0;

  if (v0)
  {
    v7 = sub_1000878BC;
  }

  else
  {
    v7 = sub_10002078C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10002078C()
{
  sub_1000921B0();
  sub_1000036C4();
  sub_100013E90();

  sub_100003A00();
  sub_10009206C();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

unint64_t sub_100020830()
{
  result = qword_10019AB60;
  if (!qword_10019AB60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10019AB60);
  }

  return result;
}

uint64_t sub_100020880()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_1000208B8@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10)
{

  return sub_10001A798(&a10, a1 + 32);
}

uint64_t sub_1000208D0()
{
  sub_1000036A0();
  sub_1000036D0();
  v1 = *v0;
  sub_10000298C();
  *v2 = v1;

  sub_100003A00();

  return v3();
}

uint64_t sub_1000209B0(uint64_t a1)
{
  v2 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100020A18(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100020A58()
{
  sub_100027014();
  sub_1000036C4();
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  sub_10000298C();
  *v5 = v4;
  v6 = *(v3 + 16);
  *v5 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = _convertErrorToNSError(_:)();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(v7, 0);
  }

  _Block_release(*(v4 + 24));
  sub_100091EFC();

  return v10(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_100020BC8()
{
  sub_1000036A0();
  sub_1000036D0();
  sub_1000050EC();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 176) = v4;
  *(v2 + 184) = v0;

  if (v0)
  {
    v5 = sub_100087A68;
  }

  else
  {
    v5 = sub_100020CCC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100020CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_1000920B8();
  a27 = v29;
  a28 = v30;
  a26 = v28;
  v31 = *(v28 + 184);
  v32 = *(v28 + 136);
  v33 = sub_1000212D8(*(v28 + 112), *(v28 + 120));
  *(v28 + 192) = v33;
  if (v31)
  {
    v35 = *(v28 + 128);
    v34 = *(v28 + 136);

    sub_100021304();

    sub_100003A00();
LABEL_3:
    sub_100091DC0();

    return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
  }

  else
  {
    v45 = v33;
    a13 = v32;
    v46 = *(v33 + 16);
    if (v46)
    {
      a16 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v47 = (v45 + 48);
      do
      {
        v48 = *v47;
        v47 += 3;
        v49 = v48;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        sub_10000485C();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        --v46;
      }

      while (v46);
    }

    v50 = *(v28 + 120);
    v51 = *(v28 + 72);
    sub_100021644();
    a11 = v52;
    a12 = v53;

    type metadata accessor for AppShortcutInterpolator();
    v54 = sub_1000128FC();
    a10 = sub_10002382C(v54, v50);
    a14 = _swiftEmptyArrayStorage;
    v55 = sub_1000232F4(v51);
    v56 = 0;
    v57 = v51 & 0xC000000000000001;
    v58 = v51 & 0xFFFFFFFFFFFFFF8;
    v59 = v51 + 32;
    while (v55 != v56)
    {
      if (v57)
      {
        v60 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v56 >= *(v58 + 16))
        {
          goto LABEL_27;
        }

        v60 = *(v59 + 8 * v56);
      }

      v61 = v60;
      if (__OFADD__(v56, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        sub_100091E24(&qword_1001982F0);
LABEL_20:
        v72 = *(v28 + 80);
        v73 = type metadata accessor for Logger();
        sub_10000347C(v73, qword_10019E008);
        v74 = v72;
        v75 = Logger.logObject.getter();
        static os_log_type_t.error.getter();

        v76 = sub_1000103CC();
        v78 = *(v28 + 128);
        v77 = *(v28 + 136);
        if (v76)
        {
          v80 = *(v28 + 112);
          v79 = *(v28 + 120);
          sub_100007764();
          v81 = sub_10000EE1C();
          a16 = v81;
          *v56 = 136315138;
          *(v56 + 4) = sub_100004C50(v80, v79, &a16);
          sub_1000129B0();
          _os_log_impl(v82, v83, v84, v85, v56, 0xCu);
          sub_1000034F8(v81);
          sub_100003A0C();
          sub_100004D70();
        }

        sub_100021304();

        sub_100003A00();
        goto LABEL_3;
      }

      v62 = *(v28 + 80);
      a16 = v60;
      sub_100023F00(&a14, &a16, v62);

      ++v56;
    }

    v64 = *(v28 + 112);
    v63 = *(v28 + 120);
    v65 = *(v28 + 64);

    v66 = a14;
    a15 = a11;

    sub_10002453C(v66);
    sub_10002453C(a10);
    *(v28 + 200) = a15;
    v67 = sub_100024984(v64, v63, v65);
    v56 = sub_100024B10(a12, v67);
    *(v28 + 208) = v56;

    sub_100025360();
    v68 = *(v28 + 88);
    v69 = *(v28 + 128);
    sub_10001F1EC();
    sub_100009C04(v68);
    if (v70)
    {
      v71 = *(v28 + 88);

      sub_100003EFC(v71, &qword_10019AC90, &qword_10014FB80);
      if (qword_1001982F0 != -1)
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    v86 = *(v28 + 136);
    v88 = *(v28 + 96);
    v87 = *(v28 + 104);
    sub_1000067E8();
    sub_1000273D8(v89, v87, v90);
    *(v28 + 216) = *(v86 + OBJC_IVAR____TtC10LinkDaemon8Registry_appShortcutInterpolator);
    v91 = objc_opt_self();

    *(v28 + 224) = [v91 sharedVocabulary];
    *(v28 + 232) = sub_100027434();
    *(v28 + 40) = v88;
    *(v28 + 48) = &off_10018F930;
    v92 = sub_100013234((v28 + 16));
    sub_100027910(v87, v92);
    v93 = swift_task_alloc();
    *(v28 + 240) = v93;
    *v93 = v28;
    v93[1] = sub_10001FA28;
    sub_100091DC0();

    return sub_100027A3C(v94, v95, v96, v97, v98, v99, v100, v101);
  }
}

uint64_t sub_100021234(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, void))
{
  a3(a1, a2, *(v3 + OBJC_IVAR____TtC10LinkDaemon13MetadataStore_connection));
  sub_10008445C();
  if (v4)
  {
    type metadata accessor for Schema.RuntimeError(0);
    sub_100002B5C();
    sub_100084084(v5, v6);
    sub_10001AB00();
    swift_allocError();
    sub_100006474();
    sub_10008451C();
    swift_willThrow();
  }

  return sub_10000C0C4();
}

uint64_t sub_100021304()
{
}

uint64_t sub_10002131C(uint64_t result)
{
  *(v1 - 152) = result;
  *(v1 - 96) = result;
  return result;
}

void sub_100021328()
{
  v2 = *(v0 + 48);
}

uint64_t sub_100021344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return type metadata accessor for Expression(0, v4, a3, a4);
}

uint64_t Connection.prepare(_:)(void *a1)
{
  v2 = a1[3];
  sub_1000034B4(a1, v2);
  sub_1000126CC();
  v3(v2);
  v5 = v4;
  sub_100012960();
  Connection.prepare(_:_:)(v6, v7, v8);
  if (v1)
  {
  }

  else
  {
    v10 = Statement.bind(_:)(v5);

    sub_100012960();
    v12 = sub_10001B688(v11);
    v13 = swift_allocObject();
    *(v13 + 16) = v10;
    *(v13 + 24) = v12;
    sub_10002EB80(&qword_10019CCF8, &unk_100152CA8);
    result = swift_allocObject();
    *(result + 16) = sub_100021558;
    *(result + 24) = v13;
  }

  return result;
}

uint64_t sub_1000214B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_10002EB80(&qword_10019CEF0, &unk_1001532A0);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_100021560;
  *(v7 + 24) = v6;
  *a3 = v7;
}

uint64_t sub_100021584()
{
}

id sub_1000215A4(void *a1, float a2)
{
  *v4 = a2;
  *(v4 + 4) = v3;
  *a1 = v2;

  return v3;
}

unint64_t sub_1000215CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  *(v21 - 88) = a1;
  *v20 = a11;

  return sub_100004C50(a19, v19, (v21 - 88));
}

void *sub_100021620(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return sub_100014308(va, (a1 + 32), v3, v4);
}

void sub_100021644()
{
  sub_100006A04();
  v415 = v0;
  v363 = v1;
  v3 = v2;
  v5 = v4;
  v416 = v6;
  v406 = type metadata accessor for UUID();
  v376 = *(v406 - 8);
  __chkstk_darwin(v406 - 8);
  sub_10001D5B4();
  v381 = v7;
  __chkstk_darwin(v8);
  v405 = &v352 - v9;
  type metadata accessor for LNAppShortcutParameterRecord(0);
  sub_100002944();
  v384 = v11;
  v385 = v10;
  __chkstk_darwin(v10);
  sub_10001D5B4();
  v353 = v12;
  __chkstk_darwin(v13);
  v352 = &v352 - v14;
  __chkstk_darwin(v15);
  v404 = &v352 - v16;
  v414 = v3;
  v17 = sub_1000232F4(v3);
  v18 = _swiftEmptyArrayStorage;
  v413 = v5;
  if (v17)
  {
    v19 = v17;
    v422[0] = _swiftEmptyArrayStorage;
    v20 = sub_100007990();
    sub_100023320(v20, v21, v22);
    if (v19 < 0)
    {
      goto LABEL_189;
    }

    v18 = v422[0];
    v23 = v414 & 0xC000000000000001;
    do
    {
      if (v23)
      {
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v24 = *(v414 + 32);
      }

      v25 = [v24 identifier];
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1000188C0();
      if (v27)
      {
        v29 = sub_100019D1C(v26);
        sub_100023320(v29, v30, v31);
        v18 = v422[0];
      }

      sub_100008874();
    }

    while (!v28);
  }

  v32 = 0;
  v362 = sub_10006687C(v18);
  v33 = sub_1000232F4(v415);
  if (v33)
  {
    v34 = v33;
    v422[0] = _swiftEmptyArrayStorage;
    v35 = sub_100007990();
    sub_10002357C(v35, v36, v37);
    if (v34 < 0)
    {
      goto LABEL_190;
    }

    v414 = 0;
    v38 = v422[0];
    v39 = v415 & 0xC000000000000001;
    do
    {
      if (v39)
      {
        v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v40 = *(v415 + 32);
      }

      v41 = [v40 identifier];
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1000188C0();
      if (v27)
      {
        v43 = sub_100019D1C(v42);
        sub_10002357C(v43, v44, v45);
        v38 = v422[0];
      }

      sub_100008874();
    }

    while (!v28);
    v32 = v414;
  }

  else
  {
    v38 = _swiftEmptyArrayStorage;
  }

  v46 = sub_100066938(v38);
  v378 = v32;
  v421 = &_swiftEmptySetSingleton;
  v47 = v363;
  v361 = sub_1000232F4(v363);
  if (!v361)
  {
LABEL_178:

    sub_1000069EC();
    return;
  }

  v364 = v46;
  v48 = 0;
  v360 = v47 & 0xC000000000000001;
  v355 = v47 + 32;
  v356 = v47 & 0xFFFFFFFFFFFFFF8;
  v357 = LNValueTypeSpecificMetadataKeyLinkEnumerationSupportedValues;
  v382 = (v376 + 32);
  v383 = (v376 + 16);
  v369 = LNValueTypeSpecificMetadataKeyBoolTrueDisplayName;
  v354 = LNValueTypeSpecificMetadataKeyBoolFalseDisplayName;
  v380 = xmmword_10014E680;
  v49 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v360)
    {
      v50 = v48;
      v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v48 >= *(v356 + 16))
      {
        goto LABEL_186;
      }

      v50 = v48;
      v51 = *(v355 + 8 * v48);
    }

    v52 = __OFADD__(v50, 1);
    v53 = v50 + 1;
    if (v52)
    {
      goto LABEL_184;
    }

    v368 = v53;
    v373 = v51;
    v54 = [v51 actionIdentifier];
    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v56;

    if (!v362[2])
    {

      goto LABEL_176;
    }

    v58 = v55;
    v59 = v362;
    v60 = sub_10000C2A0(v58, v57);
    v62 = v61;

    if ((v62 & 1) == 0)
    {
      goto LABEL_176;
    }

    v389 = *(v59[7] + 8 * v60);
    if (!sub_10002359C(v373) || (v63 = sub_100009A00(), sub_100003D44(v63, &qword_100199638, LNAvailabilityChecker_ptr), v64 = sub_10001AAC8(), v60 = sub_1000236F0(v64), v65 = [v60 availableForCurrentPlatformVersion], v60, (v65 & 1) != 0))
    {
      if (!sub_10002359C(v389))
      {
        break;
      }

      v66 = sub_100009A00();
      sub_100003D44(v66, &qword_100199638, LNAvailabilityChecker_ptr);
      v67 = sub_10001AAC8();
      v60 = sub_1000236F0(v67);
      v68 = [v60 availableForCurrentPlatformVersion];

      if (v68)
      {
        break;
      }
    }

    v351 = v389;
LABEL_177:

    v48 = v368;
    if (v368 == v361)
    {
      goto LABEL_178;
    }
  }

  v69 = [v389 parameters];
  v70 = sub_100009A00();
  sub_100003D44(v70, &qword_100199048, LNActionParameterMetadata_ptr);
  sub_10001AAC8();
  v71 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v72 = v71;
  v372 = v71;
  if (!(v71 >> 62))
  {
    v73 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v73)
    {
      goto LABEL_38;
    }

LABEL_175:

LABEL_176:
    v351 = v373;
    goto LABEL_177;
  }

  v73 = _CocoaArrayWrapper.endIndex.getter();
  v72 = v372;
  if (!v73)
  {
    goto LABEL_175;
  }

LABEL_38:
  v74 = 0;
  v370 = v73;
  v371 = v72 & 0xC000000000000001;
  v358 = v72 + 32;
  v359 = v72 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v371)
    {
      v75 = v74;
      v76 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v74 >= *(v359 + 16))
      {
        goto LABEL_185;
      }

      v75 = v74;
      v76 = *(v358 + 8 * v74);
    }

    v52 = __OFADD__(v75, 1);
    v77 = v75 + 1;
    if (v52)
    {
      break;
    }

    v375 = v77;
    v78 = v76;
    v395._countAndFlagsBits = sub_1000237B0(v76);
    v395._object = v79;
    if (v79)
    {
      v420 = _swiftEmptyDictionarySingleton;
      v379 = v78;
      v80 = [v78 valueType];
      objc_opt_self();
      v391 = v80;
      v81 = swift_dynamicCastObjCClass();
      v409 = v49;
      if (v81)
      {
        v407 = v81;
        v82 = [v81 enumerationIdentifier];
        v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v85 = v84;

        if (v364[2])
        {
          v86 = sub_10000C2A0(v83, v85);
          v88 = v87;

          if (v88)
          {
            v89 = *(v364[7] + 8 * v86);
            v90 = v379;
            if (![v379 dynamicOptionsSupport])
            {
              v393 = v89;
              v122 = [v373 phraseTemplates];
              v123 = sub_100009A00();
              sub_100003D44(v123, &qword_10019AD00, LNStaticDeferredLocalizedString_ptr);
              sub_10001AAC8();
              v124 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              if (v124 >> 62)
              {
                v125 = _CocoaArrayWrapper.endIndex.getter();
                if (!v125)
                {
                  goto LABEL_109;
                }

LABEL_70:
                v419[0] = _swiftEmptyArrayStorage;
                v126 = sub_10006A0A4();
                sub_100011438(v126, v127, v128);
                if (v125 < 0)
                {
                  goto LABEL_188;
                }

                v129 = 0;
                v130 = v419[0];
                do
                {
                  v131 = v130;
                  if ((v124 & 0xC000000000000001) != 0)
                  {
                    v132 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  }

                  else
                  {
                    v132 = *(v124 + 8 * v129 + 32);
                  }

                  v133 = v132;
                  v134 = [v133 key];
                  v135 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v137 = v136;

                  v130 = v131;
                  v419[0] = v131;
                  v138 = v131[2];
                  if (v138 >= v130[3] >> 1)
                  {
                    v140 = sub_1000183E8();
                    sub_100011438(v140, v141, v142);
                    v130 = v419[0];
                  }

                  ++v129;
                  v130[2] = v138 + 1;
                  v139 = &v130[2 * v138];
                  v139[4] = v135;
                  v139[5] = v137;
                  v49 = v409;
                }

                while (v125 != v129);

                v5 = v413;
              }

              else
              {
                v125 = *((v124 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v125)
                {
                  goto LABEL_70;
                }

LABEL_109:

                v130 = _swiftEmptyArrayStorage;
              }

              v216 = v393;
              v367 = v130[2];
              if (!v367)
              {
                v394 = _swiftEmptyDictionarySingleton;
LABEL_171:

                goto LABEL_106;
              }

              v217 = 0;
              v366 = v130 + 4;
              v394 = _swiftEmptyDictionarySingleton;
              v365 = v130;
LABEL_112:
              if (v217 >= v130[2])
              {
                goto LABEL_183;
              }

              v374 = v217;
              v218 = &v366[2 * v217];
              v219 = v218[1];
              v408 = *v218;
              v419[0] = v408;
              sub_100012A64();
              String.append(_:)(v395);
              v220._countAndFlagsBits = 125;
              v220._object = 0xE100000000000000;
              String.append(_:)(v220);
              sub_10000BE0C();
              v221 = StringProtocol.contains<A>(_:)();

              if (v221)
              {
                v390 = v219;
                v222 = [v393 cases];
                v223 = sub_100009A00();
                sub_100003D44(v223, &qword_10019A0A0, LNEnumCaseMetadata_ptr);
                sub_10001AAC8();
                v224 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

                v225 = [v379 typeSpecificMetadata];
                type metadata accessor for LNValueTypeSpecificMetadataKey(0);
                sub_100003AC8();
                sub_1000236AC(&qword_100198950, v226);
                v227 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

                if (*(v227 + 16) && (v228 = sub_10004B2BC(), (v229 & 1) != 0))
                {
                  sub_10000EE54(v228);

                  sub_10002EB80(&unk_10019ACC0, &qword_1001507B0);
                  if (swift_dynamicCast())
                  {
                    v414 = v418[0];
                    v418[0] = _swiftEmptyArrayStorage;
                    v216 = v393;
                    if (v224 >> 62)
                    {
                      v415 = sub_10001E0A4();
                    }

                    else
                    {
                      v415 = *((v224 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    }

                    v230 = 0;
                    v231 = v224 & 0xC000000000000001;
                    while (v415 != v230)
                    {
                      sub_10003818C(v230, v231 == 0, v224);
                      if (v231)
                      {
                        sub_1000246A8();
                        v232 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                      }

                      else
                      {
                        v232 = *(v224 + 8 * v230 + 32);
                      }

                      v233 = v232;
                      if (__OFADD__(v230, 1))
                      {
                        goto LABEL_181;
                      }

                      v234 = [v232 identifier];
                      v235 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                      v237 = v236;

                      v419[0] = v235;
                      v419[1] = v237;
                      __chkstk_darwin(v238);
                      *(&v352 - 2) = v419;
                      v239 = v378;
                      LOBYTE(v234) = sub_1000574AC();
                      v378 = v239;

                      if (v234)
                      {
                        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                        specialized ContiguousArray._endMutation()();
                      }

                      else
                      {
                      }

                      v216 = v393;
                      ++v230;
                    }

                    v224 = v418[0];
                    v5 = v413;
LABEL_131:
                    if (v224 >> 62)
                    {
                      v240 = sub_10001E0A4();
                      if (v240)
                      {
LABEL_133:
                        v241 = 0;
                        v387 = v224;
                        v388 = v224 & 0xC000000000000001;
                        v377 = v224 + 32;
                        v386 = v240;
                        while (1)
                        {
                          v242 = v388;
                          sub_10003818C(v241, v388 == 0, v224);
                          v243 = v242 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v377 + 8 * v241);
                          v410 = v243;
                          v52 = __OFADD__(v241, 1);
                          v244 = v241 + 1;
                          if (v52)
                          {
                            break;
                          }

                          v403 = v244;
                          v409 = v49;
                          v245 = v410;
                          v246 = sub_100069D78([v410 displayRepresentation]);
                          if (v246)
                          {
                            v247 = v246;
                          }

                          else
                          {
                            v247 = _swiftEmptyArrayStorage;
                          }

                          v248 = [v216 identifier];
                          v249 = v216;
                          v250 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                          v252 = v251;

                          v419[0] = v250;
                          v419[1] = v252;
                          v253._countAndFlagsBits = 46;
                          v253._object = 0xE100000000000000;
                          String.append(_:)(v253);
                          v254 = [v245 identifier];
                          v255 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                          v257 = v256;

                          v258._countAndFlagsBits = v255;
                          v258._object = v257;
                          String.append(_:)(v258);
                          v259 = v247;

                          v414 = v419[0];
                          v415 = v419[1];
                          v260 = [v245 displayRepresentation];
                          v402 = [v260 title];

                          v261 = [v245 displayRepresentation];
                          v262 = [v261 title];

                          v263 = [v262 key];
                          v264 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                          v400 = v265;
                          v401 = v264;

                          v266 = [v249 identifier];
                          v267 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                          v398 = v268;
                          v399 = v267;

                          v269 = [v249 identifier];
                          v270 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                          v396 = v271;
                          v397 = v270;

                          v272 = [v245 identifier];
                          v273 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                          v275 = v274;

                          v419[3] = &type metadata for String;
                          v419[0] = v273;
                          v419[1] = v275;
                          v276 = v391;
                          v277 = [v245 displayRepresentation];
                          objc_allocWithZone(LNValue);
                          v278 = v276;
                          v279 = sub_100068864(v419, v407, v277);
                          v280 = sub_1000232F4(v247);
                          if (v280)
                          {
                            v281 = v280;
                            v419[0] = _swiftEmptyArrayStorage;
                            v282 = sub_10006A0A4();
                            sub_1000B362C(v282, v283, v284);
                            if (v281 < 0)
                            {
                              goto LABEL_180;
                            }

                            v392 = v279;
                            v285 = 0;
                            v286 = v419[0];
                            v411 = (v247 & 0xC000000000000001);
                            v412 = v247;
                            do
                            {
                              if (v411)
                              {
                                v287 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                              }

                              else
                              {
                                v287 = *(v259 + 8 * v285 + 32);
                              }

                              v288 = v287;
                              v419[0] = v286;
                              v290 = v286[2];
                              v289 = v286[3];
                              v5 = v413;

                              v291 = v415;

                              if (v290 >= v289 >> 1)
                              {
                                v293 = sub_1000183E8();
                                sub_1000B362C(v293, v294, v295);
                                v286 = v419[0];
                              }

                              ++v285;
                              v286[2] = v290 + 1;
                              v292 = &v286[5 * v290];
                              v292[4] = v414;
                              v292[5] = v291;
                              v292[6] = v416;
                              v292[7] = v5;
                              v292[8] = v288;
                              v259 = v412;
                            }

                            while (v281 != v285);

                            v279 = v392;
                          }

                          else
                          {

                            v286 = _swiftEmptyArrayStorage;
                          }

                          v296 = v414;
                          v418[0] = v414;
                          v297 = v415;
                          v418[1] = v415;
                          v418[2] = v416;
                          v418[3] = v5;
                          v418[4] = v402;
                          v418[5] = v401;
                          v418[6] = v400;
                          v418[7] = v399;
                          v418[8] = v398;
                          v418[9] = v397;
                          v418[10] = v396;
                          v418[11] = v279;
                          v418[12] = v286;
                          memcpy(v422, v418, sizeof(v422));

                          sub_100037C7C(v418, v417);
                          sub_100047CAC();
                          memcpy(v419, v417, sizeof(v419));
                          sub_10004AF54(v419);
                          v298 = [v389 identifier];
                          v299 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                          v301 = v300;

                          v302 = v394;
                          v303 = v406;
                          v304 = v408;
                          if (v394[2] && (v305 = sub_10000C2A0(v296, v297), (v306 & 1) != 0))
                          {
                            v307 = v305;

                            v308 = v416;
                            (*(v376 + 16))(v405, v302[7] + *(v376 + 72) * v307, v303);
                            v309 = v390;
                          }

                          else
                          {
                            sub_10002EB80(&unk_100198B60, &qword_10014E3C0);
                            v310 = swift_allocObject();
                            *(v310 + 16) = v380;
                            v311 = v304;
                            v312 = v303;
                            v313 = v416;
                            *(v310 + 32) = v416;
                            *(v310 + 40) = v5;
                            *(v310 + 48) = v313;
                            *(v310 + 56) = v5;
                            *(v310 + 64) = v299;
                            *(v310 + 72) = v301;
                            *(v310 + 80) = v299;
                            *(v310 + 88) = v301;
                            v309 = v390;
                            *(v310 + 96) = v311;
                            *(v310 + 104) = v309;
                            *(v310 + 112) = v296;
                            *(v310 + 120) = v297;
                            swift_bridgeObjectRetain_n();

                            v308 = v313;
                            v314 = v405;
                            static UUID.withSalts(_:)();

                            v315 = v381;
                            (*v383)(v381, v314, v312);
                            v316 = v420;
                            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                            v417[0] = v316;
                            sub_100069084(v315, v296, v297, isUniquelyReferenced_nonNull_native);

                            v394 = v417[0];
                            v420 = v417[0];
                          }

                          v318 = v410;
                          v319 = [v410 displayRepresentation];
                          v415 = [v319 title];

                          v320 = [v318 displayRepresentation];
                          v321 = [v320 title];

                          v322 = [v321 key];
                          v323 = v309;
                          v414 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                          v325 = v324;

                          object = v395._object;

                          v327 = [v318 identifier];
                          v328 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                          v330 = v329;

                          v417[3] = &type metadata for String;
                          v417[0] = v328;
                          v417[1] = v330;
                          v331 = [v318 displayRepresentation];
                          v332 = objc_allocWithZone(LNValue);
                          v333 = sub_100068864(v417, v407, v331);
                          v334 = objc_allocWithZone(LNProperty);
                          v335 = sub_10010BB9C(v395._countAndFlagsBits, object, v333);
                          v336 = v404;
                          (*v382)(v404, v405, v406);
                          v337 = v385;
                          v338 = (v336 + v385[5]);
                          *v338 = v308;
                          v338[1] = v5;
                          v339 = (v336 + v337[6]);
                          *v339 = v408;
                          v339[1] = v323;
                          *(v336 + v337[7]) = v415;
                          v340 = (v336 + v337[8]);
                          *v340 = v414;
                          v340[1] = v325;
                          *(v336 + v337[9]) = v335;
                          *(v336 + v337[10]) = 0;
                          v341 = (v336 + v337[11]);
                          *v341 = 0;
                          v341[1] = 0;
                          v49 = v409;
                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            sub_100070490(0, v49[2] + 1, 1, v49);
                            v49 = v346;
                          }

                          v224 = v387;
                          v241 = v403;
                          v343 = v49[2];
                          v342 = v49[3];
                          if (v343 >= v342 >> 1)
                          {
                            v347 = sub_100002AB8(v342);
                            sub_100070490(v347, v348, v349, v49);
                            v49 = v350;
                          }

                          sub_10004AF54(v418);
                          v49[2] = v343 + 1;
                          sub_1000119CC();
                          sub_10005550C(v404, v49 + v344 + *(v345 + 72) * v343);
                          if (v241 == v386)
                          {

                            goto LABEL_163;
                          }

                          v216 = v393;
                        }

                        __break(1u);
LABEL_180:
                        __break(1u);
LABEL_181:
                        __break(1u);
                        break;
                      }
                    }

                    else
                    {
                      v240 = *((v224 & 0xFFFFFFFFFFFFFF8) + 0x10);
                      if (v240)
                      {
                        goto LABEL_133;
                      }
                    }

LABEL_164:
                    v217 = v374 + 1;
                    v130 = v365;
                    if (v374 + 1 == v367)
                    {
                      goto LABEL_171;
                    }

                    goto LABEL_112;
                  }
                }

                else
                {
                }

                v216 = v393;
                goto LABEL_131;
              }

LABEL_163:

              v216 = v393;
              goto LABEL_164;
            }

            v91 = v391;
            goto LABEL_67;
          }
        }

        else
        {
        }
      }

      v92 = v379;
      v93 = [v379 valueType];
      objc_opt_self();
      v94 = swift_dynamicCastObjCClass();
      if (v94)
      {
        v414 = v93;
        v95 = v94;
        sub_100003D44(0, &qword_100199300, NSObject_ptr);
        v96 = [objc_opt_self() BOOLValueType];
        v411 = v95;
        v97 = static NSObject.== infix(_:_:)();

        if (v97)
        {
          v98 = [v373 phraseTemplates];
          v99 = sub_100009A00();
          sub_100003D44(v99, &qword_10019AD00, LNStaticDeferredLocalizedString_ptr);
          sub_10001AAC8();
          v412 = v100;
          v101 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v102 = v414;
          if (v101 >> 62)
          {
            v103 = sub_10001E0A4();
            if (!v103)
            {
              goto LABEL_80;
            }

LABEL_56:
            v419[0] = _swiftEmptyArrayStorage;
            v104 = sub_10006A0A4();
            sub_100011438(v104, v105, v106);
            if (v103 < 0)
            {
              goto LABEL_187;
            }

            v107 = 0;
            v108 = v419[0];
            v415 = v101 & 0xC000000000000001;
            v109 = v101;
            do
            {
              v110 = v108;
              if (v415)
              {
                v111 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v111 = *(v101 + 8 * v107 + 32);
              }

              v112 = v111;
              v113 = [v112 key];
              v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v116 = v115;

              v108 = v110;
              v419[0] = v110;
              v117 = v110[2];
              if (v117 >= v110[3] >> 1)
              {
                v119 = sub_1000183E8();
                sub_100011438(v119, v120, v121);
                v108 = v419[0];
              }

              ++v107;
              v108[2] = v117 + 1;
              v118 = &v108[2 * v117];
              v118[4] = v114;
              v118[5] = v116;
              v101 = v109;
            }

            while (v103 != v107);

            v5 = v413;
            v102 = v414;
          }

          else
          {
            v103 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v103)
            {
              goto LABEL_56;
            }

LABEL_80:

            v108 = _swiftEmptyArrayStorage;
          }

          v143 = v108[2];
          v415 = v108;
          if (!v143)
          {
LABEL_105:

            v49 = v409;
            goto LABEL_106;
          }

          v144 = v108 + 5;
          while (2)
          {
            v146 = *(v144 - 1);
            v145 = *v144;
            v419[0] = v146;
            sub_100012A64();
            String.append(_:)(v395);
            v147._countAndFlagsBits = 125;
            v147._object = 0xE100000000000000;
            String.append(_:)(v147);
            sub_10000BE0C();
            v148 = StringProtocol.contains<A>(_:)();

            if (v148)
            {
              v149 = [v379 typeSpecificMetadata];
              type metadata accessor for LNValueTypeSpecificMetadataKey(0);
              sub_100003AC8();
              sub_1000236AC(&qword_100198950, v150);
              v151 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

              if (*(v151 + 16))
              {
                v152 = sub_10004B2BC();
                if (v153)
                {
                  sub_10000EE54(v152);
                  if (swift_dynamicCast())
                  {
                    v154 = v418[0];
                    if (*(v151 + 16) && (v155 = sub_10004B2BC(), (v156 & 1) != 0))
                    {
                      sub_10000EE54(v155);

                      if (swift_dynamicCast())
                      {
                        v408 = v418[0];
                        v163 = v352;
                        sub_1000669F4(1702195828, 0xE400000000000000, v157, v158, v159, v160, v161, v162, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363);

                        v164 = v154;
                        v165 = [v164 key];
                        v407 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                        v403 = v166;

                        v419[3] = &type metadata for Bool;
                        LOBYTE(v419[0]) = 1;
                        v167 = objc_allocWithZone(LNValue);
                        v168 = v414;

                        v169 = v168;
                        sub_1000688F0(v419, v411);
                        v170 = objc_allocWithZone(LNProperty);
                        sub_100024854();
                        sub_1000026A4((v163 + v385[5]));
                        v172 = (v163 + v171);
                        *v172 = v146;
                        v172[1] = v145;
                        v174 = v173[7];
                        v410 = v164;
                        *(v163 + v174) = v164;
                        v175 = (v163 + v173[8]);
                        v176 = v403;
                        *v175 = v407;
                        v175[1] = v176;
                        *(v163 + v173[9]) = v177;
                        *(v163 + v173[10]) = 0;
                        v178 = (v163 + v173[11]);
                        *v178 = 0;
                        v178[1] = 0;
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          sub_100070490(0, v409[2] + 1, 1, v409);
                          v409 = v207;
                        }

                        v180 = v409[2];
                        v179 = v409[3];
                        if (v180 >= v179 >> 1)
                        {
                          v208 = sub_100002AB8(v179);
                          sub_100070490(v208, v209, v210, v409);
                          v409 = v211;
                        }

                        v181 = v409;
                        v409[2] = v180 + 1;
                        sub_1000119CC();
                        v407 = v182;
                        v403 = *(v183 + 72);
                        sub_10005550C(v352, v182 + v181 + v403 * v180);
                        v184 = v353;
                        sub_1000669F4(0x65736C6166, 0xE500000000000000, v185, v186, v187, v188, v189, v190, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363);

                        v191 = v408;
                        v192 = [v408 key];
                        v193 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                        v401 = v194;
                        v402 = v193;

                        v419[3] = &type metadata for Bool;
                        LOBYTE(v419[0]) = 0;
                        v195 = objc_allocWithZone(LNValue);

                        sub_1000688F0(v419, v411);
                        v196 = objc_allocWithZone(LNProperty);
                        sub_100024854();
                        sub_1000026A4((v184 + v385[5]));
                        v198 = (v184 + v197);
                        *v198 = v146;
                        v198[1] = v145;
                        *(v184 + v199[7]) = v191;
                        v200 = (v184 + v199[8]);
                        v201 = v401;
                        *v200 = v402;
                        v200[1] = v201;
                        *(v184 + v199[9]) = v202;
                        *(v184 + v199[10]) = 0;
                        v203 = (v184 + v199[11]);
                        *v203 = 0;
                        v203[1] = 0;
                        v205 = *(v181 + 16);
                        v204 = *(v181 + 24);
                        if (v205 >= v204 >> 1)
                        {
                          v212 = sub_100002AB8(v204);
                          sub_100070490(v212, v213, v214, v409);
                          v409 = v215;
                        }

                        v206 = v409;
                        v409[2] = v205 + 1;
                        sub_10005550C(v353, v407 + v206 + v205 * v403);
                      }

                      else
                      {
                      }
                    }

                    else
                    {
                    }

                    v5 = v413;
                    v102 = v414;
LABEL_99:
                    v144 += 2;
                    if (!--v143)
                    {
                      goto LABEL_105;
                    }

                    continue;
                  }
                }
              }
            }

            break;
          }

          v5 = v413;
          goto LABEL_99;
        }

        v91 = v379;
LABEL_67:

        goto LABEL_106;
      }
    }

    else
    {
    }

LABEL_106:
    v74 = v375;
    if (v375 == v370)
    {
      goto LABEL_175;
    }
  }

  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
}

uint64_t type metadata accessor for LNAppShortcutParameterRecord(uint64_t a1)
{
  result = qword_10019A160;
  if (!qword_10019A160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000232FC(unint64_t a1)
{
  if (a1 >> 62)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

char *sub_100023320(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000B4400(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_100023394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return type metadata accessor for Expression(0, v4, a3, a4);
}

uint64_t sub_1000233AC(uint64_t a1, char a2, void *a3, void (*a4)(void), uint64_t *a5, uint64_t *a6)
{
  v7 = 0;
  v33 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v33 == v7)
    {
    }

    if (v7 >= *(a1 + 16))
    {
      break;
    }

    v9 = *(i - 2);
    v10 = *(i - 1);
    v11 = *i;
    v12 = *a3;

    v13 = v11;
    v15 = sub_10000C2A0(v9, v10);
    v16 = v12[2];
    v17 = (v14 & 1) == 0;
    if (__OFADD__(v16, v17))
    {
      goto LABEL_18;
    }

    v18 = v14;
    if (v12[3] >= v16 + v17)
    {
      if ((a2 & 1) == 0)
      {
        sub_10002EB80(a5, a6);
        _NativeDictionary.copy()();
      }
    }

    else
    {
      a4();
      sub_10000C2A0(v9, v10);
      sub_1000051A8();
      if (!v20)
      {
        goto LABEL_20;
      }

      v15 = v19;
    }

    v21 = *a3;
    if (v18)
    {
      v22 = *(v21[7] + 8 * v15);

      v23 = v21[7];
      v24 = *(v23 + 8 * v15);
      *(v23 + 8 * v15) = v22;
    }

    else
    {
      v21[(v15 >> 6) + 8] |= 1 << v15;
      v25 = (v21[6] + 16 * v15);
      *v25 = v9;
      v25[1] = v10;
      *(v21[7] + 8 * v15) = v13;
      v26 = v21[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_19;
      }

      v21[2] = v28;
    }

    ++v7;
    a2 = 1;
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

char *sub_10002357C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000B42E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_10002359C(void *a1)
{
  v1 = [a1 availabilityAnnotations];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for LNPlatformName(0);
  sub_100003D44(0, &qword_10019A0A8, LNAvailabilityAnnotation_ptr);
  sub_100003794();
  sub_1000236AC(v3, v4);
  sub_1000077D8();
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v5;
}

void sub_100023660(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1000236AC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_10001AAC8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1000236F0(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_100009A00();
  type metadata accessor for LNPlatformName(v3);
  sub_100003D44(0, &qword_10019A0A8, LNAvailabilityAnnotation_ptr);
  sub_100003794();
  sub_1000236AC(v4, v5);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7 = [v1 initWithAvailabilityAnnotations:isa];

  return v7;
}

uint64_t sub_1000237B0(void *a1)
{
  v1 = [a1 name];
  if (v1)
  {
    v2 = v1;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100002714();
  }

  else
  {
    sub_1000B65A8();
  }

  return sub_1000077D8();
}

void *sub_10002382C(uint64_t a1, uint64_t a2)
{
  v98 = a1;
  v99 = a2;
  type metadata accessor for LNAppShortcutParameterRecord(0);
  sub_100002944();
  v96 = v3;
  v97 = v2;
  __chkstk_darwin(v2);
  sub_100006724();
  v6 = (v4 - v5);
  __chkstk_darwin(v7);
  v10 = &v75 - v9;
  v79 = v8;
  if (v8 >> 62)
  {
LABEL_53:
    result = _CocoaArrayWrapper.endIndex.getter();
    v8 = v79;
    if (result)
    {
      goto LABEL_3;
    }
  }

  else
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
LABEL_3:
      v12 = 0;
      v80 = v8 & 0xC000000000000001;
      v77 = v8 & 0xFFFFFFFFFFFFFF8;
      v76 = v8 + 32;
      v13 = _swiftEmptyArrayStorage;
      v95 = v6;
      v78 = result;
      while (1)
      {
        if (v80)
        {
          v14 = v12;
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v12 >= *(v77 + 16))
          {
            __break(1u);
            return result;
          }

          v14 = v12;
          v15 = *(v76 + 8 * v12);
        }

        v82 = v15;
        v16 = __OFADD__(v14, 1);
        v6 = (v14 + 1);
        if (v16)
        {
          goto LABEL_52;
        }

        v81 = v6;
        v17 = [v82 basePhraseTemplateSubstitutions];
        v18 = sub_10000519C();
        sub_100003D44(v18, &qword_100199628, LNBasePhraseTemplateSubstitution_ptr);
        v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v20 = v19;
        v87 = v19;
        if (v19 >> 62)
        {
          v21 = _CocoaArrayWrapper.endIndex.getter();
          v20 = v87;
          if (v21)
          {
LABEL_11:
            v22 = 0;
            v86 = v20 & 0xC000000000000001;
            v84 = v20 & 0xFFFFFFFFFFFFFF8;
            v83 = v20 + 32;
            v85 = v21;
            while (1)
            {
              if (v86)
              {
                v23 = v22;
                v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v22 >= *(v84 + 16))
                {
                  goto LABEL_51;
                }

                v23 = v22;
                v24 = *(v83 + 8 * v22);
              }

              v100 = v24;
              v16 = __OFADD__(v23, 1);
              v6 = v23 + 1;
              if (v16)
              {
                break;
              }

              v88 = v6;
              v25 = [v100 parameterSubstitutions];
              v26 = sub_10000519C();
              sub_100003D44(v26, &qword_10019AD10, LNParameterSubstitution_ptr);
              v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              if (v27 >> 62)
              {
                v28 = _CocoaArrayWrapper.endIndex.getter();
                if (v28)
                {
LABEL_19:
                  v29 = 0;
                  v92 = v27;
                  v93 = v27 & 0xC000000000000001;
                  v89 = v27 + 32;
                  v90 = v27 & 0xFFFFFFFFFFFFFF8;
                  v91 = v28;
                  while (1)
                  {
                    if (v93)
                    {
                      v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                    }

                    else
                    {
                      if (v29 >= *(v90 + 16))
                      {
                        goto LABEL_49;
                      }

                      v30 = *(v89 + 8 * v29);
                    }

                    v104 = v30;
                    v16 = __OFADD__(v29, 1);
                    v31 = v29 + 1;
                    if (v16)
                    {
                      break;
                    }

                    v32 = [v104 substitutionValues];
                    v33 = sub_10000519C();
                    sub_100003D44(v33, &qword_100199630, LNSubstitutionValue_ptr);
                    v34 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

                    if (v34 >> 62)
                    {
                      v35 = _CocoaArrayWrapper.endIndex.getter();
                    }

                    else
                    {
                      v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    }

                    v94 = v31;
                    if (v35)
                    {
                      if (v35 < 1)
                      {
                        goto LABEL_48;
                      }

                      v36 = 0;
                      v101 = v34 & 0xC000000000000001;
                      v102 = v35;
                      v103 = v34;
                      do
                      {
                        v107 = v13;
                        if (v101)
                        {
                          v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                        }

                        else
                        {
                          v37 = *(v34 + 8 * v36 + 32);
                        }

                        v38 = v37;
                        v39 = [v37 parameterIdentifier];
                        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                        v40 = v99;

                        v41 = [v100 basePhraseTemplate];
                        v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                        v105 = v43;
                        v106 = v42;

                        v44 = [v38 title];
                        v45 = [v38 titleKey];
                        v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                        v48 = v47;

                        v49 = [v104 parameterIdentifier];
                        v50 = v10;
                        v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                        v53 = v52;

                        v54 = [v38 value];
                        v55 = objc_allocWithZone(LNProperty);
                        v56 = v51;
                        v10 = v50;
                        v57 = sub_10010BB9C(v56, v53, v54);
                        v58 = v97;
                        v59 = (v50 + v97[5]);
                        *v59 = v98;
                        v59[1] = v40;
                        v60 = (v50 + v58[6]);
                        v61 = v105;
                        *v60 = v106;
                        v60[1] = v61;
                        *(v50 + v58[7]) = v44;
                        v62 = (v50 + v58[8]);
                        *v62 = v46;
                        v62[1] = v48;
                        *(v50 + v58[9]) = v57;
                        *(v50 + v58[10]) = 0;
                        v63 = (v50 + v58[11]);
                        *v63 = 0;
                        v63[1] = 0;
                        v64 = v95;
                        sub_1000554A8(v50, v95);
                        v13 = v107;
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          v69 = sub_100004E28();
                          sub_100070490(v69, v70, v71, v13);
                          v13 = v72;
                        }

                        v66 = v13[2];
                        v65 = v13[3];
                        v6 = (v66 + 1);
                        if (v66 >= v65 >> 1)
                        {
                          v73 = sub_100005150(v65);
                          sub_100070490(v73, v66 + 1, 1, v13);
                          v13 = v74;
                        }

                        ++v36;

                        sub_100007E94();
                        sub_1000555F4();
                        v13[2] = v6;
                        sub_100003AA4();
                        sub_10005550C(v64, v13 + v67 + *(v68 + 72) * v66);
                        v34 = v103;
                      }

                      while (v102 != v36);
                    }

                    v29 = v94;
                    if (v94 == v91)
                    {
                      goto LABEL_42;
                    }
                  }

                  __break(1u);
LABEL_48:
                  __break(1u);
LABEL_49:
                  __break(1u);
                  break;
                }
              }

              else
              {
                v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v28)
                {
                  goto LABEL_19;
                }
              }

LABEL_42:

              v22 = v88;
              if (v88 == v85)
              {
                goto LABEL_43;
              }
            }

            __break(1u);
LABEL_51:
            __break(1u);
LABEL_52:
            __break(1u);
            goto LABEL_53;
          }
        }

        else
        {
          v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v21)
          {
            goto LABEL_11;
          }
        }

LABEL_43:

        v12 = v81;
        if (v81 == v78)
        {
          return v13;
        }
      }
    }
  }

  return _swiftEmptyArrayStorage;
}

void sub_100023F00(uint64_t *a1, id *a2, uint64_t a3)
{
  v7 = type metadata accessor for LNAppShortcutParameterRecord(0);
  v77 = *(v7 - 8);
  v78 = v7;
  v8 = __chkstk_darwin(v7);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [*a2 basePhraseTemplateSubstitutions];
  sub_100003D44(0, &qword_100199628, LNBasePhraseTemplateSubstitution_ptr);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v66 = sub_1000232F4(v12);
  if (!v66)
  {
LABEL_36:

    return;
  }

  v13 = 0;
  v70 = (a3 + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_destinationBundleIdentifier);
  v65 = v12 & 0xC000000000000001;
  v63 = v12 & 0xFFFFFFFFFFFFFF8;
  v62 = v12 + 32;
  v64 = v12;
  v71 = a1;
  v72 = v3;
  while (1)
  {
    if (v65)
    {
      v14 = v13;
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v13 >= *(v63 + 16))
      {
        goto LABEL_41;
      }

      v14 = v13;
      v15 = *(v62 + 8 * v13);
    }

    v79 = v15;
    v16 = __OFADD__(v14, 1);
    v17 = v14 + 1;
    if (v16)
    {
      goto LABEL_40;
    }

    v67 = v17;
    v18 = [v79 parameterSubstitutions];
    sub_100003D44(0, &qword_10019AD10, LNParameterSubstitution_ptr);
    v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v19 >> 62))
    {
      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v20)
      {
        break;
      }

      goto LABEL_32;
    }

    v20 = _CocoaArrayWrapper.endIndex.getter();
    if (v20)
    {
      break;
    }

LABEL_32:

    v13 = v67;
    if (v67 == v66)
    {
      goto LABEL_36;
    }
  }

  v21 = 0;
  v74 = v19;
  v75 = v19 & 0xC000000000000001;
  v68 = v19 + 32;
  v69 = v19 & 0xFFFFFFFFFFFFFF8;
  v73 = v20;
  while (1)
  {
    if (v75)
    {
      v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v21 >= *(v69 + 16))
      {
        goto LABEL_39;
      }

      v22 = *(v68 + 8 * v21);
    }

    v85 = v22;
    v16 = __OFADD__(v21++, 1);
    if (v16)
    {
      break;
    }

    v23 = [v85 substitutionValues];
    sub_100003D44(0, &qword_100199630, LNSubstitutionValue_ptr);
    v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v24 >> 62)
    {
      v25 = _CocoaArrayWrapper.endIndex.getter();
      if (!v25)
      {
LABEL_30:

        goto LABEL_31;
      }
    }

    else
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v25)
      {
        goto LABEL_30;
      }
    }

    if (v25 < 1)
    {
      goto LABEL_38;
    }

    v76 = v21;
    v26 = 0;
    v27 = *v70;
    v81 = v70[1];
    v82 = v27;
    v80 = v24 & 0xC000000000000001;
    v28 = *a1;
    v83 = v25;
    v84 = v24;
    do
    {
      v89 = v28;
      if (v80)
      {
        v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v29 = *(v24 + 8 * v26 + 32);
      }

      v30 = v29;
      v31 = [v29 parameterIdentifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v32 = v81;

      v33 = [v79 basePhraseTemplate];
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v87 = v35;
      v88 = v34;

      v86 = [v30 title];
      v36 = [v30 titleKey];
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;

      v40 = [v85 parameterIdentifier];
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v10;
      v44 = v43;

      v45 = [v30 value];
      v46 = objc_allocWithZone(LNProperty);
      v47 = v44;
      v10 = v42;
      v48 = sub_10010BB9C(v41, v47, v45);
      v49 = [v30 optionsCollectionTitle];
      v50 = sub_100090B0C(v30);
      v51 = v78;
      v52 = &v42[v78[5]];
      *v52 = v82;
      *(v52 + 1) = v32;
      v53 = &v42[v51[6]];
      v54 = v87;
      *v53 = v88;
      v53[1] = v54;
      *&v42[v51[7]] = v86;
      v55 = &v42[v51[8]];
      *v55 = v37;
      v55[1] = v39;
      *&v42[v51[9]] = v48;
      *&v42[v51[10]] = v49;
      v56 = &v42[v51[11]];
      *v56 = v50;
      v56[1] = v57;
      v28 = v89;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100070490(0, *(v28 + 16) + 1, 1, v28);
        v28 = v60;
      }

      v59 = *(v28 + 16);
      v58 = *(v28 + 24);
      v24 = v84;
      if (v59 >= v58 >> 1)
      {
        sub_100070490(v58 > 1, v59 + 1, 1, v28);
        v28 = v61;
      }

      ++v26;

      *(v28 + 16) = v59 + 1;
      sub_1000273D8(v10, v28 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v59, type metadata accessor for LNAppShortcutParameterRecord);
    }

    while (v83 != v26);

    a1 = v71;
    *v71 = v28;
    v20 = v73;
    v21 = v76;
LABEL_31:
    if (v21 == v20)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
}

void sub_10002453C(uint64_t a1)
{
  sub_100007F00(a1);
  if (v4)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_10007143C();
  sub_10001A9F4();
  if (!v5)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v6 = (*(v3 + 24) >> 1) - *(v3 + 16);
  type metadata accessor for LNAppShortcutParameterRecord(0);
  if (v6 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_100019D34();
  if (!v4)
  {
    *(v3 + 16) = v7;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_100024674()
{

  return swift_slowAlloc();
}

void *sub_100024690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return sub_1000034B4(va, v10);
}

uint64_t sub_1000246B4()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_1000246E4()
{
  v1 = *(v0 + 248);
  v2 = sub_1000034B4(*(v0 + 256), *(*(v0 + 256) + 24));

  return sub_100083CC0(v1, v2);
}

uint64_t sub_100024720()
{
}

void sub_100024778(uint64_t a1)
{

  v3 = v1 | 0x8000000000000000;
  String.append(_:)(*&a1);
}

uint64_t sub_100024790(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(v3 - 112) = result;
  *(v3 - 104) = a2;
  *(v3 - 96) = a3;
  return result;
}

void sub_1000247C4()
{
  v1 = 0x2045504143534520;
  v2 = 0xEA0000000000293FLL;

  String.append(_:)(*&v1);
}

BOOL sub_100024814(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void *sub_10002483C(void *a1)
{

  return memcpy(a1, &STACK[0x308], 0xB0uLL);
}

id sub_100024854()
{
  v4 = *(v0 + 360);

  return sub_10010BB9C(v4, v2, v1);
}

uint64_t sub_100024878(uint64_t a1)
{

  return swift_allocObject();
}

void sub_1000248CC(uint64_t a1)
{
  v2 = 0xED0000205345434ELL;

  String.append(_:)(*&a1);
}

uint64_t sub_1000248F0()
{

  return sub_100003E9C(v2 - 152, v0, v1);
}

uint64_t sub_100024924(void *a1)
{
  sub_1000034B4(a1, v1);

  return sub_100129C20();
}

uint64_t sub_10002495C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return sub_10013E158(v10, va, v12, a4, a5, v11, a7, a8);
}

char *sub_100024984(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = _swiftEmptyArrayStorage;
    if (!i)
    {
      return v6;
    }

    v17 = _swiftEmptyArrayStorage;
    result = sub_1000B3724(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v8 = 0;
    v6 = v17;
    while (v8 < i)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_17;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v10 = *(a3 + 8 * v8 + 32);
      }

      v11 = v10;
      v15 = v10;
      sub_100090368(&v15, a1, a2, __src);

      v17 = v6;
      v13 = v6[2];
      v12 = v6[3];
      if (v13 >= v12 >> 1)
      {
        sub_1000B3724((v12 > 1), v13 + 1, 1);
        v6 = v17;
      }

      v6[2] = v13 + 1;
      memcpy(&v6[13 * v13 + 4], __src, 0x68uLL);
      ++v8;
      if (v9 == i)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_100024B10(uint64_t result, uint64_t a2)
{
  if (__OFADD__(*(a2 + 16), *(result + 16)))
  {
    __break(1u);
  }

  else
  {
    sub_100024B98();
    v5 = v2;

    sub_100024CE4(v3);

    sub_1000252B8(v4);
    return v5;
  }

  return result;
}

void sub_100024B98()
{
  sub_1000088A4();
  if (v4)
  {
    sub_1000079A4();
    if (v5 != v6)
    {
      sub_100006A88();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100007164();
    }
  }

  sub_100006778();
  if (v3)
  {
    v7 = sub_10002EB80(&qword_10019A4D8, &qword_10014F218);
    v8 = sub_100011600(v7);
    sub_1000051D8(v8);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v9 = sub_10000751C();
  if (v1)
  {
    if (v3 != v0 || &v10[104 * v2] <= v9)
    {
      memmove(v9, v10, 104 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_100024C6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

void sub_100024CE4(uint64_t a1)
{
  v9 = *(a1 + 16);
  v10 = *(*v2 + 16);
  if (__OFADD__(v10, v9))
  {
    __break(1u);
    goto LABEL_10;
  }

  sub_100024C6C(v10 + v9, 1, sub_100024B98);
  v1 = *v2;
  v11 = *(*v2 + 16);
  v12 = (*(*v2 + 24) >> 1) - v11;
  sub_1000250FC(&v53, *v2 + 104 * v11 + 32, v12, a1);
  if (v13 < v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v13)
  {
    v17 = *(v1 + 16);
    v18 = __OFADD__(v17, v13);
    v19 = v17 + v13;
    if (v18)
    {
      __break(1u);
      goto LABEL_14;
    }

    *(v1 + 16) = v19;
  }

  if (v13 != v12)
  {
    sub_100014464(v53);
LABEL_8:
    *v2 = v1;
    return;
  }

LABEL_11:
  v14 = *(v1 + 16);
  v16 = v54;
  v34 = v54;
  v35 = v53;
  v15 = v55;
  v3 = v56;
  if (v57)
  {
    v20 = *(v1 + 16);
    v4 = (v57 - 1) & v57;
    v21 = __clz(__rbit64(v57)) | (v56 << 6);
    v33 = (v55 + 64) >> 6;
LABEL_19:
    memcpy(__dst, (*(v35 + 48) + 104 * v21), sizeof(__dst));
    v6 = *&__dst[8];
    v37 = *__dst;
    v40 = *&__dst[32];
    v41 = *&__dst[16];
    v38 = *&__dst[48];
    v39 = *&__dst[64];
    v5 = *&__dst[80];
    v9 = *&__dst[88];
    v7 = *&__dst[96];
    sub_100037C7C(__dst, v44);
    v24 = v20;
LABEL_20:
    if (v6)
    {
      v36 = *(v1 + 24) >> 1;
      if (v36 < v24 + 1)
      {
        v31 = v24;
        sub_100024B98();
        v24 = v31;
        v1 = v32;
        v36 = *(v32 + 24) >> 1;
      }

      while (1)
      {
        if (v24 >= v36)
        {
LABEL_34:
          *(v1 + 16) = v24;
          goto LABEL_20;
        }

        v25 = v9;
        v9 = v5;
        v5 = v37;
        v44[0] = v37;
        v44[1] = v6;
        v45 = v41;
        v46 = v40;
        v47 = v38;
        v48 = v39;
        v49 = v9;
        v50 = v25;
        v51 = v7;
        *__dst = v37;
        *&__dst[8] = v6;
        *&__dst[16] = v41;
        *&__dst[32] = v40;
        *&__dst[48] = v38;
        *&__dst[64] = v39;
        *&__dst[80] = v9;
        *&__dst[88] = v25;
        *&__dst[96] = v7;
        v26 = v24;
        sub_100037C7C(__dst, v43);
        sub_100025094(v44);
        v27 = v1 + 32 + 104 * v26;
        *v27 = v37;
        *(v27 + 8) = v6;
        *(v27 + 16) = v41;
        *(v27 + 32) = v40;
        *(v27 + 48) = v38;
        *(v27 + 64) = v39;
        *(v27 + 80) = v9;
        *(v27 + 88) = v25;
        *(v27 + 96) = v7;
        if (!v4)
        {
          break;
        }

        v28 = v3;
LABEL_30:
        v29 = __clz(__rbit64(v4));
        v4 &= v4 - 1;
        memcpy(v43, (*(v35 + 48) + 104 * (v29 | (v28 << 6))), sizeof(v43));
        v6 = *&v43[8];
        v37 = *v43;
        v40 = *&v43[32];
        v41 = *&v43[16];
        v38 = *&v43[48];
        v39 = *&v43[64];
        v5 = *&v43[80];
        v9 = *&v43[88];
        v7 = *&v43[96];
        sub_100037C7C(v43, v42);
        v30 = v26;
LABEL_31:
        v24 = v30 + 1;
        if (!v6)
        {
          goto LABEL_34;
        }
      }

      while (1)
      {
        v28 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        if (v28 >= v33)
        {
          sub_1000716AC();
          goto LABEL_31;
        }

        v4 = *(v34 + 8 * v28);
        ++v3;
        if (v4)
        {
          v3 = v28;
          goto LABEL_30;
        }
      }

      __break(1u);
    }

    sub_100014464(v35);
    *__dst = v37;
    *&__dst[8] = 0;
    *&__dst[16] = v41;
    *&__dst[32] = v40;
    *&__dst[48] = v38;
    *&__dst[64] = v39;
    *&__dst[80] = v5;
    *&__dst[88] = v9;
    *&__dst[96] = v7;
    sub_100025094(__dst);
    goto LABEL_8;
  }

LABEL_14:
  v33 = (v15 + 64) >> 6;
  while (1)
  {
    v22 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v22 >= ((v15 + 64) >> 6))
    {
      sub_1000716AC();
      goto LABEL_20;
    }

    v23 = *(v16 + 8 * v22);
    ++v3;
    if (v23)
    {
      v20 = v14;
      v4 = (v23 - 1) & v23;
      v21 = __clz(__rbit64(v23)) | (v22 << 6);
      v3 = v22;
      goto LABEL_19;
    }
  }

  __break(1u);
}

uint64_t sub_100025094(uint64_t a1)
{
  v2 = sub_10002EB80(&unk_10019BBD0, &qword_100151290);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000250FC(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = a4 + 56;
  v8 = -1 << *(a4 + 32);
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a4 + 56);
  if (!a2)
  {
    v12 = 0;
LABEL_21:
    *a1 = a4;
    a1[1] = v7;
    a1[2] = ~v8;
    a1[3] = v12;
    a1[4] = v10;
    return;
  }

  if (!a3)
  {
    v12 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    sub_100012868();
    v21 = v14;
    v16 = (v15 - v14) >> 6;
    while (1)
    {
      if (v13 >= a3)
      {
        goto LABEL_24;
      }

      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_25;
      }

      if (!v10)
      {
        while (1)
        {
          v18 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v18 >= v16)
          {
            v10 = 0;
            goto LABEL_19;
          }

          v10 = *(v7 + 8 * v18);
          ++v12;
          if (v10)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v18 = v12;
LABEL_15:
      sub_100023340();
      v20 = (*(a4 + 48) + 104 * (v19 | (v18 << 6)));
      memcpy(__dst, v20, 0x68uLL);
      memmove(v4, v20, 0x68uLL);
      if (v17 == a3)
      {
        break;
      }

      v4 += 104;
      sub_100037C7C(__dst, v22);
      v13 = v17;
      v12 = v18;
    }

    sub_100037C7C(__dst, v22);
    v12 = v18;
LABEL_19:
    v8 = v21;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
}

uint64_t sub_100025278(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

void sub_1000252B8(uint64_t a1)
{
  v4 = sub_100007F00(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_100024C6C(v4, 1, sub_100024B98);
  sub_10001A9F4();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_100003AE4();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_100018714();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_100019D34();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_100025360()
{
  sub_1000067D4();
  v7 = v0;
  v8 = v4;
  v9 = v3;
  v10 = v2;
  v11 = v1;
  ObjectType = swift_getObjectType();
  return Connection.transaction(_:block:)(0, sub_100025D90, &v6);
}

uint64_t Connection.transaction(_:block:)(char a1, void (*a2)(uint64_t), uint64_t a3)
{
  _StringGuts.grow(_:)(20);

  if (a1)
  {
    if (a1 == 1)
    {
      v6 = 0x54414944454D4D49;
    }

    else
    {
      v6 = 0x564953554C435845;
    }

    v7 = 0xE900000000000045;
  }

  else
  {
    v7 = 0xE800000000000000;
    v6 = 0x4445525245464544;
  }

  v8 = v7;
  String.append(_:)(*&v6);

  v9._countAndFlagsBits = 0x4341534E41525420;
  v9._object = 0xEC0000004E4F4954;
  String.append(_:)(v9);
  sub_100025558(0x204E49474542, 0xE600000000000000, a2, a3, 0xD000000000000012, 0x8000000100155BB0, 0xD000000000000014, 0x8000000100155B90);
}

uint64_t sub_100025558(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100015918();
  v10 = qword_10019CA08;

  if (v10 != -1)
  {
    swift_once();
  }

  static OS_dispatch_queue.getSpecific<A>(key:)();
  v11 = sub_100015D94();
  if ((v17 & 1) != 0 || v16 != v11)
  {
    v13 = *(v8 + 104);
    OS_dispatch_queue.sync<A>(execute:)();
  }

  else
  {
    Connection.run(_:_:)();
    if (v15)
    {
    }

    else
    {

      a3(v12);
      Connection.run(_:_:)();
    }
  }
}

uint64_t Connection.run(_:_:)()
{
  sub_100007400();
  return sub_1000258F0(v0, v1, v2, v3);
}

{
  return Connection.run(_:_:)();
}

{
  sub_100007D4C();
  return sub_1000258F0(v0, v1, v2, v3);
}

uint64_t sub_1000257C0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  result = Connection.run(_:_:)();
  if (!v4)
  {

    a4(v7);
    Connection.run(_:_:)();
  }

  return result;
}

uint64_t sub_1000258F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  Connection.prepare(_:_:)(a1, a2, _swiftEmptyArrayStorage);
  if (!v5)
  {
    a4(a3);
    v4 = Statement.run(_:)(_swiftEmptyArrayStorage);
  }

  return v4;
}

uint64_t Statement.run(_:)(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  if (*(a1 + 16))
  {
    Statement.bind(_:)(a1);
    v5 = Statement.run(_:)(_swiftEmptyArrayStorage);

    if (!v2)
    {
      return v5;
    }
  }

  else
  {
    sub_10001AFE8(0);
    sub_100015918();
    v6 = *(v1 + 24);
    sub_100008318();
    swift_beginAccess();
    do
    {
      while (1)
      {
        v7 = qword_10019CA08;

        if (v7 != -1)
        {
          swift_once();
        }

        static OS_dispatch_queue.getSpecific<A>(key:)();
        v8 = sub_100015D94();
        if ((v14 & 1) != 0 || v13 != v8)
        {
          break;
        }

        v9 = sqlite3_step(*(v4 + 16));
        v10 = sub_100015DD4(v9, 0);

        if (v3)
        {
          return v4;
        }

        if (v10 != 100)
        {
          goto LABEL_16;
        }
      }

      v11 = *(v6 + 104);
      OS_dispatch_queue.sync<A>(execute:)();

      if (v3)
      {
        return v4;
      }
    }

    while ((v15 & 1) != 0);
LABEL_16:
  }

  return v4;
}

{
  Statement.bind(_:)(a1);
  v1 = Statement.run(_:)(_swiftEmptyArrayStorage);
  sub_1000053AC();
  return v1;
}

{
  Statement.bind(_:)(a1);
  v1 = Statement.run(_:)(_swiftEmptyArrayStorage);
  sub_1000053AC();
  return v1;
}

void sub_100025B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100025DB4();
  if (!v5)
  {
    sub_100026EA4(a1, a4, a5);
  }
}

void sub_100025DB4()
{
  v1 = sub_10001AAC8();
  sub_100025FD0(v1, v2, v3);
  if (v0)
  {
    type metadata accessor for Schema.RuntimeError(0);
    sub_100002B5C();
    sub_100084084(v4, v5);
    sub_100005244();
    swift_allocError();
    sub_100012058();
    sub_10001D5E0();
    swift_willThrow();
  }
}

void sub_100025E44()
{
  sub_100004DF0();
  v1 = v0;
  v3 = v2;
  if (qword_100198170 != -1)
  {
    sub_100007ED0(&qword_100198170);
  }

  memcpy(__dst, &unk_100199F00, sizeof(__dst));
  if (qword_100198180 != -1)
  {
    sub_100007130(&qword_100198180);
  }

  sub_100003A8C(&qword_100199FC8);
  __src[0] = v3;
  __src[1] = v1;
  == infix<A>(_:_:)();
  sub_100006430();
  memcpy(v13, __dst, sizeof(v13));
  v4 = sub_100006768();
  QueryType.filter(_:)(v4, v5, v6, &type metadata for Table, &protocol witness table for Table, v7, v8, v9, v13[0], v13[1], v13[2], v13[3], v13[4], v13[5], v13[6], v13[7], v13[8], v13[9], v13[10], v13[11], v13[12], v13[13], v13[14], v13[15], v13[16], v13[17], v13[18], v13[19], v13[20], v13[21], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], __src[15]);

  memcpy(v16, __src, sizeof(v16));
  memcpy(__src, v16, sizeof(__src));
  v17 = QueryType.delete()();
  countAndFlagsBits = v17.template._countAndFlagsBits;
  object = v17.template._object;
  rawValue = v17.bindings._rawValue;
  sub_10001970C(v16);
  v18.template._countAndFlagsBits = countAndFlagsBits;
  v18.template._object = object;
  v18.bindings._rawValue = rawValue;
  Connection.run(_:)(v18);

  sub_100004674();
}

void sub_100025FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100025E44();
  if (!v3)
  {
    sub_100026B68();
    if (qword_100198258 != -1)
    {
      swift_once();
    }

    memcpy(__dst, &unk_10019AE58, sizeof(__dst));
    if (qword_100198268 != -1)
    {
      swift_once();
    }

    v6 = == infix<A>(_:_:)();
    v8 = v7;
    v10 = v9;
    memcpy(v19, __dst, sizeof(v19));
    QueryType.filter(_:)(v6, v8, v10, &type metadata for Table, &protocol witness table for Table, v11, v12, v13, v18, v19[0], v19[1], v19[2], v19[3], v19[4], v19[5], v19[6], v19[7], v19[8], v19[9], v19[10], v19[11], v19[12], v19[13], v19[14], v19[15], v19[16], v19[17], v19[18], v19[19], v19[20], v19[21], a2, a3, __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14]);

    memcpy(v19, __src, sizeof(v19));
    v23 = QueryType.delete()();
    countAndFlagsBits = v23.template._countAndFlagsBits;
    object = v23.template._object;
    rawValue = v23.bindings._rawValue;
    memcpy(v22, v19, 0xB0uLL);
    sub_10001970C(v22);

    v24.template._countAndFlagsBits = countAndFlagsBits;
    v24.template._object = object;
    v24.bindings._rawValue = rawValue;
    Connection.run(_:)(v24);

    if (!v17)
    {
      sub_100026CFC(a2, a3);
    }
  }
}

AppIntents_SQLite::Delete __swiftcall QueryType.delete()()
{
  sub_10002EB80(&qword_10019CBB8, &unk_100152950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014F0D0;
  v1 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
  *(inited + 64) = &protocol witness table for Expression<A>;
  *(inited + 32) = 0x46204554454C4544;
  *(inited + 40) = 0xEB000000004D4F52;
  *(inited + 48) = _swiftEmptyArrayStorage;
  *(inited + 56) = v1;
  sub_10001209C();
  sub_100017FF8();
  sub_10001DD70();
  sub_100017D44();
  sub_10001209C();
  sub_100026438(v2, v3);
  v4 = sub_10001209C();
  sub_1000265D4(v4, v5, v6);
  sub_10001209C();
  sub_100026758(v7, v8);
  for (i = 32; i != 232; i += 40)
  {
    v10 = sub_1000127E8();
    sub_100011950(v10, v11, v12, v13, v14, v15, v16, v17, v44, *(&v44 + 1), v45, v46, v47, v48, *(&v48 + 1), v49, v50, v51, v52[0], v52[1], v53);
    if (v26)
    {
      sub_10001A798(&v44, &v48);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100003CC8();
      }

      sub_100012144();
      if (v36)
      {
        sub_100006B88(v35);
      }

      sub_10001A8FC(v27, v28, v29, v30, v31, v32, v33, v34, v44, *(&v44 + 1), v45, v46, v47, v48);
    }

    else
    {
      v37 = sub_1000247B8(v18, v19, v20, v21, v22, v23, v24, v25, v44);
      sub_10001A940(v37, v38);
    }
  }

  swift_setDeallocating();
  sub_10001AC30();
  sub_100009AA4(v52);

  v39 = sub_100002E7C(v52);
  v40(v39);
  sub_100003CB8();
  sub_1000034F8(v52);
  sub_100007D30();
  sub_100018B38();
  result.bindings._rawValue = v43;
  result.template._object = v42;
  result.template._countAndFlagsBits = v41;
  return result;
}

void sub_1000263CC()
{
  *(v1 + 16) = v2;
  v7 = (v1 + v6 * v5);
  v7[4] = v4;
  v7[5] = v3;
  v7[6] = v0;
}

void sub_1000263E0()
{
}

double sub_100026438@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  (*(a1 + 16))(v9);
  v12 = v10;
  v13 = v11;
  sub_100011F4C();
  sub_100018C3C(v9);
  v3 = *(&v12 + 1);
  if (*(&v12 + 1))
  {
    v4 = v13;
    v5 = v12;
    sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10014BC40;
    v7 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
    *(inited + 64) = &protocol witness table for Expression<A>;
    *(inited + 32) = 0x4552454857;
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = _swiftEmptyArrayStorage;
    *(inited + 56) = v7;
    *(inited + 96) = sub_10002EB80(&qword_10019CBE0, &unk_100152980);
    *(inited + 104) = &protocol witness table for Expression<A>;
    *(inited + 72) = v5;
    *(inited + 80) = v3;
    *(inited + 88) = v4;
    sub_100013640(inited, a2);
    swift_setDeallocating();
    sub_100018898();
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_100026594(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1000265D4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v6(v13);
  v7 = v14;
  v16 = v14;

  sub_100018C3C(v13);
  v8 = *(v7 + 16);
  sub_10001A940(&v16, &qword_10019CCD8);
  if (v8)
  {
    sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10014BC40;
    v10 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
    *(inited + 64) = &protocol witness table for Expression<A>;
    *(inited + 32) = 0x594220524544524FLL;
    *(inited + 40) = 0xE800000000000000;
    *(inited + 48) = _swiftEmptyArrayStorage;
    *(inited + 56) = v10;
    (v6)(v15, a1, a2);
    v11 = v15[17];

    sub_100018C3C(v15);
    sub_100013640(v11, (inited + 72));

    sub_100013640(inited, a3);
    swift_setDeallocating();
    sub_100018898();
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_100026758@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  (*(a1 + 16))(v9);
  result = sub_100018C3C(v9);
  if (v11)
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    v4 = v10;
    v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v5);

    if (v4)
    {
      result = sub_10002EB80(&qword_10019CA28, &unk_100152718);
      *(a2 + 32) = &protocol witness table for Expression<A>;
      *a2 = 0x2054494D494CLL;
      *(a2 + 8) = 0xE600000000000000;
      *(a2 + 16) = _swiftEmptyArrayStorage;
      *(a2 + 24) = result;
    }

    else
    {
      sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10014BC40;
      v7 = sub_10002EB80(&qword_10019CA28, &unk_100152718);
      *(inited + 64) = &protocol witness table for Expression<A>;
      *(inited + 32) = 0x2054494D494CLL;
      *(inited + 40) = 0xE600000000000000;
      *(inited + 48) = _swiftEmptyArrayStorage;
      *(inited + 56) = v7;
      v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v8);

      *(inited + 96) = v7;
      *(inited + 104) = &protocol witness table for Expression<A>;
      *(inited + 72) = 0x2054455346464FLL;
      *(inited + 80) = 0xE700000000000000;
      *(inited + 88) = _swiftEmptyArrayStorage;
      sub_100013640(inited, a2);
      swift_setDeallocating();
      return sub_100018898();
    }
  }

  return result;
}

uint64_t sub_100026960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  sub_100011724();

  return a4(v4, v4, v7, v6, v5);
}

id sub_1000269C0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_100015918();
  if (qword_10019CA08 != -1)
  {
    sub_1000082CC(&qword_10019CA08);
  }

  static OS_dispatch_queue.getSpecific<A>(key:)();
  v9 = sub_100015D94();
  if ((v16 & 1) != 0 || v15 != v9)
  {
    v10 = *(a1 + 104);
    OS_dispatch_queue.sync<A>(execute:)();

    if (!v6)
    {
      v10 = v17;
    }
  }

  else
  {
    v10 = a2;
    Connection.run(_:_:)();
    if (v6)
    {
    }

    else
    {

      v13 = Connection.handle.getter(v11, v12);
      LODWORD(v10) = sqlite3_changes(v13);

      v10 = v10;
    }
  }

  return v10;
}

void sub_100026B68()
{
  sub_100004DF0();
  v3 = v2;
  v5 = v4;
  if (qword_1001980E0 != -1)
  {
    sub_100002A28(&qword_1001980E0);
  }

  memcpy(__dst, &unk_100199400, sizeof(__dst));
  if (qword_1001980E8 != -1)
  {
    sub_100007E74(&qword_1001980E8);
  }

  sub_100003A8C(&qword_1001994B0);
  __src[0] = v5;
  v6 = == infix<A>(_:_:)();
  sub_1000115B0();
  memcpy(v13, __dst, sizeof(v13));
  QueryType.filter(_:)(v6, v0, v1, &type metadata for Table, &protocol witness table for Table, v7, v8, v9, v13[0], v13[1], v13[2], v13[3], v13[4], v13[5], v13[6], v13[7], v13[8], v13[9], v13[10], v13[11], v13[12], v13[13], v13[14], v13[15], v13[16], v13[17], v13[18], v13[19], v13[20], v13[21], __src[0], v3, __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], __src[15]);

  memcpy(v13, __src, sizeof(v13));
  v17 = QueryType.delete()();
  countAndFlagsBits = v17.template._countAndFlagsBits;
  object = v17.template._object;
  rawValue = v17.bindings._rawValue;
  memcpy(v16, v13, sizeof(v16));
  sub_10001970C(v16);
  v18.template._countAndFlagsBits = countAndFlagsBits;
  v18.template._object = object;
  v18.bindings._rawValue = rawValue;
  Connection.run(_:)(v18);

  sub_100004674();
}

uint64_t sub_100026CFC(uint64_t a1, uint64_t a2)
{
  if (qword_1001981D0 != -1)
  {
    sub_100007F18(&qword_1001981D0);
  }

  memcpy(__dst, &unk_10019A568, sizeof(__dst));
  if (qword_1001981E0 != -1)
  {
    sub_100002B1C(&qword_1001981E0);
  }

  sub_100003A8C(&qword_10019A630);
  __src[0] = a1;
  v4 = == infix<A>(_:_:)();
  v6 = v5;
  v8 = v7;
  memcpy(v16, __dst, sizeof(v16));
  QueryType.filter(_:)(v4, v6, v8, &type metadata for Table, &protocol witness table for Table, v9, v10, v11, v16[0], v16[1], v16[2], v16[3], v16[4], v16[5], v16[6], v16[7], v16[8], v16[9], v16[10], v16[11], v16[12], v16[13], v16[14], v16[15], v16[16], v16[17], v16[18], v16[19], v16[20], v16[21], __src[0], a2, __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], __src[15]);

  memcpy(v16, __src, sizeof(v16));
  v20 = QueryType.delete()();
  countAndFlagsBits = v20.template._countAndFlagsBits;
  object = v20.template._object;
  rawValue = v20.bindings._rawValue;
  memcpy(v19, v16, sizeof(v19));
  sub_10001970C(v19);
  v21.template._countAndFlagsBits = countAndFlagsBits;
  v21.template._object = object;
  v21.bindings._rawValue = rawValue;
  Connection.run(_:)(v21);
}

uint64_t sub_100026EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + OBJC_IVAR____TtC10LinkDaemon13MetadataStore_connection);
  v6 = *(a2 + 16);

  for (i = 0; v6 != i; ++i)
  {
    type metadata accessor for LNAppShortcutParameterRecord(0);
    sub_100067070();
    if (v3)
    {
    }
  }

  v9 = *(a3 + 16);
  v10 = (a3 + 32);

  if (!v9)
  {
  }

  while (1)
  {
    memcpy(__dst, v10, sizeof(__dst));
    sub_100037C7C(__dst, &v11);
    sub_100096494(__dst, v5);
    if (v3)
    {
      break;
    }

    sub_10004AF54(__dst);
    v10 += 104;
    if (!--v9)
    {
    }
  }

  return sub_10004AF54(__dst);
}

void sub_100027028(uint64_t a1)
{

  sub_100011438(a1, v1, 1);
}

uint64_t sub_100027044()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 1024;
}

uint64_t sub_100027068(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100002714();
  }

  return sub_1000077D8();
}

unint64_t sub_1000270C0()
{
  result = qword_100198E20;
  if (!qword_100198E20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100198E20);
  }

  return result;
}

uint64_t sub_100027104(uint64_t a1, uint64_t a2)
{
  v3 = sub_100009A00();
  v4(v3);
  sub_10000482C();
  v5 = sub_1000077D8();
  v6(v5);
  return a2;
}

uint64_t sub_100027170(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_10002EB80(&qword_1001990C0, &unk_10014E200);
    sub_1000FDA70();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(a4 + 20);
    }

    else
    {
      v10 = type metadata accessor for Date();
      v11 = *(a4 + 28);
    }

    return sub_1000075C4(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_100027240(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_10000482C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1000272AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_10002EB80(&qword_1001990C0, &unk_10014E200);
    sub_1000FDA70();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(a3 + 20);
    }

    else
    {
      v10 = type metadata accessor for Date();
      v11 = *(a3 + 28);
    }

    return sub_1000032C4(a1 + v11, a2, v10);
  }
}

uint64_t sub_100027380()
{
}

uint64_t sub_1000273D8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_10000482C();
  v4 = sub_1000077D8();
  v5(v4);
  return a2;
}

uint64_t sub_100027434()
{
  sub_10002EB80(&qword_10019B720, &qword_100150C40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014EE00;
  sub_100003720();
  *(v1 + 32) = 0xD000000000000010;
  *(v1 + 40) = v2;
  sub_1000275B8(&off_10018B3A0);
  sub_100003720();
  *(inited + 48) = v3;
  *(inited + 56) = 0xD000000000000015;
  *(inited + 64) = v4;
  sub_1000275B8(&off_10018B3D0);
  sub_100003720();
  *(inited + 72) = v5;
  *(inited + 80) = 0xD000000000000015;
  *(inited + 88) = v6;
  sub_1000275B8(&off_10018B410);
  sub_100003720();
  *(inited + 96) = v7;
  *(inited + 104) = 0xD00000000000001ALL;
  *(inited + 112) = v8;
  sub_1000275B8(&off_10018B480);
  sub_100003720();
  *(inited + 120) = v9;
  *(inited + 128) = 0xD000000000000013;
  *(inited + 136) = v10;
  sub_1000275B8(&off_10018B4B0);
  sub_100003720();
  *(inited + 144) = v11;
  *(inited + 152) = 0xD00000000000001ALL;
  *(inited + 160) = v12;
  sub_1000275B8(&off_10018B500);
  sub_100003720();
  *(inited + 168) = v13;
  *(inited + 176) = 0xD000000000000010;
  *(inited + 184) = v14;
  *(inited + 192) = sub_1000275B8(&off_10018B580);
  sub_10002EB80(&qword_10019B728, &qword_100150C48);
  return Dictionary.init(dictionaryLiteral:)();
}

void sub_100027678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_100004B54();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = *v30;
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._finalize()();
  sub_10000884C();
  v40 = ~v39;
  while (1)
  {
    v41 = v38 & v40;
    if (((1 << (v38 & v40)) & *(v37 + 56 + (((v38 & v40) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      break;
    }

    v42 = (*(v37 + 48) + 16 * v41);
    v43 = *v42 == v34 && v42[1] == v32;
    if (v43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v44 = (*(v37 + 48) + 16 * v41);
      v45 = v44[1];
      *v36 = *v44;
      v36[1] = v45;

      goto LABEL_11;
    }

    v38 = v41 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v30;

  sub_1000277A8(v34, v32, v41, isUniquelyReferenced_nonNull_native);
  *v30 = v47;
  *v36 = v34;
  v36[1] = v32;
LABEL_11:
  sub_10000D320();
}

uint64_t sub_100027910(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LSLinkBundleRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100027974()
{
  sub_1000036A0();
  v1 = v0[8];
  v2 = v1[3];
  sub_1000034B4(v1, v2);
  sub_1000039EC();
  v3(v2);
  v0[16] = v4;
  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = sub_100027DF0;
  v6 = sub_1000066C0();

  return sub_100027A74(v6, v7, v8, v9, v10);
}

uint64_t sub_100027A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a7;
  v8[15] = a8;
  v8[12] = a5;
  v8[13] = a6;
  v8[10] = a3;
  v8[11] = a4;
  v8[8] = a1;
  v8[9] = a2;
  sub_100009990();
  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_100027A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a2;
  v5[9] = a5;
  v5[7] = a1;
  return _swift_task_switch(sub_100027A98, 0, 0);
}

uint64_t sub_100027A98()
{
  v26 = v0;
  sub_100003D44(0, &qword_10019A770, AFPreferences_ptr);
  v1 = sub_100027D40();
  v0[10] = v1;
  v0[11] = v2;
  if (!v2)
  {
    sub_100027D9C();
    swift_allocError();
    *v15 = 1;
    swift_willThrow();
    sub_100003A00();
    sub_10000C08C();

    __asm { BRAA            X1, X16 }
  }

  v3 = v1;
  v4 = v2;
  if (qword_100198090 != -1)
  {
    sub_100002930();
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000347C(v5, qword_10019D800);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[7];
    v8 = v0[8];
    v10 = sub_1000063EC();
    v11 = sub_100004B3C();
    v25[0] = v11;
    *v10 = 136446466;
    *(v10 + 4) = sub_100004C50(v9, v8, v25);
    *(v10 + 12) = 2082;
    *(v10 + 14) = sub_100004C50(v3, v4, v25);
    swift_arrayDestroy();
    sub_1000036AC(v11);
    sub_100004D70();
  }

  objc_allocWithZone(LSApplicationRecord);

  v12 = sub_10001A998();
  v14 = sub_1000906C0(v12, v13, 0);
  v0[12] = v14;
  v0[13] = 0;
  v18 = v14;
  v0[5] = sub_100003D44(0, &qword_100198C08, LSApplicationRecord_ptr);
  v0[6] = &off_10018C118;
  v0[2] = v18;
  v19 = v18;
  sub_10000C08C();

  return _swift_task_switch(v20, v21, v22);
}

uint64_t sub_100027D40()
{
  v0 = AFPreferencesMobileUserSessionLanguage();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

unint64_t sub_100027D9C()
{
  result = qword_100198C00;
  if (!qword_100198C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100198C00);
  }

  return result;
}

uint64_t sub_100027DF0()
{
  sub_1000036A0();
  sub_1000036D0();
  v3 = v2;
  sub_100007A64();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 144) = v5;
  *(v3 + 152) = v0;

  if (!v0)
  {
  }

  sub_100009990();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100027EFC()
{
  sub_1000036A0();

  sub_100003A00();

  return v0();
}

id sub_100027F58()
{
  type metadata accessor for UUID();
  sub_100002944();
  __chkstk_darwin(v0);
  sub_100002720();
  type metadata accessor for RegistryError(0);
  sub_10000482C();
  __chkstk_darwin(v1);
  sub_100002958();
  v4 = (v3 - v2);
  sub_100008094();
  v5 = sub_10001832C();
  sub_100027104(v5, v6);
  sub_1000FD78C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1000FD414();
      _StringGuts.grow(_:)(45);

      sub_100003720();
      v31 = 0xD00000000000002BLL;
      v32 = v23;
      v24._countAndFlagsBits = sub_10000D358();
      String.append(_:)(v24);
      goto LABEL_10;
    case 2u:
      v11 = sub_10001A998();
      v12(v11);
      sub_1000FD414();
      _StringGuts.grow(_:)(72);
      v13._countAndFlagsBits = 0xD000000000000046;
      v13._object = 0x80000001001574B0;
      String.append(_:)(v13);
      sub_1000FD210();
      sub_1000098AC(v14);
      v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v15);

      v10 = v31;
      v16 = sub_100002B74();
      v17(v16);
      return v10;
    case 3u:
      v18 = *v4;
      v35 = *v4;
      swift_errorRetain();
      sub_10002EB80(&unk_100198760, &qword_10014F3C0);
      if (swift_dynamicCast())
      {
        _StringGuts.grow(_:)(16);

        strcpy(v30, "SQLite error: ");
        HIBYTE(v30[1]) = -18;
        v19 = sub_1000064C8();
        v21._countAndFlagsBits = Result.description.getter(v19, v20, v33, v34);
        String.append(_:)(v21);

        v10 = v30[0];
      }

      else
      {

        v31 = v18;
        swift_errorRetain();
        sub_100003D44(0, &qword_10019B400, NSError_ptr);
        if (swift_dynamicCast())
        {
          v28 = [v30[0] description];
          v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        else
        {

          swift_getErrorValue();
          v10 = Error.localizedDescription.getter();
        }
      }

      return v10;
    case 4u:
      return 0xD00000000000003DLL;
    case 5u:
      sub_1000FD414();
      _StringGuts.grow(_:)(63);
      v25._object = 0x80000001001548A0;
      v25._countAndFlagsBits = 0xD00000000000003DLL;
      String.append(_:)(v25);
      v26._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
      String.append(_:)(v26);
LABEL_10:

      return v31;
    case 6u:
      sub_1000FDB30();
      return (v27 + 32);
    case 7u:
      sub_1000FDB30();
      return (v22 - 21);
    default:
      sub_1000FD414();
      _StringGuts.grow(_:)(53);
      v7._countAndFlagsBits = 0xD000000000000016;
      v7._object = 0x8000000100157570;
      String.append(_:)(v7);
      v8._countAndFlagsBits = sub_10000D358();
      String.append(_:)(v8);

      v9._countAndFlagsBits = 0xD00000000000001DLL;
      v9._object = 0x8000000100157590;
      String.append(_:)(v9);
      return v31;
  }
}

uint64_t sub_100028440(void *a1, int a2, void *a3, void *a4, void *aBlock)
{
  v8 = _Block_copy(aBlock);
  sub_1000046B8();
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = a1;
  v10 = a3;
  v11 = a4;
  v12 = a1;
  v13 = sub_1000077D8();

  return sub_100006240(v13, v14);
}

uint64_t sub_1000284C0()
{
  sub_100027014();
  sub_1000036C4();
  sub_10001D3BC();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  sub_1000037F8(v1);
  sub_100091EFC();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100028550(uint64_t a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v4[4] = v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v4[5] = v10;
  a4;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = sub_100029494;

  return sub_1000286BC(v6, v8, v9, v11);
}

uint64_t sub_10002864C()
{
}

uint64_t sub_100028688()
{

  return swift_arrayDestroy();
}

BOOL sub_1000286A4()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_1000286BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return sub_100003B20();
}

uint64_t sub_1000286D8()
{
  sub_1000070C8();
  sub_1000FCFB0();
  sub_10002875C(v0, v1, v2, v3);
  sub_1000105C0();

  return v4();
}

uint64_t sub_1000287A8()
{

  return type metadata accessor for Logger();
}

uint64_t sub_1000287D0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_100129D84(a1, a2, a3, v4, v3);
}

uint64_t sub_1000287E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = *(v5 + OBJC_IVAR____TtC10LinkDaemon13MetadataStore_provider);

  v8 = sub_10000C900();
  return a5(v8);
}

void sub_1000288D0()
{
  sub_100004DF0();
  sub_100018BB4(v4, v5, v6, v7, v8, v9);
  sub_100018AD4(__stack_chk_guard);
  sub_100002944();
  __chkstk_darwin(v10);
  sub_100005284();
  sub_1000B6590();
  if (!v35 || (v11 = objc_opt_self(), v0 = sub_1000B65EC(v11), v12 = [v0 isApplication], v0, !v12))
  {
    sub_100019D60();
    sub_100018774();
    v3();
    if (v1)
    {

LABEL_26:
      sub_1000248C0();
      sub_100004674();
      return;
    }

LABEL_10:
    sub_1000113FC();

    goto LABEL_26;
  }

  v13 = [objc_opt_self() *(v2 + 3928)];
  sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
  sub_100012A08();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10014CE80;
  sub_100003D44(0, &unk_10019B3F0, RBSDomainAttribute_ptr);
  *(v14 + 32) = sub_100002C28();
  v15 = objc_allocWithZone(RBSAssertion);
  sub_1000088E4();
  sub_1000B645C();
  v55[0] = 0;
  v52 = sub_1000B2D18(v16, v17, v18);
  v19 = [v52 acquireWithError:v55];
  v20 = v55[0];
  if (v19)
  {
    v21 = v55[0];
    sub_100019D60();
    sub_100018774();
    v3();
    sub_10000C0D0();
    if (v1)
    {
      v23 = v52;
      [v52 *(v22 + 3536)];
      goto LABEL_12;
    }

    [v52 *(v22 + 3536)];

    goto LABEL_10;
  }

  v24 = v55[0];
  sub_1000B63E4();
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v23 = v52;
LABEL_12:
  sub_100019AC8();
  sub_10002EB80(&unk_100198760, &qword_10014F3C0);
  sub_100003D44(0, &qword_10019B400, NSError_ptr);
  v25 = sub_10001115C();
  if (!sub_100016CD8(v25, v26, v27, v28))
  {
LABEL_24:

    goto LABEL_25;
  }

  v29 = [v54 domain];
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v30 == v33 && v32 == v34;
  if (v35)
  {
  }

  else
  {
    sub_10001D3C8(v33);
    sub_1000B65D4();

    if ((v29 & 1) == 0)
    {

LABEL_25:

      goto LABEL_26;
    }
  }

  if (getLNLogCategoryMetadata())
  {
    sub_100018D28();

    Logger.init(_:)();
    v36 = v54;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (sub_1000B64B4())
    {
      sub_100007764();
      v39 = sub_100013148();
      sub_1000B6564(v39);
      *v30 = 136315138;
      v40 = [v36 localizedDescription];
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v36;
      v44 = v43;

      v45 = sub_100004C50(v41, v44, &v56);
      v36 = v42;

      *(v30 + 4) = v45;
      sub_1000B64F0(&_mh_execute_header, v37, v38, "Failed to acquire assertions: %s", v51);
      v46 = sub_100012908();
      v23 = v52;
      sub_1000036AC(v46);
      sub_1000105CC();
    }

    v47 = sub_1000B6374();
    v48(v47);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100002714();
    v49 = objc_allocWithZone(NSError);
    v50 = sub_100004F30();
    sub_100013A10(v50);

    goto LABEL_24;
  }

  __break(1u);
}

uint64_t sub_100028D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v25 = a6;
  v12 = type metadata accessor for LNActionRecord(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_100028F9C(a2, a3, a4, a5, *(a1 + OBJC_IVAR____TtC10LinkDaemon25_LNMetadataProviderDirect_connection));
  if (!v6)
  {
    v17 = result;
    v18 = *(result + 16);
    if (v18)
    {
      v26 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v19 = *(v13 + 80);
      v24 = v17;
      v20 = v17 + ((v19 + 32) & ~v19);
      v21 = *(v13 + 72);
      do
      {
        sub_10001E984();
        v22 = *&v15[*(v12 + 24)];
        sub_10001E9DC(v15, type metadata accessor for LNActionRecord);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v20 += v21;
        --v18;
      }

      while (v18);

      v23 = v26;
    }

    else
    {

      v23 = _swiftEmptyArrayStorage;
    }

    *v25 = v23;
  }

  return result;
}

uint64_t sub_100028F5C()
{

  return Logger.init(_:)();
}

void sub_100029168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, _UNKNOWN **a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, _UNKNOWN **a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52)
{
  sub_100007A0C();
  a49 = v52;
  a50 = v53;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v66 = a51;
  v67 = a52;
  a36 = sub_10002EB80(v68, v69);
  a37 = &protocol witness table for Expression<A>;
  a33 = v65;
  a34 = v63;
  a35 = v61;
  a31 = a36;
  a32 = &protocol witness table for Expression<A>;
  a28 = v59;
  a29 = v57;
  a30 = v55;
  sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  inited = swift_initStackObject();
  v71 = sub_10012E7CC(inited, xmmword_10014BC40);
  sub_100013334(v71, &inited[2]);
  sub_100013334(&a28, &inited[4].n128_i64[1]);
  sub_100002758();
  a9 = v72;
  a10 = v73;

  v74._countAndFlagsBits = v66;
  v74._object = v67;
  String.append(_:)(v74);
  sub_10000EF48();
  sub_100013640(inited, &a9);

  v75 = sub_1000082A0(&a9);
  v76(v75);
  sub_10000896C();
  sub_1000034F8(&a9);
  v77 = sub_1000073DC();
  sub_10000E218(v77, v78, v79, v80, v81);
  sub_100011704();

  swift_setDeallocating();
  sub_100018898();
  sub_1000034F8(&a28);
  sub_100006B68(&a33);
  sub_10001D634();
}

uint64_t sub_10002930C()
{
  sub_100028788();
  sub_1000036C4();
  sub_100007538();
  v3 = v2;
  sub_10000788C();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *(v5 + 16);
  v8 = *v1;
  sub_10000298C();
  *v9 = v8;

  if (v0)
  {
    _convertErrorToNSError(_:)();
    sub_10001D304();
    sub_10001725C();
  }

  else
  {
    sub_100003D44(0, &unk_10019AB20, LNActionMetadata_ptr);
    sub_100092038();
    Array._bridgeToObjectiveC()();
    sub_100091E9C();

    sub_100091ED8();
  }

  v10 = sub_1000118C0();
  v11(v10);

  _Block_release(v3);
  sub_100003A00();
  sub_10001A7B0();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_1000294A8()
{
}

uint64_t *sub_1000294F4@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 192) = v1;
  *(v2 - 184) = a1;

  return sub_100013234((v2 - 216));
}

void sub_10002950C(int a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15[0] = type metadata accessor for Registry(0);
  sub_10002EB80(&qword_10019A250, &qword_10014DF40);
  String.init<A>(describing:)();
  if (LNLogSubsystem)
  {
    String.init(cString:)();
    Logger.init(subsystem:category:)();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v15[0] = v11;
      *v10 = 67109378;
      *(v10 + 4) = a1;
      *(v10 + 8) = 2080;
      if (qword_100198360 != -1)
      {
        swift_once();
      }

      *(v10 + 10) = sub_100004C50(qword_10019E128, unk_10019E130, v15);
      _os_log_impl(&_mh_execute_header, v8, v9, "Invalidated XPC connection from PID %d for service %s", v10, 0x12u);
      sub_1000034F8(v11);
    }

    (*(v5 + 8))(v7, v4);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      swift_beginAccess();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000297B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

NSString sub_100029880@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_10002F92C(a2);
  *a1 = result;
  return result;
}

BOOL sub_1000298B8(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_1000298E4(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_100029908(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_100029958(uint64_t a1)
{
  v2 = sub_100002920(a1);
  result = sub_1000298A8(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_100029980(uint64_t a1)
{
  v2 = sub_100002920(a1);
  result = sub_1000298B0(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_1000299B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000298E4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1000299E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100029908(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_100029A28(uint64_t a1)
{
  v2 = sub_100002920(a1);
  result = sub_100029920(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_100029A94@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000297B4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100029ABC()
{
  v1 = sub_10000707C();
  result = j___sSS10FoundationE36_unconditionallyBridgeFromObjectiveCySSSo8NSStringCSgFZ(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

void *sub_100029AE4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100029B00()
{

  if (v0[13])
  {
  }

  if (v0[15])
  {

    if (v0[17])
    {
    }
  }

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t sub_100029BC4()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100029C14()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100029C54()
{

  sub_100012A08();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100029C98()
{
  swift_unknownObjectRelease();

  sub_100012A08();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100029CFC()
{
  v1 = type metadata accessor for Logger();
  sub_100002944();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_100029DBC()
{
  type metadata accessor for Logger();
  sub_100002978();
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_100029E4C()
{
  type metadata accessor for Logger();
  sub_100002978();
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100029EC8()
{
  v1 = type metadata accessor for Logger();
  sub_100002944();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 56) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_100029F88()
{
  swift_unknownObjectRelease();

  sub_1000034F8((v0 + 48));

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_100029FD0()
{

  sub_100004DD8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10002A02C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();

  return sub_1000032C4(a1, a2, v4);
}

uint64_t sub_10002A074(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();

  return sub_1000075C4(a1, a2, a2, v4);
}

void *sub_10002A0F4@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_10002A144(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a4;

  return a2;
}

uint64_t sub_10002A198()
{

  sub_1000034F8((v0 + 56));

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_10002A1F8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002A238()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10002A290()
{
  swift_unknownObjectRelease();
  sub_1000034F8((v0 + 32));
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_10002A2E8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002A320()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10002A368()
{

  if (v0[13])
  {
  }

  if (v0[15])
  {

    if (v0[17])
    {
    }
  }

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t sub_10002A42C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000519C();
  v6 = type metadata accessor for Logger();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1000032C4(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_10002A4D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Logger();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1000075C4(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10002A584()
{

  if (v0[13])
  {
  }

  if (v0[15])
  {

    if (v0[17])
    {
    }
  }

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t sub_10002A620(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  LOBYTE(a3) = v5(a2, a3);

  return a3 & 1;
}

uint64_t sub_10002A680()
{
  type metadata accessor for UUID();
  sub_1000128D8();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v1 + v5, v0);

  return _swift_deallocObject(v1, v7 + 16, v4 | 7);
}

uint64_t sub_10002A74C()
{
  swift_unknownObjectRelease();

  sub_100009B18(*(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_10002A7AC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002A7E4()
{
  swift_unknownObjectRelease();

  sub_100009B18(*(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10002A83C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10002A900()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002A938()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002A97C()
{

  if (v0[13])
  {
  }

  if (v0[15])
  {

    if (v0[17])
    {
    }
  }

  sub_100003A98();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10002AA1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1000032C4(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_10002AACC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_100009A00();
  result = type metadata accessor for UUID();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1000075C4(v4, a2, a2, result);
  }

  else
  {
    *(v4 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10002AB74()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

char *sub_10002ABD4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return sub_100002B0C(a3, result);
  }

  return result;
}

uint64_t sub_10002AC08@<X0>(uint64_t a1@<X8>, void (*a2)(uint64_t *__return_ptr)@<X0>)
{
  result = sub_10006FC00(a2);
  *a1 = result;
  *(a1 + 8) = v4 & 1;
  return result;
}

uint64_t sub_10002AC38()
{

  sub_100004DD8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10002AC6C()
{

  sub_100004DD8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10002ACD4()
{

  if (v0[13])
  {
  }

  if (v0[15])
  {

    if (v0[17])
    {
    }
  }

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t sub_10002AD70()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002ADB8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10002AE00()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002AE38()
{

  return _swift_deallocObject(v0, 48, 7);
}

void *sub_10002AE80()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_10002EB80(&qword_10019A838, &unk_10014F590);
  }

  else
  {
    return &type metadata for () + 1;
  }
}

uint64_t sub_10002AED8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002AF10()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002AF48()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002AF80()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10002AFE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10002EB80(&qword_10019A9F8, &qword_10014F7D8);
    v9 = a1 + *(a3 + 24);

    return sub_1000032C4(v9, a2, v8);
  }
}

uint64_t sub_10002B074(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10002EB80(&qword_10019A9F8, &qword_10014F7D8);
    v8 = v5 + *(a4 + 24);

    return sub_1000075C4(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10002B100()
{
  type metadata accessor for Logger();
  sub_100002978();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (((v4 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);
  sub_1000034F8((v0 + v4));

  return _swift_deallocObject(v0, v5 + 9, v2 | 7);
}

uint64_t sub_10002B1BC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002B1FC()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002B244()
{

  if (v0[13])
  {
  }

  if (v0[15])
  {

    if (v0[17])
    {
    }
  }

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t sub_10002B2E0()
{
  type metadata accessor for Logger();
  sub_100002978();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10002B35C()
{

  if (v0[13])
  {
  }

  if (v0[15])
  {

    if (v0[17])
    {
    }
  }

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t sub_10002B408()
{
  swift_unknownObjectRelease();

  v0 = sub_100029498();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10002B448()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v0 = sub_1000046B8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10002B48C()
{
  _Block_release(*(v0 + 32));

  v1 = sub_1000046B8();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10002B52C()
{

  if (v0[13])
  {
  }

  if (v0[15])
  {

    if (v0[17])
    {
    }
  }

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t sub_10002B5C8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10002B610()
{

  if (v0[13])
  {
  }

  if (v0[15])
  {

    if (v0[17])
    {
    }
  }

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t sub_10002B6BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1000032C4(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_10002B76C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Logger();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1000075C4(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10002B874()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002B8AC()
{

  v0 = sub_10000EEA4();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10002B8E4()
{
  type metadata accessor for URL();
  sub_10000482C();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10002B964()
{
  _Block_release(*(v0 + 24));

  sub_100012A08();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10002B9A8()
{

  if (v0[13])
  {
  }

  if (v0[15])
  {

    if (v0[17])
    {
    }
  }

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t sub_10002BA50()
{

  if (v0[13])
  {
  }

  if (v0[15])
  {

    if (v0[17])
    {
    }
  }

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t sub_10002BB24()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002BB5C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10002BBCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10002EB80(&qword_10019BA18, &qword_100150EB8);
  sub_1000FDA70();
  if (*(v7 + 84) == a2)
  {

    return sub_1000032C4(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 20));
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    v10 = v9 - 1;
    if (v10 < 0)
    {
      v10 = -1;
    }

    return (v10 + 1);
  }
}

void sub_10002BC8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_10002EB80(&qword_10019BA18, &qword_100150EB8);
  sub_1000FDA70();
  if (*(v9 + 84) == a3)
  {

    sub_1000075C4(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }
}

uint64_t sub_10002BD44()
{
  swift_unknownObjectRelease();

  v1 = sub_1000131F0();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10002BD7C()
{

  v0 = sub_1000131F0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10002BDBC()
{
  swift_unknownObjectRelease();

  v0 = sub_100029498();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10002BE00()
{
  swift_unknownObjectRelease();

  v0 = sub_10000EEA4();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10002BE3C()
{
  _Block_release(*(v0 + 32));

  v1 = sub_1000046B8();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10002BE80()
{
  _Block_release(*(v0 + 48));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10002BEE4()
{
  _Block_release(*(v0 + 40));

  v1 = sub_100029498();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10002BF30()
{

  sub_1000034F8(v0 + 3);
  if (v0[11])
  {
    sub_1000034F8(v0 + 8);
  }

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_10002BF80()
{
  swift_unknownObjectRelease();

  v0 = sub_1000131F0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10002BFB8()
{

  v1 = sub_1000131F0();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10002BFF0()
{
  swift_unknownObjectWeakDestroy();
  sub_1000FD988();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10002C024()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v1 = sub_1000046B8();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10002C064()
{
  swift_unknownObjectRelease();

  v1 = sub_100029498();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10002C190()
{

  if (v0[13])
  {
  }

  if (v0[15])
  {

    if (v0[17])
    {
    }
  }

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t sub_10002C240()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002C278()
{

  if (v0[13])
  {
  }

  if (v0[15])
  {

    if (v0[17])
    {
    }
  }

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t sub_10002C33C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002C378()
{

  if (v0[13])
  {
  }

  if (v0[15])
  {

    if (v0[17])
    {
    }
  }

  sub_100003A98();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10002C410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
    v9 = a1 + *(a3 + 20);

    return sub_1000032C4(v9, a2, v8);
  }
}

uint64_t sub_10002C4A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
    v8 = v5 + *(a4 + 20);

    return sub_1000075C4(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10002C540()
{

  if (v0[13])
  {
  }

  if (v0[15])
  {

    if (v0[17])
    {
    }
  }

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t sub_10002C5DC()
{

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_10002C66C()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_10002EB80(&qword_10019C460, &qword_100152008);
  }

  else
  {
    return &type metadata for () + 1;
  }
}

uint64_t sub_10002C6B0()
{

  if (v0[13])
  {
  }

  if (v0[15])
  {

    if (v0[17])
    {
    }
  }

  sub_100003A98();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10002C748()
{

  if (v0[13])
  {
  }

  if (v0[15])
  {

    if (v0[17])
    {
    }
  }

  sub_100003A98();

  return _swift_deallocObject(v1, v2, v3);
}

void sub_10002C834(void *result, char a2)
{
  if (a2 != -1)
  {
    sub_10002C84C(result, a2 & 1);
  }
}

void sub_10002C84C(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_10002C934(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_100007A28();
}

uint64_t sub_10002C978()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_10002CAE4()
{

  sub_100004DD8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10002CB7C()
{

  return _swift_deallocObject(v0, 40, 7);
}

char *sub_10002CCB8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return sub_100002B0C(a3, result);
  }

  return result;
}

uint64_t sub_10002CCE0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10002CD10(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

char *sub_10002CD38(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return sub_100002B0C(a3, result);
  }

  return result;
}

__n128 sub_10002CDB4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10002CDC0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002CDE0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_10002CE20()
{
  v1 = v0;
  v2 = [v0 bundleIdentifier];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  v4._countAndFlagsBits = 95;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);

  v5 = [v1 actionIdentifier];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9._countAndFlagsBits = v6;
  v9._object = v8;
  String.append(_:)(v9);

  return v3;
}