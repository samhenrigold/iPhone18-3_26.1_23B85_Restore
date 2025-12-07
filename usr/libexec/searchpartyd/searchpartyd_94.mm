uint64_t sub_100A58F28()
{
  v0 = type metadata accessor for LocalizationUtility.Table();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, enum case for LocalizationUtility.Table.delegatedSharing(_:), v0);
  v4 = static LocalizationUtility.localizedString(key:table:)();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_100A59048(uint64_t a1)
{
  v3 = type metadata accessor for LocalizationUtility.Table();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v6, enum case for LocalizationUtility.Table.delegatedSharing(_:), v3);
  static LocalizationUtility.localizedString(key:table:)();
  (*(v4 + 8))(v6, v3);
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_101385D80;
  v8 = (v1 + *(a1 + 24));
  v10 = *v8;
  v9 = v8[1];
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = sub_100008C00();
  *(v7 + 32) = v10;
  *(v7 + 40) = v9;

  v11 = String.init(format:arguments:)();

  return v11;
}

uint64_t sub_100A591F0()
{
  v0 = type metadata accessor for LocalizationUtility.Table();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, enum case for LocalizationUtility.Table.delegatedSharing(_:), v0);
  v4 = static LocalizationUtility.localizedString(key:table:)();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_100A59310(uint64_t a1)
{
  v3 = type metadata accessor for LocalizationUtility.Table();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v6, enum case for LocalizationUtility.Table.delegatedSharing(_:), v3);
  static LocalizationUtility.localizedString(key:table:)();
  (*(v4 + 8))(v6, v3);
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_101385D80;
  v8 = (v1 + *(a1 + 24));
  v10 = *v8;
  v9 = v8[1];
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = sub_100008C00();
  *(v7 + 32) = v10;
  *(v7 + 40) = v9;

  v11 = String.init(format:arguments:)();

  return v11;
}

uint64_t sub_100A594B8()
{
  v0 = type metadata accessor for LocalizationUtility.Table();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, enum case for LocalizationUtility.Table.delegatedSharing(_:), v0);
  v4 = static LocalizationUtility.localizedString(key:table:)();
  (*(v1 + 8))(v3, v0);
  return v4;
}

unint64_t sub_100A595D0()
{
  sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x8000000101347590;
  v1 = UUID.uuidString.getter();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v1;
  *(inited + 56) = v2;
  v3 = sub_10090403C(inited);
  swift_setDeallocating();
  sub_1000C19C4(inited + 32);
  return v3;
}

uint64_t sub_100A59778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100A5984C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100A59928(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100A599D8(void (*a1)(__int128 *), uint64_t a2, void *a3)
{
  sub_1000BC4D4(&unk_1016A6180, &unk_101409EE0);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  sub_100A5F6BC(v11, &v6);
  if (v7[24] == 255)
  {
    sub_10000B3A8(&v6, &unk_1016A6180, &unk_101409EE0);
    [*(a3[3] + OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject) readValueForCharacteristic:a3[5]];
  }

  else
  {
    v9 = v6;
    v10[0] = *v7;
    *(v10 + 9) = *&v7[9];
    sub_100101AA8(&v9, &v6);
    v8 = 1;
    a1(&v6);
    sub_10000B3A8(&v6, &qword_1016B1CA8, &qword_1013D2DB8);
    sub_100101B04(&v9);
  }

  return sub_10000B3A8(v11, &unk_1016A6180, &unk_101409EE0);
}

uint64_t sub_100A59B44@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  if (a1[9] || a1[13])
  {
    *a4 = a1;
    *(a4 + 40) = 6;
  }

  else
  {
    a1[9] = a2;
    a1[10] = a3;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0;
    *(a4 + 40) = -1;
  }
}

uint64_t sub_100A59B98(uint64_t a1, unint64_t a2)
{
  if (qword_101695520 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177CEC0);
  sub_100017D5C(a1, a2);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  sub_100016590(a1, a2);

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = Data.description.getter();
    v11 = sub_1000136BC(v9, v10, &v18);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    v12 = sub_100A5AADC();
    v14 = sub_1000136BC(v12, v13, &v18);

    *(v8 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "Writing %s to %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v15 = swift_allocObject();
  v15[2] = v2;
  v15[3] = a1;
  v15[4] = a2;
  sub_1000BC4D4(&qword_1016B3DC0, &qword_1013EF330);
  swift_allocObject();
  sub_100017D5C(a1, a2);

  v18 = Future.init(_:)();
  sub_1000041A4(&qword_1016B3DC8, &qword_1016B3DC0, &qword_1013EF330, &protocol conformance descriptor for Future<A, B>);
  v16 = Publisher.eraseToAnyPublisher()();

  return v16;
}

uint64_t sub_100A59E30(void (*a1)(__int128 *), uint64_t a2, void *a3)
{
  sub_1000BC4D4(&unk_1016A6180, &unk_101409EE0);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  sub_100A5F6BC(v13, &v8);
  if (v9[24] == 255)
  {
    sub_10000B3A8(&v8, &unk_1016A6180, &unk_101409EE0);
    v5 = *(a3[3] + OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject);
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v5 writeValue:isa forCharacteristic:a3[5] type:0];
  }

  else
  {
    v11 = v8;
    v12[0] = *v9;
    *(v12 + 9) = *&v9[9];
    sub_100101AA8(&v11, &v8);
    v10 = 1;
    a1(&v8);
    sub_10000B3A8(&v8, &qword_1016B1CA0, &qword_1013918C0);
    sub_100101B04(&v11);
  }

  return sub_10000B3A8(v13, &unk_1016A6180, &unk_101409EE0);
}

uint64_t sub_100A59FDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a1 + 88))
  {

    v6 = 6;
  }

  else
  {
    *(a1 + 88) = a2;
    *(a1 + 96) = a3;
    *(a4 + 8) = 0u;
    *(a4 + 24) = 0u;

    result = 0;
    v6 = -1;
  }

  *a4 = result;
  *(a4 + 40) = v6;
  return result;
}

uint64_t sub_100A5A038@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1[13])
  {
    sub_1000BC4D4(&qword_1016B3CC8, &qword_1013D4A48);
    sub_1000041A4(&unk_1016CDDA0, &qword_1016B3CC8, &qword_1013D4A48, &protocol conformance descriptor for PassthroughSubject<A, B>);
    result = Publisher.eraseToAnyPublisher()();
    *a2 = result;
  }

  else if (a1[9])
  {
    sub_100101B58();
    swift_allocError();
    *v5 = a1;
    *(v5 + 40) = 6;
    swift_willThrow();
  }

  else
  {
    sub_1000BC4D4(&qword_1016B3CC8, &qword_1013D4A48);
    swift_allocObject();
    a1[13] = PassthroughSubject.init()();

    [*(a1[3] + OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject) setNotifyValue:1 forCharacteristic:a1[5]];
    sub_1000041A4(&unk_1016CDDA0, &qword_1016B3CC8, &qword_1013D4A48, &protocol conformance descriptor for PassthroughSubject<A, B>);
    v6 = Publisher.eraseToAnyPublisher()();

    *a2 = v6;
  }

  return result;
}

uint64_t sub_100A5A1F8(void *a1)
{
  [*(a1[3] + OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject) setNotifyValue:0 forCharacteristic:a1[5]];
  if (a1[13])
  {
    v4 = 0;
    memset(v3, 0, sizeof(v3));
    v5 = -1;

    PassthroughSubject.send(completion:)();

    sub_10000B3A8(v3, &unk_1016B1CB0, &qword_1013FB750);
  }

  a1[13] = 0;
}

uint64_t sub_100A5A2B8(uint64_t a1)
{
  sub_1000BC4D4(&qword_1016B3DB8, &qword_1013D4B20);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v1 = v45;
  v40 = *(v46 + 8);
  if (v45)
  {
    v2 = *&v46[0];
    v3 = swift_allocObject();
    *(v3 + 16) = v45;
    *(v3 + 24) = v2;
    v4 = sub_100A5F748;
    v5 = v40;
    if (v40)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = 0;
    v3 = 0;
    v5 = *(&v46[0] + 1);
    if (*(&v46[0] + 1))
    {
LABEL_3:
      v6 = swift_allocObject();
      *(v6 + 16) = v40;
      v7 = sub_100A5F7A0;
      if (!v1)
      {
        goto LABEL_4;
      }

LABEL_11:
      v22 = qword_101695288;

      if (v22 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_1000076D4(v23, qword_10177C730);
      sub_100101AA8(a1, &v45);

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v41 = v5;
        v26 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v44 = v39;
        *v26 = 136446466;
        v37 = v25;
        v27 = sub_100A5AADC();
        v29 = v7;
        v30 = v6;
        v31 = v3;
        v32 = v4;
        v33 = sub_1000136BC(v27, v28, &v44);

        *(v26 + 4) = v33;
        v4 = v32;
        v3 = v31;
        v6 = v30;
        v7 = v29;
        *(v26 + 12) = 2112;
        sub_100101B58();
        swift_allocError();
        sub_100101AA8(&v45, v34);
        v35 = _swift_stdlib_bridgeErrorToNSError();
        sub_100101B04(&v45);
        *(v26 + 14) = v35;
        *v38 = v35;
        _os_log_impl(&_mh_execute_header, v24, v37, "%{public}s: Sending %@ failure to readPromise", v26, 0x16u);
        sub_10000B3A8(v38, &qword_10169BB30, &unk_10138B3C0);

        sub_100007BAC(v39);

        v5 = v41;
      }

      else
      {

        sub_100101B04(&v45);
      }

      v45 = 12;
      memset(v46, 0, sizeof(v46));
      v47 = 267;
      (v4)(&v45);
      sub_1000BB27C(v4, v3);
      sub_10000B3A8(&v45, &qword_1016B1CA8, &qword_1013D2DB8);
      if (v5)
      {
        goto LABEL_5;
      }

      return sub_1000BB27C(v4, v3);
    }
  }

  v7 = 0;
  v6 = 0;
  if (v1)
  {
    goto LABEL_11;
  }

LABEL_4:
  if (!v5)
  {
    return sub_1000BB27C(v4, v3);
  }

LABEL_5:
  if (qword_101695288 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_10177C730);
  sub_100101AA8(a1, &v45);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v43 = v7;
    v44 = swift_slowAlloc();
    v13 = v44;
    *v11 = 136446466;
    v14 = sub_100A5AADC();
    v16 = v6;
    v17 = v3;
    v18 = v4;
    v19 = sub_1000136BC(v14, v15, &v44);

    *(v11 + 4) = v19;
    v4 = v18;
    v3 = v17;
    v6 = v16;
    *(v11 + 12) = 2112;
    sub_100101B58();
    swift_allocError();
    sub_100101AA8(&v45, v20);
    v21 = _swift_stdlib_bridgeErrorToNSError();
    sub_100101B04(&v45);
    *(v11 + 14) = v21;
    *v12 = v21;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: Sending %@ failure to writePromise", v11, 0x16u);
    sub_10000B3A8(v12, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v13);
    v7 = v43;
  }

  else
  {

    sub_100101B04(&v45);
  }

  v45 = 12;
  memset(v46, 0, sizeof(v46));
  v47 = 267;
  (v7)(&v45);
  sub_1000BB27C(v7, v6);
  sub_1000BB27C(v4, v3);
  return sub_10000B3A8(&v45, &qword_1016B1CA0, &qword_1013918C0);
}

uint64_t sub_100A5A888@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 72);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v4 = *(a1 + 88);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  v10 = v4;
  if (!v3)
  {
    v6 = 0;
    v5 = 0;
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    result = 0;
    goto LABEL_6;
  }

  v9 = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = v9;
  v6 = sub_1007A7FA0;
  if (!v10)
  {
    goto LABEL_5;
  }

LABEL_3:
  result = swift_allocObject();
  *(result + 16) = v10;
  v8 = sub_1007A9FB8;
LABEL_6:
  *a2 = v6;
  a2[1] = v5;
  a2[2] = v8;
  a2[3] = result;
  return result;
}

uint64_t sub_100A5A96C()
{

  swift_unownedRelease();

  sub_1000BB27C(*(v0 + 56), *(v0 + 64));
  sub_1000BB27C(*(v0 + 72), *(v0 + 80));
  sub_1000BB27C(*(v0 + 88), *(v0 + 96));

  return v0;
}

uint64_t sub_100A5A9CC()
{
  sub_100A5A96C();

  return swift_deallocClassInstance();
}

Swift::Int sub_100A5AA00()
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100A5AA70(uint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = *(*v1 + 40);
  NSObject.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100A5AADC()
{
  v1 = type metadata accessor for CharacteristicUUID(0);
  __chkstk_darwin(v1);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = 0;
  v24 = 0xE000000000000000;
  _StringGuts.grow(_:)(29);
  v4._countAndFlagsBits = 60;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  v22 = v0;
  type metadata accessor for Characteristic();
  sub_100A5F600(&qword_1016B3B50, &unk_1013D4730);
  v5._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 32;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  v7._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 8250;
  v8._object = 0xE200000000000000;
  String.append(_:)(v8);
  v9 = *(v0 + 40);
  v10 = [v9 UUID];
  sub_100B699C8(v3);

  _print_unlocked<A, B>(_:_:)();
  sub_100A5F640(v3);
  v11._countAndFlagsBits = 0x796669746F6E203ALL;
  v11._object = 0xED0000203A676E69;
  String.append(_:)(v11);
  v12 = [v9 isNotifying];
  v13 = v12 == 0;
  if (v12)
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (v13)
  {
    v15 = 0xE500000000000000;
  }

  else
  {
    v15 = 0xE400000000000000;
  }

  v16 = v15;
  String.append(_:)(*&v14);

  v17._countAndFlagsBits = 32;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  v18._countAndFlagsBits = CBCharacteristicProperties.description.getter([v9 properties]);
  String.append(_:)(v18);

  v19._countAndFlagsBits = 62;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);
  return v23;
}

uint64_t CBCharacteristicProperties.description.getter(__int16 a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = _swiftEmptyArrayStorage;
    if ((a1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_100A5B2CC(0, 1, 1, _swiftEmptyArrayStorage);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_100A5B2CC((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0x616364616F72622ELL;
  *(v5 + 5) = 0xEA00000000007473;
  if ((a1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_100A5B2CC((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x646165722ELL;
    *(v8 + 5) = 0xE500000000000000;
  }

LABEL_12:
  if ((a1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_100A5B2CC((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    *(v11 + 4) = 0xD000000000000015;
    *(v11 + 5) = 0x8000000101369D10;
    if ((a1 & 8) == 0)
    {
LABEL_14:
      if ((a1 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_31;
    }
  }

  else if ((a1 & 8) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
  }

  v13 = *(v2 + 2);
  v12 = *(v2 + 3);
  if (v13 >= v12 >> 1)
  {
    v2 = sub_100A5B2CC((v12 > 1), v13 + 1, 1, v2);
  }

  *(v2 + 2) = v13 + 1;
  v14 = &v2[16 * v13];
  *(v14 + 4) = 0x65746972772ELL;
  *(v14 + 5) = 0xE600000000000000;
  if ((a1 & 0x10) == 0)
  {
LABEL_15:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_31:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
  }

  v16 = *(v2 + 2);
  v15 = *(v2 + 3);
  if (v16 >= v15 >> 1)
  {
    v2 = sub_100A5B2CC((v15 > 1), v16 + 1, 1, v2);
  }

  *(v2 + 2) = v16 + 1;
  v17 = &v2[16 * v16];
  *(v17 + 4) = 0x796669746F6E2ELL;
  *(v17 + 5) = 0xE700000000000000;
  if ((a1 & 0x20) == 0)
  {
LABEL_16:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_41;
  }

LABEL_36:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
  }

  v19 = *(v2 + 2);
  v18 = *(v2 + 3);
  if (v19 >= v18 >> 1)
  {
    v2 = sub_100A5B2CC((v18 > 1), v19 + 1, 1, v2);
  }

  *(v2 + 2) = v19 + 1;
  v20 = &v2[16 * v19];
  *(v20 + 4) = 0x74616369646E692ELL;
  *(v20 + 5) = 0xE900000000000065;
  if ((a1 & 0x40) == 0)
  {
LABEL_17:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_46;
  }

LABEL_41:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
  }

  v22 = *(v2 + 2);
  v21 = *(v2 + 3);
  if (v22 >= v21 >> 1)
  {
    v2 = sub_100A5B2CC((v21 > 1), v22 + 1, 1, v2);
  }

  *(v2 + 2) = v22 + 1;
  v23 = &v2[16 * v22];
  *(v23 + 4) = 0xD00000000000001ALL;
  *(v23 + 5) = 0x8000000101369CF0;
  if ((a1 & 0x80) == 0)
  {
LABEL_18:
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_51;
  }

LABEL_46:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
  }

  v25 = *(v2 + 2);
  v24 = *(v2 + 3);
  if (v25 >= v24 >> 1)
  {
    v2 = sub_100A5B2CC((v24 > 1), v25 + 1, 1, v2);
  }

  *(v2 + 2) = v25 + 1;
  v26 = &v2[16 * v25];
  *(v26 + 4) = 0xD000000000000013;
  *(v26 + 5) = 0x8000000101369CD0;
  if ((a1 & 0x100) == 0)
  {
LABEL_19:
    if ((a1 & 0x200) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_56;
  }

LABEL_51:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
  }

  v28 = *(v2 + 2);
  v27 = *(v2 + 3);
  if (v28 >= v27 >> 1)
  {
    v2 = sub_100A5B2CC((v27 > 1), v28 + 1, 1, v2);
  }

  *(v2 + 2) = v28 + 1;
  v29 = &v2[16 * v28];
  *(v29 + 4) = 0xD000000000000019;
  *(v29 + 5) = 0x8000000101369CB0;
  if ((a1 & 0x200) != 0)
  {
LABEL_56:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
    }

    v31 = *(v2 + 2);
    v30 = *(v2 + 3);
    if (v31 >= v30 >> 1)
    {
      v2 = sub_100A5B2CC((v30 > 1), v31 + 1, 1, v2);
    }

    *(v2 + 2) = v31 + 1;
    v32 = &v2[16 * v31];
    *(v32 + 4) = 0xD00000000000001BLL;
    *(v32 + 5) = 0x8000000101369C90;
  }

LABEL_61:
  v33 = Array.description.getter();

  return v33;
}

char *sub_100A5B2CC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000BC4D4(&unk_1016B1550, &unk_10139ADF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t type metadata accessor for Characteristic()
{
  return objc_opt_self();
}

{
  return type metadata accessor for Characteristic();
}

char *sub_100A5B444(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000BC4D4(&qword_1016B3A20, &qword_1013D47C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100A5B550(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000BC4D4(&qword_1016B3A28, &qword_1013D47D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100A5B734(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000BC4D4(&qword_10169E768, &qword_10139DB90);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100A5B880(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000BC4D4(&qword_1016B3D40, &qword_1013D4AA8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_100A5B9D4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000BC4D4(&qword_1016B3D30, &qword_1013D4A98);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100A5BB4C(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000BC4D4(&qword_1016B3E90, &qword_1013D4BE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000BC4D4(&qword_1016A9F18, &qword_1013D78F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100A5BCF4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1000BC4D4(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

char *sub_100A5BE68(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100A5C1F8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000BC4D4(&qword_101698CB8, &qword_101390860);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100A5C4F8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000BC4D4(&qword_1016B3B68, &qword_1013D4908);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 5 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_100A5C600(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000BC4D4(&qword_1016B3F30, &unk_1013D4C80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100A5C70C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000BC4D4(&qword_1016B3DE0, &qword_1013D4B38);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100A5C994(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000BC4D4(&qword_1016B3C90, &qword_1013D4A18);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_100A5CBA0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000BC4D4(&qword_1016B3B28, &qword_1013D48D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100A5CCDC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    sub_1000BC4D4(a5, a6);
    v13 = swift_allocObject();
    v14 = j__malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 17;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 4);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[16 * v11])
    {
      memmove(v16, v17, 16 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_100A5CDE8(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000BC4D4(&qword_1016B3E18, &qword_1013D4B68);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000BC4D4(&unk_1016AD670, &unk_1013C3FF0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100A5CF44(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000BC4D4(&qword_1016B3DE8, &qword_1013D4B40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100A5D114(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000BC4D4(&qword_1016B3D90, &qword_1013D4AF8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_100A5D350(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000BC4D4(&qword_1016B3AB0, &qword_1013D4858);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000BC4D4(&qword_10169C9B0, &qword_10139FC00);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100A5D53C(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000BC4D4(&qword_1016B3C20, &qword_1013D49A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000BC4D4(&qword_1016B3C28, &qword_1013D49B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100A5D670(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000BC4D4(&qword_1016A61A8, &qword_1013B3C10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000BC4D4(&unk_1016A60A0, &unk_10139FD40);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100A5D844(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_1000BC4D4(a5, a6);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    a7(0);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_100A5DA38(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000BC4D4(&qword_1016B3E38, &qword_1013D4B88);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 304);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[304 * v8])
    {
      memmove(v12, v13, 304 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100A5DB5C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000BC4D4(&qword_1016B3E40, &qword_1013D4B90);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100A5DCA4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1000BC4D4(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

char *sub_100A5DF68(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000BC4D4(&qword_1016B3E58, &qword_1013D4BA8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100A5E14C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000BC4D4(&qword_1016B3E48, &qword_1013D4B98);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_100A5E278(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000BC4D4(&qword_1016B3EF0, &qword_1013D4C40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100A5E3E4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000BC4D4(&qword_1016B3D08, &qword_1013D4A80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100A5E50C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000BC4D4(&qword_10169F018, &qword_10139FE00);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100A5E748(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1000BC4D4(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

char *sub_100A5E834(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000BC4D4(&qword_1016B3C80, &qword_1013D4A08);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100A5E954(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000BC4D4(&qword_1016B3F20, &qword_1013D4C70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100A5EBF8(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000BC4D4(&qword_1016B3AC8, &qword_1013D4870);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000BC4D4(&qword_1016B3AD0, &qword_1013D4878);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100A5EDB0(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000BC4D4(&qword_1016B3C60, &qword_1013D49E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000BC4D4(&qword_1016B3C68, &qword_1013D49F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100A5EF44(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_1000BC4D4(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000BC4D4(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_100A5F130(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000BC4D4(a5, a6);
  v16 = *(sub_1000BC4D4(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(sub_1000BC4D4(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *sub_100A5F3B0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_1000BC4D4(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000BC4D4(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_100A5F4E4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000BC4D4(&qword_1016B3B98, &qword_1013D4938);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100A5F600(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Characteristic();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100A5F640(uint64_t a1)
{
  v2 = type metadata accessor for CharacteristicUUID(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100A5F6BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_1016A6180, &unk_101409EE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for BeaconPayloadMetaDataV2(uint64_t a1)
{
  result = qword_1016B3F90;
  if (!qword_1016B3F90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100A5F818(uint64_t a1)
{
  result = type metadata accessor for Bit();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *sub_100A5F8B0(void *a1)
{
  v2 = v1;
  sub_1000035D0(a1, a1[3]);
  result = dispatch thunk of BinaryEncoding.container()();
  if (((*(v1 + 6) - 1) & 0xFFFFFF00) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  sub_1000198E8();
  result = FixedWidthInteger.bits()();
  v19 = result;
  if (result[2] < 2uLL)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v4 = type metadata accessor for Bit();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  result = FixedWidthInteger.bits()();
  v18 = result;
  if (result[2] < 2uLL)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = FixedWidthInteger.bits()();
  if (result[2] < 3uLL)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result;
  result = FixedWidthInteger.bits()();
  if (result[2] < 4uLL)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    __break(1u);
    goto LABEL_17;
  }

  v8 = result;
  v9 = (v6 + 32) & ~v6;
  sub_1000BC4D4(&qword_10169F070, &unk_1013D4CE0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_101385D80;
  v11 = type metadata accessor for BeaconPayloadMetaDataV2(0);
  (*(v5 + 16))(v10 + v9, v2 + *(v11 + 32), v4);
  result = FixedWidthInteger.bits()();
  if (result[2] < 4uLL)
  {
    goto LABEL_15;
  }

  v12 = result;

  sub_101062A04(v13, v18 + v9, 0, 5uLL);

  v14 = swift_unknownObjectRetain();
  sub_101062A04(v14, v7 + v9, 0, 7uLL);

  v15 = swift_unknownObjectRetain();
  sub_101062A04(v15, v8 + v9, 0, 9uLL);

  if (!__OFADD__(2, 1))
  {
    v20[6] = sub_100A5E6F8(0, 3, 0, _swiftEmptyArrayStorage);
    v16 = swift_unknownObjectRetain();
    sub_10039A94C(v16, v19 + v9, 0, 5uLL);
    sub_10039AF70(v10);
    swift_unknownObjectRelease();
    v17 = swift_unknownObjectRetain();
    sub_10039A94C(v17, v12 + v9, 0, 9uLL);
    sub_1002053B0();
    FixedWidthInteger.init(bits:)();
    sub_10015049C(v20, v20[3]);
    dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();

    return sub_100007BAC(v20);
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_100A5FCB0()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B9E8);
  sub_1000076D4(v0, qword_10177B9E8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100A5FD4C()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016B4008);
  v1 = sub_1000076D4(v0, qword_1016B4008);
  if (qword_101694BC0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177B9E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100A5FE14(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v35 = a3;
  v37 = a1;
  v38 = a2;
  v5 = type metadata accessor for UUID();
  __chkstk_darwin(v5 - 8);
  v36 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v7);
  v8 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34[1] = sub_1000BC488();
  (*(v10 + 104))(v12, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v9);
  static DispatchQoS.unspecified.getter();
  v39 = _swiftEmptyArrayStorage;
  sub_100A71EC8(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v3 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v3 + 80) = &_swiftEmptySetSingleton;
  *(v3 + 88) = 0u;
  *(v3 + 104) = 0u;
  *(v3 + 120) = 0;
  *(v3 + 128) = 0xF000000000000000;
  *(v3 + 136) = _swiftEmptyArrayStorage;
  *(v3 + 168) = &type metadata for AccessoryPairingSpec1_0;
  *(v3 + 176) = sub_100A71E24();
  v13 = static os_log_type_t.debug.getter();
  if (qword_1016950C8 != -1)
  {
    v33 = v13;
    swift_once();
    v13 = v33;
  }

  v14 = qword_10177C410;
  os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, qword_10177C410, "AccessoryPairingSession.init()", 30, 2, _swiftEmptyArrayStorage);
  v16 = v37;
  v15 = v38;
  *(v4 + 24) = v37;
  *(v4 + 40) = v15;
  type metadata accessor for AccessoryPairingValidator();
  v17 = swift_allocObject();
  type metadata accessor for DeviceIdentityUtility(0);
  v18 = swift_allocObject();

  swift_defaultActor_initialize();
  v19 = OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate;
  v20 = type metadata accessor for Date();
  (*(*(v20 - 8) + 56))(v18 + v19, 1, 1, v20);
  *(v18 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey) = 0;
  *(v18 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) = _swiftEmptyArrayStorage;
  *(v18 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType) = 9;
  *(v17 + 16) = v18;
  *(v17 + 24) = 0;
  v21 = v35;
  *(v4 + 56) = v17;
  *(v4 + 64) = v21;
  type metadata accessor for AccessoryPairingErrorManager();
  swift_allocObject();

  v22 = v21;
  *(v4 + 48) = sub_100243CCC(v16);
  v23 = [*&v22[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject] identifier];
  v24 = v36;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v25 = *(v4 + 56);
  v26 = *(v4 + 16);
  type metadata accessor for AccessoryPairingCoordinator(0);
  swift_allocObject();

  v27 = sub_10110ABC0(v24, v25, v26);
  v28 = v27;
  if (v27)
  {
    *(v4 + 72) = v27;

    sub_1000BC4D4(&unk_1016A6140, &unk_1013D4EB0);
    unsafeFromAsyncTask<A>(_:)();
    v29 = v39;
    if (v39)
    {

      *(v4 + 32) = v29;
      return v4;
    }

    sub_100101B58();
    swift_allocError();
    *v30 = 16;
    *(v30 + 8) = 0u;
    *(v30 + 24) = 0u;
    *(v30 + 40) = 11;
    swift_willThrow();

    v31 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v31, &_mh_execute_header, v14, "AccessoryPairingSession.init: missing central manager service!", 62, 2, _swiftEmptyArrayStorage);
  }

  if (v28)
  {
  }

  sub_100A5F79C(*(v4 + 104), *(v4 + 112));
  sub_100006654(*(v4 + 120), *(v4 + 128));

  sub_100007BAC((v4 + 144));
  type metadata accessor for AccessoryPairingSession();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_100A60490(uint64_t a1)
{
  v2 = static os_log_type_t.default.getter();
  if (qword_1016950C8 != -1)
  {
    v4 = v2;
    swift_once();
    v2 = v4;
  }

  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, qword_10177C410, "AccessoryPairingSession.deinit", 30, 2, _swiftEmptyArrayStorage);

  sub_100A5F79C(*(v1 + 104), *(v1 + 112));
  sub_100006654(*(v1 + 120), *(v1 + 128));

  sub_100007BAC((v1 + 144));
  return v1;
}

uint64_t sub_100A60594(uint64_t a1)
{
  sub_100A60490(a1);

  return swift_deallocClassInstance();
}

void sub_100A605EC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v68 = a2;
  v69 = a3;
  v59 = *v3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v65 = *(v6 - 8);
  v66 = v6;
  __chkstk_darwin(v6);
  v62 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v63 = *(v8 - 8);
  v64 = v8;
  __chkstk_darwin(v8);
  v61 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for DispatchQoS.QoSClass();
  v10 = *(v60 - 8);
  __chkstk_darwin(v60);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v13 - 8);
  v58 = &v57 - v14;
  v15 = static os_log_type_t.default.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  v16 = qword_10177C410;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v17 = swift_allocObject();
  v57 = xmmword_10138BBE0;
  *(v17 + 16) = xmmword_10138BBE0;
  *&aBlock = *v4;
  sub_1000BC4D4(&qword_1016B43A0, &qword_1013D4E88);
  v18 = String.init<A>(describing:)();
  v20 = v19;
  v67 = v4;
  *(v17 + 56) = &type metadata for String;
  v21 = sub_100008C00();
  *(v17 + 32) = v18;
  *(v17 + 40) = v20;
  *(v17 + 96) = &type metadata for String;
  *(v17 + 104) = v21;
  *(v17 + 64) = v21;
  *(v17 + 72) = 0xD000000000000021;
  *(v17 + 80) = 0x800000010136A8B0;
  os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, v16, "%{public}@: %{public}@", 22, 2, v17);

  if ([a1 isBatteryTooLow])
  {
    sub_1000BC488();
    v22 = v60;
    (*(v10 + 104))(v12, enum case for DispatchQoS.QoSClass.default(_:), v60);
    v23 = static OS_dispatch_queue.global(qos:)();
    (*(v10 + 8))(v12, v22);
    v24 = swift_allocObject();
    v25 = v69;
    *(v24 + 16) = v68;
    *(v24 + 24) = v25;
    v75 = sub_100A71D08;
    v76 = v24;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v73 = sub_100006684;
    v74 = &unk_101645750;
    v26 = _Block_copy(&aBlock);

    v27 = v61;
    static DispatchQoS.unspecified.getter();
    v71 = _swiftEmptyArrayStorage;
    sub_100A71EC8(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v28 = v62;
    v29 = v66;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v26);

    (*(v65 + 8))(v28, v29);
    (*(v63 + 8))(v27, v64);

    type metadata accessor for SPPairingSessionError(0);
    v71 = 15;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100A71EC8(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
    _BridgedStoredNSError.init(_:userInfo:)();
    v30 = aBlock;
    sub_100243F38();
  }

  else
  {
    v31 = v67;
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    OS_dispatch_queue.sync<A>(execute:)();
    v32 = sub_10107355C(aBlock);

    v33 = v31[3];
    v34 = sub_100AB035C();
    if (v34 >= v32)
    {
      v41 = v34;
      v42 = static os_log_type_t.error.getter();
      v43 = swift_allocObject();
      *(v43 + 16) = v57;
      *(v43 + 56) = &type metadata for Int;
      *(v43 + 64) = &protocol witness table for Int;
      *(v43 + 32) = v32;
      *(v43 + 96) = &type metadata for Int;
      *(v43 + 104) = &protocol witness table for Int;
      *(v43 + 72) = v41;
      os_log(_:dso:log:_:_:)(v42, &_mh_execute_header, v16, "Limit reached %i. Current count: %i", v57, DWORD2(v57));

      sub_1000BC488();
      v44 = *(v10 + 104);
      v59 = v41;
      v45 = v60;
      v44(v12, enum case for DispatchQoS.QoSClass.default(_:), v60);
      v46 = static OS_dispatch_queue.global(qos:)();
      (*(v10 + 8))(v12, v45);
      v47 = swift_allocObject();
      v48 = v69;
      *(v47 + 16) = v68;
      *(v47 + 24) = v48;
      v75 = sub_100A71CD8;
      v76 = v47;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v73 = sub_100006684;
      v74 = &unk_1016456B0;
      v49 = _Block_copy(&aBlock);

      v50 = v61;
      static DispatchQoS.unspecified.getter();
      v71 = _swiftEmptyArrayStorage;
      sub_100A71EC8(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      v51 = v62;
      v52 = v66;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v49);

      (*(v65 + 8))(v51, v52);
      (*(v63 + 8))(v50, v64);

      type metadata accessor for SPPairingSessionError(0);
      *&aBlock = 17;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_100A71EC8(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
      _BridgedStoredNSError.init(_:userInfo:)();
      v53 = v71;
      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(35);

      strcpy(&aBlock, "Limit reached ");
      HIBYTE(aBlock) = -18;
      v70 = v32;
      v54._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v54);

      v55._object = 0x800000010136A8E0;
      v55._countAndFlagsBits = 0xD000000000000011;
      String.append(_:)(v55);
      v70 = v59;
      v56._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v56);

      sub_100243F38();
    }

    else
    {
      v35 = swift_allocObject();
      v36 = v69;
      v35[2] = v68;
      v35[3] = v36;
      v35[4] = v31;
      v35[5] = a1;
      v35[6] = v59;
      v37 = type metadata accessor for TaskPriority();
      v38 = v58;
      (*(*(v37 - 8) + 56))(v58, 1, 1, v37);
      v39 = swift_allocObject();
      v39[2] = 0;
      v39[3] = 0;
      v39[4] = v33;
      v39[5] = sub_100A71CF8;
      v39[6] = v35;

      v40 = a1;

      sub_10025EDD4(0, 0, v38, &unk_1013A0968, v39);
    }
  }
}

void sub_100A61174(void (*a1)(), uint64_t a2, uint64_t a3)
{
  type metadata accessor for SPPairingSessionError(0);
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100A71EC8(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
  _BridgedStoredNSError.init(_:userInfo:)();
  a1();
}

void sub_100A61230(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(char *, void), uint64_t a6)
{
  v34 = a6;
  v35 = a5;
  v36 = a3;
  v9 = type metadata accessor for DispatchQoS.QoSClass();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v18;
  if (a1)
  {
    v21 = swift_allocObject();
    v22 = v34;
    v23 = v35;
    v21[2] = v35;
    v21[3] = a4;
    v21[4] = a2;
    v21[5] = v36;
    v21[6] = v22;
    v44 = sub_100A71D48;
    v45 = v21;
    aBlock = _NSConcreteStackBlock;
    v41 = 1107296256;
    v42 = sub_100006684;
    v43 = &unk_1016457F0;
    v24 = _Block_copy(&aBlock);
    v25 = v23;

    static DispatchQoS.unspecified.getter();
    v39 = _swiftEmptyArrayStorage;
    sub_100A71EC8(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v24);
    (*(v38 + 8))(v15, v13);
    v17[1](v20, v37);
  }

  else
  {
    v26 = a2;
    v34 = a4;
    v35 = v17;
    v27 = static os_log_type_t.error.getter();
    if (qword_1016950C8 != -1)
    {
      v33 = v27;
      swift_once();
      v27 = v33;
    }

    os_log(_:dso:log:_:_:)(v27, &_mh_execute_header, qword_10177C410, "initiatePairing - manatee not available!", 40, 2);
    sub_1000BC488();
    (*(v10 + 104))(v12, enum case for DispatchQoS.QoSClass.default(_:), v9);
    v28 = static OS_dispatch_queue.global(qos:)();
    (*(v10 + 8))(v12, v9);
    v29 = swift_allocObject();
    v30 = v36;
    *(v29 + 16) = v26;
    *(v29 + 24) = v30;
    v44 = sub_100A71D28;
    v45 = v29;
    aBlock = _NSConcreteStackBlock;
    v41 = 1107296256;
    v42 = sub_100006684;
    v43 = &unk_1016457A0;
    v31 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v39 = _swiftEmptyArrayStorage;
    sub_100A71EC8(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v31);

    (*(v38 + 8))(v15, v13);
    v35[1](v20, v37);

    type metadata accessor for SPPairingSessionError(0);
    v39 = 20;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100A71EC8(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
    _BridgedStoredNSError.init(_:userInfo:)();
    v32 = aBlock;
    sub_100243F38();
  }
}

uint64_t sub_100A618B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v98 = a5;
  v99 = a4;
  v97 = a3;
  v7 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  __chkstk_darwin(v7 - 8);
  v96 = v63 - v8;
  v75 = sub_1000BC4D4(&qword_10169E848, &unk_10139DC30);
  v74 = *(v75 - 1);
  __chkstk_darwin(v75);
  v71 = v63 - v9;
  v77 = sub_1000BC4D4(&qword_10169E850, &unk_1013A3500);
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v72 = v63 - v10;
  v82 = sub_1000BC4D4(&qword_10169E858, &unk_10139DC40);
  v79 = *(v82 - 8);
  __chkstk_darwin(v82);
  v78 = v63 - v11;
  v88 = sub_1000BC4D4(&qword_10169E860, &unk_1013A3510);
  v85 = *(v88 - 8);
  __chkstk_darwin(v88);
  v81 = v63 - v12;
  v89 = sub_1000BC4D4(&qword_10169E868, &qword_10139DC50);
  v86 = *(v89 - 8);
  __chkstk_darwin(v89);
  v83 = v63 - v13;
  v87 = sub_1000BC4D4(&qword_1016A7480, &qword_1013B61D0);
  v84 = *(v87 - 8);
  __chkstk_darwin(v87);
  v80 = v63 - v14;
  v15 = sub_1000BC4D4(&qword_1016B43A8, &qword_1013D4E90);
  v91 = *(v15 - 8);
  v92 = v15;
  __chkstk_darwin(v15);
  v90 = v63 - v16;
  v17 = sub_1000BC4D4(&qword_1016B43B0, &qword_1013D4E98);
  v94 = *(v17 - 8);
  v95 = v17;
  __chkstk_darwin(v17);
  v93 = v63 - v18;
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = static os_log_type_t.default.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  v24 = qword_10177C410;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_101385D80;
  v26 = [a1 identifier];
  v73 = a1;
  v27 = v26;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v28 = UUID.uuidString.getter();
  v30 = v29;
  (*(v20 + 8))(v22, v19);
  *(v25 + 56) = &type metadata for String;
  *(v25 + 64) = sub_100008C00();
  *(v25 + 32) = v28;
  *(v25 + 40) = v30;
  os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, v24, "Initiate pairing with accessory %@.", 35, 2, v25);

  v101 = a2;
  v103 = sub_10131F050(*(a2 + 64), 0);
  v104 = *(a2 + 16);
  v31 = v104;
  v102 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v32 = *(v102 - 8);
  v70 = *(v32 + 56);
  v33 = v32 + 56;
  v34 = v96;
  v70(v96, 1, 1, v102);
  v68 = v33;
  v69 = v31;
  v35 = sub_1000BC4D4(&qword_1016993D0, &qword_101391970);
  v36 = sub_1000BC488();
  v37 = sub_1000041A4(&qword_1016993D8, &qword_1016993D0, &qword_101391970, &protocol conformance descriptor for AnyPublisher<A, B>);
  v100 = sub_100A71EC8(&qword_1016AF9C0, sub_1000BC488, &protocol conformance descriptor for OS_dispatch_queue);
  v38 = v71;
  v66 = v35;
  v67 = v36;
  v65 = v37;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v34, &unk_1016B0FE0, &unk_101391980);

  static Subscribers.Demand.unlimited.getter();
  v63[1] = type metadata accessor for Peripheral(0);
  v64 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_1000041A4(&qword_10169E898, &qword_10169E848, &unk_10139DC30, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v39 = v72;
  v40 = v75;
  Publisher.flatMap<A, B>(maxPublishers:_:)();
  (*(v74 + 8))(v38, v40);
  v41 = v69;
  v103 = v69;
  v42 = v70;
  v70(v34, 1, 1, v102);
  v75 = &protocol conformance descriptor for Publishers.FlatMap<A, B>;
  sub_1000041A4(&qword_10169E8A0, &qword_10169E850, &unk_1013A3500, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  v43 = v78;
  v44 = v77;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v34, &unk_1016B0FE0, &unk_101391980);

  (*(v76 + 8))(v39, v44);
  swift_allocObject();
  swift_weakInit();
  static Subscribers.Demand.unlimited.getter();
  v45 = v64;
  sub_1000041A4(&qword_10169E8A8, &qword_10169E858, &unk_10139DC40, v64);
  v46 = v81;
  v47 = v82;
  Publisher.flatMap<A, B>(maxPublishers:_:)();

  (*(v79 + 8))(v43, v47);
  v103 = v41;
  v42(v34, 1, 1, v102);
  sub_1000041A4(&qword_10169E8B0, &qword_10169E860, &unk_1013A3510, v75);
  v48 = v83;
  v49 = v88;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v34, &unk_1016B0FE0, &unk_101391980);

  (*(v85 + 8))(v46, v49);
  sub_1000041A4(&qword_10169E8B8, &qword_10169E868, &qword_10139DC50, v45);
  v50 = v80;
  v51 = v89;
  Publisher.compactMap<A>(_:)();
  (*(v86 + 8))(v48, v51);
  sub_1000BC4D4(&unk_1016A6150, &unk_10139DB30);
  v52 = v90;
  v53 = v87;
  Publishers.CompactMap.map<A>(_:)();
  (*(v84 + 8))(v50, v53);
  sub_1000BC4D4(&qword_1016A6160, &unk_10139DC80);
  sub_1000041A4(&qword_1016B43B8, &qword_1016B43A8, &qword_1013D4E90, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  sub_1000041A4(&qword_1016A6170, &qword_1016A6160, &unk_10139DC80, &protocol conformance descriptor for Just<A>);
  v54 = v92;
  v55 = v93;
  Publisher.catch<A>(_:)();
  (*(v91 + 8))(v52, v54);
  v56 = swift_allocObject();
  swift_weakInit();
  v57 = swift_allocObject();
  v58 = v97;
  v57[2] = v56;
  v57[3] = v58;
  v59 = v73;
  v57[4] = v99;
  v57[5] = v59;
  v57[6] = v98;
  sub_1000041A4(&qword_1016B43C0, &qword_1016B43B0, &qword_1013D4E98, &protocol conformance descriptor for Publishers.Catch<A, B>);

  v60 = v59;
  v61 = v95;
  Publisher<>.sink(receiveValue:)();

  (*(v94 + 8))(v55, v61);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_100A626AC@<X0>(char **a1@<X0>, uint64_t *a3@<X8>)
{
  v25 = a3;
  v4 = sub_1000BC4D4(&qword_1016995B0, &unk_101391A80);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - v6;
  v8 = sub_1000BC4D4(&unk_1016A6310, &unk_10139DC90);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - v10;
  v12 = *a1;
  v30[3] = &type metadata for BAServiceIdentifier;
  v30[4] = &off_10162CAF0;
  LOBYTE(v30[0]) = 1;
  v13 = OBJC_IVAR____TtC12searchpartyd10Peripheral_services;
  swift_beginAccess();
  v14 = *&v12[v13];
  v27 = v30;

  v15 = sub_1012BBDB4(sub_1001DB3F8, v26, v14);

  sub_100007BAC(v30);
  if (v15)
  {
    v16 = sub_10039C428(&off_10160CFA0);
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    *(v17 + 24) = v16;
    sub_1000BC4D4(&unk_1016CDD30, &unk_101391A90);
    swift_allocObject();

    v30[0] = Future.init(_:)();
    sub_1000041A4(&qword_1016A6330, &unk_1016CDD30, &unk_101391A90, &protocol conformance descriptor for Future<A, B>);
    v18 = Publisher.eraseToAnyPublisher()();
  }

  else
  {
    v20 = static os_log_type_t.error.getter();
    if (qword_1016950C8 != -1)
    {
      v23 = v20;
      swift_once();
      v20 = v23;
    }

    os_log(_:dso:log:_:_:)(v20, &_mh_execute_header, qword_10177C410, "No FindMy service", 17, 2, _swiftEmptyArrayStorage);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {

      type metadata accessor for SPPairingSessionError(0);
      v28 = 7;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_100A71EC8(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
      _BridgedStoredNSError.init(_:userInfo:)();
      v21 = v29;
      sub_100243F38();
    }

    v29 = v12;
    type metadata accessor for Peripheral(0);
    v22 = v12;
    Just.init(_:)();
    sub_100101B58();
    Just.setFailureType<A>(to:)();
    (*(v5 + 8))(v7, v4);
    sub_1000041A4(&qword_1016995B8, &unk_1016A6310, &unk_10139DC90, &protocol conformance descriptor for Result<A, B>.Publisher);
    v18 = Publisher.eraseToAnyPublisher()();
    result = (*(v9 + 8))(v11, v8);
  }

  *v25 = v18;
  return result;
}

uint64_t sub_100A62B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v76 = a4;
  v75 = a3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v73 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v74 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS.QoSClass();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v72 = Strong;
    sub_1000D2A70(a1, &v87, &unk_1016A6150, &unk_10139DB30);
    v71 = v8;
    v70 = v10;
    if (v89)
    {
      v85 = v87;
      v86[0] = *v88;
      *(v86 + 9) = *&v88[9];
      v18 = static os_log_type_t.error.getter();
      if (qword_1016950C8 != -1)
      {
        swift_once();
      }

      v19 = qword_10177C410;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_101385D80;
      v21 = sub_1013181BC();
      v23 = v22;
      *(v20 + 56) = &type metadata for String;
      *(v20 + 64) = sub_100008C00();
      *(v20 + 32) = v21;
      *(v20 + 40) = v23;
      os_log(_:dso:log:_:_:)(v18, &_mh_execute_header, v19, "initiatePairing error %@", 24, 2, v20);

      sub_1000BC488();
      (*(v14 + 104))(v16, enum case for DispatchQoS.QoSClass.default(_:), v13);
      v24 = static OS_dispatch_queue.global(qos:)();
      (*(v14 + 8))(v16, v13);
      v25 = swift_allocObject();
      v26 = v76;
      *(v25 + 16) = v75;
      *(v25 + 24) = v26;
      v83 = sub_100A71D90;
      v84 = v25;
      aBlock = _NSConcreteStackBlock;
      v80 = 1107296256;
      v81 = sub_100006684;
      v82 = &unk_101645868;
      v27 = _Block_copy(&aBlock);

      static DispatchQoS.unspecified.getter();
      v77[0] = _swiftEmptyArrayStorage;
      sub_100A71EC8(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      v28 = v73;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v27);

      (*(v71 + 8))(v28, v7);
      (*(v74 + 8))(v12, v70);
      sub_100101B04(&v85);
    }

    v68 = v12;
    v31 = v87;
    v82 = &type metadata for BAServiceIdentifier;
    v83 = &off_10162CAF0;
    LOBYTE(aBlock) = 1;
    v32 = OBJC_IVAR____TtC12searchpartyd10Peripheral_services;
    v33 = swift_beginAccess();
    v69 = v31;
    v34 = *&v31[v32];
    __chkstk_darwin(v33);
    *(&v66 - 2) = &aBlock;

    v35 = sub_1012BBDB4(sub_1001DB3F8, (&v66 - 4), v34);

    sub_100007BAC(&aBlock);
    if (v35)
    {
      v67 = v7;
      v82 = &type metadata for BACharacteristicIdentifier.FindMy;
      v83 = &off_10162CAD0;
      LOBYTE(aBlock) = 0;
      v36 = swift_beginAccess();
      v37 = *(v35 + 40);
      __chkstk_darwin(v36);
      *(&v66 - 2) = &aBlock;

      v38 = sub_1012BBE10(sub_10038C458, (&v66 - 4), v37);

      sub_100007BAC(&aBlock);
      if (v38)
      {
        v39 = [a5 discoveredMetadata];
        v40 = [v39 findMyVersion];

        v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v43 = v42;

        v44 = sub_10098E9DC(v41, v43);
        if ((v44 & 0x100000000) == 0)
        {
          sub_100A6396C(v44);
          v45 = v75;
          v46 = v76;
          sub_100A68E24(a5, v38, v75, v76);
          sub_100A67A7C(a5, v38, v45, v46);
        }

        v66 = v38;
        if (qword_101694BD8 != -1)
        {
          swift_once();
        }

        v55 = type metadata accessor for Logger();
        sub_1000076D4(v55, qword_1016B4008);
        v56 = Logger.logObject.getter();
        v57 = static os_log_type_t.error.getter();
        v58 = os_log_type_enabled(v56, v57);
        v7 = v67;
        v53 = v68;
        if (v58)
        {
          v59 = swift_slowAlloc();
          *v59 = 0;
          _os_log_impl(&_mh_execute_header, v56, v57, "Missing FindMy version number!", v59, 2u);
        }

        sub_1000BC488();
        (*(v14 + 104))(v16, enum case for DispatchQoS.QoSClass.default(_:), v13);
        v60 = static OS_dispatch_queue.global(qos:)();
        (*(v14 + 8))(v16, v13);
        v61 = swift_allocObject();
        v62 = v76;
        *(v61 + 16) = v75;
        *(v61 + 24) = v62;
        v83 = sub_100A71DB0;
        v84 = v61;
        aBlock = _NSConcreteStackBlock;
        v80 = 1107296256;
        v81 = sub_100006684;
        v82 = &unk_101645908;
        v63 = _Block_copy(&aBlock);

        static DispatchQoS.unspecified.getter();
        v78 = _swiftEmptyArrayStorage;
        sub_100A71EC8(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
        v54 = v73;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();

        _Block_release(v63);

LABEL_22:
        (*(v71 + 8))(v54, v7);
        (*(v74 + 8))(v53, v70);
      }

      v7 = v67;
    }

    v47 = static os_log_type_t.error.getter();
    if (qword_1016950C8 != -1)
    {
      v65 = v47;
      swift_once();
      v47 = v65;
    }

    os_log(_:dso:log:_:_:)(v47, &_mh_execute_header, qword_10177C410, "No pairing characteristic!", 26, 2, _swiftEmptyArrayStorage);
    type metadata accessor for SPPairingSessionError(0);
    v78 = 7;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100A71EC8(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
    _BridgedStoredNSError.init(_:userInfo:)();
    v48 = aBlock;
    sub_100243F38();

    sub_1000BC488();
    (*(v14 + 104))(v16, enum case for DispatchQoS.QoSClass.default(_:), v13);
    v49 = static OS_dispatch_queue.global(qos:)();
    (*(v14 + 8))(v16, v13);
    v50 = swift_allocObject();
    v51 = v76;
    *(v50 + 16) = v75;
    *(v50 + 24) = v51;
    v83 = sub_100A71FC4;
    v84 = v50;
    aBlock = _NSConcreteStackBlock;
    v80 = 1107296256;
    v81 = sub_100006684;
    v82 = &unk_1016458B8;
    v52 = _Block_copy(&aBlock);

    v53 = v68;
    static DispatchQoS.unspecified.getter();
    v78 = _swiftEmptyArrayStorage;
    sub_100A71EC8(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v54 = v73;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v52);

    goto LABEL_22;
  }

  v29 = static os_log_type_t.error.getter();
  if (qword_1016950C8 != -1)
  {
    v64 = v29;
    swift_once();
    v29 = v64;
  }

  return os_log(_:dso:log:_:_:)(v29, &_mh_execute_header, qword_10177C410, "Missing self!", 13, 2, _swiftEmptyArrayStorage);
}

void sub_100A6396C(unsigned int a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + 16);
  *v7 = v8;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    if (qword_101694BD8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v10 = type metadata accessor for Logger();
  sub_1000076D4(v10, qword_1016B4008);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *&v48 = swift_slowAlloc();
    *v13 = 136315394;
    *(v13 + 4) = sub_1000136BC(0xD00000000000001BLL, 0x800000010136AA70, &v48);
    *(v13 + 12) = 2082;
    v14 = sub_10098E010();
    v16 = sub_1000136BC(v14, v15, &v48);

    *(v13 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s %{public}s", v13, 0x16u);
    swift_arrayDestroy();
  }

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v17 = qword_10177C218;
  v18 = [objc_opt_self() sharedInstance];
  v19 = [v18 isInternalBuild];

  if (v19)
  {
    v20 = String._bridgeToObjectiveC()();
    v21 = [v17 stringForKey:v20];

    if (v21)
    {
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      v25 = sub_10098E9DC(v22, v24);
      if ((v25 & 0x100000000) == 0)
      {
        v26 = v25;
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          *&v48 = v30;
          *v29 = 136446210;
          v31 = sub_10098E010();
          v33 = sub_1000136BC(v31, v32, &v48);

          *(v29 + 4) = v33;
          _os_log_impl(&_mh_execute_header, v27, v28, "pairingSpecOverride: %{public}s", v29, 0xCu);
          sub_100007BAC(v30);
        }

        v34 = sub_10098E9DC(0x302E302E32, 0xE500000000000000);
        if ((v34 & 0x100000000) == 0)
        {
          if (v26 < v34)
          {
            goto LABEL_20;
          }

          if (v34 >= v26)
          {
            if (BYTE2(v26) < BYTE2(v34))
            {
              goto LABEL_20;
            }

            if (BYTE2(v34) >= BYTE2(v26))
            {
              v35 = v34 >> 24;
              v36 = HIBYTE(v26);
              goto LABEL_29;
            }
          }

LABEL_22:
          v49 = &type metadata for AccessoryPairingSpec2_0;
          v38 = sub_100A71DD0();
          goto LABEL_23;
        }

LABEL_34:
        __break(1u);
        return;
      }
    }
  }

  v37 = sub_10098E9DC(0x302E302E32, 0xE500000000000000);
  if ((v37 & 0x100000000) != 0)
  {
    __break(1u);
    goto LABEL_34;
  }

  if (a1 < v37)
  {
    goto LABEL_20;
  }

  if (v37 < a1)
  {
    goto LABEL_22;
  }

  if (BYTE2(a1) < BYTE2(v37))
  {
    goto LABEL_20;
  }

  if (BYTE2(v37) < BYTE2(a1))
  {
    goto LABEL_22;
  }

  v35 = v37 >> 24;
  v36 = HIBYTE(a1);
LABEL_29:
  if (v36 >= v35)
  {
    goto LABEL_22;
  }

LABEL_20:
  v49 = &type metadata for AccessoryPairingSpec1_0;
  v38 = sub_100A71E24();
LABEL_23:
  v50 = v38;
  swift_beginAccess();
  sub_100007BAC((v2 + 144));
  sub_10000A748(&v48, v2 + 144);
  swift_endAccess();

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v47 = v42;
    *v41 = 136446210;
    swift_beginAccess();
    sub_10001F280(v2 + 144, &v48);
    sub_1000BC4D4(&qword_1016B43D0, &unk_1013D4EA0);
    v43 = String.init<A>(describing:)();
    v45 = sub_1000136BC(v43, v44, &v47);

    *(v41 + 4) = v45;
    _os_log_impl(&_mh_execute_header, v39, v40, "Using PairingSpec: %{public}s", v41, 0xCu);
    sub_100007BAC(v42);
  }
}

uint64_t sub_100A63FA0(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v33 = a4;
  v34 = a2;
  v31 = a3;
  v32 = a1;
  v30 = *v4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v35 = *(v9 - 8);
  v36 = v9;
  __chkstk_darwin(v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = static os_log_type_t.default.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  v13 = qword_10177C410;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10138BBE0;
  aBlock[0] = *v4;
  sub_1000BC4D4(&qword_1016B43A0, &qword_1013D4E88);
  v15 = String.init<A>(describing:)();
  v17 = v16;
  *(v14 + 56) = &type metadata for String;
  v18 = sub_100008C00();
  *(v14 + 32) = v15;
  *(v14 + 40) = v17;
  *(v14 + 96) = &type metadata for String;
  *(v14 + 104) = v18;
  *(v14 + 64) = v18;
  *(v14 + 72) = 0xD00000000000002FLL;
  *(v14 + 80) = 0x800000010136A710;
  os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v13, "%{public}@: %{public}@", 22, 2, v14);

  v19 = swift_allocObject();
  v20 = v31;
  v21 = v32;
  v19[2] = v32;
  v19[3] = v5;
  v23 = v33;
  v22 = v34;
  v19[4] = v20;
  v19[5] = v23;
  v24 = v30;
  v19[6] = v22;
  v19[7] = v24;
  aBlock[4] = sub_100A71C48;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101645520;
  v25 = _Block_copy(aBlock);
  v26 = v21;

  v27 = v22;
  static DispatchQoS.unspecified.getter();
  v38 = _swiftEmptyArrayStorage;
  sub_100A71EC8(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);
  (*(v37 + 8))(v8, v6);
  (*(v35 + 8))(v11, v36);
}

void sub_100A643E8(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v105 = a5;
  v117 = a3;
  v118 = a4;
  v7 = type metadata accessor for OwnedBeaconRecord(0);
  __chkstk_darwin(v7 - 8);
  v102 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v112 = *(v9 - 8);
  v113 = v9;
  __chkstk_darwin(v9);
  v110 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v114 = *(v11 - 8);
  v115 = v11;
  __chkstk_darwin(v11);
  v111 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS.QoSClass();
  v108 = *(v13 - 8);
  v109 = v13;
  __chkstk_darwin(v13);
  v107 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_1000BC4D4(&unk_1016B15A0, &qword_1013A0900);
  v15 = __chkstk_darwin(v103);
  v104 = (&v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v106 = (&v98 - v17);
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = static os_log_type_t.default.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  v23 = qword_10177C410;
  v101 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v24 = swift_allocObject();
  v100 = xmmword_101385D80;
  *(v24 + 16) = xmmword_101385D80;
  v116 = a1;
  v25 = [a1 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v26 = UUID.uuidString.getter();
  v28 = v27;
  (*(v19 + 8))(v21, v18);
  v29 = v23;
  *(v24 + 56) = &type metadata for String;
  v30 = sub_100008C00();
  *(v24 + 64) = v30;
  *(v24 + 32) = v26;
  *(v24 + 40) = v28;
  os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, v29, "Finalize pairing with accessory %@.", 35, 2, v24);

  v31 = a2[9];
  v32 = OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingOwnerContext;
  swift_beginAccess();
  sub_1000D2A70(v31 + v32, &aBlock, &qword_101697380, &unk_10138BEF0);
  if (!v132)
  {
    v42 = &qword_101697380;
    v43 = &unk_10138BEF0;
LABEL_8:
    sub_10000B3A8(&aBlock, v42, v43);
    v44 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v44, &_mh_execute_header, v29, "Missing context to generate initial pairing data!", 49, 2);
    sub_100A65CEC(v116, 0, 0);
    sub_1000BC488();
    v46 = v107;
    v45 = v108;
    v47 = v109;
    (*(v108 + 104))(v107, enum case for DispatchQoS.QoSClass.default(_:), v109);
    v48 = static OS_dispatch_queue.global(qos:)();
    (*(v45 + 8))(v46, v47);
    v49 = swift_allocObject();
    v50 = v118;
    *(v49 + 16) = v117;
    *(v49 + 24) = v50;
    v133 = sub_100A71C58;
    v134 = v49;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v131 = sub_100006684;
    v132 = &unk_101645570;
    v51 = _Block_copy(&aBlock);

    v52 = v111;
    static DispatchQoS.unspecified.getter();
    v120 = _swiftEmptyArrayStorage;
    sub_100A71EC8(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v53 = v110;
    v54 = v113;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v51);

    (*(v112 + 8))(v53, v54);
    (*(v114 + 8))(v52, v115);

    type metadata accessor for SPPairingSessionError(0);
    v120 = 7;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100A71EC8(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
    _BridgedStoredNSError.init(_:userInfo:)();
    v55 = aBlock;
    sub_100243F38();

    return;
  }

  sub_10000A748(&aBlock, v129);
  v33 = *(v31 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo);
  v34 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC3;
  swift_beginAccess();
  sub_1000D2A70(v33 + v34, &aBlock, &qword_101697320, &qword_10138BE90);
  if (!v132)
  {
    sub_100007BAC(v129);
    v42 = &qword_101697320;
    v43 = &qword_10138BE90;
    goto LABEL_8;
  }

  v99 = v29;
  sub_10000A748(&aBlock, v126);
  swift_beginAccess();
  sub_10001F280((a2 + 18), &v120);
  v36 = v123;
  v35 = v124;
  sub_1000035D0(&v120, v123);
  v38 = v127;
  v37 = v128;
  sub_1000035D0(v126, v127);
  v39 = (*(*(*(v37 + 8) + 8) + 40))(v38);
  v41 = v40;
  (*(v35 + 10))(&aBlock, v129, v39, v40, v36, v35);
  sub_100016590(v39, v41);
  sub_100007BAC(&v120);
  v56 = a2[3];
  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  QueueSynchronizer.conditionalSync<A>(_:)();

  v57 = a2;
  if (v120 != 1)
  {
    v77 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v77, &_mh_execute_header, v99, "Cannot pair as account is not ready", 35, 2);
    sub_100A65CEC(v116, 0, 0);
    sub_1000BC488();
    v79 = v107;
    v78 = v108;
    v80 = v109;
    (*(v108 + 104))(v107, enum case for DispatchQoS.QoSClass.default(_:), v109);
    v81 = static OS_dispatch_queue.global(qos:)();
    (*(v78 + 8))(v79, v80);
    v82 = swift_allocObject();
    v83 = v118;
    *(v82 + 16) = v117;
    *(v82 + 24) = v83;
    v124 = sub_100A71C98;
    v125 = v82;
    v120 = _NSConcreteStackBlock;
    v121 = 1107296256;
    v122 = sub_100006684;
    v123 = &unk_101645610;
    v84 = _Block_copy(&v120);

    v85 = v111;
    static DispatchQoS.unspecified.getter();
    v119 = _swiftEmptyArrayStorage;
    sub_100A71EC8(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v86 = v110;
    v87 = v113;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v84);

    (*(v112 + 8))(v86, v87);
    (*(v114 + 8))(v85, v115);

    type metadata accessor for SPPairingSessionError(0);
    v119 = 10;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100A71EC8(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
    _BridgedStoredNSError.init(_:userInfo:)();
    v88 = v120;
    sub_100243F38();
    sub_1001DA760(&aBlock);

LABEL_16:
    sub_100007BAC(v129);
    sub_100007BAC(v126);
    return;
  }

  v58 = v106;
  v59 = v116;
  sub_100A6DF58(v116, &aBlock, v105, v106);
  v60 = v104;
  sub_1000D2A70(v58, v104, &unk_1016B15A0, &qword_1013A0900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v61 = *v60;
    sub_100A65CEC(v59, 0, 0);
    v62 = static os_log_type_t.error.getter();
    v63 = swift_allocObject();
    *(v63 + 16) = v100;
    v105 = v61;
    v120 = v61;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v64 = String.init<A>(describing:)();
    *(v63 + 56) = &type metadata for String;
    *(v63 + 64) = v30;
    *(v63 + 32) = v64;
    *(v63 + 40) = v65;
    os_log(_:dso:log:_:_:)(v62, &_mh_execute_header, v99, "Failed to save beacon record %@", 31, 2, v63);

    sub_1000BC488();
    v67 = v107;
    v66 = v108;
    v68 = v109;
    (*(v108 + 104))(v107, enum case for DispatchQoS.QoSClass.default(_:), v109);
    v69 = static OS_dispatch_queue.global(qos:)();
    (*(v66 + 8))(v67, v68);
    v70 = swift_allocObject();
    v71 = v118;
    *(v70 + 16) = v117;
    *(v70 + 24) = v71;
    v124 = sub_100A71CB8;
    v125 = v70;
    v120 = _NSConcreteStackBlock;
    v121 = 1107296256;
    v122 = sub_100006684;
    v123 = &unk_101645660;
    v72 = _Block_copy(&v120);

    v73 = v111;
    static DispatchQoS.unspecified.getter();
    v119 = _swiftEmptyArrayStorage;
    sub_100A71EC8(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v74 = v110;
    v75 = v113;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v72);

    (*(v112 + 8))(v74, v75);
    (*(v114 + 8))(v73, v115);

    type metadata accessor for SPPairingSessionError(0);
    v119 = 11;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100A71EC8(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
    _BridgedStoredNSError.init(_:userInfo:)();
    v76 = v120;
    sub_100243F38();

    sub_1001DA760(&aBlock);

LABEL_15:
    sub_10000B3A8(v106, &unk_1016B15A0, &qword_1013A0900);
    goto LABEL_16;
  }

  v89 = v102;
  sub_10002ACAC(v60, v102, type metadata accessor for OwnedBeaconRecord);
  v90 = sub_10003EB74(v89, v56);
  v91 = v57[21];
  v92 = v57[22];
  sub_1000035D0(v57 + 18, v91);
  v93 = sub_100394B3C(v91, v92);
  v94 = sub_10110BCB8(v90, v93, v117, v118);
  if (*(v57[4] + OBJC_IVAR____TtC12searchpartyd14CentralManager_isSharedPairingAgent) == 1)
  {
    v95 = v57[8];
    __chkstk_darwin(v94);
    *(&v98 - 2) = v96;
    type metadata accessor for SharedPairingAgent();
    Lock.callAsFunction<A>(_:)();
    v97 = v120;
    sub_10104E044(v95);
    sub_1001DA760(&aBlock);

    sub_100A718E4(v89, type metadata accessor for OwnedBeaconRecord);
    goto LABEL_15;
  }

  __break(1u);
}

void sub_100A65940(void (*a1)(void, void *), uint64_t a2, uint64_t a3)
{
  type metadata accessor for SPPairingSessionError(0);
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100A71EC8(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
  _BridgedStoredNSError.init(_:userInfo:)();
  (a1)(0);
}

uint64_t sub_100A65A00(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v12 = *(v20 - 8);
  __chkstk_darwin(v20);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = *(v4 + 16);
  v15 = swift_allocObject();
  v15[2] = v4;
  v15[3] = a1;
  v15[4] = a2;
  v15[5] = a3;
  aBlock[4] = sub_100A71C1C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_1016454D0;
  v16 = _Block_copy(aBlock);

  v17 = a1;

  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_100A71EC8(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v20);
}

uint64_t sub_100A65CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v4;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = v4[2];
  *v12 = v13;
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  result = (*(v10 + 8))(v12, v9);
  if (v13)
  {
    v16 = type metadata accessor for Transaction();
    __chkstk_darwin(v16);
    *&v17[-48] = v4;
    *&v17[-40] = a1;
    *&v17[-32] = a2;
    *&v17[-24] = a3;
    *&v17[-16] = v8;
    return static Transaction.named<A>(_:with:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100A65EBC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v76 = a5;
  v75 = a4;
  v59 = a3;
  v74 = a1;
  v6 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  __chkstk_darwin(v6 - 8);
  v8 = v52 - v7;
  v57 = sub_1000BC4D4(&qword_1016B4340, &qword_1013D4E50);
  v60 = *(v57 - 8);
  __chkstk_darwin(v57);
  v10 = v52 - v9;
  v11 = sub_1000BC4D4(&qword_1016B4348, &qword_1013D4E58);
  v12 = *(v11 - 8);
  v61 = v11;
  v62 = v12;
  __chkstk_darwin(v11);
  v14 = v52 - v13;
  v65 = sub_1000BC4D4(&qword_1016B4350, &qword_1013D4E60);
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v58 = v52 - v15;
  v16 = sub_1000BC4D4(&qword_1016B4358, &qword_1013D4E68);
  v66 = *(v16 - 8);
  v67 = v16;
  __chkstk_darwin(v16);
  v64 = v52 - v17;
  v18 = sub_1000BC4D4(&qword_1016B4360, &qword_1013D4E70);
  v69 = *(v18 - 8);
  v70 = v18;
  __chkstk_darwin(v18);
  v68 = v52 - v19;
  v20 = sub_1000BC4D4(&qword_1016B4368, &unk_1013D4E78);
  v72 = *(v20 - 8);
  v73 = v20;
  __chkstk_darwin(v20);
  v71 = v52 - v21;
  v77 = sub_10110B248();
  v78 = *(a2 + 16);
  v22 = v78;
  v23 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v55 = v23;
  v53 = v25;
  v52[2] = v24 + 56;
  (v25)(v8, 1, 1);
  v56 = v22;
  sub_1000BC4D4(&qword_1016B3DC0, &qword_1013EF330);
  v26 = sub_1000BC488();
  sub_1000041A4(&qword_1016B3DC8, &qword_1016B3DC0, &qword_1013EF330, &protocol conformance descriptor for Future<A, B>);
  v27 = sub_100A71EC8(&qword_1016AF9C0, sub_1000BC488, &protocol conformance descriptor for OS_dispatch_queue);
  v54 = v26;
  v52[1] = v27;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v8, &unk_1016B0FE0, &unk_101391980);

  v28 = swift_allocObject();
  v29 = v59;
  *(v28 + 16) = a2;
  *(v28 + 24) = v29;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_100A71B10;
  *(v30 + 24) = v28;

  v59 = v29;
  static Subscribers.Demand.unlimited.getter();
  sub_1000041A4(&qword_1016B4370, &qword_1016B4340, &qword_1013D4E50, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v31 = v57;
  Publisher.flatMap<A, B>(maxPublishers:_:)();

  (*(v60 + 8))(v10, v31);
  v32 = swift_allocObject();
  *(v32 + 16) = sub_100A71B68;
  *(v32 + 24) = a2;
  v60 = a2;

  static Subscribers.Demand.unlimited.getter();
  type metadata accessor for Peripheral(0);
  sub_1000BC4D4(&qword_1016993D0, &qword_101391970);
  sub_1000041A4(&qword_1016B4378, &qword_1016B4348, &qword_1013D4E58, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  v33 = v58;
  sub_1000041A4(&qword_1016993D8, &qword_1016993D0, &qword_101391970, &protocol conformance descriptor for AnyPublisher<A, B>);
  v34 = v61;
  Publisher.flatMap<A, B>(maxPublishers:_:)();

  (*(v62 + 8))(v14, v34);
  if (qword_101694BD0 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  sub_1000076D4(v35, &unk_1016B3FF0);
  v36 = v56;
  v77 = v56;
  v53(v8, 1, 1, v55);
  sub_1000041A4(&qword_1016B4380, &qword_1016B4350, &qword_1013D4E60, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  v37 = v64;
  v38 = v65;
  Publisher.timeout<A>(_:scheduler:options:customError:)();
  sub_10000B3A8(v8, &unk_1016B0FE0, &unk_101391980);

  (*(v63 + 8))(v33, v38);
  sub_1000BC4D4(&unk_1016A6150, &unk_10139DB30);
  sub_1000041A4(&qword_1016B4388, &qword_1016B4358, &qword_1013D4E68, &protocol conformance descriptor for Publishers.Timeout<A, B>);
  v39 = v67;
  v40 = v68;
  Publisher.map<A>(_:)();
  (*(v66 + 8))(v37, v39);
  sub_1000BC4D4(&qword_1016A6160, &unk_10139DC80);
  sub_1000041A4(&qword_1016B4390, &qword_1016B4360, &qword_1013D4E70, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_1000041A4(&qword_1016A6170, &qword_1016A6160, &unk_10139DC80, &protocol conformance descriptor for Just<A>);
  v41 = v70;
  v42 = v71;
  Publisher.catch<A>(_:)();
  (*(v69 + 8))(v40, v41);
  v43 = swift_allocObject();
  swift_weakInit();
  v44 = swift_allocObject();
  v46 = v74;
  v45 = v75;
  v44[2] = v43;
  v44[3] = v46;
  v47 = v59;
  v44[4] = v59;
  v44[5] = v45;
  v48 = v76;
  v44[6] = v76;
  v49 = v47;

  sub_100012908(v45, v48);
  sub_1000041A4(&qword_1016B4398, &qword_1016B4368, &unk_1013D4E78, &protocol conformance descriptor for Publishers.Catch<A, B>);
  v50 = v73;
  Publisher<>.sink(receiveValue:)();

  (*(v72 + 8))(v42, v50);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

void sub_100A669DC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v52 = a6;
  v51 = a5;
  v50 = a4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v57 = *(v7 - 8);
  __chkstk_darwin(v7);
  v54 = &v47[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v56 = type metadata accessor for DispatchQoS();
  v55 = *(v56 - 8);
  __chkstk_darwin(v56);
  v53 = &v47[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v47[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v47[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    Transaction.capture()();
    sub_1000D2A70(a1, &v70, &unk_1016A6150, &unk_10139DB30);
    if ((v72 & 1) == 0)
    {
      v49 = v7;
      sub_10000B3A8(&v70, &unk_1016A6150, &unk_10139DB30);
      v48 = static os_log_type_t.default.getter();
      if (qword_1016950C8 != -1)
      {
        swift_once();
      }

      v30 = qword_10177C410;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_101385D80;
      v32 = [v50 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v33 = UUID.uuidString.getter();
      v35 = v34;
      (*(v15 + 8))(v17, v14);
      *(v31 + 56) = &type metadata for String;
      *(v31 + 64) = sub_100008C00();
      *(v31 + 32) = v33;
      *(v31 + 40) = v35;
      os_log(_:dso:log:_:_:)(v48, &_mh_execute_header, v30, "Successfully unpaired %@.", 25, 2, v31);

      sub_1000BC488();
      (*(v11 + 13))(v13, enum case for DispatchQoS.QoSClass.default(_:), v10);
      v19 = static OS_dispatch_queue.global(qos:)();
      (*(v11 + 1))(v13, v10);
      v36 = swift_allocObject();
      v37 = v51;
      v38 = v52;
      *(v36 + 16) = v51;
      *(v36 + 24) = v38;
      v64 = sub_100A71BE8;
      v65 = v36;
      aBlock = _NSConcreteStackBlock;
      v61 = 1107296256;
      v62 = sub_100006684;
      v63 = &unk_101645480;
      v39 = _Block_copy(&aBlock);
      sub_100012908(v37, v38);
      v18 = v53;
      static DispatchQoS.unspecified.getter();
      *&v68 = _swiftEmptyArrayStorage;
      sub_100A71EC8(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      v11 = v54;
      v40 = v49;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v39);

      (*(v57 + 8))(v11, v40);
      (*(v55 + 8))(v18, v56);
      goto LABEL_8;
    }

    v18 = v7;
    v68 = v70;
    v69[0] = *v71;
    *(v69 + 9) = *&v71[9];
    v19 = static os_log_type_t.error.getter();
    if (qword_1016950C8 != -1)
    {
      goto LABEL_12;
    }

    while (1)
    {
      v20 = qword_10177C410;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_101385D80;
      v22 = sub_1013181BC();
      v24 = v23;
      *(v21 + 56) = &type metadata for String;
      *(v21 + 64) = sub_100008C00();
      *(v21 + 32) = v22;
      *(v21 + 40) = v24;
      os_log(_:dso:log:_:_:)(v19, &_mh_execute_header, v20, "Unpair failed. Error %@", 23, 2, v21);

      sub_1000BC488();
      (*(v11 + 13))(v13, enum case for DispatchQoS.QoSClass.default(_:), v10);
      v19 = static OS_dispatch_queue.global(qos:)();
      (*(v11 + 1))(v13, v10);
      sub_100101AA8(&v68, &v66);
      v25 = swift_allocObject();
      v26 = v51;
      v27 = v52;
      *(v25 + 16) = v51;
      *(v25 + 24) = v27;
      v28 = v67[0];
      *(v25 + 32) = v66;
      *(v25 + 48) = v28;
      *(v25 + 57) = *(v67 + 9);
      v64 = sub_100A71BDC;
      v65 = v25;
      aBlock = _NSConcreteStackBlock;
      v61 = 1107296256;
      v62 = sub_100006684;
      v63 = &unk_101645430;
      v29 = _Block_copy(&aBlock);
      sub_100012908(v26, v27);
      v10 = v53;
      static DispatchQoS.unspecified.getter();
      v59 = _swiftEmptyArrayStorage;
      sub_100A71EC8(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      v11 = v54;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v29);

      (*(v57 + 8))(v11, v18);
      (*(v55 + 8))(v10, v56);
      sub_100101B04(&v68);
LABEL_8:

      v42 = *(Strong + 32);
      if (v42[OBJC_IVAR____TtC12searchpartyd14CentralManager_isSharedPairingAgent] == 1)
      {
        break;
      }

      __break(1u);
LABEL_12:
      swift_once();
    }

    v43 = *(Strong + 64);
    __chkstk_darwin(v41);
    *&v47[-16] = v42;
    type metadata accessor for SharedPairingAgent();
    v44 = v42;
    v45 = v43;
    Lock.callAsFunction<A>(_:)();
    v46 = aBlock;
    sub_10104E044(v45);
  }
}

void (*sub_100A67430(void (*result)(uint64_t), uint64_t a2, uint64_t a3))(uint64_t)
{
  if (result)
  {
    v4 = result;
    sub_100101B58();
    v5 = swift_allocError();
    sub_100101AA8(a3, v6);
    v4(v5);
  }

  return result;
}

uint64_t sub_100A674B0(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 72;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 72);
  v12 = *(v2 + 16);
  *v11 = v12;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
    v11 = static os_log_type_t.default.getter();
    if (qword_1016950C8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v14 = qword_10177C410;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_101385D80;
  v16 = [a1 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = UUID.uuidString.getter();
  v19 = v18;
  (*(v5 + 8))(v7, v4);
  *(v15 + 56) = &type metadata for String;
  *(v15 + 64) = sub_100008C00();
  *(v15 + 32) = v17;
  *(v15 + 40) = v19;
  v37 = v14;
  os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v14, "unpair accessory %@", 19, 2, v15);

  swift_beginAccess();
  sub_10001F280(v2 + 144, v38);
  v20 = v39;
  v21 = v40;
  sub_1000035D0(v38, v39);
  v22 = v21[11];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41[3] = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v41[4] = AssociatedConformanceWitness;
  v25 = sub_1000280DC(v41);
  v22(v20, v21);
  sub_100007BAC(v38);
  v26 = *(v2 + 64);
  v39 = &type metadata for BAServiceIdentifier;
  v40 = &off_10162CAF0;
  LOBYTE(v38[0]) = 1;
  v27 = OBJC_IVAR____TtC12searchpartyd10Peripheral_services;
  v28 = swift_beginAccess();
  v29 = *(v26 + v27);
  __chkstk_darwin(v28);
  *(&v37 - 2) = v38;

  v30 = sub_1012BBDB4(sub_1001DB280, (&v37 - 4), v29);

  sub_100007BAC(v38);
  if (!v30)
  {
LABEL_7:
    v35 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v35, &_mh_execute_header, v37, "Unable to retrieve Config Control Point!", 40, 2, _swiftEmptyArrayStorage);
    sub_1000BC4D4(&qword_1016B3DC0, &qword_1013EF330);
    swift_allocObject();
    v34 = Future.init(_:)();
    goto LABEL_8;
  }

  v39 = &type metadata for BACharacteristicIdentifier.FindMy;
  v40 = &off_10162CAD0;
  LOBYTE(v38[0]) = 1;
  v31 = swift_beginAccess();
  v32 = *(v30 + 40);
  __chkstk_darwin(v31);
  *(&v37 - 2) = v38;

  v33 = sub_1012BBE10(sub_1001DB2A0, (&v37 - 4), v32);

  sub_100007BAC(v38);
  if (!v33)
  {

    goto LABEL_7;
  }

  v34 = sub_100A70060(v25, v33, v2, AssociatedTypeWitness, AssociatedConformanceWitness);

LABEL_8:
  sub_100007BAC(v41);
  return v34;
}

uint64_t sub_100A67A18(void (*a1)(_OWORD *))
{
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  v4 = 267;
  a1(v2);
  return sub_10000B3A8(v2, &qword_1016B1CA0, &qword_1013918C0);
}

uint64_t sub_100A67A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v5;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = v5[2];
  *v14 = v15;
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  result = (*(v12 + 8))(v14, v11);
  if (v15)
  {
    v18 = type metadata accessor for Transaction();
    __chkstk_darwin(v18);
    *&v19[-48] = a1;
    *&v19[-40] = v5;
    *&v19[-32] = a2;
    *&v19[-24] = a3;
    *&v19[-16] = a4;
    *&v19[-8] = v10;
    return static Transaction.named<A>(_:with:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100A67C50(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v71 = a6;
  v69 = a5;
  v55 = a4;
  v50[0] = a2;
  v70 = a1;
  v8 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  __chkstk_darwin(v8 - 8);
  v10 = v50 - v9;
  v56 = sub_1000BC4D4(&qword_1016993E8, &unk_1013D4DF0);
  v57 = *(v56 - 8);
  __chkstk_darwin(v56);
  v76 = v50 - v11;
  v60 = sub_1000BC4D4(&qword_1016B4300, &qword_1013D4E30);
  v58 = *(v60 - 8);
  __chkstk_darwin(v60);
  v54 = v50 - v12;
  v13 = sub_1000BC4D4(&qword_1016B4308, &qword_1013D4E38);
  v61 = *(v13 - 8);
  v62 = v13;
  __chkstk_darwin(v13);
  v59 = v50 - v14;
  v15 = sub_1000BC4D4(&qword_1016B4310, &qword_1013D4E40);
  v64 = *(v15 - 8);
  v65 = v15;
  __chkstk_darwin(v15);
  v63 = v50 - v16;
  v17 = sub_1000BC4D4(&qword_1016B4318, &qword_1013D4E48);
  v67 = *(v17 - 8);
  v68 = v17;
  __chkstk_darwin(v17);
  v66 = v50 - v18;
  v19 = [a2 discoveredMetadata];
  v20 = [v19 manufacturerName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = String.lowercased()();

  v75 = v21;
  v73 = 0x6C6F6F747073;
  v74 = 0xE600000000000000;
  sub_1000DF96C();
  v22 = StringProtocol.contains<A>(_:)();

  v75._countAndFlagsBits = sub_101317D88((v22 & 1), *(a3 + 64));
  v73 = *(a3 + 16);
  v23 = v73;
  v24 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v25 = *(v24 - 8);
  v51 = *(v25 + 56);
  v50[1] = v25 + 56;
  v51(v10, 1, 1, v24);
  v53 = v23;
  sub_1000BC4D4(&qword_1016C4520, &unk_1013B6090);
  v26 = sub_1000BC488();
  sub_1000041A4(&qword_101699348, &qword_1016C4520, &unk_1013B6090, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_100A71EC8(&qword_1016AF9C0, sub_1000BC488, &protocol conformance descriptor for OS_dispatch_queue);
  v52 = v26;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v10, &unk_1016B0FE0, &unk_101391980);

  v27 = swift_allocObject();
  v28 = v50[0];
  v27[2] = a3;
  v27[3] = v28;
  v27[4] = v55;
  v72 = a3;

  v29 = v28;

  static Subscribers.Demand.unlimited.getter();
  sub_1000BC4D4(&qword_1016B3DC0, &qword_1013EF330);
  sub_1000041A4(&qword_101699410, &qword_1016993E8, &unk_1013D4DF0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v30 = v54;
  sub_1000041A4(&qword_1016B3DC8, &qword_1016B3DC0, &qword_1013EF330, &protocol conformance descriptor for Future<A, B>);
  v31 = v56;
  v32 = v76;
  Publisher.flatMap<A, B>(maxPublishers:_:)();

  (*(v57 + 8))(v32, v31);
  if (qword_101694BD0 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  sub_1000076D4(v33, &unk_1016B3FF0);
  v34 = v53;
  v75._countAndFlagsBits = v53;
  v51(v10, 1, 1, v24);
  sub_1000041A4(&qword_1016B4320, &qword_1016B4300, &qword_1013D4E30, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  v36 = v59;
  v35 = v60;
  Publisher.timeout<A>(_:scheduler:options:customError:)();
  sub_10000B3A8(v10, &unk_1016B0FE0, &unk_101391980);

  (*(v58 + 8))(v30, v35);
  sub_1000BC4D4(&qword_1016B1CA0, &qword_1013918C0);
  sub_1000041A4(&qword_1016B4328, &qword_1016B4308, &qword_1013D4E38, &protocol conformance descriptor for Publishers.Timeout<A, B>);
  v37 = v62;
  v38 = v63;
  Publisher.map<A>(_:)();
  (*(v61 + 8))(v36, v37);
  sub_1000BC4D4(&qword_1016A7290, &qword_1013B60A0);
  sub_1000041A4(&qword_1016B4330, &qword_1016B4310, &qword_1013D4E40, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_1000041A4(&qword_1016A72A0, &qword_1016A7290, &qword_1013B60A0, &protocol conformance descriptor for Just<A>);
  v39 = v65;
  v40 = v66;
  Publisher.catch<A>(_:)();
  (*(v64 + 8))(v38, v39);
  v41 = swift_allocObject();
  v42 = v72;
  swift_weakInit();
  v43 = swift_allocObject();
  v44 = v69;
  v45 = v70;
  v43[2] = v41;
  v43[3] = v45;
  v46 = v71;
  v43[4] = v44;
  v43[5] = v46;
  sub_1000041A4(&qword_1016B4338, &qword_1016B4318, &qword_1013D4E48, &protocol conformance descriptor for Publishers.Catch<A, B>);

  v47 = v68;
  v48 = Publisher<>.sink(receiveValue:)();

  (*(v67 + 8))(v40, v47);
  *(v42 + 96) = v48;
}

uint64_t sub_100A6867C@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  sub_100A6DA3C(a1, v7);
  v5 = sub_100A6D73C(v7, a2);
  result = sub_10000B3A8(v7, &qword_1016B4288, &unk_1013D4DB0);
  *a3 = v5;
  return result;
}

void *sub_100A686EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = a5;
  v40 = a4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v43 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v42 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    Transaction.capture()();
    sub_1000D2A70(a1, &v50, &qword_1016B1CA0, &qword_1013918C0);
    if (v52)
    {
      v37 = v9;
      v38 = v7;
      v39 = v6;
      v48 = v50;
      v49[0] = *v51;
      *(v49 + 9) = *&v51[9];
      v18 = static os_log_type_t.error.getter();
      if (qword_1016950C8 != -1)
      {
        swift_once();
      }

      v19 = qword_10177C410;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_101385D80;
      v21 = sub_1013181BC();
      v23 = v22;
      *(v20 + 56) = &type metadata for String;
      *(v20 + 64) = sub_100008C00();
      *(v20 + 32) = v21;
      *(v20 + 40) = v23;
      os_log(_:dso:log:_:_:)(v18, &_mh_execute_header, v19, "Failed to write initial pairing data. Error %@", 46, 2, v20);

      v17[11] = 0;

      v17[12] = 0;

      if (*(v17[4] + OBJC_IVAR____TtC12searchpartyd14CentralManager_isSharedPairingAgent) == 1)
      {
        v25 = v17[8];
        __chkstk_darwin(v24);
        *(&v36 - 2) = v26;
        type metadata accessor for SharedPairingAgent();
        Lock.callAsFunction<A>(_:)();
        v27 = aBlock[0];
        sub_10104E044(v25);

        sub_1000BC488();
        (*(v13 + 104))(v15, enum case for DispatchQoS.QoSClass.default(_:), v12);
        v28 = static OS_dispatch_queue.global(qos:)();
        (*(v13 + 8))(v15, v12);
        sub_100101AA8(&v48, &v46);
        v29 = swift_allocObject();
        v30 = v41;
        *(v29 + 16) = v40;
        *(v29 + 24) = v30;
        v31 = *v47;
        *(v29 + 32) = v46;
        *(v29 + 48) = v31;
        *(v29 + 57) = *&v47[9];
        aBlock[4] = sub_100A71AE0;
        aBlock[5] = v29;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100006684;
        aBlock[3] = &unk_101645340;
        v32 = _Block_copy(aBlock);

        static DispatchQoS.unspecified.getter();
        v44 = _swiftEmptyArrayStorage;
        sub_100A71EC8(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
        v33 = v43;
        v34 = v39;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v32);

        (*(v38 + 8))(v33, v34);
        (*(v42 + 8))(v11, v37);
        sub_100101B04(&v48);
      }

      __break(1u);
    }

    else
    {
      v24 = static os_log_type_t.default.getter();
      if (qword_1016950C8 == -1)
      {
LABEL_8:
        os_log(_:dso:log:_:_:)(v24, &_mh_execute_header, qword_10177C410, "Wrote initial pairing data. Waiting for accessory to write back.", 64, 2, _swiftEmptyArrayStorage);
      }
    }

    v35 = v24;
    swift_once();
    v24 = v35;
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_100A68DAC(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  sub_100101B58();
  v5 = swift_allocError();
  sub_100101AA8(a3, v6);
  a1(v5);
}

uint64_t sub_100A68E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v5;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = v5[2];
  *v14 = v15;
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  result = (*(v12 + 8))(v14, v11);
  if (v15)
  {
    v18 = type metadata accessor for Transaction();
    __chkstk_darwin(v18);
    *&v19[-48] = v5;
    *&v19[-40] = a2;
    *&v19[-32] = a1;
    *&v19[-24] = a3;
    *&v19[-16] = a4;
    *&v19[-8] = v10;
    return static Transaction.named<A>(_:with:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100A68FF8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v101 = a2;
  v95 = a1;
  v96 = a6;
  v94 = a5;
  v86 = a4;
  v7 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  __chkstk_darwin(v7 - 8);
  v98 = v67 - v8;
  v82 = sub_1000BC4D4(&qword_101699450, &unk_10139DBC0);
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v80 = v67 - v9;
  v10 = sub_1000BC4D4(&qword_101699458, &qword_1013919C0);
  v84 = *(v10 - 8);
  v85 = v10;
  __chkstk_darwin(v10);
  v83 = v67 - v11;
  v12 = sub_1000BC4D4(&qword_1016B42B0, &qword_1013D4E08);
  v88 = *(v12 - 8);
  v89 = v12;
  __chkstk_darwin(v12);
  v87 = v67 - v13;
  v14 = sub_1000BC4D4(&qword_1016B42B8, &qword_1013D4E10);
  v90 = *(v14 - 8);
  v91 = v14;
  __chkstk_darwin(v14);
  v97 = v67 - v15;
  v16 = sub_1000BC4D4(&qword_1016B42C0, &qword_1013D4E18);
  v92 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = v67 - v17;
  v19 = sub_1000BC4D4(&qword_1016B42C8, &qword_1013D4E20);
  v93 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = v67 - v20;
  v22 = sub_1000BC4D4(&qword_1016B42D0, &qword_1013D4E28);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = v67 - v24;
  sub_1000BC4D4(&qword_101699490, &unk_1013B3BC0);
  v99 = a3;
  v26 = v100;
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  if (v26)
  {

    v27 = 0;
    v28 = v101;
  }

  else
  {
    v74 = v18;
    v75 = v16;
    v76 = v21;
    v73 = v19;
    v77 = 0;
    v78 = v25;
    v79 = v23;
    v100 = v22;
    v29 = v101;
    v102 = *(v101 + 16);
    v30 = v102;
    v31 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v32 = *(v31 - 8);
    v33 = *(v32 + 56);
    v34 = v98;
    v71 = v31;
    v70 = v33;
    v69 = v32 + 56;
    (v33)(v98, 1, 1);
    v35 = sub_1000BC488();
    sub_1000041A4(&qword_101699498, &qword_101699490, &unk_1013B3BC0, &protocol conformance descriptor for AnyPublisher<A, B>);
    v36 = sub_100A71EC8(&qword_1016AF9C0, sub_1000BC488, &protocol conformance descriptor for OS_dispatch_queue);
    v68 = v30;
    v37 = v80;
    v72 = v35;
    v67[1] = v36;
    Publisher.receive<A>(on:options:)();
    sub_10000B3A8(v34, &unk_1016B0FE0, &unk_101391980);

    static Subscribers.Demand.unlimited.getter();
    sub_1000BC4D4(&qword_1016972F8, &unk_1013D4DE0);
    sub_1000BC4D4(&qword_101699378, &unk_1013B60B0);
    sub_1000041A4(&qword_1016994A0, &qword_101699450, &unk_10139DBC0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v67[0] = &protocol conformance descriptor for Future<A, B>;
    v38 = v99;
    sub_1000041A4(&qword_1016994A8, &qword_101699378, &unk_1013B60B0, &protocol conformance descriptor for Future<A, B>);
    v39 = v82;
    v40 = v83;
    Publisher.flatMap<A, B>(maxPublishers:_:)();

    (*(v81 + 8))(v37, v39);
    v41 = swift_allocObject();
    v42 = v86;
    *(v41 + 16) = v29;
    *(v41 + 24) = v42;

    v86 = v42;
    sub_1000BC4D4(&qword_1016B4288, &unk_1013D4DB0);
    sub_1000041A4(&qword_1016994B0, &qword_101699458, &qword_1013919C0, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
    v43 = v87;
    v44 = v85;
    Publisher.map<A>(_:)();

    (*(v84 + 8))(v40, v44);
    v45 = swift_allocObject();
    *(v45 + 16) = v29;
    *(v45 + 24) = v38;

    static Subscribers.Demand.unlimited.getter();
    sub_1000BC4D4(&qword_1016B3DC0, &qword_1013EF330);
    sub_1000041A4(&qword_1016B42D8, &qword_1016B42B0, &qword_1013D4E08, &protocol conformance descriptor for Publishers.Map<A, B>);
    sub_1000041A4(&qword_1016B3DC8, &qword_1016B3DC0, &qword_1013EF330, v67[0]);
    v46 = v89;
    Publisher.flatMap<A, B>(maxPublishers:_:)();

    (*(v88 + 8))(v43, v46);
    if (qword_101694BC8 != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
    sub_1000076D4(v47, qword_1016B3FD8);
    v48 = v68;
    v103 = v68;
    v49 = v98;
    v70(v98, 1, 1, v71);
    sub_1000041A4(&qword_1016B42E0, &qword_1016B42B8, &qword_1013D4E10, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
    v50 = v74;
    v51 = v91;
    v52 = v97;
    Publisher.timeout<A>(_:scheduler:options:customError:)();
    sub_10000B3A8(v49, &unk_1016B0FE0, &unk_101391980);

    (*(v90 + 8))(v52, v51);
    sub_1000BC4D4(&qword_1016B1CA0, &qword_1013918C0);
    sub_1000041A4(&qword_1016B42E8, &qword_1016B42C0, &qword_1013D4E18, &protocol conformance descriptor for Publishers.Timeout<A, B>);
    v53 = v76;
    v54 = v75;
    Publisher.map<A>(_:)();
    (*(v92 + 8))(v50, v54);
    sub_1000BC4D4(&qword_1016A7290, &qword_1013B60A0);
    sub_1000041A4(&qword_1016B42F0, &qword_1016B42C8, &qword_1013D4E20, &protocol conformance descriptor for Publishers.Map<A, B>);
    sub_1000041A4(&qword_1016A72A0, &qword_1016A7290, &qword_1013B60A0, &protocol conformance descriptor for Just<A>);
    v55 = v78;
    v56 = v73;
    Publisher.catch<A>(_:)();
    (*(v93 + 8))(v53, v56);
    v57 = swift_allocObject();
    v28 = v101;
    swift_weakInit();
    v58 = swift_allocObject();
    v59 = v94;
    v60 = v95;
    v58[2] = v57;
    v58[3] = v60;
    v61 = v86;
    v62 = v99;
    v58[4] = v86;
    v58[5] = v62;
    v63 = v96;
    v58[6] = v59;
    v58[7] = v63;
    sub_1000041A4(&qword_1016B42F8, &qword_1016B42D0, &qword_1013D4E28, &protocol conformance descriptor for Publishers.Catch<A, B>);
    v64 = v61;

    v65 = v100;
    v27 = Publisher<>.sink(receiveValue:)();

    (*(v79 + 8))(v55, v65);
  }

  *(v28 + 88) = v27;
}

uint64_t sub_100A69D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Transaction.capture()();
    sub_100A704D8(a1, a5, a6, a7);
  }

  return result;
}

uint64_t sub_100A69DA8(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + 16);
  *v8 = v9;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if (v9)
  {
    v5 = static os_log_type_t.debug.getter();
    if (qword_1016950C8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v11 = qword_10177C410;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  result = swift_allocObject();
  *(result + 16) = xmmword_101385D80;
  v13 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v13 != 2)
    {
      v14 = 0;
      goto LABEL_13;
    }

    v16 = *(a1 + 16);
    v15 = *(a1 + 24);
    v17 = __OFSUB__(v15, v16);
    v14 = v15 - v16;
    if (!v17)
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  else if (!v13)
  {
    v14 = BYTE6(a2);
LABEL_13:
    *(result + 56) = &type metadata for Int;
    *(result + 64) = &protocol witness table for Int;
    *(result + 32) = v14;
    os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, v11, "accessoryDidNotify data length %d", v20);

    v18 = swift_allocObject();
    swift_weakInit();
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = a1;
    v19[4] = a2;
    sub_1000BC4D4(&qword_101699378, &unk_1013B60B0);
    swift_allocObject();
    sub_100017D5C(a1, a2);
    return Future.init(_:)();
  }

  LODWORD(v14) = HIDWORD(a1) - a1;
  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v14 = v14;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_100A6A058(void (*a1)(__int128 *), uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = type metadata accessor for BinaryDecodingError();
  v85 = *(v9 - 8);
  __chkstk_darwin(v9);
  v87 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for BinaryDecoder();
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v78 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Bit();
  v84 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v72 - v17;
  __chkstk_darwin(v16);
  v83 = &v72 - v19;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v95 = 0;
    v93 = 0u;
    v94 = 0u;
    LOBYTE(v96) = 11;
    v97 = 1;
    a1(&v93);
    return sub_10000B3A8(&v93, &qword_101699380, &unk_1013918F0);
  }

  v21 = Strong;
  v74 = v12;
  v82 = v9;
  v81 = a2;
  v86 = a1;
  v22 = *(Strong + 120);
  v23 = *(Strong + 128);
  if (v23 >> 60 == 15)
  {
    v24 = 0;
  }

  else
  {
    v24 = *(Strong + 120);
  }

  v25 = 0xC000000000000000;
  if (v23 >> 60 != 15)
  {
    v25 = *(Strong + 128);
  }

  v91 = v24;
  v92 = v25;
  sub_100017D5C(a4, a5);
  sub_10002E98C(v22, v23);
  sub_100ED428C(1uLL, a4, a5, &v93);
  v26 = a5;
  v27 = v93;
  Data.append(_:)();
  sub_100016590(v27, *(&v27 + 1));
  v28 = v91;
  v29 = v92;
  v30 = v21[15];
  v31 = v21[16];
  v21[15] = v91;
  v21[16] = v29;
  sub_100017D5C(v28, v29);
  sub_100006654(v30, v31);
  v32 = static os_log_type_t.info.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  v33 = qword_10177C410;
  v77 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v34 = swift_allocObject();
  v76 = xmmword_101385D80;
  *(v34 + 16) = xmmword_101385D80;
  v35 = Data.description.getter();
  v37 = v36;
  *(v34 + 56) = &type metadata for String;
  v75 = sub_100008C00();
  *(v34 + 64) = v75;
  *(v34 + 32) = v35;
  *(v34 + 40) = v37;
  os_log(_:dso:log:_:_:)(v32, &_mh_execute_header, v33, "localReadBuffer %@", 18, 2, v34);

  v38 = sub_100017C08(a4, v26);
  v39 = v86;
  v40 = v82;
  if ((v38 & 0x100) == 0)
  {
    LOBYTE(v93) = v38;
    sub_1000198E8();
    v41 = FixedWidthInteger.bits()();
    if (*(v41 + 16))
    {
      v73 = v33;
      v42 = v84;
      v43 = v74;
      (*(v84 + 16))(v18, v41 + ((*(v42 + 80) + 32) & ~*(v42 + 80)), v74);

      v44 = v83;
      (*(v42 + 32))(v83, v18, v43);
      (*(v42 + 104))(v15, enum case for Bit.one(_:), v43);
      sub_100A71EC8(&qword_101698660, &type metadata accessor for Bit, &protocol conformance descriptor for Bit);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v46 = v42 + 8;
      v45 = *(v42 + 8);
      v45(v15, v43);
      if (v93 == LOBYTE(v88[0]))
      {
        v84 = v46;
        v47 = v78;
        BinaryDecoder.init()();
        swift_beginAccess();
        v48 = v21[21];
        v49 = v21[22];
        sub_1000035D0(v21 + 18, v48);
        v50 = sub_100394B20(v48, v49);
        swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v89 = v50;
        v90 = AssociatedConformanceWitness;
        sub_1000280DC(v88);
        BinaryDecoder.decode<A>(_:from:)();
        v65 = v21[15];
        v66 = v21[16];
        *(v21 + 15) = xmmword_10138BBF0;
        sub_100006654(v65, v66);
        v67 = v89;
        v68 = v90;
        v69 = sub_1000035D0(v88, v89);
        *(&v94 + 1) = v67;
        v95 = *(v68 + 8);
        v96 = *(v68 + 16);
        v70 = sub_1000280DC(&v93);
        (*(*(v67 - 8) + 16))(v70, v69, v67);
        v97 = 0;
        v86(&v93);

        (*(v79 + 8))(v47, v80);
        v45(v83, v74);
        sub_100016590(v91, v92);
        sub_10000B3A8(&v93, &qword_101699380, &unk_1013918F0);
        return sub_100007BAC(v88);
      }

      sub_100A71EC8(&qword_101696E30, &type metadata accessor for BinaryDecodingError, &protocol conformance descriptor for BinaryDecodingError);
      v52 = swift_allocError();
      (*(v85 + 104))(v54, enum case for BinaryDecodingError.insufficientData(_:), v40);
      swift_willThrow();
      v45(v44, v43);
      sub_100016590(v91, v92);
      v33 = v73;
      v39 = v86;
      goto LABEL_17;
    }
  }

  sub_100A71958();
  v52 = swift_allocError();
  *v53 = 1;
  swift_willThrow();
  sub_100016590(v91, v92);
LABEL_17:
  *&v93 = v52;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v55 = v87;
  if (swift_dynamicCast())
  {
    v56 = v85;
    if ((*(v85 + 88))(v55, v40) == enum case for BinaryDecodingError.insufficientData(_:))
    {

      v57 = static os_log_type_t.info.getter();
      os_log(_:dso:log:_:_:)(v57, &_mh_execute_header, v33, "insufficientData. Keep reading...", 33, 2, _swiftEmptyArrayStorage);
    }

    (*(v56 + 8))(v55, v40);
  }

  v58 = static os_log_type_t.error.getter();
  v59 = swift_allocObject();
  *(v59 + 16) = v76;
  v60 = Data.description.getter();
  v61 = v75;
  *(v59 + 56) = &type metadata for String;
  *(v59 + 64) = v61;
  *(v59 + 32) = v60;
  *(v59 + 40) = v62;
  os_log(_:dso:log:_:_:)(v58, &_mh_execute_header, v33, "Failed to decode data %@", 24, 2, v59);

  v63 = v21[15];
  v64 = v21[16];
  *(v21 + 15) = xmmword_10138BBF0;
  sub_100006654(v63, v64);
  *&v93 = v52;
  LOBYTE(v96) = 10;
  v97 = 1;
  swift_errorRetain();
  v39(&v93);

  return sub_10000B3A8(&v93, &qword_101699380, &unk_1013918F0);
}

uint64_t sub_100A6AAD4(void (*a1)(_OWORD *), uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = type metadata accessor for BinaryEncoder();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v26 = v10;
    v27 = v9;
    v14 = *(Strong + 104);
    v15 = *(Strong + 112);
    *(Strong + 104) = a1;
    *(Strong + 112) = a2;

    sub_100A5F79C(v14, v15);
    BinaryEncoder.init()();
    sub_1000035D0(a4, a4[3]);
    v16 = BinaryEncoder.encode<A>(_:)();
    v19 = v18;
    v20 = v16;
    __chkstk_darwin(v16);
    *(&v25 - 2) = v21;
    v22 = v21;
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();

    result = *&v28[0] - 1;
    if (__OFSUB__(*&v28[0], 1))
    {
      __break(1u);
    }

    else
    {
      v23 = Data.chunked(into:)();
      v24 = sub_1001D97CC(v23);

      swift_beginAccess();
      sub_100398324(v24);
      swift_endAccess();
      sub_100A6AEB8(a5);
      sub_100016590(v20, v19);

      return (*(v26 + 8))(v12, v27);
    }
  }

  else
  {
    v29 = 0;
    memset(v28, 0, sizeof(v28));
    v30 = 267;
    a1(v28);
    return sub_10000B3A8(v28, &qword_1016B1CA0, &qword_1013918C0);
  }

  return result;
}

void sub_100A6AEB8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  __chkstk_darwin(v4 - 8);
  v6 = &v39 - v5;
  v7 = sub_1000BC4D4(&qword_1016993E8, &unk_1013D4DF0);
  v42 = *(v7 - 8);
  v43 = v7;
  __chkstk_darwin(v7);
  v41 = &v39 - v8;
  v9 = sub_1000BC4D4(&qword_1016A7280, &unk_1013B6080);
  v45 = *(v9 - 8);
  v46 = v9;
  __chkstk_darwin(v9);
  v44 = &v39 - v10;
  v11 = sub_1000BC4D4(&qword_1016A7288, &qword_1013D4E00);
  v48 = *(v11 - 8);
  __chkstk_darwin(v11);
  v47 = &v39 - v12;
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = v2[2];
  *v16 = v17;
  (*(v14 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v13);
  v18 = v17;
  v19 = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v16, v13);
  if ((v19 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  swift_beginAccess();
  v20 = v2[17];
  if (v20[2])
  {
    v40 = v11;
    v49 = a1;
    v16 = v20[4];
    v19 = v20[5];
    sub_100017D5C(v16, v19);
    v13 = static os_log_type_t.debug.getter();
    if (qword_1016950C8 == -1)
    {
LABEL_4:
      v21 = qword_10177C410;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_101385D80;
      sub_100017D5C(v16, v19);
      v23 = Data.description.getter();
      v25 = v24;
      sub_100016590(v16, v19);
      *(v22 + 56) = &type metadata for String;
      *(v22 + 64) = sub_100008C00();
      *(v22 + 32) = v23;
      *(v22 + 40) = v25;
      os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, v21, "processQueuedUpdates: writing %@", 32, 2, v22);

      v39 = sub_100A59B98(v16, v19);
      v50[0] = v39;
      v52 = v18;
      v26 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
      (*(*(v26 - 8) + 56))(v6, 1, 1, v26);
      v27 = v18;
      sub_1000BC4D4(&qword_1016C4520, &unk_1013B6090);
      sub_1000BC488();
      sub_1000041A4(&qword_101699348, &qword_1016C4520, &unk_1013B6090, &protocol conformance descriptor for AnyPublisher<A, B>);
      sub_100A71EC8(&qword_1016AF9C0, sub_1000BC488, &protocol conformance descriptor for OS_dispatch_queue);
      v28 = v41;
      Publisher.receive<A>(on:options:)();
      sub_10000B3A8(v6, &unk_1016B0FE0, &unk_101391980);

      sub_1000BC4D4(&qword_1016B1CA0, &qword_1013918C0);
      sub_1000041A4(&qword_101699410, &qword_1016993E8, &unk_1013D4DF0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
      v29 = v43;
      v30 = v44;
      Publisher.map<A>(_:)();
      (*(v42 + 8))(v28, v29);
      sub_1000BC4D4(&qword_1016A7290, &qword_1013B60A0);
      sub_1000041A4(&qword_1016A7298, &qword_1016A7280, &unk_1013B6080, &protocol conformance descriptor for Publishers.Map<A, B>);
      sub_1000041A4(&qword_1016A72A0, &qword_1016A7290, &qword_1013B60A0, &protocol conformance descriptor for Just<A>);
      v31 = v46;
      v32 = v47;
      Publisher.catch<A>(_:)();
      (*(v45 + 8))(v30, v31);
      v33 = swift_allocObject();
      swift_weakInit();
      v34 = swift_allocObject();
      v35 = v49;
      *(v34 + 16) = v33;
      *(v34 + 24) = v35;
      sub_1000041A4(&qword_1016A72A8, &qword_1016A7288, &qword_1013D4E00, &protocol conformance descriptor for Publishers.Catch<A, B>);

      v36 = v40;
      Publisher<>.sink(receiveValue:)();

      (*(v48 + 8))(v32, v36);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();

      sub_100016590(v16, v19);
      return;
    }

LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  v37 = v2[13];
  if (v37)
  {
    v38 = v2[14];
    v51 = 0;

    v37(v50);
    sub_100A5F79C(v37, v38);
    sub_10000B3A8(v50, &qword_1016B1CA0, &qword_1013918C0);
  }
}

void sub_100A6B6C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1000D2A70(a1, &v26, &qword_1016B1CA0, &qword_1013918C0);
    if (v28)
    {
      v24 = v26;
      v25[0] = *v27;
      *(v25 + 9) = *&v27[9];
      v7 = static os_log_type_t.error.getter();
      if (qword_1016950C8 != -1)
      {
        swift_once();
      }

      v8 = qword_10177C410;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_101385D80;
      v10 = sub_1013181BC();
      v12 = v11;
      *(v9 + 56) = &type metadata for String;
      *(v9 + 64) = sub_100008C00();
      *(v9 + 32) = v10;
      *(v9 + 40) = v12;
      os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, v8, "writeFuture error: %@", 21, 2, v9);

      v13 = v6[13];
      if (v13)
      {
        v14 = v6[14];
        v20 = 5;
        v21 = 0u;
        v22 = 0u;
        v23 = 267;

        v13(&v20);
        sub_100A5F79C(v13, v14);

        sub_10000B3A8(&v20, &qword_1016B1CA0, &qword_1013918C0);
      }

      else
      {
      }

      sub_100101B04(&v24);
    }

    else
    {
      v15 = static os_log_type_t.debug.getter();
      if (qword_1016950C8 != -1)
      {
        v19 = v15;
        swift_once();
        v15 = v19;
      }

      os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, qword_10177C410, "writeFuture success", 19, 2, _swiftEmptyArrayStorage);
      swift_beginAccess();
      v16 = v6[17];
      if (v16[2])
      {
        v17 = v16[4];
        v18 = v16[5];
        sub_100017D5C(v17, v18);
        sub_100A077EC(0, 1);
        swift_endAccess();
        sub_100016590(v17, v18);
        sub_100A6AEB8(a3);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_100A6B984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v3 + 16);
  *v9 = v10;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  sub_1001011C0(a1, &v76);
  sub_1000BC4D4(&qword_1016972F8, &unk_1013D4DE0);
  sub_1000BC4D4(&qword_1016B4290, &unk_1013D4DC0);
  if (!swift_dynamicCast())
  {
    memset(v71, 0, 40);
    sub_10000B3A8(v71, &qword_1016B4298, &qword_1013D4DD0);
    v3 = static os_log_type_t.error.getter();
    if (qword_1016950C8 == -1)
    {
LABEL_9:
      v25 = qword_10177C410;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_101385D80;
      sub_1001011C0(a1, &v76);
      v27 = String.init<A>(describing:)();
      v29 = v28;
      *(v26 + 56) = &type metadata for String;
      *(v26 + 64) = sub_100008C00();
      *(v26 + 32) = v27;
      *(v26 + 40) = v29;
      os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v25, "Invalid command from payload %@", 31, 2, v26);

      *a2 = 7;
      *(a2 + 8) = 0u;
      *(a2 + 24) = 0u;
      *(a2 + 40) = 267;
      return result;
    }

LABEL_27:
    swift_once();
    goto LABEL_9;
  }

  sub_10000A748(v71, v78);
  v12 = v79;
  v13 = v80;
  sub_1000035D0(v78, v79);
  (*(v13 + 168))(v75, v12, v13);
  sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
  if (swift_dynamicCast())
  {
    v69 = v72[0];
    v70 = v72[1];
    v15 = v72[2];
    v14 = v73;
    v16 = static os_log_type_t.default.getter();
    if (qword_1016950C8 != -1)
    {
      v61 = v16;
      swift_once();
      v16 = v61;
    }

    v17 = qword_10177C410;
    os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, qword_10177C410, "Received pairing data.", 22, 2, _swiftEmptyArrayStorage);
    v18 = v79;
    v19 = v80;
    sub_1000035D0(v78, v79);
    (*(v19 + 168))(&v76, v18, v19);
    if (swift_dynamicCast())
    {
      v67 = v15;
      v68 = v14;
      v20 = *&v71[8];
      v65 = *v71;
      v21 = *&v71[16];
      v22 = *(v3 + 72);
      *(v22 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState) = 3;
      v23 = OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo;
      v24 = *(v22 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo);

      sub_100017D5C(v21, *(&v21 + 1));
      v66 = v21;
      sub_10049659C(v21, *(&v21 + 1), &v76);
      v53 = *(v24 + 56);
      v54 = *(v24 + 64);
      *(v24 + 56) = v76;
      sub_100006654(v53, v54);

      v55 = *(v22 + v23);

      v56 = v65;
      sub_100017D5C(v65, v20);
      sub_1004A4714(v56, v20, &v76);
      v57 = *(v55 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1);
      v58 = *(v55 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1 + 8);
      *(v55 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1) = v76;
      sub_100006654(v57, v58);

      sub_100A6C350(&v76);
      if (v77[25])
      {
        *v71 = v76;
        *&v71[16] = *v77;
        *&v71[25] = *&v77[9];
        v59 = static os_log_type_t.error.getter();
        os_log(_:dso:log:_:_:)(v59, &_mh_execute_header, v17, "Unable to generate finalizeCommand payload.", 43, 2, _swiftEmptyArrayStorage);
        sub_100016590(v69, v70);
        sub_100016590(v67, v68);
        sub_100016590(v56, v20);
        sub_100016590(v66, *(&v66 + 1));
        v60 = *&v71[16];
        *a2 = *v71;
        *(a2 + 16) = v60;
        *(a2 + 25) = *&v71[25];
        *(a2 + 41) = 1;
      }

      else
      {
        sub_100016590(v69, v70);
        sub_100016590(v67, v68);
        sub_100016590(v56, v20);
        sub_100016590(v66, *(&v66 + 1));
        sub_10000A748(&v76, a2);
        *(a2 + 41) = 0;
      }

      goto LABEL_25;
    }

    v34 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v34, &_mh_execute_header, v17, "Invalid sendPairingData payload.", 32, 2, _swiftEmptyArrayStorage);
    sub_100016590(v69, v70);
    sub_100016590(v15, v14);
    v35 = 10;
    goto LABEL_21;
  }

  if (swift_dynamicCast())
  {
    v69 = *(&v76 + 1);
    v70 = v76;
    *&v66 = *&v77[8];
    *(&v66 + 1) = *v77;
    v31 = *&v77[16];
    v32 = *&v77[24];
    v33 = static os_log_type_t.default.getter();
    if (qword_1016950C8 != -1)
    {
      v62 = v33;
      swift_once();
      v33 = v62;
    }

    os_log(_:dso:log:_:_:)(v33, &_mh_execute_header, qword_10177C410, "Received pairing status.", 24, 2, _swiftEmptyArrayStorage);
  }

  else
  {
    if (!swift_dynamicCast())
    {
      v35 = 7;
LABEL_21:
      *a2 = v35;
      *(a2 + 8) = 0u;
      *(a2 + 24) = 0u;
      *(a2 + 40) = 267;
      goto LABEL_25;
    }

    v69 = *(&v76 + 1);
    v70 = v76;
    *&v66 = *&v77[8];
    *(&v66 + 1) = *v77;
    v31 = *&v77[16];
    v32 = *&v77[24];
    v36 = static os_log_type_t.default.getter();
    if (qword_1016950C8 != -1)
    {
      v63 = v36;
      swift_once();
      v36 = v63;
    }

    os_log(_:dso:log:_:_:)(v36, &_mh_execute_header, qword_10177C410, "Received pairing status v2.", 27, 2, _swiftEmptyArrayStorage);
  }

  v37 = *(v3 + 72);
  *(v37 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState) = 5;
  v38 = OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo;
  v39 = *(v37 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo);

  sub_100017D5C(v31, v32);
  v68 = v31;
  sub_10049669C(v31, v32, v71);
  v67 = v32;
  v40 = *(v39 + 72);
  v41 = *(v39 + 80);
  *(v39 + 72) = *v71;
  sub_100006654(v40, v41);

  v42 = *(v37 + v38);
  swift_beginAccess();
  sub_10001F280(v3 + 144, v72);
  v43 = v73;
  v44 = v74;
  sub_1000035D0(v72, v73);
  (*(v44 + 72))(v71, v70, v69, v43, v44);

  sub_100007BAC(v72);
  v45 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC3;
  swift_beginAccess();
  sub_10002311C(v71, v42 + v45, &qword_101697320, &qword_10138BE90);
  swift_endAccess();

  v46 = (*(v37 + v38) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_status);
  v47 = *v46;
  v48 = v46[1];
  v49 = v66;
  *v46 = *(&v66 + 1);
  v46[1] = v49;

  sub_100017D5C(*(&v49 + 1), v49);
  sub_100006654(v47, v48);

  sub_10001F280(v3 + 144, v71);
  v50 = *&v71[24];
  v51 = *&v71[32];
  sub_1000035D0(v71, *&v71[24]);
  v52 = *(v51 + 56);
  *(a2 + 24) = swift_getAssociatedTypeWitness();
  *(a2 + 32) = swift_getAssociatedConformanceWitness();
  sub_1000280DC(a2);
  v52(v50, v51);
  sub_100016590(v70, v69);
  sub_100016590(*(&v49 + 1), v49);
  sub_100016590(v68, v67);
  *(a2 + 41) = 0;
  sub_100007BAC(v71);
LABEL_25:
  sub_100007BAC(v75);
  return sub_100007BAC(v78);
}

uint64_t sub_100A6C350@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v90 - v4;
  v6 = type metadata accessor for AccessoryPairingLockCheckResponse(0);
  __chkstk_darwin(v6);
  v8 = (&v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v103 = sub_1000BC4D4(&qword_10169F848, &qword_1013A17B0);
  __chkstk_darwin(v103);
  v104 = (&v90 - v9);
  v10 = type metadata accessor for HashAlgorithm();
  v106 = *(v10 - 8);
  v107 = v10;
  __chkstk_darwin(v10);
  v105 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = v1[2];
  *v15 = v16;
  (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  v18 = (*(v13 + 8))(v15, v12);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  v19 = (*(v1[9] + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1);
  v20 = v19[1];
  if (v20 >> 60 == 15)
  {
    v18 = static os_log_type_t.error.getter();
    if (qword_1016950C8 == -1)
    {
LABEL_4:
      result = os_log(_:dso:log:_:_:)(v18, &_mh_execute_header, qword_10177C410, "Missing C1 from accessory!", 26, 2, _swiftEmptyArrayStorage);
      *a1 = 0xD00000000000001ALL;
      *(a1 + 8) = 0x800000010134B370;
      *(a1 + 40) = 265;
      return result;
    }

LABEL_24:
    v88 = v18;
    swift_once();
    v18 = v88;
    goto LABEL_4;
  }

  v100 = v1[9];
  v101 = OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo;
  v97 = v6;
  v98 = v5;
  v99 = v8;
  v102 = a1;
  v22 = *v19;
  swift_beginAccess();
  sub_10001F280((v1 + 18), &v116);
  v23 = *(&v117 + 1);
  v24 = v118;
  sub_1000035D0(&v116, *(&v117 + 1));
  v25 = *(v24 + 64);
  sub_10002E98C(v22, v20);
  sub_100017D5C(v22, v20);
  v25(&v126, v128 + 8, v22, v20, v23, v24);
  v96 = v1;
  sub_100006654(v22, v20);
  sub_100007BAC(&v116);
  v28 = v22;
  if (*(&v127 + 1))
  {
    v95 = v20;
    sub_10000A748(&v126, v112);
    sub_10000A748((v128 + 8), v111);
    v29 = v100;
    v30 = *(v100 + v101);
    sub_10001F280(v112, &v126);
    v31 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC2;
    swift_beginAccess();

    sub_10002311C(&v126, v30 + v31, &qword_101697378, &unk_101391940);
    swift_endAccess();

    sub_10001F280(v111, &v126);
    v32 = OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingOwnerContext;
    swift_beginAccess();
    sub_10002311C(&v126, v29 + v32, &qword_101697380, &unk_10138BEF0);
    swift_endAccess();
    v33 = static os_log_type_t.debug.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    v34 = qword_10177C410;
    v93 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v35 = swift_allocObject();
    v92 = xmmword_101385D80;
    *(v35 + 16) = xmmword_101385D80;
    v37 = v113;
    v36 = v114;
    sub_1000035D0(v112, v113);
    v38 = (*(*(*(v36 + 8) + 8) + 40))(v37);
    v40 = v39;
    v41 = Data.hexString.getter();
    v43 = v42;
    sub_100016590(v38, v40);
    *(v35 + 56) = &type metadata for String;
    v91 = sub_100008C00();
    *(v35 + 64) = v91;
    *(v35 + 32) = v41;
    *(v35 + 40) = v43;
    v94 = v34;
    os_log(_:dso:log:_:_:)(v33, &_mh_execute_header, v34, "C2: %@.", 7, 2, v35);

    v45 = v113;
    v44 = v114;
    sub_1000035D0(v112, v113);
    v46 = (*(*(*(v44 + 8) + 8) + 40))(v45);
    v48 = v47;
    v50 = v105;
    v49 = v106;
    v51 = v107;
    (*(v106 + 104))(v105, enum case for HashAlgorithm.sha256(_:), v107);
    v52 = Data.hash(algorithm:)();
    v54 = v53;
    sub_100016590(v46, v48);
    (*(v49 + 8))(v50, v51);
    v55 = v101;
    v56 = v96[21];
    v57 = v96[22];
    sub_1000035D0(v96 + 18, v56);

    sub_100394B3C(v56, v57);
    sub_10024DAE0(v52, v54, v115);

    v122 = v115[6];
    v123 = v115[7];
    v124 = v115[8];
    v125 = v115[9];
    v118 = v115[2];
    v119 = v115[3];
    v120 = v115[4];
    v121 = v115[5];
    v116 = v115[0];
    v117 = v115[1];
    if (sub_1000424A8(&v116) == 1)
    {
      v58 = static os_log_type_t.error.getter();
      os_log(_:dso:log:_:_:)(v58, &_mh_execute_header, v94, "Unable to create pairing check data.", 36, 2, _swiftEmptyArrayStorage);
      sub_100016590(v52, v54);
      sub_100006654(v28, v95);
      sub_100007BAC(v111);
      v59 = v102;
      *v102 = 0xD00000000000001ALL;
      v59[1] = 0x800000010134B3C0;
      *(v59 + 20) = 265;
      return sub_100007BAC(v112);
    }

    v106 = v52;
    v107 = v54;
    v128[4] = v122;
    v128[5] = v123;
    v128[6] = v124;
    v128[7] = v125;
    v128[0] = v118;
    v128[1] = v119;
    v128[2] = v120;
    v128[3] = v121;
    v126 = v116;
    v127 = v117;
    v60 = v104;
    sub_100A6D44C(&v126, v104);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v62 = v102;
    if (EnumCaseMultiPayload == 1)
    {
      v63 = *v60;
      v64 = static os_log_type_t.error.getter();
      v65 = swift_allocObject();
      *(v65 + 16) = v92;
      *&v110[0] = v63;
      type metadata accessor for SPPairingSessionError(0);
      v66 = v63;
      v67 = String.init<A>(describing:)();
      v68 = v91;
      *(v65 + 56) = &type metadata for String;
      *(v65 + 64) = v68;
      *(v65 + 32) = v67;
      *(v65 + 40) = v69;
      os_log(_:dso:log:_:_:)(v64, &_mh_execute_header, v94, "Pairing lock check failed. Error %@", 35, 2, v65);

      *&v110[0] = v66;
      sub_100A71EC8(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
      _BridgedStoredNSError.code.getter();
      sub_10000B3A8(v115, &qword_1016B42A0, &qword_1013D4DD8);
      sub_100016590(v106, v107);
      sub_100006654(v28, v95);
      sub_100007BAC(v111);
      if (v108 == 18)
      {

        *v62 = 9;
        *(v62 + 8) = 0u;
        *(v62 + 24) = 0u;
        v70 = 267;
      }

      else
      {
        *v62 = v66;
        v70 = 256;
      }
    }

    else
    {
      v105 = v28;
      v71 = v29;
      v72 = v99;
      sub_10002ACAC(v60, v99, type metadata accessor for AccessoryPairingLockCheckResponse);
      v73 = static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)(v73, &_mh_execute_header, v94, "Received Seed, S2, and C3 from server.", 38, 2, _swiftEmptyArrayStorage);
      v74 = *(v71 + v55);
      v75 = *(v97 + 32);
      v76 = type metadata accessor for UUID();
      v77 = *(v76 - 8);
      v78 = v72 + v75;
      v79 = v98;
      (*(v77 + 16))(v98, v78, v76);
      (*(v77 + 56))(v79, 0, 1, v76);
      v80 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_fmnaId;
      swift_beginAccess();

      sub_10002311C(v79, v74 + v80, &qword_1016980D0, &unk_10138F3B0);
      swift_endAccess();

      v81 = *(v71 + v55);
      v82 = v72[7];
      *(v81 + 120) = v72[6];
      *(v81 + 128) = v82;

      v84 = v113;
      v83 = v114;
      sub_1000035D0(v112, v113);
      v85 = (*(*(*(v83 + 8) + 8) + 40))(v84);
      v87 = v86;
      sub_100A6D064(v72, v85, v86, &v108);
      sub_100016590(v85, v87);
      if (v109)
      {
        sub_10000B3A8(v115, &qword_1016B42A0, &qword_1013D4DD8);
        sub_100016590(v106, v107);
        sub_100006654(v105, v95);
        sub_100A718E4(v72, type metadata accessor for AccessoryPairingLockCheckResponse);
        sub_100007BAC(v111);
        sub_10000A748(&v108, v110);
        sub_10000A748(v110, v62);
        *(v62 + 41) = 0;
        return sub_100007BAC(v112);
      }

      sub_10000B3A8(&v108, &qword_1016B4298, &qword_1013D4DD0);
      sub_10000B3A8(v115, &qword_1016B42A0, &qword_1013D4DD8);
      sub_100016590(v106, v107);
      sub_100006654(v105, v95);
      sub_100A718E4(v72, type metadata accessor for AccessoryPairingLockCheckResponse);
      sub_100007BAC(v111);
      *v62 = 0xD000000000000019;
      *(v62 + 8) = 0x800000010134B3E0;
      v70 = 265;
    }

    *(v62 + 40) = v70;
    return sub_100007BAC(v112);
  }

  sub_10000B3A8(&v126, &qword_101697370, &unk_10138BEE0);
  v26 = static os_log_type_t.error.getter();
  if (qword_1016950C8 != -1)
  {
    v89 = v26;
    swift_once();
    v26 = v89;
  }

  os_log(_:dso:log:_:_:)(v26, &_mh_execute_header, qword_10177C410, "collaborativeKeyC2 generation error.", 36, 2, _swiftEmptyArrayStorage);
  result = sub_100006654(v22, v20);
  v27 = v102;
  *v102 = 0xD000000000000026;
  v27[1] = 0x800000010134B390;
  *(v27 + 20) = 265;
  return result;
}

uint64_t sub_100A6D064@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = type metadata accessor for String.Encoding();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AccessoryPairingLockCheckResponse(0);
  static String.Encoding.utf8.getter();
  v14 = String.data(using:allowLossyConversion:)();
  v16 = v15;
  result = (*(v11 + 8))(v13, v10);
  if (v16 >> 60 != 15)
  {
    v62 = v14;
    v63 = v16;
    v19 = a1[2];
    v20 = a1[3];
    v60 = v19;
    v61 = v20;
    v21 = v16 >> 62;
    if ((v16 >> 62) > 1)
    {
      if (v21 != 2)
      {
        v22 = 0;
        goto LABEL_15;
      }

      v24 = *(v14 + 16);
      v23 = *(v14 + 24);
      v25 = __OFSUB__(v23, v24);
      v22 = v23 - v24;
      if (!v25)
      {
LABEL_15:
        v26 = 60 - v22;
        if (__OFSUB__(60, v22))
        {
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        v54 = a2;
        v55 = a3;
        sub_100017D5C(v19, v20);
        v56 = sub_100845C88(v26);
        v57 = v27;
        sub_100776394(&v56, 0);
        v29 = v56;
        v28 = v57;
        Data.append(_:)();
        result = sub_100016590(v29, v28);
        v30 = v20 >> 62;
        if ((v20 >> 62) <= 1)
        {
          if (!v30)
          {
            v31 = BYTE6(v20);
            goto LABEL_26;
          }

LABEL_23:
          LODWORD(v31) = HIDWORD(v19) - v19;
          if (__OFSUB__(HIDWORD(v19), v19))
          {
LABEL_31:
            __break(1u);
            return result;
          }

          v31 = v31;
          goto LABEL_26;
        }

        if (v30 == 2)
        {
          v33 = *(v19 + 16);
          v32 = *(v19 + 24);
          v25 = __OFSUB__(v32, v33);
          v31 = v32 - v33;
          if (v25)
          {
            __break(1u);
            goto LABEL_23;
          }
        }

        else
        {
          v31 = 0;
        }

LABEL_26:
        result = 100 - v31;
        if (!__OFSUB__(100, v31))
        {
          v56 = sub_100845C88(result);
          v57 = v34;
          sub_100776394(&v56, 0);
          v35 = v56;
          v36 = v57;
          Data.append(_:)();
          sub_100016590(v35, v36);
          swift_beginAccess();
          sub_10001F280(v5 + 144, &v56);
          v37 = v58;
          v38 = v59;
          v39 = sub_1000035D0(&v56, v58);
          v40 = a1[5];
          v52 = a1[4];
          v53 = v39;
          v41 = a1[1];
          v50 = *a1;
          v51 = v40;
          v49 = v41;
          v42 = v62;
          v43 = v63;
          v44 = v60;
          v45 = v61;
          v46 = *(v38 + 48);
          *(a4 + 24) = swift_getAssociatedTypeWitness();
          *(a4 + 32) = swift_getAssociatedConformanceWitness();
          sub_1000280DC(a4);
          v46(v54, v55, v52, v51, v50, v49, v42, v43, v44, v45, v37, v38);
          sub_100007BAC(&v56);
          sub_100016590(v44, v45);
          return sub_100016590(v42, v43);
        }

        goto LABEL_29;
      }

      __break(1u);
    }

    else if (!v21)
    {
      v22 = BYTE6(v16);
      goto LABEL_15;
    }

    LODWORD(v22) = HIDWORD(v14) - v14;
    if (__OFSUB__(HIDWORD(v14), v14))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v22 = v22;
    goto LABEL_15;
  }

  v18 = static os_log_type_t.error.getter();
  if (qword_1016950C8 != -1)
  {
    v47 = v18;
    swift_once();
    v18 = v47;
  }

  result = os_log(_:dso:log:_:_:)(v18, &_mh_execute_header, qword_10177C410, "Unable to decode masked apple ID", 32, 2, _swiftEmptyArrayStorage);
  *(a4 + 32) = 0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  return result;
}

uint64_t sub_100A6D44C@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v3 + 16);
  *v9 = v10;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v9, v6);
  if (v10)
  {
    sub_1000BC4D4(&qword_10169F848, &qword_1013A17B0);
    v13 = swift_allocBox();
    v15 = v14;
    type metadata accessor for SPPairingSessionError(0);
    v19[3] = 1;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100A71EC8(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
    _BridgedStoredNSError.init(_:userInfo:)();
    *v15 = v19[0];
    swift_storeEnumTagMultiPayload();
    v16 = dispatch_group_create();
    dispatch_group_enter(v16);
    v17 = swift_allocObject();
    *(v17 + 16) = v13;
    *(v17 + 24) = v16;

    v18 = v16;
    sub_100414340(a1, sub_100A718DC, v17);

    OS_dispatch_group.wait()();

    swift_beginAccess();
    sub_1000D2A70(v15, a2, &qword_10169F848, &qword_1013A17B0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100A6D6C8(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = swift_projectBox();
  swift_beginAccess();
  sub_1001DA61C(a1, v5, &qword_10169F848, &qword_1013A17B0);
  dispatch_group_leave(a3);
}

uint64_t sub_100A6D73C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v24[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + 16);
  *v8 = v9;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1000D2A70(a1, &v27, &qword_1016B4288, &unk_1013D4DB0);
  if ((v29 & 1) == 0)
  {
    sub_10000A748(&v27, &v25);
    a1 = static os_log_type_t.default.getter();
    if (qword_1016950C8 == -1)
    {
LABEL_5:
      v14 = qword_10177C410;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_101385D80;
      sub_10001F280(&v25, &v23);
      sub_1000BC4D4(&qword_1016B4290, &unk_1013D4DC0);
      v16 = String.init<A>(describing:)();
      v18 = v17;
      *(v15 + 56) = &type metadata for String;
      *(v15 + 64) = sub_100008C00();
      *(v15 + 32) = v16;
      *(v15 + 40) = v18;
      os_log(_:dso:log:_:_:)(a1, &_mh_execute_header, v14, "Sending %@.", 11, 2, v15);

      v19 = *&v26[8];
      v20 = *&v26[16];
      v21 = sub_1000035D0(&v25, *&v26[8]);
      v13 = sub_100A70060(v21, a2, v2, v19, v20);
      sub_100007BAC(&v25);
      return v13;
    }

LABEL_8:
    swift_once();
    goto LABEL_5;
  }

  v25 = v27;
  *v26 = *v28;
  *&v26[9] = *&v28[9];
  sub_100101AA8(&v25, &v23);
  v11 = swift_allocObject();
  v12 = v24[0];
  v11[1] = v23;
  v11[2] = v12;
  *(v11 + 41) = *(v24 + 9);
  sub_1000BC4D4(&qword_1016B3DC0, &qword_1013EF330);
  swift_allocObject();
  v13 = Future.init(_:)();
  sub_100101B04(&v25);
  return v13;
}

uint64_t sub_100A6DA3C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v3 + 16);
  *v9 = v10;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  v12 = (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v13 = *(v3 + 72);
  v14 = OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo;

  v15 = [a1 productInformation];
  if (v15 && (v16 = v15, v17 = [v15 encryptionKeyE1], v16, v17))
  {
    v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0xF000000000000000;
  }

  v21 = sub_10024D46C(v18, v20);
  v23 = v22;
  sub_100006654(v18, v20);

  if (v23 >> 60 == 15)
  {
    v12 = static os_log_type_t.error.getter();
    if (qword_1016950C8 == -1)
    {
LABEL_8:
      result = os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, qword_10177C410, "Unable to generate E1 blob.", 27, 2, _swiftEmptyArrayStorage);
      a2[4] = 0;
      *a2 = 0u;
      *(a2 + 1) = 0u;
      *(a2 + 20) = 267;
      return result;
    }

LABEL_15:
    v57 = v12;
    swift_once();
    v12 = v57;
    goto LABEL_8;
  }

  v62 = v21;
  v63 = a2;
  v25 = *(v13 + v14);

  v26 = [a1 discoveredMetadata];
  v27 = [v26 firmwareVersion];

  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  *(v25 + 88) = v28;
  *(v25 + 96) = v30;

  v31 = [a1 discoveredMetadata];
  v32 = [v31 productData];

  v33 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  v36 = sub_100314594(v33, v35);
  if (v37 >> 60 == 15)
  {
    v38 = static os_log_type_t.error.getter();
    v39 = v62;
    if (qword_1016950C8 != -1)
    {
      v58 = v38;
      swift_once();
      v38 = v58;
    }

    os_log(_:dso:log:_:_:)(v38, &_mh_execute_header, qword_10177C410, "Invalid product data!", 21, 2, _swiftEmptyArrayStorage);
    result = sub_100006654(v39, v23);
    v40 = v63;
    *v63 = 14;
    *(v40 + 1) = 0u;
    *(v40 + 3) = 0u;
    *(v40 + 20) = 267;
  }

  else
  {
    v41 = *(v13 + v14);
    v42 = *(v41 + 104);
    v43 = *(v41 + 112);
    *(v41 + 104) = v36;
    *(v41 + 112) = v37;

    sub_100006654(v42, v43);

    v44 = *(v13 + v14);
    v45 = *(v44 + 16);
    v60 = *(v44 + 24);
    v61 = v45;
    v46 = sub_100D596CC(v45, v60, v62, v23);
    v48 = v47;
    v50 = v49;
    v52 = v51;
    swift_beginAccess();
    sub_10001F280(v3 + 144, v64);
    v53 = v65;
    v54 = v66;
    sub_1000035D0(v64, v65);
    v55 = *(v54 + 40);
    v67[3] = swift_getAssociatedTypeWitness();
    v67[4] = swift_getAssociatedConformanceWitness();
    sub_1000280DC(v67);
    v55(v46, v48, v50, v52, v53, v54);
    sub_100017D5C(v61, v60);
    sub_100016590(v46, v48);
    sub_100016590(v50, v52);
    sub_100007BAC(v64);
    v56 = v63;
    sub_10001F280(v67, v63);
    *(v56 + 41) = 0;
    return sub_100007BAC(v67);
  }

  return result;
}

uint64_t sub_100A6DF58@<X0>(void *a1@<X0>, __int128 *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  v151 = a3;
  v141 = a2;
  v165 = a1;
  v159 = a4;
  v6 = type metadata accessor for AccessoryMetadataRecord(0);
  __chkstk_darwin(v6 - 8);
  v144 = &v139 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&unk_1016B15A0, &qword_1013A0900);
  __chkstk_darwin(v8);
  v154 = &v139 - v9;
  v153 = type metadata accessor for PairingConfig(0);
  __chkstk_darwin(v153);
  v155 = (&v139 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  v12 = __chkstk_darwin(v11 - 8);
  v152 = &v139 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v162 = &v139 - v14;
  v15 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v15 - 8);
  v158 = &v139 - v16;
  v163 = type metadata accessor for OwnedBeaconRecord(0);
  v157 = *(v163 - 8);
  v17 = __chkstk_darwin(v163);
  v19 = &v139 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = (&v139 - v20);
  v146 = type metadata accessor for StableIdentifier(0);
  __chkstk_darwin(v146);
  v147 = &v139 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v24 = __chkstk_darwin(v23 - 8);
  v26 = &v139 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v139 - v27;
  v29 = type metadata accessor for UUID();
  v30 = *(v29 - 8);
  v166 = v29;
  v167 = v30;
  v31 = __chkstk_darwin(v29);
  v143 = &v139 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v160 = &v139 - v34;
  __chkstk_darwin(v33);
  v156 = &v139 - v35;
  v36 = type metadata accessor for DispatchPredicate();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = (&v139 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = v5[2];
  *v39 = v40;
  (*(v37 + 104))(v39, enum case for DispatchPredicate.onQueue(_:), v36);
  v41 = v40;
  LOBYTE(v40) = _dispatchPreconditionTest(_:)();
  v42 = (*(v37 + 8))(v39, v36);
  if ((v40 & 1) == 0)
  {
    __break(1u);
    goto LABEL_44;
  }

  v142 = v19;
  v164 = v8;
  v150 = v5[5];
  v43 = v5[9];
  v44 = OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo;
  v45 = *(v43 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo);
  v46 = *(v45 + 128);
  v47 = v5;
  v48 = v166;
  v161 = v21;
  if (v46)
  {
    v49 = *(v45 + 120);
    v50 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_fmnaId;
    swift_beginAccess();
    sub_1000D2A70(v45 + v50, v28, &qword_1016980D0, &unk_10138F3B0);
    v51 = v167;
    if ((*(v167 + 48))(v28, 1, v48) == 1)
    {
      sub_10000B3A8(v28, &qword_1016980D0, &unk_10138F3B0);
LABEL_12:
      v21 = v161;
      goto LABEL_13;
    }

    v52 = v156;
    (*(v51 + 32))(v156, v28, v48);
    v53 = HIBYTE(v46) & 0xF;
    if ((v46 & 0x2000000000000000) == 0)
    {
      v53 = v49 & 0xFFFFFFFFFFFFLL;
    }

    if (!v53)
    {
      (*(v51 + 8))(v52, v48);
      goto LABEL_12;
    }

    v149 = v26;
    v54 = v48;
    v140 = v47;
    v55 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
    v56 = v147;
    v57 = &v147[v55[12]];
    v58 = v52;
    v59 = &v147[v55[16]];
    v60 = v51;
    v61 = &v147[v55[20]];
    v148 = v55[24];
    v62 = &v147[v55[28]];
    (*(v60 + 16))(v147, v58, v54);
    *v57 = 0;
    *(v57 + 1) = 0;
    *v59 = 0;
    *(v59 + 1) = 0;
    *v61 = v49;
    *(v61 + 1) = v46;
    *&v56[v148] = 256;
    *v62 = 0;
    *(v62 + 1) = 0;
    swift_storeEnumTagMultiPayload();

    v63 = static os_log_type_t.default.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    v64 = qword_10177C410;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_101385D80;
    v66 = sub_1010DA578();
    v68 = v67;
    *(v65 + 56) = &type metadata for String;
    *(v65 + 64) = sub_100008C00();
    *(v65 + 32) = v66;
    *(v65 + 40) = v68;
    os_log(_:dso:log:_:_:)(v63, &_mh_execute_header, v64, "Removing record matching StableIdentifier %@.", 45, 2, v65);

    v69 = dispatch_group_create();
    dispatch_group_enter(v69);
    v70 = v56;
    v47 = v140;
    v71 = v140[3];
    v72 = v69;
    sub_1003FF8AC(v70, v71, v72);

    OS_dispatch_group.wait()();
    sub_100A718E4(v70, type metadata accessor for StableIdentifier);
    v48 = v166;
    (*(v167 + 8))(v156, v166);
    v21 = v161;
    v26 = v149;
  }

LABEL_13:
  v73 = v47[3];
  v74 = *(v43 + v44);

  v75 = [v165 productInformation];
  if (v75)
  {
    v76 = v75;
    v77 = v162;
    sub_101199070(v162);

    v78 = 0;
    v79 = v167;
  }

  else
  {
    v78 = 1;
    v79 = v167;
    v77 = v162;
  }

  v80 = type metadata accessor for AccessoryProductInfo(0);
  v81 = *(v80 - 8);
  v82 = *(v81 + 56);
  v156 = v80;
  v149 = v82;
  v148 = v81 + 56;
  (v82)(v77, v78, 1);
  v83 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_fmnaId;
  swift_beginAccess();
  sub_1000D2A70(v74 + v83, v26, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v79 + 48))(v26, 1, v48) == 1)
  {

    sub_10000B3A8(v77, &qword_101697268, &qword_101394FE0);
    v84 = &qword_1016980D0;
    v85 = &unk_10138F3B0;
    v86 = v26;
  }

  else
  {
    v87 = v160;
    (*(v79 + 32))(v160, v26, v48);
    v88 = v74[16];
    if (v88)
    {
      v89 = v74[15];
      v90 = HIBYTE(v88) & 0xF;
      if ((v88 & 0x2000000000000000) == 0)
      {
        v90 = v89 & 0xFFFFFFFFFFFFLL;
      }

      if (v90)
      {
        v91 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
        v92 = v147;
        v93 = &v147[v91[12]];
        v94 = &v147[v91[16]];
        v95 = v91[20];
        v140 = v47;
        v96 = v21;
        v97 = &v147[v95];
        v98 = v91[24];
        v99 = v91[28];
        v145 = v73;
        v100 = &v147[v99];
        (*(v167 + 16))(v147, v160, v166);
        *v93 = 0;
        *(v93 + 1) = 0;
        *v94 = 0;
        *(v94 + 1) = 0;
        *v97 = v89;
        *(v97 + 1) = v88;
        v21 = v96;
        v47 = v140;
        *(v92 + v98) = 256;
        *v100 = 0;
        *(v100 + 1) = 0;
        v73 = v145;
        swift_storeEnumTagMultiPayload();

        v101 = v158;
        v102 = v162;
        sub_10012B4BC(v141, v74, v162, v92, v158);

        sub_100A718E4(v92, type metadata accessor for StableIdentifier);
        (*(v167 + 8))(v160, v166);
        sub_10000B3A8(v102, &qword_101697268, &qword_101394FE0);
        v103 = v163;
        v104 = v157;
        goto LABEL_27;
      }

      (*(v79 + 8))(v160, v48);
    }

    else
    {

      (*(v79 + 8))(v87, v48);
    }

    v84 = &qword_101697268;
    v85 = &qword_101394FE0;
    v86 = v77;
  }

  sub_10000B3A8(v86, v84, v85);
  v104 = v157;
  v101 = v158;
  v103 = v163;
  (*(v157 + 56))(v158, 1, 1, v163);
LABEL_27:
  if ((*(v104 + 48))(v101, 1, v103) == 1)
  {
    sub_10000B3A8(v101, &unk_1016A9A20, &qword_10138B280);
    v42 = static os_log_type_t.error.getter();
    if (qword_1016950C8 == -1)
    {
LABEL_29:
      os_log(_:dso:log:_:_:)(v42, &_mh_execute_header, qword_10177C410, "createBeacon: failed to generate generateOwnedBeaconRecord.", 59, 2, _swiftEmptyArrayStorage);
      type metadata accessor for SPPairingSessionError(0);
      v169 = 11;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_100A71EC8(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
      _BridgedStoredNSError.init(_:userInfo:)();
      *v159 = v168;
      return swift_storeEnumTagMultiPayload();
    }

LABEL_44:
    v138 = v42;
    swift_once();
    v42 = v138;
    goto LABEL_29;
  }

  sub_10002ACAC(v101, v21, type metadata accessor for OwnedBeaconRecord);
  v106 = dispatch_group_create();
  dispatch_group_enter(v106);
  v162 = swift_allocBox();
  v108 = v107;
  type metadata accessor for SPPairingSessionError(0);
  v169 = 1;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100A71EC8(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
  _BridgedStoredNSError.init(_:userInfo:)();
  *v108 = v168;
  swift_storeEnumTagMultiPayload();
  v109 = v151;
  v110 = [v151 name];
  if (v110)
  {
    v111 = v110;
    v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v114 = v113;
  }

  else
  {
    v112 = 0;
    v114 = 0xE000000000000000;
  }

  v145 = v73;
  v115 = [v109 roleId];
  v116 = [v109 roleEmoji];
  if (v116)
  {
    v117 = v116;
    v118 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v120 = v119;
  }

  else
  {
    v118 = 0;
    v120 = 0;
  }

  v121 = [v165 productInformation];
  if (v121)
  {
    v122 = v121;
    v123 = v152;
    sub_101199070(v152);

    v124 = v123;
    v125 = 0;
  }

  else
  {
    v125 = 1;
    v124 = v152;
  }

  (v149)(v124, v125, 1, v156);
  v126 = v155;
  *v155 = v112;
  v126[1].isa = v114;
  v127 = v126;
  v126[2].isa = v115;
  v126[3].isa = v118;
  v126[4].isa = v120;
  sub_100A7027C(v124, v126 + *(v153 + 28));
  v128 = swift_allocObject();
  v129 = v162;
  v128[2] = v106;
  v128[3] = v129;
  v128[4] = v150;
  v128[5] = v47;
  v130 = v106;

  v131 = v161;
  sub_100B093F8(v161, v127, sub_100A702EC, v128);

  OS_dispatch_group.wait()();
  swift_beginAccess();
  v132 = v154;
  sub_1000D2A70(v108, v154, &unk_1016B15A0, &qword_1013A0900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    sub_100A718E4(v127, type metadata accessor for PairingConfig);
    sub_100A718E4(v131, type metadata accessor for OwnedBeaconRecord);
    sub_10000B3A8(v132, &unk_1016B15A0, &qword_1013A0900);
  }

  else
  {
    v133 = v142;
    sub_10002ACAC(v132, v142, type metadata accessor for OwnedBeaconRecord);
    v134 = v143;
    (*(v167 + 16))(v143, v133 + *(v163 + 20), v166);
    v135 = [v165 discoveredMetadata];
    v136 = [v135 rawMetadata];

    v137 = v144;
    sub_10109D1F8(v134, v136, v144);
    sub_100D76BDC(v137, sub_100A6F580, 0);

    sub_100A718E4(v137, type metadata accessor for AccessoryMetadataRecord);
    sub_100A718E4(v133, type metadata accessor for OwnedBeaconRecord);
    sub_100A718E4(v127, type metadata accessor for PairingConfig);
    sub_100A718E4(v131, type metadata accessor for OwnedBeaconRecord);
  }

  sub_1000D2A70(v108, v159, &unk_1016B15A0, &qword_1013A0900);
}

void sub_100A6F0E0(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v39 = a6;
  v40 = a3;
  v7 = type metadata accessor for OwnedBeaconRecord(0);
  v8 = __chkstk_darwin(v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v38 - v11;
  v13 = sub_1000BC4D4(&unk_1016B15A0, &qword_1013A0900);
  __chkstk_darwin(v13);
  v15 = (&v38 - v14);
  v16 = swift_projectBox();
  swift_beginAccess();
  sub_1001DA61C(a1, v16, &unk_1016B15A0, &qword_1013A0900);
  sub_1000D2A70(a1, v15, &unk_1016B15A0, &qword_1013A0900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v15;
    v18 = static os_log_type_t.error.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    v19 = qword_10177C410;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_101385D80;
    v41 = v17;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v21 = String.init<A>(describing:)();
    v23 = v22;
    *(v20 + 56) = &type metadata for String;
    *(v20 + 64) = sub_100008C00();
    *(v20 + 32) = v21;
    *(v20 + 40) = v23;
    os_log(_:dso:log:_:_:)(v18, &_mh_execute_header, v19, "Failure during finishing pairing - %@", 37, 2, v20);
  }

  else
  {
    sub_10002ACAC(v15, v12, type metadata accessor for OwnedBeaconRecord);
    v24 = static os_log_type_t.default.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    v25 = qword_10177C410;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_101385D80;
    sub_100A70318(v12, v10, type metadata accessor for OwnedBeaconRecord);
    v27 = String.init<A>(describing:)();
    v29 = v28;
    *(v26 + 56) = &type metadata for String;
    *(v26 + 64) = sub_100008C00();
    *(v26 + 32) = v27;
    *(v26 + 40) = v29;
    os_log(_:dso:log:_:_:)(v24, &_mh_execute_header, v25, "New beacon record has been created. Record UUID - %@", 52, 2, v26);

    sub_100A5187C(v12);
    v30 = v39;
    v31 = *(*(v39 + 72) + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_locationMonitor);
    v32 = OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_currentLocation;
    swift_beginAccess();
    v33 = *(v31 + v32);
    if (v33)
    {
      v34 = &v12[*(v7 + 20)];
      v35 = type metadata accessor for Transaction();
      __chkstk_darwin(v35);
      *(&v38 - 4) = v34;
      *(&v38 - 3) = v33;
      *(&v38 - 2) = v30;
      v36 = v33;
      static Transaction.named<A>(_:with:)();
    }

    else
    {
      v37 = static os_log_type_t.error.getter();
      os_log(_:dso:log:_:_:)(v37, &_mh_execute_header, v25, "Unable to retrieve current location from CL for pairing", 55, 2, _swiftEmptyArrayStorage);
    }

    sub_100A718E4(v12, type metadata accessor for OwnedBeaconRecord);
  }

  dispatch_group_leave(v40);
}

uint64_t sub_100A6F580(uint64_t a1)
{
  v2 = type metadata accessor for AccessoryMetadataRecord(0);
  __chkstk_darwin(v2 - 8);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000BC4D4(&qword_1016B4280, ",W\t");
  __chkstk_darwin(v5);
  v7 = (v22 - v6);
  sub_1000D2A70(a1, v22 - v6, &qword_1016B4280, ",W\t");
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *v7;
    v9 = static os_log_type_t.error.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    v10 = qword_10177C410;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_101385D80;
    v22[1] = v8;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v12 = String.init<A>(describing:)();
    v14 = v13;
    *(v11 + 56) = &type metadata for String;
    *(v11 + 64) = sub_100008C00();
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v10, "Failed to save AccessoryMetadataRecord %@", 41, 2, v11);
  }

  else
  {
    sub_10002ACAC(v7, v4, type metadata accessor for AccessoryMetadataRecord);
    v16 = static os_log_type_t.info.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    v17 = qword_10177C410;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_101385D80;
    v19 = sub_10109C94C();
    v21 = v20;
    *(v18 + 56) = &type metadata for String;
    *(v18 + 64) = sub_100008C00();
    *(v18 + 32) = v19;
    *(v18 + 40) = v21;
    os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, v17, "Successfully saved AccessoryMetadataRecord %@", 45, 2, v18);

    return sub_100A718E4(v4, type metadata accessor for AccessoryMetadataRecord);
  }
}

uint64_t sub_100A6F87C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v41 = a1;
  v39 = a4;
  v34 = a2;
  v6 = type metadata accessor for UUID();
  v35 = *(v6 - 8);
  v7 = v35;
  v40 = *(v35 + 64);
  __chkstk_darwin(v6);
  v38 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for BeaconEstimatedLocation(0);
  v10 = (v9 - 8);
  v37 = *(v9 - 8);
  v11 = *(v37 + 64);
  v12 = __chkstk_darwin(v9);
  v36 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v33 - v13;
  UUID.init()();
  v15 = *(v7 + 16);
  v15(&v14[v10[8]], a2, v6);
  [a3 coordinate];
  v17 = v16;
  [a3 coordinate];
  v19 = v18;
  [a3 horizontalAccuracy];
  v21 = v20;
  v22 = [a3 timestamp];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v23 = v10[14];
  v24 = type metadata accessor for Date();
  (*(*(v24 - 8) + 56))(&v14[v23], 1, 1, v24);
  *v14 = xmmword_10138C660;
  *&v14[v10[9]] = v17;
  *&v14[v10[10]] = v19;
  *&v14[v10[11]] = v21;
  v14[v10[13]] = 1;
  *&v14[v10[15]] = 0;
  v39 = *(v39 + 24);
  v25 = v36;
  sub_100A70318(v14, v36, type metadata accessor for BeaconEstimatedLocation);
  v26 = v38;
  v27 = v6;
  v15(v38, v34, v6);
  v28 = (*(v37 + 80) + 24) & ~*(v37 + 80);
  v29 = v35;
  v30 = (v11 + *(v35 + 80) + v28) & ~*(v35 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = v41;
  sub_10002ACAC(v25, v31 + v28, type metadata accessor for BeaconEstimatedLocation);
  (*(v29 + 32))(v31 + v30, v26, v27);

  sub_100A9DA2C(v14, sub_100A70380, v31);

  return sub_100A718E4(v14, type metadata accessor for BeaconEstimatedLocation);
}

uint64_t sub_100A6FC38(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_10169F438, &unk_1013B3300);
  __chkstk_darwin(v2);
  v4 = (v27 - v3);
  Transaction.capture()();
  sub_1000D2A70(a1, v4, &qword_10169F438, &unk_1013B3300);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *v4;
    v6 = static os_log_type_t.error.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    v7 = qword_10177C410;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_10138B360;
    type metadata accessor for BeaconEstimatedLocation(0);
    type metadata accessor for Date();
    sub_100A71EC8(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    *(v8 + 56) = &type metadata for String;
    v12 = sub_100008C00();
    *(v8 + 64) = v12;
    *(v8 + 32) = v9;
    *(v8 + 40) = v11;
    type metadata accessor for UUID();
    sub_100A71EC8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    *(v8 + 96) = &type metadata for String;
    *(v8 + 104) = v12;
    *(v8 + 72) = v13;
    *(v8 + 80) = v14;
    v27[1] = v5;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v15 = String.init<A>(describing:)();
    *(v8 + 136) = &type metadata for String;
    *(v8 + 144) = v12;
    *(v8 + 112) = v15;
    *(v8 + 120) = v16;
    os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, v7, "Saving BeaconEstimatedLocation %@ for CL %@ error: %@", 53, 2, v8);
  }

  else
  {
    v18 = static os_log_type_t.default.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    v19 = qword_10177C410;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_10138BBE0;
    type metadata accessor for BeaconEstimatedLocation(0);
    type metadata accessor for Date();
    sub_100A71EC8(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    *(v20 + 56) = &type metadata for String;
    v24 = sub_100008C00();
    *(v20 + 64) = v24;
    *(v20 + 32) = v21;
    *(v20 + 40) = v23;
    type metadata accessor for UUID();
    sub_100A71EC8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    *(v20 + 96) = &type metadata for String;
    *(v20 + 104) = v24;
    *(v20 + 72) = v25;
    *(v20 + 80) = v26;
    os_log(_:dso:log:_:_:)(v18, &_mh_execute_header, v19, "Saved BeaconEstimatedLocation %@ from CL for beacon %@", 54, 2, v20);

    return sub_10000B3A8(v4, &qword_10169F438, &unk_1013B3300);
  }
}

uint64_t sub_100A70060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22[3] = a4;
  v22[4] = a5;
  v14 = sub_1000280DC(v22);
  (*(*(a4 - 8) + 16))(v14, a1, a4);
  v15 = *(a3 + 16);
  *v13 = v15;
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  result = (*(v11 + 8))(v13, v10);
  if (v15)
  {
    v18 = swift_allocObject();
    swift_weakInit();
    sub_10001F280(v22, v21);
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    sub_10000A748(v21, v19 + 24);
    *(v19 + 64) = a2;
    sub_1000BC4D4(&qword_1016B3DC0, &qword_1013EF330);
    swift_allocObject();

    v20 = Future.init(_:)();
    sub_100007BAC(v22);
    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100A7027C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100A70318(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100A70380(uint64_t a1)
{
  type metadata accessor for BeaconEstimatedLocation(0);
  type metadata accessor for UUID();

  return sub_100A6FC38(a1);
}

uint64_t sub_100A70458(void (*a1)(_BYTE *))
{
  sub_100101AA8(v1 + 16, v4);
  v4[41] = 1;
  a1(v4);
  return sub_10000B3A8(v4, &qword_1016B1CA0, &qword_1013918C0);
}

uint64_t sub_100A704D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v93 = a4;
  v94 = a3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v96 = v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v97 = *(v9 - 8);
  __chkstk_darwin(v9);
  v95 = v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for DispatchQoS.QoSClass();
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v12 = v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000D2A70(a1, &v107, &qword_1016B1CA0, &qword_1013918C0);
  if (v109)
  {
    v17 = v4;
    v90 = v7;
    v105 = v107;
    v106[0] = *v108;
    *(v106 + 9) = *&v108[9];
    v18 = static os_log_type_t.error.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    v19 = qword_10177C410;
    sub_100101AA8(&v105, &aBlock);
    v20 = os_log_type_enabled(v19, v18);
    v89 = v6;
    if (v20)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v102 = v22;
      *v21 = 136446210;
      v23 = sub_1013181BC();
      v25 = v24;
      sub_100101B04(&aBlock);
      v26 = sub_1000136BC(v23, v25, &v102);

      *(v21 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v19, v18, "Pairing error %{public}s", v21, 0xCu);
      sub_100007BAC(v22);
    }

    else
    {
      sub_100101B04(&aBlock);
    }

    sub_100101AA8(&v105, &aBlock);
    v32 = aBlock;
    if (v101 == 9)
    {
      v51 = v99.i64[0];
      type metadata accessor for SPPairingSessionError(0);
      v104 = 3;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_100A71EC8(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
      _BridgedStoredNSError.init(_:userInfo:)();
      v35 = v102;
      v102 = 0;
      v103 = 0xE000000000000000;
      v28 = &v102;
      _StringGuts.grow(_:)(42);

      v102 = 0xD000000000000028;
      v103 = 0x800000010136A460;
      v52._countAndFlagsBits = v32;
      v52._object = v51;
      String.append(_:)(v52);

      v53 = v103;
      v54 = v17;
LABEL_37:
      v70 = v35;
      v54[11] = 0;

      v54[12] = 0;

      if (*(v54[4] + OBJC_IVAR____TtC12searchpartyd14CentralManager_isSharedPairingAgent) == 1)
      {
        v88 = v53;
        v71 = v54[8];
        __chkstk_darwin(v30);
        v87[1] = v54;
        v87[-2] = v72;
        type metadata accessor for SharedPairingAgent();
        Lock.callAsFunction<A>(_:)();
        v73 = aBlock;
        sub_10104E044(v71);

        sub_1000BC488();
        v74 = v91;
        v75 = v92;
        (*(v91 + 104))(v12, enum case for DispatchQoS.QoSClass.default(_:), v92);
        v87[0] = static OS_dispatch_queue.global(qos:)();
        (*(v74 + 8))(v12, v75);
        v76 = swift_allocObject();
        v77 = v93;
        v76[2] = v94;
        v76[3] = v77;
        v76[4] = v70;
        v100.i64[1] = sub_1002EF79C;
        v101 = v76;
        aBlock = _NSConcreteStackBlock;
        v99.i64[0] = 1107296256;
        v99.i64[1] = sub_100006684;
        v100.i64[0] = &unk_101645200;
        v78 = _Block_copy(&aBlock);

        v79 = v70;
        v80 = v95;
        static DispatchQoS.unspecified.getter();
        v102 = _swiftEmptyArrayStorage;
        sub_100A71EC8(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
        v81 = v96;
        v82 = v89;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v83 = v87[0];
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v78);

        (*(v90 + 8))(v81, v82);
        (*(v97 + 8))(v80, v9);

        sub_100243F38();

        return sub_100101B04(&v105);
      }

      __break(1u);
      goto LABEL_41;
    }

    if (v101 == 11)
    {
      v33 = vorrq_s8(v99, v100);
      v34 = vorr_s8(*v33.i8, *&vextq_s8(v33, v33, 8uLL));
      if (aBlock == 5 && !*&v34)
      {
        type metadata accessor for SPPairingSessionError(0);
        v104 = 12;
        sub_100032898(_swiftEmptyArrayStorage);
        sub_100A71EC8(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
        _BridgedStoredNSError.init(_:userInfo:)();
        v35 = v102;
        v102 = 0;
        v103 = 0xE000000000000000;
        v28 = &v102;
        _StringGuts.grow(_:)(52);
        v36._countAndFlagsBits = 0xD000000000000032;
        v36._object = 0x800000010136A490;
        String.append(_:)(v36);
LABEL_28:
        v54 = v17;
        v65._countAndFlagsBits = sub_10110A934(*(v17[9] + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState));
        String.append(_:)(v65);

        v53 = v103;
        goto LABEL_37;
      }

      if (aBlock == 7 && !*&v34)
      {
        type metadata accessor for SPPairingSessionError(0);
        v104 = 6;
        sub_100032898(_swiftEmptyArrayStorage);
        sub_100A71EC8(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
        _BridgedStoredNSError.init(_:userInfo:)();
        v35 = v102;
        v102 = 0;
        v103 = 0xE000000000000000;
        v28 = &v102;
        _StringGuts.grow(_:)(35);

        v102 = 0xD000000000000021;
        v103 = 0x800000010136A400;
        goto LABEL_28;
      }

      if (aBlock == 9 && !*&v34)
      {
        type metadata accessor for SPPairingSessionError(0);
        v28 = v66;
        v104 = 18;
        sub_100032898(_swiftEmptyArrayStorage);
        sub_100A71EC8(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
        _BridgedStoredNSError.init(_:userInfo:)();
        v35 = v102;
        v53 = 0x800000010136A430;
        v54 = v17;
        goto LABEL_37;
      }

      if (aBlock == 11 && !*&v34)
      {
        if (*(v17[9] + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState) > 5u)
        {
          return sub_100101B04(&v105);
        }

        v54 = v17;
        type metadata accessor for SPPairingSessionError(0);
        v28 = v67;
        v104 = 13;
        sub_100032898(_swiftEmptyArrayStorage);
        sub_100A71EC8(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
        _BridgedStoredNSError.init(_:userInfo:)();
        v35 = v102;
        v53 = 0x800000010136A4D0;
        goto LABEL_37;
      }
    }

    type metadata accessor for SPPairingSessionError(0);
    v104 = 12;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100A71EC8(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
    _BridgedStoredNSError.init(_:userInfo:)();
    v35 = v102;
    v102 = 0;
    v103 = 0xE000000000000000;
    v28 = &v102;
    _StringGuts.grow(_:)(55);
    v68._countAndFlagsBits = 0xD000000000000035;
    v68._object = 0x800000010136A3C0;
    String.append(_:)(v68);
    v54 = v17;
    v69._countAndFlagsBits = sub_10110A934(*(v17[9] + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState));
    String.append(_:)(v69);

    v53 = v103;
    sub_100101B04(&aBlock);
    goto LABEL_37;
  }

  v88 = v9;
  v27 = v4;
  v28 = v4[9];
  v9 = OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState;
  v29 = *(v28 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState);
  if (v29 == 5)
  {
    v90 = v7;
    v89 = v6;
    v37 = static os_log_type_t.default.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    v7 = qword_10177C410;
    os_log(_:dso:log:_:_:)(v37, &_mh_execute_header, qword_10177C410, "Sent pairing complete.", 22, 2, _swiftEmptyArrayStorage);
    *(v28 + v9) = 6;
    v27[11] = 0;

    v27[12] = 0;

    v38 = v28[3];
    *v16 = v38;
    (*(v14 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v13);
    v39 = v38;
    v6 = _dispatchPreconditionTest(_:)();
    v40 = (*(v14 + 8))(v16, v13);
    if (v6)
    {
      v41 = static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)(v41, &_mh_execute_header, v7, "completeInitiatePairing: starting timeout...", 44, 2, _swiftEmptyArrayStorage);
      *(v28 + v9) = 8;
      sub_10110C658(0, 0);
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      aBlock = 13;
      v99 = 0u;
      v100 = 0u;
      LOBYTE(v101) = 11;
      sub_100A5A2B8(&aBlock);
      sub_100101B04(&aBlock);
      sub_1000BC488();
      v42 = v91;
      v43 = v92;
      (*(v91 + 104))(v12, enum case for DispatchQoS.QoSClass.default(_:), v92);
      v44 = static OS_dispatch_queue.global(qos:)();
      (*(v42 + 8))(v12, v43);
      v45 = swift_allocObject();
      v46 = v93;
      *(v45 + 16) = v94;
      *(v45 + 24) = v46;
      v100.i64[1] = sub_10041ABC0;
      v101 = v45;
      aBlock = _NSConcreteStackBlock;
      v99.i64[0] = 1107296256;
      v99.i64[1] = sub_100006684;
      v100.i64[0] = &unk_1016452A0;
      v47 = _Block_copy(&aBlock);

      v48 = v95;
      static DispatchQoS.unspecified.getter();
      *&v105 = _swiftEmptyArrayStorage;
      sub_100A71EC8(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      v49 = v96;
      v50 = v89;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v47);

      (*(v90 + 8))(v49, v50);
LABEL_24:
      (*(v97 + 8))(v48, v88);
    }

    __break(1u);
    goto LABEL_43;
  }

  if (v29 == 3)
  {
    v30 = static os_log_type_t.default.getter();
    if (qword_1016950C8 == -1)
    {
LABEL_9:
      result = os_log(_:dso:log:_:_:)(v30, &_mh_execute_header, qword_10177C410, "Sent finalize pairing.", 22, 2, _swiftEmptyArrayStorage);
      *(v28 + v9) = 4;
      return result;
    }

LABEL_41:
    v84 = v30;
    swift_once();
    v30 = v84;
    goto LABEL_9;
  }

  v40 = static os_log_type_t.error.getter();
  if (qword_1016950C8 != -1)
  {
LABEL_43:
    v85 = v7;
    v86 = v40;
    swift_once();
    v40 = v86;
    v7 = v85;
  }

  v90 = v7;
  os_log(_:dso:log:_:_:)(v40, &_mh_execute_header, qword_10177C410, "Invalid state!", 14, 2, _swiftEmptyArrayStorage);
  v27[11] = 0;

  v27[12] = 0;

  if (*(v27[4] + OBJC_IVAR____TtC12searchpartyd14CentralManager_isSharedPairingAgent) == 1)
  {
    v55 = v27[8];
    __chkstk_darwin(result);
    v87[-2] = v56;
    type metadata accessor for SharedPairingAgent();
    Lock.callAsFunction<A>(_:)();
    v57 = aBlock;
    sub_10104E044(v55);

    sub_1000BC488();
    v58 = v91;
    v59 = v92;
    (*(v91 + 104))(v12, enum case for DispatchQoS.QoSClass.default(_:), v92);
    v60 = static OS_dispatch_queue.global(qos:)();
    (*(v58 + 8))(v12, v59);
    v61 = swift_allocObject();
    v62 = v93;
    *(v61 + 16) = v94;
    *(v61 + 24) = v62;
    v100.i64[1] = sub_100A71FC4;
    v101 = v61;
    aBlock = _NSConcreteStackBlock;
    v99.i64[0] = 1107296256;
    v99.i64[1] = sub_100006684;
    v100.i64[0] = &unk_101645250;
    v63 = _Block_copy(&aBlock);

    v48 = v95;
    static DispatchQoS.unspecified.getter();
    *&v105 = _swiftEmptyArrayStorage;
    sub_100A71EC8(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v64 = v96;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v63);

    (*(v90 + 8))(v64, v6);
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t sub_100A718E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100A71958()
{
  result = qword_1016B42A8;
  if (!qword_1016B42A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B42A8);
  }

  return result;
}

uint64_t sub_100A719D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100A69DA8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_100A71A30@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100A6D73C(a1, *(v2 + 24));
  *a2 = result;
  return result;
}

uint64_t sub_100A71B38@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_100A71B94@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_100A71BE8()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(0);
  }

  return result;
}

unint64_t sub_100A71DD0()
{
  result = qword_1016B43C8;
  if (!qword_1016B43C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B43C8);
  }

  return result;
}

unint64_t sub_100A71E24()
{
  result = qword_1016B43D8;
  if (!qword_1016B43D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B43D8);
  }

  return result;
}

uint64_t sub_100A71E78(void (*a1)(void))
{

  a1(*(v1 + 24));

  return _swift_deallocObject(v1, 32);
}

uint64_t sub_100A71EC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100A71F24()
{
  result = qword_1016B43E0;
  if (!qword_1016B43E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B43E0);
  }

  return result;
}

uint64_t sub_100A72014(void *a1)
{
  v3 = v1;
  v5 = type metadata accessor for HashAlgorithm();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v9 = sub_100A2A7C8();
  v11 = v10;
  v12 = sub_100A2A12C(*v3, *(v3 + 8), v9, v10);
  v14 = v13;
  sub_100016590(v9, v11);
  if (v2)
  {
    return sub_100007BAC(v31);
  }

  (*(v6 + 104))(v8, enum case for HashAlgorithm.sha256(_:), v5);
  v15 = Data.hash(algorithm:)();
  v17 = v16;
  v19 = *(v6 + 8);
  v18 = v6 + 8;
  v19(v8, v5);
  v29 = v15;
  v30 = v17;
  sub_10015049C(v31, v32);
  sub_100165078();
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  sub_100016590(v29, v30);
  v20 = type metadata accessor for BeaconPayloadV2(0);
  Date.timeIntervalSinceReferenceDate.getter();
  if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v21 <= -1.0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v21 < 4294967300.0)
  {
    LODWORD(v29) = bswap32(v21);
    sub_10015049C(v31, v32);
    sub_100101824();
    dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
    v28 = v33;
    sub_10015049C(v31, v32);
    type metadata accessor for BeaconPayloadMetaDataV2(0);
    v27 = v20;
    sub_100A72FF4();
    dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
    v18 = v27;
    v29 = v12;
    v30 = v14;
    sub_10015049C(v31, v32);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    if (qword_101694940 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  __break(1u);
LABEL_16:
  swift_once();
LABEL_6:
  OS_dispatch_queue.sync<A>(execute:)();
  v22 = sub_101074ED4(v29);

  if (v22)
  {
    goto LABEL_10;
  }

  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  v29 = 0x7365547265646E75;
  v30 = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (v34 == 1)
  {
LABEL_10:
    v23 = (v3 + *(v18 + 40));
    v24 = *v23;
    BYTE4(v29) = *(v23 + 4);
    LODWORD(v29) = v24;
    sub_10015049C(v31, v32);
    sub_100A7304C();
    dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
  }

  sub_100016590(v12, v14);
  return sub_100007BAC(v31);
}

uint64_t sub_100A724B8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v66 = type metadata accessor for Bit();
  v62 = *(v66 - 8);
  v5 = __chkstk_darwin(v66);
  v63 = &v51[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v65 = &v51[-v7];
  v64 = type metadata accessor for BeaconPayloadMetaDataV2(0);
  __chkstk_darwin(v64);
  v9 = &v51[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1000BC4D4(&qword_1016AA430, &unk_101392650);
  __chkstk_darwin(v10 - 8);
  v12 = &v51[-v11];
  v13 = type metadata accessor for ObservedAdvertisement.Location(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v51[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = type metadata accessor for ObservedAdvertisement(0);
  sub_100A72CCC(a1 + *(v17 + 48), v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100A72D3C(v12);
    sub_100A72DA4();
    swift_allocError();
    *v18 = 0;
    swift_willThrow();
    return sub_100034554(a1, type metadata accessor for ObservedAdvertisement);
  }

  sub_100A72E44(v12, v16, type metadata accessor for ObservedAdvertisement.Location);
  v20 = *(a1 + 24);
  if ((v20 & 0x2000000000000000) != 0)
  {
    sub_100A72DA4();
    swift_allocError();
    *v27 = 1;
    swift_willThrow();
    sub_100034554(a1, type metadata accessor for ObservedAdvertisement);
    return sub_100034554(v16, type metadata accessor for ObservedAdvertisement.Location);
  }

  v59 = v9;
  v56 = *(a1 + 16);
  v57 = v20;
  sub_100017D5C(v56, v20);
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  v58 = v2;
  v21 = sub_101074ED4(v67);

  v22 = a1;
  v60 = v16;
  v61 = a2;
  if ((v21 & 1) == 0)
  {
    if (qword_101694FA8 != -1)
    {
      swift_once();
    }

    v67 = 0x7365547265646E75;
    v68 = 0xE900000000000074;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    v22 = a1;
    if (v69 != 1)
    {
      goto LABEL_11;
    }
  }

  if (v22[35])
  {
LABEL_11:
    v23 = *(v16 + 2);
    if (v23 >= 0.0)
    {
      if (v23 < 65.0)
      {
        v26 = 1;
        LOBYTE(v24) = 3;
LABEL_34:
        v55 = 3;
        goto LABEL_42;
      }
    }

    else if (v23 < 65.0)
    {
      v24 = 1;
      v55 = 3;
      v25 = v23 < 400.0 || v23 > 9.22337204e18;
      v26 = 1;
      if (!v25)
      {
        goto LABEL_42;
      }

      goto LABEL_41;
    }

    if (v23 < 400.0)
    {
      v26 = 1;
      LOBYTE(v24) = 2;
      goto LABEL_34;
    }

    v24 = 1;
    v55 = 3;
    v26 = 1;
    if (v23 <= 9.22337204e18)
    {
      goto LABEL_42;
    }

LABEL_41:
    v26 = v24;
    LOBYTE(v24) = 0;
    goto LABEL_42;
  }

  v28 = 2;
  if (v22[*(v17 + 56)])
  {
    v28 = 0;
  }

  v55 = v28 | (v22[33] << 24) | (v22[34] << 32);
  v23 = *(v16 + 2);
  if (v23 >= 0.0 && v23 < 65.0)
  {
    LOBYTE(v24) = 3;
    v26 = 2;
    goto LABEL_42;
  }

  if (v23 >= 65.0)
  {
    LOBYTE(v24) = 2;
    v26 = 2;
    if (v23 < 400.0)
    {
      goto LABEL_42;
    }

    if (v23 <= 9.22337204e18)
    {
      LOBYTE(v24) = 1;
      goto LABEL_42;
    }

    goto LABEL_40;
  }

  if (v23 < 400.0 || v23 > 9.22337204e18)
  {
LABEL_40:
    v24 = 2;
    goto LABEL_41;
  }

  LOBYTE(v24) = 1;
  v26 = 2;
LABEL_42:
  v53 = v26;
  v54 = v22[32];
  v52 = (v54 >> 4) & 3;
  v30 = sub_10001993C(v54 & 0xB);
  v31 = v17;
  v32 = v22[*(v17 + 56)];
  v34 = v62;
  v33 = v63;
  if (v32)
  {
    v35 = &enum case for Bit.one(_:);
  }

  else
  {
    v35 = &enum case for Bit.zero(_:);
  }

  v36 = v66;
  (*(v62 + 104))(v63, *v35, v66);
  v37 = *(v34 + 32);
  v38 = v65;
  v37(v65, v33, v36);
  v39 = v59;
  *v59 = v24;
  v39[1] = v52;
  v39[2] = v30;
  v39[3] = BYTE1(v30) & 1;
  v39[4] = BYTE2(v30) & 1;
  v39[5] = HIBYTE(v30) & 1;
  v39[6] = v53;
  v40 = v64;
  v37(&v39[*(v64 + 32)], v38, v36);
  v39[*(v40 + 36)] = 0;
  v41 = *(v31 + 44);
  v42 = type metadata accessor for BeaconPayloadV2(0);
  v43 = v42[5];
  v44 = type metadata accessor for Date();
  v45 = v61;
  (*(*(v44 - 8) + 16))(v61 + v43, &v22[v41], v44);
  v46 = *v60;
  v47 = v60[1];
  sub_100034554(v60, type metadata accessor for ObservedAdvertisement.Location);
  sub_100034554(v22, type metadata accessor for ObservedAdvertisement);
  v48 = v57;
  *v45 = v56;
  v45[1] = v48;
  *(v45 + v42[6]) = v46;
  *(v45 + v42[7]) = v47;
  *(v45 + v42[8]) = v23;
  *(v45 + v42[9]) = v54;
  v49 = v45 + v42[10];
  v50 = v55;
  v49[4] = BYTE4(v55);
  *v49 = v50;
  return sub_100A72E44(v39, v45 + v42[11], type metadata accessor for BeaconPayloadMetaDataV2);
}