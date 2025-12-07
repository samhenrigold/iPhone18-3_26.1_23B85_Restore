unint64_t sub_100018B1C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100089D88, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100018B6C()
{
  result = qword_100092FB0;
  if (!qword_100092FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100092FB0);
  }

  return result;
}

unint64_t sub_100018C08()
{
  result = qword_100092FF8;
  if (!qword_100092FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100092FF8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for KeyValueSource(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for KeyValueSource(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for KeyValueStoreManager.Defaults(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for KeyValueStoreManager.Defaults(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100018F84()
{
  v1 = *(v0 + 16);
  *v1 = (*(**(v0 + 24) + 144))();
}

unint64_t sub_10001901C()
{
  result = qword_100093150;
  if (!qword_100093150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100093150);
  }

  return result;
}

BOOL sub_100019070(uint64_t a1)
{
  sub_10000A45C(&qword_100092FA8, &unk_100075380);
  sub_10000FA34(&qword_100093170, &qword_100092FA8, &unk_100075380, &protocol conformance descriptor for Subscription<A>);
  return (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0;
}

uint64_t sub_100019114(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000149B8(a1);
  }

  return result;
}

uint64_t sub_10001918C()
{

  return _swift_deallocObject(v0, 48, 7);
}

void *sub_10001920C()
{
  v0 = type metadata accessor for URL();
  sub_100038620(v0, qword_1000989B0);
  v1 = sub_1000027FC(v0, qword_1000989B0);
  type metadata accessor for UserFileManager();
  return sub_100041768(v1);
}

uint64_t sub_100019268()
{
  _StringGuts.grow(_:)(78);
  v1._countAndFlagsBits = 0xD000000000000025;
  v1._object = 0x8000000100079E10;
  String.append(_:)(v1);
  String.append(_:)(*v0);
  v2._object = 0x8000000100079E40;
  v2._countAndFlagsBits = 0xD000000000000018;
  String.append(_:)(v2);
  String.append(_:)(v0[1]);
  v3._countAndFlagsBits = 0x4449656E6F7A202CLL;
  v3._object = 0xEB00000000203A73;
  String.append(_:)(v3);
  v4._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v4);

  return 0;
}

unint64_t sub_100019354()
{
  v1 = 0xD000000000000013;
  if (*v0 != 1)
  {
    v1 = 0x734449656E6F7ALL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1000193B8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100033B4C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000193F8(uint64_t a1)
{
  v2 = sub_100019688();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100019434(uint64_t a1)
{
  v2 = sub_100019688();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100019470(void *a1)
{
  v3 = v1;
  v5 = sub_10000A45C(&unk_100093180, &qword_1000730A0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_1000078C8(a1, a1[3]);
  sub_100019688();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v12 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = *(v3 + 32);
    v10[15] = 2;
    sub_10000A45C(&qword_100094180, &qword_100074290);
    sub_1000385B4(&unk_100093190, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_100019688()
{
  result = qword_1000957D8;
  if (!qword_1000957D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000957D8);
  }

  return result;
}

uint64_t sub_1000196DC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t sub_1000196EC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000957D0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for URL();
  v3 = sub_1000027FC(v2, qword_1000989B0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

double sub_1000197B0@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100033C74(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

Swift::Int sub_100019838()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000198B0(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_1000198F4@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  *a1 = v4;
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
}

uint64_t sub_100019964(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v3;
  *(v1 + 48) = *(a1 + 32);
}

uint64_t sub_100019A0C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 80) = a1;
}

id sub_100019AA4()
{
  v1 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator____lazy_storage___container;
  v2 = *(v0 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator____lazy_storage___container);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator____lazy_storage___container);
  }

  else
  {
    (*(*v0 + 264))(&v9);
    v12 = v9;
    sub_100034994(&v12);
    v11 = v10;
    sub_100006CAC(&v11, &qword_100094180, &qword_100074290);
    v4 = String._bridgeToObjectiveC()();

    v5 = [objc_opt_self() containerWithIdentifier:v4];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_100019C00(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = [objc_allocWithZone(CKOperationGroup) init];
    v6 = String._bridgeToObjectiveC()();
    [v5 setName:v6];

    v7 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v8 = v3;
  return v4;
}

id sub_100019CAC()
{
  v1 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator____lazy_storage___susbscriptionSetupGroup;
  v2 = *(v0 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator____lazy_storage___susbscriptionSetupGroup);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator____lazy_storage___susbscriptionSetupGroup);
  }

  else
  {
    v4 = [objc_allocWithZone(CKOperationGroup) init];
    v5 = String._bridgeToObjectiveC()();
    [v4 setName:v5];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_100019D5C()
{
  v1 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator____lazy_storage___fetchDatabaseGroup;
  v2 = *(v0 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator____lazy_storage___fetchDatabaseGroup);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator____lazy_storage___fetchDatabaseGroup);
  }

  else
  {
    v4 = [objc_allocWithZone(CKOperationGroup) init];
    v5 = String._bridgeToObjectiveC()();
    [v4 setName:v5];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_100019E0C()
{
  v1 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator____lazy_storage___cloudUserActionExplicitGroup;
  v2 = *(v0 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator____lazy_storage___cloudUserActionExplicitGroup);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator____lazy_storage___cloudUserActionExplicitGroup);
  }

  else
  {
    v4 = [objc_allocWithZone(CKOperationGroup) init];
    v5 = String._bridgeToObjectiveC()();
    [v4 setName:v5];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_100019EBC()
{
  v1 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator____lazy_storage___deferredUpdatesGroup;
  v2 = *(v0 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator____lazy_storage___deferredUpdatesGroup);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator____lazy_storage___deferredUpdatesGroup);
  }

  else
  {
    v4 = [objc_allocWithZone(CKOperationGroup) init];
    v5 = String._bridgeToObjectiveC()();
    [v4 setName:v5];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_100019F6C()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 56);
  *v4 = v5;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.notOnQueue(_:), v1);
  v5;
  v6 = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v4, v1);
  if (v6)
  {
    OS_dispatch_queue.sync<A>(execute:)();
    return v8[15];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001A0B0(char a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 56);
  *v6 = v7;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  v9 = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v6, v3);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  *(v11 + 24) = a1;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_100033F64;
  *(v12 + 24) = v11;
  aBlock[4] = sub_100018FE4;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001437C;
  aBlock[3] = &unk_10008A150;
  v13 = _Block_copy(aBlock);

  dispatch_sync(v8, v13);
  _Block_release(v13);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_10001A2E8(__int128 *a1)
{
  swift_allocObject();
  v2 = sub_100033F90(a1);
  v6 = *a1;
  sub_100034994(&v6);
  v5 = a1[1];
  sub_100034994(&v5);
  v4 = *(a1 + 4);
  sub_100006CAC(&v4, &qword_100094180, &qword_100074290);
  return v2;
}

uint64_t sub_10001A374()
{
  v1 = v0;
  v2 = sub_10000A45C(&qword_1000931C8, &qword_1000730A8);
  __chkstk_darwin(v2 - 8);
  v4 = &v35 - v3;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v35 - v10;
  OS_dispatch_queue.sync<A>(execute:)();
  v12 = v40;
  v13 = sub_1000391F4();
  v14 = *(v6 + 16);
  if (v12)
  {
    v14(v9, v13, v5);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v43 = v18;
      *v17 = 136315138;
      (*(*v1 + 264))(&v40);
      v19 = sub_100019268();
      v21 = v20;
      *v37 = v40;
      sub_100034994(v37);
      v45 = v41;
      sub_100034994(&v45);
      *&v44 = v42;
      sub_100006CAC(&v44, &qword_100094180, &qword_100074290);
      v22 = sub_1000034B8(v19, v21, &v43);

      *(v17 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v15, v16, "Already activated CloudStorageCoordinator with %s", v17, 0xCu);
      sub_1000036EC(v18);
    }

    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    v14(v11, v13, v5);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v37[0] = v36;
      *v26 = 136315138;
      (*(*v1 + 264))(&v40);
      v27 = sub_100019268();
      v29 = v28;
      v45 = v40;
      sub_100034994(&v45);
      v44 = v41;
      sub_100034994(&v44);
      v43 = v42;
      sub_100006CAC(&v43, &qword_100094180, &qword_100074290);
      v30 = sub_1000034B8(v27, v29, v37);

      *(v26 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v24, v25, "Activating CloudStorageCoordinator with %s", v26, 0xCu);
      sub_1000036EC(v36);
    }

    (*(v6 + 8))(v11, v5);
    sub_10001AD44();
    v31 = *sub_10000CBC4();
    v38 = type metadata accessor for CloudStorageCoordinator(0);
    v39 = &off_10008A368;
    v37[0] = v1;

    v32 = v31;
    sub_10000DE14();

    sub_1000036EC(v37);
    v33 = sub_10000A45C(&qword_1000931C0, &unk_100072C70);
    (*(*(v33 - 8) + 56))(v4, 0, 1, v33);
    v34 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_applePushNotificationSubscription;
    swift_beginAccess();
    sub_10003849C(v4, v1 + v34, &qword_1000931C8, &qword_1000730A8);
    return swift_endAccess();
  }
}

uint64_t sub_10001A8E8()
{
  v1 = v0;
  v2 = sub_10000A45C(&qword_1000931C8, &qword_1000730A8);
  __chkstk_darwin(v2 - 8);
  v4 = &v31 - v3;
  v32 = sub_10000A45C(&qword_1000931C0, &unk_100072C70);
  v5 = *(v32 - 8);
  __chkstk_darwin(v32);
  v7 = &v31 - v6;
  v8 = sub_10000A45C(&qword_1000931D0, qword_1000730B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v31 - v9;
  v11 = sub_10000A45C(&qword_100092E80, qword_100072CF0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - v13;
  v15 = [objc_opt_self() defaultCenter];
  [v15 removeObserver:v1];

  v16 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_systemNotificationSubscription;
  swift_beginAccess();
  sub_100006C44(v1 + v16, v10, &qword_1000931D0, qword_1000730B0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    v17 = &qword_1000931D0;
    v18 = qword_1000730B0;
    v19 = v10;
  }

  else
  {
    sub_100035FF0(v10, v14, &qword_100092E80, qword_100072CF0);
    sub_100062224();

    sub_100064360(v14);

    v19 = v14;
    v17 = &qword_100092E80;
    v18 = qword_100072CF0;
  }

  sub_100006CAC(v19, v17, v18);
  v20 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_applePushNotificationSubscription;
  swift_beginAccess();
  sub_100006C44(v1 + v20, v4, &qword_1000931C8, &qword_1000730A8);
  if ((*(v5 + 48))(v4, 1, v32) == 1)
  {
    v21 = &qword_1000931C8;
    v22 = &qword_1000730A8;
    v23 = v4;
  }

  else
  {
    sub_100035FF0(v4, v7, &qword_1000931C0, &unk_100072C70);
    v24 = *sub_10000CBC4();
    sub_10000E0B4(v7);

    v23 = v7;
    v21 = &qword_1000931C0;
    v22 = &unk_100072C70;
  }

  sub_100006CAC(v23, v21, v22);
  v25 = *sub_100041228();
  v26 = *(*v1 + 264);

  v26(v33, v27);
  v28 = v33[0];
  v29 = v33[1];
  v37 = v34;
  sub_100034994(&v37);
  v36 = v35;
  sub_100006CAC(&v36, &qword_100094180, &qword_100074290);
  (*(*v25 + 240))(v28, v29);
}

void sub_10001AD44()
{
  v1 = v0;
  v2 = sub_10000A45C(&qword_1000931D0, qword_1000730B0);
  __chkstk_darwin(v2 - 8);
  v25 = &v24 - v3;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v26 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v24 - v8;
  v27 = [objc_opt_self() defaultCenter];
  v10 = sub_10003915C();
  v11 = *(v5 + 16);
  v11(v9, v10, v4);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Add listener for account change", v14, 2u);
  }

  v15 = *(v5 + 8);
  v15(v9, v4);
  [v27 addObserver:v1 selector:"accountDidChange:" name:CKAccountChangedNotification object:0];
  v11(v26, v10, v4);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Add listener for CKIdentityUpdate", v18, 2u);
  }

  v15(v26, v4);
  v19 = v27;
  [v27 addObserver:v1 selector:"accountDidChange:" name:CKIdentityUpdateNotification object:0];
  sub_100062224();
  v28[3] = type metadata accessor for CloudStorageCoordinator(0);
  v28[4] = &off_10008A358;
  v28[0] = v1;

  v20 = v25;
  sub_1000640D8();

  sub_1000036EC(v28);
  v21 = sub_10000A45C(&qword_100092E80, qword_100072CF0);
  (*(*(v21 - 8) + 56))(v20, 0, 1, v21);
  v22 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_systemNotificationSubscription;
  swift_beginAccess();
  sub_10003849C(v20, v1 + v22, &qword_1000931D0, qword_1000730B0);
  swift_endAccess();
  v23 = type metadata accessor for Transaction();
  __chkstk_darwin(v23);
  *(&v24 - 4) = v1;
  *(&v24 - 3) = sub_100038AE0;
  *(&v24 - 2) = v1;

  static Transaction.named<A>(_:with:)("com.apple.bluetoothuser.accountStatus", 37, 2, sub_100038A68);
}

void sub_10001B1BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A45C(&qword_100093740, &qword_100073620);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100073090;
  v9 = sub_100019AA4();
  v10 = [v9 privateCloudDatabase];

  *(inited + 32) = v10;
  v11 = *(*a2 + 264);
  v64 = inited;
  v57 = a1;
  v63 = inited + 32;
  v62 = v4;
  v61 = v5;
  v60 = v7;
  if ((inited & 0xC000000000000001) != 0)
  {
    v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v12 = v10;
  }

  v58 = v12;
  v13 = swift_allocObject();
  v59 = v13;
  *(v13 + 16) = _swiftEmptyArrayStorage;
  v14 = (v13 + 16);
  v56[1] = a2;
  v11(v68);
  v15 = v69;
  v72[0] = v69;
  v71 = v68[0];

  sub_100034994(&v71);
  v70 = v68[1];
  sub_100034994(&v70);
  sub_100006CAC(v72, &qword_100094180, &qword_100074290);
  v16 = *(v15 + 16);
  if (v16)
  {
    v65 = CKCurrentUserDefaultName;
    v17 = (v15 + 40);
    do
    {
      v18 = *(v17 - 1);
      v19 = *v17;
      v67._countAndFlagsBits = 0;
      v67._object = 0xE000000000000000;

      _StringGuts.grow(_:)(38);

      v67._countAndFlagsBits = 0xD000000000000024;
      v67._object = 0x8000000100079F20;
      v20._countAndFlagsBits = v18;
      v20._object = v19;
      String.append(_:)(v20);
      sub_100015AAC(v67._countAndFlagsBits, v67._object, 2, &type metadata for Bool, &v66);

      if (LOBYTE(v66._countAndFlagsBits) == 2 || (v66._countAndFlagsBits & 1) != 0)
      {
      }

      else
      {
        sub_100004890(0, &qword_100093758, CKRecordZoneID_ptr);
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;

        v24._countAndFlagsBits = v18;
        v24._object = v19;
        v25._countAndFlagsBits = v21;
        v25._object = v23;
        isa = CKRecordZoneID.init(zoneName:ownerName:)(v24, v25).super.isa;
        sub_100004890(0, &unk_100093790, CKRecordZoneSubscription_ptr);
        v67._countAndFlagsBits = 0;
        v67._object = 0xE000000000000000;
        v27 = isa;
        _StringGuts.grow(_:)(38);

        v67._countAndFlagsBits = 0xD000000000000024;
        v67._object = 0x8000000100079F20;
        v28._countAndFlagsBits = v18;
        v28._object = v19;
        String.append(_:)(v28);

        v29 = CKRecordZoneSubscription.init(zoneID:subscriptionID:)(v27, v67).super.super.isa;
        swift_beginAccess();
        v30 = v29;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
      }

      v17 += 2;
      --v16;
    }

    while (v16);
  }

  sub_100006CAC(v72, &qword_100094180, &qword_100074290);
  swift_beginAccess();
  if (*v14 >> 62)
  {
    v31 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v31 = *((*v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = v62;
  v33 = v61;
  v34 = v60;
  if (v31 <= 0)
  {
    swift_setDeallocating();
    swift_arrayDestroy();
    v52 = sub_10003915C();
    (*(v33 + 16))(v34, v52, v32);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&_mh_execute_header, v53, v54, "Already subscribed cloud notifications", v55, 2u);
    }

    (*(v33 + 8))(v34, v32);
  }

  else
  {
    sub_100004890(0, &unk_100093780, CKModifySubscriptionsOperation_ptr);
    v35 = v59;
    v36 = *(v59 + 16);
    sub_10000A45C(&unk_100092D10, &unk_100072C00);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_100072BE0;
    sub_100004890(0, &qword_1000931D8, CKDatabaseSubscription_ptr);
    v66._countAndFlagsBits = 0;
    v66._object = 0xE000000000000000;

    _StringGuts.grow(_:)(16);

    strcpy(&v66, "bluetoothuser-");
    HIBYTE(v66._object) = -18;
    v38 = v58;
    [v58 scope];
    v39 = CKDatabaseScopeString();
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    v43._countAndFlagsBits = v40;
    v43._object = v42;
    String.append(_:)(v43);

    v44 = CKDatabaseSubscription.init(subscriptionID:)(v66).super.super.isa;
    v45 = [objc_allocWithZone(CKNotificationInfo) init];
    [v45 setShouldSendContentAvailable:1];
    [(objc_class *)v44 setNotificationInfo:v45];

    v46 = CKSubscription.subscriptionID.getter();
    v48 = v47;

    *(v37 + 32) = v46;
    *(v37 + 40) = v48;
    v73.value._rawValue = v36;
    v73.is_nil = v37;
    v49 = CKModifySubscriptionsOperation.init(subscriptionsToSave:subscriptionIDsToDelete:)(v73, v74).super.super.super.super.isa;
    v50 = sub_100019CAC();
    [(objc_class *)v49 setGroup:v50];

    v51 = swift_allocObject();
    *(v51 + 16) = v57;
    *(v51 + 24) = v35;

    CKModifySubscriptionsOperation.modifySubscriptionsResultBlock.setter();
    [v38 addOperation:v49];

    swift_setDeallocating();
    swift_arrayDestroy();
  }
}

Class sub_10001B9C8()
{
  sub_100004890(0, &qword_1000931D8, CKDatabaseSubscription_ptr);
  _StringGuts.grow(_:)(16);

  strcpy(&v9, "bluetoothuser-");
  HIBYTE(v9._object) = -18;
  [v0 scope];
  v1 = CKDatabaseScopeString();
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5._countAndFlagsBits = v2;
  v5._object = v4;
  String.append(_:)(v5);

  isa = CKDatabaseSubscription.init(subscriptionID:)(v9).super.super.isa;
  v7 = [objc_allocWithZone(CKNotificationInfo) init];
  [v7 setShouldSendContentAvailable:1];
  [(objc_class *)isa setNotificationInfo:v7];

  return isa;
}

uint64_t sub_10001BAF4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v37 - v12;
  Transaction.capture()();
  if (a2)
  {
    v14 = sub_10003915C();
    (*(v8 + 16))(v11, v14, v7);
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    sub_100036B6C(a1, 1);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      swift_errorRetain();
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v19;
      *v18 = v19;
      _os_log_impl(&_mh_execute_header, v15, v16, "Subscription error: %@", v17, 0xCu);
      sub_100006CAC(v18, &qword_100093F70, &qword_1000730D0);
    }

    return (*(v8 + 8))(v11, v7);
  }

  else
  {
    v21 = sub_10003915C();
    (*(v8 + 16))(v13, v21, v7);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v39[0] = v25;
      *v24 = 136315138;
      swift_beginAccess();
      v38 = v7;
      sub_100004890(0, &qword_1000937A0, CKSubscription_ptr);

      v26 = Array.description.getter();
      v28 = v27;

      v29 = sub_1000034B8(v26, v28, v39);

      *(v24 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v22, v23, "Successfully subscribed to %s", v24, 0xCu);
      sub_1000036EC(v25);

      (*(v8 + 8))(v13, v38);
    }

    else
    {

      (*(v8 + 8))(v13, v7);
    }

    result = swift_beginAccess();
    v30 = *(a4 + 16);
    if (v30 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      v31 = result;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v31)
      {
        return result;
      }
    }

    if (v31 < 1)
    {
      __break(1u);
    }

    else
    {

      v32 = 0;
      do
      {
        if ((v30 & 0xC000000000000001) != 0)
        {
          v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v33 = *(v30 + 8 * v32 + 32);
        }

        v34 = v33;
        ++v32;
        v35 = CKSubscription.subscriptionID.getter();
        v39[3] = &type metadata for Bool;
        LOBYTE(v39[0]) = 1;
        sub_1000173C8(2, v35, v36, v39);

        sub_100006CAC(v39, &qword_100092CB8, &qword_100072C40);
      }

      while (v31 != v32);
    }
  }

  return result;
}

uint64_t sub_10001BF80()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_10003915C();
  (*(v3 + 16))(v5, v6, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "CKAccountChanged notification received", v9, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v10 = type metadata accessor for Transaction();
  __chkstk_darwin(v10);
  *&v12[-32] = v1;
  *&v12[-24] = sub_100037A50;
  *&v12[-16] = v1;

  static Transaction.named<A>(_:with:)("com.apple.bluetoothuser.accountStatus", 37, 2, sub_100037A58);
}

uint64_t sub_10001C260(uint64_t a1, _BYTE *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v99 = &v92 - v10;
  v11 = __chkstk_darwin(v9);
  v98 = &v92 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v92 - v14;
  v16 = __chkstk_darwin(v13);
  v101 = &v92 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v92 - v19;
  v21 = __chkstk_darwin(v18);
  v97 = &v92 - v22;
  v23 = __chkstk_darwin(v21);
  v96 = &v92 - v24;
  __chkstk_darwin(v23);
  v26 = &v92 - v25;
  v27 = sub_10003915C();
  v28 = *(v5 + 16);
  v103 = v27;
  v102 = v5 + 16;
  v104 = v28;
  (v28)(v26);

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();

  v31 = os_log_type_enabled(v29, v30);
  v95 = v15;
  v94 = v20;
  v100 = v8;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v93 = v4;
    v33 = v32;
    *&aBlock = swift_slowAlloc();
    *v33 = 136315394;
    v34 = CKStringFromAccountStatus();
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v92 = v5;
    v36 = a2;
    v38 = v37;

    v39 = sub_1000034B8(v35, v38, &aBlock);

    *(v33 + 4) = v39;
    *(v33 + 12) = 2080;
    v40 = CKStringFromAccountStatus();
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    v44 = sub_1000034B8(v41, v43, &aBlock);
    a2 = v36;
    v5 = v92;

    *(v33 + 14) = v44;
    _os_log_impl(&_mh_execute_header, v29, v30, "iCloud Account Changed from %s -> %s", v33, 0x16u);
    swift_arrayDestroy();

    v4 = v93;
  }

  v45 = *(v5 + 8);
  v45(v26, v4);
  v46 = *&a2[OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_currentAccountStatus];
  *&a2[OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_currentAccountStatus] = a1;
  a2[OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_accountAvailable] = a1 == 1;
  if (a1 <= 1)
  {
    if (!a1)
    {
      v47 = v98;
      v104(v98, v103, v4);
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        v51 = "iCloud Account state cannot be determined!";
        goto LABEL_31;
      }

LABEL_32:

      return (v45)(v47, v4);
    }

    if (a1 != 1)
    {
LABEL_29:
      v47 = v100;
      v104(v100, v103, v4);
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        v51 = "Unknown CKAccountStatus!";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    v52 = v96;
    v104(v96, v103, v4);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&_mh_execute_header, v53, v54, "iCloud Account Available", v55, 2u);
    }

    result = (v45)(v52, v4);
    if (v46 != 1)
    {
      sub_10001D9E4(0);
      v57 = type metadata accessor for Transaction();
      __chkstk_darwin(v57);
      *(&v92 - 4) = a2;
      *(&v92 - 3) = sub_100037ACC;
      *(&v92 - 2) = a2;

      static Transaction.named<A>(_:with:)("com.apple.bluetoothuser.accountInfo", 35, 2, sub_100037AD8);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        v58 = v97;
        v104(v97, v103, v4);
        v59 = Logger.logObject.getter();
        v60 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          *v61 = 0;
          _os_log_impl(&_mh_execute_header, v59, v60, "iCloud Account not available due to restrictions!", v61, 2u);
        }

        v45(v58, v4);
        if (v46 == 2)
        {
          v62 = v94;
          v104(v94, v103, v4);
          v63 = Logger.logObject.getter();
          v64 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v63, v64))
          {
            v65 = swift_slowAlloc();
            *v65 = 0;
            v66 = "Account was already in .restricted state";
LABEL_25:
            _os_log_impl(&_mh_execute_header, v63, v64, v66, v65, 2u);
          }

LABEL_26:

          return (v45)(v62, v4);
        }

        break;
      case 3:
        break;
      case 4:
        v47 = v99;
        v104(v99, v103, v4);
        v48 = Logger.logObject.getter();
        v49 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          *v50 = 0;
          v51 = "iCloud Account temporarily unavailable!";
LABEL_31:
          _os_log_impl(&_mh_execute_header, v48, v49, v51, v50, 2u);

          goto LABEL_32;
        }

        goto LABEL_32;
      default:
        goto LABEL_29;
    }

    v67 = v101;
    v104(v101, v103, v4);
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&_mh_execute_header, v68, v69, "iCloud Account not available!", v70, 2u);
    }

    v71 = (v45)(v67, v4);
    if (v46 == 3)
    {
      v62 = v95;
      v104(v95, v103, v4);
      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        v66 = "Account was already in .noAccount state";
        goto LABEL_25;
      }

      goto LABEL_26;
    }

    v72 = *(*a2 + 264);
    v104 = a2;
    v72(v109, v71);
    v73 = v110;
    v113 = v110;
    v112 = v109[0];

    sub_100034994(&v112);
    v111 = v109[1];
    sub_100034994(&v111);
    sub_100006CAC(&v113, &qword_100094180, &qword_100074290);
    v74 = *(v73 + 16);
    if (v74)
    {
      v75 = (v73 + 40);
      do
      {
        v76 = *(v75 - 1);
        v77 = *v75;
        *&aBlock = 0;
        *(&aBlock + 1) = 0xE000000000000000;

        _StringGuts.grow(_:)(38);

        *&aBlock = 0xD000000000000024;
        *(&aBlock + 1) = 0x8000000100079F20;
        v78._countAndFlagsBits = v76;
        v78._object = v77;
        String.append(_:)(v78);

        v79 = aBlock;
        *(&v106 + 1) = &type metadata for Bool;
        LOBYTE(aBlock) = 1;
        sub_1000173C8(2, v79, *(&aBlock + 1), &aBlock);

        sub_100006CAC(&aBlock, &qword_100092CB8, &qword_100072C40);
        v75 += 2;
        --v74;
      }

      while (v74);
    }

    sub_100006CAC(&v113, &qword_100094180, &qword_100074290);
    v80 = v104;
    v81 = sub_100019AA4();
    v82 = [v81 privateCloudDatabase];

    v83 = sub_10001B9C8();
    v84 = CKSubscription.subscriptionID.getter();
    v86 = v85;

    v106 = 0u;
    aBlock = 0u;
    sub_1000173C8(2, v84, v86, &aBlock);

    sub_100006CAC(&aBlock, &qword_100092CB8, &qword_100072C40);
    *(v80 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_manateeAvailable) = 0;
    v87 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_pendingUpdateCloudRecords;
    swift_beginAccess();
    *(v80 + v87) = _swiftEmptyDictionarySingleton;

    v88 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_pendingDeletionCloudRecords;
    swift_beginAccess();
    *(v80 + v88) = _swiftEmptyDictionarySingleton;

    v89 = *(v80 + 9);
    v90 = swift_allocObject();
    *(v90 + 16) = sub_100037AC4;
    *(v90 + 24) = v80;
    v107 = sub_100038A58;
    v108 = v90;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v106 = sub_10001437C;
    *(&v106 + 1) = &unk_10008AA00;
    v91 = _Block_copy(&aBlock);

    dispatch_sync(v89, v91);
    _Block_release(v91);
    LOBYTE(v89) = swift_isEscapingClosureAtFileLocation();

    if (v89)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10001CFEC(uint64_t a1)
{
  v2 = sub_10000A45C(&qword_100093F40, &qword_1000730E0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = (v15 - v5);
  v7 = (*(*a1 + 288))(v4);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = *(v3 + 80);
    v15[1] = v7;
    v10 = v7 + ((v9 + 32) & ~v9);
    v11 = *(v3 + 72);
    do
    {
      sub_100006C44(v10, v6, &qword_100093F40, &qword_1000730E0);
      v12 = v6[3];
      v13 = v6[4];
      sub_1000078C8(v6, v12);
      (*(v13 + 32))(a1, v12, v13);
      sub_100006CAC(v6, &qword_100093F40, &qword_1000730E0);
      v10 += v11;
      --v8;
    }

    while (v8);
  }
}

void sub_10001D1B4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_10001D240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100019AA4();
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v11[4] = sub_100037A88;
  v11[5] = v9;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10001D96C;
  v11[3] = &unk_10008A960;
  v10 = _Block_copy(v11);

  [v8 accountStatusWithCompletionHandler:v10];
  _Block_release(v10);
}

uint64_t sub_10001D350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v50 = a4;
  v55 = a1;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v53 = *(v9 - 8);
  v54 = v9;
  __chkstk_darwin(v9);
  v11 = &v45[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for DispatchQoS();
  v51 = *(v12 - 8);
  v52 = v12;
  __chkstk_darwin(v12);
  v14 = &v45[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v45[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v21 = &v45[-v20];
  Transaction.capture()();
  if (a2)
  {
    v49 = a5;
    swift_errorRetain();
    v22 = sub_10003915C();
    (*(v16 + 16))(v21, v22, v15);
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v48 = a6;
      v27 = v26;
      *v25 = 138412290;
      swift_errorRetain();
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v28;
      *v27 = v28;
      _os_log_impl(&_mh_execute_header, v23, v24, "error fetching account status: %@", v25, 0xCu);
      sub_100006CAC(v27, &qword_100093F70, &qword_1000730D0);
      a6 = v48;
    }

    else
    {
    }

    (*(v16 + 8))(v21, v15);
    a5 = v49;
  }

  else
  {
    v29 = sub_10003915C();
    (*(v16 + 16))(v19, v29, v15);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v47 = v32;
      v48 = swift_slowAlloc();
      aBlock[0] = v48;
      *v32 = 136315138;
      v33 = a6;
      v34 = CKStringFromAccountStatus();
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = a5;
      v36 = v35;
      v46 = v31;
      v38 = v37;

      a6 = v33;
      v39 = sub_1000034B8(v36, v38, aBlock);

      v40 = v47;
      *(v47 + 1) = v39;
      a5 = v49;
      _os_log_impl(&_mh_execute_header, v30, v46, "Fetched CK account status: %s", v40, 0xCu);
      sub_1000036EC(v48);
    }

    (*(v16 + 8))(v19, v15);
  }

  v41 = swift_allocObject();
  v41[2] = a5;
  v41[3] = a6;
  v41[4] = v55;
  aBlock[4] = sub_100037A94;
  aBlock[5] = v41;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002410;
  aBlock[3] = &unk_10008A9B0;
  v42 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v56 = _swiftEmptyArrayStorage;
  sub_10000229C(&qword_100092D20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000A45C(&unk_1000931F0, &unk_100072C10);
  sub_10000FA34(&qword_100092D30, &unk_1000931F0, &unk_100072C10, &protocol conformance descriptor for [A]);
  v43 = v54;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v42);
  (*(v53 + 8))(v11, v43);
  (*(v51 + 8))(v14, v52);
}

void sub_10001D96C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_10001D9E4(int a1)
{
  v2 = v1;
  v81 = a1;
  v3 = type metadata accessor for DispatchPredicate();
  v89 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = (v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v86 = v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = v74 - v10;
  v12 = sub_10003915C();
  v13 = *(v7 + 16);
  v79 = v12;
  v80 = v7 + 16;
  v78 = v13;
  (v13)(v11);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  v16 = os_log_type_enabled(v14, v15);
  v84 = v7;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v87 = v17;
    v88 = swift_slowAlloc();
    *&v94[0] = v88;
    *v17 = 136315138;
    v18 = *(*v2 + 264);
    LODWORD(v85) = v15;
    v18(v91);
    v103 = v91[0];

    sub_100034994(&v103);
    v102 = v91[1];
    sub_100034994(&v102);

    v19 = v3;
    v20 = Array.description.getter();
    v22 = v21;

    v23 = v20;
    v3 = v19;
    v24 = sub_1000034B8(v23, v22, v94);

    v25 = v87;
    *(v87 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v14, v85, "setupZones: %s", v25, 0xCu);
    sub_1000036EC(v88);

    v26 = v84;
  }

  else
  {

    v26 = v7;
  }

  v27 = *(v26 + 8);
  v27(v11, v6);
  v28 = v2[8];
  *v5 = v28;
  v29 = v89;
  (v89[13])(v5, enum case for DispatchPredicate.notOnQueue(_:), v3);
  v83 = v28;
  LOBYTE(v28) = _dispatchPreconditionTest(_:)();
  (v29[1])(v5, v3);
  if (v28)
  {
    v77 = v27;
    v85 = v6;
    v82 = dispatch_group_create();
    v30 = (*v2 + 264);
    v31 = *v30;
    v88 = v2;
    v74[1] = v30;
    v75 = v31;
    v31(v92);
    v32 = v93;
    v101 = v93;
    v100 = v92[0];

    sub_100034994(&v100);
    v99 = v92[1];
    sub_100034994(&v99);
    sub_100006CAC(&v101, &qword_100094180, &qword_100074290);
    v33 = 0;
    v76 = 0;
    *&v94[0] = _swiftEmptyArrayStorage;
    v34 = *(v32 + 16);
    v35 = (v32 + 40);
    v87 = _swiftEmptyArrayStorage;
    v89 = (v32 + 40);
LABEL_6:
    v36 = &v35[2 * v33];
    while (v34 != v33)
    {
      if (v33 >= *(v32 + 16))
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      ++v33;
      v37 = v36 + 2;
      v38 = objc_allocWithZone(CKRecordZone);

      v39 = String._bridgeToObjectiveC()();

      v40 = [v38 initWithZoneName:v39];

      v36 = v37;
      if (v40)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*&v94[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v94[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v87 = *&v94[0];
        v35 = v89;
        goto LABEL_6;
      }
    }

    v41 = sub_100006CAC(&v101, &qword_100094180, &qword_100074290);
    v42 = &off_100091000;
    if (v81)
    {
      v75(v94, v41);
      v43 = v95;
      v98 = v95;
      v97 = v94[0];

      sub_100034994(&v97);
      v96 = v94[1];
      sub_100034994(&v96);
      sub_100006CAC(&v98, &qword_100094180, &qword_100074290);
      v44 = _swiftEmptyArrayStorage;
      v90 = _swiftEmptyArrayStorage;
      v45 = *(v43 + 16);
      if (v45)
      {
        v46 = 0;
        v89 = CKCurrentUserDefaultName;
        v47 = (v43 + 40);
        while (v46 < *(v43 + 16))
        {
          v48 = v43;
          v50 = *(v47 - 1);
          v49 = *v47;
          sub_100004890(0, &qword_100093758, CKRecordZoneID_ptr);
          v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v53 = v52;

          v54._countAndFlagsBits = v50;
          v54._object = v49;
          v55._countAndFlagsBits = v51;
          v55._object = v53;
          CKRecordZoneID.init(zoneName:ownerName:)(v54, v55);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          ++v46;
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v47 += 2;
          v43 = v48;
          if (v45 == v46)
          {
            LOBYTE(v44) = v90;
            v42 = &off_100091000;
            goto LABEL_21;
          }
        }

        goto LABEL_30;
      }

LABEL_21:
      sub_100006CAC(&v98, &qword_100094180, &qword_100074290);
      sub_100004890(0, &qword_100093770, CKModifyRecordZonesOperation_ptr);
      v104.value._rawValue = 0;
      v104.is_nil = v44;
      v56 = CKModifyRecordZonesOperation.init(recordZonesToSave:recordZoneIDsToDelete:)(v104, v106).super.super.super.super.isa;
      [(objc_class *)v56 setCallbackQueue:v83];
      v57 = sub_100019BDC();
      [(objc_class *)v56 setGroup:v57];

      v58 = v82;
      dispatch_group_enter(v82);
      v59 = swift_allocObject();
      *(v59 + 16) = v87;
      *(v59 + 24) = v58;

      v60 = v58;
      CKModifyRecordZonesOperation.modifyRecordZonesResultBlock.setter();
      if (qos_class_self() >= QOS_CLASS_USER_INITIATED)
      {
        [(objc_class *)v56 setQualityOfService:25];
      }

      v61 = sub_100019AA4();
      v62 = [v61 privateCloudDatabase];

      [v62 v42[356]];
    }

    sub_100004890(0, &qword_100093770, CKModifyRecordZonesOperation_ptr);
    v63 = v87;

    v105.is_nil = 0;
    v64 = CKModifyRecordZonesOperation.init(recordZonesToSave:recordZoneIDsToDelete:)(v105, v107).super.super.super.super.isa;
    [(objc_class *)v64 setCallbackQueue:v83];
    v65 = sub_100019BB8();
    [(objc_class *)v64 setGroup:v65];

    v66 = v82;
    dispatch_group_enter(v82);
    v67 = swift_allocObject();
    *(v67 + 16) = v63;
    *(v67 + 24) = v66;
    v68 = v66;
    CKModifyRecordZonesOperation.modifyRecordZonesResultBlock.setter();
    if (qos_class_self() >= QOS_CLASS_USER_INITIATED)
    {
      [(objc_class *)v64 setQualityOfService:25];
    }

    v69 = sub_100019AA4();
    v70 = [v69 privateCloudDatabase];

    [v70 v42[356]];
    v78(v86, v79, v85);
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&_mh_execute_header, v71, v72, "Waiting for all zone create tasks to complete.", v73, 2u);
    }

    v77(v86, v85);
    OS_dispatch_group.wait()();
    type metadata accessor for Transaction();
    static Transaction.named<A>(_:with:)("com.apple.bluetoothuser.setupCloudNotifications", 47, 2, sub_1000379A0);
  }

  else
  {
LABEL_31:
    __break(1u);
  }
}

void sub_10001E40C(uint64_t a1, char a2, uint64_t a3, NSObject *a4, const char *a5, const char *a6)
{
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v33 - v16;
  if (a2)
  {
    v18 = sub_10003915C();
    (*(v12 + 16))(v15, v18, v11);
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    sub_100036B6C(a1, 1);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      swift_errorRetain();
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v23;
      *v22 = v23;
      _os_log_impl(&_mh_execute_header, v19, v20, a6, v21, 0xCu);
      sub_100006CAC(v22, &qword_100093F70, &qword_1000730D0);
    }

    (*(v12 + 8))(v15, v11);
  }

  else
  {
    v24 = sub_10003915C();
    (*(v12 + 16))(v17, v24, v11);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = v33;
      *v27 = 136315138;
      sub_100004890(0, &qword_100093778, CKRecordZone_ptr);
      v28 = Array.description.getter();
      v30 = a5;
      v31 = a4;
      v32 = sub_1000034B8(v28, v29, &v34);

      *(v27 + 4) = v32;
      a4 = v31;
      _os_log_impl(&_mh_execute_header, v25, v26, v30, v27, 0xCu);
      sub_1000036EC(v33);
    }

    (*(v12 + 8))(v17, v11);
  }

  dispatch_group_leave(a4);
}

void sub_10001E748(void *a1, char a2, uint64_t a3)
{
  v120 = a3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v118 = v5;
  v119 = v6;
  v7 = __chkstk_darwin(v5);
  v112 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v106 - v9;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v106 - v17;
  v19 = __chkstk_darwin(v16);
  v110 = &v106 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = &v106 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v106 - v25;
  __chkstk_darwin(v24);
  v28 = &v106 - v27;
  v29 = sub_10003915C();
  v30 = *(v12 + 16);
  if (a2)
  {
    v30(v28, v29, v11);
    swift_errorRetain();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    sub_100008738(a1, 1);
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      swift_errorRetain();
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 4) = v35;
      *v34 = v35;
      _os_log_impl(&_mh_execute_header, v31, v32, "accountInfo error: %@", v33, 0xCu);
      sub_100006CAC(v34, &qword_100093F70, &qword_1000730D0);
    }

    (*(v12 + 8))(v28, v11);
    return;
  }

  v107 = v18;
  v113 = v29;
  v114 = v30;
  v115 = v12 + 16;
  (v30)(v26);
  v36 = a1;
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();
  sub_100008738(a1, 0);
  v39 = os_log_type_enabled(v37, v38);
  v111 = v11;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v117 = v12;
    v42 = v41;
    *v40 = 138412290;
    *(v40 + 4) = v36;
    *v41 = a1;
    v43 = v36;
    _os_log_impl(&_mh_execute_header, v37, v38, "accountInfo: %@", v40, 0xCu);
    sub_100006CAC(v42, &qword_100093F70, &qword_1000730D0);
    v12 = v117;

    v11 = v111;
  }

  v45 = *(v12 + 8);
  v44 = v12 + 8;
  v116 = v45;
  v45(v26, v11);
  if ([v36 accountStatus] == 1)
  {
    v46 = v11;
    v47 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_manateeAvailable;
    v48 = *(v120 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_manateeAvailable);
    v114(v23, v113, v46);
    v49 = v36;
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    v52 = os_log_type_enabled(v50, v51);
    v117 = v44;
    if (v52)
    {
      v53 = swift_slowAlloc();
      *v53 = 67109120;
      *(v53 + 4) = [v49 supportsDeviceToDeviceEncryption];
      sub_100008738(a1, 0);
      _os_log_impl(&_mh_execute_header, v50, v51, "Setting manateeAvailable to %{BOOL}d", v53, 8u);
    }

    else
    {
      sub_100008738(a1, 0);
    }

    v116(v23, v111);
    v57 = [v49 supportsDeviceToDeviceEncryption];
    v58 = v120;
    *(v120 + v47) = v57;
    v59 = *(v58 + 72);
    v60 = swift_allocObject();
    *(v60 + 16) = sub_100037D00;
    *(v60 + 24) = v58;
    v124 = sub_100038A58;
    v125 = v60;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v123 = sub_10001437C;
    *(&v123 + 1) = &unk_10008AAA0;
    v61 = _Block_copy(&aBlock);

    dispatch_sync(v59, v61);
    _Block_release(v61);
    LOBYTE(v59) = swift_isEscapingClosureAtFileLocation();

    if (v59)
    {
LABEL_38:
      __break(1u);
      return;
    }

    if ((v48 & 1) != 0 || ![v49 supportsDeviceToDeviceEncryption])
    {
      notify_post("com.apple.bluetoothuser.cloudChanged");

      return;
    }

    v62 = v120;
    v109 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_tokenDirectory;
    v63 = v112;
    URL.appendingPathComponent(_:isDirectory:)();
    URL.appendingPathComponent(_:)();
    v64 = v118;
    v65 = v119 + 8;
    v66 = *(v119 + 8);
    v66(v63, v118);
    v106 = sub_100034A48(v10);
    v119 = v65;
    v112 = v66;
    v67 = (v66)(v10, v64);
    (*(*v62 + 264))(&aBlock, v67);
    v68 = v124;
    v128[0] = v124;
    v127 = aBlock;

    sub_100034994(&v127);
    v126 = v123;
    sub_100034994(&v126);
    sub_100006CAC(v128, &qword_100094180, &qword_100074290);
    v69 = *(v68 + 2);
    if (v69)
    {
      v70 = 0;
      v71 = (v68 + 40);
      v108 = CKCurrentUserDefaultName;
      while (v70 < *(v68 + 2))
      {
        v73 = *(v71 - 1);
        v72 = *v71;
        sub_100004890(0, &qword_100093758, CKRecordZoneID_ptr);
        v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v76 = v75;

        v77._countAndFlagsBits = v73;
        v77._object = v72;
        v78._countAndFlagsBits = v74;
        v78._object = v76;
        isa = CKRecordZoneID.init(zoneName:ownerName:)(v77, v78).super.isa;
        URL.appendingPathComponent(_:isDirectory:)();
        v80._countAndFlagsBits = 0x65746176697250;
        v80._object = 0xE700000000000000;
        URL.appendPathComponent(_:)(v80);
        v81 = [(objc_class *)isa ownerName];
        v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v84 = v83;

        v85._countAndFlagsBits = v82;
        v85._object = v84;
        URL.appendPathComponent(_:)(v85);

        v86 = [(objc_class *)isa zoneName];
        v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v89 = v88;

        v121._countAndFlagsBits = v87;
        v121._object = v89;
        v90._countAndFlagsBits = 0x6E656B6F742ELL;
        v90._object = 0xE600000000000000;
        String.append(_:)(v90);
        URL.appendPathComponent(_:)(v121);

        v91 = sub_100034A48(v10);
        (v112)(v10, v118);
        v92 = v91 == 0;
        if (v91)
        {
          ++v70;

          v71 += 2;
          if (v69 != v70)
          {
            continue;
          }
        }

        goto LABEL_26;
      }

      __break(1u);
      goto LABEL_38;
    }

    v92 = 0;
LABEL_26:
    sub_100006CAC(v128, &qword_100094180, &qword_100074290);
    v93 = v110;
    v94 = v111;
    v114(v110, v113, v111);
    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&_mh_execute_header, v95, v96, "Manatee PCS keys are now available", v97, 2u);
    }

    v116(v93, v94);
    v98 = v106;
    if (v106)
    {
      v99 = v92;
    }

    else
    {
      v99 = 1;
    }

    if ((v99 & 1) != 0 || (v100 = sub_1000694AC(), swift_beginAccess(), *v100 == 1))
    {
      v114(v107, v113, v94);
      v101 = Logger.logObject.getter();
      v102 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v101, v102))
      {
        v103 = swift_slowAlloc();
        *v103 = 0;
        _os_log_impl(&_mh_execute_header, v101, v102, "Fetching from cloud container", v103, 2u);
      }

      v116(v107, v94);
      v104 = v120;
      v105 = *(*v120 + 848);

      v105(2, 0, sub_100037D08, v104);
    }

    else
    {
      notify_post("com.apple.bluetoothuser.cloudChanged");
    }
  }

  else
  {
    v114(v15, v113, v11);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&_mh_execute_header, v54, v55, "Account not available", v56, 2u);
    }

    v116(v15, v11);
  }
}

uint64_t sub_10001F430(uint64_t a1)
{
  v2 = sub_10000A45C(&qword_100093F40, &qword_1000730E0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = (&v14 - v5);
  v7 = (*(*a1 + 288))(v4);
  v8 = *(v7 + 16);
  if (v8)
  {
    v14 = v7;
    v15 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_manateeAvailable;
    v9 = v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_100006C44(v9, v6, &qword_100093F40, &qword_1000730E0);
      v11 = v6[3];
      v12 = v6[4];
      sub_1000078C8(v6, v11);
      (*(v12 + 24))(a1, *(a1 + v15), v11, v12);
      sub_100006CAC(v6, &qword_100093F40, &qword_1000730E0);
      v9 += v10;
      --v8;
    }

    while (v8);
  }
}

uint64_t sub_10001F608(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.appendingPathComponent(_:isDirectory:)();
  if (a1 != 3 && a1 != 2 && a1 != 1)
  {
    v10 = sub_10003915C();
    (*(v3 + 16))(v5, v10, v2);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Unknown CKDatabase.Scope!", v13, 2u);
    }

    (*(v3 + 8))(v5, v2);
  }

  URL.appendingPathComponent(_:)();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_10001F8BC(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.appendingPathComponent(_:isDirectory:)();
  if (a1 == 3)
  {
    v8 = 0x646572616853;
    v9 = 0xE600000000000000;
    goto LABEL_11;
  }

  if (a1 == 2)
  {
    v8 = 0x65746176697250;
LABEL_10:
    v9 = 0xE700000000000000;
    goto LABEL_11;
  }

  if (a1 != 1)
  {
    v10 = sub_10003915C();
    (*(v5 + 16))(v7, v10, v4);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Unknown CKDatabase.Scope!", v13, 2u);
    }

    (*(v5 + 8))(v7, v4);
    v8 = 0x6E776F6E6B6E55;
    goto LABEL_10;
  }

  v8 = 0x63696C627550;
  v9 = 0xE600000000000000;
LABEL_11:
  URL.appendPathComponent(_:)(*&v8);
  v14 = [a2 ownerName];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18._countAndFlagsBits = v15;
  v18._object = v17;
  URL.appendPathComponent(_:)(v18);

  v19 = [a2 zoneName];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v25._countAndFlagsBits = v20;
  v25._object = v22;
  v23._countAndFlagsBits = 0x6E656B6F742ELL;
  v23._object = 0xE600000000000000;
  String.append(_:)(v23);
  URL.appendPathComponent(_:)(v25);
}

void sub_10001FB74(uint64_t a1, char a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  if (a2)
  {
    v11 = sub_10003915C();
    (*(v5 + 16))(v10, v11, v4);
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    sub_100036B6C(a1, 1);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&_mh_execute_header, v12, v13, "Error from fetchChanges: %@", v14, 0xCu);
      sub_100006CAC(v15, &qword_100093F70, &qword_1000730D0);
    }

    (*(v5 + 8))(v10, v4);
    sub_100026830(a1, 1);
  }

  else
  {
    v17 = sub_10003915C();
    (*(v5 + 16))(v8, v17, v4);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "fetchChanges succeeded", v20, 2u);
    }

    (*(v5 + 8))(v8, v4);
  }
}

void sub_10001FE30(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v32 - v13;
  __chkstk_darwin(v12);
  v16 = &v32 - v15;
  if (a1 == 1)
  {
    v23 = sub_10003915C();
    (*(v8 + 16))(v14, v23, v7);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "NOT USING PUBLIC DB", v26, 2u);
    }

    (*(v8 + 8))(v14, v7);
    goto LABEL_16;
  }

  if (a1 == 3)
  {
    v19 = sub_10003915C();
    (*(v8 + 16))(v16, v19, v7);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "NOT USING SHARED DB", v22, 2u);
    }

    (*(v8 + 8))(v16, v7);
    goto LABEL_16;
  }

  if (a1 != 2)
  {
    v27 = sub_10003915C();
    (*(v8 + 16))(v11, v27, v7);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Unknown CKDatabase.Scope!", v30, 2u);
    }

    (*(v8 + 8))(v11, v7);
LABEL_16:
    sub_100034DB0();
    swift_allocError();
    *v31 = 1;
    a3();

    return;
  }

  v17 = sub_100019AA4();
  v33 = [v17 privateCloudDatabase];

  sub_100034E04(v33, a3, a4);
  v18 = v33;
}

void sub_1000201E4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v66 = a4;
  v64 = a3;
  v6 = type metadata accessor for Logger();
  v71 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v70 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v57 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = swift_allocObject();
  *(v69 + 16) = _swiftEmptyArrayStorage;
  v68 = swift_allocObject();
  *(v68 + 16) = _swiftEmptyArrayStorage;
  sub_10001F608([a2 scope]);
  v15 = sub_100034A48(v14);
  (*(v12 + 8))(v14, v11);
  v16 = [objc_allocWithZone(CKFetchDatabaseChangesOperation) initWithPreviousServerChangeToken:v15];
  v65 = a1;
  v17 = sub_100019D5C();
  [v16 setGroup:v17];

  [v16 setFetchAllChanges:1];
  v18 = sub_10003915C();
  v19 = *(v71 + 16);
  v62 = v71 + 16;
  v63 = v18;
  v20 = v6;
  v61 = v19;
  (v19)(v10);
  v21 = a2;
  v67 = v15;
  v22 = v15;
  v60 = v10;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v59 = v20;
    v26 = v22;
    v27 = v25;
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    aBlock = v29;
    *v27 = 136315394;
    [v21 scope];
    v30 = CKDatabaseScopeString();
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v21;
    v32 = v31;
    v34 = v33;

    v35 = sub_1000034B8(v32, v34, &aBlock);

    *(v27 + 4) = v35;
    *(v27 + 12) = 2112;
    *(v27 + 14) = v26;
    *v28 = v67;
    v36 = v26;
    _os_log_impl(&_mh_execute_header, v23, v24, "Old %s database change token: %@", v27, 0x16u);
    sub_100006CAC(v28, &qword_100093F70, &qword_1000730D0);

    sub_1000036EC(v29);

    v22 = v26;
    v37 = v58;
    v38 = v59;

    v20 = v38;
    (*(v71 + 8))(v60, v38);
  }

  else
  {

    (*(v71 + 8))(v60, v20);
    v37 = v21;
  }

  v39 = v69;
  v76 = sub_100038278;
  v77 = v69;
  aBlock = _NSConcreteStackBlock;
  v73 = 1107296256;
  v74 = sub_100038ADC;
  v75 = &unk_10008AD70;
  v40 = _Block_copy(&aBlock);

  [v16 setRecordZoneWithIDChangedBlock:v40];
  _Block_release(v40);
  v41 = v68;
  v76 = sub_100038280;
  v77 = v68;
  aBlock = _NSConcreteStackBlock;
  v73 = 1107296256;
  v74 = sub_100038ADC;
  v75 = &unk_10008AD98;
  v42 = _Block_copy(&aBlock);

  [v16 setRecordZoneWithIDWasDeletedBlock:v42];
  _Block_release(v42);
  v43 = swift_allocObject();
  *(v43 + 16) = v37;
  v76 = sub_100038328;
  v77 = v43;
  aBlock = _NSConcreteStackBlock;
  v73 = 1107296256;
  v74 = sub_100038ADC;
  v75 = &unk_10008ADE8;
  v44 = _Block_copy(&aBlock);
  v45 = v37;

  [v16 setChangeTokenUpdatedBlock:v44];
  _Block_release(v44);
  v46 = swift_allocObject();
  v47 = v64;
  v46[2] = v65;
  v46[3] = v47;
  v48 = v67;
  v46[4] = v66;
  v46[5] = v45;
  v46[6] = v41;
  v46[7] = v39;
  v46[8] = v48;
  v49 = v45;
  v50 = v22;

  CKFetchDatabaseChangesOperation.fetchDatabaseChangesResultBlock.setter();
  v61(v70, v63, v20);
  v51 = v16;
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *v54 = 138412290;
    *(v54 + 4) = v51;
    *v55 = v51;
    v56 = v51;
    _os_log_impl(&_mh_execute_header, v52, v53, "Adding Cloud operation %@", v54, 0xCu);
    sub_100006CAC(v55, &qword_100093F70, &qword_1000730D0);
  }

  (*(v71 + 8))(v70, v20);
  [v49 addOperation:v51];
}

uint64_t sub_100020998(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v8 = a1;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v9 = sub_10003915C();
  (*(v5 + 16))(v7, v9, v4);
  v10 = v8;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v10;
    *v14 = v10;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v11, v12, "Record Zone ID Changed: %@", v13, 0xCu);
    sub_100006CAC(v14, &qword_100093F70, &qword_1000730D0);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100020BCC(void *a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10003915C();
  (*(v5 + 16))(v7, v8, v4);
  v9 = a2;
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = v24;
    *v13 = 136315394;
    [v9 scope];
    v15 = CKDatabaseScopeString();
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v4;
    v18 = v17;

    v19 = sub_1000034B8(v16, v18, &v25);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2112;
    *(v13 + 14) = v10;
    *v14 = v10;
    v20 = v10;
    _os_log_impl(&_mh_execute_header, v11, v12, "Change token updated, database, %s, token, %@", v13, 0x16u);
    sub_100006CAC(v14, &qword_100093F70, &qword_1000730D0);

    sub_1000036EC(v24);

    return (*(v5 + 8))(v7, v23);
  }

  else
  {

    return (*(v5 + 8))(v7, v4);
  }
}

void sub_100020E38(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_100020EA0(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void *, uint64_t), uint64_t (*a5)(void *, uint64_t), void **a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v167 = a8;
  v168 = a3;
  v172 = a6;
  v151 = a4;
  v159 = type metadata accessor for URL();
  v150 = *(v159 - 8);
  v13 = __chkstk_darwin(v159);
  v148 = &v140[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __chkstk_darwin(v13);
  v17 = &v140[-v16];
  v147 = v18;
  __chkstk_darwin(v15);
  v160 = &v140[-v19];
  v20 = type metadata accessor for Logger();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v171 = &v140[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = __chkstk_darwin(v22);
  v164 = &v140[-v25];
  v26 = __chkstk_darwin(v24);
  v163 = &v140[-v27];
  v28 = __chkstk_darwin(v26);
  v165 = &v140[-v29];
  v30 = __chkstk_darwin(v28);
  v32 = &v140[-v31];
  __chkstk_darwin(v30);
  v34 = &v140[-v33];
  v35 = sub_10003915C();
  v36 = *(v21 + 16);
  v158 = v20;
  if ((a2 & 0x100) != 0)
  {
    v36(v34, v35, v20);
    swift_errorRetain();
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();
    sub_100038374(a1, a2, 1);
    v72 = os_log_type_enabled(v70, v71);
    v73 = v151;
    if (v72)
    {
      v74 = v21;
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      *v75 = 138412290;
      swift_errorRetain();
      v77 = _swift_stdlib_bridgeErrorToNSError();
      *(v75 + 4) = v77;
      *v76 = v77;
      _os_log_impl(&_mh_execute_header, v70, v71, "Error during fetch database changes operation: %@", v75, 0xCu);
      sub_100006CAC(v76, &qword_100093F70, &qword_1000730D0);

      v21 = v74;
    }

    (*(v21 + 8))(v34, v158);
    sub_100026830(a1, 0);
    return v73(a1, 1);
  }

  v173 = v21;
  v145 = a5;
  v162 = a7;
  v169 = a7 + 16;
  v154 = v21 + 16;
  v155 = v35;
  v153 = v36;
  (v36)(v32);
  sub_100038368(a1, a2, 0);
  v37 = v172;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();

  sub_100038374(a1, a2, 0);
  v40 = os_log_type_enabled(v38, v39);
  v166 = v17;
  v170 = v37;
  v146 = a1;
  v141 = a2;
  if (v40)
  {
    v41 = swift_slowAlloc();
    LODWORD(v161) = v39;
    v42 = v41;
    v43 = swift_slowAlloc();
    v172 = swift_slowAlloc();
    v175 = v172;
    *v42 = 67109634;
    *(v42 + 4) = a2 & 1;
    *(v42 + 8) = 2080;
    [v37 scope];
    v44 = CKDatabaseScopeString();
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;

    v48 = sub_1000034B8(v45, v47, &v175);

    *(v42 + 10) = v48;
    *(v42 + 18) = 2112;
    *(v42 + 20) = a1;
    *v43 = a1;
    v49 = a1;
    _os_log_impl(&_mh_execute_header, v38, v161, "Fetch database changes complete, moreComing %{BOOL}d, database, %s, token, %@", v42, 0x1Cu);
    sub_100006CAC(v43, &qword_100093F70, &qword_1000730D0);
    v17 = v166;

    sub_1000036EC(v172);
  }

  v50 = v173;
  v152 = *(v173 + 8);
  v152(v32, v20);
  v51 = v167;
  v52 = v20;
  v53 = v169;
  swift_beginAccess();
  v54 = v171;
  v55 = v162;
  if (*v53 >> 62)
  {
    goto LABEL_79;
  }

  for (i = *((*v53 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v57 = v170;
    v58 = &off_100091000;
    if (i)
    {
      v59 = v165;
      v153(v165, v155, v52);

      v52 = v55;
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v60, v61))
      {
        v52 = v59;
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v175 = v63;
        *v62 = 136315138;
        swift_beginAccess();
        sub_100004890(0, &qword_100093758, CKRecordZoneID_ptr);

        v64 = Array.description.getter();
        v66 = v65;

        v67 = v64;
        v53 = v169;
        v68 = sub_1000034B8(v67, v66, &v175);
        v17 = v166;

        *(v62 + 4) = v68;
        _os_log_impl(&_mh_execute_header, v60, v61, "Cloud zone deleted: %s", v62, 0xCu);
        sub_1000036EC(v63);
        v58 = &off_100091000;

        v69 = v52;
      }

      else
      {

        v69 = v59;
      }

      v152(v69, v158);
      v54 = v168;
      v79 = v168[9];
      v80 = swift_allocObject();
      *(v80 + 16) = v54;
      *(v80 + 24) = v53;
      v51 = swift_allocObject();
      *(v51 + 16) = sub_100038380;
      *(v51 + 24) = v80;
      v144 = v80;
      v179 = sub_100038A58;
      v180 = v51;
      v175 = _NSConcreteStackBlock;
      v176 = 1107296256;
      v177 = sub_10001437C;
      v178 = &unk_10008AE88;
      v50 = _Block_copy(&v175);

      dispatch_sync(v79, v50);
      _Block_release(v50);
      LOBYTE(v79) = swift_isEscapingClosureAtFileLocation();

      if (v79)
      {
        __break(1u);
LABEL_87:
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      }

      v81 = v163;
      v153(v163, v155, v158);
      v82 = Logger.logObject.getter();
      v83 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        *v84 = 0;
        _os_log_impl(&_mh_execute_header, v82, v83, "Re-Setup Zones", v84, 2u);
      }

      v50 = v173;
      v152(v81, v158);
      sub_10001D9E4(0);
      v143 = sub_100038380;
      v51 = v167;
      v54 = v171;
      v53 = v169;
    }

    else
    {
      v143 = 0;
      v144 = 0;
    }

    swift_beginAccess();
    if (*v53 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_26;
      }
    }

    else if (!*((*v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_26;
    }

    swift_beginAccess();
    v85 = *(v51 + 16);
    if (v85 >> 62)
    {
      goto LABEL_87;
    }

    if (!*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_26;
    }

LABEL_22:
    if (!a9)
    {
      v153(v164, v155, v158);
      v86 = Logger.logObject.getter();
      v87 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        *v88 = 0;
        _os_log_impl(&_mh_execute_header, v86, v87, "New Account Setup Zones", v88, 2u);
        v50 = v173;
      }

      v152(v164, v158);
      sub_10001D9E4(0);
      v51 = v167;
    }

LABEL_26:
    v89 = *(*v168 + 264);
    v164 = (*v168 + 264);
    v165 = v89;
    v89(v181);
    v90 = v182;
    v189[0] = v182;
    v55 = v181;
    v188 = v181[0];

    sub_100034994(&v188);
    v187 = v181[1];
    sub_100034994(&v187);
    sub_100006CAC(v189, &qword_100094180, &qword_100074290);
    v162 = *(v90 + 16);
    v163 = v90;
    if (v162)
    {
      v161 = v163 + 32;
      swift_beginAccess();
      v53 = 0;
      v149 = v50 + 8;
      v156 = (v150 + 8);
      v157 = CKCurrentUserDefaultName;
      *&v91 = 136315138;
      v142 = v91;
      while (v53 < *(v163 + 2))
      {
        v92 = &v161[16 * v53];
        v17 = v92[1];
        v173 = *v92;
        v55 = *(v51 + 16);
        v172 = (v55 & 0xFFFFFFFFFFFFFF8);
        if (v55 >> 62)
        {
          v51 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v51 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v169 = ++v53;

        v93 = 0;
        while (v51 != v93)
        {
          if ((v55 & 0xC000000000000001) != 0)
          {
            v94 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v93 >= v172[2])
            {
              goto LABEL_75;
            }

            v94 = *(v55 + 8 * v93 + 32);
          }

          v52 = v94;
          if (__OFADD__(v93, 1))
          {
            __break(1u);
LABEL_75:
            __break(1u);
            goto LABEL_76;
          }

          v95 = [v94 zoneName];
          v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v50 = v97;

          v98 = v96 == v173 && v50 == v17;
          if (v98)
          {

            v17 = v166;
            v51 = v167;
            v57 = v170;
            v54 = v171;
            v53 = v169;
            goto LABEL_29;
          }

          v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

          ++v93;
          v54 = v171;
          if (v53)
          {

            v17 = v166;
            v51 = v167;
            v53 = v169;
            v57 = v170;
            goto LABEL_29;
          }
        }

        sub_100004890(0, &qword_100093758, CKRecordZoneID_ptr);
        v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v101 = v100;

        v102._countAndFlagsBits = v173;
        v102._object = v17;
        v103._countAndFlagsBits = v99;
        v103._object = v101;
        v104.super.isa = CKRecordZoneID.init(zoneName:ownerName:)(v102, v103).super.isa;
        v57 = v170;
        v105 = [v170 scope];
        v50 = v160;
        v55 = v168;
        sub_10001F8BC(v105, v104.super.isa);
        v106 = sub_100034A48(v50);
        if (v106)
        {
          v107 = v106;

          v17 = v166;
          v51 = v167;
          v53 = v169;
        }

        else
        {
          v52 = v158;
          v153(v54, v155, v158);

          v108 = Logger.logObject.getter();
          v109 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v108, v109))
          {
            v50 = swift_slowAlloc();
            v110 = swift_slowAlloc();
            v175 = v110;
            *v50 = v142;
            v111 = sub_1000034B8(v173, v17, &v175);

            *(v50 + 4) = v111;
            v54 = v171;
            _os_log_impl(&_mh_execute_header, v108, v109, "Adding fetch operation for new zone: %s", v50, 0xCu);
            sub_1000036EC(v110);
          }

          else
          {
          }

          v152(v54, v52);
          v53 = v169;
          v112 = v167;
          swift_beginAccess();
          v113 = v104.super.isa;
          v51 = v112;
          v107 = v113;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v17 = v166;
          if (*((*(v51 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v51 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v51 = v167;
          }

          v55 = v51 + 16;
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_endAccess();
        }

        (*v156)(v160, v159);
LABEL_29:
        v58 = &off_100091000;
        if (v53 == v162)
        {
          goto LABEL_56;
        }
      }

      goto LABEL_78;
    }

LABEL_56:
    sub_100006CAC(v189, &qword_100094180, &qword_100074290);
    swift_beginAccess();
    v50 = *(v51 + 16);
    v174 = _swiftEmptyArrayStorage;
    v53 = v50 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v53)
    {
      break;
    }

    v17 = 0;
    v51 = 0;
    v172 = (v50 & 0xFFFFFFFFFFFFFF8);
    v173 = v50 & 0xC000000000000001;
    v171 = v50;
    v169 = v53;
    while (1)
    {
      if (v173)
      {
        v114 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v17 >= v172[2])
        {
          goto LABEL_77;
        }

        v114 = *(v50 + 8 * v17 + 32);
      }

      v115 = v114;
      v116 = v17 + 1;
      v55 = v168;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      v165(v183);
      v55 = v184;
      v186 = v183[0];

      sub_100034994(&v186);
      v185 = v183[1];
      sub_100034994(&v185);

      v117 = [v115 zoneName];
      v118 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v119;

      v54 = v140;
      v175 = v118;
      v176 = v52;
      __chkstk_darwin(v120);
      *&v140[-16] = &v175;
      LOBYTE(v117) = sub_1000225A4(sub_100038AF4, &v140[-32], v55);

      if (v117)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v55 = &v174;
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      v57 = v170;
      v50 = v171;
      v53 = v169;
      ++v17;
      v98 = v116 == v169;
      v58 = &off_100091000;
      if (v98)
      {
        v121 = v174;
        v17 = v166;
        v51 = v167;
        goto LABEL_71;
      }
    }

LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    ;
  }

  v121 = _swiftEmptyArrayStorage;
LABEL_71:

  swift_beginAccess();
  *(v51 + 16) = v121;

  sub_10001F608([v57 v58[336]]);
  swift_beginAccess();
  v122 = *(v51 + 16);
  if (v122 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_84;
    }

LABEL_73:
    swift_beginAccess();
    v123 = *(v51 + 16);
    v124 = v150;
    v125 = v148;
    v126 = v17;
    v127 = v159;
    (*(v150 + 16))(v148, v126, v159);
    v128 = (*(v124 + 80) + 32) & ~*(v124 + 80);
    v129 = (v147 + v128 + 7) & 0xFFFFFFFFFFFFFFF8;
    v130 = swift_allocObject();
    v131 = v168;
    v132 = v146;
    *(v130 + 16) = v168;
    *(v130 + 24) = v132;
    (*(v124 + 32))(v130 + v128, v125, v127);
    v133 = (v130 + v129);
    v134 = v145;
    *v133 = v151;
    v133[1] = v134;
    v135 = *(*v131 + 864);
    sub_100038368(v132, v141, 0);

    v135(v170, v123, sub_1000383E0, v130);

    (*(v124 + 8))(v166, v127);
    return sub_100008364(v143, v144);
  }

  else
  {
    if (*((v122 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_73;
    }

LABEL_84:
    sub_1000351D8(v146, v17);
    v136 = v168;
    v137 = v168[9];
    v138 = swift_allocObject();
    *(v138 + 16) = sub_100038494;
    *(v138 + 24) = v136;
    v179 = sub_100038A58;
    v180 = v138;
    v175 = _NSConcreteStackBlock;
    v176 = 1107296256;
    v177 = sub_10001437C;
    v178 = &unk_10008AF00;
    v139 = _Block_copy(&v175);

    dispatch_sync(v137, v139);
    _Block_release(v139);
    LOBYTE(v137) = swift_isEscapingClosureAtFileLocation();

    if (v137)
    {
      __break(1u);
    }

    else
    {
      v151(0, 0);
      (*(v150 + 8))(v17, v159);
      sub_100008364(v143, v144);
    }
  }

  return result;
}

uint64_t sub_1000223A4(uint64_t a1, uint64_t *a2)
{
  v21 = a2;
  v3 = sub_10000A45C(&qword_100093F40, &qword_1000730E0);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = (v18 - v6);
  v8 = (*(*a1 + 288))(v5);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v18[1] = v8;
    v11 = v8 + v10;
    swift_beginAccess();
    v12 = *(v4 + 72);
    v19 = a1;
    v20 = v12;
    do
    {
      sub_100006C44(v11, v7, &qword_100093F40, &qword_1000730E0);
      v14 = v7[3];
      v13 = v7[4];
      sub_1000078C8(v7, v14);
      v15 = *v21;
      v16 = *(v13 + 16);

      v16(v19, v15, v14, v13);

      sub_100006CAC(v7, &qword_100093F40, &qword_1000730E0);
      v11 += v20;
      --v9;
    }

    while (v9);
  }
}

uint64_t sub_1000225A4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void *sub_100022650(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = sub_10000A45C(&qword_100093F40, &qword_1000730E0);
  v25 = *(v7 - 8);
  v8 = __chkstk_darwin(v7 - 8);
  v24 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v12 = v21 - v11;
  v23 = *(a3 + 16);
  if (v23)
  {
    v13 = 0;
    v14 = _swiftEmptyArrayStorage;
    v21[1] = a2;
    v22 = a3;
    v21[0] = a1;
    while (v13 < *(a3 + 16))
    {
      v15 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v16 = *(v25 + 72);
      sub_100006C44(a3 + v15 + v16 * v13, v12, &qword_100093F40, &qword_1000730E0);
      v17 = a1(v12);
      if (v3)
      {
        sub_100006CAC(v12, &qword_100093F40, &qword_1000730E0);

        goto LABEL_15;
      }

      if (v17)
      {
        sub_100035FF0(v12, v24, &qword_100093F40, &qword_1000730E0);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100032294(0, v14[2] + 1, 1);
          v14 = v26;
        }

        v20 = v14[2];
        v19 = v14[3];
        if (v20 >= v19 >> 1)
        {
          sub_100032294((v19 > 1), v20 + 1, 1);
          v14 = v26;
        }

        v14[2] = v20 + 1;
        result = sub_100035FF0(v24, v14 + v15 + v20 * v16, &qword_100093F40, &qword_1000730E0);
        a3 = v22;
        a1 = v21[0];
      }

      else
      {
        result = sub_100006CAC(v12, &qword_100093F40, &qword_1000730E0);
      }

      if (v23 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
LABEL_15:

    return v14;
  }

  return result;
}

uint64_t sub_1000228D4(uint64_t a1, int a2, void *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, void), void *a6)
{
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v30[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v18 = &v30[-v17];
  if (a2)
  {
    v32 = a6;
    v19 = sub_10003915C();
    (*(v13 + 16))(v18, v19, v12);
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    sub_100036B6C(a1, 1);
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      swift_errorRetain();
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v24;
      *v23 = v24;
      _os_log_impl(&_mh_execute_header, v20, v21, "Database Error from fetchZoneChanges: %@", v22, 0xCu);
      sub_100006CAC(v23, &qword_100093F70, &qword_1000730D0);
    }

    (*(v13 + 8))(v18, v12);
  }

  else
  {
    v32 = a3;
    v25 = sub_10003915C();
    (*(v13 + 16))(v16, v25, v12);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v31 = a2;
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Database fetchZoneChanges succeeded", v28, 2u);
      LOBYTE(a2) = v31;
    }

    (*(v13 + 8))(v16, v12);
    sub_1000351D8(v32, a4);
  }

  return a5(a1, a2 & 1);
}

uint64_t sub_100022BDC(uint64_t a1)
{
  v2 = sub_10000A45C(&qword_100093F40, &qword_1000730E0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = (&v14 - v5);
  v7 = (*(*a1 + 288))(v4);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    v14 = v7;
    v15 = v10;
    do
    {
      sub_100006C44(v9, v6, &qword_100093F40, &qword_1000730E0);
      v11 = v6[3];
      v12 = v6[4];
      sub_1000078C8(v6, v11);
      (*(v12 + 8))(a1, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v11, v12);
      sub_100006CAC(v6, &qword_100093F40, &qword_1000730E0);
      v9 += v15;
      --v8;
    }

    while (v8);
  }
}

uint64_t sub_100022DB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a3;
  v26 = a4;
  v24 = a1;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v27 = *(v9 - 8);
  v28 = v9;
  __chkstk_darwin(v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004890(0, &qword_100092CC0, OS_dispatch_queue_ptr);
  (*(v13 + 104))(v15, enum case for DispatchQoS.QoSClass.default(_:), v12);
  v16 = static OS_dispatch_queue.global(qos:)();
  (*(v13 + 8))(v15, v12);
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = v4;
  v19 = v24;
  v18 = v25;
  v17[4] = v24;
  v17[5] = v18;
  v17[6] = v26;
  aBlock[4] = sub_100035C9C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002410;
  aBlock[3] = &unk_10008A1A0;
  v20 = _Block_copy(aBlock);

  v21 = v19;

  static DispatchQoS.unspecified.getter();
  v30 = _swiftEmptyArrayStorage;
  sub_10000229C(&qword_100092D20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000A45C(&unk_1000931F0, &unk_100072C10);
  sub_10000FA34(&qword_100092D30, &unk_1000931F0, &unk_100072C10, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v29 + 8))(v8, v6);
  (*(v27 + 8))(v11, v28);
}

void sub_100023194(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v103 = a4;
  v118 = a3;
  v119 = a2;
  v117 = type metadata accessor for URL();
  v7 = *(v117 - 8);
  __chkstk_darwin(v117);
  v110 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v102 - v15;
  v17 = __chkstk_darwin(v14);
  v106 = &v102 - v18;
  __chkstk_darwin(v17);
  v20 = &v102 - v19;
  v21 = sub_10003915C();
  v22 = *(v10 + 16);
  v121 = v21;
  v122 = v10 + 16;
  v126 = v9;
  v120 = v22;
  (v22)(v20);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  v25 = os_log_type_enabled(v23, v24);
  v111 = a1;
  v105 = v13;
  v104 = a5;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v127[0] = v27;
    *v26 = 136315138;
    sub_100004890(0, &qword_100093758, CKRecordZoneID_ptr);
    v28 = Array.description.getter();
    v30 = v10;
    v31 = v7;
    v32 = v16;
    v33 = sub_1000034B8(v28, v29, v127);
    a1 = v111;

    *(v26 + 4) = v33;
    v16 = v32;
    v7 = v31;
    v10 = v30;
    _os_log_impl(&_mh_execute_header, v23, v24, "zoneIDs changed: %s", v26, 0xCu);
    sub_1000036EC(v27);

    v34 = v30;
  }

  else
  {

    v34 = v10;
  }

  v35 = *(v34 + 8);
  v35(v20, v126);
  v37 = v110;
  if (a1 >> 62)
  {
LABEL_30:
    v38 = _CocoaArrayWrapper.endIndex.getter();
    if (!v38)
    {
      return;
    }
  }

  else
  {
    v38 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v38)
    {
      return;
    }
  }

  if (v38 < 1)
  {
    __break(1u);
  }

  else
  {
    v39 = 0;
    v116 = a1 & 0xC000000000000001;
    v10 += 8;
    v114 = (v7 + 8);
    v7 = _swiftEmptyDictionarySingleton;
    *&v36 = 136315394;
    v108 = v36;
    v109 = v10;
    v115 = v38;
    v107 = v16;
    do
    {
      v125 = v39;
      v53 = a1;
      if (v116)
      {
        v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v54 = *(a1 + 8 * v39 + 32);
      }

      v55 = v54;
      v56 = [objc_allocWithZone(CKFetchRecordZoneChangesConfiguration) init];
      sub_10001F8BC([v118 scope], v55);
      v57 = v56;
      a1 = sub_100034A48(v37);
      v58 = sub_100034A48(v37);
      [v57 setPreviousServerChangeToken:v58];

      if ((v7 & 0xC000000000000001) != 0)
      {
        if (v7 < 0)
        {
          v59 = v7;
        }

        else
        {
          v59 = v7 & 0xFFFFFFFFFFFFFF8;
        }

        v60 = v55;
        v61 = v57;
        v62 = __CocoaDictionary.count.getter();
        if (__OFADD__(v62, 1))
        {
          __break(1u);
          goto LABEL_30;
        }

        v7 = sub_100032560(v59, v62 + 1);
      }

      else
      {
        v63 = v55;
        v64 = v57;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v127[0] = v7;
      v124 = v57;
      sub_100032F74(v57, v55, isUniquelyReferenced_nonNull_native);

      v7 = v127[0];
      v120(v16, v121, v126);
      v123 = a1;
      v66 = a1;
      v67 = v55;
      v68 = v16;
      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v69, v70))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v113 = swift_slowAlloc();
        v127[0] = v113;
        *v40 = v108;
        v42 = [v67 zoneName];
        v112 = v69;
        v43 = v42;
        v44 = v7;
        v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v46 = v35;
        v48 = v47;

        v49 = v45;
        v7 = v44;
        v37 = v110;
        v50 = sub_1000034B8(v49, v48, v127);
        v35 = v46;

        *(v40 + 4) = v50;
        a1 = v111;
        *(v40 + 12) = 2112;
        *(v40 + 14) = v66;
        *v41 = v123;
        v51 = v66;
        v52 = v112;
        _os_log_impl(&_mh_execute_header, v112, v70, "Old change token for %s : %@", v40, 0x16u);
        sub_100006CAC(v41, &qword_100093F70, &qword_1000730D0);
        v10 = v109;

        sub_1000036EC(v113);

        v16 = v107;
        v35(v107, v126);
        (*v114)(v37, v117);
      }

      else
      {

        v35(v68, v126);
        (*v114)(v37, v117);
        v16 = v68;
        a1 = v53;
      }

      v39 = v125 + 1;
    }

    while (v115 != v125 + 1);
    v71 = v106;
    v120(v106, v121, v126);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.default.getter();
    v74 = os_log_type_enabled(v72, v73);
    v102 = v35;
    if (v74)
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v127[0] = v76;
      *v75 = 136315138;
      sub_100004890(0, &qword_100093758, CKRecordZoneID_ptr);
      sub_100004890(0, &qword_1000937C8, CKFetchRecordZoneChangesConfiguration_ptr);
      sub_100036B9C(&qword_1000937D0, &qword_100093758, CKRecordZoneID_ptr);

      v77 = v126;
      v78 = Dictionary.description.getter();
      v80 = v79;

      v81 = sub_1000034B8(v78, v80, v127);

      *(v75 + 4) = v81;
      _os_log_impl(&_mh_execute_header, v72, v73, "optionsByRecordZoneID: %s", v75, 0xCu);
      sub_1000036EC(v76);

      v102(v106, v77);
    }

    else
    {

      v35(v71, v126);
    }

    v82 = v105;
    v83 = v104;
    v84 = swift_allocObject();
    *(v84 + 16) = _swiftEmptyArrayStorage;
    v85 = swift_allocObject();
    *(v85 + 16) = _swiftEmptyArrayStorage;
    sub_100004890(0, &qword_1000937C0, CKFetchRecordZoneChangesOperation_ptr);
    v86 = v111;

    v128.value._rawValue = v86;
    v125 = v7;
    v128.is_nil = v7;
    isa = CKFetchRecordZoneChangesOperation.init(recordZoneIDs:configurationsByRecordZoneID:)(v128, v129).super.super.super.super.isa;
    [(objc_class *)isa setFetchAllChanges:1];

    CKFetchRecordZoneChangesOperation.recordWasChangedBlock.setter();

    CKFetchRecordZoneChangesOperation.recordWithIDWasDeletedBlock.setter();
    v88 = swift_allocObject();
    v89 = v118;
    v90 = v119;
    v88[2] = v118;
    v88[3] = v90;
    v88[4] = v85;
    v88[5] = v84;

    v91 = v89;

    CKFetchRecordZoneChangesOperation.recordZoneFetchResultBlock.setter();
    v92 = swift_allocObject();
    v92[2] = v91;
    v92[3] = v86;
    v93 = v103;
    v92[4] = v90;
    v92[5] = v93;
    v92[6] = v83;

    v94 = v91;

    CKFetchRecordZoneChangesOperation.fetchRecordZoneChangesResultBlock.setter();
    v120(v82, v121, v126);
    v95 = isa;
    v96 = Logger.logObject.getter();
    v97 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v96, v97))
    {
      v98 = v82;
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      *v99 = 138412290;
      *(v99 + 4) = v95;
      *v100 = v95;
      v101 = v95;
      _os_log_impl(&_mh_execute_header, v96, v97, "Adding Cloud operation %@", v99, 0xCu);
      sub_100006CAC(v100, &qword_100093F70, &qword_1000730D0);

      v82 = v98;
    }

    v102(v82, v126);
    [v94 addOperation:v95];
  }
}

uint64_t sub_100023D40(void *a1, void *a2, int a3, os_log_t a4)
{
  LODWORD(v73) = a3;
  v76 = a2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 1);
  v8 = __chkstk_darwin(v6);
  v10 = (&v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v8);
  v13 = &v67 - v12;
  __chkstk_darwin(v11);
  v15 = &v67 - v14;
  v16 = sub_10003915C();
  v17 = *(v7 + 16);
  v74 = v16;
  v75 = v17;
  v17(v15);
  v18 = a1;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v72 = v6;
    v22 = v21;
    v23 = swift_slowAlloc();
    v71 = a4;
    v24 = v13;
    v25 = v10;
    v26 = v7;
    v27 = v23;
    *v22 = 138412290;
    *(v22 + 4) = v18;
    *v23 = v18;
    v28 = v18;
    _os_log_impl(&_mh_execute_header, v19, v20, "RecordID changed: %@", v22, 0xCu);
    sub_100006CAC(v27, &qword_100093F70, &qword_1000730D0);
    v7 = v26;
    v10 = v25;
    v13 = v24;
    a4 = v71;

    v6 = v72;
  }

  v31 = *(v7 + 8);
  v29 = v7 + 8;
  v30 = v31;
  v31(v15, v6);
  if (v73)
  {
    v75(v13, v74, v6);
    v32 = v18;
    v33 = v76;
    sub_10003785C(v76, 1);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    sub_100008738(v33, 1);
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = v13;
      v38 = v6;
      v39 = swift_slowAlloc();
      *v36 = 138412546;
      *(v36 + 4) = v32;
      *v39 = v32;
      *(v36 + 12) = 2112;
      v40 = v32;
      sub_10003785C(v33, 1);
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 14) = v41;
      v39[1] = v41;
      _os_log_impl(&_mh_execute_header, v34, v35, "%@ failed to be fetched: %@", v36, 0x16u);
      sub_10000A45C(&qword_100093F70, &qword_1000730D0);
      swift_arrayDestroy();
      v6 = v38;
      v13 = v37;
    }

    return v30(v13, v6);
  }

  else
  {
    v73 = v29;
    swift_beginAccess();
    v43 = v76;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((a4[2].isa & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((a4[2].isa & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_23;
    }

    while (1)
    {
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      v75(v10, v74, v6);
      v44 = IsAppleInternalBuild() ? static os_log_type_t.default.getter() : static os_log_type_t.debug.getter();
      v45 = v44;
      v46 = Logger.logObject.getter();
      if (!os_log_type_enabled(v46, v45))
      {
        break;
      }

      v70 = v45;
      v71 = v46;
      v72 = v6;
      v74 = v10;
      v75 = v30;
      v47 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v78[0] = v68;
      *v47 = 136315394;
      v48 = [v18 recordName];
      v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v50;

      v52 = sub_1000034B8(v49, v51, v78);

      *(v47 + 4) = v52;
      v69 = v47;
      *(v47 + 12) = 2080;
      v6 = [v43 encryptedValues];
      v53 = [v6 allKeys];
      swift_unknownObjectRelease();
      v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v54 = 0;
      v76 = _swiftEmptyArrayStorage;
      v77 = _swiftEmptyArrayStorage;
      v55 = v18[2];
      v56 = v18 + 5;
      v10 = &off_100091000;
      v67 = v18 + 5;
LABEL_13:
      v57 = &v56[2 * v54];
      while (1)
      {
        if (v55 == v54)
        {

          sub_10000A45C(&unk_100093260, &qword_1000730C8);
          v61 = Array.description.getter();
          v63 = v62;

          v64 = sub_1000034B8(v61, v63, v78);

          v65 = v69;
          *(v69 + 14) = v64;
          v66 = v71;
          _os_log_impl(&_mh_execute_header, v71, v70, "CKRecord fetched: %s - %s", v65, 0x16u);
          swift_arrayDestroy();

          return (v75)(v74, v72);
        }

        if (v54 >= v18[2])
        {
          break;
        }

        ++v54;
        v58 = v57 + 2;
        v6 = *v57;

        v59 = [v43 encryptedValues];
        v60 = String._bridgeToObjectiveC()();
        v30 = [v59 objectForKeyedSubscript:v60];

        swift_unknownObjectRelease();
        v57 = v58;
        if (v30)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v6 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v76 = v77;
          v56 = v67;
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_23:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    return v30(v10, v6);
  }
}

uint64_t sub_100024498(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10003915C();
  (*(v9 + 16))(v11, v12, v8);
  v13 = a1;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v28 = a3;
    v17 = a2;
    v18 = v16;
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    *(v18 + 4) = v13;
    *v19 = v13;
    v20 = v13;
    _os_log_impl(&_mh_execute_header, v14, v15, "Record deleted: %@", v18, 0xCu);
    sub_100006CAC(v19, &qword_100093F70, &qword_1000730D0);

    a2 = v17;
    a3 = v28;
  }

  (*(v9 + 8))(v11, v8);
  swift_beginAccess();
  v21 = *(a4 + 16);
  v22 = v13;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 16) = v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v21 = sub_100031DA0(0, v21[2] + 1, 1, v21);
    *(a4 + 16) = v21;
  }

  v25 = v21[2];
  v24 = v21[3];
  if (v25 >= v24 >> 1)
  {
    v21 = sub_100031DA0((v24 > 1), v25 + 1, 1, v21);
  }

  v21[2] = v25 + 1;
  v26 = &v21[3 * v25];
  v26[4] = v22;
  v26[5] = a2;
  v26[6] = a3;
  *(a4 + 16) = v21;
  return swift_endAccess();
}

void sub_100024720(void *a1, void *a2, uint64_t *a3, void (*a4)(char *, uint64_t), int a5, void *a6, void *a7, uint64_t a8, uint64_t a9)
{
  v118 = a8;
  v127 = a7;
  LODWORD(v122) = a5;
  v117 = a4;
  v116 = a3;
  v125 = a2;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v124 = &v110 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v123 = &v110 - v20;
  __chkstk_darwin(v19);
  v22 = &v110 - v21;
  v23 = sub_10003915C();
  v126 = v16;
  v24 = *(v16 + 16);
  v119 = v23;
  v120 = v24;
  (v24)(v22);
  v25 = a6;
  v26 = a1;
  v27 = v25;
  v28 = v26;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();

  LODWORD(v114) = v30;
  v31 = os_log_type_enabled(v29, v30);
  v113 = v11;
  v112 = v12;
  v111 = v14;
  v121 = v27;
  v115 = v28;
  if (v31)
  {
    v32 = swift_slowAlloc();
    *&aBlock = swift_slowAlloc();
    *v32 = 136315394;
    [v27 scope];
    v33 = CKDatabaseScopeString();
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    v37 = sub_1000034B8(v34, v36, &aBlock);

    *(v32 + 4) = v37;
    *(v32 + 12) = 2080;
    v38 = [v28 zoneName];
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    v42 = sub_1000034B8(v39, v41, &aBlock);

    *(v32 + 14) = v42;
    _os_log_impl(&_mh_execute_header, v29, v114, "record zone fetch complete, database, %s, zone, %s", v32, 0x16u);
    swift_arrayDestroy();
  }

  v43 = *(v126 + 8);
  v43(v22, v15);
  v44 = v15;
  v45 = v125;
  v46 = v124;
  v47 = v122;
  if ((v122 & 0x100) != 0)
  {
    v120(v123, v119, v44);
    v74 = v121;
    v75 = v116;
    v76 = v117;
    sub_100038170(v45, v116, v117, v47, 1);
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.error.getter();

    sub_1000381C4(v45, v75, v76, v47, 1);
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      *&aBlock = v81;
      *v79 = 136315394;
      [v74 scope];
      v82 = v43;
      v83 = CKDatabaseScopeString();
      v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v122 = v44;
      v86 = v85;

      v87 = sub_1000034B8(v84, v86, &aBlock);

      *(v79 + 4) = v87;
      *(v79 + 12) = 2112;
      swift_errorRetain();
      v88 = _swift_stdlib_bridgeErrorToNSError();
      *(v79 + 14) = v88;
      *v80 = v88;
      _os_log_impl(&_mh_execute_header, v77, v78, "Error fetching zone changes for %s database: %@", v79, 0x16u);
      sub_100006CAC(v80, &qword_100093F70, &qword_1000730D0);

      sub_1000036EC(v81);

      v82(v123, v122);
    }

    else
    {

      v43(v123, v44);
    }

    sub_100026830(v45, 0);
  }

  else
  {
    v117 = v43;
    v116 = (v118 + 16);
    v123 = (a9 + 16);
    v120(v124, v119, v44);
    swift_retain_n();
    swift_retain_n();
    v48 = v121;
    v49 = v115;
    v50 = v45;
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();
    v115 = v50;

    LODWORD(v119) = v52;
    v121 = v51;
    v53 = os_log_type_enabled(v51, v52);
    v114 = v48;
    v120 = v49;
    if (v53)
    {
      v54 = a9;
      v122 = v44;
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      *&aBlock = v110;
      *v55 = 136316162;
      [v48 scope];
      v57 = CKDatabaseScopeString();
      v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v60 = v59;

      v61 = sub_1000034B8(v58, v60, &aBlock);

      *(v55 + 4) = v61;
      *(v55 + 12) = 2080;
      v62 = [v49 zoneName];
      v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v65 = v64;

      v66 = sub_1000034B8(v63, v65, &aBlock);
      v67 = v125;

      *(v55 + 14) = v66;
      *(v55 + 22) = 2112;
      v68 = v115;
      *(v55 + 24) = v115;
      *v56 = v67;
      *(v55 + 32) = 2048;
      v69 = v116;
      swift_beginAccess();
      if (*v69 >> 62)
      {
LABEL_29:
        v70 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v70 = *((*v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v71 = v68;

      *(v55 + 34) = v70;

      *(v55 + 42) = 2048;
      swift_beginAccess();
      v72 = *(v54[2] + 16);

      *(v55 + 44) = v72;

      v73 = v121;
      _os_log_impl(&_mh_execute_header, v121, v119, "record zone fetch database, %s, zone, %s, token: %@, records changed: %ld, deleted: %ld", v55, 0x34u);
      sub_100006CAC(v56, &qword_100093F70, &qword_1000730D0);

      swift_arrayDestroy();

      v117(v124, v122);
    }

    else
    {

      v117(v46, v44);
      v67 = v125;
      v69 = v116;
    }

    v89 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_pendingDeletionCloudRecords;
    v90 = v127;
    swift_beginAccess();
    v55 = *(v90 + v89);
    v54 = (v55 + 64);
    v91 = 1 << *(v55 + 32);
    v92 = -1;
    if (v91 < 64)
    {
      v92 = ~(-1 << v91);
    }

    v56 = v92 & *(v55 + 64);
    v68 = ((v91 + 63) >> 6);
    swift_bridgeObjectRetain_n();
    v93 = 0;
    if (v56)
    {
      while (1)
      {
        v94 = v93;
LABEL_19:
        v95 = __clz(__rbit64(v56));
        v56 &= v56 - 1;
        v96 = *(*(v55 + 48) + 8 * (v95 | (v94 << 6)));

        sub_1000372C0(v96, v69);

        if (!v56)
        {
          goto LABEL_15;
        }
      }
    }

    while (1)
    {
LABEL_15:
      v94 = v93 + 1;
      if (__OFADD__(v93, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      if (v94 >= v68)
      {
        break;
      }

      v56 = v54[v94];
      ++v93;
      if (v56)
      {
        v93 = v94;
        goto LABEL_19;
      }
    }

    v56 = v127;
    v97 = v127[9];
    v55 = swift_allocObject();
    v98 = v123;
    *(v55 + 16) = v56;
    *(v55 + 24) = v98;
    *(v55 + 32) = v69;
    v99 = swift_allocObject();
    *(v99 + 16) = sub_100038148;
    *(v99 + 24) = v55;
    v131 = sub_100038A58;
    v132 = v99;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v130 = sub_10001437C;
    *(&v130 + 1) = &unk_10008ACD0;
    v54 = _Block_copy(&aBlock);
    v68 = v132;

    dispatch_sync(v97, v54);
    _Block_release(v54);
    LOBYTE(v97) = swift_isEscapingClosureAtFileLocation();

    if (v97)
    {
      goto LABEL_28;
    }

    swift_beginAccess();
    *v69 = _swiftEmptyArrayStorage;

    swift_beginAccess();
    *v98 = _swiftEmptyArrayStorage;

    (*(*v127 + 264))(&aBlock, v100);
    v101 = v131;
    v134 = aBlock;

    sub_100034994(&v134);
    v133 = v130;
    sub_100034994(&v133);

    v102 = v120;
    v103 = [v120 zoneName];
    v104 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v106 = v105;

    v128[0] = v104;
    v128[1] = v106;
    __chkstk_darwin(v107);
    *(&v110 - 2) = v128;
    LOBYTE(v103) = sub_1000225A4(sub_100038154, (&v110 - 4), v101);

    if (v103)
    {
      v108 = [v114 scope];
      v109 = v111;
      sub_10001F8BC(v108, v102);
      sub_1000351D8(v67, v109);
      (*(v112 + 8))(v109, v113);
    }
  }
}

uint64_t sub_100025508(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v23 = a2;
  v24 = a3;
  v4 = sub_10000A45C(&qword_100093F40, &qword_1000730E0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = (v20 - v7);
  v9 = (*(*a1 + 288))(v6);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v20[1] = v9;
    v12 = v9 + v11;
    swift_beginAccess();
    swift_beginAccess();
    v13 = *(v5 + 72);
    v21 = a1;
    v22 = v13;
    do
    {
      sub_100006C44(v12, v8, &qword_100093F40, &qword_1000730E0);
      v15 = v8[3];
      v14 = v8[4];
      sub_1000078C8(v8, v15);
      v16 = *v23;
      v17 = *v24;
      v18 = *(v14 + 8);

      v18(v21, v16, v17, v15, v14);

      sub_100006CAC(v8, &qword_100093F40, &qword_1000730E0);
      v12 += v22;
      --v10;
    }

    while (v10);
  }
}

uint64_t sub_100025734(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t), uint64_t a7)
{
  v80 = a7;
  v81 = a6;
  v72 = a5;
  v79 = a2;
  v75 = a1;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v82 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v70 - v13;
  __chkstk_darwin(v12);
  v16 = &v70 - v15;
  v17 = sub_10003915C();
  v18 = *(v9 + 16);
  v77 = v17;
  v78 = v18;
  (v18)(v16);
  v19 = a3;

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  v22 = os_log_type_enabled(v20, v21);
  v76 = v19;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v73 = v9;
    v24 = v23;
    v83 = swift_slowAlloc();
    *v24 = 136315394;
    [v19 scope];
    v25 = CKDatabaseScopeString();
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v74 = v8;
    v27 = v26;
    v71 = v14;
    v29 = v28;

    v30 = sub_1000034B8(v27, v29, &v83);

    *(v24 + 4) = v30;
    *(v24 + 12) = 2080;
    sub_100004890(0, &qword_100093758, CKRecordZoneID_ptr);
    v31 = Array.description.getter();
    v33 = sub_1000034B8(v31, v32, &v83);
    v14 = v71;

    *(v24 + 14) = v33;
    v8 = v74;
    _os_log_impl(&_mh_execute_header, v20, v21, "Fetch record zone changes complete, database, %s, zoneIds, %s", v24, 0x16u);
    swift_arrayDestroy();

    v9 = v73;
  }

  v34 = *(v9 + 8);
  v34(v16, v8);
  v35 = v82;
  if (v79)
  {
    v78(v14, v77, v8);
    v36 = v76;
    v37 = v75;
    sub_100036B90(v75, 1);
    v38 = v14;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    sub_100036B6C(v37, 1);
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v73 = v9;
      v43 = v42;
      v44 = swift_slowAlloc();
      v83 = v44;
      *v41 = 136315394;
      [v36 scope];
      v45 = CKDatabaseScopeString();
      v74 = v8;
      v46 = v45;
      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v48;

      v50 = sub_1000034B8(v47, v49, &v83);
      v37 = v75;

      *(v41 + 4) = v50;
      *(v41 + 12) = 2112;
      swift_errorRetain();
      v51 = _swift_stdlib_bridgeErrorToNSError();
      *(v41 + 14) = v51;
      *v43 = v51;
      _os_log_impl(&_mh_execute_header, v39, v40, "Error fetching zone changes for %s database: %@", v41, 0x16u);
      sub_100006CAC(v43, &qword_100093F70, &qword_1000730D0);

      sub_1000036EC(v44);

      v52 = v74;
      v53 = v38;
    }

    else
    {

      v53 = v38;
      v52 = v8;
    }

    v34(v53, v52);
    sub_100026830(v37, 0);
    v67 = v37;
    v68 = 1;
  }

  else
  {
    v78(v82, v77, v8);
    v54 = v76;
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v83 = v58;
      *v57 = 136315138;
      [v54 scope];
      v59 = v8;
      v60 = CKDatabaseScopeString();
      v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v63 = v62;

      v64 = sub_1000034B8(v61, v63, &v83);

      *(v57 + 4) = v64;
      _os_log_impl(&_mh_execute_header, v55, v56, "Successfully fetched zone changes for database: %s", v57, 0xCu);
      sub_1000036EC(v58);

      v65 = v82;
      v66 = v59;
    }

    else
    {

      v65 = v35;
      v66 = v8;
    }

    v34(v65, v66);
    v67 = 0;
    v68 = 0;
  }

  return v81(v67, v68);
}

void sub_100025D68(double a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v8, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  if (!XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY)
  {
    __break(1u);
    goto LABEL_13;
  }

  xpc_dictionary_set_BOOL(v8, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);
  if (!XPC_ACTIVITY_REQUIRES_CLASS_C)
  {
LABEL_13:
    __break(1u);
    return;
  }

  xpc_dictionary_set_BOOL(v8, XPC_ACTIVITY_REQUIRES_CLASS_C, 1);
  sub_1000335D8(0.0, 120.0);
  v10 = v9;
  v11 = sub_10003915C();
  (*(v5 + 16))(v7, v11, v4);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134218240;
    *(v14 + 4) = a1;
    *(v14 + 12) = 2048;
    *(v14 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v12, v13, "checkinRetryFetch %f with random delay: %f", v14, 0x16u);
  }

  (*(v5 + 8))(v7, v4);
  v15 = objc_allocWithZone(NSBackgroundActivityScheduler);
  v16 = String._bridgeToObjectiveC()();
  v17 = [v15 initWithIdentifier:v16];

  v18 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_retryFetchActivity;
  v19 = *(v2 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_retryFetchActivity);
  *(v2 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_retryFetchActivity) = v17;
  v20 = v17;

  if (v20)
  {
    [v20 setQualityOfService:25];
  }

  v21 = *(v2 + v18);
  if (v21 && ([v21 setInterval:v10 + a1], (v22 = *(v2 + v18)) != 0) && (objc_msgSend(v22, "_setAdditionalXPCActivityProperties:", v8), (v23 = *(v2 + v18)) != 0))
  {
    aBlock[4] = sub_100037898;
    aBlock[5] = v2;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000262D0;
    aBlock[3] = &unk_10008A820;
    v24 = _Block_copy(aBlock);
    v25 = v23;

    [v25 scheduleWithBlock:v24];
    swift_unknownObjectRelease();
    _Block_release(v24);
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1000260D8(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v10 = sub_10003915C();
    (*(v7 + 16))(v9, v10, v6);
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    sub_100036B6C(a1, 1);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "checkinRetryFetch failed with %@", v13, 0xCu);
      sub_100006CAC(v14, &qword_100093F70, &qword_1000730D0);
    }

    (*(v7 + 8))(v9, v6);
    v16 = 2;
  }

  else
  {
    v16 = 1;
  }

  return a3(v16);
}

uint64_t sub_1000262D0(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_100037950, v4);
}

uint64_t sub_100026364(double a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v15 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v6 = *(v14 - 8);
  __chkstk_darwin(v14);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v1 + 56);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  aBlock[4] = sub_10003788C;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002410;
  aBlock[3] = &unk_10008A7F8;
  v11 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v16 = _swiftEmptyArrayStorage;
  sub_10000229C(&qword_100092D20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000A45C(&unk_1000931F0, &unk_100072C10);
  sub_10000FA34(&qword_100092D30, &unk_1000931F0, &unk_100072C10, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);
  (*(v15 + 8))(v5, v3);
  (*(v6 + 8))(v8, v14);
}

uint64_t sub_100026674(uint64_t a1, double a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10003915C();
  (*(v4 + 16))(v6, v7, v3);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = a2;
    _os_log_impl(&_mh_execute_header, v8, v9, "scheduleRetryFetch for %f", v10, 0xCu);
  }

  (*(v4 + 8))(v6, v3);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (!*(result + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_retryFetchActivity))
    {
      sub_100025D68(a2);
    }
  }

  return result;
}

void sub_100026830(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v214) = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v207 = &v190[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for DispatchQoS();
  v206 = *(v8 - 8);
  __chkstk_darwin(v8);
  v205 = &v190[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v219 = type metadata accessor for URL();
  v217 = *(v219 - 8);
  v10 = __chkstk_darwin(v219);
  v12 = &v190[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v209 = &v190[-v13];
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v213 = &v190[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __chkstk_darwin(v16);
  v212 = &v190[-v19];
  v20 = __chkstk_darwin(v18);
  v200 = &v190[-v21];
  v22 = __chkstk_darwin(v20);
  v211 = &v190[-v23];
  v24 = __chkstk_darwin(v22);
  v26 = &v190[-v25];
  v27 = __chkstk_darwin(v24);
  v204 = &v190[-v28];
  v29 = __chkstk_darwin(v27);
  v201 = &v190[-v30];
  v31 = __chkstk_darwin(v29);
  v202 = &v190[-v32];
  v33 = __chkstk_darwin(v31);
  v208 = &v190[-v34];
  v35 = __chkstk_darwin(v33);
  v203 = &v190[-v36];
  __chkstk_darwin(v35);
  v38 = &v190[-v37];
  aBlock._countAndFlagsBits = a1;
  swift_errorRetain();
  sub_10000A45C(&qword_100093748, &qword_100073628);
  type metadata accessor for CKError(0);
  v220 = v39;
  if (!swift_dynamicCast())
  {
    return;
  }

  v193 = v26;
  v194 = v8;
  v195 = v6;
  v196 = v5;
  v40 = *&v227[0];
  v41 = sub_10003915C();
  v43 = (v15 + 16);
  v42 = *(v15 + 16);
  v215 = v41;
  v216 = v42;
  v42(v38);
  v44 = v40;
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v199 = (v15 + 16);
    v48 = v15;
    v49 = v44;
    v50 = v47;
    v51 = v3;
    v52 = v14;
    v53 = swift_slowAlloc();
    *v50 = 138412290;
    v54 = v49;
    v55 = _swift_stdlib_bridgeErrorToNSError();
    *(v50 + 4) = v55;
    *v53 = v55;
    _os_log_impl(&_mh_execute_header, v45, v46, "Error with cloud operation %@", v50, 0xCu);
    sub_100006CAC(v53, &qword_100093F70, &qword_1000730D0);
    v14 = v52;
    v3 = v51;

    v44 = v49;
    v15 = v48;
    v43 = v199;
  }

  v58 = *(v15 + 8);
  v56 = (v15 + 8);
  v57 = v58;
  v58(v38, v14);
  *&v227[0] = v44;
  v210 = sub_10000229C(&qword_100093750, type metadata accessor for CKError, &unk_100073828);
  v59 = _BridgedStoredNSError.userInfo.getter();
  v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v59 + 16))
  {

LABEL_11:
    v79 = v217;
    goto LABEL_26;
  }

  v198 = v44;
  v62 = sub_1000327AC(v60, v61);
  v64 = v63;

  if ((v64 & 1) == 0)
  {

    v44 = v198;
    goto LABEL_11;
  }

  sub_100003690(*(v59 + 56) + 32 * v62, &aBlock);

  sub_10000A45C(&qword_100093760, &qword_100073630);
  if (swift_dynamicCast())
  {
    v65 = v232;
    v66 = v203;
    v216(v203, v215, v14);

    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();

    v69 = os_log_type_enabled(v67, v68);
    v197 = v56;
    v192 = v14;
    v218 = v3;
    v199 = v43;
    if (v69)
    {
      v70 = swift_slowAlloc();
      v191 = v68;
      v71 = v70;
      v72 = swift_slowAlloc();
      aBlock._countAndFlagsBits = v72;
      *v71 = 136315138;
      v73 = Dictionary.description.getter();
      v75 = v66;
      v76 = sub_1000034B8(v73, v74, &aBlock._countAndFlagsBits);

      *(v71 + 4) = v76;
      _os_log_impl(&_mh_execute_header, v67, v191, "Handling partial internal errors - %s", v71, 0xCu);
      sub_1000036EC(v72);

      v77 = v75;
      v78 = v192;
    }

    else
    {

      v77 = v66;
      v78 = v14;
    }

    v57(v77, v78);
    v80 = 1 << *(v65 + 32);
    v81 = -1;
    if (v80 < 64)
    {
      v81 = ~(-1 << v80);
    }

    v82 = v81 & *(v65 + 64);
    v83 = (v80 + 63) >> 6;

    v84 = 0;
    v85 = v214;
    while (v82)
    {
      v86 = v84;
LABEL_22:
      v87 = __clz(__rbit64(v82));
      v82 &= v82 - 1;
      v88 = v87 | (v86 << 6);
      sub_10000CB30(*(v65 + 48) + 40 * v88, &aBlock);
      v226 = *(*(v65 + 56) + 8 * v88);
      sub_100026830(v226, v85 & 1);
      sub_100006CAC(&aBlock, &qword_100093768, &qword_100073638);
    }

    while (1)
    {
      v86 = v84 + 1;
      if (__OFADD__(v84, 1))
      {
        break;
      }

      if (v86 >= v83)
      {

        v56 = v197;
        v14 = v192;
        v3 = v218;
        v44 = v198;
        v43 = v199;
        goto LABEL_25;
      }

      v82 = *(v65 + 64 + 8 * v86);
      ++v84;
      if (v82)
      {
        v84 = v86;
        goto LABEL_22;
      }
    }

    __break(1u);
    return;
  }

  v44 = v198;
LABEL_25:
  v79 = v217;
LABEL_26:
  v230._countAndFlagsBits = v44;
  _BridgedStoredNSError.code.getter();
  if (v229 <= 13)
  {
    if ((v229 - 3) < 2)
    {
      if ((v214 & 1) == 0)
      {
        goto LABEL_55;
      }

      v89 = 150.0;
LABEL_40:
      sub_100026364(v89);
LABEL_55:
      aBlock._countAndFlagsBits = v44;
      _BridgedStoredNSError.code.getter();
      switch(v230._countAndFlagsBits)
      {
        case 'n':
          v216(v211, v215, v14);
          v174 = Logger.logObject.getter();
          v175 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v174, v175))
          {
            v176 = swift_slowAlloc();
            *v176 = 0;
            _os_log_impl(&_mh_execute_header, v174, v175, "Attempting to use Manatee from a non-HSA2 account!", v176, 2u);
          }

          v57(v211, v14);
          if (*(v3 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_manateeAvailable) == 1)
          {
            *(v3 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_manateeAvailable) = 0;
            v177 = v200;
            v216(v200, v215, v14);
            v178 = Logger.logObject.getter();
            v179 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v178, v179))
            {
              v180 = swift_slowAlloc();
              *v180 = 0;
              _os_log_impl(&_mh_execute_header, v178, v179, "Manatee was available, but is not available now.", v180, 2u);
            }

            else
            {
            }

            v57(v177, v14);
          }

          else
          {
          }

          break;
        case 'p':
          v216(v212, v215, v14);
          v167 = Logger.logObject.getter();
          v168 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v167, v168))
          {
            v169 = swift_slowAlloc();
            *v169 = 0;
            _os_log_impl(&_mh_execute_header, v167, v168, "Private Missing Manatee Identity, Reset...", v169, 2u);
          }

          v57(v212, v14);
          v225 = sub_10003787C;
          v226 = v3;
          aBlock._countAndFlagsBits = _NSConcreteStackBlock;
          aBlock._object = 1107296256;
          v223 = sub_100002410;
          v224 = &unk_10008A730;
          v170 = _Block_copy(&aBlock);

          v171 = v205;
          static DispatchQoS.unspecified.getter();
          v230._countAndFlagsBits = _swiftEmptyArrayStorage;
          sub_10000229C(&qword_100092D20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
          sub_10000A45C(&unk_1000931F0, &unk_100072C10);
          sub_10000FA34(&qword_100092D30, &unk_1000931F0, &unk_100072C10, &protocol conformance descriptor for [A]);
          v172 = v207;
          v173 = v196;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v170);

          (*(v195 + 8))(v172, v173);
          (*(v206 + 8))(v171, v194);

          break;
        case 'o':
          v197 = v56;
          v158 = v193;
          v216(v193, v215, v14);

          v159 = Logger.logObject.getter();
          v160 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v159, v160))
          {
            v161 = swift_slowAlloc();
            v208 = v57;
            v162 = v161;
            v163 = swift_slowAlloc();
            v221 = v163;
            *v162 = 136315138;
            (*(*v3 + 264))(&aBlock);
            v164 = v223;
            v165 = v224;
            v230 = aBlock;
            sub_100034994(&v230);
            v229 = v225;
            sub_100006CAC(&v229, &qword_100094180, &qword_100074290);
            v166 = sub_1000034B8(v164, v165, &v221);

            *(v162 + 4) = v166;
            _os_log_impl(&_mh_execute_header, v159, v160, "PCS Keys for %s are not yet synced.", v162, 0xCu);
            sub_1000036EC(v163);

            (v208)(v158, v14);
          }

          else
          {

            v57(v158, v14);
          }

          break;
        default:
          v181 = v44;
          v182 = v57;
          v216(v213, v215, v14);
          v183 = v181;
          v184 = Logger.logObject.getter();
          v185 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v184, v185))
          {
            v186 = swift_slowAlloc();
            v187 = swift_slowAlloc();
            *v186 = 138412290;
            v188 = v183;
            v189 = _swift_stdlib_bridgeErrorToNSError();
            *(v186 + 4) = v189;
            *v187 = v189;
            _os_log_impl(&_mh_execute_header, v184, v185, "Uncaught private error: %@", v186, 0xCu);
            sub_100006CAC(v187, &qword_100093F70, &qword_1000730D0);
          }

          else
          {
            v188 = v184;
            v184 = v183;
          }

          v182(v213, v14);
          break;
      }

      return;
    }

    if ((v229 - 6) < 2)
    {
      v89 = COERCE_DOUBLE(related decl 'e' for CKErrorCode.retryAfterSeconds.getter());
      if (v90)
      {
        v89 = 600.0;
      }

      goto LABEL_40;
    }

LABEL_48:
    v117 = v56;
    v118 = v204;
    v216(v204, v215, v14);
    v119 = v44;
    v120 = Logger.logObject.getter();
    v121 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v120, v121))
    {
      v122 = swift_slowAlloc();
      v199 = v43;
      v123 = v57;
      v124 = v122;
      v125 = swift_slowAlloc();
      *v124 = 138412290;
      v126 = v119;
      v127 = _swift_stdlib_bridgeErrorToNSError();
      *(v124 + 4) = v127;
      *v125 = v127;
      _os_log_impl(&_mh_execute_header, v120, v121, "Uncaught error: %@", v124, 0xCu);
      sub_100006CAC(v125, &qword_100093F70, &qword_1000730D0);
      v118 = v204;

      v57 = v123;
    }

    v56 = v117;
    v57(v118, v14);
    goto LABEL_55;
  }

  if (v229 != 14)
  {
    if (v229 == 21)
    {
      v199 = v43;
      v198 = v44;
      v208 = v57;
      v192 = v14;
      v197 = v56;
      v217 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_tokenDirectory;
      URL.appendingPathComponent(_:isDirectory:)();
      v128 = v209;
      URL.appendingPathComponent(_:)();
      v131 = *(v79 + 8);
      v130 = v79 + 8;
      v129 = v131;
      v132 = v219;
      v131(v12, v219);
      v133 = sub_1000351D8(0, v128);
      (*(*v3 + 264))(v227, v133);
      v134 = v228;
      v233 = v228;
      v232 = v227[0];

      sub_100034994(&v232);
      v231 = v227[1];
      sub_100034994(&v231);
      sub_100006CAC(&v233, &qword_100094180, &qword_100074290);
      v135 = *(v134 + 16);
      v218 = v3;
      if (v135)
      {
        v214 = sub_100004890(0, &qword_100093758, CKRecordZoneID_ptr);
        v136 = (v134 + 40);
        do
        {
          v137 = v129;
          v138 = v130;
          v139 = *(v136 - 1);
          v140 = *v136;
          v141 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v143 = v142;

          v144._countAndFlagsBits = v139;
          v144._object = v140;
          v145._countAndFlagsBits = v141;
          v145._object = v143;
          isa = CKRecordZoneID.init(zoneName:ownerName:)(v144, v145).super.isa;
          URL.appendingPathComponent(_:isDirectory:)();
          v147._countAndFlagsBits = 0x65746176697250;
          v147._object = 0xE700000000000000;
          URL.appendPathComponent(_:)(v147);
          v148 = [(objc_class *)isa ownerName];
          v149 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v151 = v150;

          v152._countAndFlagsBits = v149;
          v152._object = v151;
          URL.appendPathComponent(_:)(v152);

          v153 = [(objc_class *)isa zoneName];
          v154 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v156 = v155;

          aBlock._countAndFlagsBits = v154;
          aBlock._object = v156;
          v157._countAndFlagsBits = 0x6E656B6F742ELL;
          v157._object = 0xE600000000000000;
          String.append(_:)(v157);
          URL.appendPathComponent(_:)(aBlock);

          v130 = v138;
          v129 = v137;
          v132 = v219;

          sub_1000351D8(0, v12);
          v137(v12, v132);
          v136 += 2;
          --v135;
        }

        while (v135);
      }

      sub_100006CAC(&v233, &qword_100094180, &qword_100074290);
      v3 = v218;
      sub_100026364(30.0);
      v129(v209, v132);
      v56 = v197;
      v14 = v192;
      v57 = v208;
      v44 = v198;
      goto LABEL_55;
    }

    if (v229 == 26)
    {
      v197 = v56;
      v216(v208, v215, v14);
      v91 = v44;
      v92 = Logger.logObject.getter();
      v93 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        *v94 = 138412290;
        v96 = v91;
        v97 = _swift_stdlib_bridgeErrorToNSError();
        *(v94 + 4) = v97;
        *v95 = v97;
        _os_log_impl(&_mh_execute_header, v92, v93, "Zone not found: %@", v94, 0xCu);
        sub_100006CAC(v95, &qword_100093F70, &qword_1000730D0);
      }

      v56 = v197;
      v57(v208, v14);
      goto LABEL_55;
    }

    goto LABEL_48;
  }

  v208 = v57;
  v98 = v202;
  v216(v202, v215, v14);
  v57 = v44;
  v99 = Logger.logObject.getter();
  v100 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v99, v100))
  {
    v101 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    *v101 = 138412290;
    v103 = v57;
    v104 = _swift_stdlib_bridgeErrorToNSError();
    *(v101 + 4) = v104;
    *v102 = v104;
    _os_log_impl(&_mh_execute_header, v99, v100, "Server Record Changed, We need to Fetch the data again: %@", v101, 0xCu);
    sub_100006CAC(v102, &qword_100093F70, &qword_1000730D0);
  }

  (v208)(v98, v14);
  v105 = related decl 'e' for CKErrorCode.serverRecord.getter();
  if (!v105)
  {
    sub_100026364(30.0);

    return;
  }

  v106 = v105;
  v107 = v201;
  v216(v201, v215, v14);
  v108 = v106;
  v109 = Logger.logObject.getter();
  v110 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v109, v110))
  {
    v111 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    *v111 = 138412290;
    *(v111 + 4) = v108;
    *v112 = v106;
    v113 = v108;
    _os_log_impl(&_mh_execute_header, v109, v110, "Resolving with server record - %@", v111, 0xCu);
    sub_100006CAC(v112, &qword_100093F70, &qword_1000730D0);
    v107 = v201;
  }

  (v208)(v107, v14);
  v114 = v3[9];
  v115 = swift_allocObject();
  *(v115 + 16) = v3;
  *(v115 + 24) = v108;
  v56 = swift_allocObject();
  v56[2] = sub_100037884;
  v56[3] = v115;
  v225 = sub_100038A58;
  v226 = v56;
  aBlock._countAndFlagsBits = _NSConcreteStackBlock;
  aBlock._object = 1107296256;
  v223 = sub_10001437C;
  v224 = &unk_10008A7A8;
  v43 = _Block_copy(&aBlock);
  v44 = v226;
  v116 = v108;

  dispatch_sync(v114, v43);

  _Block_release(v43);
  LOBYTE(v116) = swift_isEscapingClosureAtFileLocation();

  if (v116)
  {
    __break(1u);
    goto LABEL_48;
  }
}

uint64_t sub_100028310(uint64_t a1, void *a2)
{
  v4 = sub_10000A45C(&qword_100093F40, &qword_1000730E0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = (v22 - v7);
  v9 = (*(*a1 + 288))(v6);
  v10 = *(v9 + 16);
  if (v10)
  {
    v25 = a2;
    v26 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_manateeAvailable;
    v11 = *(v5 + 80);
    v22[1] = v9;
    v12 = v9 + ((v11 + 32) & ~v11);
    v24 = *(v5 + 72);
    v23 = xmmword_100073090;
    do
    {
      sub_100006C44(v12, v8, &qword_100093F40, &qword_1000730E0);
      v14 = v8[3];
      v13 = v8[4];
      sub_1000078C8(v8, v14);
      sub_10000A45C(&qword_100093740, &qword_100073620);
      v15 = swift_allocObject();
      *(v15 + 16) = v23;
      v16 = v25;
      *(v15 + 32) = v25;
      v17 = *(v13 + 8);
      v18 = v16;
      v17(a1, _swiftEmptyArrayStorage, v15, v14, v13);

      v19 = v8[3];
      v20 = v8[4];
      sub_1000078C8(v8, v19);
      (*(v20 + 24))(a1, *(a1 + v26), v19, v20);
      sub_100006CAC(v8, &qword_100093F40, &qword_1000730E0);
      v12 += v24;
      --v10;
    }

    while (v10);
  }
}

uint64_t sub_100028620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v15 = *(v23 - 8);
  __chkstk_darwin(v23);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a2 + 56);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;
  *(v18 + 48) = a5;
  *(v18 + 56) = a6;
  aBlock[4] = sub_100037F8C;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002410;
  aBlock[3] = &unk_10008ABB8;
  v19 = _Block_copy(aBlock);

  v20 = a5;
  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_10000229C(&qword_100092D20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000A45C(&unk_1000931F0, &unk_100072C10);
  sub_10000FA34(&qword_100092D30, &unk_1000931F0, &unk_100072C10, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v24 + 8))(v14, v12);
  (*(v15 + 8))(v17, v23);
}

void sub_100028928(void *a1, int a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v234 = a4;
  v233 = a3;
  v232 = a2;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v236 = &v228 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v245 = (&v228 - v12);
  v13 = __chkstk_darwin(v11);
  v231 = &v228 - v14;
  v15 = __chkstk_darwin(v13);
  v229 = &v228 - v16;
  v17 = __chkstk_darwin(v15);
  v235 = &v228 - v18;
  __chkstk_darwin(v17);
  v20 = &v228 - v19;
  v21 = sub_10003915C();
  v22 = v8;
  v23 = *(v8 + 16);
  v241 = v21;
  v242 = v8 + 16;
  v240 = v23;
  v23(v20);
  v24 = a1;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    *(v27 + 4) = v24;
    *v28 = v24;
    v29 = v24;
    _os_log_impl(&_mh_execute_header, v25, v26, "Attempting to store the record: %@", v27, 0xCu);
    sub_100006CAC(v28, &qword_100093F70, &qword_1000730D0);
  }

  v248 = v24;

  v30 = *(v22 + 8);
  v237 = v7;
  v239 = v22 + 8;
  v238 = v30;
  v30(v20, v7);
  v31 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_pendingDeletionCloudRecords;
  swift_beginAccess();
  v243 = v5;
  v230 = v31;
  v32 = *(v31 + v5);
  v35 = *(v32 + 64);
  v34 = v32 + 64;
  v33 = v35;
  v36 = 1 << *(*(v31 + v5) + 32);
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v38 = v37 & v33;
  v39 = (v36 + 63) >> 6;
  *&v246 = *(v31 + v5);
  swift_bridgeObjectRetain_n();
  v40 = 0;
  if (!v38)
  {
LABEL_7:
    while (1)
    {
      v41 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if (v41 >= v39)
      {

        v56 = v243;
        v57 = v248;
        v58 = v245;
        goto LABEL_24;
      }

      v38 = *(v34 + 8 * v41);
      ++v40;
      if (v38)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_101;
  }

  while (1)
  {
    v41 = v40;
LABEL_10:
    v42 = __clz(__rbit64(v38)) | (v41 << 6);
    v43 = *(*(v246 + 48) + 8 * v42);
    v244 = *(*(v246 + 56) + 16 * v42);
    v44 = v43;

    v247 = v44;
    v45 = [v44 recordName];
    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v47;

    v49 = [v248 recordID];
    v50 = [v49 recordName];

    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v52;

    if (v46 == v51 && v48 == v53)
    {

      goto LABEL_20;
    }

    v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v55)
    {
      break;
    }

    v38 &= v38 - 1;

    v40 = v41;
    if (!v38)
    {
      goto LABEL_7;
    }
  }

LABEL_20:

  v59 = v247;
  sub_100034DB0();
  v60 = swift_allocError();
  *v61 = 1;
  v253[0] = v60;

  v244(v253);

  v56 = v243;
  swift_beginAccess();
  v62 = sub_1000324A4(v59, sub_1000328C4, &qword_100093738, &qword_100073618);
  v64 = v63;
  swift_endAccess();
  sub_100008364(v62, v64);
  v65 = v237;
  v240(v235, v241, v237);
  v66 = v59;
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.default.getter();

  v69 = os_log_type_enabled(v67, v68);
  v57 = v248;
  v58 = v245;
  if (v69)
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    *v70 = 138412290;
    *(v70 + 4) = v66;
    *v71 = v66;
    v72 = v66;
    _os_log_impl(&_mh_execute_header, v67, v68, "Updating cancelled pending record deletion for: %@", v70, 0xCu);
    sub_100006CAC(v71, &qword_100093F70, &qword_1000730D0);
  }

  else
  {

    v67 = v66;
  }

  v238(v235, v65);
LABEL_24:
  v73 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_pendingUpdateCloudRecords;
  swift_beginAccess();
  v235 = v73;
  v74 = *(v56 + v73);
  v77 = *(v74 + 64);
  v76 = v74 + 64;
  v75 = v77;
  v78 = 1 << *(*(v56 + v73) + 32);
  v79 = -1;
  if (v78 < 64)
  {
    v79 = ~(-1 << v78);
  }

  v80 = v79 & v75;
  v81 = (v78 + 63) >> 6;
  v244 = *(v56 + v73);
  swift_bridgeObjectRetain_n();
  v82 = 0;
  if (!v80)
  {
LABEL_28:
    while (1)
    {
      v83 = v82 + 1;
      if (__OFADD__(v82, 1))
      {
        break;
      }

      if (v83 >= v81)
      {

        v99 = v237;
        v240(v58, v241, v237);
        if (IsAppleInternalBuild())
        {
          v100 = static os_log_type_t.default.getter();
        }

        else
        {
          v100 = static os_log_type_t.debug.getter();
        }

        v101 = v100;
        v102 = v243;
        v103 = Logger.logObject.getter();
        if (os_log_type_enabled(v103, v101))
        {
          LODWORD(v231) = v101;
          *&v246 = v103;
          v104 = swift_slowAlloc();
          v105 = swift_slowAlloc();
          v230 = swift_slowAlloc();
          v250 = v230;
          *v104 = 138412546;
          v106 = [v57 recordID];
          *(v104 + 4) = v106;
          v229 = v105;
          *v105 = v106;
          v244 = v104;
          *(v104 + 12) = 2080;
          v107 = [objc_msgSend(v57 "encryptedValues")];
          swift_unknownObjectRelease();
          v108 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v109 = 0;
          v247 = _swiftEmptyArrayStorage;
          v249 = _swiftEmptyArrayStorage;
          v110 = *(v108 + 16);
          v111 = v108 + 40;
          v228 = v108 + 40;
LABEL_43:
          v112 = v111 + 16 * v109;
          while (v110 != v109)
          {
            if (v109 >= *(v108 + 16))
            {
              goto LABEL_103;
            }

            ++v109;
            v113 = v112 + 16;

            v114 = [v248 encryptedValues];
            v115 = String._bridgeToObjectiveC()();
            v116 = [v114 objectForKeyedSubscript:v115];

            swift_unknownObjectRelease();
            v112 = v113;
            if (v116)
            {
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((v249 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v249 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v247 = v249;
              v111 = v228;
              goto LABEL_43;
            }
          }

          sub_10000A45C(&unk_100093260, &qword_1000730C8);
          v117 = Array.description.getter();
          v119 = v118;

          v120 = sub_1000034B8(v117, v119, &v250);

          v121 = v244;
          *(v244 + 14) = v120;
          v122 = v246;
          _os_log_impl(&_mh_execute_header, v246, v231, "Staging pending CKRecord %@ - %s", v121, 0x16u);
          sub_100006CAC(v229, &qword_100093F70, &qword_1000730D0);

          sub_1000036EC(v230);

          v99 = v237;
          v238(v245, v237);
          v102 = v243;
          v57 = v248;
        }

        else
        {

          v238(v58, v99);
        }

        v123 = swift_allocObject();
        v124 = v234;
        *(v123 + 16) = v233;
        *(v123 + 24) = v124;
        swift_beginAccess();

        v125 = sub_10003367C(sub_100038AF0, v123, v57);
        v127 = v126;
        swift_endAccess();
        sub_100008364(v125, v127);
        goto LABEL_78;
      }

      v80 = *(v76 + 8 * v83);
      ++v82;
      if (v80)
      {
        goto LABEL_31;
      }
    }

LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  while (1)
  {
    v83 = v82;
LABEL_31:
    v84 = __clz(__rbit64(v80)) | (v83 << 6);
    v85 = *(*(v244 + 6) + 8 * v84);
    v246 = *(*(v244 + 7) + 16 * v84);
    v86 = v85;

    v247 = v86;
    v87 = [v86 recordID];
    v88 = [v87 recordName];

    v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v91 = v90;

    v92 = [v248 recordID];
    v93 = [v92 recordName];

    v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v96 = v95;

    if (v89 == v94 && v91 == v96)
    {

      goto LABEL_55;
    }

    v98 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v98)
    {
      break;
    }

    v80 &= v80 - 1;

    v82 = v83;
    v57 = v248;
    v58 = v245;
    if (!v80)
    {
      goto LABEL_28;
    }
  }

LABEL_55:

  v128 = v248;
  v245 = swift_allocObject();
  *&v245[2].isa = v246;
  v129 = [objc_msgSend(v247 "encryptedValues")];
  swift_unknownObjectRelease();
  v130 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *&v246 = v130;
  v131 = *(v130 + 16);
  v132 = &off_100091000;
  if (v131)
  {
    v133 = v246 + 40;
    do
    {

      v139 = [v128 encryptedValues];
      v140 = String._bridgeToObjectiveC()();
      v141 = [v139 v132[346]];
      swift_unknownObjectRelease();

      if (v141)
      {
        swift_unknownObjectRelease();
        v134 = [v247 encryptedValues];
        v135 = [v128 encryptedValues];
        v136 = String._bridgeToObjectiveC()();
        v137 = [v135 v132[346]];

        swift_unknownObjectRelease();
        v138 = String._bridgeToObjectiveC()();

        [v134 setObject:v137 forKeyedSubscript:v138];
        v128 = v248;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
      }

      v133 += 16;
      --v131;
      v132 = &off_100091000;
    }

    while (v131);
  }

  v142 = swift_allocObject();
  v143 = v247;
  v142[2] = v247;
  v142[3] = sub_100035CE0;
  v144 = v233;
  v142[4] = v245;
  v142[5] = v144;
  *&v246 = v142;
  v142[6] = v234;
  v145 = v229;
  v99 = v237;
  v240(v229, v241, v237);
  v146 = v143;
  swift_retain_n();
  v147 = v146;

  v148 = Logger.logObject.getter();
  v149 = static os_log_type_t.default.getter();

  v150 = os_log_type_enabled(v148, v149);
  v247 = v147;
  if (v150)
  {
    v151 = swift_slowAlloc();
    v152 = swift_slowAlloc();
    v249 = v152;
    *v151 = 136315138;
    v153 = swift_allocObject();
    v154 = v245;
    *(v153 + 16) = sub_100035CE0;
    *(v153 + 24) = v154;
    v250 = v147;
    v251 = sub_100038AF0;
    v252 = v153;
    v155 = v147;

    sub_10000A45C(&unk_100093270, &qword_1000730D8);
    v156 = String.init<A>(describing:)();
    v158 = sub_1000034B8(v156, v157, &v249);

    *(v151 + 4) = v158;
    _os_log_impl(&_mh_execute_header, v148, v149, "Updating existing pending record: %s", v151, 0xCu);
    sub_1000036EC(v152);
  }

  v238(v145, v99);
  v159 = v231;
  v102 = v243;
  v240(v231, v241, v99);
  if (IsAppleInternalBuild())
  {
    v160 = static os_log_type_t.default.getter();
  }

  else
  {
    v160 = static os_log_type_t.debug.getter();
  }

  v161 = v160;
  v162 = Logger.logObject.getter();
  if (os_log_type_enabled(v162, v161))
  {
    v244 = v162;
    v163 = swift_slowAlloc();
    v164 = swift_slowAlloc();
    v233 = swift_slowAlloc();
    v250 = v233;
    *v163 = 138412546;
    v165 = [v128 recordID];
    *(v163 + 4) = v165;
    v230 = v164;
    *v164 = v165;
    v234 = v163;
    *(v163 + 12) = 2080;
    v166 = [objc_msgSend(v128 "encryptedValues")];
    swift_unknownObjectRelease();
    v167 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v168 = 0;
    v249 = _swiftEmptyArrayStorage;
    v169 = *(v167 + 16);
    v170 = v167 + 40;
    v229 = (v167 + 40);
LABEL_68:
    v171 = v170 + 16 * v168;
    while (v169 != v168)
    {
      if (v168 >= *(v167 + 16))
      {
        goto LABEL_104;
      }

      ++v168;
      v172 = v171 + 16;

      v173 = [v248 encryptedValues];
      v174 = String._bridgeToObjectiveC()();
      v175 = [v173 objectForKeyedSubscript:v174];

      swift_unknownObjectRelease();
      v171 = v172;
      if (v175)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v249 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v249 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v170 = v229;
        goto LABEL_68;
      }
    }

    sub_10000A45C(&unk_100093260, &qword_1000730C8);
    v176 = Array.description.getter();
    v178 = v177;

    v179 = sub_1000034B8(v176, v178, &v250);

    v180 = v234;
    *(v234 + 14) = v179;
    v181 = v244;
    _os_log_impl(&_mh_execute_header, v244, v161, "Updating existing pending CKRecord %@ - %s", v180, 0x16u);
    sub_100006CAC(v230, &qword_100093F70, &qword_1000730D0);

    sub_1000036EC(v233);

    v99 = v237;
    v238(v231, v237);
    v102 = v243;
  }

  else
  {

    v238(v159, v99);
  }

  v182 = swift_allocObject();
  v183 = v246;
  *(v182 + 16) = sub_100035D20;
  *(v182 + 24) = v183;
  swift_beginAccess();

  v184 = v247;
  v185 = sub_10003367C(sub_100035D80, v182, v247);
  v187 = v186;
  swift_endAccess();
  sub_100008364(v185, v187);

LABEL_78:
  v188 = v236;
  v240(v236, v241, v99);
  if (IsAppleInternalBuild())
  {
    v189 = static os_log_type_t.default.getter();
  }

  else
  {
    v189 = static os_log_type_t.debug.getter();
  }

  v190 = v189;

  v191 = Logger.logObject.getter();
  if (!os_log_type_enabled(v191, v190))
  {

    v238(v188, v99);
LABEL_99:
    sub_10002B51C(v232 & 1);
    return;
  }

  LODWORD(v244) = v190;
  v245 = v191;
  v192 = swift_slowAlloc();
  v241 = swift_slowAlloc();
  v249 = v241;
  *v192 = 134218242;
  v193 = v235;
  *(v192 + 4) = *(*&v235[v102] + 16);

  v242 = v192;
  *(v192 + 12) = 2080;
  v194 = *&v193[v102];
  v195 = v194 + 64;
  v196 = 1 << *(v194 + 32);
  if (v196 < 64)
  {
    v197 = ~(-1 << v196);
  }

  else
  {
    v197 = -1;
  }

  v198 = v197 & *(v194 + 64);
  v199 = (v196 + 63) >> 6;
  v247 = v194;
  swift_bridgeObjectRetain_n();
  v200 = 0;
  v201 = _swiftEmptyArrayStorage;
  *&v246 = v195;
  if (!v198)
  {
    goto LABEL_87;
  }

  do
  {
    v248 = v201;
LABEL_91:
    v203 = *(v247[6] + 8 * (__clz(__rbit64(v198)) | (v200 << 6)));
    swift_retain_n();
    v204 = v203;
    v205 = [v204 recordID];
    v206 = [v205 recordName];

    v207 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v209 = v208;

    v250 = v207;
    v251 = v209;

    v210._countAndFlagsBits = 58;
    v210._object = 0xE100000000000000;
    String.append(_:)(v210);

    v212 = v250;
    v211 = v251;
    v213 = CKRecord.recordType.getter();
    v215 = v214;

    v250 = v212;
    v251 = v211;

    v216._countAndFlagsBits = v213;
    v216._object = v215;
    String.append(_:)(v216);

    v217 = v250;
    v218 = v251;
    v201 = v248;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v201 = sub_1000176D4(0, *(v201 + 2) + 1, 1, v201);
    }

    v220 = *(v201 + 2);
    v219 = *(v201 + 3);
    if (v220 >= v219 >> 1)
    {
      v201 = sub_1000176D4((v219 > 1), v220 + 1, 1, v201);
    }

    v198 &= v198 - 1;
    *(v201 + 2) = v220 + 1;
    v221 = &v201[16 * v220];
    *(v221 + 4) = v217;
    *(v221 + 5) = v218;
    v195 = v246;
  }

  while (v198);
LABEL_87:
  while (1)
  {
    v202 = v200 + 1;
    if (__OFADD__(v200, 1))
    {
      break;
    }

    if (v202 >= v199)
    {

      v222 = Array.description.getter();
      v224 = v223;

      v225 = sub_1000034B8(v222, v224, &v249);

      v226 = v242;
      *(v242 + 14) = v225;
      v227 = v245;
      _os_log_impl(&_mh_execute_header, v245, v244, "Pending records[%ld]: %s", v226, 0x16u);
      sub_1000036EC(v241);

      v238(v236, v237);
      goto LABEL_99;
    }

    v198 = *(v195 + 8 * v202);
    ++v200;
    if (v198)
    {
      v248 = v201;
      v200 = v202;
      goto LABEL_91;
    }
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
}

uint64_t sub_10002A228(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v14 = *(v22 - 8);
  __chkstk_darwin(v22);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[1] = *(v5 + 56);
  v17 = swift_allocObject();
  *(v17 + 16) = v5;
  *(v17 + 24) = a1;
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;
  *(v17 + 48) = a2;
  aBlock[4] = sub_100035DB8;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002410;
  aBlock[3] = &unk_10008A2B8;
  v18 = _Block_copy(aBlock);

  v19 = a1;

  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_10000229C(&qword_100092D20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000A45C(&unk_1000931F0, &unk_100072C10);
  sub_10000FA34(&qword_100092D30, &unk_1000931F0, &unk_100072C10, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v11 + 8))(v13, v10);
  (*(v14 + 8))(v16, v22);
}

void sub_10002A51C(uint64_t a1, void *a2, uint64_t a3, NSObject *a4, int a5)
{
  v169 = a5;
  v171 = a4;
  v170 = a3;
  v181 = a2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v175 = v6;
  v176 = v7;
  v8 = __chkstk_darwin(v6);
  v172 = &v166 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v173 = &v166 - v11;
  v12 = __chkstk_darwin(v10);
  v167 = (&v166 - v13);
  __chkstk_darwin(v12);
  v168 = &v166 - v14;
  v15 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_pendingUpdateCloudRecords;
  swift_beginAccess();
  v177 = a1;
  v174 = v15;
  v16 = *(a1 + v15);
  v19 = *(v16 + 64);
  v18 = v16 + 64;
  v17 = v19;
  v20 = 1 << *(*(a1 + v15) + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v17;
  v23 = (v20 + 63) >> 6;
  v179 = *(a1 + v15);
  swift_bridgeObjectRetain_n();
  v24 = 0;
  if (!v22)
  {
LABEL_5:
    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v25 >= v23)
      {

        goto LABEL_21;
      }

      v22 = *(v18 + 8 * v25);
      ++v24;
      if (v22)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_77;
  }

  while (1)
  {
    v25 = v24;
LABEL_8:
    v26 = __clz(__rbit64(v22)) | (v25 << 6);
    v27 = *(v179[6].isa + v26);
    v28 = (v179[7].isa + 16 * v26);
    v29 = v28[1];
    v178 = *v28;
    v30 = v27;
    *&v180 = v29;

    v31 = [v30 recordID];
    v32 = [v31 recordName];

    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    v36 = [v181 recordName];
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    if (v33 == v37 && v35 == v39)
    {

      goto LABEL_18;
    }

    v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v41)
    {
      break;
    }

    v22 &= v22 - 1;

    v24 = v25;
    if (!v22)
    {
      goto LABEL_5;
    }
  }

LABEL_18:

  v42 = sub_10003915C();
  v43 = v175;
  v44 = v168;
  (*(v176 + 16))(v168, v42, v175);
  v45 = v30;
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v48 = 138412290;
    *(v48 + 4) = v45;
    *v49 = v45;
    v50 = v45;
    _os_log_impl(&_mh_execute_header, v46, v47, "Removing pending update for record: %@", v48, 0xCu);
    sub_100006CAC(v49, &qword_100093F70, &qword_1000730D0);
  }

  (*(v176 + 8))(v44, v43);
  sub_100034DB0();
  v51 = swift_allocError();
  *v52 = 1;
  v183 = v51;
  v184 = 1;
  (v178)(&v183);

  swift_beginAccess();
  v53 = sub_1000324A4(v45, sub_100032874, &qword_100093730, &qword_100073610);
  v55 = v54;
  swift_endAccess();
  sub_100008364(v53, v55);

LABEL_21:
  v56 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_pendingDeletionCloudRecords;
  v57 = v177;
  swift_beginAccess();
  v174 = v56;
  v58 = *(v57 + v56);
  v59 = v58 + 64;
  v60 = 1 << v58[32];
  v61 = -1;
  if (v60 < 64)
  {
    v61 = ~(-1 << v60);
  }

  v62 = v61 & *(v58 + 8);
  v63 = (v60 + 63) >> 6;
  v178 = v58;
  swift_bridgeObjectRetain_n();
  v64 = 0;
  if (!v62)
  {
LABEL_25:
    while (1)
    {
      v65 = v64 + 1;
      if (__OFADD__(v64, 1))
      {
        break;
      }

      if (v65 >= v63)
      {

        v79 = swift_allocObject();
        v80 = v171;
        *(v79 + 16) = v170;
        *(v79 + 24) = v80;
        v81 = v177;
        swift_beginAccess();

        v82 = sub_100033808(sub_100038AD8, v79, v181);
        v84 = v83;
        swift_endAccess();
        sub_100008364(v82, v84);
        goto LABEL_41;
      }

      v62 = *&v59[8 * v65];
      ++v64;
      if (v62)
      {
        goto LABEL_28;
      }
    }

LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    return;
  }

  while (1)
  {
    v65 = v64;
LABEL_28:
    v66 = __clz(__rbit64(v62)) | (v65 << 6);
    v67 = *(*(v178 + 6) + 8 * v66);
    v180 = *(*(v178 + 7) + 16 * v66);
    v68 = v67;

    v179 = v68;
    v69 = [v68 recordName];
    v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v72 = v71;

    v73 = [v181 recordName];
    v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v76 = v75;

    if (v70 == v74 && v72 == v76)
    {

      goto LABEL_38;
    }

    v78 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v78)
    {
      break;
    }

    v62 &= v62 - 1;

    v64 = v65;
    if (!v62)
    {
      goto LABEL_25;
    }
  }

LABEL_38:

  v85 = v179;
  v86 = swift_allocObject();
  *(v86 + 16) = v180;
  v87 = swift_allocObject();
  v87[2] = v85;
  v87[3] = sub_100037E94;
  v88 = v170;
  v87[4] = v86;
  v87[5] = v88;
  v87[6] = v171;
  v89 = v85;

  v90 = sub_10003915C();
  v91 = v167;
  (*(v176 + 16))(v167, v90, v175);
  v92 = v89;

  v93 = Logger.logObject.getter();
  v94 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    *v95 = 138412290;
    *(v95 + 4) = v92;
    *v96 = v92;
    v97 = v92;
    _os_log_impl(&_mh_execute_header, v93, v94, "Updating existing pending record: %@", v95, 0xCu);
    sub_100006CAC(v96, &qword_100093F70, &qword_1000730D0);
  }

  (*(v176 + 8))(v91, v175);
  v98 = swift_allocObject();
  *(v98 + 16) = sub_100037F14;
  *(v98 + 24) = v87;
  v81 = v177;
  swift_beginAccess();

  v99 = sub_100033808(sub_100037F60, v98, v92);
  v101 = v100;
  swift_endAccess();
  sub_100008364(v99, v101);

LABEL_41:
  v102 = sub_10003915C();
  v103 = v175;
  v104 = v176;
  v105 = v176 + 16;
  v106 = *(v176 + 16);
  v107 = v173;
  v106(v173, v102, v175);

  v108 = Logger.logObject.getter();
  v109 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v108, v109))
  {
    LODWORD(v168) = v109;
    v171 = v108;
    v178 = v106;
    v179 = v102;
    *&v180 = v105;
    v110 = swift_slowAlloc();
    v167 = swift_slowAlloc();
    v182[0] = v167;
    *v110 = 134218242;
    v111 = v174;
    *(v110 + 4) = *(*(v81 + v174) + 16);

    v170 = v110;
    *(v110 + 12) = 2080;
    v112 = *(v81 + v111);
    v113 = v112 + 64;
    v114 = 1 << *(v112 + 32);
    if (v114 < 64)
    {
      v115 = ~(-1 << v114);
    }

    else
    {
      v115 = -1;
    }

    v116 = v115 & *(v112 + 64);
    v117 = (v114 + 63) >> 6;
    v181 = v112;
    swift_bridgeObjectRetain_n();
    v118 = 0;
    v119 = _swiftEmptyArrayStorage;
    if (v116)
    {
      goto LABEL_50;
    }

    while (1)
    {
      v120 = v118 + 1;
      if (__OFADD__(v118, 1))
      {
        goto LABEL_78;
      }

      if (v120 >= v117)
      {

        v131 = Array.description.getter();
        v133 = v132;

        v134 = sub_1000034B8(v131, v133, v182);

        v135 = v170;
        *(v170 + 14) = v134;
        v136 = v171;
        _os_log_impl(&_mh_execute_header, v171, v168, "Pending deletion for records[%ld] : %s", v135, 0x16u);
        sub_1000036EC(v167);

        v103 = v175;
        v129 = *(v176 + 8);
        v129(v173, v175);
        v81 = v177;
        v106 = v178;
        v130 = v172;
        v102 = v179;
        goto LABEL_58;
      }

      v116 = *(v113 + 8 * v120);
      ++v118;
      if (v116)
      {
        v118 = v120;
        do
        {
LABEL_50:
          v121 = *(*(v181 + 6) + 8 * (__clz(__rbit64(v116)) | (v118 << 6)));

          v122 = [v121 recordName];
          v123 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v125 = v124;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v119 = sub_1000176D4(0, *(v119 + 2) + 1, 1, v119);
          }

          v127 = *(v119 + 2);
          v126 = *(v119 + 3);
          if (v127 >= v126 >> 1)
          {
            v119 = sub_1000176D4((v126 > 1), v127 + 1, 1, v119);
          }

          v116 &= v116 - 1;
          *(v119 + 2) = v127 + 1;
          v128 = &v119[16 * v127];
          *(v128 + 4) = v123;
          *(v128 + 5) = v125;
        }

        while (v116);
      }
    }
  }

  v129 = *(v104 + 8);
  v129(v107, v103);
  v130 = v172;
LABEL_58:
  v106(v130, v102, v103);

  v137 = Logger.logObject.getter();
  v138 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v137, v138))
  {
    LODWORD(v173) = v138;
    v179 = v137;
    *&v180 = v129;
    v139 = swift_slowAlloc();
    v171 = swift_slowAlloc();
    v182[0] = v171;
    *v139 = 134218242;
    v140 = v174;
    *(v139 + 4) = *(*(v81 + v174) + 16);

    v178 = v139;
    *(v139 + 12) = 2080;
    v141 = *(v81 + v140);
    v144 = *(v141 + 64);
    v143 = v141 + 64;
    v142 = v144;
    v145 = 1 << *(*(v81 + v140) + 32);
    if (v145 < 64)
    {
      v146 = ~(-1 << v145);
    }

    else
    {
      v146 = -1;
    }

    v147 = v146 & v142;
    v148 = (v145 + 63) >> 6;
    v181 = *(v81 + v140);
    swift_bridgeObjectRetain_n();
    v149 = 0;
    v150 = _swiftEmptyArrayStorage;
    if (v147)
    {
      goto LABEL_67;
    }

    while (1)
    {
      v151 = v149 + 1;
      if (__OFADD__(v149, 1))
      {
        goto LABEL_79;
      }

      if (v151 >= v148)
      {

        v160 = Array.description.getter();
        v162 = v161;

        v163 = sub_1000034B8(v160, v162, v182);

        v165 = v178;
        v164 = v179;
        *(v178 + 14) = v163;
        _os_log_impl(&_mh_execute_header, v164, v173, "Pending deletion for records[%ld] : %s", v165, 0x16u);
        sub_1000036EC(v171);

        (v180)(v172, v175);
        goto LABEL_75;
      }

      v147 = *(v143 + 8 * v151);
      ++v149;
      if (v147)
      {
        v149 = v151;
        do
        {
LABEL_67:
          v152 = *(*(v181 + 6) + 8 * (__clz(__rbit64(v147)) | (v149 << 6)));

          v153 = [v152 recordName];
          v154 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v156 = v155;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v150 = sub_1000176D4(0, *(v150 + 2) + 1, 1, v150);
          }

          v158 = *(v150 + 2);
          v157 = *(v150 + 3);
          if (v158 >= v157 >> 1)
          {
            v150 = sub_1000176D4((v157 > 1), v158 + 1, 1, v150);
          }

          v147 &= v147 - 1;
          *(v150 + 2) = v158 + 1;
          v159 = &v150[16 * v158];
          *(v159 + 4) = v154;
          *(v159 + 5) = v156;
        }

        while (v147);
      }
    }
  }

  v129(v130, v103);
LABEL_75:
  sub_10002B51C(v169 & 1);
}

uint64_t sub_10002B51C(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v60 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v59 = &v54 - v9;
  __chkstk_darwin(v8);
  v11 = &v54 - v10;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v2 + 56);
  *v15 = v16;
  (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
  v17 = v16;
  v18 = _dispatchPreconditionTest(_:)();
  result = (*(v13 + 8))(v15, v12);
  if (v18)
  {
    v20 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_updateTimer;
    v21 = *(v2 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_updateTimer);
    if (v21)
    {
      v22 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_retryFetchActivity;
      v23 = *(v2 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_retryFetchActivity);

      v57 = v21;
      if (v23)
      {
        v24 = sub_10003915C();
        (*(v5 + 16))(v11, v24, v4);
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&_mh_execute_header, v25, v26, "Defer fetch until scheduled changes are pushed to cloud", v27, 2u);
          v21 = v57;
        }

        (*(v5 + 8))(v11, v4);
        [*(v2 + v22) invalidate];
        v28 = *(v2 + v22);
        *(v2 + v22) = 0;

        (*(*v21 + 160))();
        *(v2 + v20) = 0;

        sub_10002BC14(a1 & 1, 1);
      }

      v29 = sub_10003915C();
      v30 = *(v5 + 16);
      v31 = v59;
      v30(v59, v29, v4);

      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();

      v34 = os_log_type_enabled(v32, v33);
      v58 = v5;
      if (v34)
      {
        v35 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v61[0] = v55;
        *v35 = 136315138;
        swift_beginAccess();
        v56 = v29;
        sub_100004890(0, &qword_100093708, CKRecord_ptr);

        sub_10000A45C(&qword_100093710, &qword_1000735F8);
        sub_100036B9C(&qword_100093718, &qword_100093708, CKRecord_ptr);
        v36 = Dictionary.Keys.description.getter();
        v38 = v37;

        v39 = sub_1000034B8(v36, v38, v61);
        v29 = v56;

        *(v35 + 4) = v39;
        _os_log_impl(&_mh_execute_header, v32, v33, "Already Scheduled changes: %s", v35, 0xCu);
        sub_1000036EC(v55);

        v40 = *(v58 + 8);
        v40(v59, v4);
      }

      else
      {

        v40 = *(v5 + 8);
        v40(v31, v4);
      }

      v41 = v60;
      v30(v60, v29, v4);

      v42 = Logger.logObject.getter();
      v43 = v4;
      v44 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v42, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v59 = v43;
        v47 = v46;
        v62 = v46;
        *v45 = 136315138;
        swift_beginAccess();
        sub_100004890(0, &qword_1000936F0, CKRecordID_ptr);

        sub_10000A45C(&qword_1000936F8, &qword_1000735F0);
        sub_100036B9C(&qword_100093700, &qword_1000936F0, CKRecordID_ptr);
        v48 = Dictionary.Keys.description.getter();
        v50 = v49;

        v51 = sub_1000034B8(v48, v50, &v62);

        *(v45 + 4) = v51;
        _os_log_impl(&_mh_execute_header, v42, v44, "Already Scheduled deletion: %s", v45, 0xCu);
        sub_1000036EC(v47);

        v52 = v59;
        v53 = v60;
      }

      else
      {

        v53 = v41;
        v52 = v43;
      }

      return (v40)(v53, v52);
    }

    else
    {
      return sub_10002BC14(a1 & 1, 0);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10002BC14(char a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(v3 + 56);
  *v13 = v14;
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  result = (*(v11 + 8))(v13, v10);
  if (v14)
  {
    sub_1000335D8(0.0, 10.0);
    v29 = v17;
    v18 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_initialUploadDone;
    v19 = v17;
    if ((*(v3 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_initialUploadDone) & 1) == 0)
    {
      v20 = v17;
      v21 = sub_1000694AC();
      swift_beginAccess();
      v19 = 3.0;
      if (*v21 == 1 && (a1 & 1) == 0)
      {
        sub_1000335D8(0.0, 120.0);
        v19 = v20 + v22;
      }

      v29 = v19;
      *(v3 + v18) = 1;
    }

    v23 = sub_10003915C();
    (*(v7 + 16))(v9, v23, v6);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 67109376;
      *(v26 + 4) = a1 & 1;
      *(v26 + 8) = 2048;
      *(v26 + 10) = v19;
      _os_log_impl(&_mh_execute_header, v24, v25, "checkInPendingCloudUpdates, userInitiated: %{BOOL}d with delay: %f", v26, 0x12u);
    }

    (*(v7 + 8))(v9, v6);
    v27 = type metadata accessor for Transaction();
    __chkstk_darwin(v27);
    *&v28[-32] = v3;
    *&v28[-24] = &v29;
    v28[-16] = a1 & 1;
    v28[-15] = a2 & 1;
    return static Transaction.named<A>(_:with:)("com.apple.bluetoothuser.checkInPendingCloudUpdates", 50, 2, sub_1000368C8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10002BF78(uint64_t a1, uint64_t a2, int a3, int a4)
{
  LODWORD(v4) = a4;
  v97 = a2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v91 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v90 = &v79 - v11;
  __chkstk_darwin(v10);
  v13 = &v79 - v12;
  Transaction.capture()();
  v14 = sub_10003915C();
  v15 = *(v7 + 16);
  v95 = v14;
  v98 = v6;
  v96 = v7 + 16;
  v94 = v15;
  (v15)(v13);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "checkInPendingCloudUpdates timer fired", v18, 2u);
  }

  v20 = *(v7 + 8);
  v19 = v7 + 8;
  v92 = v20;
  v20(v13, v98);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v89 = v19;
    v22 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_updateTimer;
    v23 = Strong;
    v24 = *(Strong + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_updateTimer);
    if (v24)
    {
      v25 = *(*v24 + 160);

      v25(v26);
    }

    v27 = v23;
    *(v23 + v22) = 0;

    v28 = *(v23 + 56);
    v29 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_pendingDeletionCloudRecords;
    swift_beginAccess();
    v30 = *(v23 + v29);
    v31 = *(v30 + 16);
    v93 = v23;
    v103 = v28;
    v87 = a3;
    v86 = v30;
    if (v31)
    {
      v88 = sub_10003220C(v31, 0);
      v32 = sub_100033994(&v109, v88 + 4, v31, v30);
      v33 = v109;
      swift_bridgeObjectRetain_n();
      v34 = v28;
      sub_100036A30(v33);
      if (v32 != v31)
      {
        goto LABEL_61;
      }

      v27 = v93;
      v28 = v103;
      LOBYTE(a3) = v87;
    }

    else
    {

      v35 = v28;
      v88 = _swiftEmptyArrayStorage;
    }

    v36 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_pendingUpdateCloudRecords;
    swift_beginAccess();
    v37 = *(v27 + v36);
    v31 = v37[2];
    v85 = v37;
    if (v31)
    {
      v28 = v37;
      v30 = sub_10003220C(v31, 0);
      v38 = sub_100033994(&v109, (v30 + 32), v31, v28);
      v33 = v109;
      swift_bridgeObjectRetain_n();
      sub_100036A30(v33);
      if (v38 != v31)
      {
        goto LABEL_62;
      }

      v28 = v103;
      LOBYTE(a3) = v87;
    }

    else
    {

      v30 = _swiftEmptyArrayStorage;
    }

    v39 = v90;
    v94(v90, v95, v98);
    if (IsAppleInternalBuild())
    {
      v40 = static os_log_type_t.default.getter();
    }

    else
    {
      v40 = static os_log_type_t.debug.getter();
    }

    LODWORD(v33) = v40;
    v41 = v39;
    v31 = Logger.logObject.getter();
    if (os_log_type_enabled(v31, v33))
    {
      v42 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v109 = v79;
      v80 = v42;
      *v42 = 136315138;
      if (v30 < 0 || (v30 & 0x4000000000000000) != 0)
      {
        goto LABEL_63;
      }

      for (i = *(v30 + 16); ; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v81 = v33;
        v82 = v31;
        v83 = v4;
        v44 = _swiftEmptyArrayStorage;
        if (!i)
        {
          break;
        }

        v31 = 0;
        v84 = 0;
        v102 = v30 & 0xC000000000000001;
        v101 = v30 + 32;
        v4 = &off_100091000;
        v100 = v30;
        v99 = i;
        while (1)
        {
          if (v102)
          {
            v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v31 >= *(v30 + 16))
            {
              goto LABEL_60;
            }

            v45 = *(v101 + 8 * v31);
          }

          v30 = v45;
          if (__OFADD__(v31++, 1))
          {
            break;
          }

          v105 = v31;
          v106 = v44;
          v47 = [objc_msgSend(v45 "encryptedValues")];
          swift_unknownObjectRelease();
          v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v48 = 0;
          v107 = _swiftEmptyArrayStorage;
          v108 = _swiftEmptyArrayStorage;
          v49 = *(v33 + 16);
          v50 = v33 + 40;
          v104 = v33 + 40;
LABEL_28:
          v51 = v50 + 16 * v48;
          while (v49 != v48)
          {
            if (v48 >= *(v33 + 16))
            {
              __break(1u);
              goto LABEL_59;
            }

            ++v48;
            v31 = v51 + 16;

            v52 = [v30 encryptedValues];
            v28 = String._bridgeToObjectiveC()();
            v53 = [v52 objectForKeyedSubscript:v28];

            swift_unknownObjectRelease();
            v51 = v31;
            if (v53)
            {
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v107 = v108;
              v50 = v104;
              goto LABEL_28;
            }
          }

          v44 = v106;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v44 = sub_100031EE8(0, v44[2] + 1, 1, v44);
          }

          v28 = v103;
          v30 = v100;
          v33 = v44[2];
          v54 = v44[3];
          if (v33 >= v54 >> 1)
          {
            v44 = sub_100031EE8((v54 > 1), v33 + 1, 1, v44);
          }

          v44[2] = v33 + 1;
          v44[v33 + 4] = v107;
          v31 = v105;
          if (v105 == v99)
          {
            goto LABEL_44;
          }
        }

LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        ;
      }

      v84 = 0;
LABEL_44:
      sub_10000A45C(&qword_1000936D8, &qword_1000735E0);
      v56 = Array.description.getter();
      v58 = v57;

      v59 = sub_1000034B8(v56, v58, &v109);

      v60 = v80;
      *(v80 + 1) = v59;
      v61 = v82;
      _os_log_impl(&_mh_execute_header, v82, v81, "Staged CKRecords - %s", v60, 0xCu);
      sub_1000036EC(v79);

      v55 = v98;
      v92(v90, v98);
      LOBYTE(v4) = v83;
      LOBYTE(a3) = v87;
    }

    else
    {

      v55 = v98;
      v92(v41, v98);
      v84 = 0;
    }

    v94(v91, v95, v55);

    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 134217984;
      if (v30 < 0 || (v30 & 0x4000000000000000) != 0)
      {
        v65 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v65 = *(v30 + 16);
      }

      *(v64 + 4) = v65;

      _os_log_impl(&_mh_execute_header, v62, v63, "checkInPendingCloudUpdates count: %ld", v64, 0xCu);
    }

    else
    {
    }

    v92(v91, v98);
    sub_100004890(0, &qword_1000936D0, CKModifyRecordsOperation_ptr);

    v66 = v88;

    v110.value._rawValue = v30;
    v110.is_nil = v66;
    v67 = CKModifyRecordsOperation.init(recordsToSave:recordIDsToDelete:)(v110, v111).super.super.super.super.isa;
    v68 = v93;
    if (a3)
    {
      v69 = sub_100019E0C();
    }

    else
    {
      v69 = sub_100019EBC();
    }

    v70 = v69;
    [(objc_class *)v67 setGroup:v69, v79];

    [(objc_class *)v67 setCallbackQueue:*(v68 + 64)];
    if (qos_class_self() >= QOS_CLASS_USER_INITIATED)
    {
      [(objc_class *)v67 setQualityOfService:25];
    }

    v71 = swift_allocObject();
    *(v71 + 16) = v85;
    *(v71 + 24) = v97;

    CKModifyRecordsOperation.perRecordSaveBlock.setter();
    *(swift_allocObject() + 16) = v86;
    CKModifyRecordsOperation.perRecordDeleteBlock.setter();
    v72 = swift_allocObject();
    v73 = v93;
    *(v72 + 16) = v28;
    *(v72 + 24) = v73;
    v74 = v88;
    *(v72 + 32) = v30;
    *(v72 + 40) = v74;
    *(v72 + 48) = a3 & 1;
    *(v72 + 49) = v4 & 1;
    v75 = v28;

    CKModifyRecordsOperation.modifyRecordsResultBlock.setter();
    v76 = type metadata accessor for Transaction();
    __chkstk_darwin(v76);
    *(&v79 - 2) = v67;
    static Transaction.named<A>(_:with:)("com.apple.bluetoothuser.checkInPendingCloudUpdates.completionBlock", 66, 2, sub_100036A68);
    v77 = sub_100019AA4();
    v78 = [v77 privateCloudDatabase];

    [v78 addOperation:v67];
  }
}

void sub_10002CBE0(void *a1, void *a2, int a3, uint64_t a4, _DWORD *a5)
{
  v77 = a5;
  LODWORD(v81) = a3;
  v84 = a2;
  v86 = a1;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v82 = v6;
  v83 = v7;
  v8 = __chkstk_darwin(v6);
  v80 = (&v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __chkstk_darwin(v8);
  v78 = &v75 - v11;
  __chkstk_darwin(v10);
  v79 = (&v75 - v12);
  v13 = 1 << *(a4 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a4 + 64);
  v16 = (v13 + 63) >> 6;

  v17 = 0;
  if (v15)
  {
    while (1)
    {
      v18 = v17;
LABEL_8:
      v19 = __clz(__rbit64(v15)) | (v18 << 6);
      v20 = *(*(a4 + 48) + 8 * v19);
      v21 = *(a4 + 56) + 16 * v19;
      v22 = *(v21 + 8);
      v85 = *v21;
      v23 = v20;
      v88 = v22;

      v87 = v23;
      v24 = [v23 recordID];
      v25 = [v24 recordName];

      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      v29 = [v86 recordName];
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      if (v26 == v30 && v28 == v32)
      {

        goto LABEL_20;
      }

      v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v34)
      {
        break;
      }

      v15 &= v15 - 1;

      v17 = v18;
      if (!v15)
      {
        goto LABEL_5;
      }
    }

LABEL_20:
    v35 = sub_10003915C();
    v36 = *(v83 + 16);
    if (v81)
    {
      v36(v80, v35, v82);
      v37 = v86;
      v38 = v84;
      sub_10003785C(v84, 1);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();

      sub_100008738(v38, 1);
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *v41 = 138412546;
        *(v41 + 4) = v37;
        *v42 = v37;
        *(v41 + 12) = 2112;
        v43 = v37;
        sub_10003785C(v38, 1);
        v44 = _swift_stdlib_bridgeErrorToNSError();
        *(v41 + 14) = v44;
        v42[1] = v44;
        _os_log_impl(&_mh_execute_header, v39, v40, "CheckInPendingCloudUpdates CKRecord save failed %@ with error: %@", v41, 0x16u);
        sub_10000A45C(&qword_100093F70, &qword_1000730D0);
        swift_arrayDestroy();
      }

      (*(v83 + 8))(v80, v82);
      v90 = v38;
      v91 = 1;
      v85(&v90);
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_100026830(v38, 0);
      }
    }

    else
    {
      v36(v79, v35, v82);
      v45 = v86;
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        *v48 = 138412290;
        *(v48 + 4) = v45;
        *v49 = v45;
        v50 = v45;
        _os_log_impl(&_mh_execute_header, v46, v47, "CheckInPendingCloudUpdates CKRecord successfully saved (%@.", v48, 0xCu);
        sub_100006CAC(v49, &qword_100093F70, &qword_1000730D0);
      }

      v51 = v82;
      v52 = *(v83 + 8);
      v83 += 8;
      v52(v79, v82);
      v53 = v78;
      v36(v78, v35, v51);
      if (IsAppleInternalBuild())
      {
        v54 = static os_log_type_t.default.getter();
      }

      else
      {
        v54 = static os_log_type_t.debug.getter();
      }

      v55 = v54;
      v56 = v84;
      v57 = Logger.logObject.getter();
      if (os_log_type_enabled(v57, v55))
      {
        LODWORD(v79) = v55;
        v80 = v57;
        v81 = v52;
        v58 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v90 = v76;
        v77 = v58;
        *v58 = 136315138;
        v59 = [objc_msgSend(v56 "encryptedValues")];
        swift_unknownObjectRelease();
        v60 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v61 = 0;
        v86 = _swiftEmptyArrayStorage;
        v89 = _swiftEmptyArrayStorage;
        v62 = *(v60 + 16);
        v63 = v60 + 40;
        v75 = v60 + 40;
LABEL_33:
        v64 = v63 + 16 * v61;
        while (v62 != v61)
        {
          if (v61 >= *(v60 + 16))
          {
            goto LABEL_45;
          }

          ++v61;
          v65 = v64 + 16;

          v66 = [v84 encryptedValues];
          v67 = String._bridgeToObjectiveC()();
          v68 = [v66 objectForKeyedSubscript:v67];

          swift_unknownObjectRelease();
          v64 = v65;
          if (v68)
          {
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v86 = v89;
            v63 = v75;
            goto LABEL_33;
          }
        }

        sub_10000A45C(&unk_100093260, &qword_1000730C8);
        v69 = Array.description.getter();
        v71 = v70;

        v72 = sub_1000034B8(v69, v71, &v90);

        v73 = v77;
        *(v77 + 1) = v72;
        v74 = v80;
        _os_log_impl(&_mh_execute_header, v80, v79, "CheckInPendingCloudUpdates saved CKRecords values - %s", v73, 0xCu);
        sub_1000036EC(v76);

        v81(v78, v82);
        v56 = v84;
      }

      else
      {

        v52(v53, v82);
      }

      v90 = v56;
      v91 = 0;
      v85(&v90);
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v16)
      {

        return;
      }

      v15 = *(a4 + 64 + 8 * v18);
      ++v17;
      if (v15)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
  }
}

void sub_10002D4A0(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  v46 = a3;
  v43 = a2;
  v6 = type metadata accessor for Logger();
  v47 = *(v6 - 8);
  v48 = v6;
  v7 = __chkstk_darwin(v6);
  v45 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v44 = &v42 - v9;
  v10 = 1 << *(a4 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a4 + 64);
  v13 = (v10 + 63) >> 6;

  v14 = 0;
  if (v12)
  {
    while (1)
    {
      v15 = v14;
LABEL_8:
      v16 = __clz(__rbit64(v12)) | (v15 << 6);
      v17 = *(*(a4 + 48) + 8 * v16);
      v18 = *(*(a4 + 56) + 16 * v16);
      sub_100004890(0, &unk_100094230, NSObject_ptr);
      v19 = v17;
      swift_retain_n();
      v20 = v19;
      v21 = static NSObject.== infix(_:_:)();

      if (v21)
      {
        break;
      }

      v12 &= v12 - 1;

      v14 = v15;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    if (v46)
    {
      v22 = sub_10003915C();
      v24 = v47;
      v23 = v48;
      v25 = v45;
      (*(v47 + 16))(v45, v22, v48);
      v26 = v43;
      swift_errorRetain();
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();
      sub_100036B6C(v26, 1);
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *v29 = 138412290;
        swift_errorRetain();
        v31 = _swift_stdlib_bridgeErrorToNSError();
        *(v29 + 4) = v31;
        *v30 = v31;
        _os_log_impl(&_mh_execute_header, v27, v28, "CheckInPendingCloudUpdates CKRecord deletion failed with error: %@", v29, 0xCu);
        sub_100006CAC(v30, &qword_100093F70, &qword_1000730D0);

        v25 = v45;
      }

      (*(v24 + 8))(v25, v23);
      v49 = v26;
    }

    else
    {
      v32 = sub_10003915C();
      v34 = v47;
      v33 = v48;
      v35 = v44;
      (*(v47 + 16))(v44, v32, v48);
      v36 = a1;
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v39 = 138412290;
        *(v39 + 4) = v36;
        *v40 = v36;
        v41 = v36;
        _os_log_impl(&_mh_execute_header, v37, v38, "CheckInPendingCloudUpdates CKRecord deleted: %@", v39, 0xCu);
        sub_100006CAC(v40, &qword_100093F70, &qword_1000730D0);

        v35 = v44;
      }

      (*(v34 + 8))(v35, v33);
      v49 = 0;
    }

    v18(&v49);
  }

  else
  {
    while (1)
    {
LABEL_5:
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        return;
      }

      if (v15 >= v13)
      {
        break;
      }

      v12 = *(a4 + 64 + 8 * v15);
      ++v14;
      if (v12)
      {
        goto LABEL_8;
      }
    }
  }
}

uint64_t sub_10002D92C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, int a8)
{
  v24 = a8;
  v28 = a3;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v23[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for DispatchQoS();
  v25 = *(v16 - 8);
  v26 = v16;
  __chkstk_darwin(v16);
  v18 = &v23[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = a1;
  a2 &= 1u;
  *(v20 + 32) = a2;
  *(v20 + 40) = a5;
  *(v20 + 48) = a6;
  *(v20 + 56) = a7;
  *(v20 + 57) = v24;
  aBlock[4] = sub_100036B78;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002410;
  aBlock[3] = &unk_10008A708;
  v21 = _Block_copy(aBlock);

  sub_100036B90(a1, a2);

  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_10000229C(&qword_100092D20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000A45C(&unk_1000931F0, &unk_100072C10);
  sub_10000FA34(&qword_100092D30, &unk_1000931F0, &unk_100072C10, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v27 + 8))(v15, v13);
  (*(v25 + 8))(v18, v26);
}

uint64_t sub_10002DC74(uint64_t a1, uint64_t a2, char a3, unint64_t a4, unint64_t a5, int a6, int a7)
{
  v173 = a5;
  v164 = a2;
  v12 = type metadata accessor for Logger();
  v165 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v168 = &v159[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __chkstk_darwin(v13);
  v169 = &v159[-v16];
  v17 = __chkstk_darwin(v15);
  v19 = &v159[-v18];
  v20 = __chkstk_darwin(v17);
  v22 = &v159[-v21];
  v23 = __chkstk_darwin(v20);
  v25 = &v159[-v24];
  __chkstk_darwin(v23);
  v27 = &v159[-v26];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v177 = result;
  if (!result)
  {
    return result;
  }

  v174 = a4;
  v29 = a4 >> 62;
  v172 = v12;
  v161 = a1;
  v160 = a6;
  if (a3)
  {
    if (v29)
    {
      goto LABEL_74;
    }

    for (i = *((v174 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v31 = v177;
      v32 = v169;
      if (i)
      {
        break;
      }

LABEL_40:
      v72 = sub_10003915C();
      v73 = v165;
      v74 = *(v165 + 16);
      v163 = v72;
      v167 = v165 + 16;
      v162 = v74;
      (v74)(v32);

      v33 = Logger.logObject.getter();
      LOBYTE(v40) = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v33, v40))
      {

        v75 = *(v73 + 8);
        v75(v32, v12);
        goto LABEL_47;
      }

      v42 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v179 = v32;
      *v42 = 136315138;
      swift_beginAccess();
      if (!swift_weakLoadStrong())
      {
        goto LABEL_45;
      }

      swift_beginAccess();

LABEL_46:
      sub_100004890(0, &qword_100093708, CKRecord_ptr);
      sub_10000A45C(&qword_100093710, &qword_1000735F8);
      sub_100036B9C(&qword_100093718, &qword_100093708, CKRecord_ptr);
      v76 = Dictionary.description.getter();
      v78 = v77;

      v79 = sub_1000034B8(v76, v78, &v179);

      *(v42 + 4) = v79;
      _os_log_impl(&_mh_execute_header, v33, v40, "Pending changes in queue: %s", v42, 0xCu);
      sub_1000036EC(v32);

      v75 = *(v165 + 8);
      v12 = v172;
      v75(v169, v172);
      v31 = v177;
LABEL_47:
      v80 = v168;
      v166 = v75;
      if (v173 >> 62)
      {
        v81 = _CocoaArrayWrapper.endIndex.getter();
        if (!v81)
        {
LABEL_110:
          (v162)(v80, v163, v12);

          v149 = Logger.logObject.getter();
          v150 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v149, v150))
          {
            v151 = swift_slowAlloc();
            v152 = swift_slowAlloc();
            v178 = v152;
            *v151 = 136315138;
            swift_beginAccess();
            if (swift_weakLoadStrong())
            {
              swift_beginAccess();
            }

            else
            {
              sub_10003774C(_swiftEmptyArrayStorage, &qword_100093738, &qword_100073618, sub_1000328C4);
            }

            sub_100004890(0, &qword_1000936F0, CKRecordID_ptr);
            sub_10000A45C(&qword_1000936F8, &qword_1000735F0);
            sub_100036B9C(&qword_100093700, &qword_1000936F0, CKRecordID_ptr);
            v153 = Dictionary.description.getter();
            v155 = v154;

            v156 = sub_1000034B8(v153, v155, &v178);

            *(v151 + 4) = v156;
            _os_log_impl(&_mh_execute_header, v149, v150, "Pending deletion in queue: %s", v151, 0xCu);
            sub_1000036EC(v152);

            v166(v168, v172);
            v31 = v177;
          }

          else
          {

            v166(v80, v12);
          }

          v157 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_pendingDeletionCloudRecords;
          swift_beginAccess();
          if (*(*(v31 + v157) + 16) || (v158 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_pendingUpdateCloudRecords, swift_beginAccess(), *(*(v31 + v158) + 16)))
          {
            sub_10002B51C(v160 & 1);
          }
        }
      }

      else
      {
        v81 = *((v173 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v81)
        {
          goto LABEL_110;
        }
      }

      v82 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_pendingDeletionCloudRecords;
      v83 = v173;
      v175 = v173 & 0xC000000000000001;
      swift_beginAccess();
      v84 = 0;
      v170 = v83 & 0xFFFFFFFFFFFFFF8;
      v169 = (v83 + 32);
      v174 = v81;
      v171 = v82;
      while (1)
      {
        if (v175)
        {
          v89 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v84 >= *(v170 + 16))
          {
            goto LABEL_73;
          }

          v89 = *&v169[8 * v84];
        }

        v176 = v89;
        v39 = __OFADD__(v84++, 1);
        if (v39)
        {
          goto LABEL_71;
        }

        v90 = *(v31 + v82);
        v91 = 1 << *(v90 + 32);
        v92 = v91 < 64 ? ~(-1 << v91) : -1;
        v93 = v92 & *(v90 + 64);
        v12 = (v91 + 63) >> 6;
        swift_bridgeObjectRetain_n();
        v94 = 0;
        if (!v93)
        {
          break;
        }

        while (1)
        {
          v95 = v94;
LABEL_65:
          v96 = __clz(__rbit64(v93)) | (v95 << 6);
          v97 = *(*(v90 + 48) + 8 * v96);
          v98 = *(*(v90 + 56) + 16 * v96);
          sub_100004890(0, &unk_100094230, NSObject_ptr);
          v99 = v97;
          swift_retain_n();
          v100 = v99;
          v101 = static NSObject.== infix(_:_:)();

          if (v101)
          {
            break;
          }

          v93 &= v93 - 1;

          v94 = v95;
          if (!v93)
          {
            goto LABEL_62;
          }
        }

        v178 = v164;
        v98(&v178);

LABEL_51:
        v31 = v177;
        v82 = v171;
        swift_beginAccess();
        v85 = v176;
        v86 = sub_1000324A4(v176, sub_1000328C4, &qword_100093738, &qword_100073618);
        v88 = v87;
        swift_endAccess();
        sub_100008364(v86, v88);

        v12 = v172;
        v80 = v168;
        if (v84 == v174)
        {
          goto LABEL_110;
        }
      }

LABEL_62:
      while (1)
      {
        v95 = v94 + 1;
        if (__OFADD__(v94, 1))
        {
          break;
        }

        if (v95 >= v12)
        {

          goto LABEL_51;
        }

        v93 = *(v90 + 64 + 8 * v95);
        ++v94;
        if (v93)
        {
          goto LABEL_65;
        }
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      ;
    }

    v33 = v174;
    v167 = v174 & 0xC000000000000001;
    v171 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_pendingUpdateCloudRecords;
    swift_beginAccess();
    v34 = 0;
    v163 = v33 & 0xFFFFFFFFFFFFFF8;
    v162 = (v33 + 32);
    v166 = i;
    while (1)
    {
      if (v167)
      {
        v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v34 >= *(v163 + 16))
        {
          goto LABEL_72;
        }

        v38 = v162[v34].isa;
      }

      v176 = v38;
      v39 = __OFADD__(v34, 1);
      v40 = (v34 + 1);
      if (v39)
      {
        goto LABEL_70;
      }

      v170 = v40;
      v41 = *(v31 + v171);
      v42 = v41 + 64;
      v43 = 1 << *(v41 + 32);
      v44 = v43 < 64 ? ~(-1 << v43) : -1;
      v45 = v44 & *(v41 + 64);
      v46 = (v43 + 63) >> 6;
      v175 = v41;
      swift_bridgeObjectRetain_n();
      v47 = 0;
      if (!v45)
      {
        break;
      }

      while (1)
      {
        v48 = v47;
LABEL_22:
        v49 = __clz(__rbit64(v45)) | (v48 << 6);
        v50 = *(*(v175 + 48) + 8 * v49);
        v33 = *(*(v175 + 56) + 16 * v49);
        sub_100004890(0, &unk_100094230, NSObject_ptr);
        v40 = v50;

        v51 = [v40 recordID];
        v52 = [v176 recordID];
        v32 = static NSObject.== infix(_:_:)();

        if (v32)
        {
          break;
        }

        v45 &= v45 - 1;

        v47 = v48;
        if (!v45)
        {
          goto LABEL_19;
        }
      }

      v179 = v164;
      v180 = 1;
      (v33)(&v179);

LABEL_8:
      v31 = v177;
      swift_beginAccess();
      v33 = v176;
      v35 = sub_1000324A4(v176, sub_100032874, &qword_100093730, &qword_100073610);
      v37 = v36;
      swift_endAccess();
      sub_100008364(v35, v37);

      v34 = v170;
      v12 = v172;
      v32 = v169;
      if (v170 == v166)
      {
        goto LABEL_40;
      }
    }

LABEL_19:
    while (1)
    {
      v48 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        break;
      }

      if (v48 >= v46)
      {

        goto LABEL_8;
      }

      v45 = *(v42 + 8 * v48);
      ++v47;
      if (v45)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_45:
    sub_10003774C(_swiftEmptyArrayStorage, &qword_100093730, &qword_100073610, sub_100032874);
    goto LABEL_46;
  }

  v53 = sub_10003915C();
  v54 = *(v165 + 16);
  v171 = v53;
  v175 = v165 + 16;
  v170 = v54;
  v54(v27);
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&_mh_execute_header, v55, v56, "CKRecords modify operation finished successfully", v57, 2u);
  }

  v58 = *(v165 + 8);
  v165 += 8;
  v176 = v58;
  result = (v58)(v27, v172);
  v167 = v19;
  LODWORD(v166) = a7;
  v163 = v22;
  if (v29)
  {
    v102 = v174;
    result = _CocoaArrayWrapper.endIndex.getter();
    v59 = v102;
    v60 = result;
    if (!result)
    {
      goto LABEL_76;
    }
  }

  else
  {
    v59 = v174;
    v60 = *((v174 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v60)
    {
      goto LABEL_76;
    }
  }

  if (v60 < 1)
  {
    __break(1u);
    goto LABEL_122;
  }

  v61 = 0;
  v62 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_pendingUpdateCloudRecords;
  v63 = v59 & 0xC000000000000001;
  do
  {
    if (v63)
    {
      v64 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v64 = *(v59 + 8 * v61 + 32);
    }

    v65 = v64;
    swift_beginAccess();
    v66 = sub_100032874(v65);
    if (v67)
    {
      v68 = v66;
      v69 = v177;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v71 = *(v69 + v62);
      v179 = v71;
      *(v69 + v62) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1000333D0(&qword_100093730, &qword_100073610);
        v71 = v179;
      }

      sub_100032DE8(v68, v71);
      *(v69 + v62) = v71;
    }

    ++v61;
    swift_endAccess();

    v59 = v174;
  }

  while (v60 != v61);
LABEL_76:
  v103 = v172;
  (v170)(v25, v171, v172);

  v104 = Logger.logObject.getter();
  v105 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v104, v105))
  {
    v106 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    v181 = v107;
    *v106 = 136315138;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v109 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_pendingUpdateCloudRecords;
      v110 = Strong;
      swift_beginAccess();
      v111 = *(v110 + v109);
    }

    else
    {
      v111 = 0;
    }

    v179 = v111;
    sub_10000A45C(&qword_100093728, &qword_100073608);
    v114 = String.init<A>(describing:)();
    v116 = sub_1000034B8(v114, v115, &v181);

    *(v106 + 4) = v116;
    _os_log_impl(&_mh_execute_header, v104, v105, "Pending changes in queue: %s", v106, 0xCu);
    sub_1000036EC(v107);

    v112 = v25;
    v113 = v172;
  }

  else
  {

    v112 = v25;
    v113 = v103;
  }

  result = (v176)(v112, v113);
  if (v173 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v117 = result;
    if (!result)
    {
      goto LABEL_95;
    }
  }

  else
  {
    v117 = *((v173 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v117)
    {
      goto LABEL_95;
    }
  }

  if (v117 < 1)
  {
LABEL_122:
    __break(1u);
    return result;
  }

  v118 = 0;
  v119 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_pendingDeletionCloudRecords;
  v120 = v173 & 0xC000000000000001;
  do
  {
    if (v120)
    {
      v121 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v121 = *(v173 + 8 * v118 + 32);
    }

    v122 = v121;
    swift_beginAccess();
    v123 = sub_1000328C4(v122);
    if (v124)
    {
      v125 = v123;
      v126 = v177;
      v127 = swift_isUniquelyReferenced_nonNull_native();
      v128 = *(v126 + v119);
      v179 = v128;
      *(v126 + v119) = 0x8000000000000000;
      if (!v127)
      {
        sub_1000333D0(&qword_100093738, &qword_100073618);
        v128 = v179;
      }

      sub_100032DE8(v125, v128);
      *(v126 + v119) = v128;
    }

    ++v118;
    swift_endAccess();
  }

  while (v117 != v118);
LABEL_95:
  v129 = v163;
  v130 = v172;
  (v170)(v163, v171, v172);

  v131 = Logger.logObject.getter();
  v132 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v131, v132))
  {
    v133 = swift_slowAlloc();
    v134 = swift_slowAlloc();
    v181 = v134;
    *v133 = 136315138;
    swift_beginAccess();
    v135 = swift_weakLoadStrong();
    v136 = v167;
    if (v135)
    {
      v137 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_pendingDeletionCloudRecords;
      v138 = v135;
      swift_beginAccess();
      v139 = *(v138 + v137);
    }

    else
    {
      v139 = 0;
    }

    v179 = v139;
    sub_10000A45C(&qword_100093720, &qword_100073600);
    v141 = String.init<A>(describing:)();
    v143 = sub_1000034B8(v141, v142, &v181);

    *(v133 + 4) = v143;
    _os_log_impl(&_mh_execute_header, v131, v132, "Pending deletion in queue: %s", v133, 0xCu);
    sub_1000036EC(v134);

    v130 = v172;
    (v176)(v129, v172);
    v140 = v177;
  }

  else
  {

    (v176)(v129, v130);
    v140 = v177;
    v136 = v167;
  }

  v144 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_pendingDeletionCloudRecords;
  swift_beginAccess();
  if (*(*(v140 + v144) + 16) || (v145 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_pendingUpdateCloudRecords, swift_beginAccess(), *(*(v140 + v145) + 16)))
  {
    sub_10002B51C(v160 & 1);
  }

  if ((v166 & 1) == 0)
  {
  }

  sub_100026364(45.0);
  (v170)(v136, v171, v130);
  v146 = Logger.logObject.getter();
  v147 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v146, v147))
  {
    v148 = swift_slowAlloc();
    *v148 = 0;
    _os_log_impl(&_mh_execute_header, v146, v147, "Cloud update done, continue the fetch...", v148, 2u);
  }

  else
  {
  }

  return (v176)(v136, v130);
}

id *sub_10002F284()
{

  sub_100006CAC(v0 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_systemNotificationSubscription, &qword_1000931D0, qword_1000730B0);
  sub_100006CAC(v0 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_applePushNotificationSubscription, &qword_1000931C8, &qword_1000730A8);

  v1 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_tokenDirectory;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_10002F418()
{
  sub_10002F284();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

void sub_10002F470(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v65 = &v62 - v8;
  v9 = __chkstk_darwin(v7);
  v64 = &v62 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v62 - v12;
  v14 = __chkstk_darwin(v11);
  v63 = &v62 - v15;
  __chkstk_darwin(v14);
  v17 = &v62 - v16;
  v18 = [a1 userInfo];
  if (!v18)
  {
    __break(1u);
    return;
  }

  v19 = v18;
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v66 = [objc_opt_self() notificationFromRemoteNotificationDictionary:isa];

  if (!v66)
  {
    v26 = sub_10003915C();
    v27 = v3;
    (*(v3 + 16))(v6, v26, v2);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      *(v30 + 4) = 0;
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Unknown notification: %@", v30, 0xCu);
      sub_100006CAC(v31, &qword_100093F70, &qword_1000730D0);
    }

    (*(v27 + 8))(v6, v2);
    return;
  }

  v21 = [v66 notificationType];
  v22 = v3;
  v23 = v2;
  if (v21 <= 2)
  {
    if (v21 == 1)
    {
      v43 = sub_10003915C();
      (*(v3 + 16))(v17, v43, v2);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&_mh_execute_header, v44, v45, "Query notifications are not handled", v46, 2u);
      }

      else
      {
      }

      (*(v22 + 8))(v17, v2);
      return;
    }

    v24 = v65;
    if (v21 == 2)
    {
      objc_opt_self();
      v25 = swift_dynamicCastObjCClass();
      if (v25)
      {
        sub_10002FC58(v25);
LABEL_15:
        v33 = v66;

        return;
      }

      v51 = sub_10003915C();
      v52 = v63;
      (*(v3 + 16))(v63, v51, v2);
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&_mh_execute_header, v53, v54, "Unable to cast to CKRecordZoneNotification", v55, 2u);
      }

      else
      {
      }

      (*(v22 + 8))(v52, v2);
      return;
    }

LABEL_18:
    v34 = v21;
    v35 = sub_10003915C();
    (*(v3 + 16))(v24, v35, v2);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v67 = v34;
      v68 = v39;
      *v38 = 136315138;
      type metadata accessor for NotificationType(0);
      v40 = String.init<A>(describing:)();
      v42 = sub_1000034B8(v40, v41, &v68);

      *(v38 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v36, v37, "Unknown notificationType: %s", v38, 0xCu);
      sub_1000036EC(v39);
    }

    else
    {
    }

    (*(v22 + 8))(v24, v23);
    return;
  }

  v24 = v65;
  if (v21 == 3)
  {
    v47 = sub_10003915C();
    (*(v3 + 16))(v13, v47, v2);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v48, v49, "Read notifications are not handled", v50, 2u);
    }

    else
    {
    }

    (*(v22 + 8))(v13, v2);
    return;
  }

  if (v21 != 4)
  {
    goto LABEL_18;
  }

  objc_opt_self();
  v32 = swift_dynamicCastObjCClass();
  if (v32)
  {
    sub_10003032C(v32);
    goto LABEL_15;
  }

  v56 = sub_10003915C();
  v57 = *(v3 + 16);
  v58 = v64;
  v57(v64, v56, v2);
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&_mh_execute_header, v59, v60, "Unable to cast to CKRecordZoneNotification", v61, 2u);
  }

  else
  {
  }

  (*(v22 + 8))(v58, v2);
}

void sub_10002FC58(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v67 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v67 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v67 - v15;
  __chkstk_darwin(v14);
  v18 = &v67 - v17;
  v19 = [a1 recordZoneID];
  if (v19)
  {
    v20 = v19;
    v70 = v1;
    v71 = v16;
    v72 = v13;
    v74 = [a1 databaseScope];
    v21 = sub_10003915C();
    v73 = *(v4 + 16);
    v73(v18, v21, v3);
    v22 = a1;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v68 = v10;
      v26 = v25;
      v27 = swift_slowAlloc();
      v69 = v20;
      v28 = v4;
      v29 = v3;
      v30 = v27;
      *v26 = 138412290;
      *(v26 + 4) = v22;
      *v27 = v22;
      v31 = v22;
      _os_log_impl(&_mh_execute_header, v23, v24, "RecordZoneNotification: %@", v26, 0xCu);
      sub_100006CAC(v30, &qword_100093F70, &qword_1000730D0);
      v3 = v29;
      v4 = v28;
      v20 = v69;

      v10 = v68;
    }

    v34 = *(v4 + 8);
    v32 = (v4 + 8);
    v33 = v34;
    v34(v18, v3);
    if (v74 == 1)
    {
      v52 = v72;
      v73(v72, v21, v3);
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v47, v48))
      {
        v46 = v52;
        v49 = v3;
        v50 = swift_slowAlloc();
        *v50 = 0;
        v51 = "Nothing public";
        goto LABEL_15;
      }

      v53 = v52;
    }

    else
    {
      if (v74 != 3)
      {
        if (v74 == 2)
        {
          v35 = type metadata accessor for Transaction();
          __chkstk_darwin(v35);
          *(&v67 - 2) = v70;
          *(&v67 - 1) = v20;
          static Transaction.named<A>(_:with:)("com.apple.bluetoothuser.recordZoneNotification", 46, 2, sub_100035DDC);

          return;
        }

        v73(v10, v21, v3);
        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v73 = v32;
          v58 = v57;
          v59 = swift_slowAlloc();
          v75 = v59;
          *v58 = 136315138;
          v60 = CKDatabaseScopeString();
          v74 = v3;
          v61 = v60;
          v62 = v10;
          v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v65 = v64;

          v66 = sub_1000034B8(v63, v65, &v75);

          *(v58 + 4) = v66;
          _os_log_impl(&_mh_execute_header, v55, v56, "Unknown databaseScope: %s", v58, 0xCu);
          sub_1000036EC(v59);

          v33(v62, v74);
          return;
        }

        v53 = v10;
        goto LABEL_21;
      }

      v45 = v71;
      v73(v71, v21, v3);
      v46 = v45;
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = v3;
        v50 = swift_slowAlloc();
        *v50 = 0;
        v51 = "Nothing shared";
LABEL_15:
        _os_log_impl(&_mh_execute_header, v47, v48, v51, v50, 2u);

        v53 = v46;
        v54 = v49;
LABEL_22:
        v33(v53, v54);
        return;
      }

      v53 = v46;
    }

LABEL_21:
    v54 = v3;
    goto LABEL_22;
  }

  v36 = sub_10003915C();
  (*(v4 + 16))(v7, v36, v3);
  v37 = a1;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = v3;
    v41 = swift_slowAlloc();
    v42 = v4;
    v43 = swift_slowAlloc();
    *v41 = 138412290;
    *(v41 + 4) = v37;
    *v43 = v37;
    v44 = v37;
    _os_log_impl(&_mh_execute_header, v38, v39, "No recordZoneID in %@", v41, 0xCu);
    sub_100006CAC(v43, &qword_100093F70, &qword_1000730D0);
    v4 = v42;

    v3 = v40;
  }

  (*(v4 + 8))(v7, v3);
}

uint64_t sub_10003032C(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 databaseScope];
  (*(*v1 + 264))(v36);
  v8 = v37;
  v40[0] = v37;
  v39 = v36[0];

  sub_100034994(&v39);
  v38 = v36[1];
  sub_100034994(&v38);
  result = sub_100006CAC(v40, &qword_100094180, &qword_100074290);
  v10 = *(v8 + 16);
  if (!v10)
  {
    sub_100006CAC(v40, &qword_100094180, &qword_100074290);
LABEL_13:
    v21 = sub_10003915C();
    (*(v4 + 16))(v6, v21, v3);
    v22 = a1;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      *(v25 + 4) = v22;
      *v26 = v22;
      v27 = v22;
      _os_log_impl(&_mh_execute_header, v23, v24, "Only handle cloud pairing recordZoneNotification, Dropping DatabaseNotification: %@", v25, 0xCu);
      sub_100006CAC(v26, &qword_100093F70, &qword_1000730D0);
    }

    return (*(v4 + 8))(v6, v3);
  }

  v32 = v7;
  v33 = v1;
  v28 = a1;
  v29 = v6;
  v30 = v4;
  v31 = v3;
  if (!*(v8 + 16))
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v11 = 0;
  v12 = 0;
  v13 = v10 - 1;
  v14 = (v8 + 40);
  while (v12)
  {
    if (v13 == v11)
    {
      sub_100006CAC(v40, &qword_100094180, &qword_100074290);
      goto LABEL_12;
    }

    v12 = 1;
LABEL_5:
    ++v11;
    v14 += 2;
    if (v11 >= *(v8 + 16))
    {
      goto LABEL_16;
    }
  }

  v16 = *(v14 - 1);
  v15 = *v14;
  v34 = 0;
  v35 = 0xE000000000000000;

  _StringGuts.grow(_:)(38);

  v34 = 0xD000000000000024;
  v35 = 0x8000000100079F20;
  v17._countAndFlagsBits = v16;
  v17._object = v15;
  String.append(_:)(v17);
  sub_100015AAC(v34, v35, 2, &type metadata for Bool, &v34);

  v18 = v34;
  v12 = v34 == 2;
  if (v13 != v11)
  {
    goto LABEL_5;
  }

  sub_100006CAC(v40, &qword_100094180, &qword_100074290);
  v4 = v30;
  v3 = v31;
  a1 = v28;
  v6 = v29;
  if (v18 != 2)
  {
    goto LABEL_13;
  }

LABEL_12:
  v19 = type metadata accessor for Transaction();
  __chkstk_darwin(v19);
  v20 = v32;
  *(&v28 - 2) = v33;
  *(&v28 - 1) = v20;
  return static Transaction.named<A>(_:with:)("com.apple.bluetoothuser.databaseNotification", 44, 2, sub_100035F24);
}

void sub_100030750(uint64_t a1, char a2, uint64_t a3)
{
  v40 = a1;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v36[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v7);
  v12 = &v36[-v11];
  __chkstk_darwin(v10);
  v14 = &v36[-v13];
  v15 = sub_10003915C();
  v42 = v6;
  v43 = v15;
  v44 = *(v6 + 16);
  v44(v14);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  v41 = a3;

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v18 = 138412290;
    v39 = v16;
    v19 = sub_100019AA4();
    v20 = [v19 privateCloudDatabase];
    v37 = v17;
    v21 = v20;

    v22 = v18;
    *(v18 + 4) = v21;
    v23 = v38;
    v16 = v39;
    *v38 = v21;
    _os_log_impl(&_mh_execute_header, v16, v37, "database: %@ updateCache completed.", v22, 0xCu);
    sub_100006CAC(v23, &qword_100093F70, &qword_1000730D0);
  }

  v24 = *(v42 + 8);
  v24(v14, v5);
  if (a2)
  {
    (v44)(v12, v43, v5);
    v25 = v40;
    swift_errorRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    sub_100036B6C(v25, 1);
    if (os_log_type_enabled(v26, v27))
    {
      v28 = v12;
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      swift_errorRetain();
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v31;
      *v30 = v31;
      _os_log_impl(&_mh_execute_header, v26, v27, "APS fetchDatabaseChanges error: %@", v29, 0xCu);
      sub_100006CAC(v30, &qword_100093F70, &qword_1000730D0);

      v12 = v28;
    }

    v24(v12, v5);
    v46 = v25;
    swift_errorRetain();
    sub_10000A45C(&qword_100093748, &qword_100073628);
    type metadata accessor for CKError(0);
    if (swift_dynamicCast())
    {
      v32 = v45;
      v46 = v45;
      sub_10000229C(&qword_100093750, type metadata accessor for CKError, &unk_100073828);
      _BridgedStoredNSError.code.getter();
      if (v45 == 4 || (v46 = v32, _BridgedStoredNSError.code.getter(), v45 == 3))
      {
        sub_100026364(150.0);
      }
    }
  }

  else
  {
    (v44)(v9, v43, v5);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "APS fetchDatabaseChanges completed.", v35, 2u);
    }

    v24(v9, v5);
  }
}