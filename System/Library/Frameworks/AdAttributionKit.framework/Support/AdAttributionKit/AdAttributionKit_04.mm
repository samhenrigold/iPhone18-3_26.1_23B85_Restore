Swift::Int sub_100060838()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10000F098(v3, v1);
  return Hasher._finalize()();
}

Swift::Int sub_100060888(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_10000F098(v4, v2);
  return Hasher._finalize()();
}

unint64_t sub_1000608CC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100060B3C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000608FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10005FE60(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100060944@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100060B3C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10006097C(uint64_t a1)
{
  v2 = sub_10005F9CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000609B8(uint64_t a1)
{
  v2 = sub_10005F9CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100060A28()
{
  result = qword_10023B0F8;
  if (!qword_10023B0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B0F8);
  }

  return result;
}

unint64_t sub_100060A80()
{
  result = qword_10023B100;
  if (!qword_10023B100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B100);
  }

  return result;
}

unint64_t sub_100060AD8()
{
  result = qword_10023B108;
  if (!qword_10023B108)
  {
    sub_10000CCC0(&qword_10023B110, &qword_1001B8100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B108);
  }

  return result;
}

unint64_t sub_100060B3C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002145D0, v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100060B88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100060C04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_100060CDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

void sub_100060D9C(uint64_t a1)
{
  sub_100060E58();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100060E58()
{
  if (!qword_10023A188)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10023A188);
    }
  }
}

unint64_t sub_100060EAC()
{
  result = qword_10023B1D8;
  if (!qword_10023B1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B1D8);
  }

  return result;
}

unint64_t sub_100060F00()
{
  result = qword_10023B1E0;
  if (!qword_10023B1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B1E0);
  }

  return result;
}

unint64_t sub_100060F58()
{
  result = qword_10023B1E8;
  if (!qword_10023B1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B1E8);
  }

  return result;
}

double sub_100060FB4@<D0>(_OWORD *a2@<X8>)
{
  v5 = [v2 connection];
  v6 = String._bridgeToObjectiveC()();
  v7 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v8 = [objc_opt_self() predicateWithProperty:v6 equalToValue:v7];
  swift_unknownObjectRelease();

  v9 = sub_100086658(v5, v8, _swiftEmptyArrayStorage, 0, 0);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13[2] = &v15;
  sub_100036028(sub_100061220, v13, v9);

  if (v3)
  {
    v14[0] = v15;
    v14[1] = v16;
    v14[2] = v17;
    v14[3] = v18;
    sub_1000612A0(v14);
  }

  else
  {
    v11 = v16;
    *a2 = v15;
    a2[1] = v11;
    result = *&v17;
    v12 = v18;
    a2[2] = v17;
    a2[3] = v12;
  }

  return result;
}

id sub_1000611C8(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for AppLaunchDatabaseSession();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100061220(__int128 *a1, uint64_t a2, _BYTE *a3)
{
  v6 = *(v3 + 16);
  v7 = *(a1 + 4);
  v8 = v6[3];
  v10 = *v6;
  v9 = v6[1];
  v13[2] = v6[2];
  v13[3] = v8;
  v13[0] = v10;
  v13[1] = v9;
  sub_1000612A0(v13);
  v11 = a1[1];
  *v6 = *a1;
  v6[1] = v11;
  *(v6 + 4) = v7;
  *(v6 + 40) = *(a1 + 40);
  *(v6 + 7) = *(a1 + 7);
  *a3 = 1;
}

uint64_t sub_1000612A0(uint64_t a1)
{
  v2 = sub_10000CDE0(&qword_10023B218, qword_1001B83B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_100061318(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_10000CDE0(&qword_10023B2E0, &qword_1001B8458);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_connection] = a1;
  v13 = a1;
  UUID.init()();
  v14 = OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_databaseID;
  (*(v10 + 32))(&v3[OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_databaseID], v12, v9);
  sub_10000CDE0(&unk_10023B2E8, &unk_1001B8460);
  swift_allocObject();
  *&v3[OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_dispatchKey] = DispatchSpecificKey.init()();
  *&v3[OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_transactionQueue] = a2;
  (*(v10 + 16))(v8, &v3[v14], v9);
  (*(v10 + 56))(v8, 0, 1, v9);

  v15 = a2;
  OS_dispatch_queue.setSpecific<A>(key:value:)();

  sub_10000DAF8(v8, &qword_10023B2E0, &qword_1001B8458);
  *&v3[OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_migratedStoreNames] = &_swiftEmptySetSingleton;
  v16 = type metadata accessor for SQLiteDatabase(0);
  v21.receiver = v3;
  v21.super_class = v16;
  v17 = objc_msgSendSuper2(&v21, "init");
  v18 = *&v17[OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_connection];
  v19 = v17;
  sub_1001AC8B8(v18, v19);

  return v19;
}

uint64_t sub_10006158C(void *a1, uint64_t isEscapingClosureAtFileLocation)
{
  v4 = v2;
  v5 = isEscapingClosureAtFileLocation;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  p_aBlock = *&v4[OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_transactionQueue];
  *v10 = p_aBlock;
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v12 = p_aBlock;
  v13 = _dispatchPreconditionTest(_:)();
  v15 = *(v8 + 8);
  v14 = (v8 + 8);
  v15(v10, v7);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  LODWORD(v51) = v5;
  v16 = OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_migratedStoreNames;
  swift_beginAccess();
  v17 = *&v4[v16];
  v18 = a1[3];
  v19 = a1[4];
  sub_10000DA7C(a1, v18);
  v20 = *(v19 + 40);

  v21 = v20(v18, v19);
  LOBYTE(v18) = sub_1000C20E0(v21, v22, v17);

  if (v18)
  {
    return result;
  }

  v50 = v3;
  v24 = *&v4[OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_connection];
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_100062BF0;
  *(v26 + 24) = v25;
  v58 = sub_100062C08;
  v59 = v26;
  p_aBlock = &aBlock;
  aBlock = _NSConcreteStackBlock;
  v55 = 1107296256;
  v14 = &v56;
  v56 = sub_100121018;
  v57 = &unk_100219C98;
  v27 = _Block_copy(&aBlock);
  v28 = v24;

  sub_1000064FC(v28, v27);

  _Block_release(v27);
  LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

  if (v27)
  {
    goto LABEL_17;
  }

  v53 = 0;
  sub_10000CE28(a1, v52);
  v29 = swift_allocObject();
  sub_10000DA64(v52, v29 + 16);
  *(v29 + 56) = v28;
  *(v29 + 64) = &v53;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_100062C68;
  *(v30 + 24) = v29;
  v58 = sub_100062E28;
  v59 = v30;
  aBlock = _NSConcreteStackBlock;
  v55 = 1107296256;
  v56 = sub_100121018;
  v57 = &unk_100219D10;
  v31 = _Block_copy(&aBlock);
  LODWORD(p_aBlock) = v59;
  v14 = v28;

  sub_1000064FC(v14, v31);
  _Block_release(v31);
  v32 = swift_isEscapingClosureAtFileLocation();

  if (v32)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v53)
  {
    swift_errorRetain();
    LODWORD(p_aBlock) = static os_log_type_t.fault.getter();
    if (qword_100239CD8 == -1)
    {
LABEL_7:
      v33 = type metadata accessor for Logger();
      sub_10000DAC0(v33, qword_10023FCB8);
      sub_10000CE28(a1, &aBlock);
      swift_errorRetain();
      v34 = Logger.logObject.getter();

      if (os_log_type_enabled(v34, p_aBlock))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        LODWORD(v50) = p_aBlock;
        v38 = v37;
        *v35 = 136315394;
        v51 = v14;
        *&v52[0] = v37;
        v40 = v57;
        v39 = v58;
        sub_10000DA7C(&aBlock, v57);
        v41 = (*(v39 + 5))(v40, v39);
        v43 = v42;
        sub_10000DB58(&aBlock);
        v44 = sub_10017AD04(v41, v43, v52);

        *(v35 + 4) = v44;
        v14 = v51;
        *(v35 + 12) = 2112;
        swift_errorRetain();
        v45 = _swift_stdlib_bridgeErrorToNSError();
        *(v35 + 14) = v45;
        *v36 = v45;
        sub_10000DAF8(v36, &qword_100239F10, &qword_1001B4FD0);

        sub_10000DB58(v38);
      }

      else
      {

        sub_10000DB58(&aBlock);
      }

      swift_willThrow();
    }

LABEL_19:
    swift_once();
    goto LABEL_7;
  }

  if (v51)
  {
  }

  else
  {
    sub_10000CE28(a1, v52);
    v46 = swift_allocObject();
    *(v46 + 16) = v4;
    sub_10000DA64(v52, v46 + 24);
    v58 = sub_100062CB4;
    v59 = v46;
    aBlock = _NSConcreteStackBlock;
    v55 = 1107296256;
    v56 = sub_10001F3F8;
    v57 = &unk_100219D60;
    v47 = _Block_copy(&aBlock);
    v48 = v4;

    sub_1001AB644(v14, v47);

    _Block_release(v47);
  }
}

BOOL sub_100061C88(void *a1, void *a2, void *a3)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = sub_10000DA7C(a1, v5);
  sub_1000CBB80(v7, a2, v5, v6);
  return *a3 == 0;
}

void sub_100061CF8(uint64_t a1, void *a2)
{
  sub_10006158C(a2, 1);
  if (v2)
  {
    v4 = static os_log_type_t.fault.getter();
    if (qword_100239CD8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000DAC0(v5, qword_10023FCB8);
    swift_errorRetain();
    v6 = Logger.logObject.getter();

    if (os_log_type_enabled(v6, v4))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      swift_errorRetain();
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v9;
      *v8 = v9;
      _os_log_impl(&_mh_execute_header, v6, v4, "Failed to migrate after transaction: %@", v7, 0xCu);
      sub_10000DAF8(v8, &qword_100239F10, &qword_1001B4FD0);
    }

    else
    {
    }
  }

  else
  {
    v10 = a2[3];
    v11 = a2[4];
    sub_10000DA7C(a2, v10);
    v12 = (*(v11 + 40))(v10, v11);
    v14 = v13;
    swift_beginAccess();
    sub_100021FF4(&v15, v12, v14);
    swift_endAccess();
  }
}

uint64_t sub_100061F08@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a2;
  v35 = a1;
  v36 = a3;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v31 = &v29[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_10000CDE0(&qword_10023B2F8, &qword_1001B8470);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v29[-v9];
  v11 = sub_10000CDE0(&qword_10023B2E0, &qword_1001B8458);
  v12 = __chkstk_darwin(v11 - 8);
  v33 = &v29[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __chkstk_darwin(v12);
  v16 = &v29[-v15];
  __chkstk_darwin(v14);
  v18 = &v29[-v17];
  sub_10003E61C();
  static OS_dispatch_queue.getSpecific<A>(key:)();
  v19 = *(v5 + 16);
  v32 = v3;
  v19(v16, v3 + OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_databaseID, v4);
  (*(v5 + 56))(v16, 0, 1, v4);
  v20 = *(v8 + 56);
  sub_100062D2C(v18, v10);
  sub_100062D2C(v16, &v10[v20]);
  v21 = *(v5 + 48);
  if (v21(v10, 1, v4) != 1)
  {
    sub_100062D2C(v10, v33);
    if (v21(&v10[v20], 1, v4) != 1)
    {
      v25 = &v10[v20];
      v26 = v31;
      (*(v5 + 32))(v31, v25, v4);
      sub_100062DC4();
      v27 = v33;
      v30 = dispatch thunk of static Equatable.== infix(_:_:)();
      v28 = *(v5 + 8);
      v28(v26, v4);
      sub_10000DAF8(v16, &qword_10023B2E0, &qword_1001B8458);
      sub_10000DAF8(v18, &qword_10023B2E0, &qword_1001B8458);
      v28(v27, v4);
      v22 = sub_10000DAF8(v10, &qword_10023B2E0, &qword_1001B8458);
      if (v30)
      {
        return v35(v22);
      }

LABEL_7:
      __chkstk_darwin(v22);
      v23 = v34;
      *&v29[-16] = v35;
      *&v29[-8] = v23;
      return OS_dispatch_queue.sync<A>(execute:)();
    }

    sub_10000DAF8(v16, &qword_10023B2E0, &qword_1001B8458);
    sub_10000DAF8(v18, &qword_10023B2E0, &qword_1001B8458);
    (*(v5 + 8))(v33, v4);
LABEL_6:
    v22 = sub_10000DAF8(v10, &qword_10023B2F8, &qword_1001B8470);
    goto LABEL_7;
  }

  sub_10000DAF8(v16, &qword_10023B2E0, &qword_1001B8458);
  sub_10000DAF8(v18, &qword_10023B2E0, &qword_1001B8458);
  if (v21(&v10[v20], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  v22 = sub_10000DAF8(v10, &qword_10023B2E0, &qword_1001B8458);
  return v35(v22);
}

id sub_1000623D8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SQLiteDatabase(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SQLiteDatabase(uint64_t a1)
{
  result = qword_10023B270;
  if (!qword_10023B270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100062510(uint64_t a1)
{
  result = type metadata accessor for UUID();
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

uint64_t sub_1000625CC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v26[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_transactionQueue);
  *v7 = v8;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    if (qword_100239CD8 == -1)
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
  sub_10000DAC0(v10, qword_10023FCB8);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v26[0] = v15;
    *v14 = 136315138;
    v16 = sub_1001AC8C8(v11);
    v18 = sub_1001AB480(v16, v17);

    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = sub_10017AD04(v19, v21, v26);

    *(v14 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v12, v13, "Requiring all stores to migrate after truncating corrupt database at: %s", v14, 0xCu);
    sub_10000DB58(v15);
  }

  v23 = OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_migratedStoreNames;
  swift_beginAccess();
  *(v2 + v23) = &_swiftEmptySetSingleton;

  return 1;
}

void sub_1000628C4(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 1);
  __chkstk_darwin(v3);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_transactionQueue);
  *v6 = v7;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v10 = *(v4 + 8);
  v9 = v4 + 8;
  v10(v6, v3);
  if (v7)
  {
    v11 = sub_1001AC8C8(a1);
    v13 = sub_1001AB480(v11, v12);

    v3 = v13;
    if (!v13)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v3 = String._bridgeToObjectiveC()();

      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v14;
    if (qword_100239CD8 == -1)
    {
LABEL_5:
      v15 = type metadata accessor for Logger();
      sub_10000DAC0(v15, qword_10023FCB8);

      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v22 = v19;
        *v18 = 136315138;
        v20 = sub_10017AD04(v9, v6, &v22);

        *(v18 + 4) = v20;
        _os_log_impl(&_mh_execute_header, v16, v17, "Exiting after deleting corrupt database at: %s", v18, 0xCu);
        sub_10000DB58(v19);
      }

      else
      {
      }

      sub_1001AB5C8(a1);
      SQLiteDeleteDatabase(v3, 0);

      exit(0);
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
  goto LABEL_5;
}

uint64_t sub_100062BB8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100062C10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100062C28()
{
  sub_10000DB58((v0 + 16));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100062C74()
{
  sub_10000DB58((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100062CB4()
{
  v3 = *(v0 + 16);
  v4 = v0 + 24;
  return sub_100061F08(sub_100062D10, &v2, v3);
}

uint64_t sub_100062D2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CDE0(&qword_10023B2E0, &qword_1001B8458);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100062DC4()
{
  result = qword_10023B308;
  if (!qword_10023B308)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B308);
  }

  return result;
}

uint64_t sub_100062E34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[106] = v3;
  v4[105] = a3;
  v4[104] = a2;
  v4[103] = a1;
  v5 = type metadata accessor for Calendar.Component();
  v4[107] = v5;
  v4[108] = *(v5 - 8);
  v4[109] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v4[110] = v6;
  v4[111] = *(v6 - 8);
  v4[112] = swift_task_alloc();

  return _swift_task_switch(sub_100062F5C, 0, 0);
}

uint64_t sub_100062F5C()
{
  v1 = *(v0 + 824);
  if (v1 < 0)
  {
    if (qword_100239CE8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000DAC0(v13, qword_10023FCE8);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 824);
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      *(v17 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v14, v15, "Could not convert itemID: %llu to required Int types", v17, 0xCu);
    }

    v64 = (v0 + 1017);
    v65 = (v0 + 1042);
    v62 = (v0 + 1009);
    v63 = (v0 + 1025);
    v60 = (v0 + 1030);
    v61 = (v0 + 1001);
    sub_10006DEA4();
    v18 = swift_allocError();
    *v19 = 0;
    swift_willThrow();
    *(v0 + 984) = v18;
    v20 = *(v0 + 896);
    v21 = *(v0 + 888);
    v22 = *(v0 + 880);
    v23 = *(v0 + 872);
    v24 = *(v0 + 864);
    v25 = *(v0 + 856);
    v66 = *(v0 + 848);
    v54 = *(v0 + 840);
    v59 = *(v0 + 832);
    swift_errorRetain();
    v26 = sub_1000C7C10(v18);
    v57 = v27;
    v58 = v26;
    v55 = v29;
    v56 = v28;

    static Date.now.getter();
    (*(v24 + 104))(v23, enum case for Calendar.Component.hour(_:), v25);
    v30 = sub_100025808(v20, v23);
    v32 = v31;
    (*(v24 + 8))(v23, v25);
    (*(v21 + 8))(v20, v22);
    if (v32)
    {
      v30 = 0;
    }

    v33 = [objc_opt_self() buildVersion];
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    *(v0 + 1000) = 1;
    *(v0 + 1008) = 1;
    *(v0 + 1016) = 1;
    *(v0 + 1024) = 1;
    *(v0 + 1048) = 1;
    *(v0 + 16) = 0;
    *(v0 + 18) = *v60;
    *(v0 + 22) = *(v0 + 1034);
    *(v0 + 24) = v58;
    *(v0 + 32) = v57;
    *(v0 + 40) = v56;
    *(v0 + 48) = v55;
    *(v0 + 56) = v59;
    *(v0 + 64) = v54;
    *(v0 + 72) = v30;
    *(v0 + 80) = v34;
    *(v0 + 88) = v36;
    *(v0 + 96) = 0;
    *(v0 + 101) = 2;
    *(v0 + 97) = 33686018;
    *(v0 + 104) = 0;
    v37 = *(v0 + 1000);
    *(v0 + 112) = v37;
    *(v0 + 113) = *v61;
    *(v0 + 116) = *(v0 + 1004);
    *(v0 + 120) = 0;
    v38 = *(v0 + 1008);
    *(v0 + 128) = v38;
    *(v0 + 129) = 3;
    *(v0 + 130) = *(v0 + 1036);
    *(v0 + 134) = *(v0 + 1040);
    *(v0 + 136) = 0;
    v39 = *(v0 + 1016);
    *(v0 + 144) = v39;
    *(v0 + 148) = *(v0 + 1012);
    *(v0 + 145) = *v62;
    *(v0 + 152) = 0;
    v40 = *(v0 + 1024);
    *(v0 + 160) = v40;
    *(v0 + 161) = 770;
    *(v0 + 167) = *(v0 + 1029);
    *(v0 + 163) = *v63;
    *(v0 + 168) = 0;
    v41 = *(v0 + 1048);
    *(v0 + 176) = v41;
    v42 = *v64;
    *(v0 + 180) = *(v0 + 1020);
    *(v0 + 177) = v42;
    *(v0 + 184) = 0;
    *(v0 + 192) = 0;
    *(v0 + 200) = 514;
    *(v0 + 202) = 2;
    v43 = *v65;
    *(v0 + 207) = *(v0 + 1046);
    *(v0 + 203) = v43;
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    *(v0 + 240) = 0;
    v44 = *v60;
    *(v0 + 246) = *(v0 + 1034);
    *(v0 + 242) = v44;
    *(v0 + 248) = v58;
    *(v0 + 256) = v57;
    *(v0 + 264) = v56;
    *(v0 + 272) = v55;
    *(v0 + 280) = v59;
    *(v0 + 288) = v54;
    *(v0 + 296) = v30;
    *(v0 + 304) = v34;
    *(v0 + 312) = v36;
    *(v0 + 320) = 0;
    *(v0 + 325) = 2;
    *(v0 + 321) = 33686018;
    *(v0 + 328) = 0;
    *(v0 + 336) = v37;
    v45 = *v61;
    *(v0 + 340) = *(v0 + 1004);
    *(v0 + 337) = v45;
    *(v0 + 344) = 0;
    *(v0 + 352) = v38;
    *(v0 + 353) = 3;
    v46 = *(v0 + 1036);
    *(v0 + 358) = *(v0 + 1040);
    *(v0 + 354) = v46;
    *(v0 + 360) = 0;
    *(v0 + 368) = v39;
    v47 = *v62;
    *(v0 + 372) = *(v0 + 1012);
    *(v0 + 369) = v47;
    *(v0 + 376) = 0;
    *(v0 + 384) = v40;
    *(v0 + 385) = 770;
    v48 = *v63;
    *(v0 + 391) = *(v0 + 1029);
    *(v0 + 387) = v48;
    *(v0 + 392) = 0;
    *(v0 + 400) = v41;
    v49 = *v64;
    *(v0 + 404) = *(v0 + 1020);
    *(v0 + 401) = v49;
    *(v0 + 408) = 0;
    *(v0 + 416) = 0;
    *(v0 + 424) = 514;
    *(v0 + 426) = 2;
    v50 = *v65;
    *(v0 + 431) = *(v0 + 1046);
    *(v0 + 427) = v50;
    *(v0 + 432) = 0u;
    *(v0 + 448) = 0u;
    sub_100010568(v0 + 16, v0 + 464);
    sub_10003AE8C(v0 + 240);
    sub_10000DA7C((v66 + 184), *(v66 + 208));
    v51 = type metadata accessor for SnoutManager(0);
    v52 = swift_task_alloc();
    *(v0 + 992) = v52;
    *v52 = v0;
    v52[1] = sub_100064448;
    v53 = *(v0 + 824);

    return (sub_10016E27C)(v0 + 16, v53, 0, 0, v51, &off_100223858);
  }

  else
  {
    v2 = *(v0 + 848);
    v3 = [objc_allocWithZone(ASCAdamID) initWithInt64:v1];
    v4 = [objc_opt_self() _requestWithID:v3 kind:ASCLockupKindApp context:ASCLockupContextStandard enableAppDistribution:1];
    *(v0 + 904) = v4;

    sub_10000DA7C((v2 + 24), *(v2 + 48));
    sub_10000CDE0(&qword_10023B328, qword_1001B84D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001B5820;
    v6 = _ASCLockupKeyDistributorBundleId;
    *(v0 + 912) = _ASCLockupKeyDistributorBundleId;
    *(inited + 32) = v6;
    v7 = _ASCLockupKeyAppVersionId;
    *(v0 + 920) = _ASCLockupKeyAppVersionId;
    *(inited + 40) = v7;
    v8 = v6;
    v9 = v7;
    v10 = sub_100028984(inited);
    *(v0 + 928) = v10;
    swift_setDeallocating();
    type metadata accessor for _ASCLockupKey(0);
    swift_arrayDestroy();
    v11 = swift_task_alloc();
    *(v0 + 936) = v11;
    *v11 = v0;
    v11[1] = sub_1000636D0;

    return sub_10001FDF4(v4, v10);
  }
}

uint64_t sub_1000636D0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 944) = a1;
  *(v3 + 952) = v1;

  if (v1)
  {
    v4 = sub_100063CD8;
  }

  else
  {
    v4 = sub_100063810;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100063810()
{
  v40 = v0;
  v1 = *(v0 + 944);
  if (*(v1 + 16) && (v2 = sub_1000C3DAC(*(v0 + 912)), (v3 & 1) != 0))
  {
    sub_10002036C(*(*(v0 + 944) + 56) + 32 * v2, v0 + 736);
    v4 = swift_dynamicCast();
    if (v4)
    {
      v5 = *(v0 + 800);
    }

    else
    {
      v5 = 0;
    }

    if (v4)
    {
      v6 = *(v0 + 808);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (*(v1 + 16))
  {
    v7 = sub_1000C3DAC(*(v0 + 920));
    if (v8)
    {
      sub_10002036C(*(*(v0 + 944) + 56) + 32 * v7, v0 + 768);

      v9 = swift_dynamicCast();
      if (v9)
      {
        v10 = *(v0 + 816);
      }

      else
      {
        v10 = 0;
      }

      v11 = v9 ^ 1;
      if (!v6)
      {
        goto LABEL_16;
      }

LABEL_22:
      v16 = qword_100239CE8;

      if (v16 == -1)
      {
        goto LABEL_23;
      }

      goto LABEL_36;
    }
  }

  v10 = 0;
  v11 = 1;
  if (v6)
  {
    goto LABEL_22;
  }

LABEL_16:
  if (qword_100239CE8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000DAC0(v12, qword_10023FCE8);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "No distributor bundle ID received from app fetch", v15, 2u);
  }

  v6 = 0x80000001001CB3C0;
  v5 = 0xD000000000000012;
  while (1)
  {
    v23 = *(v0 + 896);
    v24 = *(v0 + 888);
    v25 = *(v0 + 880);
    static Date.now.getter();
    Date.timeIntervalSince1970.getter();
    v27 = v26;
    (*(v24 + 8))(v23, v25);
    v28 = v27 * 1000.0;
    if (COERCE__INT64(fabs(v27 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (v28 <= -1.0)
    {
      goto LABEL_34;
    }

    if (v28 < 1.84467441e19)
    {
      break;
    }

LABEL_35:
    __break(1u);
LABEL_36:
    swift_once();
LABEL_23:
    v17 = type metadata accessor for Logger();
    sub_10000DAC0(v17, qword_10023FCE8);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v39 = v21;
      *v20 = 136315138;
      v22 = sub_10017AD04(v5, v6, &v39);

      *(v20 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v18, v19, "Received distributor bundle ID '%s' from app fetch", v20, 0xCu);
      sub_10000DB58(v21);
    }

    else
    {
    }
  }

  v29 = *(v0 + 848);
  v30 = *(v0 + 824);
  v31 = v28;
  *(v0 + 1056) = 1;
  *(v0 + 1064) = v11;
  v32 = *(v0 + 1064);
  v37 = v29[1];
  v38 = *v29;
  v33 = v29[2];
  v34 = swift_allocObject();
  *(v0 + 960) = v34;
  *(v34 + 16) = 0;
  *(v34 + 24) = 1;
  *(v34 + 32) = v30;
  *(v34 + 40) = v5;
  *(v34 + 48) = v6;
  *(v34 + 56) = v10;
  *(v34 + 64) = v32;
  *(v34 + 72) = v31;
  v35 = swift_task_alloc();
  *(v0 + 968) = v35;
  *v35 = v0;
  v35[1] = sub_1000641CC;

  return sub_10010F0D0(sub_10010F0D0, sub_10006E028, v34, v38, v37, v33);
}

uint64_t sub_100063CD8()
{
  v44 = (v0 + 1001);
  v45 = (v0 + 1009);
  v43 = (v0 + 1030);
  v46 = (v0 + 1025);
  v47 = (v0 + 1017);
  v48 = (v0 + 1042);

  v1 = *(v0 + 952);
  *(v0 + 984) = v1;
  v2 = *(v0 + 896);
  v3 = *(v0 + 888);
  v4 = *(v0 + 880);
  v5 = *(v0 + 872);
  v6 = *(v0 + 864);
  v7 = *(v0 + 856);
  v49 = *(v0 + 848);
  v37 = *(v0 + 840);
  v42 = *(v0 + 832);
  swift_errorRetain();
  v8 = sub_1000C7C10(v1);
  v40 = v9;
  v41 = v8;
  v38 = v11;
  v39 = v10;

  static Date.now.getter();
  (*(v6 + 104))(v5, enum case for Calendar.Component.hour(_:), v7);
  v12 = sub_100025808(v2, v5);
  v14 = v13;
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  if (v14)
  {
    v12 = 0;
  }

  v15 = [objc_opt_self() buildVersion];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  *(v0 + 1000) = 1;
  *(v0 + 1008) = 1;
  *(v0 + 1016) = 1;
  *(v0 + 1024) = 1;
  *(v0 + 1048) = 1;
  *(v0 + 16) = 0;
  *(v0 + 18) = *v43;
  *(v0 + 22) = *(v0 + 1034);
  *(v0 + 24) = v41;
  *(v0 + 32) = v40;
  *(v0 + 40) = v39;
  *(v0 + 48) = v38;
  *(v0 + 56) = v42;
  *(v0 + 64) = v37;
  *(v0 + 72) = v12;
  *(v0 + 80) = v16;
  *(v0 + 88) = v18;
  *(v0 + 96) = 0;
  *(v0 + 101) = 2;
  *(v0 + 97) = 33686018;
  *(v0 + 104) = 0;
  v19 = *(v0 + 1000);
  *(v0 + 112) = v19;
  *(v0 + 113) = *v44;
  *(v0 + 116) = *(v0 + 1004);
  *(v0 + 120) = 0;
  v20 = *(v0 + 1008);
  *(v0 + 128) = v20;
  *(v0 + 129) = 3;
  *(v0 + 130) = *(v0 + 1036);
  *(v0 + 134) = *(v0 + 1040);
  *(v0 + 136) = 0;
  v21 = *(v0 + 1016);
  *(v0 + 144) = v21;
  *(v0 + 148) = *(v0 + 1012);
  *(v0 + 145) = *v45;
  *(v0 + 152) = 0;
  v22 = *(v0 + 1024);
  *(v0 + 160) = v22;
  *(v0 + 161) = 770;
  *(v0 + 167) = *(v0 + 1029);
  *(v0 + 163) = *v46;
  *(v0 + 168) = 0;
  v23 = *(v0 + 1048);
  *(v0 + 176) = v23;
  v24 = *v47;
  *(v0 + 180) = *(v0 + 1020);
  *(v0 + 177) = v24;
  *(v0 + 184) = 0;
  *(v0 + 192) = 0;
  *(v0 + 200) = 514;
  *(v0 + 202) = 2;
  v25 = *v48;
  *(v0 + 207) = *(v0 + 1046);
  *(v0 + 203) = v25;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  *(v0 + 240) = 0;
  v26 = *v43;
  *(v0 + 246) = *(v0 + 1034);
  *(v0 + 242) = v26;
  *(v0 + 248) = v41;
  *(v0 + 256) = v40;
  *(v0 + 264) = v39;
  *(v0 + 272) = v38;
  *(v0 + 280) = v42;
  *(v0 + 288) = v37;
  *(v0 + 296) = v12;
  *(v0 + 304) = v16;
  *(v0 + 312) = v18;
  *(v0 + 320) = 0;
  *(v0 + 325) = 2;
  *(v0 + 321) = 33686018;
  *(v0 + 328) = 0;
  *(v0 + 336) = v19;
  v27 = *v44;
  *(v0 + 340) = *(v0 + 1004);
  *(v0 + 337) = v27;
  *(v0 + 344) = 0;
  *(v0 + 352) = v20;
  *(v0 + 353) = 3;
  v28 = *(v0 + 1036);
  *(v0 + 358) = *(v0 + 1040);
  *(v0 + 354) = v28;
  *(v0 + 360) = 0;
  *(v0 + 368) = v21;
  v29 = *v45;
  *(v0 + 372) = *(v0 + 1012);
  *(v0 + 369) = v29;
  *(v0 + 376) = 0;
  *(v0 + 384) = v22;
  *(v0 + 385) = 770;
  v30 = *v46;
  *(v0 + 391) = *(v0 + 1029);
  *(v0 + 387) = v30;
  *(v0 + 392) = 0;
  *(v0 + 400) = v23;
  v31 = *v47;
  *(v0 + 404) = *(v0 + 1020);
  *(v0 + 401) = v31;
  *(v0 + 408) = 0;
  *(v0 + 416) = 0;
  *(v0 + 424) = 514;
  *(v0 + 426) = 2;
  v32 = *v48;
  *(v0 + 431) = *(v0 + 1046);
  *(v0 + 427) = v32;
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  sub_100010568(v0 + 16, v0 + 464);
  sub_10003AE8C(v0 + 240);
  sub_10000DA7C((v49 + 184), *(v49 + 208));
  v33 = type metadata accessor for SnoutManager(0);
  v34 = swift_task_alloc();
  *(v0 + 992) = v34;
  *v34 = v0;
  v34[1] = sub_100064448;
  v35 = *(v0 + 824);

  return (sub_10016E27C)(v0 + 16, v35, 0, 0, v33, &off_100223858);
}

uint64_t sub_1000641CC()
{
  *(*v1 + 976) = v0;

  if (v0)
  {
    v2 = sub_1000645D0;
  }

  else
  {
    v2 = sub_100064300;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100064300()
{
  if (qword_100239CE8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000DAC0(v1, qword_10023FCE8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 824);
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Distributor metadata cached for item ID %llu", v5, 0xCu);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100064448()
{
  v1 = *v0;

  sub_10003AE8C(v1 + 16);

  return _swift_task_switch(sub_10006454C, 0, 0);
}

uint64_t sub_10006454C(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1000645D0()
{
  v44 = (v0 + 1001);
  v45 = (v0 + 1009);
  v43 = (v0 + 1030);
  v46 = (v0 + 1025);
  v47 = (v0 + 1017);
  v48 = (v0 + 1042);

  v1 = *(v0 + 976);
  *(v0 + 984) = v1;
  v2 = *(v0 + 896);
  v3 = *(v0 + 888);
  v4 = *(v0 + 880);
  v5 = *(v0 + 872);
  v6 = *(v0 + 864);
  v7 = *(v0 + 856);
  v49 = *(v0 + 848);
  v37 = *(v0 + 840);
  v42 = *(v0 + 832);
  swift_errorRetain();
  v8 = sub_1000C7C10(v1);
  v40 = v9;
  v41 = v8;
  v38 = v11;
  v39 = v10;

  static Date.now.getter();
  (*(v6 + 104))(v5, enum case for Calendar.Component.hour(_:), v7);
  v12 = sub_100025808(v2, v5);
  v14 = v13;
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  if (v14)
  {
    v12 = 0;
  }

  v15 = [objc_opt_self() buildVersion];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  *(v0 + 1000) = 1;
  *(v0 + 1008) = 1;
  *(v0 + 1016) = 1;
  *(v0 + 1024) = 1;
  *(v0 + 1048) = 1;
  *(v0 + 16) = 0;
  *(v0 + 18) = *v43;
  *(v0 + 22) = *(v0 + 1034);
  *(v0 + 24) = v41;
  *(v0 + 32) = v40;
  *(v0 + 40) = v39;
  *(v0 + 48) = v38;
  *(v0 + 56) = v42;
  *(v0 + 64) = v37;
  *(v0 + 72) = v12;
  *(v0 + 80) = v16;
  *(v0 + 88) = v18;
  *(v0 + 96) = 0;
  *(v0 + 101) = 2;
  *(v0 + 97) = 33686018;
  *(v0 + 104) = 0;
  v19 = *(v0 + 1000);
  *(v0 + 112) = v19;
  *(v0 + 113) = *v44;
  *(v0 + 116) = *(v0 + 1004);
  *(v0 + 120) = 0;
  v20 = *(v0 + 1008);
  *(v0 + 128) = v20;
  *(v0 + 129) = 3;
  *(v0 + 130) = *(v0 + 1036);
  *(v0 + 134) = *(v0 + 1040);
  *(v0 + 136) = 0;
  v21 = *(v0 + 1016);
  *(v0 + 144) = v21;
  *(v0 + 148) = *(v0 + 1012);
  *(v0 + 145) = *v45;
  *(v0 + 152) = 0;
  v22 = *(v0 + 1024);
  *(v0 + 160) = v22;
  *(v0 + 161) = 770;
  *(v0 + 167) = *(v0 + 1029);
  *(v0 + 163) = *v46;
  *(v0 + 168) = 0;
  v23 = *(v0 + 1048);
  *(v0 + 176) = v23;
  v24 = *v47;
  *(v0 + 180) = *(v0 + 1020);
  *(v0 + 177) = v24;
  *(v0 + 184) = 0;
  *(v0 + 192) = 0;
  *(v0 + 200) = 514;
  *(v0 + 202) = 2;
  v25 = *v48;
  *(v0 + 207) = *(v0 + 1046);
  *(v0 + 203) = v25;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  *(v0 + 240) = 0;
  v26 = *v43;
  *(v0 + 246) = *(v0 + 1034);
  *(v0 + 242) = v26;
  *(v0 + 248) = v41;
  *(v0 + 256) = v40;
  *(v0 + 264) = v39;
  *(v0 + 272) = v38;
  *(v0 + 280) = v42;
  *(v0 + 288) = v37;
  *(v0 + 296) = v12;
  *(v0 + 304) = v16;
  *(v0 + 312) = v18;
  *(v0 + 320) = 0;
  *(v0 + 325) = 2;
  *(v0 + 321) = 33686018;
  *(v0 + 328) = 0;
  *(v0 + 336) = v19;
  v27 = *v44;
  *(v0 + 340) = *(v0 + 1004);
  *(v0 + 337) = v27;
  *(v0 + 344) = 0;
  *(v0 + 352) = v20;
  *(v0 + 353) = 3;
  v28 = *(v0 + 1036);
  *(v0 + 358) = *(v0 + 1040);
  *(v0 + 354) = v28;
  *(v0 + 360) = 0;
  *(v0 + 368) = v21;
  v29 = *v45;
  *(v0 + 372) = *(v0 + 1012);
  *(v0 + 369) = v29;
  *(v0 + 376) = 0;
  *(v0 + 384) = v22;
  *(v0 + 385) = 770;
  v30 = *v46;
  *(v0 + 391) = *(v0 + 1029);
  *(v0 + 387) = v30;
  *(v0 + 392) = 0;
  *(v0 + 400) = v23;
  v31 = *v47;
  *(v0 + 404) = *(v0 + 1020);
  *(v0 + 401) = v31;
  *(v0 + 408) = 0;
  *(v0 + 416) = 0;
  *(v0 + 424) = 514;
  *(v0 + 426) = 2;
  v32 = *v48;
  *(v0 + 431) = *(v0 + 1046);
  *(v0 + 427) = v32;
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  sub_100010568(v0 + 16, v0 + 464);
  sub_10003AE8C(v0 + 240);
  sub_10000DA7C((v49 + 184), *(v49 + 208));
  v33 = type metadata accessor for SnoutManager(0);
  v34 = swift_task_alloc();
  *(v0 + 992) = v34;
  *v34 = v0;
  v34[1] = sub_100064448;
  v35 = *(v0 + 824);

  return (sub_10016E27C)(v0 + 16, v35, 0, 0, v33, &off_100223858);
}

uint64_t sub_100064AC4(uint64_t a1)
{
  v2[95] = v1;
  v2[94] = a1;
  v3 = type metadata accessor for Calendar.Component();
  v2[96] = v3;
  v2[97] = *(v3 - 8);
  v2[98] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v2[99] = v4;
  v2[100] = *(v4 - 8);
  v2[101] = swift_task_alloc();
  v2[102] = swift_task_alloc();

  return _swift_task_switch(sub_100064BF0, 0, 0);
}

uint64_t sub_100064BF0()
{
  v1 = v0[94];
  if (v1 == 915061776)
  {

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[95];
    v6 = *v4;
    v5 = v4[1];
    v7 = v4[2];
    v8 = swift_allocObject();
    v0[103] = v8;
    *(v8 + 16) = v1;
    v9 = swift_task_alloc();
    v0[104] = v9;
    *v9 = v0;
    v9[1] = sub_100064D68;

    return sub_1001107D4((v0 + 86), sub_10006E394, v8, v6, v5, v7);
  }
}

uint64_t sub_100064D68()
{
  *(*v1 + 840) = v0;

  if (v0)
  {
    v2 = sub_10006575C;
  }

  else
  {
    v2 = sub_100064E9C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100064E9C(uint64_t a1)
{
  if (*(v1 + 720))
  {
    v2 = *(v1 + 816);
    v3 = *(v1 + 808);
    v4 = *(v1 + 800);
    v5 = *(v1 + 792);
    Date.init(timeIntervalSince1970:)();
    sub_10000DAF8(v1 + 688, &qword_10023B218, qword_1001B83B0);
    Date.init(timeIntervalSinceNow:)();
    v6 = static Date.> infix(_:_:)();
    v7 = *(v4 + 8);
    v7(v3, v5);
    v7(v2, v5);
    if (v6)
    {

      v8 = *(v1 + 8);

      return v8();
    }

    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  sub_10006DEA4();
  v11 = swift_allocError();
  *v12 = v10;
  swift_willThrow();
  *(v1 + 848) = v11;
  if (qword_100239CE8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000DAC0(v13, qword_10023FCE8);
  swift_errorRetain();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = *(v1 + 752);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 134218242;
    *(v17 + 4) = v16;
    *(v17 + 12) = 2112;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v19;
    *v18 = v19;
    _os_log_impl(&_mh_execute_header, v14, v15, "Encountered error while validating distributor metadata for app %llu, error: %@", v17, 0x16u);
    sub_10000DAF8(v18, &qword_100239F10, &qword_1001B4FD0);
  }

  v60 = (v1 + 881);
  v61 = (v1 + 906);
  v20 = *(v1 + 816);
  v21 = *(v1 + 800);
  v58 = (v1 + 873);
  v59 = (v1 + 889);
  v56 = (v1 + 894);
  v57 = (v1 + 865);
  v22 = *(v1 + 792);
  v23 = *(v1 + 784);
  v24 = *(v1 + 776);
  v25 = *(v1 + 768);
  v62 = *(v1 + 760);

  swift_errorRetain();
  v26 = sub_1000C7C10(v11);
  v54 = v27;
  v55 = v26;
  v52 = v29;
  v53 = v28;
  static Date.now.getter();
  (*(v24 + 104))(v23, enum case for Calendar.Component.hour(_:), v25);
  v30 = sub_100025808(v20, v23);
  v32 = v31;
  (*(v24 + 8))(v23, v25);
  (*(v21 + 8))(v20, v22);
  if (v32)
  {
    v33 = 0;
  }

  else
  {
    v33 = v30;
  }

  v34 = [objc_opt_self() buildVersion];
  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  *(v1 + 864) = 1;
  *(v1 + 872) = 1;
  *(v1 + 880) = 1;
  *(v1 + 888) = 1;
  *(v1 + 912) = 1;
  *(v1 + 16) = 771;
  *(v1 + 18) = *v56;
  *(v1 + 22) = *(v1 + 898);
  *(v1 + 24) = v55;
  *(v1 + 32) = v54;
  *(v1 + 40) = v53;
  *(v1 + 48) = v52;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 72) = v33;
  *(v1 + 80) = v35;
  *(v1 + 88) = v37;
  *(v1 + 96) = 16908800;
  *(v1 + 100) = 514;
  *(v1 + 104) = 0;
  v38 = *(v1 + 864);
  *(v1 + 112) = v38;
  *(v1 + 113) = *v57;
  *(v1 + 116) = *(v1 + 868);
  *(v1 + 120) = 0;
  v39 = *(v1 + 872);
  *(v1 + 128) = v39;
  *(v1 + 129) = 3;
  *(v1 + 130) = *(v1 + 900);
  *(v1 + 134) = *(v1 + 904);
  *(v1 + 136) = 0;
  v40 = *(v1 + 880);
  *(v1 + 144) = v40;
  v41 = *v58;
  *(v1 + 148) = *(v1 + 876);
  *(v1 + 145) = v41;
  *(v1 + 152) = 0;
  LOBYTE(v41) = *(v1 + 888);
  *(v1 + 160) = v41;
  *(v1 + 161) = 770;
  *(v1 + 167) = *(v1 + 893);
  *(v1 + 163) = *v59;
  *(v1 + 168) = 0;
  v42 = *(v1 + 912);
  *(v1 + 176) = v42;
  *(v1 + 177) = *v60;
  *(v1 + 180) = *(v1 + 884);
  *(v1 + 184) = 0;
  *(v1 + 192) = 0;
  *(v1 + 200) = 514;
  *(v1 + 202) = 2;
  *(v1 + 207) = *(v1 + 910);
  *(v1 + 203) = *v61;
  *(v1 + 208) = 0u;
  *(v1 + 224) = 0u;
  *(v1 + 240) = 771;
  *(v1 + 246) = *(v1 + 898);
  *(v1 + 242) = *v56;
  *(v1 + 248) = v55;
  *(v1 + 256) = v54;
  *(v1 + 264) = v53;
  *(v1 + 272) = v52;
  *(v1 + 280) = 0;
  *(v1 + 288) = 0;
  *(v1 + 296) = v33;
  *(v1 + 304) = v35;
  *(v1 + 312) = v37;
  *(v1 + 320) = 16908800;
  *(v1 + 324) = 514;
  *(v1 + 328) = 0;
  *(v1 + 336) = v38;
  v43 = *v57;
  *(v1 + 340) = *(v1 + 868);
  *(v1 + 337) = v43;
  *(v1 + 344) = 0;
  *(v1 + 352) = v39;
  *(v1 + 353) = 3;
  v44 = *(v1 + 900);
  *(v1 + 358) = *(v1 + 904);
  *(v1 + 354) = v44;
  *(v1 + 360) = 0;
  *(v1 + 368) = v40;
  v45 = *v58;
  *(v1 + 372) = *(v1 + 876);
  *(v1 + 369) = v45;
  *(v1 + 376) = 0;
  *(v1 + 384) = v41;
  *(v1 + 385) = 770;
  v46 = *v59;
  *(v1 + 391) = *(v1 + 893);
  *(v1 + 387) = v46;
  *(v1 + 392) = 0;
  *(v1 + 400) = v42;
  v47 = *v60;
  *(v1 + 404) = *(v1 + 884);
  *(v1 + 401) = v47;
  *(v1 + 408) = 0;
  *(v1 + 416) = 0;
  *(v1 + 424) = 514;
  *(v1 + 426) = 2;
  v48 = *v61;
  *(v1 + 431) = *(v1 + 910);
  *(v1 + 427) = v48;
  *(v1 + 432) = 0u;
  *(v1 + 448) = 0u;
  sub_100010568(v1 + 16, v1 + 464);
  sub_10003AE8C(v1 + 240);
  sub_10000DA7C((v62 + 184), *(v62 + 208));
  v49 = type metadata accessor for SnoutManager(0);
  v50 = swift_task_alloc();
  *(v1 + 856) = v50;
  *v50 = v1;
  v50[1] = sub_1000655C0;
  v51 = *(v1 + 752);

  return (sub_10016E27C)(v1 + 16, v51, 0, 0, v49, &off_100223858);
}

uint64_t sub_1000655C0()
{
  v1 = *v0;

  sub_10003AE8C(v1 + 16);

  return _swift_task_switch(sub_1000656C4, 0, 0);
}

uint64_t sub_1000656C4(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_10006575C()
{
  v1 = *(v0 + 840);
  *(v0 + 848) = v1;
  if (qword_100239CE8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000DAC0(v2, qword_10023FCE8);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 752);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 134218242;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2112;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "Encountered error while validating distributor metadata for app %llu, error: %@", v6, 0x16u);
    sub_10000DAF8(v7, &qword_100239F10, &qword_1001B4FD0);
  }

  v50 = (v0 + 881);
  v51 = (v0 + 906);
  v9 = *(v0 + 816);
  v10 = *(v0 + 800);
  v48 = (v0 + 873);
  v49 = (v0 + 889);
  v46 = (v0 + 894);
  v47 = (v0 + 865);
  v11 = *(v0 + 792);
  v12 = *(v0 + 784);
  v13 = *(v0 + 776);
  v14 = *(v0 + 768);
  v52 = *(v0 + 760);

  swift_errorRetain();
  v15 = sub_1000C7C10(v1);
  v44 = v16;
  v45 = v15;
  v42 = v18;
  v43 = v17;
  static Date.now.getter();
  (*(v13 + 104))(v12, enum case for Calendar.Component.hour(_:), v14);
  v19 = sub_100025808(v9, v12);
  v21 = v20;
  (*(v13 + 8))(v12, v14);
  (*(v10 + 8))(v9, v11);
  if (v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = v19;
  }

  v23 = [objc_opt_self() buildVersion];
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  *(v0 + 864) = 1;
  *(v0 + 872) = 1;
  *(v0 + 880) = 1;
  *(v0 + 888) = 1;
  *(v0 + 912) = 1;
  *(v0 + 16) = 771;
  *(v0 + 18) = *v46;
  *(v0 + 22) = *(v0 + 898);
  *(v0 + 24) = v45;
  *(v0 + 32) = v44;
  *(v0 + 40) = v43;
  *(v0 + 48) = v42;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = v22;
  *(v0 + 80) = v24;
  *(v0 + 88) = v26;
  *(v0 + 96) = 16908800;
  *(v0 + 100) = 514;
  *(v0 + 104) = 0;
  v27 = *(v0 + 864);
  *(v0 + 112) = v27;
  *(v0 + 113) = *v47;
  *(v0 + 116) = *(v0 + 868);
  *(v0 + 120) = 0;
  v28 = *(v0 + 872);
  *(v0 + 128) = v28;
  *(v0 + 129) = 3;
  *(v0 + 130) = *(v0 + 900);
  *(v0 + 134) = *(v0 + 904);
  *(v0 + 136) = 0;
  v29 = *(v0 + 880);
  *(v0 + 144) = v29;
  v30 = *v48;
  *(v0 + 148) = *(v0 + 876);
  *(v0 + 145) = v30;
  *(v0 + 152) = 0;
  LOBYTE(v30) = *(v0 + 888);
  *(v0 + 160) = v30;
  *(v0 + 161) = 770;
  *(v0 + 167) = *(v0 + 893);
  *(v0 + 163) = *v49;
  *(v0 + 168) = 0;
  v31 = *(v0 + 912);
  *(v0 + 176) = v31;
  *(v0 + 177) = *v50;
  *(v0 + 180) = *(v0 + 884);
  *(v0 + 184) = 0;
  *(v0 + 192) = 0;
  *(v0 + 200) = 514;
  *(v0 + 202) = 2;
  *(v0 + 207) = *(v0 + 910);
  *(v0 + 203) = *v51;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  *(v0 + 240) = 771;
  *(v0 + 246) = *(v0 + 898);
  *(v0 + 242) = *v46;
  *(v0 + 248) = v45;
  *(v0 + 256) = v44;
  *(v0 + 264) = v43;
  *(v0 + 272) = v42;
  *(v0 + 280) = 0;
  *(v0 + 288) = 0;
  *(v0 + 296) = v22;
  *(v0 + 304) = v24;
  *(v0 + 312) = v26;
  *(v0 + 320) = 16908800;
  *(v0 + 324) = 514;
  *(v0 + 328) = 0;
  *(v0 + 336) = v27;
  v32 = *v47;
  *(v0 + 340) = *(v0 + 868);
  *(v0 + 337) = v32;
  *(v0 + 344) = 0;
  *(v0 + 352) = v28;
  *(v0 + 353) = 3;
  v33 = *(v0 + 900);
  *(v0 + 358) = *(v0 + 904);
  *(v0 + 354) = v33;
  *(v0 + 360) = 0;
  *(v0 + 368) = v29;
  v34 = *v48;
  *(v0 + 372) = *(v0 + 876);
  *(v0 + 369) = v34;
  *(v0 + 376) = 0;
  *(v0 + 384) = v30;
  *(v0 + 385) = 770;
  v35 = *v49;
  *(v0 + 391) = *(v0 + 893);
  *(v0 + 387) = v35;
  *(v0 + 392) = 0;
  *(v0 + 400) = v31;
  v36 = *v50;
  *(v0 + 404) = *(v0 + 884);
  *(v0 + 401) = v36;
  *(v0 + 408) = 0;
  *(v0 + 416) = 0;
  *(v0 + 424) = 514;
  *(v0 + 426) = 2;
  v37 = *v51;
  *(v0 + 431) = *(v0 + 910);
  *(v0 + 427) = v37;
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  sub_100010568(v0 + 16, v0 + 464);
  sub_10003AE8C(v0 + 240);
  sub_10000DA7C((v52 + 184), *(v52 + 208));
  v38 = type metadata accessor for SnoutManager(0);
  v39 = swift_task_alloc();
  *(v0 + 856) = v39;
  *v39 = v0;
  v39[1] = sub_1000655C0;
  v40 = *(v0 + 752);

  return (sub_10016E27C)(v0 + 16, v40, 0, 0, v38, &off_100223858);
}

uint64_t sub_100065D48(uint64_t a1, uint64_t a2)
{
  v3[388] = v2;
  v3[387] = a2;
  v3[386] = a1;
  v4 = type metadata accessor for Calendar.Component();
  v3[389] = v4;
  v3[390] = *(v4 - 8);
  v3[391] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v3[392] = v5;
  v3[393] = *(v5 - 8);
  v3[394] = swift_task_alloc();
  sub_10000CDE0(&qword_10023C230, &qword_1001B4FB0);
  v3[395] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v3[396] = v6;
  v3[397] = *(v6 - 8);
  v3[398] = swift_task_alloc();

  return _swift_task_switch(sub_100065F2C, 0, 0);
}

uint64_t sub_100065F2C()
{
  v1 = *(v0 + 3088);
  *(v0 + 2960) = 0u;
  *(v0 + 2976) = 0u;
  *(v0 + 2992) = 0;
  if (v1 == 915061776)
  {
    v2 = objc_allocWithZone(LSApplicationRecord);
    v3 = sub_1000BB120(0xD000000000000012, 0x80000001001CB3C0, 0);
    v4 = sub_10006DF54();
LABEL_5:
    sub_10000DAF8(v0 + 2960, &qword_10023A7E0, &qword_1001B5850);
    *(v0 + 2960) = v3;
    *(v0 + 2984) = v4;
    *(v0 + 2992) = &off_10021F840;
    goto LABEL_8;
  }

  v5 = objc_allocWithZone(LSApplicationRecord);
  *(v0 + 3080) = 0;
  v6 = [v5 initWithStoreItemIdentifier:v1 error:v0 + 3080];
  v7 = *(v0 + 3080);
  if (v6)
  {
    v3 = v6;
    v4 = sub_10006DF54();
    v8 = v7;
    goto LABEL_5;
  }

  v9 = v7;
  v10 = _convertNSErrorToError(_:)();

  swift_willThrow();
  *(v0 + 3320) = v10;
  v11 = _convertErrorToNSError(_:)();
  v12 = [v11 code];

  if (v12 != -10814)
  {
    if (qword_100239CE8 != -1)
    {
      swift_once();
    }

    v66 = type metadata accessor for Logger();
    sub_10000DAC0(v66, qword_10023FCE8);
    swift_errorRetain();
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = *(v0 + 3088);
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *v70 = 134218242;
      *(v70 + 4) = v69;
      *(v70 + 12) = 2112;
      swift_errorRetain();
      v72 = _swift_stdlib_bridgeErrorToNSError();
      *(v70 + 14) = v72;
      *v71 = v72;
      _os_log_impl(&_mh_execute_header, v67, v68, "Unexpected error fetching LSApplicationRecord for itemID: %llu, error: %@", v70, 0x16u);
      sub_10000DAF8(v71, &qword_100239F10, &qword_1001B4FD0);
    }

    v139 = (v0 + 3550);
    v141 = (v0 + 3465);
    v73 = *(v0 + 3152);
    v74 = *(v0 + 3144);
    v133 = (v0 + 3470);
    v135 = (v0 + 3433);
    v129 = (v0 + 3506);
    v131 = (v0 + 3385);
    v75 = *(v0 + 3136);
    v137 = (v0 + 3377);
    v76 = *(v0 + 3128);
    v77 = *(v0 + 3120);
    v78 = *(v0 + 3112);
    v143 = *(v0 + 3104);

    swift_errorRetain();
    v79 = sub_1000C7C10(v10);
    v125 = v80;
    v127 = v79;
    v122 = v82;
    v123 = v81;
    static Date.now.getter();
    (*(v77 + 104))(v76, enum case for Calendar.Component.hour(_:), v78);
    v83 = sub_100025808(v73, v76);
    v85 = v84;
    (*(v77 + 8))(v76, v78);
    (*(v74 + 8))(v73, v75);
    if (v85)
    {
      v86 = 0;
    }

    else
    {
      v86 = v83;
    }

    v87 = [objc_opt_self() buildVersion];
    v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v90 = v89;

    *(v0 + 3424) = 1;
    *(v0 + 3376) = 1;
    *(v0 + 3392) = 1;
    *(v0 + 3408) = 1;
    *(v0 + 3592) = 1;
    *(v0 + 2256) = 771;
    *(v0 + 2258) = *v129;
    *(v0 + 2262) = *(v0 + 3510);
    *(v0 + 2264) = v127;
    *(v0 + 2272) = v125;
    *(v0 + 2280) = v123;
    *(v0 + 2288) = v122;
    *(v0 + 2296) = 0u;
    *(v0 + 2312) = v86;
    *(v0 + 2320) = v88;
    *(v0 + 2328) = v90;
    *(v0 + 2336) = 16908800;
    *(v0 + 2340) = 514;
    *(v0 + 2344) = 0;
    v91 = *(v0 + 3424);
    *(v0 + 2352) = v91;
    *(v0 + 2353) = *v131;
    *(v0 + 2356) = *(v0 + 3388);
    *(v0 + 2360) = 0;
    v92 = *(v0 + 3376);
    *(v0 + 2368) = v92;
    *(v0 + 2369) = 3;
    *(v0 + 2370) = *v133;
    *(v0 + 2374) = *(v0 + 3474);
    *(v0 + 2376) = 0;
    v93 = *(v0 + 3392);
    *(v0 + 2384) = v93;
    v94 = *v135;
    *(v0 + 2388) = *(v0 + 3436);
    *(v0 + 2385) = v94;
    *(v0 + 2392) = 0;
    v95 = *(v0 + 3408);
    *(v0 + 2400) = v95;
    *(v0 + 2401) = 770;
    *(v0 + 2407) = *(v0 + 3554);
    *(v0 + 2403) = *v139;
    *(v0 + 2408) = 0;
    v96 = *(v0 + 3592);
    *(v0 + 2416) = v96;
    *(v0 + 2417) = *v137;
    *(v0 + 2420) = *(v0 + 3380);
    *(v0 + 2424) = 0u;
    *(v0 + 2440) = 514;
    *(v0 + 2442) = 2;
    *(v0 + 2447) = *(v0 + 3469);
    *(v0 + 2443) = *v141;
    *(v0 + 2448) = 0u;
    *(v0 + 2464) = 0u;
    *(v0 + 240) = 771;
    *(v0 + 246) = *(v0 + 3510);
    *(v0 + 242) = *v129;
    *(v0 + 248) = v127;
    *(v0 + 256) = v125;
    *(v0 + 264) = v123;
    *(v0 + 272) = v122;
    *(v0 + 280) = 0;
    *(v0 + 288) = 0;
    *(v0 + 296) = v86;
    *(v0 + 304) = v88;
    *(v0 + 312) = v90;
    *(v0 + 320) = 16908800;
    *(v0 + 324) = 514;
    *(v0 + 328) = 0;
    *(v0 + 336) = v91;
    v97 = *v131;
    *(v0 + 340) = *(v0 + 3388);
    *(v0 + 337) = v97;
    *(v0 + 344) = 0;
    *(v0 + 352) = v92;
    *(v0 + 353) = 3;
    v98 = *v133;
    *(v0 + 358) = *(v0 + 3474);
    *(v0 + 354) = v98;
    *(v0 + 360) = 0;
    *(v0 + 368) = v93;
    v99 = *v135;
    *(v0 + 372) = *(v0 + 3436);
    *(v0 + 369) = v99;
    *(v0 + 376) = 0;
    *(v0 + 384) = v95;
    *(v0 + 385) = 770;
    v100 = *v139;
    *(v0 + 391) = *(v0 + 3554);
    *(v0 + 387) = v100;
    *(v0 + 392) = 0;
    *(v0 + 400) = v96;
    v101 = *v137;
    *(v0 + 404) = *(v0 + 3380);
    *(v0 + 401) = v101;
    *(v0 + 408) = 0;
    *(v0 + 416) = 0;
    *(v0 + 424) = 514;
    *(v0 + 426) = 2;
    v102 = *v141;
    *(v0 + 431) = *(v0 + 3469);
    *(v0 + 427) = v102;
    *(v0 + 432) = 0u;
    *(v0 + 448) = 0u;
    sub_100010568(v0 + 2256, v0 + 2480);
    sub_10003AE8C(v0 + 240);
    sub_10000DA7C((v143 + 184), *(v143 + 208));
    v62 = type metadata accessor for SnoutManager(0);
    v103 = swift_task_alloc();
    *(v0 + 3328) = v103;
    *v103 = v0;
    v103[1] = sub_1000698D0;
    v64 = *(v0 + 3088);
    v65 = v0 + 2256;
    goto LABEL_34;
  }

LABEL_8:
  sub_100014B50(v0 + 2960, v0 + 3000, &qword_10023A7E0, &qword_1001B5850);
  if (*(v0 + 3024))
  {
    v13 = *(v0 + 3176);
    v14 = *(v0 + 3168);
    v15 = *(v0 + 3160);
    v16 = *(v0 + 3096);
    sub_10000DA64((v0 + 3000), v0 + 3040);
    sub_100014B50(v16, v15, &qword_10023C230, &qword_1001B4FB0);
    if ((*(v13 + 48))(v15, 1, v14) == 1)
    {
      sub_10000DAF8(*(v0 + 3160), &qword_10023C230, &qword_1001B4FB0);
      if (qword_100239CE8 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_10000DAC0(v17, qword_10023FCE8);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = *(v0 + 3088);
        v21 = swift_slowAlloc();
        *v21 = 134217984;
        *(v21 + 4) = v20;
        _os_log_impl(&_mh_execute_header, v18, v19, "Launching itemID: %llu", v21, 0xCu);
      }

      v22 = swift_task_alloc();
      *(v0 + 3232) = v22;
      *v22 = v0;
      v22[1] = sub_1000678FC;
      v23 = *(v0 + 3088);

      return sub_10006D948(v0 + 3040, v23);
    }

    else
    {
      (*(*(v0 + 3176) + 32))(*(v0 + 3184), *(v0 + 3160), *(v0 + 3168));
      if (qword_100239CE8 != -1)
      {
        swift_once();
      }

      v104 = type metadata accessor for Logger();
      *(v0 + 3192) = sub_10000DAC0(v104, qword_10023FCE8);
      v105 = Logger.logObject.getter();
      v106 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v105, v106))
      {
        v107 = *(v0 + 3088);
        v108 = swift_slowAlloc();
        *v108 = 134217984;
        *(v108 + 4) = v107;
        _os_log_impl(&_mh_execute_header, v105, v106, "Opening universal link for app: %llu", v108, 0xCu);
      }

      v109 = *(v0 + 3088);

      v110 = swift_task_alloc();
      if (v109 == 915061776)
      {
        *(v0 + 3200) = v110;
        *v110 = v0;
        v110[1] = sub_100067170;
        v111 = 0x80000001001CB3C0;
        v112 = *(v0 + 3184);
        v113 = 0xD000000000000012;
        v114 = 1;
      }

      else
      {
        *(v0 + 3216) = v110;
        *v110 = v0;
        v110[1] = sub_1000677BC;
        v113 = *(v0 + 3088);
        v112 = *(v0 + 3184);
        v111 = 0;
        v114 = 0;
      }

      return sub_10006C9E8(v112, v113, v111, v114);
    }
  }

  v25 = *(v0 + 3088);
  sub_10000DAF8(v0 + 3000, &qword_10023A7E0, &qword_1001B5850);
  if (v25 == 915061776)
  {
    if (qword_100239CE8 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_10000DAC0(v26, qword_10023FCE8);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 134217984;
      *(v29 + 4) = 915061776;
      _os_log_impl(&_mh_execute_header, v27, v28, "Distributor launch not valid for itemID: %llu", v29, 0xCu);
    }

    v134 = (v0 + 3482);
    v136 = (v0 + 3417);
    v132 = (v0 + 3401);
    v138 = (v0 + 3369);
    v140 = (v0 + 3513);
    sub_10006DEA4();
    v30 = swift_allocError();
    *v31 = 7;
    swift_willThrow();
    sub_10000DAF8(v0 + 2960, &qword_10023A7E0, &qword_1001B5850);
    *(v0 + 3304) = v30;
    v32 = *(v0 + 3152);
    v33 = *(v0 + 3144);
    v34 = *(v0 + 3136);
    v35 = *(v0 + 3128);
    v36 = *(v0 + 3120);
    v37 = *(v0 + 3112);
    v142 = *(v0 + 3104);
    swift_errorRetain();
    v38 = sub_1000C7C10(v30);
    v128 = v39;
    v130 = v38;
    v124 = v41;
    v126 = v40;
    static Date.now.getter();
    (*(v36 + 104))(v35, enum case for Calendar.Component.hour(_:), v37);
    v42 = sub_100025808(v32, v35);
    v44 = v43;
    (*(v36 + 8))(v35, v37);
    (*(v33 + 8))(v32, v34);
    if (v44)
    {
      v45 = 0;
    }

    else
    {
      v45 = v42;
    }

    v46 = [objc_opt_self() buildVersion];
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    *(v0 + 3576) = 1;
    *(v0 + 3488) = 1;
    *(v0 + 3456) = 1;
    *(v0 + 3440) = 1;
    *(v0 + 3416) = 1;
    *(v0 + 464) = 771;
    *(v0 + 466) = *(v0 + 3476);
    *(v0 + 470) = *(v0 + 3480);
    *(v0 + 472) = v130;
    *(v0 + 480) = v128;
    *(v0 + 488) = v126;
    *(v0 + 496) = v124;
    *(v0 + 504) = 0u;
    *(v0 + 520) = v45;
    *(v0 + 528) = v47;
    *(v0 + 536) = v49;
    *(v0 + 544) = 16908800;
    *(v0 + 548) = 514;
    *(v0 + 552) = 0;
    v50 = *(v0 + 3576);
    *(v0 + 560) = v50;
    *(v0 + 561) = *v132;
    *(v0 + 564) = *(v0 + 3404);
    *(v0 + 568) = 0;
    v51 = *(v0 + 3488);
    *(v0 + 576) = v51;
    *(v0 + 577) = 3;
    *(v0 + 578) = *v134;
    *(v0 + 582) = *(v0 + 3486);
    *(v0 + 584) = 0;
    v52 = *(v0 + 3456);
    *(v0 + 592) = v52;
    v53 = *v136;
    *(v0 + 596) = *(v0 + 3420);
    *(v0 + 593) = v53;
    *(v0 + 600) = 0;
    v54 = *(v0 + 3440);
    *(v0 + 608) = v54;
    *(v0 + 609) = 770;
    *(v0 + 615) = *(v0 + 3544);
    *(v0 + 611) = *(v0 + 3540);
    *(v0 + 616) = 0;
    v55 = *(v0 + 3416);
    *(v0 + 624) = v55;
    *(v0 + 625) = *v138;
    *(v0 + 628) = *(v0 + 3372);
    *(v0 + 632) = 0u;
    *(v0 + 648) = 514;
    *(v0 + 650) = 2;
    *(v0 + 655) = *(v0 + 3517);
    *(v0 + 651) = *v140;
    *(v0 + 656) = 0u;
    *(v0 + 672) = 0u;
    *(v0 + 1808) = 771;
    *(v0 + 1814) = *(v0 + 3480);
    *(v0 + 1810) = *(v0 + 3476);
    *(v0 + 1816) = v130;
    *(v0 + 1824) = v128;
    *(v0 + 1832) = v126;
    *(v0 + 1840) = v124;
    *(v0 + 1848) = 0u;
    *(v0 + 1864) = v45;
    *(v0 + 1872) = v47;
    *(v0 + 1880) = v49;
    *(v0 + 1888) = 16908800;
    *(v0 + 1892) = 514;
    *(v0 + 1896) = 0;
    *(v0 + 1904) = v50;
    v56 = *v132;
    *(v0 + 1908) = *(v0 + 3404);
    *(v0 + 1905) = v56;
    *(v0 + 1912) = 0;
    *(v0 + 1920) = v51;
    *(v0 + 1921) = 3;
    v57 = *v134;
    *(v0 + 1926) = *(v0 + 3486);
    *(v0 + 1922) = v57;
    *(v0 + 1928) = 0;
    *(v0 + 1936) = v52;
    v58 = *v136;
    *(v0 + 1940) = *(v0 + 3420);
    *(v0 + 1937) = v58;
    *(v0 + 1944) = 0;
    *(v0 + 1952) = v54;
    *(v0 + 1953) = 770;
    v59 = *(v0 + 3540);
    *(v0 + 1959) = *(v0 + 3544);
    *(v0 + 1955) = v59;
    *(v0 + 1960) = 0;
    *(v0 + 1968) = v55;
    v60 = *v138;
    *(v0 + 1972) = *(v0 + 3372);
    *(v0 + 1969) = v60;
    *(v0 + 1976) = 0u;
    *(v0 + 1992) = 514;
    *(v0 + 1994) = 2;
    v61 = *v140;
    *(v0 + 1999) = *(v0 + 3517);
    *(v0 + 1995) = v61;
    *(v0 + 2016) = 0u;
    *(v0 + 2000) = 0u;
    sub_100010568(v0 + 464, v0 + 1584);
    sub_10003AE8C(v0 + 1808);
    sub_10000DA7C((v142 + 184), *(v142 + 208));
    v62 = type metadata accessor for SnoutManager(0);
    v63 = swift_task_alloc();
    *(v0 + 3312) = v63;
    *v63 = v0;
    v63[1] = sub_1000696D0;
    v64 = *(v0 + 3088);
    v65 = v0 + 464;
LABEL_34:

    return (sub_10016E27C)(v65, v64, 0, 0, v62, &off_100223858);
  }

  v115 = *(v0 + 3104);
  v116 = *(v0 + 3088);
  v118 = *v115;
  v117 = v115[1];
  v119 = v115[2];
  v120 = swift_allocObject();
  *(v0 + 3248) = v120;
  *(v120 + 16) = v116;
  v121 = swift_task_alloc();
  *(v0 + 3256) = v121;
  *v121 = v0;
  v121[1] = sub_100067F34;

  return sub_1001107D4(v0 + 2704, sub_10006DE8C, v120, v118, v117, v119);
}

uint64_t sub_100067170()
{
  *(*v1 + 3208) = v0;

  if (v0)
  {
    v2 = sub_10006AD54;
  }

  else
  {
    v2 = sub_1000672B0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000672B0()
{
  v1 = (v0 + 3457);
  v31 = (v0 + 3518);
  v32 = (v0 + 3449);
  v33 = (v0 + 3489);
  v34 = (v0 + 3441);
  v35 = (v0 + 3545);
  (*(*(v0 + 3176) + 8))(*(v0 + 3184), *(v0 + 3168));
  sub_10000DB58((v0 + 3040));
  v2 = *(v0 + 3152);
  v3 = *(v0 + 3144);
  v4 = *(v0 + 3136);
  v5 = *(v0 + 3128);
  v6 = *(v0 + 3120);
  v7 = *(v0 + 3112);
  v36 = *(v0 + 3104);
  static Date.now.getter();
  (*(v6 + 104))(v5, enum case for Calendar.Component.hour(_:), v7);
  v8 = sub_100025808(v2, v5);
  v10 = v9;
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = v8;
  }

  v12 = [objc_opt_self() buildVersion];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  *(v0 + 3600) = 1;
  *(v0 + 3560) = 1;
  *(v0 + 3400) = 1;
  *(v0 + 3368) = 1;
  *(v0 + 3384) = 1;
  *(v0 + 688) = 1795;
  *(v0 + 690) = *(v0 + 3524);
  *(v0 + 694) = *(v0 + 3528);
  *(v0 + 696) = 0u;
  *(v0 + 712) = 0u;
  *(v0 + 728) = 0u;
  *(v0 + 744) = v11;
  *(v0 + 752) = v13;
  *(v0 + 760) = v15;
  *(v0 + 768) = 16908288;
  *(v0 + 772) = 512;
  *(v0 + 776) = 0;
  *(v0 + 784) = 1;
  *(v0 + 785) = *v1;
  *(v0 + 788) = *(v0 + 3460);
  *(v0 + 792) = 0;
  v16 = *(v0 + 3560);
  *(v0 + 800) = v16;
  *(v0 + 801) = 3;
  *(v0 + 802) = *v31;
  *(v0 + 806) = *(v0 + 3522);
  *(v0 + 808) = 0;
  v17 = *(v0 + 3400);
  *(v0 + 816) = v17;
  v18 = *v32;
  *(v0 + 820) = *(v0 + 3452);
  *(v0 + 817) = v18;
  *(v0 + 824) = 0;
  v19 = *(v0 + 3368);
  *(v0 + 832) = v19;
  *(v0 + 833) = 770;
  *(v0 + 839) = *(v0 + 3493);
  *(v0 + 835) = *v33;
  *(v0 + 840) = 0;
  v20 = *(v0 + 3384);
  *(v0 + 848) = v20;
  *(v0 + 849) = *v34;
  *(v0 + 852) = *(v0 + 3444);
  *(v0 + 856) = 0u;
  *(v0 + 872) = 514;
  *(v0 + 874) = 2;
  *(v0 + 879) = *(v0 + 3549);
  *(v0 + 875) = *v35;
  *(v0 + 880) = 0u;
  *(v0 + 896) = 0u;
  *(v0 + 1360) = 1795;
  *(v0 + 1366) = *(v0 + 3528);
  *(v0 + 1362) = *(v0 + 3524);
  *(v0 + 1368) = 0u;
  *(v0 + 1384) = 0u;
  *(v0 + 1400) = 0u;
  *(v0 + 1416) = v11;
  *(v0 + 1424) = v13;
  *(v0 + 1432) = v15;
  *(v0 + 1440) = 16908288;
  *(v0 + 1444) = 512;
  *(v0 + 1448) = 0;
  *(v0 + 1456) = 1;
  v21 = *v1;
  *(v0 + 1460) = *(v0 + 3460);
  *(v0 + 1457) = v21;
  *(v0 + 1464) = 0;
  *(v0 + 1472) = v16;
  *(v0 + 1473) = 3;
  v22 = *v31;
  *(v0 + 1478) = *(v0 + 3522);
  *(v0 + 1474) = v22;
  *(v0 + 1480) = 0;
  *(v0 + 1488) = v17;
  v23 = *v32;
  *(v0 + 1492) = *(v0 + 3452);
  *(v0 + 1489) = v23;
  *(v0 + 1496) = 0;
  *(v0 + 1504) = v19;
  *(v0 + 1505) = 770;
  v24 = *v33;
  *(v0 + 1511) = *(v0 + 3493);
  *(v0 + 1507) = v24;
  *(v0 + 1512) = 0;
  *(v0 + 1520) = v20;
  v25 = *v34;
  *(v0 + 1524) = *(v0 + 3444);
  *(v0 + 1521) = v25;
  *(v0 + 1528) = 0u;
  *(v0 + 1544) = 514;
  *(v0 + 1546) = 2;
  v26 = *v35;
  *(v0 + 1551) = *(v0 + 3549);
  *(v0 + 1547) = v26;
  *(v0 + 1568) = 0u;
  *(v0 + 1552) = 0u;
  sub_100010568(v0 + 688, v0 + 1136);
  sub_10003AE8C(v0 + 1360);
  sub_10000DA7C((v36 + 184), *(v36 + 208));
  v27 = type metadata accessor for SnoutManager(0);
  v28 = swift_task_alloc();
  *(v0 + 3296) = v28;
  *v28 = v0;
  v28[1] = sub_1000694C0;
  v29 = *(v0 + 3088);

  return (sub_10016E27C)(v0 + 688, v29, 0, 0, v27, &off_100223858);
}

uint64_t sub_1000677BC()
{
  *(*v1 + 3224) = v0;

  if (v0)
  {
    v2 = sub_10006B368;
  }

  else
  {
    v2 = sub_10006E320;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000678FC()
{
  *(*v1 + 3240) = v0;

  if (v0)
  {
    v2 = sub_10006BEF0;
  }

  else
  {
    v2 = sub_100067A3C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100067A3C()
{
  v34 = (v0 + 3441);
  v32 = (v0 + 3449);
  v1 = (v0 + 3457);
  v31 = (v0 + 3518);
  v33 = (v0 + 3489);
  v35 = (v0 + 3545);
  sub_10000DB58((v0 + 3040));
  v2 = *(v0 + 3152);
  v3 = *(v0 + 3144);
  v4 = *(v0 + 3136);
  v5 = *(v0 + 3128);
  v6 = *(v0 + 3120);
  v7 = *(v0 + 3112);
  v36 = *(v0 + 3104);
  static Date.now.getter();
  (*(v6 + 104))(v5, enum case for Calendar.Component.hour(_:), v7);
  v8 = sub_100025808(v2, v5);
  v10 = v9;
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = v8;
  }

  v12 = [objc_opt_self() buildVersion];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  *(v0 + 3600) = 1;
  *(v0 + 3560) = 1;
  *(v0 + 3400) = 1;
  *(v0 + 3368) = 1;
  *(v0 + 3384) = 1;
  *(v0 + 688) = 1795;
  *(v0 + 690) = *(v0 + 3524);
  *(v0 + 694) = *(v0 + 3528);
  *(v0 + 696) = 0u;
  *(v0 + 712) = 0u;
  *(v0 + 728) = 0u;
  *(v0 + 744) = v11;
  *(v0 + 752) = v13;
  *(v0 + 760) = v15;
  *(v0 + 768) = 16908288;
  *(v0 + 772) = 513;
  *(v0 + 776) = 0;
  *(v0 + 784) = 1;
  *(v0 + 785) = *v1;
  *(v0 + 788) = *(v0 + 3460);
  *(v0 + 792) = 0;
  v16 = *(v0 + 3560);
  *(v0 + 800) = v16;
  *(v0 + 801) = 3;
  *(v0 + 802) = *v31;
  *(v0 + 806) = *(v0 + 3522);
  *(v0 + 808) = 0;
  v17 = *(v0 + 3400);
  *(v0 + 816) = v17;
  v18 = *v32;
  *(v0 + 820) = *(v0 + 3452);
  *(v0 + 817) = v18;
  *(v0 + 824) = 0;
  v19 = *(v0 + 3368);
  *(v0 + 832) = v19;
  *(v0 + 833) = 770;
  *(v0 + 839) = *(v0 + 3493);
  *(v0 + 835) = *v33;
  *(v0 + 840) = 0;
  v20 = *(v0 + 3384);
  *(v0 + 848) = v20;
  *(v0 + 849) = *v34;
  *(v0 + 852) = *(v0 + 3444);
  *(v0 + 856) = 0u;
  *(v0 + 872) = 514;
  *(v0 + 874) = 2;
  *(v0 + 879) = *(v0 + 3549);
  *(v0 + 875) = *v35;
  *(v0 + 880) = 0u;
  *(v0 + 896) = 0u;
  *(v0 + 1360) = 1795;
  *(v0 + 1366) = *(v0 + 3528);
  *(v0 + 1362) = *(v0 + 3524);
  *(v0 + 1368) = 0u;
  *(v0 + 1384) = 0u;
  *(v0 + 1400) = 0u;
  *(v0 + 1416) = v11;
  *(v0 + 1424) = v13;
  *(v0 + 1432) = v15;
  *(v0 + 1440) = 16908288;
  *(v0 + 1444) = 513;
  *(v0 + 1448) = 0;
  *(v0 + 1456) = 1;
  v21 = *v1;
  *(v0 + 1460) = *(v0 + 3460);
  *(v0 + 1457) = v21;
  *(v0 + 1464) = 0;
  *(v0 + 1472) = v16;
  *(v0 + 1473) = 3;
  v22 = *v31;
  *(v0 + 1478) = *(v0 + 3522);
  *(v0 + 1474) = v22;
  *(v0 + 1480) = 0;
  *(v0 + 1488) = v17;
  v23 = *v32;
  *(v0 + 1492) = *(v0 + 3452);
  *(v0 + 1489) = v23;
  *(v0 + 1496) = 0;
  *(v0 + 1504) = v19;
  *(v0 + 1505) = 770;
  v24 = *v33;
  *(v0 + 1511) = *(v0 + 3493);
  *(v0 + 1507) = v24;
  *(v0 + 1512) = 0;
  *(v0 + 1520) = v20;
  v25 = *v34;
  *(v0 + 1524) = *(v0 + 3444);
  *(v0 + 1521) = v25;
  *(v0 + 1528) = 0u;
  *(v0 + 1544) = 514;
  *(v0 + 1546) = 2;
  v26 = *v35;
  *(v0 + 1551) = *(v0 + 3549);
  *(v0 + 1547) = v26;
  *(v0 + 1568) = 0u;
  *(v0 + 1552) = 0u;
  sub_100010568(v0 + 688, v0 + 1136);
  sub_10003AE8C(v0 + 1360);
  sub_10000DA7C((v36 + 184), *(v36 + 208));
  v27 = type metadata accessor for SnoutManager(0);
  v28 = swift_task_alloc();
  *(v0 + 3296) = v28;
  *v28 = v0;
  v28[1] = sub_1000694C0;
  v29 = *(v0 + 3088);

  return (sub_10016E27C)(v0 + 688, v29, 0, 0, v27, &off_100223858);
}

uint64_t sub_100067F34()
{
  v2 = *v1;
  *(*v1 + 3264) = v0;

  if (v0)
  {

    v3 = sub_10006C43C;
  }

  else
  {
    v2[181] = v2[169];
    v2[182] = v2[170];
    v2[183] = v2[171];
    v2[184] = v2[172];

    v3 = sub_1000680AC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000680AC()
{
  v1 = *(v0 + 2736);
  if (v1)
  {
    v2 = *(v0 + 2728);
    v3 = *(v0 + 2744);
    *(v0 + 3584) = *(v0 + 2752);
    if (qword_100239CE8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    *(v0 + 3272) = sub_10000DAC0(v4, qword_10023FCE8);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 3088);
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = v7;
      _os_log_impl(&_mh_execute_header, v5, v6, "Launching distributor for itemID: %llu", v8, 0xCu);
    }

    v9 = *(v0 + 3584);
    v10 = *(v0 + 2912);
    *(v0 + 2832) = *(v0 + 2896);
    *(v0 + 2848) = v10;
    v11 = *(v0 + 2944);
    *(v0 + 2864) = *(v0 + 2928);
    *(v0 + 2880) = v11;
    sub_10006DEF8(v0 + 2832, v0 + 2768);
    v12 = swift_task_alloc();
    *(v0 + 3280) = v12;
    *v12 = v0;
    v12[1] = sub_100068888;
    v13 = *(v0 + 3088);

    return static AppDistributor.requestProductPage(_:itemID:versionID:)(v2, v1, v13, v3, v9);
  }

  else
  {
    if (qword_100239CE8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000DAC0(v14, qword_10023FCE8);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v0 + 3088);
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      *(v18 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to retrieve app distributor metadata for itemID: %llu", v18, 0xCu);
    }

    v60 = (v0 + 3482);
    v61 = (v0 + 3417);
    v59 = (v0 + 3401);
    v62 = (v0 + 3369);
    v63 = (v0 + 3513);
    sub_10006DEA4();
    v19 = swift_allocError();
    *v20 = 2;
    swift_willThrow();
    sub_10000DAF8(v0 + 2960, &qword_10023A7E0, &qword_1001B5850);
    *(v0 + 3304) = v19;
    v21 = *(v0 + 3152);
    v22 = *(v0 + 3144);
    v23 = *(v0 + 3136);
    v24 = *(v0 + 3128);
    v25 = *(v0 + 3120);
    v26 = *(v0 + 3112);
    v64 = *(v0 + 3104);
    swift_errorRetain();
    v27 = sub_1000C7C10(v19);
    v57 = v28;
    v58 = v27;
    v55 = v30;
    v56 = v29;
    static Date.now.getter();
    (*(v25 + 104))(v24, enum case for Calendar.Component.hour(_:), v26);
    v31 = sub_100025808(v21, v24);
    v33 = v32;
    (*(v25 + 8))(v24, v26);
    (*(v22 + 8))(v21, v23);
    if (v33)
    {
      v34 = 0;
    }

    else
    {
      v34 = v31;
    }

    v35 = [objc_opt_self() buildVersion];
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    *(v0 + 3576) = 1;
    *(v0 + 3488) = 1;
    *(v0 + 3456) = 1;
    *(v0 + 3440) = 1;
    *(v0 + 3416) = 1;
    *(v0 + 464) = 771;
    *(v0 + 466) = *(v0 + 3476);
    *(v0 + 470) = *(v0 + 3480);
    *(v0 + 472) = v58;
    *(v0 + 480) = v57;
    *(v0 + 488) = v56;
    *(v0 + 496) = v55;
    *(v0 + 504) = 0u;
    *(v0 + 520) = v34;
    *(v0 + 528) = v36;
    *(v0 + 536) = v38;
    *(v0 + 544) = 16908800;
    *(v0 + 548) = 514;
    *(v0 + 552) = 0;
    v39 = *(v0 + 3576);
    *(v0 + 560) = v39;
    *(v0 + 561) = *v59;
    *(v0 + 564) = *(v0 + 3404);
    *(v0 + 568) = 0;
    v40 = *(v0 + 3488);
    *(v0 + 576) = v40;
    *(v0 + 577) = 3;
    *(v0 + 578) = *v60;
    *(v0 + 582) = *(v0 + 3486);
    *(v0 + 584) = 0;
    v41 = *(v0 + 3456);
    *(v0 + 592) = v41;
    v42 = *v61;
    *(v0 + 596) = *(v0 + 3420);
    *(v0 + 593) = v42;
    *(v0 + 600) = 0;
    v43 = *(v0 + 3440);
    *(v0 + 608) = v43;
    *(v0 + 609) = 770;
    *(v0 + 615) = *(v0 + 3544);
    *(v0 + 611) = *(v0 + 3540);
    *(v0 + 616) = 0;
    v44 = *(v0 + 3416);
    *(v0 + 624) = v44;
    *(v0 + 625) = *v62;
    *(v0 + 628) = *(v0 + 3372);
    *(v0 + 632) = 0u;
    *(v0 + 648) = 514;
    *(v0 + 650) = 2;
    *(v0 + 655) = *(v0 + 3517);
    *(v0 + 651) = *v63;
    *(v0 + 656) = 0u;
    *(v0 + 672) = 0u;
    *(v0 + 1808) = 771;
    *(v0 + 1814) = *(v0 + 3480);
    *(v0 + 1810) = *(v0 + 3476);
    *(v0 + 1816) = v58;
    *(v0 + 1824) = v57;
    *(v0 + 1832) = v56;
    *(v0 + 1840) = v55;
    *(v0 + 1848) = 0u;
    *(v0 + 1864) = v34;
    *(v0 + 1872) = v36;
    *(v0 + 1880) = v38;
    *(v0 + 1888) = 16908800;
    *(v0 + 1892) = 514;
    *(v0 + 1896) = 0;
    *(v0 + 1904) = v39;
    v45 = *v59;
    *(v0 + 1908) = *(v0 + 3404);
    *(v0 + 1905) = v45;
    *(v0 + 1912) = 0;
    *(v0 + 1920) = v40;
    *(v0 + 1921) = 3;
    v46 = *v60;
    *(v0 + 1926) = *(v0 + 3486);
    *(v0 + 1922) = v46;
    *(v0 + 1928) = 0;
    *(v0 + 1936) = v41;
    v47 = *v61;
    *(v0 + 1940) = *(v0 + 3420);
    *(v0 + 1937) = v47;
    *(v0 + 1944) = 0;
    *(v0 + 1952) = v43;
    *(v0 + 1953) = 770;
    v48 = *(v0 + 3540);
    *(v0 + 1959) = *(v0 + 3544);
    *(v0 + 1955) = v48;
    *(v0 + 1960) = 0;
    *(v0 + 1968) = v44;
    v49 = *v62;
    *(v0 + 1972) = *(v0 + 3372);
    *(v0 + 1969) = v49;
    *(v0 + 1976) = 0u;
    *(v0 + 1992) = 514;
    *(v0 + 1994) = 2;
    v50 = *v63;
    *(v0 + 1999) = *(v0 + 3517);
    *(v0 + 1995) = v50;
    *(v0 + 2016) = 0u;
    *(v0 + 2000) = 0u;
    sub_100010568(v0 + 464, v0 + 1584);
    sub_10003AE8C(v0 + 1808);
    sub_10000DA7C((v64 + 184), *(v64 + 208));
    v51 = type metadata accessor for SnoutManager(0);
    v52 = swift_task_alloc();
    *(v0 + 3312) = v52;
    *v52 = v0;
    v52[1] = sub_1000696D0;
    v53 = *(v0 + 3088);

    return (sub_10016E27C)(v0 + 464, v53, 0, 0, v51, &off_100223858);
  }
}

uint64_t sub_100068888()
{
  v2 = *v1;
  *(v2 + 3288) = v0;

  sub_10000DAF8(v2 + 2704, &qword_10023B218, qword_1001B83B0);
  if (v0)
  {
    v3 = sub_100068F68;
  }

  else
  {
    sub_10000DAF8(v2 + 2704, &qword_10023B218, qword_1001B83B0);
    v3 = sub_100068A00;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100068A00(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 3088);
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Distributor launch completed for item ID: %llu", v5, 0xCu);
  }

  v40 = (v1 + 3489);
  v41 = (v1 + 3545);
  v6 = (v1 + 3457);
  v7 = *(v1 + 3152);
  v8 = *(v1 + 3144);
  v37 = (v1 + 3518);
  v38 = (v1 + 3449);
  v39 = (v1 + 3441);
  v9 = *(v1 + 3136);
  v10 = *(v1 + 3128);
  v11 = *(v1 + 3120);
  v12 = *(v1 + 3112);
  v42 = *(v1 + 3104);
  static Date.now.getter();
  (*(v11 + 104))(v10, enum case for Calendar.Component.hour(_:), v12);
  v13 = sub_100025808(v7, v10);
  v15 = v14;
  (*(v11 + 8))(v10, v12);
  (*(v8 + 8))(v7, v9);
  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = v13;
  }

  v17 = [objc_opt_self() buildVersion];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  *(v1 + 3600) = 1;
  *(v1 + 3560) = 1;
  *(v1 + 3400) = 1;
  *(v1 + 3368) = 1;
  *(v1 + 3384) = 1;
  *(v1 + 688) = 1795;
  *(v1 + 690) = *(v1 + 3524);
  *(v1 + 694) = *(v1 + 3528);
  *(v1 + 696) = 0u;
  *(v1 + 712) = 0u;
  *(v1 + 728) = 0u;
  *(v1 + 744) = v16;
  *(v1 + 752) = v18;
  *(v1 + 760) = v20;
  *(v1 + 768) = 16908544;
  *(v1 + 772) = 514;
  *(v1 + 776) = 0;
  v21 = *(v1 + 3600);
  *(v1 + 784) = v21;
  *(v1 + 785) = *v6;
  *(v1 + 788) = *(v1 + 3460);
  *(v1 + 792) = 0;
  v22 = *(v1 + 3560);
  *(v1 + 800) = v22;
  *(v1 + 801) = 3;
  *(v1 + 802) = *v37;
  *(v1 + 806) = *(v1 + 3522);
  *(v1 + 808) = 0;
  v23 = *(v1 + 3400);
  *(v1 + 816) = v23;
  v24 = *v38;
  *(v1 + 820) = *(v1 + 3452);
  *(v1 + 817) = v24;
  *(v1 + 824) = 0;
  v25 = *(v1 + 3368);
  *(v1 + 832) = v25;
  *(v1 + 833) = 770;
  *(v1 + 839) = *(v1 + 3493);
  *(v1 + 835) = *v40;
  *(v1 + 840) = 0;
  v26 = *(v1 + 3384);
  *(v1 + 848) = v26;
  *(v1 + 849) = *v39;
  *(v1 + 852) = *(v1 + 3444);
  *(v1 + 856) = 0u;
  *(v1 + 872) = 514;
  *(v1 + 874) = 2;
  *(v1 + 879) = *(v1 + 3549);
  *(v1 + 875) = *v41;
  *(v1 + 880) = 0u;
  *(v1 + 896) = 0u;
  *(v1 + 1360) = 1795;
  *(v1 + 1366) = *(v1 + 3528);
  *(v1 + 1362) = *(v1 + 3524);
  *(v1 + 1368) = 0u;
  *(v1 + 1384) = 0u;
  *(v1 + 1400) = 0u;
  *(v1 + 1416) = v16;
  *(v1 + 1424) = v18;
  *(v1 + 1432) = v20;
  *(v1 + 1440) = 16908544;
  *(v1 + 1444) = 514;
  *(v1 + 1448) = 0;
  *(v1 + 1456) = v21;
  v27 = *v6;
  *(v1 + 1460) = *(v1 + 3460);
  *(v1 + 1457) = v27;
  *(v1 + 1464) = 0;
  *(v1 + 1472) = v22;
  *(v1 + 1473) = 3;
  v28 = *v37;
  *(v1 + 1478) = *(v1 + 3522);
  *(v1 + 1474) = v28;
  *(v1 + 1480) = 0;
  *(v1 + 1488) = v23;
  v29 = *v38;
  *(v1 + 1492) = *(v1 + 3452);
  *(v1 + 1489) = v29;
  *(v1 + 1496) = 0;
  *(v1 + 1504) = v25;
  *(v1 + 1505) = 770;
  v30 = *v40;
  *(v1 + 1511) = *(v1 + 3493);
  *(v1 + 1507) = v30;
  *(v1 + 1512) = 0;
  *(v1 + 1520) = v26;
  v31 = *v39;
  *(v1 + 1524) = *(v1 + 3444);
  *(v1 + 1521) = v31;
  *(v1 + 1528) = 0u;
  *(v1 + 1544) = 514;
  *(v1 + 1546) = 2;
  v32 = *v41;
  *(v1 + 1551) = *(v1 + 3549);
  *(v1 + 1547) = v32;
  *(v1 + 1568) = 0u;
  *(v1 + 1552) = 0u;
  sub_100010568(v1 + 688, v1 + 1136);
  sub_10003AE8C(v1 + 1360);
  sub_10000DA7C((v42 + 184), *(v42 + 208));
  v33 = type metadata accessor for SnoutManager(0);
  v34 = swift_task_alloc();
  *(v1 + 3296) = v34;
  *v34 = v1;
  v34[1] = sub_1000694C0;
  v35 = *(v1 + 3088);

  return (sub_10016E27C)(v1 + 688, v35, 0, 0, v33, &off_100223858);
}

uint64_t sub_100068F68()
{
  v43 = (v0 + 3369);
  v42 = (v0 + 3417);
  v40 = (v0 + 3401);
  v41 = (v0 + 3482);
  v44 = (v0 + 3513);
  sub_10000DAF8(v0 + 2704, &qword_10023B218, qword_1001B83B0);
  sub_10000DAF8(v0 + 2960, &qword_10023A7E0, &qword_1001B5850);
  v1 = *(v0 + 3288);
  *(v0 + 3304) = v1;
  v2 = *(v0 + 3152);
  v3 = *(v0 + 3144);
  v4 = *(v0 + 3136);
  v5 = *(v0 + 3128);
  v6 = *(v0 + 3120);
  v7 = *(v0 + 3112);
  v45 = *(v0 + 3104);
  swift_errorRetain();
  v8 = sub_1000C7C10(v1);
  v38 = v9;
  v39 = v8;
  v36 = v11;
  v37 = v10;
  static Date.now.getter();
  (*(v6 + 104))(v5, enum case for Calendar.Component.hour(_:), v7);
  v12 = sub_100025808(v2, v5);
  v14 = v13;
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v12;
  }

  v16 = [objc_opt_self() buildVersion];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  *(v0 + 3576) = 1;
  *(v0 + 3488) = 1;
  *(v0 + 3456) = 1;
  *(v0 + 3440) = 1;
  *(v0 + 3416) = 1;
  *(v0 + 464) = 771;
  *(v0 + 466) = *(v0 + 3476);
  *(v0 + 470) = *(v0 + 3480);
  *(v0 + 472) = v39;
  *(v0 + 480) = v38;
  *(v0 + 488) = v37;
  *(v0 + 496) = v36;
  *(v0 + 504) = 0u;
  *(v0 + 520) = v15;
  *(v0 + 528) = v17;
  *(v0 + 536) = v19;
  *(v0 + 544) = 16908544;
  *(v0 + 548) = 514;
  *(v0 + 552) = 0;
  v20 = *(v0 + 3576);
  *(v0 + 560) = v20;
  *(v0 + 561) = *v40;
  *(v0 + 564) = *(v0 + 3404);
  *(v0 + 568) = 0;
  v21 = *(v0 + 3488);
  *(v0 + 576) = v21;
  *(v0 + 577) = 3;
  *(v0 + 578) = *v41;
  *(v0 + 582) = *(v0 + 3486);
  *(v0 + 584) = 0;
  v22 = *(v0 + 3456);
  *(v0 + 592) = v22;
  v23 = *v42;
  *(v0 + 596) = *(v0 + 3420);
  *(v0 + 593) = v23;
  *(v0 + 600) = 0;
  v24 = *(v0 + 3440);
  *(v0 + 608) = v24;
  *(v0 + 609) = 770;
  *(v0 + 615) = *(v0 + 3544);
  *(v0 + 611) = *(v0 + 3540);
  *(v0 + 616) = 0;
  v25 = *(v0 + 3416);
  *(v0 + 624) = v25;
  *(v0 + 625) = *v43;
  *(v0 + 628) = *(v0 + 3372);
  *(v0 + 632) = 0u;
  *(v0 + 648) = 514;
  *(v0 + 650) = 2;
  *(v0 + 655) = *(v0 + 3517);
  *(v0 + 651) = *v44;
  *(v0 + 656) = 0u;
  *(v0 + 672) = 0u;
  *(v0 + 1808) = 771;
  *(v0 + 1814) = *(v0 + 3480);
  *(v0 + 1810) = *(v0 + 3476);
  *(v0 + 1816) = v39;
  *(v0 + 1824) = v38;
  *(v0 + 1832) = v37;
  *(v0 + 1840) = v36;
  *(v0 + 1848) = 0u;
  *(v0 + 1864) = v15;
  *(v0 + 1872) = v17;
  *(v0 + 1880) = v19;
  *(v0 + 1888) = 16908544;
  *(v0 + 1892) = 514;
  *(v0 + 1896) = 0;
  *(v0 + 1904) = v20;
  v26 = *v40;
  *(v0 + 1908) = *(v0 + 3404);
  *(v0 + 1905) = v26;
  *(v0 + 1912) = 0;
  *(v0 + 1920) = v21;
  *(v0 + 1921) = 3;
  v27 = *v41;
  *(v0 + 1926) = *(v0 + 3486);
  *(v0 + 1922) = v27;
  *(v0 + 1928) = 0;
  *(v0 + 1936) = v22;
  v28 = *v42;
  *(v0 + 1940) = *(v0 + 3420);
  *(v0 + 1937) = v28;
  *(v0 + 1944) = 0;
  *(v0 + 1952) = v24;
  *(v0 + 1953) = 770;
  v29 = *(v0 + 3540);
  *(v0 + 1959) = *(v0 + 3544);
  *(v0 + 1955) = v29;
  *(v0 + 1960) = 0;
  *(v0 + 1968) = v25;
  v30 = *v43;
  *(v0 + 1972) = *(v0 + 3372);
  *(v0 + 1969) = v30;
  *(v0 + 1976) = 0u;
  *(v0 + 1992) = 514;
  *(v0 + 1994) = 2;
  v31 = *v44;
  *(v0 + 1999) = *(v0 + 3517);
  *(v0 + 1995) = v31;
  *(v0 + 2016) = 0u;
  *(v0 + 2000) = 0u;
  sub_100010568(v0 + 464, v0 + 1584);
  sub_10003AE8C(v0 + 1808);
  sub_10000DA7C((v45 + 184), *(v45 + 208));
  v32 = type metadata accessor for SnoutManager(0);
  v33 = swift_task_alloc();
  *(v0 + 3312) = v33;
  *v33 = v0;
  v33[1] = sub_1000696D0;
  v34 = *(v0 + 3088);

  return (sub_10016E27C)(v0 + 464, v34, 0, 0, v32, &off_100223858);
}

uint64_t sub_1000694C0()
{
  v1 = *v0;

  sub_10003AE8C(v1 + 688);

  return _swift_task_switch(sub_1000695F0, 0, 0);
}

uint64_t sub_1000695F0()
{
  sub_10000DAF8(v0 + 2960, &qword_10023A7E0, &qword_1001B5850);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000696D0()
{
  v1 = *v0;

  sub_10003AE8C(v1 + 464);

  return _swift_task_switch(sub_100069800, 0, 0);
}

uint64_t sub_100069800(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1000698D0()
{
  v1 = *v0;

  sub_10003AE8C(v1 + 2256);

  return _swift_task_switch(sub_100069A00, 0, 0);
}

uint64_t sub_100069A00()
{

  sub_100014B50(v0 + 2960, v0 + 3000, &qword_10023A7E0, &qword_1001B5850);
  if (*(v0 + 3024))
  {
    v1 = *(v0 + 3176);
    v2 = *(v0 + 3168);
    v3 = *(v0 + 3160);
    v4 = *(v0 + 3096);
    sub_10000DA64((v0 + 3000), v0 + 3040);
    sub_100014B50(v4, v3, &qword_10023C230, &qword_1001B4FB0);
    if ((*(v1 + 48))(v3, 1, v2) == 1)
    {
      sub_10000DAF8(*(v0 + 3160), &qword_10023C230, &qword_1001B4FB0);
      if (qword_100239CE8 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_10000DAC0(v5, qword_10023FCE8);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = *(v0 + 3088);
        v9 = swift_slowAlloc();
        *v9 = 134217984;
        *(v9 + 4) = v8;
        _os_log_impl(&_mh_execute_header, v6, v7, "Launching itemID: %llu", v9, 0xCu);
      }

      v10 = swift_task_alloc();
      *(v0 + 3232) = v10;
      *v10 = v0;
      v10[1] = sub_1000678FC;
      v11 = *(v0 + 3088);

      return sub_10006D948(v0 + 3040, v11);
    }

    else
    {
      (*(*(v0 + 3176) + 32))(*(v0 + 3184), *(v0 + 3160), *(v0 + 3168));
      if (qword_100239CE8 != -1)
      {
        swift_once();
      }

      v53 = type metadata accessor for Logger();
      *(v0 + 3192) = sub_10000DAC0(v53, qword_10023FCE8);
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = *(v0 + 3088);
        v57 = swift_slowAlloc();
        *v57 = 134217984;
        *(v57 + 4) = v56;
        _os_log_impl(&_mh_execute_header, v54, v55, "Opening universal link for app: %llu", v57, 0xCu);
      }

      v58 = *(v0 + 3088);

      v59 = swift_task_alloc();
      if (v58 == 915061776)
      {
        *(v0 + 3200) = v59;
        *v59 = v0;
        v59[1] = sub_100067170;
        v60 = 0x80000001001CB3C0;
        v61 = *(v0 + 3184);
        v62 = 0xD000000000000012;
        v63 = 1;
      }

      else
      {
        *(v0 + 3216) = v59;
        *v59 = v0;
        v59[1] = sub_1000677BC;
        v62 = *(v0 + 3088);
        v61 = *(v0 + 3184);
        v60 = 0;
        v63 = 0;
      }

      return sub_10006C9E8(v61, v62, v60, v63);
    }
  }

  else
  {
    v13 = *(v0 + 3088);
    sub_10000DAF8(v0 + 3000, &qword_10023A7E0, &qword_1001B5850);
    if (v13 == 915061776)
    {
      if (qword_100239CE8 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_10000DAC0(v14, qword_10023FCE8);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 134217984;
        *(v17 + 4) = 915061776;
        _os_log_impl(&_mh_execute_header, v15, v16, "Distributor launch not valid for itemID: %llu", v17, 0xCu);
      }

      v76 = (v0 + 3482);
      v77 = (v0 + 3417);
      v75 = (v0 + 3401);
      v78 = (v0 + 3369);
      v79 = (v0 + 3513);
      sub_10006DEA4();
      v18 = swift_allocError();
      *v19 = 7;
      swift_willThrow();
      sub_10000DAF8(v0 + 2960, &qword_10023A7E0, &qword_1001B5850);
      *(v0 + 3304) = v18;
      v20 = *(v0 + 3152);
      v21 = *(v0 + 3144);
      v22 = *(v0 + 3136);
      v23 = *(v0 + 3128);
      v24 = *(v0 + 3120);
      v25 = *(v0 + 3112);
      v80 = *(v0 + 3104);
      swift_errorRetain();
      v26 = sub_1000C7C10(v18);
      v73 = v27;
      v74 = v26;
      v71 = v29;
      v72 = v28;
      static Date.now.getter();
      (*(v24 + 104))(v23, enum case for Calendar.Component.hour(_:), v25);
      v30 = sub_100025808(v20, v23);
      v32 = v31;
      (*(v24 + 8))(v23, v25);
      (*(v21 + 8))(v20, v22);
      if (v32)
      {
        v33 = 0;
      }

      else
      {
        v33 = v30;
      }

      v34 = [objc_opt_self() buildVersion];
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      *(v0 + 3576) = 1;
      *(v0 + 3488) = 1;
      *(v0 + 3456) = 1;
      *(v0 + 3440) = 1;
      *(v0 + 3416) = 1;
      *(v0 + 464) = 771;
      *(v0 + 466) = *(v0 + 3476);
      *(v0 + 470) = *(v0 + 3480);
      *(v0 + 472) = v74;
      *(v0 + 480) = v73;
      *(v0 + 488) = v72;
      *(v0 + 496) = v71;
      *(v0 + 504) = 0u;
      *(v0 + 520) = v33;
      *(v0 + 528) = v35;
      *(v0 + 536) = v37;
      *(v0 + 544) = 16908800;
      *(v0 + 548) = 514;
      *(v0 + 552) = 0;
      v38 = *(v0 + 3576);
      *(v0 + 560) = v38;
      *(v0 + 561) = *v75;
      *(v0 + 564) = *(v0 + 3404);
      *(v0 + 568) = 0;
      v39 = *(v0 + 3488);
      *(v0 + 576) = v39;
      *(v0 + 577) = 3;
      *(v0 + 578) = *v76;
      *(v0 + 582) = *(v0 + 3486);
      *(v0 + 584) = 0;
      v40 = *(v0 + 3456);
      *(v0 + 592) = v40;
      v41 = *v77;
      *(v0 + 596) = *(v0 + 3420);
      *(v0 + 593) = v41;
      *(v0 + 600) = 0;
      v42 = *(v0 + 3440);
      *(v0 + 608) = v42;
      *(v0 + 609) = 770;
      *(v0 + 615) = *(v0 + 3544);
      *(v0 + 611) = *(v0 + 3540);
      *(v0 + 616) = 0;
      v43 = *(v0 + 3416);
      *(v0 + 624) = v43;
      *(v0 + 625) = *v78;
      *(v0 + 628) = *(v0 + 3372);
      *(v0 + 632) = 0u;
      *(v0 + 648) = 514;
      *(v0 + 650) = 2;
      *(v0 + 655) = *(v0 + 3517);
      *(v0 + 651) = *v79;
      *(v0 + 656) = 0u;
      *(v0 + 672) = 0u;
      *(v0 + 1808) = 771;
      *(v0 + 1814) = *(v0 + 3480);
      *(v0 + 1810) = *(v0 + 3476);
      *(v0 + 1816) = v74;
      *(v0 + 1824) = v73;
      *(v0 + 1832) = v72;
      *(v0 + 1840) = v71;
      *(v0 + 1848) = 0u;
      *(v0 + 1864) = v33;
      *(v0 + 1872) = v35;
      *(v0 + 1880) = v37;
      *(v0 + 1888) = 16908800;
      *(v0 + 1892) = 514;
      *(v0 + 1896) = 0;
      *(v0 + 1904) = v38;
      v44 = *v75;
      *(v0 + 1908) = *(v0 + 3404);
      *(v0 + 1905) = v44;
      *(v0 + 1912) = 0;
      *(v0 + 1920) = v39;
      *(v0 + 1921) = 3;
      v45 = *v76;
      *(v0 + 1926) = *(v0 + 3486);
      *(v0 + 1922) = v45;
      *(v0 + 1928) = 0;
      *(v0 + 1936) = v40;
      v46 = *v77;
      *(v0 + 1940) = *(v0 + 3420);
      *(v0 + 1937) = v46;
      *(v0 + 1944) = 0;
      *(v0 + 1952) = v42;
      *(v0 + 1953) = 770;
      v47 = *(v0 + 3540);
      *(v0 + 1959) = *(v0 + 3544);
      *(v0 + 1955) = v47;
      *(v0 + 1960) = 0;
      *(v0 + 1968) = v43;
      v48 = *v78;
      *(v0 + 1972) = *(v0 + 3372);
      *(v0 + 1969) = v48;
      *(v0 + 1976) = 0u;
      *(v0 + 1992) = 514;
      *(v0 + 1994) = 2;
      v49 = *v79;
      *(v0 + 1999) = *(v0 + 3517);
      *(v0 + 1995) = v49;
      *(v0 + 2016) = 0u;
      *(v0 + 2000) = 0u;
      sub_100010568(v0 + 464, v0 + 1584);
      sub_10003AE8C(v0 + 1808);
      sub_10000DA7C((v80 + 184), *(v80 + 208));
      v50 = type metadata accessor for SnoutManager(0);
      v51 = swift_task_alloc();
      *(v0 + 3312) = v51;
      *v51 = v0;
      v51[1] = sub_1000696D0;
      v52 = *(v0 + 3088);

      return (sub_10016E27C)(v0 + 464, v52, 0, 0, v50, &off_100223858);
    }

    else
    {
      v64 = *(v0 + 3104);
      v65 = *(v0 + 3088);
      v67 = *v64;
      v66 = v64[1];
      v68 = v64[2];
      v69 = swift_allocObject();
      *(v0 + 3248) = v69;
      *(v69 + 16) = v65;
      v70 = swift_task_alloc();
      *(v0 + 3256) = v70;
      *v70 = v0;
      v70[1] = sub_100067F34;

      return sub_1001107D4(v0 + 2704, sub_10006DE8C, v69, v67, v66, v68);
    }
  }
}

uint64_t sub_10006A570()
{
  v1 = *v0;
  v2 = *v0;

  sub_10003AE8C(v1 + 2032);
  v3 = swift_task_alloc();
  *(v1 + 3352) = v3;
  *v3 = v2;
  v3[1] = sub_10006A700;
  v4 = *(v1 + 3088);

  return sub_10006D948(v1 + 3040, v4);
}

uint64_t sub_10006A700()
{
  *(*v1 + 3360) = v0;

  if (v0)
  {
    v2 = sub_10006B97C;
  }

  else
  {
    v2 = sub_10006A840;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10006A840()
{
  v1 = (v0 + 3457);
  v31 = (v0 + 3518);
  v32 = (v0 + 3449);
  v33 = (v0 + 3489);
  v34 = (v0 + 3441);
  v35 = (v0 + 3545);

  (*(*(v0 + 3176) + 8))(*(v0 + 3184), *(v0 + 3168));
  sub_10000DB58((v0 + 3040));
  v2 = *(v0 + 3152);
  v3 = *(v0 + 3144);
  v4 = *(v0 + 3136);
  v5 = *(v0 + 3128);
  v6 = *(v0 + 3120);
  v7 = *(v0 + 3112);
  v36 = *(v0 + 3104);
  static Date.now.getter();
  (*(v6 + 104))(v5, enum case for Calendar.Component.hour(_:), v7);
  v8 = sub_100025808(v2, v5);
  v10 = v9;
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = v8;
  }

  v12 = [objc_opt_self() buildVersion];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  *(v0 + 3600) = 1;
  *(v0 + 3560) = 1;
  *(v0 + 3400) = 1;
  *(v0 + 3368) = 1;
  *(v0 + 3384) = 1;
  *(v0 + 688) = 1795;
  *(v0 + 690) = *(v0 + 3524);
  *(v0 + 694) = *(v0 + 3528);
  *(v0 + 696) = 0u;
  *(v0 + 712) = 0u;
  *(v0 + 728) = 0u;
  *(v0 + 744) = v11;
  *(v0 + 752) = v13;
  *(v0 + 760) = v15;
  *(v0 + 768) = 16908288;
  *(v0 + 772) = 513;
  *(v0 + 776) = 0;
  *(v0 + 784) = 1;
  *(v0 + 785) = *v1;
  *(v0 + 788) = *(v0 + 3460);
  *(v0 + 792) = 0;
  v16 = *(v0 + 3560);
  *(v0 + 800) = v16;
  *(v0 + 801) = 3;
  *(v0 + 802) = *v31;
  *(v0 + 806) = *(v0 + 3522);
  *(v0 + 808) = 0;
  v17 = *(v0 + 3400);
  *(v0 + 816) = v17;
  v18 = *v32;
  *(v0 + 820) = *(v0 + 3452);
  *(v0 + 817) = v18;
  *(v0 + 824) = 0;
  v19 = *(v0 + 3368);
  *(v0 + 832) = v19;
  *(v0 + 833) = 770;
  *(v0 + 839) = *(v0 + 3493);
  *(v0 + 835) = *v33;
  *(v0 + 840) = 0;
  v20 = *(v0 + 3384);
  *(v0 + 848) = v20;
  *(v0 + 849) = *v34;
  *(v0 + 852) = *(v0 + 3444);
  *(v0 + 856) = 0u;
  *(v0 + 872) = 514;
  *(v0 + 874) = 2;
  *(v0 + 879) = *(v0 + 3549);
  *(v0 + 875) = *v35;
  *(v0 + 880) = 0u;
  *(v0 + 896) = 0u;
  *(v0 + 1360) = 1795;
  *(v0 + 1366) = *(v0 + 3528);
  *(v0 + 1362) = *(v0 + 3524);
  *(v0 + 1368) = 0u;
  *(v0 + 1384) = 0u;
  *(v0 + 1400) = 0u;
  *(v0 + 1416) = v11;
  *(v0 + 1424) = v13;
  *(v0 + 1432) = v15;
  *(v0 + 1440) = 16908288;
  *(v0 + 1444) = 513;
  *(v0 + 1448) = 0;
  *(v0 + 1456) = 1;
  v21 = *v1;
  *(v0 + 1460) = *(v0 + 3460);
  *(v0 + 1457) = v21;
  *(v0 + 1464) = 0;
  *(v0 + 1472) = v16;
  *(v0 + 1473) = 3;
  v22 = *v31;
  *(v0 + 1478) = *(v0 + 3522);
  *(v0 + 1474) = v22;
  *(v0 + 1480) = 0;
  *(v0 + 1488) = v17;
  v23 = *v32;
  *(v0 + 1492) = *(v0 + 3452);
  *(v0 + 1489) = v23;
  *(v0 + 1496) = 0;
  *(v0 + 1504) = v19;
  *(v0 + 1505) = 770;
  v24 = *v33;
  *(v0 + 1511) = *(v0 + 3493);
  *(v0 + 1507) = v24;
  *(v0 + 1512) = 0;
  *(v0 + 1520) = v20;
  v25 = *v34;
  *(v0 + 1524) = *(v0 + 3444);
  *(v0 + 1521) = v25;
  *(v0 + 1528) = 0u;
  *(v0 + 1544) = 514;
  *(v0 + 1546) = 2;
  v26 = *v35;
  *(v0 + 1551) = *(v0 + 3549);
  *(v0 + 1547) = v26;
  *(v0 + 1568) = 0u;
  *(v0 + 1552) = 0u;
  sub_100010568(v0 + 688, v0 + 1136);
  sub_10003AE8C(v0 + 1360);
  sub_10000DA7C((v36 + 184), *(v36 + 208));
  v27 = type metadata accessor for SnoutManager(0);
  v28 = swift_task_alloc();
  *(v0 + 3296) = v28;
  *v28 = v0;
  v28[1] = sub_1000694C0;
  v29 = *(v0 + 3088);

  return (sub_10016E27C)(v0 + 688, v29, 0, 0, v27, &off_100223858);
}

uint64_t sub_10006AD54()
{
  v1 = *(v0 + 3208);
  *(v0 + 3336) = v1;
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to open universal link with error: %@. Falling back to regular app open", v4, 0xCu);
    sub_10000DAF8(v5, &qword_100239F10, &qword_1001B4FD0);
  }

  v49 = (v0 + 3535);
  v50 = (v0 + 3530);
  v45 = (v0 + 3425);
  v46 = (v0 + 3494);
  v7 = *(v0 + 3152);
  v8 = *(v0 + 3144);
  v47 = (v0 + 3409);
  v48 = (v0 + 3393);
  v9 = *(v0 + 3136);
  v10 = *(v0 + 3128);
  v11 = *(v0 + 3120);
  v12 = *(v0 + 3112);
  v51 = *(v0 + 3104);

  swift_errorRetain();
  v13 = sub_1000C7C10(v1);
  v43 = v14;
  v44 = v13;
  v41 = v16;
  v42 = v15;
  static Date.now.getter();
  (*(v11 + 104))(v10, enum case for Calendar.Component.hour(_:), v12);
  v17 = sub_100025808(v7, v10);
  v19 = v18;
  (*(v11 + 8))(v10, v12);
  (*(v8 + 8))(v7, v9);
  if (v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = v17;
  }

  v21 = [objc_opt_self() buildVersion];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  *(v0 + 3432) = 1;
  *(v0 + 3448) = 1;
  *(v0 + 3464) = 1;
  *(v0 + 3512) = 1;
  *(v0 + 3568) = 1;
  *(v0 + 2032) = 771;
  *(v0 + 2034) = *(v0 + 3500);
  *(v0 + 2038) = *(v0 + 3504);
  *(v0 + 2040) = v44;
  *(v0 + 2048) = v43;
  *(v0 + 2056) = v42;
  *(v0 + 2064) = v41;
  *(v0 + 2072) = 0u;
  *(v0 + 2088) = v20;
  *(v0 + 2096) = v22;
  *(v0 + 2104) = v24;
  *(v0 + 2112) = 16908288;
  *(v0 + 2116) = 512;
  *(v0 + 2120) = 0;
  v25 = *(v0 + 3432);
  *(v0 + 2128) = v25;
  *(v0 + 2129) = *v45;
  *(v0 + 2132) = *(v0 + 3428);
  *(v0 + 2136) = 0;
  v26 = *(v0 + 3448);
  *(v0 + 2144) = v26;
  *(v0 + 2145) = 3;
  *(v0 + 2146) = *v46;
  *(v0 + 2150) = *(v0 + 3498);
  *(v0 + 2152) = 0;
  v27 = *(v0 + 3464);
  *(v0 + 2160) = v27;
  v28 = *v47;
  *(v0 + 2164) = *(v0 + 3412);
  *(v0 + 2161) = v28;
  *(v0 + 2168) = 0;
  v29 = *(v0 + 3512);
  *(v0 + 2176) = v29;
  *(v0 + 2177) = 770;
  *(v0 + 2183) = *(v0 + 3539);
  *(v0 + 2179) = *v49;
  *(v0 + 2184) = 0;
  v30 = *(v0 + 3568);
  *(v0 + 2192) = v30;
  *(v0 + 2193) = *v48;
  *(v0 + 2196) = *(v0 + 3396);
  *(v0 + 2200) = 0u;
  *(v0 + 2216) = 514;
  *(v0 + 2218) = 2;
  *(v0 + 2223) = *(v0 + 3534);
  *(v0 + 2219) = *v50;
  *(v0 + 2224) = 0u;
  *(v0 + 2240) = 0u;
  *(v0 + 912) = 771;
  *(v0 + 918) = *(v0 + 3504);
  *(v0 + 914) = *(v0 + 3500);
  *(v0 + 920) = v44;
  *(v0 + 928) = v43;
  *(v0 + 936) = v42;
  *(v0 + 944) = v41;
  *(v0 + 952) = 0u;
  *(v0 + 968) = v20;
  *(v0 + 976) = v22;
  *(v0 + 984) = v24;
  *(v0 + 992) = 16908288;
  *(v0 + 996) = 512;
  *(v0 + 1000) = 0;
  *(v0 + 1008) = v25;
  v31 = *v45;
  *(v0 + 1012) = *(v0 + 3428);
  *(v0 + 1009) = v31;
  *(v0 + 1016) = 0;
  *(v0 + 1024) = v26;
  *(v0 + 1025) = 3;
  v32 = *v46;
  *(v0 + 1030) = *(v0 + 3498);
  *(v0 + 1026) = v32;
  *(v0 + 1032) = 0;
  *(v0 + 1040) = v27;
  v33 = *v47;
  *(v0 + 1044) = *(v0 + 3412);
  *(v0 + 1041) = v33;
  *(v0 + 1048) = 0;
  *(v0 + 1056) = v29;
  *(v0 + 1057) = 770;
  v34 = *v49;
  *(v0 + 1063) = *(v0 + 3539);
  *(v0 + 1059) = v34;
  *(v0 + 1064) = 0;
  *(v0 + 1072) = v30;
  v35 = *v48;
  *(v0 + 1076) = *(v0 + 3396);
  *(v0 + 1073) = v35;
  *(v0 + 1080) = 0u;
  *(v0 + 1096) = 514;
  *(v0 + 1098) = 2;
  v36 = *v50;
  *(v0 + 1103) = *(v0 + 3534);
  *(v0 + 1099) = v36;
  *(v0 + 1120) = 0u;
  *(v0 + 1104) = 0u;
  sub_100010568(v0 + 2032, v0 + 16);
  sub_10003AE8C(v0 + 912);
  sub_10000DA7C((v51 + 184), *(v51 + 208));
  v37 = type metadata accessor for SnoutManager(0);
  v38 = swift_task_alloc();
  *(v0 + 3344) = v38;
  *v38 = v0;
  v38[1] = sub_10006A570;
  v39 = *(v0 + 3088);

  return (sub_10016E27C)(v0 + 2032, v39, 0, 0, v37, &off_100223858);
}

uint64_t sub_10006B368()
{
  v1 = *(v0 + 3224);
  *(v0 + 3336) = v1;
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to open universal link with error: %@. Falling back to regular app open", v4, 0xCu);
    sub_10000DAF8(v5, &qword_100239F10, &qword_1001B4FD0);
  }

  v49 = (v0 + 3535);
  v50 = (v0 + 3530);
  v45 = (v0 + 3425);
  v46 = (v0 + 3494);
  v7 = *(v0 + 3152);
  v8 = *(v0 + 3144);
  v47 = (v0 + 3409);
  v48 = (v0 + 3393);
  v9 = *(v0 + 3136);
  v10 = *(v0 + 3128);
  v11 = *(v0 + 3120);
  v12 = *(v0 + 3112);
  v51 = *(v0 + 3104);

  swift_errorRetain();
  v13 = sub_1000C7C10(v1);
  v43 = v14;
  v44 = v13;
  v41 = v16;
  v42 = v15;
  static Date.now.getter();
  (*(v11 + 104))(v10, enum case for Calendar.Component.hour(_:), v12);
  v17 = sub_100025808(v7, v10);
  v19 = v18;
  (*(v11 + 8))(v10, v12);
  (*(v8 + 8))(v7, v9);
  if (v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = v17;
  }

  v21 = [objc_opt_self() buildVersion];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  *(v0 + 3432) = 1;
  *(v0 + 3448) = 1;
  *(v0 + 3464) = 1;
  *(v0 + 3512) = 1;
  *(v0 + 3568) = 1;
  *(v0 + 2032) = 771;
  *(v0 + 2034) = *(v0 + 3500);
  *(v0 + 2038) = *(v0 + 3504);
  *(v0 + 2040) = v44;
  *(v0 + 2048) = v43;
  *(v0 + 2056) = v42;
  *(v0 + 2064) = v41;
  *(v0 + 2072) = 0u;
  *(v0 + 2088) = v20;
  *(v0 + 2096) = v22;
  *(v0 + 2104) = v24;
  *(v0 + 2112) = 16908288;
  *(v0 + 2116) = 512;
  *(v0 + 2120) = 0;
  v25 = *(v0 + 3432);
  *(v0 + 2128) = v25;
  *(v0 + 2129) = *v45;
  *(v0 + 2132) = *(v0 + 3428);
  *(v0 + 2136) = 0;
  v26 = *(v0 + 3448);
  *(v0 + 2144) = v26;
  *(v0 + 2145) = 3;
  *(v0 + 2146) = *v46;
  *(v0 + 2150) = *(v0 + 3498);
  *(v0 + 2152) = 0;
  v27 = *(v0 + 3464);
  *(v0 + 2160) = v27;
  v28 = *v47;
  *(v0 + 2164) = *(v0 + 3412);
  *(v0 + 2161) = v28;
  *(v0 + 2168) = 0;
  v29 = *(v0 + 3512);
  *(v0 + 2176) = v29;
  *(v0 + 2177) = 770;
  *(v0 + 2183) = *(v0 + 3539);
  *(v0 + 2179) = *v49;
  *(v0 + 2184) = 0;
  v30 = *(v0 + 3568);
  *(v0 + 2192) = v30;
  *(v0 + 2193) = *v48;
  *(v0 + 2196) = *(v0 + 3396);
  *(v0 + 2200) = 0u;
  *(v0 + 2216) = 514;
  *(v0 + 2218) = 2;
  *(v0 + 2223) = *(v0 + 3534);
  *(v0 + 2219) = *v50;
  *(v0 + 2224) = 0u;
  *(v0 + 2240) = 0u;
  *(v0 + 912) = 771;
  *(v0 + 918) = *(v0 + 3504);
  *(v0 + 914) = *(v0 + 3500);
  *(v0 + 920) = v44;
  *(v0 + 928) = v43;
  *(v0 + 936) = v42;
  *(v0 + 944) = v41;
  *(v0 + 952) = 0u;
  *(v0 + 968) = v20;
  *(v0 + 976) = v22;
  *(v0 + 984) = v24;
  *(v0 + 992) = 16908288;
  *(v0 + 996) = 512;
  *(v0 + 1000) = 0;
  *(v0 + 1008) = v25;
  v31 = *v45;
  *(v0 + 1012) = *(v0 + 3428);
  *(v0 + 1009) = v31;
  *(v0 + 1016) = 0;
  *(v0 + 1024) = v26;
  *(v0 + 1025) = 3;
  v32 = *v46;
  *(v0 + 1030) = *(v0 + 3498);
  *(v0 + 1026) = v32;
  *(v0 + 1032) = 0;
  *(v0 + 1040) = v27;
  v33 = *v47;
  *(v0 + 1044) = *(v0 + 3412);
  *(v0 + 1041) = v33;
  *(v0 + 1048) = 0;
  *(v0 + 1056) = v29;
  *(v0 + 1057) = 770;
  v34 = *v49;
  *(v0 + 1063) = *(v0 + 3539);
  *(v0 + 1059) = v34;
  *(v0 + 1064) = 0;
  *(v0 + 1072) = v30;
  v35 = *v48;
  *(v0 + 1076) = *(v0 + 3396);
  *(v0 + 1073) = v35;
  *(v0 + 1080) = 0u;
  *(v0 + 1096) = 514;
  *(v0 + 1098) = 2;
  v36 = *v50;
  *(v0 + 1103) = *(v0 + 3534);
  *(v0 + 1099) = v36;
  *(v0 + 1120) = 0u;
  *(v0 + 1104) = 0u;
  sub_100010568(v0 + 2032, v0 + 16);
  sub_10003AE8C(v0 + 912);
  sub_10000DA7C((v51 + 184), *(v51 + 208));
  v37 = type metadata accessor for SnoutManager(0);
  v38 = swift_task_alloc();
  *(v0 + 3344) = v38;
  *v38 = v0;
  v38[1] = sub_10006A570;
  v39 = *(v0 + 3088);

  return (sub_10016E27C)(v0 + 2032, v39, 0, 0, v37, &off_100223858);
}

uint64_t sub_10006B97C()
{
  v44 = (v0 + 3417);
  v45 = (v0 + 3369);
  v42 = (v0 + 3401);
  v43 = (v0 + 3482);
  v46 = (v0 + 3513);
  v1 = *(v0 + 3184);
  v2 = *(v0 + 3176);
  v3 = *(v0 + 3168);

  (*(v2 + 8))(v1, v3);
  sub_10000DB58((v0 + 3040));
  sub_10000DAF8(v0 + 2960, &qword_10023A7E0, &qword_1001B5850);
  v4 = *(v0 + 3360);
  *(v0 + 3304) = v4;
  v5 = *(v0 + 3152);
  v6 = *(v0 + 3144);
  v7 = *(v0 + 3136);
  v8 = *(v0 + 3128);
  v9 = *(v0 + 3120);
  v10 = *(v0 + 3112);
  v47 = *(v0 + 3104);
  swift_errorRetain();
  v11 = sub_1000C7C10(v4);
  v40 = v12;
  v41 = v11;
  v38 = v14;
  v39 = v13;
  static Date.now.getter();
  (*(v9 + 104))(v8, enum case for Calendar.Component.hour(_:), v10);
  v15 = sub_100025808(v5, v8);
  LOBYTE(v3) = v16;
  (*(v9 + 8))(v8, v10);
  (*(v6 + 8))(v5, v7);
  if (v3)
  {
    v17 = 0;
  }

  else
  {
    v17 = v15;
  }

  v18 = [objc_opt_self() buildVersion];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *(v0 + 3576) = 1;
  *(v0 + 3488) = 1;
  *(v0 + 3456) = 1;
  *(v0 + 3440) = 1;
  *(v0 + 3416) = 1;
  *(v0 + 464) = 771;
  *(v0 + 466) = *(v0 + 3476);
  *(v0 + 470) = *(v0 + 3480);
  *(v0 + 472) = v41;
  *(v0 + 480) = v40;
  *(v0 + 488) = v39;
  *(v0 + 496) = v38;
  *(v0 + 504) = 0u;
  *(v0 + 520) = v17;
  *(v0 + 528) = v19;
  *(v0 + 536) = v21;
  *(v0 + 544) = 16908288;
  *(v0 + 548) = 513;
  *(v0 + 552) = 0;
  v22 = *(v0 + 3576);
  *(v0 + 560) = v22;
  *(v0 + 561) = *v42;
  *(v0 + 564) = *(v0 + 3404);
  *(v0 + 568) = 0;
  v23 = *(v0 + 3488);
  *(v0 + 576) = v23;
  *(v0 + 577) = 3;
  *(v0 + 578) = *v43;
  *(v0 + 582) = *(v0 + 3486);
  *(v0 + 584) = 0;
  v24 = *(v0 + 3456);
  *(v0 + 592) = v24;
  v25 = *v44;
  *(v0 + 596) = *(v0 + 3420);
  *(v0 + 593) = v25;
  *(v0 + 600) = 0;
  v26 = *(v0 + 3440);
  *(v0 + 608) = v26;
  *(v0 + 609) = 770;
  *(v0 + 615) = *(v0 + 3544);
  *(v0 + 611) = *(v0 + 3540);
  *(v0 + 616) = 0;
  v27 = *(v0 + 3416);
  *(v0 + 624) = v27;
  *(v0 + 625) = *v45;
  *(v0 + 628) = *(v0 + 3372);
  *(v0 + 632) = 0u;
  *(v0 + 648) = 514;
  *(v0 + 650) = 2;
  *(v0 + 655) = *(v0 + 3517);
  *(v0 + 651) = *v46;
  *(v0 + 656) = 0u;
  *(v0 + 672) = 0u;
  *(v0 + 1808) = 771;
  *(v0 + 1814) = *(v0 + 3480);
  *(v0 + 1810) = *(v0 + 3476);
  *(v0 + 1816) = v41;
  *(v0 + 1824) = v40;
  *(v0 + 1832) = v39;
  *(v0 + 1840) = v38;
  *(v0 + 1848) = 0u;
  *(v0 + 1864) = v17;
  *(v0 + 1872) = v19;
  *(v0 + 1880) = v21;
  *(v0 + 1888) = 16908288;
  *(v0 + 1892) = 513;
  *(v0 + 1896) = 0;
  *(v0 + 1904) = v22;
  v28 = *v42;
  *(v0 + 1908) = *(v0 + 3404);
  *(v0 + 1905) = v28;
  *(v0 + 1912) = 0;
  *(v0 + 1920) = v23;
  *(v0 + 1921) = 3;
  v29 = *v43;
  *(v0 + 1926) = *(v0 + 3486);
  *(v0 + 1922) = v29;
  *(v0 + 1928) = 0;
  *(v0 + 1936) = v24;
  v30 = *v44;
  *(v0 + 1940) = *(v0 + 3420);
  *(v0 + 1937) = v30;
  *(v0 + 1944) = 0;
  *(v0 + 1952) = v26;
  *(v0 + 1953) = 770;
  v31 = *(v0 + 3540);
  *(v0 + 1959) = *(v0 + 3544);
  *(v0 + 1955) = v31;
  *(v0 + 1960) = 0;
  *(v0 + 1968) = v27;
  v32 = *v45;
  *(v0 + 1972) = *(v0 + 3372);
  *(v0 + 1969) = v32;
  *(v0 + 1976) = 0u;
  *(v0 + 1992) = 514;
  *(v0 + 1994) = 2;
  v33 = *v46;
  *(v0 + 1999) = *(v0 + 3517);
  *(v0 + 1995) = v33;
  *(v0 + 2016) = 0u;
  *(v0 + 2000) = 0u;
  sub_100010568(v0 + 464, v0 + 1584);
  sub_10003AE8C(v0 + 1808);
  sub_10000DA7C((v47 + 184), *(v47 + 208));
  v34 = type metadata accessor for SnoutManager(0);
  v35 = swift_task_alloc();
  *(v0 + 3312) = v35;
  *v35 = v0;
  v35[1] = sub_1000696D0;
  v36 = *(v0 + 3088);

  return (sub_10016E27C)(v0 + 464, v36, 0, 0, v34, &off_100223858);
}

uint64_t sub_10006BEF0()
{
  v43 = (v0 + 3369);
  v42 = (v0 + 3417);
  v40 = (v0 + 3401);
  v41 = (v0 + 3482);
  v44 = (v0 + 3513);
  sub_10000DB58((v0 + 3040));
  sub_10000DAF8(v0 + 2960, &qword_10023A7E0, &qword_1001B5850);
  v1 = *(v0 + 3240);
  *(v0 + 3304) = v1;
  v2 = *(v0 + 3152);
  v3 = *(v0 + 3144);
  v4 = *(v0 + 3136);
  v5 = *(v0 + 3128);
  v6 = *(v0 + 3120);
  v7 = *(v0 + 3112);
  v45 = *(v0 + 3104);
  swift_errorRetain();
  v8 = sub_1000C7C10(v1);
  v38 = v9;
  v39 = v8;
  v36 = v11;
  v37 = v10;
  static Date.now.getter();
  (*(v6 + 104))(v5, enum case for Calendar.Component.hour(_:), v7);
  v12 = sub_100025808(v2, v5);
  v14 = v13;
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v12;
  }

  v16 = [objc_opt_self() buildVersion];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  *(v0 + 3576) = 1;
  *(v0 + 3488) = 1;
  *(v0 + 3456) = 1;
  *(v0 + 3440) = 1;
  *(v0 + 3416) = 1;
  *(v0 + 464) = 771;
  *(v0 + 466) = *(v0 + 3476);
  *(v0 + 470) = *(v0 + 3480);
  *(v0 + 472) = v39;
  *(v0 + 480) = v38;
  *(v0 + 488) = v37;
  *(v0 + 496) = v36;
  *(v0 + 504) = 0u;
  *(v0 + 520) = v15;
  *(v0 + 528) = v17;
  *(v0 + 536) = v19;
  *(v0 + 544) = 16908288;
  *(v0 + 548) = 513;
  *(v0 + 552) = 0;
  v20 = *(v0 + 3576);
  *(v0 + 560) = v20;
  *(v0 + 561) = *v40;
  *(v0 + 564) = *(v0 + 3404);
  *(v0 + 568) = 0;
  v21 = *(v0 + 3488);
  *(v0 + 576) = v21;
  *(v0 + 577) = 3;
  *(v0 + 578) = *v41;
  *(v0 + 582) = *(v0 + 3486);
  *(v0 + 584) = 0;
  v22 = *(v0 + 3456);
  *(v0 + 592) = v22;
  v23 = *v42;
  *(v0 + 596) = *(v0 + 3420);
  *(v0 + 593) = v23;
  *(v0 + 600) = 0;
  v24 = *(v0 + 3440);
  *(v0 + 608) = v24;
  *(v0 + 609) = 770;
  *(v0 + 615) = *(v0 + 3544);
  *(v0 + 611) = *(v0 + 3540);
  *(v0 + 616) = 0;
  v25 = *(v0 + 3416);
  *(v0 + 624) = v25;
  *(v0 + 625) = *v43;
  *(v0 + 628) = *(v0 + 3372);
  *(v0 + 632) = 0u;
  *(v0 + 648) = 514;
  *(v0 + 650) = 2;
  *(v0 + 655) = *(v0 + 3517);
  *(v0 + 651) = *v44;
  *(v0 + 656) = 0u;
  *(v0 + 672) = 0u;
  *(v0 + 1808) = 771;
  *(v0 + 1814) = *(v0 + 3480);
  *(v0 + 1810) = *(v0 + 3476);
  *(v0 + 1816) = v39;
  *(v0 + 1824) = v38;
  *(v0 + 1832) = v37;
  *(v0 + 1840) = v36;
  *(v0 + 1848) = 0u;
  *(v0 + 1864) = v15;
  *(v0 + 1872) = v17;
  *(v0 + 1880) = v19;
  *(v0 + 1888) = 16908288;
  *(v0 + 1892) = 513;
  *(v0 + 1896) = 0;
  *(v0 + 1904) = v20;
  v26 = *v40;
  *(v0 + 1908) = *(v0 + 3404);
  *(v0 + 1905) = v26;
  *(v0 + 1912) = 0;
  *(v0 + 1920) = v21;
  *(v0 + 1921) = 3;
  v27 = *v41;
  *(v0 + 1926) = *(v0 + 3486);
  *(v0 + 1922) = v27;
  *(v0 + 1928) = 0;
  *(v0 + 1936) = v22;
  v28 = *v42;
  *(v0 + 1940) = *(v0 + 3420);
  *(v0 + 1937) = v28;
  *(v0 + 1944) = 0;
  *(v0 + 1952) = v24;
  *(v0 + 1953) = 770;
  v29 = *(v0 + 3540);
  *(v0 + 1959) = *(v0 + 3544);
  *(v0 + 1955) = v29;
  *(v0 + 1960) = 0;
  *(v0 + 1968) = v25;
  v30 = *v43;
  *(v0 + 1972) = *(v0 + 3372);
  *(v0 + 1969) = v30;
  *(v0 + 1976) = 0u;
  *(v0 + 1992) = 514;
  *(v0 + 1994) = 2;
  v31 = *v44;
  *(v0 + 1999) = *(v0 + 3517);
  *(v0 + 1995) = v31;
  *(v0 + 2016) = 0u;
  *(v0 + 2000) = 0u;
  sub_100010568(v0 + 464, v0 + 1584);
  sub_10003AE8C(v0 + 1808);
  sub_10000DA7C((v45 + 184), *(v45 + 208));
  v32 = type metadata accessor for SnoutManager(0);
  v33 = swift_task_alloc();
  *(v0 + 3312) = v33;
  *v33 = v0;
  v33[1] = sub_1000696D0;
  v34 = *(v0 + 3088);

  return (sub_10016E27C)(v0 + 464, v34, 0, 0, v32, &off_100223858);
}

uint64_t sub_10006C43C()
{
  v43 = (v0 + 3369);
  v42 = (v0 + 3417);
  v40 = (v0 + 3401);
  v41 = (v0 + 3482);
  v44 = (v0 + 3513);
  sub_10000DAF8(v0 + 2960, &qword_10023A7E0, &qword_1001B5850);
  v1 = *(v0 + 3264);
  *(v0 + 3304) = v1;
  v2 = *(v0 + 3152);
  v3 = *(v0 + 3144);
  v4 = *(v0 + 3136);
  v5 = *(v0 + 3128);
  v6 = *(v0 + 3120);
  v7 = *(v0 + 3112);
  v45 = *(v0 + 3104);
  swift_errorRetain();
  v8 = sub_1000C7C10(v1);
  v38 = v9;
  v39 = v8;
  v36 = v11;
  v37 = v10;
  static Date.now.getter();
  (*(v6 + 104))(v5, enum case for Calendar.Component.hour(_:), v7);
  v12 = sub_100025808(v2, v5);
  v14 = v13;
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v12;
  }

  v16 = [objc_opt_self() buildVersion];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  *(v0 + 3576) = 1;
  *(v0 + 3488) = 1;
  *(v0 + 3456) = 1;
  *(v0 + 3440) = 1;
  *(v0 + 3416) = 1;
  *(v0 + 464) = 771;
  *(v0 + 466) = *(v0 + 3476);
  *(v0 + 470) = *(v0 + 3480);
  *(v0 + 472) = v39;
  *(v0 + 480) = v38;
  *(v0 + 488) = v37;
  *(v0 + 496) = v36;
  *(v0 + 504) = 0u;
  *(v0 + 520) = v15;
  *(v0 + 528) = v17;
  *(v0 + 536) = v19;
  *(v0 + 544) = 16908800;
  *(v0 + 548) = 514;
  *(v0 + 552) = 0;
  v20 = *(v0 + 3576);
  *(v0 + 560) = v20;
  *(v0 + 561) = *v40;
  *(v0 + 564) = *(v0 + 3404);
  *(v0 + 568) = 0;
  v21 = *(v0 + 3488);
  *(v0 + 576) = v21;
  *(v0 + 577) = 3;
  *(v0 + 578) = *v41;
  *(v0 + 582) = *(v0 + 3486);
  *(v0 + 584) = 0;
  v22 = *(v0 + 3456);
  *(v0 + 592) = v22;
  v23 = *v42;
  *(v0 + 596) = *(v0 + 3420);
  *(v0 + 593) = v23;
  *(v0 + 600) = 0;
  v24 = *(v0 + 3440);
  *(v0 + 608) = v24;
  *(v0 + 609) = 770;
  *(v0 + 615) = *(v0 + 3544);
  *(v0 + 611) = *(v0 + 3540);
  *(v0 + 616) = 0;
  v25 = *(v0 + 3416);
  *(v0 + 624) = v25;
  *(v0 + 625) = *v43;
  *(v0 + 628) = *(v0 + 3372);
  *(v0 + 632) = 0u;
  *(v0 + 648) = 514;
  *(v0 + 650) = 2;
  *(v0 + 655) = *(v0 + 3517);
  *(v0 + 651) = *v44;
  *(v0 + 656) = 0u;
  *(v0 + 672) = 0u;
  *(v0 + 1808) = 771;
  *(v0 + 1814) = *(v0 + 3480);
  *(v0 + 1810) = *(v0 + 3476);
  *(v0 + 1816) = v39;
  *(v0 + 1824) = v38;
  *(v0 + 1832) = v37;
  *(v0 + 1840) = v36;
  *(v0 + 1848) = 0u;
  *(v0 + 1864) = v15;
  *(v0 + 1872) = v17;
  *(v0 + 1880) = v19;
  *(v0 + 1888) = 16908800;
  *(v0 + 1892) = 514;
  *(v0 + 1896) = 0;
  *(v0 + 1904) = v20;
  v26 = *v40;
  *(v0 + 1908) = *(v0 + 3404);
  *(v0 + 1905) = v26;
  *(v0 + 1912) = 0;
  *(v0 + 1920) = v21;
  *(v0 + 1921) = 3;
  v27 = *v41;
  *(v0 + 1926) = *(v0 + 3486);
  *(v0 + 1922) = v27;
  *(v0 + 1928) = 0;
  *(v0 + 1936) = v22;
  v28 = *v42;
  *(v0 + 1940) = *(v0 + 3420);
  *(v0 + 1937) = v28;
  *(v0 + 1944) = 0;
  *(v0 + 1952) = v24;
  *(v0 + 1953) = 770;
  v29 = *(v0 + 3540);
  *(v0 + 1959) = *(v0 + 3544);
  *(v0 + 1955) = v29;
  *(v0 + 1960) = 0;
  *(v0 + 1968) = v25;
  v30 = *v43;
  *(v0 + 1972) = *(v0 + 3372);
  *(v0 + 1969) = v30;
  *(v0 + 1976) = 0u;
  *(v0 + 1992) = 514;
  *(v0 + 1994) = 2;
  v31 = *v44;
  *(v0 + 1999) = *(v0 + 3517);
  *(v0 + 1995) = v31;
  *(v0 + 2016) = 0u;
  *(v0 + 2000) = 0u;
  sub_100010568(v0 + 464, v0 + 1584);
  sub_10003AE8C(v0 + 1808);
  sub_10000DA7C((v45 + 184), *(v45 + 208));
  v32 = type metadata accessor for SnoutManager(0);
  v33 = swift_task_alloc();
  *(v0 + 3312) = v33;
  *v33 = v0;
  v33[1] = sub_1000696D0;
  v34 = *(v0 + 3088);

  return (sub_10016E27C)(v0 + 464, v34, 0, 0, v32, &off_100223858);
}

void sub_10006C97C(void *a1, uint64_t *a2)
{
  v4 = [a1 connection];
  v5 = sub_1000ED7C4(a2, v4);

  if (!v2)
  {
  }
}

uint64_t sub_10006C9E8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 528) = a4;
  *(v4 + 456) = a2;
  *(v4 + 464) = a3;
  v6 = swift_task_alloc();
  *(v4 + 472) = v6;
  *v6 = v4;
  v6[1] = sub_10006CA98;

  return sub_1000E5C08(a1);
}

uint64_t sub_10006CA98(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 480) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_10006CBCC, 0, 0);
  }
}

uint64_t sub_10006CBCC()
{
  if (qword_100239CE8 != -1)
  {
LABEL_52:
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 488) = sub_10000DAC0(v1, qword_10023FCE8);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 480);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = *(v5 + 16);

    _os_log_impl(&_mh_execute_header, v2, v3, "Found %ld matching app links for url", v6, 0xCu);
  }

  else
  {
  }

  v7 = *(v0 + 480);
  v8 = *(v7 + 16);
  if (!v8)
  {

    sub_10006DEA4();
    swift_allocError();
    *v19 = 5;
    swift_willThrow();
    goto LABEL_47;
  }

  if (*(v0 + 528))
  {
    v9 = 0;
    v10 = v7 + 32;
    while (1)
    {
      if (v9 >= *(v7 + 16))
      {
        goto LABEL_51;
      }

      sub_10000CE28(v10, v0 + 256);
      v11 = *(v0 + 280);
      v12 = *(v0 + 288);
      sub_10000DA7C((v0 + 256), v11);
      (*(v12 + 8))(v11, v12);
      v13 = *(v0 + 320);
      v14 = *(v0 + 328);
      sub_10000DA7C((v0 + 296), v13);
      v15 = (*(v14 + 24))(v13, v14);
      if (v16)
      {
        if (v15 == *(v0 + 456) && v16 == *(v0 + 464))
        {

          sub_10000DB58((v0 + 296));
LABEL_30:

          sub_10000DA64((v0 + 256), v0 + 216);
LABEL_31:
          sub_100014B50(v0 + 216, v0 + 376, &qword_10023B320, &qword_1001B84B8);
          if (!*(v0 + 400))
          {
            sub_10000DAF8(v0 + 376, &qword_10023B320, &qword_1001B84B8);
            sub_10006DEA4();
            swift_allocError();
            *v40 = 6;
            swift_willThrow();
            v33 = v0 + 216;
            goto LABEL_37;
          }

          sub_10000DA64((v0 + 376), v0 + 336);
          v34 = *(v0 + 360);
          v35 = *(v0 + 368);
          sub_10000DA7C((v0 + 336), v34);
          (*(v35 + 8))(v34, v35);
          v36 = *(v0 + 440);
          v37 = *(v0 + 448);
          sub_10000DA7C((v0 + 416), v36);
          v38 = (*(v37 + 24))(v36, v37);
          if (v39)
          {
            if (v38 == 0xD000000000000012 && v39 == 0x80000001001CB3C0)
            {

              sub_10000DB58((v0 + 416));
LABEL_40:
              v28 = *(v0 + 360);
              v29 = *(v0 + 368);
              sub_10000DA7C((v0 + 336), v28);
              v48 = (*(v29 + 16) + **(v29 + 16));
              v30 = swift_task_alloc();
              *(v0 + 496) = v30;
              *v30 = v0;
              v31 = sub_10006D418;
              goto LABEL_41;
            }

            v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

            sub_10000DB58((v0 + 416));
            if (v41)
            {
              goto LABEL_40;
            }
          }

          else
          {
            sub_10000DB58((v0 + 416));
          }

          v43 = Logger.logObject.getter();
          v44 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v43, v44))
          {
            v45 = swift_slowAlloc();
            *v45 = 0;
            _os_log_impl(&_mh_execute_header, v43, v44, "App link bundle ID does not match target bundle ID", v45, 2u);
          }

          sub_10006DEA4();
          swift_allocError();
          *v46 = 8;
          swift_willThrow();
          sub_10000DAF8(v0 + 216, &qword_10023B320, &qword_1001B84B8);
          sub_10000DB58((v0 + 336));
LABEL_47:
          v47 = *(v0 + 8);

          return v47();
        }

        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

        sub_10000DB58((v0 + 296));
        if (v18)
        {
          goto LABEL_30;
        }
      }

      else
      {
        sub_10000DB58((v0 + 296));
      }

      ++v9;
      sub_10000DB58((v0 + 256));
      v10 += 40;
      if (v8 == v9)
      {

        *(v0 + 248) = 0;
        *(v0 + 232) = 0u;
        *(v0 + 216) = 0u;
        goto LABEL_31;
      }
    }
  }

  v20 = 0;
  v21 = v7 + 32;
  while (1)
  {
    if (v20 >= *(v7 + 16))
    {
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v22 = *(v0 + 456);
    sub_10000CE28(v21, v0 + 56);
    v23 = *(v0 + 80);
    v24 = *(v0 + 88);
    sub_10000DA7C((v0 + 56), v23);
    (*(v24 + 8))(v23, v24);
    v25 = *(v0 + 120);
    v26 = *(v0 + 128);
    sub_10000DA7C((v0 + 96), v25);
    v27 = (*(v26 + 16))(v25, v26);
    sub_10000DB58((v0 + 96));
    if (v27 == v22)
    {
      break;
    }

    ++v20;
    sub_10000DB58((v0 + 56));
    v21 += 40;
    if (v8 == v20)
    {

      *(v0 + 48) = 0;
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
      goto LABEL_25;
    }
  }

  sub_10000DA64((v0 + 56), v0 + 16);
LABEL_25:
  sub_100014B50(v0 + 16, v0 + 176, &qword_10023B320, &qword_1001B84B8);
  if (!*(v0 + 200))
  {
    sub_10000DAF8(v0 + 176, &qword_10023B320, &qword_1001B84B8);
    sub_10006DEA4();
    swift_allocError();
    *v32 = 6;
    swift_willThrow();
    v33 = v0 + 16;
LABEL_37:
    sub_10000DAF8(v33, &qword_10023B320, &qword_1001B84B8);
    goto LABEL_47;
  }

  sub_10000DA64((v0 + 176), v0 + 136);
  v28 = *(v0 + 160);
  v29 = *(v0 + 168);
  sub_10000DA7C((v0 + 136), v28);
  v48 = (*(v29 + 16) + **(v29 + 16));
  v30 = swift_task_alloc();
  *(v0 + 512) = v30;
  *v30 = v0;
  v31 = sub_10006D634;
LABEL_41:
  v30[1] = v31;

  return v48(v28, v29);
}

uint64_t sub_10006D418(char a1)
{
  v3 = *v2;
  *(v3 + 529) = a1;
  *(v3 + 504) = v1;

  if (v1)
  {
    v4 = sub_10006D850;
  }

  else
  {
    v4 = sub_10006D530;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10006D530(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 529);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Opened App Store universal link with result: %{BOOL}d", v5, 8u);
  }

  sub_10000DAF8(v1 + 216, &qword_10023B320, &qword_1001B84B8);
  sub_10000DB58((v1 + 336));
  v6 = *(v1 + 8);

  return v6();
}

uint64_t sub_10006D634(char a1)
{
  v3 = *v2;
  *(v3 + 530) = a1;
  *(v3 + 520) = v1;

  if (v1)
  {
    v4 = sub_10006D8CC;
  }

  else
  {
    v4 = sub_10006D74C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10006D74C(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 530);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Opened universal link with result: %{BOOL}d", v5, 8u);
  }

  sub_10000DAF8(v1 + 16, &qword_10023B320, &qword_1001B84B8);
  sub_10000DB58((v1 + 136));
  v6 = *(v1 + 8);

  return v6();
}

uint64_t sub_10006D850()
{
  sub_10000DAF8(v0 + 216, &qword_10023B320, &qword_1001B84B8);
  sub_10000DB58((v0 + 336));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006D8CC()
{
  sub_10000DAF8(v0 + 16, &qword_10023B320, &qword_1001B84B8);
  sub_10000DB58((v0 + 136));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006D948(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_10006D96C, 0, 0);
}

uint64_t sub_10006D96C()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  sub_10000DA7C(v1, v2);
  v4 = (*(v3 + 24))(v2, v3);
  v0[5] = v5;
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    v8 = v0[4];
    v9 = [objc_allocWithZone(_LSOpenConfiguration) init];
    v0[6] = v9;
    v10 = *sub_10000DA7C((v8 + 64), *(v8 + 88));
    v11 = swift_task_alloc();
    v0[7] = v11;
    *v11 = v0;
    v11[1] = sub_10006DBB8;

    return sub_1000E57D4(v6, v7, v9, v10);
  }

  else
  {
    if (qword_100239CE8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000DAC0(v13, qword_10023FCE8);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = v0[3];
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      *(v17 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to retrieve bundleID for itemID: %llu", v17, 0xCu);
    }

    sub_10006DEA4();
    swift_allocError();
    *v18 = 3;
    swift_willThrow();
    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_10006DBB8()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_10006DE18;
  }

  else
  {
    v2 = sub_10006DCE8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10006DCE8()
{
  if (qword_100239CE8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000DAC0(v1, qword_10023FCE8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 24);
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "App launch completed for item ID: %llu", v5, 0xCu);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10006DE18()
{
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_10006DEA4()
{
  result = qword_10023B310;
  if (!qword_10023B310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B310);
  }

  return result;
}

unint64_t sub_10006DF54()
{
  result = qword_10023B318;
  if (!qword_10023B318)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10023B318);
  }

  return result;
}

double sub_10006DFA0@<D0>(_OWORD *a1@<X8>)
{
  result = sub_100060FB4(v6);
  if (!v1)
  {
    v4 = v6[1];
    *a1 = v6[0];
    a1[1] = v4;
    result = *&v7;
    v5 = v8;
    a1[2] = v7;
    a1[3] = v5;
  }

  return result;
}

uint64_t sub_10006DFF0()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t getEnumTagSinglePayload for SnoutEvent.ResultType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SnoutEvent.ResultType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_10006E194(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t sub_10006E1D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 224))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10006E218(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 224) = 1;
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

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10006E2A0(uint64_t a1)
{
  result = sub_10006DEA4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10006E2CC()
{
  result = qword_10023B330[0];
  if (!qword_10023B330[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10023B330);
  }

  return result;
}

uint64_t sub_10006E320()
{

  return sub_1000672B0();
}

uint64_t sub_10006E3C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10006E444()
{
  v1[31] = v0;
  v1[32] = type metadata accessor for PostbackFetchTask(0);
  v1[33] = swift_task_alloc();
  v2 = type metadata accessor for URL();
  v1[34] = v2;
  v1[35] = *(v2 - 8);
  v1[36] = swift_task_alloc();
  sub_10000CDE0(&qword_10023C230, &qword_1001B4FB0);
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();

  return _swift_task_switch(sub_10006E584, 0, 0);
}

uint64_t sub_10006E584()
{
  sub_10000DA7C((v0[31] + 160), *(v0[31] + 184));
  v1 = swift_task_alloc();
  v0[40] = v1;
  *v1 = v0;
  v1[1] = sub_10006E62C;
  v2 = v0[38];

  return sub_100157BD8(v2, 11);
}

uint64_t sub_10006E62C()
{

  return _swift_task_switch(sub_10006E728, 0, 0);
}

uint64_t sub_10006E728()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 272);
  v3 = *(v0 + 280);
  v4 = *(v3 + 48);
  v5 = v4(v1, 1, v2);
  v6 = *(v0 + 312);
  if (v5 == 1)
  {
    URL.init(string:)();
    if (v4(v1, 1, v2) != 1)
    {
      sub_10001B884(*(v0 + 304));
    }
  }

  else
  {
    (*(v3 + 32))(*(v0 + 312), v1, v2);
    (*(v3 + 56))(v6, 0, 1, v2);
  }

  v7 = *(v0 + 296);
  v8 = *(v0 + 272);
  sub_10001B8EC(*(v0 + 312), v7);
  if (v4(v7, 1, v8) == 1)
  {
    v9 = *(v0 + 312);
    sub_10001B884(*(v0 + 296));
    sub_10001B95C();
    swift_allocError();
    *v10 = 0;
    swift_willThrow();
    sub_10001B884(v9);

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v13 = *(v0 + 288);
    v14 = *(v0 + 272);
    v15 = *(v0 + 280);
    v17 = *(v0 + 256);
    v16 = *(v0 + 264);
    v18 = *(v0 + 248);
    (*(v15 + 32))(v13, *(v0 + 296), v14);
    (*(v15 + 16))(v16, v13, v14);
    v20 = *(v18 + 1);
    v19 = *(v18 + 2);
    *(v0 + 16) = *v18;
    *(v0 + 32) = v20;
    *(v0 + 48) = v19;
    v22 = *(v18 + 4);
    v21 = *(v18 + 5);
    v23 = *(v18 + 3);
    *(v0 + 111) = *(v18 + 95);
    *(v0 + 80) = v22;
    *(v0 + 96) = v21;
    *(v0 + 64) = v23;
    v24 = *(v18 + 13);
    v25 = *(v18 + 14);
    v26 = *(v18 + 15);
    v27 = *(v18 + 16);
    v28 = *(v18 + 17);
    v32 = *(v18 + 9);
    memmove((v16 + v17[5]), v18, 0x63uLL);
    *(v16 + v17[6]) = v24;
    *(v16 + v17[7]) = _swiftEmptyArrayStorage;
    v29 = (v16 + v17[8]);
    *v29 = v25;
    v29[1] = v26;
    *(v16 + v17[9]) = v32;
    *(v16 + v17[10]) = 2;
    v30 = (v16 + v17[11]);
    *v30 = v27;
    v30[1] = v28;
    sub_10001B9B0(v0 + 16, v0 + 120);

    v31 = swift_task_alloc();
    *(v0 + 328) = v31;
    *v31 = v0;
    v31[1] = sub_10001B2D4;

    return sub_10007CF2C();
  }
}

uint64_t sub_10006EA88(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10001B760;

  return sub_10006E444();
}

__n128 sub_10006EB18(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_10006EB5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 200))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10006EBA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 200) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10006EC24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10006EC6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_10006EE68(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ConversionHistoryEntity();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_10006EEC4()
{
  result = qword_10023B3F8;
  if (!qword_10023B3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B3F8);
  }

  return result;
}

unint64_t sub_10006EF3C()
{
  result = qword_10023B418;
  if (!qword_10023B418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B418);
  }

  return result;
}

Swift::Int sub_10006EF90()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 17400;
  }

  else
  {
    v2 = 0;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_10006EFE0()
{
  if (*v0)
  {
    v1 = 17400;
  }

  else
  {
    v1 = 0;
  }

  Hasher._combine(_:)(v1);
}

Swift::Int sub_10006F018(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  if (v2)
  {
    v3 = 17400;
  }

  else
  {
    v3 = 0;
  }

  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void *sub_10006F064@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 17400)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

void sub_10006F088(uint64_t *a1@<X8>)
{
  v2 = 17400;
  if (!*v1)
  {
    v2 = 0;
  }

  *a1 = v2;
}

void sub_10006F0B0(_BYTE *a1, uint64_t a2)
{
  if ((*a1 & 1) == 0)
  {
    v3 = [type metadata accessor for ItemIdentifierBundleIDMapEntity() databaseTable];
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    sub_10006F35C(v4, v6);

    v7 = String._bridgeToObjectiveC()();

    sub_1001ACB3C(a2, v7);
  }
}

unint64_t sub_10006F168(void *a1)
{
  a1[1] = sub_10006F1A0();
  a1[2] = sub_10006F1F4();
  result = sub_10006F248();
  a1[3] = result;
  return result;
}

unint64_t sub_10006F1A0()
{
  result = qword_10023B460;
  if (!qword_10023B460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B460);
  }

  return result;
}

unint64_t sub_10006F1F4()
{
  result = qword_10023B468;
  if (!qword_10023B468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B468);
  }

  return result;
}

unint64_t sub_10006F248()
{
  result = qword_10023B470;
  if (!qword_10023B470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B470);
  }

  return result;
}

unint64_t sub_10006F2A0()
{
  result = qword_10023B478;
  if (!qword_10023B478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B478);
  }

  return result;
}

unint64_t sub_10006F2F8()
{
  result = qword_10023B480;
  if (!qword_10023B480)
  {
    sub_10000CCC0(&qword_10023B488, &qword_1001B8A78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B480);
  }

  return result;
}

uint64_t sub_10006F35C(uint64_t a1, void *a2)
{
  _StringGuts.grow(_:)(89);
  v4._countAndFlagsBits = 0xD00000000000001BLL;
  v4._object = 0x80000001001CB510;
  String.append(_:)(v4);
  v5._countAndFlagsBits = a1;
  v5._object = a2;
  String.append(_:)(v5);
  v6._countAndFlagsBits = 665632;
  v6._object = 0xE300000000000000;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 0x64695F6D657469;
  v7._object = 0xE700000000000000;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0x52454745544E4920;
  v8._object = 0xEA00000000000A2CLL;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0x695F656C646E7562;
  v9._object = 0xE900000000000064;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0x550A2C5458455420;
  v10._object = 0xEE0028455551494ELL;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 0x64695F6D657469;
  v11._object = 0xE700000000000000;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 44;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0x695F656C646E7562;
  v13._object = 0xE900000000000064;
  String.append(_:)(v13);
  v14._object = 0x80000001001CB550;
  v14._countAndFlagsBits = 0xD000000000000018;
  String.append(_:)(v14);
  return 0;
}

unint64_t sub_10006F4EC()
{
  result = qword_10023B490;
  if (!qword_10023B490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B490);
  }

  return result;
}

unint64_t sub_10006F544()
{
  result = qword_10023B498;
  if (!qword_10023B498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B498);
  }

  return result;
}

unint64_t sub_10006F598(uint64_t a1)
{
  *(a1 + 8) = sub_10003BBCC();
  result = sub_10006F5C8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10006F5C8()
{
  result = qword_10023B4E8;
  if (!qword_10023B4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B4E8);
  }

  return result;
}

unint64_t sub_10006F620(char a1)
{
  result = 0x656B636F6C5F7369;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
      return result;
    case 4:
      result = 0x7265747369676572;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0x6D69745F6B636F6CLL;
      break;
    case 8:
      result = 0x69745F6863746566;
      break;
    case 9:
      result = 0x63616274736F6867;
      break;
    case 10:
    case 14:
      result = 0x69737265766E6F63;
      break;
    case 11:
      result = 0x6D6E6F7269766E65;
      break;
    case 12:
      result = 0xD000000000000016;
      break;
    case 13:
      result = 0x6C7074656B72616DLL;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_10006F850(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_10006F620(*a1);
  v5 = v4;
  if (v3 == sub_10006F620(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10006F8D8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10006F620(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10006F93C(uint64_t a1)
{
  sub_10006F620(*v1);
  String.hash(into:)();
}

Swift::Int sub_10006F990(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_10006F620(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10006F9F0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000707BC(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10006FA20@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10006F620(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10006FA68@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1000707BC(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10006FAAC(uint64_t a1)
{
  v2 = sub_10006F544();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006FAE8(uint64_t a1)
{
  v2 = sub_10006F544();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10006FB24()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v3);
  v8 = &v13 - v7;
  if (!*(v0 + 136))
  {
    static Date.now.getter();
    if ((sub_1000BAF6C(*(v0 + 73)) & 0x100000000) != 0)
    {
      arc4random_uniform(0x15180u);
    }

    Date.addingTimeInterval(_:)();
    v9 = *(v2 + 8);
    v9(v5, v1);
    Date.timeIntervalSince1970.getter();
    v11 = v10;
    result = (v9)(v8, v1);
    v12 = v11 * 1000.0;
    if (COERCE__INT64(fabs(v11 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v12 > -1.0)
    {
      if (v12 < 1.84467441e19)
      {
        *(v0 + 136) = v12;
        return result;
      }

LABEL_11:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_11;
  }

  return result;
}

void sub_10006FCD8(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v6 = type metadata accessor for Logger();
  v50 = *(v6 - 8);
  v51 = v6;
  v7 = __chkstk_darwin(v6);
  v47 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v45 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v45 - v16;
  Date.init(timeIntervalSince1970:)();
  v18 = *(v4 + 72);
  type metadata accessor for PostbackUpdateData(0);
  v19 = v18;
  v20 = v11;
  ConversionType.isInstall.getter(v19);
  v48 = v17;
  Date.addingTimeInterval(_:)();
  sub_100070F78();
  LOBYTE(v17) = dispatch thunk of static Comparable.< infix(_:_:)();
  v21 = *(v12 + 8);
  v49 = v12 + 8;
  v21(v15, v20);
  if ((v17 & 1) == 0)
  {
    v29 = v50;
    v28 = v51;
    if (*(v4 + 112) != 1)
    {
      goto LABEL_10;
    }

    Date.timeIntervalSince1970.getter();
    v31 = v30 * 1000.0;
    if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v31 > -1.0)
    {
      if (v31 < 1.84467441e19)
      {
        *(v4 + 104) = v31;
        *(v4 + 112) = 0;
LABEL_10:
        if (*(v4 + 51))
        {
          v33 = *(v4 + 56);
          v32 = *(v4 + 64);
          v34 = Logger.ghostback.unsafeMutableAddressor();
          v35 = v47;
          (*(v29 + 16))(v47, v34, v28);

          v36 = Logger.logObject.getter();
          v37 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v36, v37))
          {
            v38 = swift_slowAlloc();
            v45 = v33;
            v39 = v38;
            v40 = swift_slowAlloc();
            v46 = v21;
            v41 = v40;
            v52 = v40;
            *v39 = 136315138;
            *(v39 + 4) = sub_10017AD04(v45, v32, &v52);
            _os_log_impl(&_mh_execute_header, v36, v37, "Ghostback %s is locked, skipping update", v39, 0xCu);
            sub_10000DB58(v41);

            (*(v29 + 8))(v35, v28);
            v46(v48, v20);
            return;
          }

          (*(v29 + 8))(v35, v28);
          goto LABEL_19;
        }

        *(v4 + 50) = 1;
        *(v4 + 40) = *a1;
        *(v4 + 48) = 0;
        *(v4 + 49) = *(a1 + 8);
        if (*(a1 + 9) != 1)
        {
LABEL_19:
          v21(v48, v20);
          return;
        }

        *(v4 + 51) = 1;
        Date.timeIntervalSince1970.getter();
        v43 = v42;
        v21(v48, v20);
        v44 = v43 * 1000.0;
        if (COERCE__INT64(fabs(v43 * 1000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v44 > -1.0)
          {
            if (v44 < 1.84467441e19)
            {
              *(v4 + 120) = v44;
              *(v4 + 128) = 0;
              *(v4 + 74) = 0;
              return;
            }

            goto LABEL_25;
          }

LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          return;
        }

LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    __break(1u);
    goto LABEL_22;
  }

  v22 = Logger.ghostback.unsafeMutableAddressor();
  v23 = v50;
  v24 = v51;
  (*(v50 + 16))(v10, v22, v51);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "Ghostback is past activation window, skipping update", v27, 2u);
  }

  (*(v23 + 8))(v10, v24);
  sub_100070FD0();
  swift_allocError();
  swift_willThrow();
  v21(v48, v20);
}

uint64_t sub_100070284(void *a1)
{
  v3 = v1;
  v5 = sub_10000CDE0(&qword_10023B520, qword_1001B8C38);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_10000DA7C(a1, a1[3]);
  sub_10006F544();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v12 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = v3[49];
    v11 = 2;
    sub_100070F24();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = v3[72];
    v11 = 10;
    sub_100047180();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = v3[73];
    v11 = 11;
    sub_10004CEFC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = 12;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = 13;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = 14;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

__n128 sub_100070630@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100070808(a2, v8);
  if (!v2)
  {
    v5 = v8[7];
    *(a1 + 96) = v8[6];
    *(a1 + 112) = v5;
    *(a1 + 128) = v8[8];
    v6 = v8[3];
    *(a1 + 32) = v8[2];
    *(a1 + 48) = v6;
    v7 = v8[5];
    *(a1 + 64) = v8[4];
    *(a1 + 80) = v7;
    result = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = result;
  }

  return result;
}

unint64_t sub_1000706A8()
{
  result = qword_10023B4F0;
  if (!qword_10023B4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B4F0);
  }

  return result;
}

unint64_t sub_100070700()
{
  result = qword_10023B4F8;
  if (!qword_10023B4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B4F8);
  }

  return result;
}

unint64_t sub_100070758()
{
  result = qword_10023B500;
  if (!qword_10023B500)
  {
    sub_10000CCC0(&qword_10023B508, &qword_1001B8BF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B500);
  }

  return result;
}

unint64_t sub_1000707BC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100215478, v2);

  if (v3 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100070808@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v104 = sub_10000CDE0(&qword_10023B510, &qword_1001B8C30);
  v5 = *(v104 - 8);
  __chkstk_darwin(v104);
  v7 = &v34 - v6;
  v103 = 1;
  sub_10000DA7C(a1, a1[3]);
  sub_10006F544();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  v8 = v5;
  LOBYTE(v63) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v63) = 1;
  v53 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v101 = v10 & 1;
  LOBYTE(v54) = 2;
  sub_100070E98();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v11 = v63;
  LOBYTE(v63) = 3;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v52 = v11;
  v13 = v12 == 1;
  LOBYTE(v63) = 4;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v51 = v13;
  v15 = v14 == 1;
  LOBYTE(v63) = 5;
  v50 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v63) = 6;
  v49 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v96 = v16 & 1;
  LOBYTE(v63) = 7;
  v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v46 = v15;
  v48 = v17;
  v94 = v18 & 1;
  LOBYTE(v63) = 8;
  v47 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v63) = 9;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v45 = v20;
  v21 = v19;
  LOBYTE(v54) = 10;
  sub_1000470F4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v44 = v63;
  LOBYTE(v54) = 11;
  sub_10004DBC4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v43 = v63;
  LOBYTE(v63) = 12;
  v42 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v63) = 13;
  v40 = KeyedDecodingContainer.decode(_:forKey:)();
  v41 = v22;
  v92 = 14;
  v39 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v24 = v23;
  v42 &= 1u;
  (*(v8 + 8))(v7, v104);
  v98 = v24 & 1;
  v25 = v24 & 1;
  v37 = v24 & 1;
  *&v54 = 0;
  v26 = v103;
  BYTE8(v54) = v103;
  v36 = v9;
  *&v55 = v9;
  *(&v55 + 1) = v40;
  *&v56 = v41;
  *(&v56 + 1) = v53;
  v35 = v101;
  LOBYTE(v57) = v101;
  LOBYTE(v9) = v51;
  v27 = v52;
  BYTE1(v57) = v52;
  LOBYTE(v8) = v46;
  BYTE2(v57) = v46;
  BYTE3(v57) = v51;
  v34 = v21;
  *(&v57 + 1) = v21;
  v28 = v45;
  *&v58 = v45;
  BYTE8(v58) = v44;
  BYTE9(v58) = v43;
  BYTE10(v58) = v42;
  *&v59 = v39;
  BYTE8(v59) = v25;
  *&v60 = v50;
  *(&v60 + 1) = v49;
  v38 = v96;
  LOBYTE(v61) = v96;
  *(&v61 + 1) = v48;
  LODWORD(v104) = v94;
  LOBYTE(v62) = v94;
  *(&v62 + 1) = v47;
  sub_100070EEC(&v54, &v63);
  sub_10000DB58(a1);
  v63 = 0;
  v64 = v26;
  *v65 = *v102;
  *&v65[3] = *&v102[3];
  v66 = v36;
  v67 = v40;
  v68 = v41;
  v69 = v53;
  v70 = v35;
  v71 = v27;
  v72 = v8;
  v73 = v9;
  v74 = v34;
  v75 = v28;
  v76 = v44;
  v77 = v43;
  v78 = v42;
  v80 = v100;
  v79 = v99;
  v81 = v39;
  v82 = v37;
  *v83 = *v97;
  *&v83[3] = *&v97[3];
  v84 = v50;
  v85 = v49;
  v86 = v38;
  *&v87[3] = *&v95[3];
  *v87 = *v95;
  v88 = v48;
  v89 = v104;
  *v90 = *v93;
  *&v90[3] = *&v93[3];
  v91 = v47;
  result = sub_10003BC20(&v63);
  v30 = v61;
  a2[6] = v60;
  a2[7] = v30;
  a2[8] = v62;
  v31 = v57;
  a2[2] = v56;
  a2[3] = v31;
  v32 = v59;
  a2[4] = v58;
  a2[5] = v32;
  v33 = v55;
  *a2 = v54;
  a2[1] = v33;
  return result;
}

unint64_t sub_100070E98()
{
  result = qword_10023B518;
  if (!qword_10023B518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B518);
  }

  return result;
}

unint64_t sub_100070F24()
{
  result = qword_10023B528;
  if (!qword_10023B528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B528);
  }

  return result;
}

unint64_t sub_100070F78()
{
  result = qword_10023B530;
  if (!qword_10023B530)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B530);
  }

  return result;
}

unint64_t sub_100070FD0()
{
  result = qword_10023B538;
  if (!qword_10023B538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B538);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GhostbackModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GhostbackModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_100071184(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_1000711B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000711F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100071270()
{
  result = qword_10023B540;
  if (!qword_10023B540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B540);
  }

  return result;
}

unint64_t sub_1000712C4(uint64_t a1)
{
  result = sub_100070FD0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000712F0()
{
  result = qword_10023B548;
  if (!qword_10023B548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B548);
  }

  return result;
}

unint64_t sub_10007134C()
{
  result = qword_10023B550;
  if (!qword_10023B550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B550);
  }

  return result;
}

unint64_t sub_1000713A4()
{
  result = qword_10023B558;
  if (!qword_10023B558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B558);
  }

  return result;
}

unint64_t sub_1000713F8(uint64_t a1)
{
  *(a1 + 8) = sub_10003BD7C();
  result = sub_100071428();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100071428()
{
  result = qword_10023B5A8;
  if (!qword_10023B5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B5A8);
  }

  return result;
}

uint64_t sub_10007147C(void *a1)
{
  v3 = v1;
  v5 = sub_10000CDE0(&qword_10023B5E0, &qword_1001B8F78);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_10000DA7C(a1, a1[3]);
  sub_1000713A4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = *(v3 + 16);
  v13 = *(v3 + 16);
  v12 = 0;
  sub_10007206C(&v15, v11);
  sub_1000720DC();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  sub_10005CB30(v13, *(&v13 + 1));
  if (!v2)
  {
    v13 = *(v3 + 32);
    v14 = v13;
    v12 = 1;
    sub_10007206C(&v14, v11);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10005CB30(v13, *(&v13 + 1));
    LOBYTE(v13) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v13) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

Swift::Int sub_1000716A0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10007176C(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100071824(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000718EC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100071C5C(*a1);
  *a2 = result;
  return result;
}

void sub_10007191C(unint64_t *a1@<X8>)
{
  v2 = 0xEC00000064695F6BLL;
  v3 = 0x63616274736F6867;
  v4 = 0xD000000000000012;
  if (*v1 == 2)
  {
    v3 = 0xD000000000000012;
    v2 = 0x80000001001CA000;
  }

  v5 = 0x80000001001CAD90;
  if (*v1)
  {
    v4 = 0xD000000000000014;
    v5 = 0x80000001001CADB0;
  }

  if (*v1 <= 1u)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  if (*v1 <= 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_1000719A4()
{
  v1 = 0x63616274736F6867;
  v2 = 0xD000000000000012;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_100071A28@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100071C5C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100071A60(uint64_t a1)
{
  v2 = sub_1000713A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100071A9C(uint64_t a1)
{
  v2 = sub_1000713A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_100071AD8@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100071CA8(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7;
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

unint64_t sub_100071B48()
{
  result = qword_10023B5B0;
  if (!qword_10023B5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B5B0);
  }

  return result;
}

unint64_t sub_100071BA0()
{
  result = qword_10023B5B8;
  if (!qword_10023B5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B5B8);
  }

  return result;
}

unint64_t sub_100071BF8()
{
  result = qword_10023B5C0;
  if (!qword_10023B5C0)
  {
    sub_10000CCC0(&qword_10023B5C8, &qword_1001B8F30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B5C0);
  }

  return result;
}

unint64_t sub_100071C5C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100215EB8, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100071CA8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000CDE0(&qword_10023B5D0, &qword_1001B8F70);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - v7;
  v37 = 1;
  sub_10000DA7C(a1, a1[3]);
  sub_1000713A4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  v9 = a2;
  LOBYTE(v25) = 0;
  sub_100071FE0();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v24 = *(&v30 + 1);
  v10 = v30;
  LOBYTE(v25) = 1;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v23 = v30;
  LOBYTE(v30) = 2;
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  v38 = 3;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  (*(v6 + 8))(v8, v5);
  *&v25 = 0;
  HIDWORD(v21) = v37;
  BYTE8(v25) = v37;
  v14 = v10;
  *&v26 = v10;
  v15 = v24;
  v16 = v23;
  *(&v26 + 1) = v24;
  v27 = v23;
  v17 = v22;
  *&v28 = v22;
  *(&v28 + 1) = v11;
  v29 = v13;
  sub_100072034(&v25, &v30);
  sub_10000DB58(a1);
  *&v30 = 0;
  BYTE8(v30) = BYTE4(v21);
  v31 = v14;
  v32 = v15;
  v33 = __PAIR128__(*(&v23 + 1), v16);
  v34 = v17;
  v35 = v11;
  v36 = v13;
  result = sub_10003BDD0(&v30);
  v19 = v28;
  *(v9 + 32) = v27;
  *(v9 + 48) = v19;
  *(v9 + 64) = v29;
  v20 = v26;
  *v9 = v25;
  *(v9 + 16) = v20;
  return result;
}

unint64_t sub_100071FE0()
{
  result = qword_10023B5D8;
  if (!qword_10023B5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B5D8);
  }

  return result;
}

uint64_t sub_10007206C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CDE0(&qword_10023B5E8, &qword_1001B8F80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000720DC()
{
  result = qword_10023B5F0;
  if (!qword_10023B5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B5F0);
  }

  return result;
}

uint64_t sub_100072140(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100072168(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000721B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100072214()
{
  result = qword_10023B5F8;
  if (!qword_10023B5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B5F8);
  }

  return result;
}

id sub_100072410(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SnoutStoryEntity();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_10007246C()
{
  result = qword_10023B628;
  if (!qword_10023B628)
  {
    type metadata accessor for SnoutStoryModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B628);
  }

  return result;
}

id sub_100072664(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PostbackEntity();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_1000726C0()
{
  result = qword_10023B670;
  if (!qword_10023B670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023B670);
  }

  return result;
}

uint64_t sub_100072714()
{
  v1[450] = v0;
  v2 = type metadata accessor for Calendar.Component();
  v1[451] = v2;
  v1[452] = *(v2 - 8);
  v1[453] = swift_task_alloc();
  v3 = type metadata accessor for RegisterConversionTask(0);
  v1[454] = v3;
  v4 = *(v3 - 8);
  v1[455] = v4;
  v1[456] = *(v4 + 64);
  v1[457] = swift_task_alloc();
  v5 = type metadata accessor for AccountIdentity();
  v1[458] = v5;
  v1[459] = *(v5 - 8);
  v1[460] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v1[461] = v6;
  v1[462] = *(v6 - 8);
  v1[463] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v1[464] = v7;
  v1[465] = *(v7 - 8);
  v1[466] = swift_task_alloc();

  return _swift_task_switch(sub_10007294C, 0, 0);
}

uint64_t sub_10007294C()
{
  v1 = *(*(v0 + 3600) + 99);
  *(v0 + 2628) = v1;
  if (ConversionType.isInstall.getter(v1))
  {
    v2 = *(v0 + 3600);
    sub_10000DA7C(v2 + 32, v2[35]);
    v3 = v2[4];
    *(v0 + 3736) = v3;
    v4 = swift_task_alloc();
    *(v0 + 3744) = v4;
    *v4 = v0;
    v4[1] = sub_100072BF0;

    return sub_1001260DC(v3, 0, 1);
  }

  else
  {
    v6 = *(v0 + 3600);
    v7 = *v6;
    v8 = v6[1];
    *(v0 + 1952) = v6[2];
    *(v0 + 1936) = v8;
    *(v0 + 1920) = v7;
    v9 = v6[3];
    v10 = v6[4];
    v11 = v6[5];
    *(v0 + 2015) = *(v6 + 95);
    *(v0 + 2000) = v11;
    *(v0 + 1984) = v10;
    *(v0 + 1968) = v9;
    *(v0 + 3760) = *(v0 + 1952);
    v13 = v6[1];
    v12 = v6[2];
    *(v0 + 2520) = *v6;
    *(v0 + 2536) = v13;
    *(v0 + 2552) = v12;
    v15 = v6[4];
    v14 = v6[5];
    v16 = v6[3];
    *(v0 + 2616) = *(v6 + 48);
    *(v0 + 2584) = v15;
    *(v0 + 2600) = v14;
    *(v0 + 2568) = v16;
    *(v0 + 3768) = *(v6 + 20);
    *(v0 + 3776) = *(v6 + 21);
    *(v0 + 3784) = *(v6 + 22);
    v17 = *v6;
    v18 = v6[1];
    *(v0 + 1728) = v6[2];
    *(v0 + 1712) = v18;
    *(v0 + 1696) = v17;
    v19 = v6[3];
    v20 = v6[4];
    v21 = v6[5];
    *(v0 + 1792) = *(v6 + 48);
    *(v0 + 1776) = v21;
    *(v0 + 1760) = v20;
    *(v0 + 1744) = v19;
    *(v0 + 1794) = 1;
    v22 = swift_allocObject();
    *(v0 + 3792) = v22;
    v23 = *(v0 + 1744);
    v24 = *(v0 + 1776);
    *(v22 + 80) = *(v0 + 1760);
    *(v22 + 96) = v24;
    *(v22 + 111) = *(v0 + 1791);
    v25 = *(v0 + 1712);
    *(v22 + 16) = *(v0 + 1696);
    *(v22 + 32) = v25;
    *(v22 + 48) = *(v0 + 1728);
    *(v22 + 64) = v23;
    sub_10001B9B0(v0 + 1920, v0 + 2032);
    sub_10001B9B0(v0 + 1696, v0 + 2152);
    v26 = swift_task_alloc();
    *(v0 + 3800) = v26;
    *v26 = v0;
    v26[1] = sub_100073530;

    return (sub_10010EB50)();
  }
}

uint64_t sub_100072BF0()
{
  *(*v1 + 3752) = v0;

  if (v0)
  {
    v2 = sub_100072EFC;
  }

  else
  {
    v2 = sub_100072D04;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100072D04()
{
  v1 = *(v0 + 3600);
  v2 = *v1;
  v3 = v1[1];
  *(v0 + 1952) = v1[2];
  *(v0 + 1936) = v3;
  *(v0 + 1920) = v2;
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  *(v0 + 2015) = *(v1 + 95);
  *(v0 + 2000) = v6;
  *(v0 + 1984) = v5;
  *(v0 + 1968) = v4;
  *(v0 + 3760) = *(v0 + 1952);
  v8 = v1[1];
  v7 = v1[2];
  *(v0 + 2520) = *v1;
  *(v0 + 2536) = v8;
  *(v0 + 2552) = v7;
  v10 = v1[4];
  v9 = v1[5];
  v11 = v1[3];
  *(v0 + 2616) = *(v1 + 48);
  *(v0 + 2584) = v10;
  *(v0 + 2600) = v9;
  *(v0 + 2568) = v11;
  *(v0 + 3768) = *(v1 + 20);
  *(v0 + 3776) = *(v1 + 21);
  *(v0 + 3784) = *(v1 + 22);
  v12 = *v1;
  v13 = v1[1];
  *(v0 + 1728) = v1[2];
  *(v0 + 1712) = v13;
  *(v0 + 1696) = v12;
  v14 = v1[3];
  v15 = v1[4];
  v16 = v1[5];
  *(v0 + 1792) = *(v1 + 48);
  *(v0 + 1776) = v16;
  *(v0 + 1760) = v15;
  *(v0 + 1744) = v14;
  *(v0 + 1794) = 1;
  v17 = swift_allocObject();
  *(v0 + 3792) = v17;
  v18 = *(v0 + 1744);
  v19 = *(v0 + 1776);
  *(v17 + 80) = *(v0 + 1760);
  *(v17 + 96) = v19;
  *(v17 + 111) = *(v0 + 1791);
  v20 = *(v0 + 1712);
  *(v17 + 16) = *(v0 + 1696);
  *(v17 + 32) = v20;
  *(v17 + 48) = *(v0 + 1728);
  *(v17 + 64) = v18;
  sub_10001B9B0(v0 + 1920, v0 + 2032);
  sub_10001B9B0(v0 + 1696, v0 + 2152);
  v21 = swift_task_alloc();
  *(v0 + 3800) = v21;
  *v21 = v0;
  v21[1] = sub_100073530;

  return (sub_10010EB50)();
}

uint64_t sub_100072EFC()
{
  v1 = *(v0 + 3752);
  v54 = *(v0 + 3736);
  *(v0 + 4152) = v1;
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to register conversion: %@", v4, 0xCu);
    sub_10000DAF8(v5, &qword_100239F10, &qword_1001B4FD0);
  }

  v7 = *(v0 + 2628);
  v51 = (v0 + 2618);
  v52 = (v0 + 2505);
  v8 = *(v0 + 3728);
  v48 = (v0 + 1802);
  v49 = (v0 + 2498);
  v45 = (v0 + 1690);
  v46 = (v0 + 2378);
  v9 = *(v0 + 3720);
  v50 = (v0 + 1907);
  v40 = *(v0 + 3712);
  v55 = *(v0 + 3632);
  v10 = *(v0 + 3624);
  v11 = *(v0 + 3616);
  v12 = *(v0 + 3608);
  v53 = *(v0 + 3600);

  v47 = v7 > 1;
  swift_errorRetain();
  v13 = sub_1000C7C10(v1);
  v43 = v14;
  v44 = v13;
  v41 = v16;
  v42 = v15;
  static Date.now.getter();
  (*(v11 + 104))(v10, enum case for Calendar.Component.hour(_:), v12);
  v17 = sub_100025808(v8, v10);
  LOBYTE(v7) = v18;
  (*(v11 + 8))(v10, v12);
  (*(v9 + 8))(v8, v40);
  if (v7)
  {
    v19 = 0;
  }

  else
  {
    v19 = v17;
  }

  v20 = [objc_opt_self() buildVersion];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  *(v0 + 4176) = 1;
  *(v0 + 4192) = 1;
  *(v0 + 4232) = 1;
  *(v0 + 4272) = 1;
  *(v0 + 4256) = 1;
  *(v0 + 912) = 5;
  *(v0 + 914) = *v45;
  *(v0 + 918) = *(v0 + 1694);
  *(v0 + 920) = v44;
  *(v0 + 928) = v43;
  *(v0 + 936) = v42;
  *(v0 + 944) = v41;
  *(v0 + 952) = 0u;
  *(v0 + 968) = v19;
  *(v0 + 976) = v21;
  *(v0 + 984) = v23;
  *(v0 + 992) = 0;
  *(v0 + 993) = 33686018;
  *(v0 + 997) = 0;
  *(v0 + 1000) = 0;
  v24 = *(v0 + 4176);
  *(v0 + 1008) = v24;
  *(v0 + 1009) = *v46;
  *(v0 + 1012) = *(v0 + 2381);
  *(v0 + 1016) = 0;
  v25 = *(v0 + 4192);
  *(v0 + 1024) = v25;
  *(v0 + 1025) = 3;
  *(v0 + 1026) = *v48;
  *(v0 + 1030) = *(v0 + 1806);
  *(v0 + 1032) = 0;
  v26 = *(v0 + 4232);
  *(v0 + 1040) = v26;
  *(v0 + 1044) = *(v0 + 2501);
  *(v0 + 1041) = *v49;
  *(v0 + 1048) = 0;
  v27 = *(v0 + 4272);
  *(v0 + 1056) = v27;
  *(v0 + 1057) = v47;
  *(v0 + 1058) = 3;
  *(v0 + 1063) = *(v0 + 2622);
  *(v0 + 1059) = *v51;
  *(v0 + 1064) = 0;
  v28 = *(v0 + 4256);
  *(v0 + 1072) = v28;
  v29 = *v50;
  *(v0 + 1076) = *(v0 + 1910);
  *(v0 + 1073) = v29;
  *(v0 + 1080) = 0u;
  *(v0 + 1096) = 514;
  *(v0 + 1098) = 2;
  v30 = *v52;
  *(v0 + 1103) = *(v0 + 2509);
  *(v0 + 1099) = v30;
  *(v0 + 1120) = 0u;
  *(v0 + 1104) = 0u;
  *(v0 + 1136) = 5;
  LODWORD(v20) = *v45;
  *(v0 + 1142) = *(v0 + 1694);
  *(v0 + 1138) = v20;
  *(v0 + 1144) = v44;
  *(v0 + 1152) = v43;
  *(v0 + 1160) = v42;
  *(v0 + 1168) = v41;
  *(v0 + 1176) = 0u;
  *(v0 + 1192) = v19;
  *(v0 + 1200) = v21;
  *(v0 + 1208) = v23;
  *(v0 + 1216) = 0;
  *(v0 + 1217) = 33686018;
  *(v0 + 1221) = 0;
  *(v0 + 1224) = 0;
  *(v0 + 1232) = v24;
  v31 = *v46;
  *(v0 + 1236) = *(v0 + 2381);
  *(v0 + 1233) = v31;
  *(v0 + 1240) = 0;
  *(v0 + 1248) = v25;
  *(v0 + 1249) = 3;
  v32 = *v48;
  *(v0 + 1254) = *(v0 + 1806);
  *(v0 + 1250) = v32;
  *(v0 + 1256) = 0;
  *(v0 + 1264) = v26;
  v33 = *v49;
  *(v0 + 1268) = *(v0 + 2501);
  *(v0 + 1265) = v33;
  *(v0 + 1272) = 0;
  *(v0 + 1280) = v27;
  *(v0 + 1281) = v47;
  *(v0 + 1282) = 3;
  v34 = *v51;
  *(v0 + 1287) = *(v0 + 2622);
  *(v0 + 1283) = v34;
  *(v0 + 1288) = 0;
  *(v0 + 1296) = v28;
  v35 = *v50;
  *(v0 + 1300) = *(v0 + 1910);
  *(v0 + 1297) = v35;
  *(v0 + 1304) = 0u;
  *(v0 + 1320) = 514;
  *(v0 + 1322) = 2;
  v36 = *v52;
  *(v0 + 1327) = *(v0 + 2509);
  *(v0 + 1323) = v36;
  *(v0 + 1344) = 0u;
  *(v0 + 1328) = 0u;
  sub_100010568(v0 + 912, v0 + 688);
  sub_10003AE8C(v0 + 1136);
  sub_10000DA7C((v53 + *(v55 + 68)), *(v53 + *(v55 + 68) + 24));
  v37 = type metadata accessor for SnoutManager(0);
  v38 = swift_task_alloc();
  *(v0 + 4160) = v38;
  *v38 = v0;
  v38[1] = sub_100076928;

  return (sub_10016E27C)(v0 + 912, v54, 0, 0, v37, &off_100223858);
}

uint64_t sub_100073530()
{
  v2 = *v1;
  *(*v1 + 3808) = v0;

  if (v0)
  {
    v3 = *(v2 + 2552);
    *(v2 + 2320) = *(v2 + 2568);
    v4 = *(v2 + 2600);
    *(v2 + 2336) = *(v2 + 2584);
    *(v2 + 2352) = v4;
    v5 = *(v2 + 2536);
    *(v2 + 2272) = *(v2 + 2520);
    *(v2 + 2288) = v5;
    *(v2 + 2368) = *(v2 + 2616);
    *(v2 + 2304) = v3;
    *(v2 + 2370) = 1;
    sub_10003BF38(v2 + 2272);

    v6 = sub_100076AD8;
  }

  else
  {

    v6 = sub_100073698;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100073698()
{
  v1 = (v0 + 2520);
  v2 = *(*(v0 + 3600) + 120);
  *(v0 + 2629) = v2;
  if (v2 == 1)
  {
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v3 & 1) == 0)
    {
      v5 = v0 + 2392;
      v6 = 2490;
LABEL_9:
      v7 = *(v0 + 2600);
      *(v5 + 64) = *(v0 + 2584);
      *(v5 + 80) = v7;
      *(v5 + 96) = *(v0 + 2616);
      v8 = *(v0 + 2536);
      *v5 = *v1;
      *(v5 + 16) = v8;
      v9 = *(v0 + 2568);
      *(v5 + 32) = *(v0 + 2552);
      *(v5 + 48) = v9;
      *(v0 + v6) = 1;
      sub_10003BF38(v5);
      v10 = *(v0 + 3600);
      v11 = *(v10 + 128);
      *(v0 + 3840) = v11;
      v12 = *(v10 + 136);
      *(v0 + 2630) = v12;
      if (v12)
      {
LABEL_20:
        v36 = *(v0 + 3632);
        v37 = *(v0 + 1936);
        *(v0 + 3888) = v37;
        v38 = *(v0 + 1944);
        *(v0 + 3896) = v38;
        sub_10000DA7C((v10 + *(v36 + 68)), *(v10 + *(v36 + 68) + 24));
        v39 = type metadata accessor for SnoutManager(0);
        *(v0 + 3904) = v39;
        v40 = swift_task_alloc();
        *(v0 + 3912) = v40;
        *v40 = v0;
        v40[1] = sub_100074524;
        v41 = *(v0 + 3760);

        return (sub_10016E534)(v41, v37, v38, v39, &off_100223858);
      }

      if (*(v0 + 2628) && *(v0 + 2628) != 1)
      {
      }

      else
      {
        v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v35 & 1) == 0)
        {
          v10 = *(v0 + 3600);
          goto LABEL_20;
        }
      }

      v42 = *(v0 + 3728);
      v43 = *(v0 + 3720);
      v44 = *(v0 + 3712);
      static Date.now.getter();
      Date.timeIntervalSince1970.getter();
      v46 = v45;
      v47 = *(v43 + 8);
      *(v0 + 3848) = v47;
      *(v0 + 3856) = (v43 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      result = v47(v42, v44);
      v48 = v46 * 1000.0;
      if (COERCE__INT64(fabs(v46 * 1000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v48 > -1.0)
        {
          if (v48 < 1.84467441e19)
          {
            v49 = *(v0 + 3760);
            v50 = v48;
            v51 = *(v0 + 3600);
            *(v0 + 4200) = 1;
            v53 = v51[23];
            v52 = v51[24];
            v54 = v51[25];
            v55 = swift_allocObject();
            *(v0 + 3864) = v55;
            *(v55 + 16) = 0;
            *(v55 + 24) = *(v0 + 4200);
            *(v55 + 25) = *(v0 + 1795);
            *(v55 + 28) = *(v0 + 1798);
            *(v55 + 32) = v49;
            *(v55 + 40) = v11;
            *(v55 + 48) = v50;
            v57 = sub_10010ECB0;
            v56 = swift_task_alloc();
            *(v0 + 3872) = v56;
            *v56 = v0;
            v56[1] = sub_100074274;
            v33 = sub_100079004;
            v34 = v55;
            v32 = v53;
            v31 = v52;
            v30 = v54;
            goto LABEL_28;
          }

LABEL_36:
          __break(1u);
          return result;
        }

LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

LABEL_34:
      __break(1u);
      goto LABEL_35;
    }
  }

  if (*(v0 + 2628) && *(v0 + 2628) != 1)
  {
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v4 & 1) == 0)
    {
      v5 = v0 + 1808;
      v6 = 1906;
      goto LABEL_9;
    }
  }

  v13 = *(v0 + 3728);
  v14 = *(v0 + 3720);
  v15 = *(v0 + 3712);
  v16 = *(v0 + 1712);
  v17 = *(v0 + 1720);
  v18 = *(v0 + 1728);
  v19 = *(v0 + 2600);
  *(v0 + 1648) = *(v0 + 2584);
  *(v0 + 1664) = v19;
  *(v0 + 1680) = *(v0 + 2616);
  v20 = *(v0 + 2536);
  *(v0 + 1584) = *v1;
  *(v0 + 1600) = v20;
  v21 = *(v0 + 2568);
  *(v0 + 1616) = *(v0 + 2552);
  *(v0 + 1632) = v21;
  *(v0 + 1682) = 1;

  sub_10003BF38(v0 + 1584);
  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v23 = v22;
  result = (*(v14 + 8))(v13, v15);
  v25 = v23 * 1000.0;
  if (COERCE__INT64(fabs(v23 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (v25 <= -1.0)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v25 >= 1.84467441e19)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v26 = *(v0 + 2628);
  v27 = v25;
  *(v0 + 4264) = 1;
  v28 = swift_allocObject();
  *(v0 + 3816) = v28;
  *(v28 + 16) = 0;
  *(v28 + 24) = *(v0 + 4264);
  *(v28 + 25) = *(v0 + 2019);
  *(v28 + 28) = *(v0 + 2022);
  *(v28 + 32) = v16;
  *(v28 + 40) = v17;
  *(v28 + 48) = v18;
  *(v28 + 56) = v26;
  *(v28 + 57) = *(v0 + 2258);
  *(v28 + 60) = *(v0 + 2261);
  v57 = sub_10010EB50;
  *(v28 + 64) = v27;
  v29 = swift_task_alloc();
  *(v0 + 3824) = v29;
  *v29 = v0;
  v29[1] = sub_100073D68;
  v30 = *(v0 + 3784);
  v31 = *(v0 + 3776);
  v32 = *(v0 + 3768);
  v33 = sub_10007906C;
  v34 = v28;
LABEL_28:

  return v57(v57, v33, v34, v32, v31, v30);
}

uint64_t sub_100073D68()
{
  *(*v1 + 3832) = v0;

  if (v0)
  {
    v2 = sub_10007710C;
  }

  else
  {
    v2 = sub_100073E9C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100073E9C()
{
  v1 = *(v0 + 3600);
  v2 = *(v1 + 128);
  *(v0 + 3840) = v2;
  v3 = *(v1 + 136);
  *(v0 + 2630) = v3;
  if (v3)
  {
LABEL_6:
    v5 = *(v0 + 3632);
    v6 = *(v0 + 1936);
    *(v0 + 3888) = v6;
    v7 = *(v0 + 1944);
    *(v0 + 3896) = v7;
    sub_10000DA7C((v1 + *(v5 + 68)), *(v1 + *(v5 + 68) + 24));
    v8 = type metadata accessor for SnoutManager(0);
    *(v0 + 3904) = v8;
    v9 = swift_task_alloc();
    *(v0 + 3912) = v9;
    *v9 = v0;
    v9[1] = sub_100074524;
    v10 = *(v0 + 3760);

    return (sub_10016E534)(v10, v6, v7, v8, &off_100223858);
  }

  if (*(v0 + 2628) && *(v0 + 2628) != 1)
  {
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v4 & 1) == 0)
    {
      v1 = *(v0 + 3600);
      goto LABEL_6;
    }
  }

  v12 = *(v0 + 3728);
  v13 = *(v0 + 3720);
  v14 = *(v0 + 3712);
  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v16 = v15;
  v17 = *(v13 + 8);
  *(v0 + 3848) = v17;
  *(v0 + 3856) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  result = v17(v12, v14);
  v18 = v16 * 1000.0;
  if (COERCE__INT64(fabs(v16 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v18 <= -1.0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v18 >= 1.84467441e19)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v19 = *(v0 + 3760);
  v20 = v18;
  v21 = *(v0 + 3600);
  *(v0 + 4200) = 1;
  v23 = v21[23];
  v22 = v21[24];
  v24 = v21[25];
  v25 = swift_allocObject();
  *(v0 + 3864) = v25;
  *(v25 + 16) = 0;
  *(v25 + 24) = *(v0 + 4200);
  *(v25 + 25) = *(v0 + 1795);
  *(v25 + 28) = *(v0 + 1798);
  *(v25 + 32) = v19;
  *(v25 + 40) = v2;
  *(v25 + 48) = v20;
  v26 = swift_task_alloc();
  *(v0 + 3872) = v26;
  *v26 = v0;
  v26[1] = sub_100074274;

  return sub_10010ECB0(sub_10010ECB0, sub_100079004, v25, v23, v22, v24);
}

uint64_t sub_100074274()
{
  *(*v1 + 3880) = v0;

  if (v0)
  {
    v2 = sub_100077740;
  }

  else
  {
    v2 = sub_1000743A8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000743A8()
{
  v1 = v0[454];
  v2 = v0[450];
  v3 = v0[242];
  v0[486] = v3;
  v4 = v0[243];
  v0[487] = v4;
  sub_10000DA7C((v2 + *(v1 + 68)), *(v2 + *(v1 + 68) + 24));
  v5 = type metadata accessor for SnoutManager(0);
  v0[488] = v5;
  v6 = swift_task_alloc();
  v0[489] = v6;
  *v6 = v0;
  v6[1] = sub_100074524;
  v7 = v0[470];

  return (sub_10016E534)(v7, v3, v4, v5, &off_100223858);
}

uint64_t sub_100074524()
{

  return _swift_task_switch(sub_100074620, 0, 0);
}

uint64_t sub_100074620()
{
  v1 = *(v0 + 3728);
  v2 = *(v0 + 3720);
  v3 = *(v0 + 3712);
  v4 = *(v0 + 3600);
  v5 = sub_10000DA7C(v4 + 32, v4[35]);
  *(v0 + 3920) = v5;
  v6 = v4[13];
  *(v0 + 3928) = v6;
  v7 = v4[14];
  *(v0 + 3936) = v7;
  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v9 = v8;
  v10 = *(v2 + 8);
  *(v0 + 3944) = v10;
  *(v0 + 3952) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  result = v10(v1, v3);
  v12 = v9 * 1000.0;
  if (COERCE__INT64(fabs(v9 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v12 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v12 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v21 = *(v0 + 3888);
  v22 = *(v0 + 3896);
  v18 = v7;
  v13 = *(v0 + 2630);
  v14 = *(v0 + 3760);
  v19 = *(v0 + 2628);
  v20 = *(v0 + 2629);
  v23 = *(v0 + 3840);
  v24 = v12;
  v25 = v5[4];
  v26 = v5[3];
  v15 = v5[5];
  v16 = swift_allocObject();
  *(v0 + 3960) = v16;
  *(v16 + 16) = 0;
  *(v16 + 24) = 1;
  *(v16 + 25) = *(v0 + 1683);
  *(v16 + 28) = *(v0 + 1686);
  *(v16 + 32) = v14;
  *(v16 + 40) = v6;
  *(v16 + 48) = v18;
  *(v16 + 56) = 0;
  *(v16 + 64) = 1;
  *(v16 + 65) = 3;
  *(v16 + 67) = 0;
  *(v16 + 72) = v21;
  *(v16 + 80) = v22;
  *(v16 + 88) = v19;
  *(v16 + 89) = v20;
  *(v16 + 90) = 0;
  *(v16 + 95) = *(v0 + 2627);
  *(v16 + 91) = *(v0 + 2623);
  *(v16 + 96) = v23;
  *(v16 + 104) = v13;
  *(v16 + 108) = *(v0 + 2254);
  *(v16 + 105) = *(v0 + 2251);
  *(v16 + 112) = v24;
  *(v16 + 120) = 0;
  *(v16 + 128) = 1;
  *(v16 + 129) = *(v0 + 2265);
  *(v16 + 132) = *(v0 + 2268);
  *(v16 + 136) = 0;
  *(v16 + 144) = 1;
  *(v16 + 145) = *(v0 + 2371);
  *(v16 + 148) = *(v0 + 2374);
  *(v16 + 152) = 0;

  v17 = swift_task_alloc();
  *(v0 + 3968) = v17;
  *v17 = v0;
  v17[1] = sub_10007493C;

  return sub_10010E9F0(sub_10010E9F0, sub_100078CB8, v16, v26, v25, v15);
}

uint64_t sub_10007493C()
{
  *(*v1 + 3976) = v0;

  if (v0)
  {
    v2 = sub_10007511C;
  }

  else
  {
    v2 = sub_100074A70;
  }

  return _swift_task_switch(v2, 0, 0);
}

id sub_100074A70()
{
  if (*(v0 + 2628) > 1u)
  {
    sub_10000DA7C((*(v0 + 3600) + 256), *(*(v0 + 3600) + 280));
    v16 = swift_task_alloc();
    *(v0 + 4072) = v16;
    *v16 = v0;
    v16[1] = sub_100076158;
    v17 = *(v0 + 3896);
    v18 = *(v0 + 3888);

    return sub_100137450(v18, v17, 2);
  }

  else
  {
    v1 = *(v0 + 3936);
    v2 = *(v0 + 3928);
    *(v0 + 2631) = *(v0 + 2016);
    v3 = v2 == 0xD000000000000012 && 0x80000001001CB3C0 == v1;
    if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v4, v5, "Deferred conversion attribution and scheduling", v6, 2u);
      }

      result = [objc_opt_self() defaultStore];
      if (!result)
      {
        goto LABEL_35;
      }

      v8 = result;
      v9 = [result ams_activeiTunesAccount];
      *(v0 + 4008) = v9;

      if (v9)
      {
        v10 = v9;
        if ([v10 ams_accountID])
        {
          AccountIdentity.init(amsAccountID:)();

          v11 = Logger.logObject.getter();
          v12 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v11, v12))
          {
            v13 = swift_slowAlloc();
            *v13 = 0;
            _os_log_impl(&_mh_execute_header, v11, v12, "<Country code> Account found", v13, 2u);
          }

          type metadata accessor for AccountCachedServerData();
          *(v0 + 4016) = static AccountCachedServerData.shared.getter();
          v14 = swift_task_alloc();
          *(v0 + 4024) = v14;
          *v14 = v0;
          v14[1] = sub_100075B78;
          v15 = *(v0 + 3680);

          return sub_1000A6454(10, v15, 0);
        }
      }

      v23 = *(v0 + 3944);
      v24 = *(v0 + 3728);
      v25 = *(v0 + 3712);

      static Date.now.getter();
      Date.timeIntervalSince1970.getter();
      v27 = v26;
      result = v23(v24, v25);
      v28 = v27 * 1000.0;
      if (COERCE__INT64(fabs(v27 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v28 > -1.0)
      {
        if (v28 < 1.84467441e19)
        {
          v29 = *(v0 + 2631);
          v30 = *(v0 + 3936);
          v31 = *(v0 + 3928);
          v32 = *(v0 + 3896);
          v33 = *(v0 + 3888);
          v34 = *(v0 + 3760);
          *(v0 + 2720) = 0;
          *(v0 + 2728) = 1;
          *(v0 + 2736) = v34;
          *(v0 + 2744) = v29;
          *(v0 + 2752) = v28;
          *(v0 + 2760) = v33;
          *(v0 + 2768) = v32;
          *(v0 + 2776) = v31;
          *(v0 + 2784) = v30;
          *(v0 + 2792) = 0;
          *(v0 + 2800) = 0u;
          *(v0 + 2816) = 1;
          *(v0 + 2824) = v34;
          *(v0 + 2832) = v29;
          *(v0 + 2840) = v28;
          *(v0 + 2848) = v33;
          *(v0 + 2856) = v32;
          *(v0 + 2864) = v31;
          *(v0 + 2872) = v30;
          *(v0 + 2880) = 0u;
          sub_100047148(v0 + 2720, v0 + 2632);
          sub_10003BD1C(v0 + 2808);
          v35 = *(v0 + 2800);
          v43 = *(v0 + 2768);
          v44 = *(v0 + 2784);
          v42 = *(v0 + 2752);
          v36 = *(v0 + 2744);
          v37 = *(v0 + 2736);
          v38 = *(v0 + 2720);
          v39 = *(v0 + 2728);
          *(v0 + 4184) = v39;
          v40 = swift_allocObject();
          *(v0 + 4048) = v40;
          *(v40 + 16) = v38;
          *(v40 + 24) = v39;
          *(v40 + 25) = *(v0 + 2385);
          *(v40 + 28) = *(v0 + 2388);
          *(v40 + 32) = v37;
          *(v40 + 40) = v36;
          *(v40 + 41) = *(v0 + 2491);
          *(v40 + 44) = *(v0 + 2494);
          *(v40 + 48) = v42;
          *(v40 + 64) = v43;
          *(v40 + 80) = v44;
          *(v40 + 96) = v35;
          v41 = swift_task_alloc();
          *(v0 + 4056) = v41;
          *v41 = v0;
          v41[1] = sub_100075F88;

          return (sub_10010EE10)();
        }

        goto LABEL_34;
      }

      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      return result;
    }

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Register conversion attribution", v21, 2u);
    }

    v22 = swift_task_alloc();
    *(v0 + 3992) = v22;
    *v22 = v0;
    v22[1] = sub_10007557C;

    return sub_1000782F4();
  }
}

uint64_t sub_10007511C(uint64_t a1)
{
  v2 = *(v1 + 3704);
  v3 = *(v1 + 3696);
  v4 = *(v1 + 3688);
  v5 = Logger.postback.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Creation of pending postback failed %@", v8, 0xCu);
    sub_10000DAF8(v9, &qword_100239F10, &qword_1001B4FD0);
  }

  v11 = *(v1 + 3976);
  v12 = *(v1 + 3920);
  v13 = *(v1 + 3896);
  v14 = *(v1 + 3704);
  v15 = *(v1 + 3696);
  v16 = *(v1 + 3688);
  v17 = *(v1 + 2628);

  (*(v15 + 8))(v14, v16);
  swift_errorRetain();
  sub_1000C7DDC(v17, v11, (v1 + 1360));

  sub_10000DA7C((v12 + 560), *(v12 + 584));
  v18 = swift_task_alloc();
  *(v1 + 3984) = v18;
  *v18 = v1;
  v18[1] = sub_1000753CC;
  v19 = *(v1 + 3904);
  v20 = *(v1 + 3888);

  return (sub_10016E27C)(v1 + 1360, v20, v13, 1, v19, &off_100223858);
}

uint64_t sub_1000753CC()
{
  v1 = *v0;

  sub_10003AE8C(v1 + 1360);

  return _swift_task_switch(sub_1000754D0, 0, 0);
}

uint64_t sub_1000754D0(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_10007557C()
{

  return _swift_task_switch(sub_100075678, 0, 0);
}

uint64_t sub_100075678()
{
  sub_10000DA7C((*(v0 + 3600) + 256), *(*(v0 + 3600) + 280));
  v1 = swift_task_alloc();
  *(v0 + 4000) = v1;
  *v1 = v0;
  v1[1] = sub_100075728;
  v2 = *(v0 + 3896);
  v3 = *(v0 + 3888);
  v4 = *(v0 + 2628);

  return sub_100137450(v3, v2, v4);
}

uint64_t sub_100075728()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_1000758A8, 0, 0);
  }
}

uint64_t sub_1000758A8()
{
  v1 = *(v0 + 3944);
  v2 = *(v0 + 3728);
  v3 = *(v0 + 3712);
  v4 = *(v0 + 3600);
  v6 = *(v4 + 144);
  v5 = *(v4 + 152);

  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v8 = v7;
  result = v1(v2, v3);
  v10 = v8 * 1000.0;
  if (COERCE__INT64(fabs(v8 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v10 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v11 = *(v0 + 2631);
  v12 = *(v0 + 3936);
  v13 = *(v0 + 3928);
  v14 = *(v0 + 3896);
  v15 = *(v0 + 3888);
  v16 = *(v0 + 3760);
  *(v0 + 3072) = 0;
  *(v0 + 3080) = 1;
  *(v0 + 3088) = v16;
  *(v0 + 3096) = v11;
  *(v0 + 3104) = v10;
  *(v0 + 3112) = v15;
  *(v0 + 3120) = v14;
  *(v0 + 3128) = v13;
  *(v0 + 3136) = v12;
  *(v0 + 3144) = v6;
  *(v0 + 3152) = v5;
  *(v0 + 3160) = 0;
  *(v0 + 3168) = 1;
  *(v0 + 3176) = v16;
  *(v0 + 3184) = v11;
  *(v0 + 3192) = v10;
  *(v0 + 3200) = v15;
  *(v0 + 3208) = v14;
  *(v0 + 3216) = v13;
  *(v0 + 3224) = v12;
  *(v0 + 3232) = v6;
  *(v0 + 3240) = v5;
  sub_100047148(v0 + 3072, v0 + 2984);
  sub_10003BD1C(v0 + 3160);
  v17 = *(v0 + 3152);
  v25 = *(v0 + 3120);
  v26 = *(v0 + 3136);
  v24 = *(v0 + 3104);
  v18 = *(v0 + 3096);
  v19 = *(v0 + 3088);
  v20 = *(v0 + 3072);
  v21 = *(v0 + 3080);
  *(v0 + 4184) = v21;
  v22 = swift_allocObject();
  *(v0 + 4048) = v22;
  *(v22 + 16) = v20;
  *(v22 + 24) = v21;
  *(v22 + 25) = *(v0 + 2385);
  *(v22 + 28) = *(v0 + 2388);
  *(v22 + 32) = v19;
  *(v22 + 40) = v18;
  *(v22 + 41) = *(v0 + 2491);
  *(v22 + 44) = *(v0 + 2494);
  *(v22 + 48) = v24;
  *(v22 + 64) = v25;
  *(v22 + 80) = v26;
  *(v22 + 96) = v17;
  v23 = swift_task_alloc();
  *(v0 + 4056) = v23;
  *v23 = v0;
  v23[1] = sub_100075F88;

  return (sub_10010EE10)();
}

uint64_t sub_100075B78(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 4016);
  *(v3 + 4032) = a1;
  *(v3 + 4040) = a2;

  return _swift_task_switch(sub_100075C98, 0, 0);
}

uint64_t sub_100075C98()
{
  v1 = *(v0 + 3680);
  v2 = *(v0 + 3672);
  v3 = *(v0 + 3664);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 4040);
  v5 = *(v0 + 4032);
  v6 = *(v0 + 3944);
  v7 = *(v0 + 3728);
  v8 = *(v0 + 3712);

  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v10 = v9;
  result = v6(v7, v8);
  v12 = v10 * 1000.0;
  if (COERCE__INT64(fabs(v10 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v12 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v12 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v13 = *(v0 + 2631);
  v14 = *(v0 + 3936);
  v15 = *(v0 + 3928);
  v16 = *(v0 + 3896);
  v17 = *(v0 + 3888);
  v18 = *(v0 + 3760);
  *(v0 + 2720) = 0;
  *(v0 + 2728) = 1;
  *(v0 + 2736) = v18;
  *(v0 + 2744) = v13;
  *(v0 + 2752) = v12;
  *(v0 + 2760) = v17;
  *(v0 + 2768) = v16;
  *(v0 + 2776) = v15;
  *(v0 + 2784) = v14;
  *(v0 + 2792) = v5;
  *(v0 + 2800) = v4;
  *(v0 + 2808) = 0;
  *(v0 + 2816) = 1;
  *(v0 + 2824) = v18;
  *(v0 + 2832) = v13;
  *(v0 + 2840) = v12;
  *(v0 + 2848) = v17;
  *(v0 + 2856) = v16;
  *(v0 + 2864) = v15;
  *(v0 + 2872) = v14;
  *(v0 + 2880) = v5;
  *(v0 + 2888) = v4;
  sub_100047148(v0 + 2720, v0 + 2632);
  sub_10003BD1C(v0 + 2808);
  v19 = *(v0 + 2800);
  v27 = *(v0 + 2768);
  v28 = *(v0 + 2784);
  v26 = *(v0 + 2752);
  v20 = *(v0 + 2744);
  v21 = *(v0 + 2736);
  v22 = *(v0 + 2720);
  v23 = *(v0 + 2728);
  *(v0 + 4184) = v23;
  v24 = swift_allocObject();
  *(v0 + 4048) = v24;
  *(v24 + 16) = v22;
  *(v24 + 24) = v23;
  *(v24 + 25) = *(v0 + 2385);
  *(v24 + 28) = *(v0 + 2388);
  *(v24 + 32) = v21;
  *(v24 + 40) = v20;
  *(v24 + 41) = *(v0 + 2491);
  *(v24 + 44) = *(v0 + 2494);
  *(v24 + 48) = v26;
  *(v24 + 64) = v27;
  *(v24 + 80) = v28;
  *(v24 + 96) = v19;
  v25 = swift_task_alloc();
  *(v0 + 4056) = v25;
  *v25 = v0;
  v25[1] = sub_100075F88;

  return (sub_10010EE10)();
}

uint64_t sub_100075F88()
{
  *(*v1 + 4064) = v0;

  if (v0)
  {
    v2 = sub_100078024;
  }

  else
  {
    v2 = sub_1000760BC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000760BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100076158()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_1000762D8, 0, 0);
  }
}

uint64_t sub_1000762D8()
{
  v1 = v0[457];
  v2 = v0[455];
  v3 = v0[450];
  v4 = v3[26];
  v0[510] = v4;
  v5 = v3[27];
  v0[511] = v5;
  v6 = v3[28];
  v0[512] = v6;
  sub_100078CD4(v3, v1);
  v7 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v8 = swift_allocObject();
  v0[513] = v8;
  sub_100078EAC(v1, v8 + v7);
  v9 = swift_task_alloc();
  v0[514] = v9;
  *v9 = v0;
  v9[1] = sub_10007641C;

  return sub_10010FF18((v0 + 439), sub_100078F10, v8, v4, v5, v6);
}

uint64_t sub_10007641C()
{
  *(*v1 + 4120) = v0;

  if (v0)
  {
    v2 = sub_100077EDC;
  }

  else
  {
    v2 = sub_100076540;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100076540()
{
  v1 = *(v0 + 3544);
  *(v0 + 3472) = *(v0 + 3560);
  *(v0 + 3456) = v1;
  *(v0 + 3488) = *(v0 + 3576);
  v2 = *(v0 + 3528);
  *(v0 + 3424) = *(v0 + 3512);
  *(v0 + 3504) = *(v0 + 3592);
  *(v0 + 3440) = v2;
  if (*(v0 + 3472))
  {
    v3 = *(v0 + 3504);
    v4 = *(v0 + 3496);

    sub_10000DAF8(v0 + 3424, &qword_10023B690, &qword_1001B9260);
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  v5 = *(v0 + 3944);
  v6 = *(v0 + 3728);
  v7 = *(v0 + 3712);

  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v9 = v8;
  result = v5(v6, v7);
  v11 = v9 * 1000.0;
  if (COERCE__INT64(fabs(v9 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v11 <= -1.0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v11 >= 1.84467441e19)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = *(v0 + 3936);
  v13 = *(v0 + 3928);
  v14 = *(v0 + 3896);
  v15 = *(v0 + 3888);
  v16 = *(v0 + 3760);
  *(v0 + 2896) = 0;
  *(v0 + 2904) = 1;
  *(v0 + 2912) = v16;
  *(v0 + 2920) = 2;
  *(v0 + 2928) = v11;
  *(v0 + 2936) = v15;
  *(v0 + 2944) = v14;
  *(v0 + 2952) = v13;
  *(v0 + 2960) = v12;
  *(v0 + 2968) = v4;
  *(v0 + 2976) = v3;
  *(v0 + 3336) = 0;
  *(v0 + 3344) = 1;
  *(v0 + 3352) = v16;
  *(v0 + 3360) = 2;
  *(v0 + 3368) = v11;
  *(v0 + 3376) = v15;
  *(v0 + 3384) = v14;
  *(v0 + 3392) = v13;
  *(v0 + 3400) = v12;
  *(v0 + 3408) = v4;
  *(v0 + 3416) = v3;
  sub_100047148(v0 + 2896, v0 + 3248);
  sub_10003BD1C(v0 + 3336);
  v17 = swift_allocObject();
  *(v17 + 96) = *(v0 + 2976);
  *(v0 + 4128) = v17;
  v18 = *(v0 + 2944);
  *(v17 + 48) = *(v0 + 2928);
  *(v17 + 64) = v18;
  *(v17 + 80) = *(v0 + 2960);
  v19 = *(v0 + 2912);
  *(v17 + 16) = *(v0 + 2896);
  *(v17 + 32) = v19;
  v20 = swift_task_alloc();
  *(v0 + 4136) = v20;
  *v20 = v0;
  v20[1] = sub_1000767F4;
  v21 = *(v0 + 4096);
  v22 = *(v0 + 4088);
  v23 = *(v0 + 4080);

  return sub_10010EE10(sub_10010EE10, sub_100079528, v17, v23, v22, v21);
}

uint64_t sub_1000767F4()
{
  *(*v1 + 4144) = v0;

  if (v0)
  {
    v2 = sub_100077F80;
  }

  else
  {
    v2 = sub_1000760BC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100076928()
{
  v1 = *v0;

  sub_10003AE8C(v1 + 912);

  return _swift_task_switch(sub_100076A2C, 0, 0);
}

uint64_t sub_100076A2C(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_100076AD8()
{
  v1 = *(v0 + 3808);
  v54 = *(v0 + 3760);
  *(v0 + 4152) = v1;
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to register conversion: %@", v4, 0xCu);
    sub_10000DAF8(v5, &qword_100239F10, &qword_1001B4FD0);
  }

  v7 = *(v0 + 2628);
  v51 = (v0 + 2618);
  v52 = (v0 + 2505);
  v8 = *(v0 + 3728);
  v48 = (v0 + 1802);
  v49 = (v0 + 2498);
  v45 = (v0 + 1690);
  v46 = (v0 + 2378);
  v9 = *(v0 + 3720);
  v50 = (v0 + 1907);
  v40 = *(v0 + 3712);
  v55 = *(v0 + 3632);
  v10 = *(v0 + 3624);
  v11 = *(v0 + 3616);
  v12 = *(v0 + 3608);
  v53 = *(v0 + 3600);

  v47 = v7 > 1;
  swift_errorRetain();
  v13 = sub_1000C7C10(v1);
  v43 = v14;
  v44 = v13;
  v41 = v16;
  v42 = v15;
  static Date.now.getter();
  (*(v11 + 104))(v10, enum case for Calendar.Component.hour(_:), v12);
  v17 = sub_100025808(v8, v10);
  LOBYTE(v7) = v18;
  (*(v11 + 8))(v10, v12);
  (*(v9 + 8))(v8, v40);
  if (v7)
  {
    v19 = 0;
  }

  else
  {
    v19 = v17;
  }

  v20 = [objc_opt_self() buildVersion];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  *(v0 + 4176) = 1;
  *(v0 + 4192) = 1;
  *(v0 + 4232) = 1;
  *(v0 + 4272) = 1;
  *(v0 + 4256) = 1;
  *(v0 + 912) = 5;
  *(v0 + 914) = *v45;
  *(v0 + 918) = *(v0 + 1694);
  *(v0 + 920) = v44;
  *(v0 + 928) = v43;
  *(v0 + 936) = v42;
  *(v0 + 944) = v41;
  *(v0 + 952) = 0u;
  *(v0 + 968) = v19;
  *(v0 + 976) = v21;
  *(v0 + 984) = v23;
  *(v0 + 992) = 0;
  *(v0 + 993) = 33686018;
  *(v0 + 997) = 0;
  *(v0 + 1000) = 0;
  v24 = *(v0 + 4176);
  *(v0 + 1008) = v24;
  *(v0 + 1009) = *v46;
  *(v0 + 1012) = *(v0 + 2381);
  *(v0 + 1016) = 0;
  v25 = *(v0 + 4192);
  *(v0 + 1024) = v25;
  *(v0 + 1025) = 3;
  *(v0 + 1026) = *v48;
  *(v0 + 1030) = *(v0 + 1806);
  *(v0 + 1032) = 0;
  v26 = *(v0 + 4232);
  *(v0 + 1040) = v26;
  *(v0 + 1044) = *(v0 + 2501);
  *(v0 + 1041) = *v49;
  *(v0 + 1048) = 0;
  v27 = *(v0 + 4272);
  *(v0 + 1056) = v27;
  *(v0 + 1057) = v47;
  *(v0 + 1058) = 3;
  *(v0 + 1063) = *(v0 + 2622);
  *(v0 + 1059) = *v51;
  *(v0 + 1064) = 0;
  v28 = *(v0 + 4256);
  *(v0 + 1072) = v28;
  v29 = *v50;
  *(v0 + 1076) = *(v0 + 1910);
  *(v0 + 1073) = v29;
  *(v0 + 1080) = 0u;
  *(v0 + 1096) = 514;
  *(v0 + 1098) = 2;
  v30 = *v52;
  *(v0 + 1103) = *(v0 + 2509);
  *(v0 + 1099) = v30;
  *(v0 + 1120) = 0u;
  *(v0 + 1104) = 0u;
  *(v0 + 1136) = 5;
  LODWORD(v20) = *v45;
  *(v0 + 1142) = *(v0 + 1694);
  *(v0 + 1138) = v20;
  *(v0 + 1144) = v44;
  *(v0 + 1152) = v43;
  *(v0 + 1160) = v42;
  *(v0 + 1168) = v41;
  *(v0 + 1176) = 0u;
  *(v0 + 1192) = v19;
  *(v0 + 1200) = v21;
  *(v0 + 1208) = v23;
  *(v0 + 1216) = 0;
  *(v0 + 1217) = 33686018;
  *(v0 + 1221) = 0;
  *(v0 + 1224) = 0;
  *(v0 + 1232) = v24;
  v31 = *v46;
  *(v0 + 1236) = *(v0 + 2381);
  *(v0 + 1233) = v31;
  *(v0 + 1240) = 0;
  *(v0 + 1248) = v25;
  *(v0 + 1249) = 3;
  v32 = *v48;
  *(v0 + 1254) = *(v0 + 1806);
  *(v0 + 1250) = v32;
  *(v0 + 1256) = 0;
  *(v0 + 1264) = v26;
  v33 = *v49;
  *(v0 + 1268) = *(v0 + 2501);
  *(v0 + 1265) = v33;
  *(v0 + 1272) = 0;
  *(v0 + 1280) = v27;
  *(v0 + 1281) = v47;
  *(v0 + 1282) = 3;
  v34 = *v51;
  *(v0 + 1287) = *(v0 + 2622);
  *(v0 + 1283) = v34;
  *(v0 + 1288) = 0;
  *(v0 + 1296) = v28;
  v35 = *v50;
  *(v0 + 1300) = *(v0 + 1910);
  *(v0 + 1297) = v35;
  *(v0 + 1304) = 0u;
  *(v0 + 1320) = 514;
  *(v0 + 1322) = 2;
  v36 = *v52;
  *(v0 + 1327) = *(v0 + 2509);
  *(v0 + 1323) = v36;
  *(v0 + 1344) = 0u;
  *(v0 + 1328) = 0u;
  sub_100010568(v0 + 912, v0 + 688);
  sub_10003AE8C(v0 + 1136);
  sub_10000DA7C((v53 + *(v55 + 68)), *(v53 + *(v55 + 68) + 24));
  v37 = type metadata accessor for SnoutManager(0);
  v38 = swift_task_alloc();
  *(v0 + 4160) = v38;
  *v38 = v0;
  v38[1] = sub_100076928;

  return (sub_10016E27C)(v0 + 912, v54, 0, 0, v37, &off_100223858);
}

uint64_t sub_10007710C()
{
  v1 = *(v0 + 3832);
  v54 = *(v0 + 3760);
  *(v0 + 4152) = v1;
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to register conversion: %@", v4, 0xCu);
    sub_10000DAF8(v5, &qword_100239F10, &qword_1001B4FD0);
  }

  v7 = *(v0 + 2628);
  v51 = (v0 + 2618);
  v52 = (v0 + 2505);
  v8 = *(v0 + 3728);
  v48 = (v0 + 1802);
  v49 = (v0 + 2498);
  v45 = (v0 + 1690);
  v46 = (v0 + 2378);
  v9 = *(v0 + 3720);
  v50 = (v0 + 1907);
  v40 = *(v0 + 3712);
  v55 = *(v0 + 3632);
  v10 = *(v0 + 3624);
  v11 = *(v0 + 3616);
  v12 = *(v0 + 3608);
  v53 = *(v0 + 3600);

  v47 = v7 > 1;
  swift_errorRetain();
  v13 = sub_1000C7C10(v1);
  v43 = v14;
  v44 = v13;
  v41 = v16;
  v42 = v15;
  static Date.now.getter();
  (*(v11 + 104))(v10, enum case for Calendar.Component.hour(_:), v12);
  v17 = sub_100025808(v8, v10);
  LOBYTE(v7) = v18;
  (*(v11 + 8))(v10, v12);
  (*(v9 + 8))(v8, v40);
  if (v7)
  {
    v19 = 0;
  }

  else
  {
    v19 = v17;
  }

  v20 = [objc_opt_self() buildVersion];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  *(v0 + 4176) = 1;
  *(v0 + 4192) = 1;
  *(v0 + 4232) = 1;
  *(v0 + 4272) = 1;
  *(v0 + 4256) = 1;
  *(v0 + 912) = 5;
  *(v0 + 914) = *v45;
  *(v0 + 918) = *(v0 + 1694);
  *(v0 + 920) = v44;
  *(v0 + 928) = v43;
  *(v0 + 936) = v42;
  *(v0 + 944) = v41;
  *(v0 + 952) = 0u;
  *(v0 + 968) = v19;
  *(v0 + 976) = v21;
  *(v0 + 984) = v23;
  *(v0 + 992) = 0;
  *(v0 + 993) = 33686018;
  *(v0 + 997) = 0;
  *(v0 + 1000) = 0;
  v24 = *(v0 + 4176);
  *(v0 + 1008) = v24;
  *(v0 + 1009) = *v46;
  *(v0 + 1012) = *(v0 + 2381);
  *(v0 + 1016) = 0;
  v25 = *(v0 + 4192);
  *(v0 + 1024) = v25;
  *(v0 + 1025) = 3;
  *(v0 + 1026) = *v48;
  *(v0 + 1030) = *(v0 + 1806);
  *(v0 + 1032) = 0;
  v26 = *(v0 + 4232);
  *(v0 + 1040) = v26;
  *(v0 + 1044) = *(v0 + 2501);
  *(v0 + 1041) = *v49;
  *(v0 + 1048) = 0;
  v27 = *(v0 + 4272);
  *(v0 + 1056) = v27;
  *(v0 + 1057) = v47;
  *(v0 + 1058) = 3;
  *(v0 + 1063) = *(v0 + 2622);
  *(v0 + 1059) = *v51;
  *(v0 + 1064) = 0;
  v28 = *(v0 + 4256);
  *(v0 + 1072) = v28;
  v29 = *v50;
  *(v0 + 1076) = *(v0 + 1910);
  *(v0 + 1073) = v29;
  *(v0 + 1080) = 0u;
  *(v0 + 1096) = 514;
  *(v0 + 1098) = 2;
  v30 = *v52;
  *(v0 + 1103) = *(v0 + 2509);
  *(v0 + 1099) = v30;
  *(v0 + 1120) = 0u;
  *(v0 + 1104) = 0u;
  *(v0 + 1136) = 5;
  LODWORD(v20) = *v45;
  *(v0 + 1142) = *(v0 + 1694);
  *(v0 + 1138) = v20;
  *(v0 + 1144) = v44;
  *(v0 + 1152) = v43;
  *(v0 + 1160) = v42;
  *(v0 + 1168) = v41;
  *(v0 + 1176) = 0u;
  *(v0 + 1192) = v19;
  *(v0 + 1200) = v21;
  *(v0 + 1208) = v23;
  *(v0 + 1216) = 0;
  *(v0 + 1217) = 33686018;
  *(v0 + 1221) = 0;
  *(v0 + 1224) = 0;
  *(v0 + 1232) = v24;
  v31 = *v46;
  *(v0 + 1236) = *(v0 + 2381);
  *(v0 + 1233) = v31;
  *(v0 + 1240) = 0;
  *(v0 + 1248) = v25;
  *(v0 + 1249) = 3;
  v32 = *v48;
  *(v0 + 1254) = *(v0 + 1806);
  *(v0 + 1250) = v32;
  *(v0 + 1256) = 0;
  *(v0 + 1264) = v26;
  v33 = *v49;
  *(v0 + 1268) = *(v0 + 2501);
  *(v0 + 1265) = v33;
  *(v0 + 1272) = 0;
  *(v0 + 1280) = v27;
  *(v0 + 1281) = v47;
  *(v0 + 1282) = 3;
  v34 = *v51;
  *(v0 + 1287) = *(v0 + 2622);
  *(v0 + 1283) = v34;
  *(v0 + 1288) = 0;
  *(v0 + 1296) = v28;
  v35 = *v50;
  *(v0 + 1300) = *(v0 + 1910);
  *(v0 + 1297) = v35;
  *(v0 + 1304) = 0u;
  *(v0 + 1320) = 514;
  *(v0 + 1322) = 2;
  v36 = *v52;
  *(v0 + 1327) = *(v0 + 2509);
  *(v0 + 1323) = v36;
  *(v0 + 1344) = 0u;
  *(v0 + 1328) = 0u;
  sub_100010568(v0 + 912, v0 + 688);
  sub_10003AE8C(v0 + 1136);
  sub_10000DA7C((v53 + *(v55 + 68)), *(v53 + *(v55 + 68) + 24));
  v37 = type metadata accessor for SnoutManager(0);
  v38 = swift_task_alloc();
  *(v0 + 4160) = v38;
  *v38 = v0;
  v38[1] = sub_100076928;

  return (sub_10016E27C)(v0 + 912, v54, 0, 0, v37, &off_100223858);
}

uint64_t sub_100077740()
{
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to create conversion tag: %@", v3, 0xCu);
    sub_10000DAF8(v4, &qword_100239F10, &qword_1001B4FD0);
  }

  v54 = (v0 + 2515);
  v6 = *(v0 + 3880);
  v47 = (v0 + 1914);
  v48 = (v0 + 2145);
  v42 = *(v0 + 3848);
  v50 = (v0 + 2026);
  v51 = (v0 + 2138);
  v52 = (v0 + 2131);
  v53 = (v0 + 2510);
  v7 = *(v0 + 2628);
  v8 = *(v0 + 3728);
  v9 = *(v0 + 3712);
  v10 = *(v0 + 3624);
  v11 = *(v0 + 3616);
  v12 = *(v0 + 3608);
  v55 = *(v0 + 3600);
  v56 = *(v0 + 3632);

  v49 = v7 > 1;
  swift_errorRetain();
  v13 = sub_1000C7C10(v6);
  v45 = v14;
  v46 = v13;
  v43 = v16;
  v44 = v15;
  static Date.now.getter();
  (*(v11 + 104))(v10, enum case for Calendar.Component.hour(_:), v12);
  v17 = sub_100025808(v8, v10);
  LOBYTE(v7) = v18;
  (*(v11 + 8))(v10, v12);
  v42(v8, v9);
  if (v7)
  {
    v19 = 0;
  }

  else
  {
    v19 = v17;
  }

  v20 = [objc_opt_self() buildVersion];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  *(v0 + 4208) = 1;
  *(v0 + 4216) = 1;
  *(v0 + 4224) = 1;
  *(v0 + 4240) = 1;
  *(v0 + 4248) = 1;
  *(v0 + 16) = 5;
  *(v0 + 18) = *v47;
  *(v0 + 22) = *(v0 + 1918);
  *(v0 + 24) = v46;
  *(v0 + 32) = v45;
  *(v0 + 40) = v44;
  *(v0 + 48) = v43;
  *(v0 + 56) = 0u;
  *(v0 + 72) = v19;
  *(v0 + 80) = v21;
  *(v0 + 88) = v23;
  *(v0 + 96) = 0;
  *(v0 + 97) = 33686018;
  *(v0 + 101) = 0;
  *(v0 + 104) = 0;
  v24 = *(v0 + 4208);
  *(v0 + 112) = v24;
  *(v0 + 113) = *v48;
  *(v0 + 116) = *(v0 + 2148);
  *(v0 + 120) = 0;
  v25 = *(v0 + 4216);
  *(v0 + 128) = v25;
  *(v0 + 129) = 3;
  *(v0 + 130) = *v50;
  *(v0 + 134) = *(v0 + 2030);
  *(v0 + 136) = 0;
  v26 = *(v0 + 4224);
  *(v0 + 144) = v26;
  v27 = *v51;
  *(v0 + 148) = *(v0 + 2141);
  *(v0 + 145) = v27;
  *(v0 + 152) = 0;
  v28 = *(v0 + 4240);
  *(v0 + 160) = v28;
  *(v0 + 161) = v49;
  *(v0 + 162) = 3;
  *(v0 + 167) = *(v0 + 2514);
  *(v0 + 163) = *v53;
  *(v0 + 168) = 0;
  v29 = *(v0 + 4248);
  *(v0 + 176) = v29;
  *(v0 + 177) = *v52;
  *(v0 + 180) = *(v0 + 2134);
  *(v0 + 184) = 0u;
  *(v0 + 200) = 514;
  *(v0 + 202) = 2;
  v30 = *v54;
  *(v0 + 207) = *(v0 + 2519);
  *(v0 + 203) = v30;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  *(v0 + 464) = 5;
  v31 = *v47;
  *(v0 + 470) = *(v0 + 1918);
  *(v0 + 466) = v31;
  *(v0 + 472) = v46;
  *(v0 + 480) = v45;
  *(v0 + 488) = v44;
  *(v0 + 496) = v43;
  *(v0 + 504) = 0u;
  *(v0 + 520) = v19;
  *(v0 + 528) = v21;
  *(v0 + 536) = v23;
  *(v0 + 544) = 0;
  *(v0 + 545) = 33686018;
  *(v0 + 549) = 0;
  *(v0 + 552) = 0;
  *(v0 + 560) = v24;
  v32 = *v48;
  *(v0 + 564) = *(v0 + 2148);
  *(v0 + 561) = v32;
  *(v0 + 568) = 0;
  *(v0 + 576) = v25;
  *(v0 + 577) = 3;
  v33 = *v50;
  *(v0 + 582) = *(v0 + 2030);
  *(v0 + 578) = v33;
  *(v0 + 584) = 0;
  *(v0 + 592) = v26;
  v34 = *v51;
  *(v0 + 596) = *(v0 + 2141);
  *(v0 + 593) = v34;
  *(v0 + 600) = 0;
  *(v0 + 608) = v28;
  *(v0 + 609) = v49;
  *(v0 + 610) = 3;
  v35 = *v53;
  *(v0 + 615) = *(v0 + 2514);
  *(v0 + 611) = v35;
  *(v0 + 616) = 0;
  *(v0 + 624) = v29;
  v36 = *v52;
  *(v0 + 628) = *(v0 + 2134);
  *(v0 + 625) = v36;
  *(v0 + 632) = 0u;
  *(v0 + 648) = 514;
  *(v0 + 650) = 2;
  v37 = *v54;
  *(v0 + 655) = *(v0 + 2519);
  *(v0 + 651) = v37;
  *(v0 + 656) = 0u;
  *(v0 + 672) = 0u;
  sub_100010568(v0 + 16, v0 + 240);
  sub_10003AE8C(v0 + 464);
  sub_10000DA7C((v55 + *(v56 + 68)), *(v55 + *(v56 + 68) + 24));
  v38 = type metadata accessor for SnoutManager(0);
  v39 = swift_task_alloc();
  *(v0 + 4168) = v39;
  *v39 = v0;
  v39[1] = sub_100077D2C;
  v40 = *(v0 + 3760);

  return (sub_10016E27C)(v0 + 16, v40, 0, 0, v38, &off_100223858);
}