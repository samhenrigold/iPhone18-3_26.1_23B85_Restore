void sub_100082618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10002EB80(&qword_10019AB18, &qword_10014F888);
  __chkstk_darwin(v8 - 8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for ConnectionTransactionSerializer.Transaction(0);
  __chkstk_darwin(v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC10LinkDaemon31ConnectionTransactionSerializer_count;
  v15 = *(a2 + OBJC_IVAR____TtC10LinkDaemon31ConnectionTransactionSerializer_count);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(a2 + OBJC_IVAR____TtC10LinkDaemon31ConnectionTransactionSerializer_count) = v17;

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v28 = a4;
      v21 = a1;
      v22 = a3;
      v23 = v20;
      *v20 = 134217984;
      *(v20 + 4) = *(a2 + v14);

      _os_log_impl(&_mh_execute_header, v18, v19, "Queueing transaction request: %ld", v23, 0xCu);
      a3 = v22;
      a1 = v21;
      a4 = v28;
    }

    else
    {
    }

    v24 = *(a2 + v14);
    v25 = *(v11 + 24);
    v26 = sub_10002EB80(&qword_10019A9F8, &qword_10014F7D8);
    (*(*(v26 - 8) + 16))(&v13[v25], a1, v26);
    *v13 = v24;
    *(v13 + 1) = a3;
    *(v13 + 2) = a4;
    swift_beginAccess();
    sub_100084178(v13, v10, type metadata accessor for ConnectionTransactionSerializer.Transaction);

    sub_1000F525C(0, 0);
    swift_endAccess();
    v27 = OBJC_IVAR____TtC10LinkDaemon31ConnectionTransactionSerializer_processingTask;
    if (!*(a2 + OBJC_IVAR____TtC10LinkDaemon31ConnectionTransactionSerializer_processingTask))
    {
      *(a2 + v27) = sub_1000828C0();
    }
  }
}

uint64_t sub_1000828C0()
{
  v1 = sub_10002EB80(&qword_100198C20, &qword_10014D090);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  v4 = type metadata accessor for TaskPriority();
  sub_1000075C4(v3, 1, 1, v4);
  sub_100018730();
  v7 = sub_100084084(v5, v6);
  v8 = swift_allocObject();
  v8[2] = v0;
  v8[3] = v7;
  v8[4] = v0;
  swift_retain_n();
  return sub_10003A6C0(0, 0, v3, &unk_10014F878, v8);
}

uint64_t sub_1000829CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  sub_10002EB80(&qword_10019AB10, &qword_10014F880);
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for ConnectionTransactionSerializer.Transaction(0);
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_100082AD4, a4, 0);
}

uint64_t sub_100082E24()
{
  sub_1000070C8();
  v2 = *v1;
  sub_100007A64();
  *v4 = v3;
  v5 = *v1;
  sub_100007A64();
  *v6 = v5;
  *(v8 + 144) = v7;
  *(v8 + 152) = v0;

  v9 = *(v2 + 56);
  if (v0)
  {
    v10 = sub_1000832F0;
  }

  else
  {
    v10 = sub_100082F4C;
  }

  return _swift_task_switch(v10, v9, 0);
}

void sub_100082F4C()
{
  sub_100004884();
  sub_1000132B4();
  v1._countAndFlagsBits = 0xD000000000000012;
  Connection.execute(_:)(v1);
  if (!v2)
  {
    v0[6] = v0[18];
    v4 = v0[12];
    sub_10002EB80(&qword_10019A9F8, &qword_10014F7D8);
    CheckedContinuation.resume(returning:)();
    goto LABEL_4;
  }

  v3 = v2;

  while (1)
  {
    v39._countAndFlagsBits = 0xD000000000000014;
    v39._object = 0x8000000100155B90;
    Connection.execute(_:)(v39);
    if (v4)
    {
    }

    sub_100011378();
    v0[5] = v3;
    v40 = sub_10002EB80(&qword_10019A9F8, &qword_10014F7D8);
    sub_10001A604(v40);
LABEL_4:
    sub_100083F2C(v4, type metadata accessor for ConnectionTransactionSerializer.Transaction);
    v5 = v0[13];
    v6 = v0[7];
    sub_1000112AC(v6 + v5);
    v7 = *(v6 + v5);
    v8 = 1;
    if (*(v7 + 16))
    {
      break;
    }

LABEL_9:
    v18 = v0[8];
    sub_100084468(v18, v8);
    sub_100009C04(v18);
    if (v19)
    {
      v41 = v0[7];
      sub_100039B5C(v0[8], &qword_10019AB10, &qword_10014F880);
      *(v41 + OBJC_IVAR____TtC10LinkDaemon31ConnectionTransactionSerializer_processingTask) = 0;

      sub_100003A00();
      sub_10001064C();

      __asm { BRAA            X1, X16 }
    }

    v20 = v0[11];
    v21 = v0[12];
    sub_100007B68();
    sub_100084178(v22, v21, v23);
    v24 = sub_10001183C();
    sub_100083E3C(v24, v20, v25);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    v28 = sub_10001A88C();
    v30 = os_log_type_enabled(v28, v29);
    v31 = v0[11];
    if (v30)
    {
      v32 = sub_100007764();
      *v32 = 134217984;
      v33 = *v31;
      sub_1000067BC();
      sub_100083F2C(v31, v34);
      *(v32 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v26, v27, "Handling transaction request: %ld", v32, 0xCu);
      sub_100004DE4();
    }

    else
    {
      sub_100083F2C(v0[11], type metadata accessor for ConnectionTransactionSerializer.Transaction);
    }

    v35 = v0[15];
    v36 = v0[7];

    v0[16] = *(v36 + v35);
    v37._countAndFlagsBits = 0xD00000000000001BLL;
    v37._object = 0x8000000100155B70;
    Connection.execute(_:)(v37);
    v3 = v38;
    if (!v38)
    {
      sub_1000037BC();
      v56 = v44;
      v45 = swift_task_alloc();
      v0[17] = v45;
      *v45 = v0;
      sub_100004ED0(v45, v46, v47, v48, v49, v50, v51, v52, v56);
      sub_10001064C();

      __asm { BRAA            X0, X16 }
    }
  }

  v9 = v0[13];
  v10 = v0[7];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v10 + v9) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1000F51A8(v7);
    v7 = v55;
  }

  v12 = *(v7 + 16);
  if (v12)
  {
    v13 = v0[13];
    v14 = v0[7];
    *(v7 + 16) = v12 - 1;
    *(v14 + v13) = v7;
    sub_100007B68();
    sub_100084178(v15, v16, v17);
    v8 = 0;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_100083628()
{
  v1 = OBJC_IVAR____TtC10LinkDaemon31ConnectionTransactionSerializer_logger;
  type metadata accessor for Logger();
  sub_100002978();
  (*(v2 + 8))(v0 + v1);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000836B4()
{
  sub_100083628();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100083708(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

void sub_100083820(uint64_t a1)
{
  sub_1000838B4();
  if (v1 <= 0x3F)
  {
    sub_1000838FC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1000838B4()
{
  result = qword_10019AA68;
  if (!qword_10019AA68)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_10019AA68);
  }

  return result;
}

void sub_1000838FC(uint64_t a1)
{
  if (!qword_10019AA70)
  {
    sub_10002EC70(qword_10019AA78, &unk_10014F7F0);
    sub_10002EC70(&unk_100198760, &qword_10014F3C0);
    v1 = type metadata accessor for CheckedContinuation();
    if (!v2)
    {
      atomic_store(v1, &qword_10019AA70);
    }
  }
}

id sub_100083984()
{
  v1 = String._bridgeToObjectiveC()();

  sub_100002B74();
  v2 = String._bridgeToObjectiveC()();

  v3 = [v0 initWithBundleIdentifier:v1 actionIdentifier:v2];

  return v3;
}

unint64_t sub_100083A24()
{
  result = qword_10019AAB8;
  if (!qword_10019AAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019AAB8);
  }

  return result;
}

uint64_t sub_100083A94()
{
  sub_100004884();
  v2 = *(type metadata accessor for Logger() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 47) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v0 + v5);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v0 + v6);
  v11 = *(v0 + v6 + 8);
  v12 = swift_task_alloc();
  *(v1 + 16) = v12;
  *v12 = v1;
  v12[1] = sub_100083BD4;

  return sub_10007B8D4(v0 + v3, v0 + v4, v8, v9, v10, v11);
}

uint64_t sub_100083BD4()
{
  sub_1000036A0();
  v2 = v1;
  sub_1000036D0();
  v3 = *v0;
  sub_10000298C();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_100083CC0(uint64_t a1, uint64_t a2)
{
  v15[3] = type metadata accessor for LSLinkBundleRecord(0);
  v15[4] = &off_10018F930;
  v3 = sub_100013234(v15);
  sub_100083E3C(a2, v3, type metadata accessor for LSLinkBundleRecord);
  sub_100013334(v15, v14);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v8 = sub_1000034B4(v14, v14[3]);
    v9 = *v8;
    v10 = v8[1];

    sub_1000034F8(v14);
    v11 = sub_100004C50(v9, v10, &v13);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "✓ Completed indexing transaction for %{public}s", v6, 0xCu);
    sub_1000034F8(v7);
  }

  else
  {

    sub_1000034F8(v14);
  }

  return sub_1000034F8(v15);
}

uint64_t sub_100083E3C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_10000482C();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100083E9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100083F2C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100002978();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100084084(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000840C8()
{
  sub_1000070C8();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10000BEC4;

  return sub_1000829CC(v3, v4, v5, v6);
}

uint64_t sub_100084178(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_10000482C();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1000841E4()
{
  sub_1000070C8();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000BFAC;

  return sub_1000819D4(v2, v3, v4);
}

uint64_t sub_100084294(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100003D44(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000842EC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

void sub_100084300()
{
  type metadata accessor for Logger();
  v0 = sub_100002B74();

  sub_10007A790(v0, v1);
}

uint64_t sub_10008437C(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_100084398(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1000843AC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 9))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000843EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_100084430(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_100084468(uint64_t a1, uint64_t a2)
{
  sub_1000075C4(a1, a2, 1, v2);

  return swift_endAccess();
}

uint64_t sub_100084498(uint64_t a1, uint64_t a2)
{
  sub_10000347C(v2, a2);

  return Logger.logObject.getter();
}

void sub_1000844E4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

BOOL sub_100084504(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_10008451C()
{

  return sub_1001102E0(v0, v1);
}

char *sub_100084534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a3;
  v6 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  __chkstk_darwin(v6 - 8);
  v8 = &v32 - v7;
  if (qword_100198208 != -1)
  {
    swift_once();
  }

  memcpy(v50, &unk_10019DC48, 0xB0uLL);
  if (a2)
  {
    sub_1000196B0(v50, &v38);
    if (qword_100198210 != -1)
    {
      sub_100002B80();
      swift_once();
    }

    v38 = a1;
    v39 = a2;
    v9 = == infix<A>(_:_:)();
    v11 = v10;
    v13 = v12;
    memcpy(v37, v50, sizeof(v37));
    QueryType.filter(_:)(v9, v11, v13, &type metadata for Table, &protocol witness table for Table, v14, v15, v16, v32, v33, v34, v35, v36, v37[0], v37[1], v37[2], v37[3], v37[4], v37[5], v37[6], v37[7], v37[8], v37[9], v37[10], v37[11], v37[12], v37[13], v37[14], v37[15], v37[16], v37[17], v37[18], v37[19], v37[20], v37[21], v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48);

    sub_10001970C(v50);
    v17 = &v38;
  }

  else
  {
    sub_1000196B0(v50, &v38);
    v17 = v50;
  }

  memcpy(v49, v17, sizeof(v49));
  v41 = &type metadata for Table;
  v42 = &protocol witness table for Table;
  v38 = swift_allocObject();
  memcpy((v38 + 16), v49, 0xB0uLL);
  v18 = Connection.prepare(_:)(&v38);
  result = sub_1000034F8(&v38);
  if (!v3)
  {
    swift_retain_n();
    v33 = v18;
    v20 = dispatch thunk of _AnySequenceBox._makeIterator()();
    v34 = _swiftEmptyArrayStorage;
    v21 = &unk_100198000;
    v51 = v20;
    while (1)
    {
      dispatch thunk of _AnyIteratorBoxBase.next()();
      if (!v38)
      {
        break;
      }

      if (v21[66] != -1)
      {
        sub_100002B80();
        swift_once();
      }

      Row.get<A>(_:)();
      v22 = v38;
      v23 = v39;
      if (qword_100198218 != -1)
      {
        swift_once();
      }

      Row.get<A>(_:)();
      v35 = v22;
      sub_100084B50();
      v24 = type metadata accessor for URL();
      sub_1000075C4(v8, 1, 1, v24);
      v25 = static LNAssistantIntentMetadata.fromJSON(_:bundleURL:effectiveBundleIdentifier:)();
      sub_1000209B0(v8);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10007029C(0, *(v34 + 2) + 1, 1, v34);
        v34 = v30;
      }

      v21 = &unk_100198000;
      v26 = v34;
      v28 = *(v34 + 2);
      v27 = *(v34 + 3);
      if (v28 >= v27 >> 1)
      {
        sub_10007029C(v27 > 1, v28 + 1, 1, v34);
        v26 = v31;
      }

      *(v26 + 2) = v28 + 1;
      v34 = v26;
      v29 = &v26[24 * v28];
      *(v29 + 4) = v35;
      *(v29 + 5) = v23;
      *(v29 + 6) = v25;
    }

    return v34;
  }

  return result;
}

uint64_t sub_100084A8C()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100056DD4();
  return ExpressionType.init(_:)(0xD000000000000010, 0x8000000100154580, v0, v1);
}

uint64_t sub_100084AF0()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100056DD4();
  return ExpressionType.init(_:)(0x617461646174656DLL, 0xE800000000000000, v0, v1);
}

unint64_t sub_100084B50()
{
  result = qword_10019C990;
  if (!qword_10019C990)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10019C990);
  }

  return result;
}

uint64_t sub_100084C14()
{
  v0 = type metadata accessor for Logger();
  sub_100037CD8(v0, qword_10019DD28);
  sub_10000347C(v0, qword_10019DD28);
  type metadata accessor for ApplicationService();
  sub_10002EB80(&qword_10019A250, &qword_10014DF40);
  String.init<A>(describing:)();
  result = LNLogSubsystem;
  if (LNLogSubsystem)
  {
    String.init(cString:)();
    return Logger.init(subsystem:category:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100084CC4()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_10019DD40 = result;
  *algn_10019DD48 = v1;
  return result;
}

id sub_100084CF4(uint64_t a1, uint64_t a2)
{
  sub_10000D34C();
  ObjectType = swift_getObjectType();
  swift_defaultActor_initialize();
  v2[14] = v3;
  v2[15] = a2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "init");
}

void sub_100084D50()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_100084DA0()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100084DD0()
{
  sub_100084DA0();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100084E20()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000BFAC;

  return sub_100043C80();
}

uint64_t sub_100084EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_10000BFAC;

  return sub_100084F48(a5);
}

uint64_t sub_100084F48(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  sub_10002EB80(&qword_10019AC90, &qword_10014FB80);
  v2[10] = swift_task_alloc();
  v2[11] = type metadata accessor for LSLinkBundleRecord(0);
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_100085014, v1, 0);
}

uint64_t sub_100085014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  sub_100027014();
  sub_1000036C4();
  v14 = sub_100007F78();
  v15 = sub_100010DC0(v14, sub_10011D0D0);
  v13[13] = v15;
  v13[14] = 0;
  v16 = v15;
  sub_100018D28();
  v17 = swift_task_alloc();
  v13[15] = v17;
  *v17 = v13;
  v17[1] = sub_10008521C;
  sub_100091EFC();

  return sub_1000C4814();
}

uint64_t sub_10008521C()
{
  sub_1000036A0();
  sub_1000036D0();
  v2 = *(v1 + 72);
  v3 = *v0;
  sub_10000298C();
  *v4 = v3;

  return _swift_task_switch(sub_10008531C, v2, 0);
}

uint64_t sub_10008531C()
{
  sub_100027014();
  sub_1000036C4();
  v2 = *(v0 + 112);
  *(v0 + 128) = OBJC_IVAR____TtC10LinkDaemon8Registry_store;
  *(v0 + 136) = sub_1000212D8(0, 0);

  if (v2)
  {
    if (qword_100198220 != -1)
    {
      sub_100002B94();
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000347C(v3, qword_10019DD28);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    static os_log_type_t.error.getter();

    if (sub_1000103CC())
    {
      sub_100007764();
      v5 = sub_100005D18();
      *v1 = 138412290;
      swift_errorRetain();
      v6 = _swift_stdlib_bridgeErrorToNSError();
      *(v1 + 4) = v6;
      *v5 = v6;
      sub_1000129B0();
      _os_log_impl(v7, v8, v9, v10, v1, 0xCu);
      sub_100003EFC(v5, &unk_10019A260, &unk_10014D030);
      sub_100004D70();
      sub_100004D8C();
    }

    else
    {
    }

    if (!*(v0 + 112))
    {
    }

    sub_100091EE4();

    sub_100003A00();
    sub_100091EFC();

    return v15(v14, v15, v16, v17, v18, v19, v20, v21);
  }

  else
  {
    v11 = swift_task_alloc();
    *(v0 + 144) = v11;
    *v11 = v0;
    v11[1] = sub_10008551C;
    sub_100091EFC();

    return sub_1000C4AF0();
  }
}

uint64_t sub_10008551C()
{
  sub_1000070C8();
  v2 = *v1;
  sub_10000788C();
  *v4 = v3;
  v5 = *v1;
  sub_1000050EC();
  *v6 = v5;
  *(v8 + 152) = v7;
  *(v8 + 160) = v0;

  v9 = *(v2 + 72);
  if (v0)
  {
    v10 = sub_100086678;
  }

  else
  {
    v10 = sub_10008563C;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_100085C94()
{
  sub_1000070C8();
  sub_1000036D0();
  v3 = v2;
  sub_10000788C();
  *v4 = v3;
  *v4 = *v1;
  v3[34] = v5;
  v3[35] = v0;

  if (v0)
  {
    v6 = v3[9];

    v7 = sub_1000867F4;
    v8 = v6;
  }

  else
  {
    v8 = v3[9];
    v7 = sub_100085DC8;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_100085DC8()
{
  sub_1000036A0();
  if (v0[8])
  {
    os_transaction_needs_more_time();
  }

  v0[5] = v0[11];
  v0[6] = &off_10018F930;
  sub_100013234(v0 + 2);
  v1 = sub_10001AAC8();
  sub_100027910(v1, v2);
  v3 = swift_task_alloc();
  v0[36] = v3;
  *v3 = v0;
  v3[1] = sub_100085E94;
  v4 = v0[34];
  v5 = v0[31];
  v6 = v0[32];
  v8 = v0[29];
  v7 = v0[30];
  v9 = v0[27];
  v10 = v0[28];

  return sub_100027A3C((v0 + 2), v5, v7, v6, v4, v9, v10, v8);
}

uint64_t sub_100085E94()
{
  sub_100028788();
  sub_1000036C4();
  sub_1000036D0();
  v3 = v2;
  sub_10000788C();
  *v4 = v3;
  v5 = *v1;
  sub_10000298C();
  *v6 = v5;
  *(v3 + 296) = v0;

  if (!v0)
  {

    sub_1000034F8((v3 + 16));
  }

  sub_10001A7B0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100086678()
{
  sub_100028788();
  sub_1000036C4();
  if (qword_100198220 != -1)
  {
    sub_100002B94();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000347C(v1, qword_10019DD28);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = sub_100007764();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    sub_1000139F0(&_mh_execute_header, v7, v8, "Error getting registry, App Shortcuts, or bundle IDs from registry %@");
    sub_100003EFC(v5, &unk_10019A260, &unk_10014D030);
    sub_100003A0C();
    sub_100004D70();
  }

  else
  {
  }

  if (!*(v0 + 112))
  {
  }

  sub_100091EE4();

  sub_100003A00();
  sub_10001A7B0();

  return v10(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_100087738(void *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = sub_1000034B4(a1, a1[3]);
  v6 = *(v5 + 1);
  v8[0] = *v5;
  v8[1] = v6;
  v9 = v5[4];
  return sub_100090BE0(v8, a2, v4);
}

uint64_t sub_10008778C()
{
  sub_10002EB80(&qword_100199C70, &unk_10014EE60);
  sub_10002EB2C();
  v0 = Dictionary.init(dictionaryLiteral:)();
  sub_10002EB80(&qword_10019ACB0, &qword_10014FBB0);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  qword_10019DD50 = result;
  return result;
}

uint64_t sub_10008781C()
{
  sub_1000921B0();
  sub_1000036C4();
  v1 = v0[36];
  v3 = v0[34];
  v2 = v0[35];
  swift_willThrow();

  sub_100003A00();
  sub_10009206C();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1000878BC()
{
  sub_1000921B0();
  sub_1000036C4();
  sub_100013E90();

  sub_100003A00();
  sub_10009206C();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_10008795C()
{
  sub_100027014();
  sub_1000036C4();
  v1 = v0[28];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[13];

  sub_10001FE58(v4);
  sub_100021304();

  sub_100003A00();
  sub_100091EFC();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1000879F4()
{
  sub_1000036A0();
  v1 = *(v0 + 128);

  sub_100003A00();

  return v2();
}

uint64_t sub_100087A68()
{
  sub_1000036A0();
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  sub_100003A00();

  return v3();
}

uint64_t sub_100087B88(uint64_t a1, uint64_t a2, uint64_t a3, void *aBlock, void *a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  sub_100003D44(0, &qword_10019ACF0, LNAutoShortcutSubstitution_ptr);
  v5[4] = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100003D44(0, &qword_10019ACF8, LNAppShortcutSpanData_ptr);
  v5[5] = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5[6] = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  a5;
  v7 = swift_task_alloc();
  v5[7] = v7;
  *v7 = v5;
  v7[1] = sub_100087CCC;

  return sub_100016564();
}

uint64_t sub_100087CCC()
{
  sub_100004884();
  sub_100012628();
  sub_10000298C();
  *v3 = v2;
  v4 = *(v2 + 16);
  *v3 = *v1;

  sub_1000125A8();
  if (v0)
  {
    _convertErrorToNSError(_:)();
    sub_100018338();

    v5 = sub_100011138();
    v6(v5, v2);
  }

  else
  {
    v7 = sub_100013514();
    v8(v7);
  }

  _Block_release(*(v2 + 24));
  sub_100007528();

  return v9();
}

uint64_t sub_100087E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  return sub_100003B20();
}

uint64_t sub_100087E8C()
{
  v1 = sub_100007F78();
  v2 = sub_100010DC0(v1, sub_10011D0D0);
  v0[12] = v2;
  v5 = v2;
  v6 = v0[10];
  v7 = v0[11];
  if (!v6)
  {
    v11 = *(v7 + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_destinationBundleIdentifier);
    v6 = *(v7 + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_destinationBundleIdentifier + 8);

    goto LABEL_9;
  }

  v8 = objc_opt_self();

  v9 = String._bridgeToObjectiveC()();
  v16 = *(v7 + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_auditToken);
  v17 = *(v7 + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_auditToken + 16);
  v0[6] = sub_1000882C4;
  v0[7] = 0;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_10008834C;
  v0[5] = &unk_10018E3E8;
  v10 = _Block_copy(v0 + 2);
  *(v0 + 8) = v16;
  *(v0 + 9) = v17;
  LODWORD(v8) = [v8 validateEntitlement:v9 auditToken:v0 + 16 validator:v10];
  _Block_release(v10);

  if (v8)
  {
    v11 = v0[9];
LABEL_9:
    v0[13] = v6;
    v12 = swift_task_alloc();
    v0[14] = v12;
    *v12 = v0;
    v12[1] = sub_100088100;
    v13 = sub_10001313C(v0[8]);

    return sub_1000C4CE8(v13, v11, v6);
  }

  v14 = sub_1000910C0();
  sub_100007978(&type metadata for ApplicationServiceInstance.Errors, v14);
  *v15 = 0;
  swift_willThrow();

  sub_100003A00();

  return v3();
}

uint64_t sub_100088100()
{
  sub_1000036A0();
  sub_1000036D0();
  v3 = v2;
  sub_10000788C();
  *v4 = v3;
  v5 = *v1;
  sub_10000298C();
  *v6 = v5;
  *(v3 + 120) = v0;

  if (v0)
  {
    v7 = sub_100088260;
  }

  else
  {

    v7 = sub_100088204;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100088204()
{
  sub_1000036A0();

  sub_100003A00();

  return v1();
}

uint64_t sub_100088260()
{
  sub_1000036A0();

  sub_100003A00();

  return v1();
}

uint64_t sub_1000882C4(uint64_t a1)
{
  sub_100009E90(a1, v3, &qword_1001992F0, &qword_10014E000);
  if (v4)
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v2;
    }
  }

  else
  {
    sub_100003EFC(v3, &qword_1001992F0, &qword_10014E000);
    return 0;
  }

  return result;
}

uint64_t sub_10008834C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v6 = a2;
    sub_1000398F4(&v6, v8);
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  swift_unknownObjectRetain();
  v4 = v3(v8);

  sub_100003EFC(v8, &qword_1001992F0, &qword_10014E000);
  return v4 & 1;
}

uint64_t sub_100088410(uint64_t a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  sub_100003D44(0, &unk_10019ACE0, LNRelevantIntent_ptr);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v4[4] = v7;
  if (a2)
  {
    a2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v4[5] = v9;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_10008852C;

  return sub_100087E74(v7, a2, v9);
}

uint64_t sub_10008852C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100013D88();
  sub_100004884();
  sub_100012628();
  sub_10000298C();
  *v13 = v12;
  v14 = *(v12 + 16);
  *v13 = *v11;

  sub_1000125A8();
  if (v10)
  {
    _convertErrorToNSError(_:)();
    sub_100018338();

    v15 = sub_100011138();
    v16(v15, v12);
  }

  else
  {
    v17 = sub_100013514();
    v18(v17);
  }

  _Block_release(*(v12 + 24));
  sub_100007528();
  sub_100091FC0();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t sub_1000886A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return sub_100003B20();
}

uint64_t sub_1000886C0()
{
  sub_1000070C8();
  v1 = sub_100007F78();
  v2 = sub_100010DC0(v1, sub_10011D0D0);
  sub_100081FDC(*(*(v0 + 40) + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_destinationBundleIdentifier), *(*(v0 + 40) + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_destinationBundleIdentifier + 8), *(v0 + 16), *(v0 + 24), *(v0 + 32));

  sub_100003A00();

  return v4();
}

uint64_t sub_1000887B0(uint64_t a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v4[5] = v8;
  v10 = a2;
  a4;
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_10008889C;

  return sub_1000886A8(v7, v9, v10);
}

uint64_t sub_10008889C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100013D88();
  sub_100004884();
  sub_100012628();
  sub_10000298C();
  *v13 = v12;
  v14 = *(v12 + 24);
  v15 = *(v12 + 16);
  *v13 = *v11;

  sub_1000125A8();
  if (v10)
  {
    _convertErrorToNSError(_:)();
    sub_100018338();

    v16 = sub_100011138();
    v17(v16, v12);
  }

  else
  {
    v18 = sub_100013514();
    v19(v18);
  }

  _Block_release(*(v12 + 32));
  sub_100007528();
  sub_100091FC0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
}

uint64_t sub_100088A28()
{
  sub_1000070C8();
  v1 = sub_100007F78();
  v2 = sub_100010DC0(v1, sub_10011D0D0);
  sub_100081F1C(*(*(v0 + 16) + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_destinationBundleIdentifier), *(*(v0 + 16) + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_destinationBundleIdentifier + 8));

  v3 = sub_1000088B0();

  return v4(v3);
}

uint64_t sub_100088B3C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100088BE4;

  return sub_100088A14();
}

uint64_t sub_100088BE4()
{
  sub_1000070C8();
  v2 = v0;
  sub_1000036D0();
  v4 = v3;
  sub_10000788C();
  *v5 = v4;
  v7 = *(v6 + 16);
  v8 = *v1;
  sub_10000298C();
  *v9 = v8;

  if (v2)
  {
    _convertErrorToNSError(_:)();
    sub_10001D304();
    sub_10001725C();
  }

  else
  {
    sub_100003D44(0, &qword_10019ACD8, LNIntentEnablement_ptr);
    Dictionary._bridgeToObjectiveC()();
    sub_100091E9C();

    sub_100091ED8();
  }

  v10 = *(v4 + 24);
  v11 = sub_10001AB0C();
  v12(v11);

  _Block_release(v10);
  sub_100003A00();

  return v13();
}

uint64_t sub_100088D54()
{
  sub_1000036A0();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  v1[1] = sub_100088DD8;

  return sub_100088A14();
}

uint64_t sub_100088DD8()
{
  sub_1000070C8();
  v3 = v2;
  sub_1000036D0();
  v5 = v4;
  sub_10000788C();
  *v6 = v5;
  v7 = *v1;
  sub_10000298C();
  *v8 = v7;
  *(v5 + 24) = v0;

  if (v0)
  {
    sub_100007528();

    return v9();
  }

  else
  {
    *(v5 + 32) = v3;

    return _swift_task_switch(sub_100088F08, 0, 0);
  }
}

void sub_100088F08()
{
  sub_100090800(*(v1 + 32));
  sub_100018D28();

  v2 = *(v0 + 16);
  if (v2)
  {
    sub_100011438(0, v2, 0);
    v5 = sub_100060B10(v0);
    v6 = 0;
    v7 = v0 + 64;
    v28 = v3;
    v29 = v2;
    v27 = v0 + 72;
    v30 = v0 + 64;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v0 + 32))
    {
      v8 = v5 >> 6;
      if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v0 + 36) != v3)
      {
        goto LABEL_25;
      }

      v32 = v6;
      v33 = v3;
      v31 = v4;
      v9 = (*(v0 + 48) + 16 * v5);
      v10 = *v9;
      v11 = v9[1];
      v12 = v0;
      v13 = _swiftEmptyArrayStorage[2];
      v14 = _swiftEmptyArrayStorage[3];

      if (v13 >= v14 >> 1)
      {
        sub_100011438(v14 > 1, v13 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v13 + 1;
      v15 = &_swiftEmptyArrayStorage[2 * v13];
      v15[4] = v10;
      v15[5] = v11;
      v16 = 1 << *(v12 + 32);
      if (v5 >= v16)
      {
        goto LABEL_26;
      }

      v0 = v12;
      v7 = v30;
      v17 = *(v30 + 8 * v8);
      if ((v17 & (1 << v5)) == 0)
      {
        goto LABEL_27;
      }

      if (*(v0 + 36) != v33)
      {
        goto LABEL_28;
      }

      v18 = v17 & (-2 << (v5 & 0x3F));
      if (v18)
      {
        v16 = __clz(__rbit64(v18)) | v5 & 0x7FFFFFFFFFFFFFC0;
        v19 = v29;
      }

      else
      {
        v20 = v8 << 6;
        v21 = (v27 + 8 * v8);
        v22 = v8 + 1;
        v19 = v29;
        while (v22 < (v16 + 63) >> 6)
        {
          v24 = *v21++;
          v23 = v24;
          v20 += 64;
          ++v22;
          if (v24)
          {
            sub_100060B50(v5, v33, v31 & 1);
            v16 = __clz(__rbit64(v23)) + v20;
            goto LABEL_19;
          }
        }

        sub_100060B50(v5, v33, v31 & 1);
      }

LABEL_19:
      v4 = 0;
      v6 = v32 + 1;
      v5 = v16;
      v3 = v28;
      if (v32 + 1 == v19)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_20:

    v25 = sub_1000088B0();

    v26(v25);
  }
}

uint64_t sub_1000891C0(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100089268;

  return sub_100088D54();
}

uint64_t sub_100089268()
{
  sub_1000070C8();
  v2 = v0;
  sub_1000036D0();
  v4 = v3;
  sub_10000788C();
  *v5 = v4;
  v7 = *(v6 + 16);
  v8 = *v1;
  sub_10000298C();
  *v9 = v8;

  if (v2)
  {
    _convertErrorToNSError(_:)();
    sub_10001D304();
    sub_10001725C();
  }

  else
  {
    Array._bridgeToObjectiveC()();
    sub_100091E9C();

    sub_100091ED8();
  }

  v10 = *(v4 + 24);
  v11 = sub_10001AB0C();
  v12(v11);

  _Block_release(v10);
  sub_100003A00();

  return v13();
}

uint64_t sub_1000893D0()
{
  sub_1000036A0();
  sub_100003D44(0, &qword_10019A770, AFPreferences_ptr);
  v1 = sub_100027D40();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100089468(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  v4 = a2;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_10001D400;

  return sub_1000893B4();
}

uint64_t sub_10008950C(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 64) = a3;
  *(v4 + 16) = a1;
  return sub_100003B20();
}

uint64_t sub_100089528()
{
  sub_1000036A0();
  v1 = *(v0 + 64);
  v2 = objc_opt_self();
  if (v1 == 1)
  {
    v3 = [v2 enabled];
  }

  else
  {
    v3 = [v2 disabledWithReason:0];
  }

  v4 = v3;
  *(v0 + 40) = v4;
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_100089600;
  v6 = sub_10001313C(*(v0 + 16));

  return sub_1000886A8(v6, v7, v4);
}

uint64_t sub_100089600()
{
  sub_1000036A0();
  sub_1000036D0();
  v3 = v2;
  sub_10000788C();
  *v4 = v3;
  v5 = *v1;
  sub_10000298C();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100089720, 0, 0);
  }

  else
  {

    sub_100003A00();

    return v7();
  }
}

uint64_t sub_100089720()
{
  sub_1000036A0();

  sub_100003A00();

  return v1();
}

uint64_t sub_100089814(uint64_t a1, char a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v4[4] = v8;
  a4;
  v10 = swift_task_alloc();
  v4[5] = v10;
  *v10 = v4;
  v10[1] = sub_1000898F8;

  return sub_10008950C(v7, v9, a2);
}

uint64_t sub_1000898F8()
{
  sub_100028788();
  sub_1000036C4();
  sub_100012628();
  sub_10000298C();
  *v3 = v2;
  v4 = *(v2 + 16);
  *v3 = *v1;

  sub_1000125A8();
  if (v0)
  {
    _convertErrorToNSError(_:)();
    sub_100018338();

    v5 = sub_100011138();
    v6(v5, v2);
  }

  else
  {
    v7 = sub_100013514();
    v8(v7);
  }

  _Block_release(*(v2 + 24));
  sub_100007528();
  sub_10001A7B0();

  return v10(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_100089A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  v6 = type metadata accessor for URL();
  v5[14] = v6;
  v5[15] = *(v6 - 8);
  v5[16] = swift_task_alloc();

  return _swift_task_switch(sub_100089B4C, 0, 0);
}

uint64_t sub_100089FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  v6 = type metadata accessor for URL();
  v5[14] = v6;
  v5[15] = *(v6 - 8);
  v5[16] = swift_task_alloc();

  return _swift_task_switch(sub_10008A0DC, 0, 0);
}

uint64_t sub_10008A578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  v6 = type metadata accessor for URL();
  v5[14] = v6;
  v5[15] = *(v6 - 8);
  v5[16] = swift_task_alloc();

  return _swift_task_switch(sub_10008A66C, 0, 0);
}

uint64_t sub_10008AB08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  v6 = type metadata accessor for URL();
  v5[14] = v6;
  v5[15] = *(v6 - 8);
  v5[16] = swift_task_alloc();

  return _swift_task_switch(sub_10008ABFC, 0, 0);
}

uint64_t sub_10008ABFC()
{
  v76 = v0;
  sub_100092044(__stack_chk_guard);
  v2 = (v1 + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_destinationBundleIdentifier);
  v4 = *v2;
  v3 = v2[1];
  sub_100003D44(0, &qword_10019ACD0, LSBundleRecord_ptr);
  sub_100008840();
  swift_bridgeObjectRetain_n();
  v5 = sub_1000FEC40(v4, v3, 0);
  *(v0 + 136) = v5;
  type metadata accessor for FrameworkRecord();
  v6 = static FrameworkRecord.enumerated.getter();
  if (v5)
  {
    *(v0 + 64) = 0;
    v7 = [v5 ln_linkedFrameworksWithError:v0 + 64];
    v8 = *(v0 + 64);
    if (v7)
    {
      v9 = sub_100092180(v7);
      v10 = v8;

      goto LABEL_6;
    }

    v11 = v8;
    sub_10000D34C();
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v9 = _swiftEmptyArrayStorage;
LABEL_6:
  v12 = v9[2];
  if (!v12)
  {

    v33 = _swiftEmptyArrayStorage;
    if (!v5)
    {
      goto LABEL_26;
    }

    goto LABEL_20;
  }

  v68 = v5;
  v69 = v4;
  v70 = v3;
  v13 = *(v0 + 120);
  v15 = *(v13 + 16);
  v13 += 16;
  v14 = v15;
  v16 = v9 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
  v17 = *(v13 + 56);
  v18 = _swiftEmptyArrayStorage;
  v71 = v17;
  do
  {
    v19 = sub_100009C24();
    v14(v19);
    if (*(v6 + 16) && (sub_100092168(), (v21 & 1) != 0))
    {
      v22 = *(*(v6 + 56) + 8 * v20);
      v23 = FrameworkRecord.bundleIdentifier.getter();
      v72 = v24;
      v73 = v23;

      v25 = sub_100091D5C();
      v26(v25);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100004E28();
        sub_100013A60();
        v18 = v31;
      }

      v27 = v18[2];
      if (v27 >= v18[3] >> 1)
      {
        sub_100013A60();
        v18 = v32;
      }

      v18[2] = v27 + 1;
      v28 = &v18[2 * v27];
      v28[4] = v73;
      v28[5] = v72;
      v17 = v71;
    }

    else
    {
      v29 = sub_100091DF0();
      v30(v29);
    }

    v16 += v17;
    v12 = (v12 - 1);
  }

  while (v12);
  v33 = v18;

  v4 = v69;
  v3 = v70;
  v5 = v68;
  if (v68)
  {
LABEL_20:
    objc_opt_self();
    v34 = swift_dynamicCastObjCClass();
    if (v34)
    {
      v35 = v34;
      v12 = v5;
      v36 = [v35 containingBundleRecord];
      if (v36 && (v37 = v36, v38 = [v36 bundleIdentifier], v37, v38))
      {

        v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v3 = v39;
      }

      else
      {
        v40 = LSApplicationExtensionRecord.attributionBundleIdentifier.getter();
        v42 = v41;

        if (v42)
        {

          v4 = v40;
          v3 = v42;
        }
      }
    }
  }

LABEL_26:
  sub_10002EB80(&unk_100198B60, &qword_10014E3C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014CE90;
  *(inited + 32) = v4;
  *(inited + 40) = v3;
  v74 = inited;

  sub_10006E3AC(v44);
  sub_10006E3AC(v33);
  v45 = sub_1000275B8(v74);
  *(v0 + 144) = v45;
  v46 = *(v45 + 32);
  *(v0 + 200) = v46;
  v47 = -1;
  v48 = -1 << v46;
  v49 = *(v45 + 56);
  if (-v48 < 64)
  {
    v47 = ~(-1 << -v48);
  }

  *(v0 + 152) = OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_logger;
  v50 = v47 & v49;
  if (v50)
  {
    v51 = 0;
LABEL_33:
    *(v0 + 160) = v50;
    *(v0 + 168) = v51;
    sub_1000131B8(v51);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.debug.getter();
    if (sub_10000E7D4(v55))
    {
      sub_100007764();
      v56 = sub_10000EE1C();
      v75 = v56;
      *v12 = 136446210;
      *(v12 + 1) = sub_100004C50(v3, v33, &v75);
      sub_1000139F0(&_mh_execute_header, v57, v58, "Searching %{public}s");
      sub_1000034F8(v56);
      sub_100003A0C();
      sub_100004D70();
    }

    v59 = swift_task_alloc();
    *(v0 + 184) = v59;
    *v59 = v0;
    sub_100009A0C(v59);
    v60 = sub_100006A94();

    return sub_1000C5194(v60, v61, v62, v63);
  }

  else
  {
    v52 = 0;
    v53 = ((63 - v48) >> 6) - 1;
    while (v53 != v52)
    {
      v51 = v52 + 1;
      v50 = *(*(v0 + 144) + 8 * v52++ + 64);
      if (v50)
      {
        goto LABEL_33;
      }
    }

    v65 = *(v0 + 136);
    v66 = *(v0 + 88);

    sub_1000105C0();

    return v67(0);
  }
}

uint64_t sub_10008B194()
{
  sub_1000070C8();
  v3 = v2;
  v4 = *v1;
  sub_10000788C();
  *v5 = v4;
  v6 = *v1;
  sub_10000298C();
  *v7 = v6;

  if (v0)
  {

    v8 = sub_10008B508;
  }

  else
  {
    *(v4 + 192) = v3;
    v8 = sub_10008B2E0;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10008B2E0()
{
  sub_100004884();
  v2 = *(v0 + 192);

  if (v2)
  {
LABEL_2:
    v3 = *(v0 + 136);
    sub_100092004();
    v4 = *(v0 + 88);

    sub_1000105C0();
    sub_10001064C();

    __asm { BRAA            X2, X16 }
  }

  v7 = *(v0 + 168);
  v8 = (*(v0 + 160) - 1) & *(v0 + 160);
  if (v8)
  {
    v9 = *(v0 + 144);
  }

  else
  {
    do
    {
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
      }

      if (v10 >= (((1 << *(v0 + 200)) + 63) >> 6))
      {
        goto LABEL_2;
      }

      v9 = *(v0 + 144);
      v8 = *(v9 + 8 * v10 + 56);
      ++v7;
    }

    while (!v8);
    v7 = v10;
  }

  *(v0 + 160) = v8;
  *(v0 + 168) = v7;
  *(v0 + 176) = *(*(v9 + 48) + ((v7 << 10) | (16 * __clz(__rbit64(v8)))) + 8);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (sub_10000E7D4(v12))
  {
    sub_100007764();
    v13 = sub_10000EE1C();
    *(v1 + 4) = sub_100019678(4.8751e-34, v13, v14, v15, v16, v17, v18, v19, v20, v13);
    sub_1000139F0(&_mh_execute_header, v21, v22, "Searching %{public}s");
    sub_1000034F8(v13);
    sub_100003A0C();
    sub_100004D70();
  }

  v23 = swift_task_alloc();
  *(v0 + 184) = v23;
  *v23 = v0;
  sub_100009A0C(v23);
  sub_100006A94();
  sub_10001064C();

  return sub_1000C5194(v24, v25, v26, v27);
}

uint64_t sub_10008B508()
{
  sub_100004884();
  v2 = *(v0 + 168);
  v3 = (*(v0 + 160) - 1) & *(v0 + 160);
  if (!v3)
  {
    do
    {
      v4 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        __break(1u);
      }

      if (v4 >= (((1 << *(v0 + 200)) + 63) >> 6))
      {
        v24 = *(v0 + 136);
        v25 = *(v0 + 88);

        sub_1000105C0();
        sub_10001064C();

        __asm { BRAA            X2, X16 }
      }

      v3 = *(*(v0 + 144) + 8 * v4 + 56);
      ++v2;
    }

    while (!v3);
    v2 = v4;
  }

  *(v0 + 160) = v3;
  *(v0 + 168) = v2;
  sub_1000131B8(v2);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (sub_10000E7D4(v6))
  {
    sub_100007764();
    v7 = sub_10000EE1C();
    *(v1 + 4) = sub_100019678(4.8751e-34, v7, v8, v9, v10, v11, v12, v13, v14, v7);
    sub_1000139F0(&_mh_execute_header, v15, v16, "Searching %{public}s");
    sub_1000034F8(v7);
    sub_100003A0C();
    sub_100004D70();
  }

  v17 = swift_task_alloc();
  *(v0 + 184) = v17;
  *v17 = v0;
  sub_100009A0C(v17);
  sub_100006A94();
  sub_10001064C();

  return sub_1000C5194(v18, v19, v20, v21);
}

uint64_t sub_10008B6EC(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  sub_10002EB80(&unk_10019ACC0, &qword_1001507B0);
  sub_10009153C();
  v1._countAndFlagsBits = BidirectionalCollection<>.joined(separator:)();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 8285;
  v2._object = 0xE200000000000000;
  String.append(_:)(v2);
  return 91;
}

uint64_t sub_10008B790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[4] = a5;
  v6[5] = v5;
  v6[2] = a1;
  v6[3] = a2;
  return sub_100003B20();
}

uint64_t sub_10008BA30()
{
  sub_1000036A0();
  sub_1000036D0();
  sub_1000050EC();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 64) = v3;

  v4 = sub_10001E094();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10008BB38(uint64_t a1, uint64_t a2, uint64_t a3, void *aBlock, void *a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v5[4] = v9;
  if (a2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v11 = 0;
  }

  v5[5] = v11;
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5[6] = v12;
  a5;
  v13 = swift_task_alloc();
  v5[7] = v13;
  *v13 = v5;
  v13[1] = sub_100091D20;

  return sub_10008B790(v8, v10, v14, v15, v12);
}

uint64_t sub_10008BC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return sub_100003B20();
}

uint64_t sub_10008C06C()
{
  sub_1000036A0();
  sub_1000036D0();
  sub_1000050EC();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 80) = v3;

  v4 = sub_10001E094();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10008C154()
{
  sub_1000036A0();

  sub_1000105C0();

  return v1();
}

uint64_t sub_10008C1D4(uint64_t a1, uint64_t a2, uint64_t a3, void *aBlock, void *a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v5[4] = v9;
  if (a2)
  {
    a2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v5[5] = v12;
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5[6] = v13;
  a5;
  v14 = swift_task_alloc();
  v5[7] = v14;
  *v14 = v5;
  v14[1] = sub_10008C308;

  return sub_10008BC54(v8, v10, a2, v12, v13);
}

uint64_t sub_10008C308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100013D88();
  sub_100004884();
  sub_100011514();
  v14 = *(v13 + 16);
  v15 = *v12;
  sub_10000298C();
  *v16 = v15;

  sub_1000125A8();
  v17 = *(v13 + 24);

  if (v10)
  {
    _convertErrorToNSError(_:)();
    sub_100008840();

    v18 = sub_100013514();
    v19(v18);

    _Block_release(v17);
  }

  else
  {
    v20 = sub_100011138();
    v21(v20, v11, 0);
    _Block_release(v17);
  }

  sub_100007528();
  sub_100091FC0();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
}

uint64_t sub_10008C4B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[4] = a5;
  v6[5] = v5;
  v6[2] = a1;
  v6[3] = a2;
  return sub_100003B20();
}

uint64_t sub_10008C754()
{
  sub_1000036A0();
  sub_1000036D0();
  sub_1000050EC();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 64) = v3;

  v4 = sub_10001E094();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10008C83C()
{
  sub_1000036A0();

  sub_1000105C0();
  v2 = *(v0 + 64);

  return v1(v2);
}

uint64_t sub_10008C8BC(uint64_t a1, uint64_t a2, uint64_t a3, void *aBlock, void *a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v5[4] = v9;
  if (a2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v11 = 0;
  }

  v5[5] = v11;
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5[6] = v12;
  a5;
  v13 = swift_task_alloc();
  v5[7] = v13;
  *v13 = v5;
  v13[1] = sub_100091D20;

  return sub_10008C4B4(v8, v10, v14, v15, v12);
}

uint64_t sub_10008C9D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return sub_100003B20();
}

void sub_10008C9F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26)
{
  sub_1000920D4();
  a25 = v27;
  a26 = v28;
  a24 = v26;
  v29 = v26[7];
  v30 = v26[5];
  v31 = OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_logger;

  v32 = v29;

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v33, v34))
  {
    a12 = v31;
    a13 = v30;
    v36 = v26[6];
    v35 = v26[7];
    v37 = v26[5];
    a11 = v26[3];
    a9 = v26[4];
    a10 = v26[2];
    v38 = swift_slowAlloc();
    a14 = swift_slowAlloc();
    *v38 = 136446978;
    *(v38 + 4) = sub_100004C50(*(v35 + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_destinationBundleIdentifier), *(v35 + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_destinationBundleIdentifier + 8), &a14);
    *(v38 + 12) = 2082;
    v39 = sub_10008B6EC(v36);
    v41 = sub_100004C50(v39, v40, &a14);

    *(v38 + 14) = v41;
    *(v38 + 22) = 2082;
    v42 = v37 == 0;
    v30 = a13;
    if (v42)
    {
      v43 = 0x6C61636F6CLL;
    }

    else
    {
      v43 = a9;
    }

    if (v42)
    {
      v44 = 0xE500000000000000;
    }

    else
    {
      v44 = a13;
    }

    v45 = sub_100004C50(v43, v44, &a14);

    *(v38 + 24) = v45;
    *(v38 + 32) = 2082;
    *(v38 + 34) = sub_100004C50(a10, a11, &a14);
    _os_log_impl(&_mh_execute_header, v33, v34, "Request from %{public}s %{public}sfor AppEntity:%{public}s:%{public}s", v38, 0x2Au);
    swift_arrayDestroy();
    sub_100003A0C();
    sub_100004D70();
  }

  v46 = sub_100007F78();
  v47 = sub_100010DC0(v46, sub_10011D0D0);
  v26[8] = v47;
  v48 = v47;
  if (sub_1000C512C())
  {
    if (v26[5])
    {
      v100 = v48;
      type metadata accessor for FrameworkRecord();
      v49 = static FrameworkRecord.enumerated.getter() + 64;
      sub_100004EF8();
      v52 = v51 & v50;
      v54 = (63 - v53) >> 6;
      v101 = v55;

      v56 = 0;
      while (v52)
      {
        v57 = v30;
LABEL_18:
        v60 = v26[4];
        v59 = v26[5];
        v61 = *(*(v101 + 56) + ((v56 << 9) | (8 * __clz(__rbit64(v52)))));
        if (FrameworkRecord.bundleIdentifier.getter() == v60 && v59 == v62)
        {

LABEL_34:

          v92 = swift_task_alloc();
          v93 = sub_100016D40(v92);
          *v93 = v94;
          v93[1] = sub_10008CF14;
          sub_10001313C(v26[4]);
          sub_1000381A8();

          sub_1000C5194(v95, v96, v97, v98);
          return;
        }

        v52 &= v52 - 1;
        v30 = v57;
        v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v64)
        {
          goto LABEL_34;
        }
      }

      while (1)
      {
        v58 = v56 + 1;
        if (__OFADD__(v56, 1))
        {
          break;
        }

        if (v58 >= v54)
        {

          v48 = v100;
          goto LABEL_30;
        }

        v52 = *(v49 + 8 * v58);
        ++v56;
        if (v52)
        {
          v57 = v30;
          v56 = v58;
          goto LABEL_18;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_30:

      v84 = v48;
      sub_100018D28();
      v85 = swift_task_alloc();
      v26[12] = v85;
      *v85 = v26;
      v85[1] = sub_10008D080;
      sub_1000079D8(v26[6]);
      sub_1000381A8();

      sub_10008AB08(v86, v87, v88, v89, v90);
    }
  }

  else
  {
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();
    if (sub_10000E7D4(v66))
    {
      v67 = sub_100011344();
      *v67 = 0;
      sub_1000129B0();
      _os_log_impl(v68, v69, v70, v71, v67, 2u);
      sub_1000036AC(v67);
    }

    type metadata accessor for RegistryError(0);
    sub_100005258();
    sub_100009868(v72, v73);
    v74 = sub_100092038();
    sub_100007978(v74, v75);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_100003A00();
    sub_1000381A8();

    v77(v76, v77, v78, v79, v80, v81, v82, v83, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }
}

uint64_t sub_10008CF14()
{
  sub_1000070C8();
  v3 = v2;
  sub_1000036D0();
  v5 = v4;
  sub_10000788C();
  *v6 = v5;
  v7 = *v1;
  sub_10000298C();
  *v8 = v7;
  *(v5 + 80) = v0;

  if (v0)
  {
    v9 = sub_10008D1C4;
  }

  else
  {
    *(v5 + 88) = v3;
    v9 = sub_10008D024;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10008D024()
{
  sub_1000036A0();

  v1 = sub_1000088B0();

  return v2(v1);
}

uint64_t sub_10008D080()
{
  sub_1000036A0();
  sub_1000036D0();
  sub_1000050EC();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 104) = v3;

  v4 = sub_10001E094();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10008D168()
{
  sub_1000036A0();

  v1 = sub_1000088B0();

  return v2(v1);
}

uint64_t sub_10008D1C4()
{
  sub_1000036A0();

  sub_100003A00();

  return v1();
}

uint64_t sub_10008D240(uint64_t a1, uint64_t a2, uint64_t a3, void *aBlock, void *a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v5[4] = v9;
  if (a2)
  {
    a2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v5[5] = v12;
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5[6] = v13;
  a5;
  v14 = swift_task_alloc();
  v5[7] = v14;
  *v14 = v5;
  v14[1] = sub_100091D20;

  return sub_10008C9D8(v8, v10, a2, v12, v13);
}

uint64_t sub_10008D374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return sub_100003B20();
}

uint64_t sub_10008D38C()
{
  sub_1000070C8();
  if (*(v0[5] + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_observationStatusRegistrySource))
  {
    v0[6] = sub_100010DC0(sub_100010EE8, sub_10011D0D0);
    v1 = swift_task_alloc();
    v0[7] = v1;
    *v1 = v0;
    v1[1] = sub_10008D4C4;
    v2 = sub_10001313C(v0[3]);

    return sub_1001137B8(v2, v3, v4);
  }

  else
  {
    v6 = sub_1000910C0();
    v7 = sub_100007978(&type metadata for ApplicationServiceInstance.Errors, v6);
    sub_100091D90(v7, v8);
    sub_100003A00();

    return v9();
  }
}

uint64_t sub_10008D4C4()
{
  sub_1000036A0();
  sub_1000036D0();
  sub_1000050EC();
  *v3 = v2;
  v4 = *v1;
  sub_10000298C();
  *v5 = v4;
  *(v6 + 64) = v0;

  if (v0)
  {
    v7 = sub_10008D61C;
  }

  else
  {
    v7 = sub_10008D5C0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10008D5C0()
{
  sub_1000036A0();

  sub_100003A00();

  return v1();
}

uint64_t sub_10008D61C()
{
  sub_1000036A0();

  sub_100003A00();

  return v1();
}

uint64_t sub_10008D698(uint64_t a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  sub_100003D44(0, &unk_100198C10, LNAppNotificationEvent_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v4[4] = v6;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v4[5] = v8;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_10008D7A8;

  return sub_10008D374(v6, v7, v9);
}

uint64_t sub_10008D7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100013D88();
  sub_100004884();
  sub_100012628();
  sub_10000298C();
  *v13 = v12;
  v14 = *(v12 + 16);
  *v13 = *v11;

  sub_1000125A8();
  if (v10)
  {
    _convertErrorToNSError(_:)();
    sub_100018338();

    v15 = sub_100011138();
    v16(v15, v12);
  }

  else
  {
    v17 = sub_100013514();
    v18(v17);
  }

  _Block_release(*(v12 + 24));
  sub_100007528();
  sub_100091FC0();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t sub_10008D924()
{
  sub_1000036A0();

  sub_1000105C0();

  return v1(0);
}

uint64_t sub_10008D984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return sub_100003B20();
}

uint64_t sub_10008D9A0()
{
  sub_1000070C8();
  if (*(v0[7] + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_observationStatusRegistrySource))
  {
    v0[8] = sub_100010DC0(sub_100010EE8, sub_10011D0D0);
    v1 = *(v0[7] + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_processID);
    v2 = swift_task_alloc();
    v3 = sub_100016D40(v2);
    *v3 = v4;
    v3[1] = sub_10008DAF0;
    v5 = v0[5];
    v6 = v0[6];
    v7 = v0[3];
    v8 = v0[4];
    v9 = v0[2];

    return sub_100103A08(v9, v7, v8, v5, v6, v1);
  }

  else
  {
    v11 = sub_1000910C0();
    v12 = sub_100007978(&type metadata for ApplicationServiceInstance.Errors, v11);
    sub_100091D90(v12, v13);
    sub_100003A00();

    return v14();
  }
}

uint64_t sub_10008DAF0()
{
  sub_1000036A0();
  sub_1000036D0();
  sub_1000050EC();
  *v3 = v2;
  v4 = *v1;
  sub_10000298C();
  *v5 = v4;
  *(v6 + 80) = v0;

  if (v0)
  {
    v7 = sub_10008D1C4;
  }

  else
  {
    v7 = sub_10008DBEC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10008DBEC()
{
  sub_1000036A0();

  sub_100003A00();

  return v1();
}

uint64_t sub_10008DC68(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  v4[2] = a4;
  v8 = type metadata accessor for UUID();
  v4[3] = v8;
  v4[4] = *(v8 - 8);
  v9 = swift_task_alloc();
  v4[5] = v9;
  v4[6] = _Block_copy(a3);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v4[7] = v11;
  if (a2)
  {
    a2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v4[8] = v14;
  a4;
  v15 = swift_task_alloc();
  v4[9] = v15;
  *v15 = v4;
  v15[1] = sub_10008DDE4;

  return sub_10008D984(v9, v10, v12, a2, v14);
}

uint64_t sub_10008DDE4()
{
  sub_100028788();
  sub_1000036C4();
  sub_1000036D0();
  v3 = v2;
  sub_10000788C();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *(v5 + 16);
  v8 = *v1;
  sub_10000298C();
  *v9 = v8;

  if (v0)
  {
    _convertErrorToNSError(_:)();
    sub_10000D34C();

    isa = 0;
    v11 = v6;
  }

  else
  {
    v13 = v3[4];
    v12 = v3[5];
    v14 = v3[3];
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v13 + 8))(v12, v14);
    v6 = 0;
    v11 = isa;
  }

  v15 = v3[6];
  v16 = sub_100011138();
  v17(v16, isa, v6);

  _Block_release(v15);

  sub_10001A7B0();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25);
}

uint64_t sub_10008DF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return sub_100003B20();
}

uint64_t sub_10008DFB4()
{
  sub_1000070C8();
  if (*(v0[7] + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_observationStatusRegistrySource))
  {
    v0[8] = sub_100010DC0(sub_100010EE8, sub_10011D0D0);
    v1 = *(v0[7] + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_processID);
    v2 = swift_task_alloc();
    v3 = sub_100016D40(v2);
    *v3 = v4;
    v3[1] = sub_10008E100;
    v5 = sub_10001313C(v0[2]);

    return sub_100103E5C(v5, v6, v7, v8, v9, v1);
  }

  else
  {
    v11 = sub_1000910C0();
    v12 = sub_100007978(&type metadata for ApplicationServiceInstance.Errors, v11);
    sub_100091D90(v12, v13);
    sub_100003A00();

    return v14();
  }
}

uint64_t sub_10008E100()
{
  sub_1000036A0();
  sub_1000036D0();
  sub_1000050EC();
  *v3 = v2;
  v4 = *v1;
  sub_10000298C();
  *v5 = v4;
  *(v6 + 80) = v0;

  if (v0)
  {
    v7 = sub_100091D24;
  }

  else
  {
    v7 = sub_100091D30;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10008E21C(void *a1, int a2, void *a3, void *a4, void *a5, void *aBlock)
{
  v10 = _Block_copy(aBlock);
  sub_100029498();
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = v10;
  v11[6] = a1;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a1;
  v16 = sub_1000077D8();

  return sub_100006240(v16, v17);
}

uint64_t sub_10008E2E0(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, void *a5)
{
  v5[2] = a5;
  v9 = type metadata accessor for UUID();
  v5[3] = v9;
  v5[4] = *(v9 - 8);
  v10 = swift_task_alloc();
  v5[5] = v10;
  v5[6] = _Block_copy(a4);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v5[7] = v12;
  if (a2)
  {
    a2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v5[8] = v15;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  a5;
  v16 = swift_task_alloc();
  v5[9] = v16;
  *v16 = v5;
  v16[1] = sub_10008E46C;

  return sub_10008DF98(v11, v13, a2, v15, v10);
}

uint64_t sub_10008E46C()
{
  sub_100012628();
  sub_10000298C();
  *v3 = v2;
  sub_1000125A8();
  v4 = *(v2 + 40);
  v5 = *(v2 + 32);
  v6 = *(v2 + 24);
  v7 = *(v2 + 16);
  v8 = *v1;
  sub_10000298C();
  *v9 = v8;

  (*(v5 + 8))(v4, v6);

  sub_1000125A8();
  if (v0)
  {
    _convertErrorToNSError(_:)();
    sub_100018338();

    v10 = sub_100011138();
    v11(v10, v2);
  }

  else
  {
    v12 = sub_100013514();
    v13(v12);
  }

  _Block_release(*(v2 + 48));

  sub_100007528();

  return v14();
}

uint64_t sub_10008E66C(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Logger();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_10008E770(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_100003B20();
}

void sub_10008E784()
{
  sub_100004884();
  v21 = v0;
  v1 = *(v0 + 24);
  v2 = objc_opt_self();
  v3 = *(v1 + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_auditToken + 16);
  *(v0 + 32) = *(v1 + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_auditToken);
  *(v0 + 48) = v3;
  v4 = [v2 if_dataWithAuditToken:v0 + 32];
  if (v4)
  {
    v5 = v4;
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    if (qword_100198230 != -1)
    {
      sub_1000088C4(&qword_100198230);
    }

    v9 = qword_10019DD50;
    v10 = swift_task_alloc();
    v11 = *(v0 + 16);
    v10[1].i64[0] = v6;
    v10[1].i64[1] = v8;
    v10[2] = vextq_s8(v11, v11, 8uLL);

    os_unfair_lock_lock((v9 + 24));
    sub_1000912DC((v9 + 16), &v20);
    os_unfair_lock_unlock((v9 + 24));
    v16 = v20;

    v17 = [v16 processInstanceIdentifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100009B18(v6, v8);
    sub_10001064C();

    __asm { BRAA            X3, X16 }
  }

  v12 = sub_1000910C0();
  sub_100007978(&type metadata for ApplicationServiceInstance.Errors, v12);
  *v13 = 1;
  swift_willThrow();
  sub_100003A00();
  sub_10001064C();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_10008E970@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X8>)
{
  v58 = a5;
  v11 = sub_10002EB80(&qword_10019A0B8, &qword_10014EE58);
  __chkstk_darwin(v11 - 8);
  v59 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v52 - v14;
  v16 = sub_10002EB80(&qword_100199C70, &unk_10014EE60);
  __chkstk_darwin(v16);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v52 - v20;
  sub_10000E624(*a1, v15, a2, a3);
  if (sub_1000032C4(v15, 1, v16) == 1)
  {
    v54 = a2;
    v55 = a1;
    v57 = a6;
    sub_100003EFC(v15, &qword_10019A0B8, &qword_10014EE58);
    v53 = a4;
    v22 = (a4 + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_auditToken);
    v23 = *(a4 + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_auditToken + 16);
    v60 = *(a4 + OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_auditToken);
    v61 = v23;
    LODWORD(v60) = LNPIDForAuditToken();
    v62 = dispatch thunk of CustomStringConvertible.description.getter();
    v63 = v24;
    v25._countAndFlagsBits = 45;
    v25._object = 0xE100000000000000;
    String.append(_:)(v25);
    v26 = *(v22 + 1);
    v60 = *v22;
    v61 = v26;
    LODWORD(v60) = LNPIDVersionForAuditToken();
    v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v27);

    v28 = v63;
    v52 = v62;
    v29 = objc_opt_self();
    v30 = *(v22 + 1);
    v60 = *v22;
    v61 = v30;
    v31 = [v29 bundleIdentifierForAuditToken:&v60];
    v56 = a3;
    if (v31)
    {
      v32 = v31;
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;
    }

    else
    {
      v33 = 0;
      v35 = 0;
    }

    v39 = *v22;
    v38 = v22[1];
    v40 = v22[2];
    v41 = v22[3];
    v42 = objc_allocWithZone(LNConnectionListenerEndpoint);
    v43 = v58;
    v44 = sub_100090714(v52, v28, v33, v35, v43, v39, v38, v40, v41);
    v45 = *(v16 + 48);
    v46 = OBJC_IVAR____TtC10LinkDaemon26ApplicationServiceInstance_identifier;
    v47 = type metadata accessor for UUID();
    v48 = v59;
    (*(*(v47 - 8) + 16))(v59, v53 + v46, v47);
    *(v48 + v45) = v44;
    sub_1000075C4(v48, 0, 1, v16);
    v49 = v54;
    v50 = v56;
    sub_1000098F0(v54, v56);
    v51 = v44;
    result = sub_1000666EC(v48, v49, v50);
    *v57 = v51;
  }

  else
  {
    sub_10005644C(v15, v21, &qword_100199C70, &unk_10014EE60);
    sub_10005644C(v21, v18, &qword_100199C70, &unk_10014EE60);
    *a6 = *&v18[*(v16 + 48)];
    v36 = type metadata accessor for UUID();
    return (*(*(v36 - 8) + 8))(v18, v36);
  }

  return result;
}

uint64_t sub_10008ED84(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_10008EE48;

  return sub_10008E770(v6);
}

uint64_t sub_10008EE48()
{
  sub_100028788();
  sub_1000036C4();
  v2 = v0;
  v4 = v3;
  sub_1000036D0();
  v6 = v5;
  sub_10000788C();
  *v7 = v6;
  v9 = *(v8 + 24);
  v10 = *(v8 + 16);
  v11 = *v1;
  sub_10000298C();
  *v12 = v11;

  if (v2)
  {
    _convertErrorToNSError(_:)();
    sub_10001D304();
    sub_10001725C();
  }

  else
  {
    sub_100091D5C();
    String._bridgeToObjectiveC()();
    sub_100091E9C();

    sub_100091ED8();
  }

  v13 = *(v6 + 32);
  v14 = sub_10001AB0C();
  v15(v14);

  _Block_release(v13);
  sub_100003A00();
  sub_10001A7B0();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_10008EFA8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_100003B20();
}

uint64_t sub_10008EFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1000921B0();
  a15 = v17;
  a16 = v18;
  sub_1000036C4();
  a14 = v16;
  sub_100003D44(0, &qword_10019AC98, LNEntitlementsValidator_ptr);
  sub_100092024();
  if (static LNEntitlementsValidator.hasEntitlement<A>(_:equalTo:)())
  {
    if (qword_100198230 != -1)
    {
      sub_1000088C4(&qword_100198230);
    }

    v20 = *(v16 + 16);
    v19 = *(v16 + 24);
    v21 = qword_10019DD50;
    v22 = swift_task_alloc();
    *(v22 + 16) = v20;
    *(v22 + 24) = v19;

    os_unfair_lock_lock((v21 + 24));
    sub_1000911D4((v21 + 16), &a9);
    os_unfair_lock_unlock((v21 + 24));

    sub_1000105C0();
    sub_10009206C();

    return v36(v34, v35, v36, v37, v38, v39, v40, v41);
  }

  else
  {
    v23 = sub_1000910C0();
    sub_100007978(&type metadata for ApplicationServiceInstance.Errors, v23);
    *v24 = 2;
    swift_willThrow();
    sub_100003A00();
    sub_10009206C();

    return v26(v25, v26, v27, v28, v29, v30, v31, v32);
  }
}

void sub_10008F150(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v54 = a4;
  v56 = a2;
  v57 = a3;
  v61 = sub_10002EB80(&qword_100199C70, &unk_10014EE60);
  v58 = *(v61 - 8);
  __chkstk_darwin(v61);
  v60 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v59 = &v52 - v7;
  __chkstk_darwin(v8);
  v53 = &v52 - v9;
  __chkstk_darwin(v10);
  v12 = &v52 - v11;
  __chkstk_darwin(v13);
  v15 = &v52 - v14;
  v16 = *a1 + 64;
  v17 = 1 << *(*a1 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(*a1 + 64);
  v20 = (v17 + 63) >> 6;
  v62 = *a1;

  v21 = 0;
  v55 = _swiftEmptyArrayStorage;
  while (v19)
  {
LABEL_9:
    v23 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v24 = *(v58 + 72);
    sub_100009E90(*(v62 + 56) + v24 * (v23 | (v21 << 6)), v15, &qword_100199C70, &unk_10014EE60);
    sub_100009E90(v15, v12, &qword_100199C70, &unk_10014EE60);
    v25 = sub_100090B70(*&v12[*(v61 + 48)]);
    if (!v26)
    {
      v30 = type metadata accessor for UUID();
      (*(*(v30 - 8) + 8))(v12, v30);
      goto LABEL_17;
    }

    if (v25 == v56 && v26 == v57)
    {

      v31 = type metadata accessor for UUID();
      (*(*(v31 - 8) + 8))(v12, v31);
      goto LABEL_19;
    }

    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v29 = type metadata accessor for UUID();
    (*(*(v29 - 8) + 8))(v12, v29);
    if (v28)
    {
LABEL_19:
      sub_10005644C(v15, v53, &qword_100199C70, &unk_10014EE60);
      v32 = v55;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v63 = v32;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000B3744(0, v32[2] + 1, 1);
        v32 = v63;
      }

      v35 = v32[2];
      v34 = v32[3];
      v36 = (v35 + 1);
      if (v35 >= v34 >> 1)
      {
        v55 = (v35 + 1);
        sub_1000B3744((v34 > 1), v35 + 1, 1);
        v36 = v55;
        v32 = v63;
      }

      v55 = v32;
      v32[2] = v36;
      sub_10005644C(v53, v32 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + v35 * v24, &qword_100199C70, &unk_10014EE60);
    }

    else
    {
LABEL_17:
      sub_100003EFC(v15, &qword_100199C70, &unk_10014EE60);
    }
  }

  while (1)
  {
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
      return;
    }

    if (v22 >= v20)
    {
      break;
    }

    v19 = *(v16 + 8 * v22);
    ++v21;
    if (v19)
    {
      v21 = v22;
      goto LABEL_9;
    }
  }

  v37 = v55;
  v38 = v55[2];
  if (v38)
  {
    v63 = _swiftEmptyArrayStorage;
    sub_100011438(0, v38, 0);
    v39 = v63;
    v40 = v37 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
    v58 = *(v58 + 72);
    do
    {
      v41 = v59;
      sub_100009E90(v40, v59, &qword_100199C70, &unk_10014EE60);
      v42 = v60;
      sub_100009E90(v41, v60, &qword_100199C70, &unk_10014EE60);
      v43 = *(v42 + *(v61 + 48));
      v44 = [v43 processInstanceIdentifier];

      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v62 = v46;

      sub_100003EFC(v41, &qword_100199C70, &unk_10014EE60);
      v47 = type metadata accessor for UUID();
      (*(*(v47 - 8) + 8))(v42, v47);
      v63 = v39;
      v49 = v39[2];
      v48 = v39[3];
      if (v49 >= v48 >> 1)
      {
        sub_100011438(v48 > 1, v49 + 1, 1);
        v39 = v63;
      }

      v39[2] = v49 + 1;
      v50 = &v39[2 * v49];
      v51 = v62;
      v50[4] = v45;
      v50[5] = v51;
      v40 += v58;
      --v38;
    }

    while (v38);
  }

  else
  {

    v39 = _swiftEmptyArrayStorage;
  }

  *v54 = v39;
}

uint64_t sub_10008F71C(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  v8 = a3;
  v9 = swift_task_alloc();
  v3[5] = v9;
  *v9 = v3;
  v9[1] = sub_10008F7EC;

  return sub_10008EFA8(v5, v7);
}

uint64_t sub_10008F7EC()
{
  sub_100027014();
  sub_1000036C4();
  v2 = v0;
  sub_1000036D0();
  v4 = v3;
  sub_10000788C();
  *v5 = v4;
  v7 = *(v6 + 32);
  v8 = *(v6 + 16);
  v9 = *v1;
  sub_10000298C();
  *v10 = v9;

  if (v2)
  {
    _convertErrorToNSError(_:)();
    sub_10001D304();
    sub_10001725C();
  }

  else
  {
    Array._bridgeToObjectiveC()();
    sub_100091E9C();

    sub_100091ED8();
  }

  v11 = *(v4 + 24);
  v12 = sub_10001AB0C();
  v13(v12);

  _Block_release(v11);
  sub_100003A00();
  sub_100091EFC();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_10008F954(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_100003B20();
}

uint64_t sub_10008F968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1000921B0();
  a15 = v17;
  a16 = v18;
  sub_1000036C4();
  a14 = v16;
  sub_100003D44(0, &qword_10019AC98, LNEntitlementsValidator_ptr);
  sub_100092024();
  if (static LNEntitlementsValidator.hasEntitlement<A>(_:equalTo:)())
  {
    if (qword_100198230 != -1)
    {
      sub_1000088C4(&qword_100198230);
    }

    v20 = *(v16 + 16);
    v19 = *(v16 + 24);
    v21 = qword_10019DD50;
    v22 = swift_task_alloc();
    *(v22 + 16) = v20;
    *(v22 + 24) = v19;

    os_unfair_lock_lock((v21 + 24));
    sub_100091114((v21 + 16), &a9);
    os_unfair_lock_unlock((v21 + 24));

    sub_1000105C0();
    sub_10009206C();

    return v36(v34, v35, v36, v37, v38, v39, v40, v41);
  }

  else
  {
    v23 = sub_1000910C0();
    sub_100007978(&type metadata for ApplicationServiceInstance.Errors, v23);
    *v24 = 2;
    swift_willThrow();
    sub_100003A00();
    sub_10009206C();

    return v26(v25, v26, v27, v28, v29, v30, v31, v32);
  }
}

void sub_10008FB04(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v55 = a4;
  v60 = a2;
  v61 = a3;
  v62 = sub_10002EB80(&qword_10019ACA8, &unk_10014FBA0);
  __chkstk_darwin(v62);
  v54 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v59 = (&v52 - v7);
  __chkstk_darwin(v8);
  v65 = &v52 - v9;
  __chkstk_darwin(v10);
  v58 = (&v52 - v11);
  __chkstk_darwin(v12);
  v53 = &v52 - v13;
  __chkstk_darwin(v14);
  v52 = &v52 - v15;
  v16 = *a1;
  v17 = *a1 + 64;
  v18 = 1 << *(*a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(*a1 + 64);
  v21 = (v18 + 63) >> 6;
  v63 = v16;

  v22 = 0;
  v56 = v21;
  v57 = v17;
  if (v20)
  {
    while (1)
    {
      v23 = v22;
LABEL_8:
      v24 = __clz(__rbit64(v20)) | (v23 << 6);
      v25 = *(v63 + 56);
      v26 = (*(v63 + 48) + 16 * v24);
      v27 = *v26;
      v28 = v26[1];
      v64 = sub_10002EB80(&qword_100199C70, &unk_10014EE60);
      v29 = v62;
      v30 = v58;
      sub_100009E90(v25 + *(*(v64 - 8) + 72) * v24, v58 + *(v62 + 48), &qword_100199C70, &unk_10014EE60);
      *v30 = v27;
      v30[1] = v28;
      v31 = v65;
      sub_10005644C(v30, v65, &qword_10019ACA8, &unk_10014FBA0);
      v32 = v59;
      sub_100009E90(v31, v59, &qword_10019ACA8, &unk_10014FBA0);
      v33 = *v32;
      v34 = v32[1];
      sub_1000098F0(v27, v28);
      sub_100009B18(v33, v34);
      v35 = v32 + *(v29 + 48);
      v36 = v64;
      v37 = *&v35[*(v64 + 48)];
      v38 = [v37 processInstanceIdentifier];

      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      if (v39 == v60 && v41 == v61)
      {
        break;
      }

      v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v44 = type metadata accessor for UUID();
      (*(*(v44 - 8) + 8))(v35, v44);
      if (v43)
      {
        goto LABEL_17;
      }

      v20 &= v20 - 1;
      sub_100003EFC(v65, &qword_10019ACA8, &unk_10014FBA0);
      v22 = v23;
      v21 = v56;
      v17 = v57;
      if (!v20)
      {
        goto LABEL_5;
      }
    }

    v44 = type metadata accessor for UUID();
    (*(*(v44 - 8) + 8))(v35, v44);
LABEL_17:

    v46 = v53;
    sub_10005644C(v65, v53, &qword_10019ACA8, &unk_10014FBA0);
    v47 = v46;
    v48 = v52;
    sub_10005644C(v47, v52, &qword_10019ACA8, &unk_10014FBA0);
    v49 = v48;
    v50 = v54;
    sub_10005644C(v49, v54, &qword_10019ACA8, &unk_10014FBA0);
    sub_100009B18(*v50, *(v50 + 8));
    v51 = v50 + *(v62 + 48);
    *v55 = *(v51 + *(v36 + 48));
    type metadata accessor for UUID();
    (*(*(v44 - 8) + 8))(v51, v44);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v23 >= v21)
      {

        sub_1000910C0();
        swift_allocError();
        *v45 = 3;
        swift_willThrow();
        return;
      }

      v20 = *(v17 + 8 * v23);
      ++v22;
      if (v20)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_10008FFF0(void *a1, int a2, void *a3, void *aBlock, uint64_t a5)
{
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = v7;
  v8[4] = a1;
  v9 = a3;
  v10 = a1;
  v11 = sub_1000077D8();

  return sub_100006240(v11, v12);
}

uint64_t sub_100090070(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  v8 = a3;
  v9 = swift_task_alloc();
  v3[5] = v9;
  *v9 = v3;
  v9[1] = sub_100090140;

  return sub_10008F954(v5, v7);
}

uint64_t sub_100090140()
{
  sub_100028788();
  sub_1000036C4();
  sub_100011514();
  v4 = *(v3 + 16);
  v5 = *v2;
  sub_10000298C();
  *v6 = v5;

  sub_1000125A8();
  v8 = *(v7 + 24);
  if (v0)
  {
    _convertErrorToNSError(_:)();
    sub_100008840();

    v9 = sub_100013514();
    v10(v9);

    _Block_release(v8);
  }

  else
  {
    v11 = sub_100011138();
    v12(v11, v1, 0);
    _Block_release(v8);
  }

  sub_100007528();
  sub_10001A7B0();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20);
}

unint64_t sub_1000902B8(char a1)
{
  result = 0x74696E6920746F4ELL;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x7070757320746F4ELL;
      break;
    case 3:
      result = 0xD000000000000038;
      break;
    default:
      result = 0xD000000000000046;
      break;
  }

  return result;
}

void sub_100090368(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v60 = a2;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  UUID.init()();
  v59 = UUID.uuidString.getter();
  v14 = v13;
  (*(v9 + 8))(v11, v8);
  v15 = [v12 propertyTitle];
  v16 = [v12 propertyTitleKey];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v55 = v18;

  v19 = [v12 providerClassName];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v53 = v21;
  v54 = v20;

  v22 = [v12 parameterTypeIdentifier];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v51 = v24;
  v52 = v23;

  v50 = [v12 value];
  v25 = [v12 synonyms];
  sub_100003D44(0, &qword_10019AD00, LNStaticDeferredLocalizedString_ptr);
  v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v27 = sub_1000232F4(v26);
  if (!v27)
  {

    v30 = _swiftEmptyArrayStorage;
LABEL_12:
    v41 = v60;
    *a4 = v59;
    a4[1] = v14;
    a4[2] = v41;
    a4[3] = a3;
    a4[4] = v15;
    a4[5] = v17;
    v42 = v54;
    a4[6] = v55;
    a4[7] = v42;
    v43 = v52;
    a4[8] = v53;
    a4[9] = v43;
    v44 = v50;
    a4[10] = v51;
    a4[11] = v44;
    a4[12] = v30;

    return;
  }

  v28 = v27;
  v61 = _swiftEmptyArrayStorage;
  sub_1000B362C(0, v27 & ~(v27 >> 63), 0);
  if ((v28 & 0x8000000000000000) == 0)
  {
    v56 = v28;
    v57 = a3;
    v46 = v17;
    v47 = v15;
    v58 = v14;
    v48 = a4;
    v49 = v4;
    v29 = 0;
    v30 = v61;
    v31 = v26 & 0xC000000000000001;
    v32 = v26;
    do
    {
      if (v31)
      {
        v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v33 = *(v26 + 8 * v29 + 32);
      }

      v34 = v33;
      v61 = v30;
      v36 = v30[2];
      v35 = v30[3];
      v37 = v57;

      v38 = v58;

      if (v36 >= v35 >> 1)
      {
        sub_1000B362C((v35 > 1), v36 + 1, 1);
        v30 = v61;
      }

      ++v29;
      v30[2] = v36 + 1;
      v39 = &v30[5 * v36];
      v40 = v60;
      v39[4] = v59;
      v39[5] = v38;
      v39[6] = v40;
      v39[7] = v37;
      v39[8] = v34;
      v26 = v32;
    }

    while (v56 != v29);

    a4 = v48;
    a3 = v57;
    v14 = v58;
    v17 = v46;
    v15 = v47;
    goto LABEL_12;
  }

  __break(1u);
}

id sub_100090714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = String._bridgeToObjectiveC()();

  if (a4)
  {
    v16 = String._bridgeToObjectiveC()();
  }

  else
  {
    v16 = 0;
  }

  v19[0] = a6;
  v19[1] = a7;
  v19[2] = a8;
  v19[3] = a9;
  v17 = [v9 initWithProcessInstanceIdentifier:v15 bundleIdentifier:v16 xpcListenerEndpoint:a5 auditToken:v19];

  return v17;
}

char *sub_100090800(char *a1)
{
  v2 = a1;
  v3 = a1[32];
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      v2 = sub_100090A94(v8, v4, v2);

      return v2;
    }
  }

  __chkstk_darwin(a1);
  v5 = &v9 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_100047518(0, v4, v5);
  v6 = sub_100090964(v5, v4, v2);
  if (!v1)
  {
    return v6;
  }

  swift_willThrow();
  return v2;
}

char *sub_100090964(char *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = 0;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    result = [*(*(a3 + 56) + 8 * v15) value];
    if (result == 1)
    {
      *(v4 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
        return sub_10010BFDC(v4, a2, v5, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      return sub_10010BFDC(v4, a2, v5, a3);
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

char *sub_100090A94(char *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v6 = sub_100090964(v5, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_100090B0C(void *a1)
{
  v1 = [a1 systemImageName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100090B70(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100090BE0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10002EB80(&qword_100198C20, &qword_10014D090);
  __chkstk_darwin(v6 - 8);
  v8 = &v27[-v7 - 8];
  v28[3] = &type metadata for ConcreteXPCEvent;
  v28[4] = &off_10018C970;
  v9 = swift_allocObject();
  v28[0] = v9;
  v10 = *(a1 + 1);
  v29 = *(a1 + 3);
  v30 = v10;
  v11 = *(a1 + 1);
  *(v9 + 16) = *a1;
  *(v9 + 32) = v11;
  *(v9 + 48) = a1[4];
  v12 = sub_1000034B4(v28, &type metadata for ConcreteXPCEvent);
  v13 = v12[3];
  v14 = v12[4];
  v15 = v13 == 0xD00000000000001FLL && 0x8000000100154100 == v14;
  if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    swift_unknownObjectRetain();
    sub_10004AD94(&v30, v27);
    sub_10004ADCC(&v29, v27);
    if (qword_100198220 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000347C(v16, qword_10019DD28);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_11;
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = "Received Siri Vocabulary database migration darwin notification";
    goto LABEL_10;
  }

  v24 = v13 == 0xD000000000000029 && 0x8000000100154120 == v14;
  if (!v24 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    swift_unknownObjectRetain();
    sub_10004AD94(&v30, v27);
    sub_10004ADCC(&v29, v27);
    return sub_1000034F8(v28);
  }

  swift_unknownObjectRetain();
  sub_10004AD94(&v30, v27);
  sub_10004ADCC(&v29, v27);
  if (qword_100198220 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_10000347C(v25, qword_10019DD28);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = "Received Siri language change darwin notification";
LABEL_10:
    _os_log_impl(&_mh_execute_header, v17, v18, v20, v19, 2u);
  }

LABEL_11:

  v21 = type metadata accessor for TaskPriority();
  sub_1000075C4(v8, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = a3;
  v22[5] = a2;
  swift_unknownObjectRetain();

  sub_10003A6C0(0, 0, v8, &unk_10014FB70, v22);

  return sub_1000034F8(v28);
}

uint64_t sub_100090F6C()
{
  sub_100027014();
  sub_1000036C4();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  v1[1] = sub_10000BFAC;
  sub_100091EFC();

  return sub_100084EAC(v3, v4, v5, v6, v7);
}

uint64_t sub_10009101C()
{
  sub_1000070C8();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  v1[1] = sub_10000BEC4;
  v3 = sub_100006A94();

  return v4(v3);
}

unint64_t sub_1000910C0()
{
  result = qword_10019ACA0;
  if (!qword_10019ACA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019ACA0);
  }

  return result;
}

uint64_t sub_100091130()
{
  sub_1000070C8();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  v1[1] = sub_10000BEC4;
  v3 = sub_100006A94();

  return v4(v3);
}

uint64_t sub_1000911F0()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100091238()
{
  sub_1000070C8();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  v1[1] = sub_10000BEC4;
  v3 = sub_100006A94();

  return v4(v3);
}

uint64_t sub_1000912FC()
{
  sub_100028788();
  sub_1000036C4();
  sub_100002704();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  sub_100007B80(v1);
  sub_10001A7B0();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10009138C()
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

uint64_t sub_10009141C()
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

uint64_t sub_1000914AC()
{
  sub_100028788();
  sub_1000036C4();
  sub_100002704();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  sub_100007B80(v1);
  sub_10001A7B0();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_10009153C()
{
  result = qword_10019BB00;
  if (!qword_10019BB00)
  {
    sub_10002EC70(&unk_10019ACC0, &qword_1001507B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019BB00);
  }

  return result;
}

uint64_t sub_1000915A0()
{
  sub_100028788();
  sub_1000036C4();
  sub_100002704();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  sub_100007B80(v1);
  sub_10001A7B0();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100091630()
{
  sub_100028788();
  sub_1000036C4();
  sub_100002704();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  sub_100007B80(v1);
  sub_10001A7B0();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000916C0()
{
  sub_100028788();
  sub_1000036C4();
  sub_100002704();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  sub_100007B80(v1);
  sub_10001A7B0();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100091750()
{
  sub_100027014();
  sub_1000036C4();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  v1[1] = sub_10000BEC4;
  sub_100091EFC();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100091804()
{
  sub_1000070C8();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  v3 = sub_100011638(v1);

  return v4(v3);
}

uint64_t sub_100091894()
{
  sub_1000070C8();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  v3 = sub_100011638(v1);

  return v4(v3);
}

uint64_t sub_100091924()
{
  sub_1000070C8();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  v3 = sub_100011638(v1);

  return v4(v3);
}

uint64_t sub_1000919B4()
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

uint64_t sub_100091A44()
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

uint64_t sub_100091AD4()
{
  _Block_release(*(v0 + 40));

  v1 = sub_100029498();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100091B24()
{
  sub_100028788();
  sub_1000036C4();
  sub_100002704();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  sub_100007B80(v1);
  sub_10001A7B0();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

_BYTE *storeEnumTagSinglePayload for ApplicationServiceInstance.Errors(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100091CC4()
{
  result = qword_10019AD28;
  if (!qword_10019AD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019AD28);
  }

  return result;
}

id sub_100091D68(uint64_t a1)
{
  v3 = *(*(v1 + 56) + 8 * a1);

  return v3;
}

uint64_t sub_100091D90(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

uint64_t sub_100091E00()
{

  return swift_slowAlloc();
}

uint64_t sub_100091E24(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100091E54(uint64_t a1)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2082;

  return sub_10008B6EC(v2);
}

BOOL sub_100091E74(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_100091EA8(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

void sub_100091EC0(char a1, uint64_t a2)
{

  sub_100021568(a1, a2, 1, v2);
}

uint64_t sub_100091EE4()
{
}

uint64_t sub_100091F10(uint64_t a1, uint64_t a2)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100091F34(uint64_t a1, uint64_t a2)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100091F58()
{

  return swift_arrayDestroy();
}

uint64_t sub_100091F74()
{
}

uint64_t sub_100091F8C()
{

  return swift_slowAlloc();
}

uint64_t sub_100091FA8()
{
}

double sub_1000920F0(uint64_t a1)
{
  *(v1 + 232) = a1;

  return result;
}

double sub_100092110(uint64_t a1)
{
  *(v1 + 232) = a1;

  return result;
}

uint64_t sub_100092130(uint64_t a1, uint64_t a2)
{

  return swift_storeEnumTagMultiPayload();
}

BOOL sub_100092150()
{

  return os_log_type_enabled(v0, v1);
}

void sub_100092168()
{

  sub_100045B08();
}

uint64_t sub_100092180(uint64_t a1)
{

  return static Array._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t sub_100092198()
{

  return sub_1000C512C();
}

uint64_t sub_1000921C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100198238 != -1)
  {
    sub_100007F90(&qword_100198238);
  }

  memcpy(v36, &unk_10019DD98, 0xB0uLL);
  if (a2)
  {
    sub_1000196B0(v36, &v20);
    if (qword_100198240 != -1)
    {
      sub_100002BA8(&qword_100198240);
    }

    sub_100003A8C(&qword_10019DE48);
    v20 = a1;
    v21 = a2;
    v7 = == infix<A>(_:_:)();
    v4 = v8;
    v10 = v9;
    memcpy(v19, v36, sizeof(v19));
    QueryType.filter(_:)(v7, v4, v10, &type metadata for Table, &protocol witness table for Table, v11, v12, v13, v18, v19[0], v19[1], v19[2], v19[3], v19[4], v19[5], v19[6], v19[7], v19[8], v19[9], v19[10], v19[11], v19[12], v19[13], v19[14], v19[15], v19[16], v19[17], v19[18], v19[19], v19[20], v19[21], v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34);

    sub_10001970C(v36);
    v14 = &v20;
  }

  else
  {
    sub_1000196B0(v36, &v20);
    v14 = v36;
  }

  memcpy(v35, v14, sizeof(v35));
  v23 = &type metadata for Table;
  v24 = &protocol witness table for Table;
  v20 = swift_allocObject();
  memcpy((v20 + 16), v35, 0xB0uLL);
  Connection.prepareRowIterator(_:)(&v20);
  v15 = sub_1000034F8(&v20);
  if (!v3)
  {
    __chkstk_darwin(v15);

    RowIterator.compactMap<A>(_:)();
    v4 = v17;
  }

  return v4;
}

uint64_t sub_100092450(__int128 *a1)
{
  if (qword_100198238 != -1)
  {
    sub_100007F90(&qword_100198238);
  }

  memcpy(__dst, &unk_10019DD98, sizeof(__dst));
  memcpy(__src, &unk_10019DD98, sizeof(__src));
  sub_1000196B0(__dst, v15);
  if (qword_100198240 != -1)
  {
    sub_100002BA8(&qword_100198240);
  }

  sub_100003A8C(&qword_10019DE48);
  <- infix<A>(_:_:)();
  sub_10002EB80(&unk_10019AAE0, &unk_10014BE30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014BC40;
  if (qword_100198248 != -1)
  {
    swift_once();
  }

  sub_100003A8C(&qword_10019DE60);
  <- infix<A>(_:_:)();
  if (qword_100198250 != -1)
  {
    swift_once();
  }

  sub_100003A8C(&qword_10019DE78);
  <- infix<A>(_:_:)();
  v2 = QueryType.insert(_:_:)(v15, inited);
  v4 = v3;
  v6 = v5;
  swift_setDeallocating();
  sub_1000B3030();
  sub_10002EBC8(v15);
  memcpy(v18, __src, sizeof(v18));
  sub_10001970C(v18);
  v19.template._countAndFlagsBits = v2;
  v19.template._object = v4;
  v19.bindings._rawValue = v6;
  Connection.run(_:)(v19);
  if (v7)
  {

    v15[0] = v7;
    swift_errorRetain();
    sub_10002EB80(&unk_100198760, &qword_10014F3C0);
    if (swift_dynamicCast())
    {

      v8 = __src[1];
      v9 = __src[2];
      v10 = __src[3];
      if (LODWORD(__src[2]) == 19)
      {
        type metadata accessor for Schema.RuntimeError(0);
        sub_100065094();
        swift_allocError();
        *v11 = 0xD00000000000004DLL;
        v11[1] = 0x8000000100156480;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }

      else
      {
        v13 = __src[0];
        sub_10002EC1C();
        swift_allocError();
        *v14 = v13;
        *(v14 + 8) = v8;
        *(v14 + 16) = v9;
        *(v14 + 24) = v10;
        swift_willThrow();
      }
    }
  }

  else
  {
  }
}

uint64_t sub_10009282C()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100056DD4();
  return ExpressionType.init(_:)(0xD000000000000010, 0x8000000100154580, v0, v1);
}

uint64_t sub_100092890()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100056DD4();
  return ExpressionType.init(_:)(0x72506D6574737973, 0xEE006C6F636F746FLL, v0, v1);
}

uint64_t sub_1000928FC()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100056DD4();
  return ExpressionType.init(_:)(0xD000000000000010, 0x80000001001564D0, v0, v1);
}

double sub_100092960@<D0>(_OWORD *a1@<X8>)
{
  sub_1000929A0(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

void sub_1000929A0(void *a1@<X8>)
{
  if (qword_100198240 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  if (qword_100198248 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  if (qword_100198250 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v2;
  a1[5] = v3;
}

double sub_100092B6C@<D0>(_OWORD *a1@<X8>)
{
  (*(v1 + 16))(v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

__n128 sub_100092BB8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100092BCC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_100092C0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_100092C68(uint64_t a1, uint64_t *a2)
{
  result = sub_1000232F4(a1);
  v4 = result;
  for (i = 0; v4 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      result = *(a1 + 8 * i + 32);
    }

    v6 = result;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return result;
    }

    v7 = [result systemProtocols];
    sub_100003D44(0, &qword_100199040, LNSystemProtocol_ptr);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = v6;
    sub_100092D8C(v8, a2, v9);
  }

  return result;
}

void sub_100092D8C(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = sub_1000232F4(a1);
  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v7 = *(a1 + 8 * i + 32);
    }

    v8 = v7;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v9 = *a2;
    v10 = a3;
    v11 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10007076C();
      v9 = v15;
      *a2 = v15;
    }

    v13 = *(v9 + 16);
    if (v13 >= *(v9 + 24) >> 1)
    {
      sub_10007076C();
      v9 = v16;
      *a2 = v16;
    }

    *(v9 + 16) = v13 + 1;
    v14 = v9 + 16 * v13;
    *(v14 + 32) = v10;
    *(v14 + 40) = v11;
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t sub_100093040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  return _swift_task_switch(sub_100093064, 0, 0);
}

void sub_100093064()
{
  v77 = v0;
  v1 = v0 + 16;
  v69 = *(v0 + 72);
  v2 = *(v0 + 48);
  v74[0] = _swiftEmptyArrayStorage;
  sub_100092C68(v2, v74);
  v3 = 0;
  v4 = v74[0];
  v5 = *(v74[0] + 16);
  v64 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v5 == v3)
    {
      v16 = v64;

      v17 = v64[2];
      if (v17)
      {
        v76 = _swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        v18 = 4;
        do
        {
          v19 = v64[v18];
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v18 += 2;
          --v17;
        }

        while (v17);

        v20 = v76;
      }

      else
      {

        v20 = _swiftEmptyArrayStorage;
      }

      v74[1] = _swiftEmptyArrayStorage;
      v21 = sub_1000232F4(v20);
      v22 = 0;
      v23 = v20 & 0xC000000000000001;
      while (v21 != v22)
      {
        sub_10003818C(v22, v23 == 0, v20);
        if (v23)
        {
          v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v24 = *(v20 + 8 * v22 + 32);
        }

        v25 = v24;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_61;
        }

        v75 = v24;
        sub_10009374C(&v75, &v76);

        sub_10006E3AC(v76);
        ++v22;
      }

      v26 = v67[9];

      v76 = &_swiftEmptySetSingleton;

      v28 = sub_100092EE8(v27);

      v29 = sub_100007BA8(v69);
      v31 = sub_1000034B4(v29, v30);
      sub_100075FA8(v28, *v31, v31[1], v31[2], v31[3]);
      v33 = v32;

      sub_1000955F0(v33, v26);
      v35 = v34;

      *(v26 + 64) = v35;

      sub_10002EB80(&qword_10019A778, &qword_10014F458);
      v36 = _swiftEmptyArrayStorage;
      *(v26 + 56) = Dictionary.init(dictionaryLiteral:)();

      v37 = 0;
      v65 = v64 + 4;
      v66 = v64[2];
      while (1)
      {
        if (v37 == v66)
        {

          v63 = v67[1];

          v63(v36);
          return;
        }

        if (v37 >= v16[2])
        {
          goto LABEL_62;
        }

        v38 = v67[8];
        v39 = v67[7];
        v40 = v65[2 * v37 + 1];
        v41 = v65[2 * v37];
        v42 = v40;
        sub_100093B40(v41, v39, v38, v42);
        v44 = v43;

        v45 = v44 >> 62;
        if (v44 >> 62)
        {
          v46 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v46 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v47 = v36 >> 62;
        if (v36 >> 62)
        {
          v48 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v48 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v49 = v48 + v46;
        if (__OFADD__(v48, v46))
        {
          goto LABEL_63;
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          break;
        }

        if (v47)
        {
          goto LABEL_37;
        }

        v50 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
        if (v50 < v49)
        {
          goto LABEL_38;
        }

        v51 = v36 & 0xFFFFFFFFFFFFFF8;
LABEL_39:
        v72 = v37;
        v52 = *(v51 + 16);
        if (v45)
        {
          v53 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v53 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v73 = v72 + 1;
        if (v53)
        {
          v54 = sub_1000232F4(v44);
          if (v50 - v52 < v54)
          {
            goto LABEL_65;
          }

          v70 = v36;
          v55 = v51 + 8 * v52 + 32;
          v68 = v54;
          if (v45)
          {
            if (v53 < 1)
            {
              goto LABEL_67;
            }

            sub_100095E30();
            for (i = 0; i != v53; ++i)
            {
              sub_10002EB80(&qword_10019A730, &qword_10014F3E0);
              v57 = sub_100037B20(v1, i, v44);
              v59 = *v58;
              v57(v1, 0);
              *(v55 + 8 * i) = v59;
            }
          }

          else
          {
            sub_100003D44(0, &qword_10019A798, LNSuggestedAction_ptr);
            swift_arrayInitWithCopy();
          }

          v16 = v64;
          v36 = v70;
          v37 = v73;
          if (v68 < v46)
          {
            goto LABEL_64;
          }

          if (v68 > 0)
          {
            v60 = *(v51 + 16);
            v61 = __OFADD__(v60, v68);
            v62 = v60 + v68;
            if (v61)
            {
              goto LABEL_66;
            }

            *(v51 + 16) = v62;
          }
        }

        else
        {

          v37 = v73;
          if (v46 > 0)
          {
            goto LABEL_64;
          }
        }
      }

      if (v47)
      {
LABEL_37:
        _CocoaArrayWrapper.endIndex.getter();
      }

LABEL_38:
      v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v51 = v36 & 0xFFFFFFFFFFFFFF8;
      v50 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
      goto LABEL_39;
    }

    if (v3 >= *(v4 + 16))
    {
      break;
    }

    v71 = *(v4 + 16 * v3 + 32);
    v6 = sub_100007BA8(v69);
    sub_1000034B4(v6, v7);
    v8 = v71;
    v9 = *(&v71 + 1);
    if (sub_100075B5C(v8, v9))
    {
      v10 = v64;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v76 = v64;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000B3704(0, v64[2] + 1, 1);
        v10 = v76;
      }

      v12 = v71;
      v14 = v10[2];
      v13 = v10[3];
      if (v14 >= v13 >> 1)
      {
        v15 = sub_100005150(v13);
        sub_1000B3704(v15, v14 + 1, 1);
        v12 = v71;
        v10 = v76;
      }

      ++v3;
      v10[2] = v14 + 1;
      v64 = v10;
      *&v10[2 * v14 + 4] = v12;
    }

    else
    {

      ++v3;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
}

void sub_10009374C(id *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = *a1;
  v2 = [*a1 parameters];
  sub_100003D44(0, &qword_100199048, LNActionParameterMetadata_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = sub_1000232F4(v3);
  v5 = 0;
  v6 = v3 & 0xC000000000000001;
  v29 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v4 == v5)
    {

      v17 = sub_100095810(v23);
      if (v17)
      {
        sub_1000A0DB4(v17, &v27);

        v3 = a2;
        if (*(&v28 + 1))
        {
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_23;
          }

          v2 = v25;
          v6 = v26;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_26;
          }

          goto LABEL_18;
        }
      }

      else
      {
        v27 = 0u;
        v28 = 0u;
        v3 = a2;
      }

      sub_10003D580(&v27);
      goto LABEL_23;
    }

    if (v6)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v7 = *(v3 + 8 * v5 + 32);
    }

    v8 = v7;
    v9 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    v2 = sub_1000939E0();
    v11 = v10;

    ++v5;
    if (v11)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100013A60();
        v29 = v15;
      }

      v12 = v29[2];
      if (v12 >= v29[3] >> 1)
      {
        sub_100013A60();
        v29 = v16;
      }

      v13 = v29;
      v29[2] = v12 + 1;
      v14 = &v13[2 * v12];
      v14[4] = v2;
      v14[5] = v11;
      v5 = v9;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_100013A60();
  v29 = v21;
LABEL_18:
  v18 = v29[2];
  if (v18 >= v29[3] >> 1)
  {
    sub_100013A60();
    v29 = v22;
  }

  v19 = v29;
  v29[2] = v18 + 1;
  v20 = &v19[2 * v18];
  v20[4] = v2;
  v20[5] = v6;
LABEL_23:
  *v3 = v29;
}

uint64_t sub_1000939E0()
{
  v1 = [v0 valueType];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = v7;
      v9 = v1;
      v10 = [v8 memberValueType];
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        v12 = [v11 identifier];
        v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v6;
      }
    }

    else
    {
    }

    return 0;
  }

  v3 = v2;
  v4 = v1;
  v5 = [v3 identifier];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v6;
}

void sub_100093B40(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v5;
  v105 = a4;
  v109 = a2;
  v110 = a3;
  v108 = a1;
  v9 = [a1 parameters];
  sub_100003D44(0, &qword_100199048, LNActionParameterMetadata_ptr);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = sub_1000232F4(v10);
  if (v11)
  {
    v12 = v11;
    sub_1000B3784(0, v11 & ~(v11 >> 63), 0);
    if (v12 < 0)
    {
      goto LABEL_74;
    }

    v14 = 0;
    v6 = _swiftEmptyArrayStorage;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v15 = *(v10 + 8 * v14 + 32);
      }

      v16 = v15;
      v7 = sub_1000943E0(v15);

      v18 = _swiftEmptyArrayStorage[2];
      v17 = _swiftEmptyArrayStorage[3];
      if (v18 >= v17 >> 1)
      {
        v19 = sub_100005150(v17);
        sub_1000B3784(v19, v18 + 1, 1);
      }

      ++v14;
      _swiftEmptyArrayStorage[2] = v18 + 1;
      _swiftEmptyArrayStorage[v18 + 4] = v7;
    }

    while (v12 != v14);
  }

  else
  {

    v6 = _swiftEmptyArrayStorage;
  }

  v4 = 0;
  v20 = _swiftEmptyArrayStorage[2];
  v21 = &_swiftEmptyArrayStorage[4];
  while (1)
  {
    v22 = _swiftEmptyArrayStorage[2];
    if (v20 == v4)
    {
      break;
    }

    if (v4 >= v22)
    {
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    v23 = _swiftEmptyArrayStorage[v4 + 4];
    if (v23 >> 62)
    {
      v24 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v13 = v23 & 0xFFFFFFFFFFFFFF8;
      v24 = *(v13 + 16);
    }

    ++v4;
    if (!v24)
    {

      sub_100003D44(0, &qword_100199040, LNSystemProtocol_ptr);
      v79 = [objc_opt_self() openEntitySystemProtocol];
      v80 = static NSObject.== infix(_:_:)();

      if (v80)
      {
        v89 = sub_100005270(v81, v82, v83, v84, v85, v86, v87, v88, v97, v99, v101, v103, v105, v106, v108);
        v94 = sub_1000941AC(v89, v90, v91, v92, v93);
        if (v94)
        {
          v95 = v94;
          sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
          v96 = swift_allocObject();
          *(v96 + 16) = xmmword_10014CE80;
          *(v96 + 32) = v95;
        }
      }

      return;
    }
  }

  v7 = _swiftEmptyArrayStorage;
  if (!v22)
  {
LABEL_30:

    sub_100070920();
    v37 = v29;
    v4 = *(v29 + 16);
    v13 = *(v29 + 24);
    v111 = v4 + 1;
    if (v4 >= v13 >> 1)
    {
      goto LABEL_75;
    }

    goto LABEL_31;
  }

  sub_1000B3764(0, v22, 0);
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (*v21 >> 62)
    {
      v25 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v13 = *v21 & 0xFFFFFFFFFFFFFF8;
      v25 = *(v13 + 0x10);
    }

    v4 = v25 - 1;
    if (__OFSUB__(v25, 1))
    {
      break;
    }

    v27 = _swiftEmptyArrayStorage[2];
    v26 = _swiftEmptyArrayStorage[3];
    if (v27 >= v26 >> 1)
    {
      v28 = sub_100005150(v26);
      sub_1000B3764(v28, v27 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v27 + 1;
    _swiftEmptyArrayStorage[v27 + 4] = v4;
    ++v21;
    if (!--v22)
    {
      goto LABEL_30;
    }
  }

LABEL_72:
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    sub_100005150(v13);
    sub_100070920();
    v37 = v29;
LABEL_31:
    sub_100003B58(v29, v30, v31, v32, v33, v34, v35, v36, v97, v99, v101, v103, v105, v106, v108, v109, v110, v111);
    if (v4 <= 1)
    {
      break;
    }

LABEL_42:
    v106 = v8;
    v64 = 0;
    v65 = v6[2];
    v101 = v37 + 32;
    v103 = _swiftEmptyArrayStorage;
    v8 = -v65;
    v4 = v105;
    v97 = v65;
    v99 = v37;
    while (1)
    {
      v13 = *(v37 + 16);
      if (v64 >= v13)
      {
        break;
      }

      if (v65)
      {
        v66 = *(v101 + 8 * v64);

        specialized ContiguousArray.reserveCapacity(_:)();
        v4 = v6[2];
        v67 = 4;
        while (v4)
        {
          v13 = v67 - 4;
          if ((v67 - 4) >= v6[2])
          {
            goto LABEL_67;
          }

          if (v13 >= *(v66 + 16))
          {
            goto LABEL_68;
          }

          v68 = v6[v67];
          v69 = *(v66 + 8 * v67);
          if ((v68 & 0xC000000000000001) != 0)
          {

            specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if ((v69 & 0x8000000000000000) != 0)
            {
              goto LABEL_69;
            }

            v13 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v69 >= v13)
            {
              goto LABEL_70;
            }

            v70 = *(v68 + 8 * v69 + 32);
          }

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          --v4;
          ++v67;
          v13 = v8 + v67;
          if (v8 + v67 == 4)
          {

            v4 = v105;
            v65 = v97;
            v37 = v99;
            goto LABEL_56;
          }
        }

        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

LABEL_56:
      v71 = sub_100005270(v38, v39, v40, v41, v42, v43, v44, v45, v97, v99, v101, v103, v105, v106, v108);
      v76 = sub_1000941AC(v71, v72, v73, v74, v75);

      if (v76)
      {
        v77 = v76;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v78 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= v78 >> 1)
        {
          sub_100005150(v78);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v103 = _swiftEmptyArrayStorage;
      }

      if (++v64 == v111)
      {

        return;
      }
    }
  }

  while (2)
  {
    v46 = v7[2];
    do
    {
      if (!v46)
      {
        goto LABEL_42;
      }

      v47 = v46 - 1;
      v48 = v7[v46-- + 3];
    }

    while (v48 < 1);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1000F51BC();
      v7 = v63;
    }

    if (v47 + 1 > v7[2])
    {
      __break(1u);
    }

    else
    {
      v49 = &v7[v47];
      v50 = v49[4];
      v51 = __OFSUB__(v50, 1);
      v52 = v50 - 1;
      if (!v51)
      {
        v49[4] = v52;
        v53 = *(v37 + 16);
        v54 = *(v37 + 24);

        if (v53 >= v54 >> 1)
        {
          sub_100070920();
          v37 = v55;
        }

        sub_100003B58(v55, v56, v57, v58, v59, v60, v61, v62, v98, v100, v102, v104, v105, v107, v108, v109, v110, v53 + 1);
        if (v53 < 2)
        {
          continue;
        }

        goto LABEL_42;
      }
    }

    break;
  }

  __break(1u);
}

id sub_1000941AC(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  objc_allocWithZone(LNAction);

  v7 = a1;
  v8 = sub_1000BAA38(v7);
  sub_100094A24(v7, a4, v8);
  v10 = v9;
  objc_allocWithZone(LNSuggestedAction);
  return sub_100095514(v8, a4, v10);
}

void *sub_1000943E0(void *a1)
{
  v2 = v1;
  sub_1000237B0(a1);
  v4 = _swiftEmptyArrayStorage;
  if (!v5)
  {
    return v4;
  }

  sub_1000939E0();
  if (v6)
  {

    v7 = sub_1000B6334();

    if (v7)
    {
      v8 = sub_1000232F4(v7);
      if (v8)
      {
        v9 = v8;
        result = specialized ContiguousArray.reserveCapacity(_:)();
        if ((v9 & 0x8000000000000000) == 0)
        {
          v11 = 0;
          do
          {
            if ((v7 & 0xC000000000000001) != 0)
            {
              v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v12 = *(v7 + 8 * v11 + 32);
            }

            v13 = v12;
            ++v11;
            objc_allocWithZone(LNProperty);

            v14 = sub_100002B74();
            sub_10010BB9C(v14, v15, v13);
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          while (v9 != v11);

          goto LABEL_34;
        }

        __break(1u);
        goto LABEL_42;
      }

      goto LABEL_38;
    }

LABEL_39:

    return v4;
  }

  v16 = [a1 valueType];
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (!v17)
  {

    sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
    v4 = swift_allocObject();
    *(v4 + 1) = xmmword_10014CE80;
    v29 = objc_allocWithZone(LNProperty);
    v30 = sub_100002B74();
    v4[4] = sub_10010BB9C(v30, v31, 0);
    return v4;
  }

  v18 = [v17 enumerationIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1000034B4((v2 + 16), *(v2 + 40));

  v19 = sub_1000B6338();

  if (v19)
  {

    v20 = sub_100094870();
    v21 = sub_1000232F4(v20);
    if (v21)
    {
      v22 = v21;
      result = specialized ContiguousArray.reserveCapacity(_:)();
      if (v22 < 0)
      {
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v23 = 0;
      do
      {
        if ((v20 & 0xC000000000000001) != 0)
        {
          v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v24 = *(v20 + 8 * v23 + 32);
        }

        v25 = v24;
        ++v23;
        objc_allocWithZone(LNProperty);

        v26 = sub_100002B74();
        sub_10010BB9C(v26, v27, v25);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v22 != v23);

      v28 = v19;
LABEL_33:

LABEL_34:

      return _swiftEmptyArrayStorage;
    }

LABEL_38:

    goto LABEL_39;
  }

  v32 = sub_1000B6334();

  if (!v32)
  {

    goto LABEL_39;
  }

  v33 = sub_1000232F4(v32);
  if (!v33)
  {

    goto LABEL_38;
  }

  v34 = v33;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v34 & 0x8000000000000000) == 0)
  {
    v35 = 0;
    do
    {
      if ((v32 & 0xC000000000000001) != 0)
      {
        v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v36 = *(v32 + 8 * v35 + 32);
      }

      v37 = v36;
      ++v35;
      objc_allocWithZone(LNProperty);

      v38 = sub_100002B74();
      sub_10010BB9C(v38, v39, v37);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v34 != v35);

    v28 = v16;
    goto LABEL_33;
  }

LABEL_43:
  __break(1u);
  return result;
}

void *sub_100094870()
{
  v1 = [v0 cases];
  sub_100003D44(0, &qword_10019A0A0, LNEnumCaseMetadata_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = sub_1000232F4(v2);
  if (v3)
  {
    v4 = v3;
    v16 = _swiftEmptyArrayStorage;
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v4 < 0)
    {
      __break(1u);
    }

    else
    {
      v6 = 0;
      do
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v7 = *(v2 + 8 * v6 + 32);
        }

        v8 = v7;
        ++v6;
        v9 = [v7 identifier];
        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = v11;

        v15[3] = &type metadata for String;
        v15[0] = v10;
        v15[1] = v12;
        v13 = sub_100095428();
        v14 = objc_allocWithZone(LNValue);
        sub_1000688F0(v15, v13);

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v4 != v6);

      return v16;
    }
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return result;
}

void sub_100094A24(void *a1, void *a2, void *a3)
{
  v6 = [a1 descriptionMetadata];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 descriptionText];

    v9 = _swiftEmptyDictionarySingleton;
    if (v8)
    {
      v10 = LNSuggestedActionDialogParameterKeyDescription;
      v11 = sub_100007BA8(v124);
      v121 = a3;
      if (sub_1000034B4(v11, v12)[1])
      {

        sub_100002B74();
        v13 = String._bridgeToObjectiveC()();
      }

      else
      {
        v13 = 0;
      }

      v14 = [v8 localizedStringForLocaleIdentifier:v13];

      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      swift_isUniquelyReferenced_nonNull_native();
      sub_100007FB0();
      sub_100069360(v15, v17, v10, v18);

      v9 = v122;
      a3 = v121;
    }
  }

  else
  {
    v9 = _swiftEmptyDictionarySingleton;
  }

  v19 = LNActionMetadata._iconSystemImageNameForAppIntentsOnly.getter();
  if (v20)
  {
    v21 = v19;
    v22 = v20;
    v23 = LNSuggestedActionDialogParameterKeyIconSystemImageName;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v122 = v9;
    sub_100069360(v21, v22, v23, isUniquelyReferenced_nonNull_native);
  }

  v25 = sub_100095810(a1);
  if (v25)
  {
    sub_1000A0DB4(v25, &v122);

    if (v123)
    {
      if (swift_dynamicCast())
      {
        v26 = v124[8];

        v27 = sub_100002B74();
        v29 = sub_1000A0CB8(v27, v28, v26);
        v31 = v30;

        if (v31)
        {
          v32 = LNSuggestedActionDialogParameterKeyEntityType;
          swift_isUniquelyReferenced_nonNull_native();
          sub_1000071EC();
          sub_100069360(v29, v31, v32, v33);
        }
      }
    }

    else
    {
      sub_10003D580(&v122);
    }
  }

  v34 = [a2 identifier];
  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;
  if (v35 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v37 == v38)
  {

    goto LABEL_23;
  }

  v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v40)
  {

LABEL_23:
    v41 = v124;
    v42 = sub_1000034B4(v124 + 2, v124[5]);
    sub_1000958B8(0x676E6974746573, 0xE700000000000000, *v42, v42[1], v42[2], v42[3], a3);
    if (v43)
    {
      v44 = v43;
      v45 = sub_1000034B4(v41 + 2, v41[5]);
      sub_1000958B8(0x704F65676E616863, 0xEF6E6F6974617265, *v45, v45[1], v45[2], v45[3], a3);
      if (v46)
      {
        v47 = v41;
        v48 = v46;
        v49 = LNSuggestedActionDialogParameterKeyEntityName;
        v50 = [v44 displayRepresentation];
        v51 = [v50 title];

        if (sub_1000034B4(v47 + 2, v47[5])[1])
        {

          sub_100002B74();
          v52 = String._bridgeToObjectiveC()();
        }

        else
        {
          v52 = 0;
        }

        v84 = [v51 localizedStringForLocaleIdentifier:v52];

        v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v87 = v86;

        swift_isUniquelyReferenced_nonNull_native();
        sub_100007FB0();
        sub_100069360(v85, v87, v49, v88);
        v89 = LNSuggestedActionDialogParameterKeyChangeOperation;
        v90 = [v48 identifier];
        v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v93 = v92;

        swift_isUniquelyReferenced_nonNull_native();
        sub_100007FB0();
        sub_100069360(v91, v93, v89, v94);

        return;
      }
    }

    v70 = 0;
LABEL_47:

    sub_100095D94();
    swift_allocError();
    *v71 = a3;
    *(v71 + 8) = v70;
    swift_willThrow();
    v72 = a3;
    return;
  }

  v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v55 = v54;
  v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v58 = v57;

  if (v53 == v56 && v55 == v58)
  {

    goto LABEL_49;
  }

  v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v60)
  {
LABEL_49:
    v73 = sub_100007BA8(v124);
    v75 = sub_1000034B4(v73, v74);
    sub_1000958B8(0x6F69746365726964, 0xE90000000000006ELL, *v75, v75[1], v75[2], v75[3], a3);
    if (v76)
    {
      v77 = v76;
      v78 = LNSuggestedActionDialogParameterKeyDirection;
      v79 = [v76 identifier];
      v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v82 = v81;

      swift_isUniquelyReferenced_nonNull_native();
      sub_1000071EC();
      sub_100069360(v80, v82, v78, v83);

      return;
    }

    v70 = 1;
    goto LABEL_47;
  }

  v61 = [a3 parameters];
  sub_100003D44(0, &qword_10019BBA0, LNProperty_ptr);
  v62 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v63 = sub_1000232F4(v62);
  for (i = 0; ; ++i)
  {
    if (v63 == i)
    {

      return;
    }

    if ((v62 & 0xC000000000000001) != 0)
    {
      v65 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_68;
      }

      v65 = *(v62 + 8 * i + 32);
    }

    v66 = v65;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v67 = [v65 value];
    if (v67 && (v68 = v67, v69 = [v67 valueType], v68, v69))
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {

        v95 = [v66 value];
        if (v95)
        {
          v96 = v95;
          v97 = [v95 valueType];
          objc_opt_self();
          v98 = swift_dynamicCastObjCClass();
          if (v98 && (v99 = [v98 identifier], v100 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v102 = v101, v99, v103 = v124[8], , v104 = sub_1000A0CB8(v100, v102, v103), v106 = v105, , , v106))
          {
            v107 = LNSuggestedActionDialogParameterKeyEntityType;
            swift_isUniquelyReferenced_nonNull_native();
            sub_1000071EC();
            sub_100069360(v104, v106, v107, v108);
          }

          else
          {
          }

          v109 = [v96 displayRepresentation];
          if (v109)
          {
            v110 = v109;
            v111 = LNSuggestedActionDialogParameterKeyEntityName;
            v112 = [v109 title];
            v113 = sub_100007BA8(v124);
            if (sub_1000034B4(v113, v114)[1])
            {

              sub_100002B74();
              v115 = String._bridgeToObjectiveC()();
            }

            else
            {
              v115 = 0;
            }

            v116 = [v112 localizedStringForLocaleIdentifier:v115];

            v117 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v119 = v118;

            swift_isUniquelyReferenced_nonNull_native();
            sub_100007FB0();
            sub_100069360(v117, v119, v111, v120);

            return;
          }
        }

        return;
      }
    }

    else
    {
      v69 = v66;
    }
  }

  __break(1u);
LABEL_68:
  __break(1u);
}

uint64_t sub_1000953A0()
{
  sub_1000034F8((v0 + 16));

  return v0;
}

uint64_t sub_1000953D0()
{
  sub_1000953A0();

  return _swift_deallocClassInstance(v0);
}

id sub_100095428()
{
  sub_100003D44(0, &qword_10019AE40, LNLinkEnumerationValueType_ptr);
  v1 = [v0 identifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  return sub_1000954A4();
}

id sub_1000954A4()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_100002B74();
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithEnumerationIdentifier:v1];

  return v2;
}

id sub_100095514(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    type metadata accessor for LNSuggestedActionDialogParameterKey(0);
    sub_100095DE8(&qword_100198930, type metadata accessor for LNSuggestedActionDialogParameterKey, &unk_10014CD28);
    v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  v8 = [v4 initWithAction:a1 systemProtocol:a2 dialogParameters:v7.super.isa];

  return v8;
}

void sub_1000955F0(uint64_t a1, uint64_t a2)
{
  sub_10002EB80(&qword_10019AE50, &qword_10014FF88);
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = 0;
  v31 = v3;
  v32 = a1;
  v7 = *(a1 + 64);
  v6 = a1 + 64;
  v5 = v7;
  v8 = 1 << *(v6 - 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v30 = v3 + 64;
  if ((v9 & v5) != 0)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v15 = v12 | (v4 << 6);
      v16 = (*(v32 + 48) + 16 * v15);
      v35 = *v16;
      v17 = *(*(v32 + 56) + 8 * v15);
      v34 = v16[1];
      if (sub_1000034B4((a2 + 16), *(a2 + 40))[1])
      {

        v18 = v17;

        v19 = String._bridgeToObjectiveC()();
      }

      else
      {

        v20 = v17;
        v19 = 0;
      }

      v21 = [v17 localizedStringForLocaleIdentifier:v19];

      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      *(v30 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v25 = (v31[6] + 16 * v15);
      *v25 = v35;
      v25[1] = v34;
      v26 = (v31[7] + 16 * v15);
      *v26 = v22;
      v26[1] = v24;
      v27 = v31[2];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        break;
      }

      v31[2] = v29;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v4 >= v11)
      {

        return;
      }

      v14 = *(v6 + 8 * v4);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100095810(void *a1)
{
  v1 = [a1 typeSpecificMetadata];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for LNActionTypeSpecificMetadataKey(0);
  sub_100095DE8(&qword_100198920, type metadata accessor for LNActionTypeSpecificMetadataKey, &unk_10014CD6C);
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_1000958B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v52 = &type metadata for SiriDiscoverabilityClosedAppSuggestionStrategy;
  v53 = &off_10018DB18;
  v14 = swift_allocObject();
  v51[0] = v14;
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a5;
  v14[5] = a6;

  v15 = [a7 parameters];
  sub_100003D44(0, &qword_10019BBA0, LNProperty_ptr);
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = sub_1000232F4(v16);
  for (i = 0; ; ++i)
  {
    if (v17 == i)
    {

      goto LABEL_38;
    }

    if ((v16 & 0xC000000000000001) != 0)
    {
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_44;
      }

      v19 = *(v16 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v20 = v19;
    v21 = [v19 identifier];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    if (v22 == a1 && v24 == a2)
    {

LABEL_16:

      v27 = [v20 value];
      if (v27)
      {
        v28 = v27;
        v29 = [v27 value];
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        if (swift_dynamicCast())
        {
          v30 = [v28 valueType];
          objc_opt_self();
          v31 = swift_dynamicCastObjCClass();
          if (v31)
          {
            v32 = v31;
            sub_1000034B4(v51, v52);

            v33 = [v32 enumerationIdentifier];
            static String._unconditionallyBridgeFromObjectiveC(_:)();

            v34 = sub_1000B6338();

            if (v34)
            {
              v48 = v30;
              v47 = v34;
              v35 = [v34 cases];
              sub_100003D44(0, &qword_10019A0A0, LNEnumCaseMetadata_ptr);
              v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              v37 = sub_1000232F4(v36);
              for (j = 0; ; ++j)
              {
                if (v37 == j)
                {

                  goto LABEL_38;
                }

                if ((v36 & 0xC000000000000001) != 0)
                {
                  v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  if (j >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_46;
                  }

                  v39 = *(v36 + 8 * j + 32);
                }

                v40 = v39;
                if (__OFADD__(j, 1))
                {
                  goto LABEL_45;
                }

                v41 = [v39 identifier];
                v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v44 = v43;

                if (v42 == v49 && v44 == v50)
                {

                  goto LABEL_42;
                }

                v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v46)
                {
                  break;
                }
              }

LABEL_42:

              goto LABEL_38;
            }
          }

          else
          {
          }

LABEL_38:
          sub_1000034F8(v51);
          return;
        }
      }

      goto LABEL_38;
    }

    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v26)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
}

unint64_t sub_100095D94()
{
  result = qword_10019AE38;
  if (!qword_10019AE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019AE38);
  }

  return result;
}

uint64_t sub_100095DE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100095E30()
{
  result = qword_10019AE48;
  if (!qword_10019AE48)
  {
    sub_10002EC70(&qword_10019A730, &qword_10014F3E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019AE48);
  }

  return result;
}

uint64_t sub_100095EA0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100095EE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_100095F40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (qword_100198258 != -1)
  {
    sub_100007FC0(&qword_100198258);
  }

  memcpy(__dst, &unk_10019AE58, sizeof(__dst));
  if (qword_100198260 != -1)
  {
    sub_1000071FC(&qword_100198260);
  }

  sub_100003A8C(&qword_10019AF08);
  __src[0] = a3;
  __src[1] = a4;
  v12 = == infix<A>(_:_:)();
  v14 = v13;
  v16 = v15;
  if (qword_100198268 != -1)
  {
    sub_100002BC8(&qword_100198268);
  }

  sub_100003A8C(&qword_10019AF20);
  v17 = == infix<A>(_:_:)();
  v20 = && infix(_:_:)(v12, v14, v16, v17, v18, v19);
  v22 = v21;
  v24 = v23;

  memcpy(v56, __dst, sizeof(v56));
  QueryType.filter(_:)(v20, v22, v24, &type metadata for Table, &protocol witness table for Table, v25, v26, v27, v37, v39, v40, v42, v43, v45, v46, v48, v49, v51, v52, v55, v56[0], v56[1], v56[2], v56[3], v56[4], v56[5], v56[6], v56[7], v56[8], v56[9], v56[10], v56[11], v56[12], v56[13], v56[14], v56[15], v56[16], v56[17], v56[18], v56[19], v56[20], v56[21], a1, a2, __src[2], __src[3]);

  memcpy(v61, __src, sizeof(v61));
  __src[3] = &type metadata for Table;
  __src[4] = &protocol witness table for Table;
  __src[0] = swift_allocObject();
  memcpy((__src[0] + 16), v61, 0xB0uLL);
  v28 = Connection.pluck(_:)(__src);
  result = sub_1000034F8(__src);
  if (!v53)
  {
    if (v28)
    {
      sub_10009704C(a5, v58);
      v50 = v58[1];
      v54 = v58[0];
      v44 = v58[3];
      v47 = v58[2];
      v38 = v58[5];
      v41 = v58[4];
      v30 = v59;

      v32 = v38;
      v31 = v41;
      v34 = v44;
      v33 = v47;
      v36 = v50;
      v35 = v54;
    }

    else
    {
      v30 = 0;
      v35 = 0uLL;
      v36 = 0uLL;
      v33 = 0uLL;
      v34 = 0uLL;
      v31 = 0uLL;
      v32 = 0uLL;
    }

    *a6 = v35;
    *(a6 + 16) = v36;
    *(a6 + 32) = v33;
    *(a6 + 48) = v34;
    *(a6 + 64) = v31;
    *(a6 + 80) = v32;
    *(a6 + 96) = v30;
  }

  return result;
}

uint64_t sub_100096208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100198258 != -1)
  {
    sub_100007FC0(&qword_100198258);
  }

  memcpy(v36, &unk_10019AE58, 0xB0uLL);
  if (a2)
  {
    sub_1000196B0(v36, &v20);
    if (qword_100198268 != -1)
    {
      sub_100002BC8(&qword_100198268);
    }

    sub_100003A8C(&qword_10019AF20);
    v20 = a1;
    v21 = a2;
    v7 = == infix<A>(_:_:)();
    v4 = v8;
    v10 = v9;
    memcpy(v19, v36, sizeof(v19));
    QueryType.filter(_:)(v7, v4, v10, &type metadata for Table, &protocol witness table for Table, v11, v12, v13, v18, v19[0], v19[1], v19[2], v19[3], v19[4], v19[5], v19[6], v19[7], v19[8], v19[9], v19[10], v19[11], v19[12], v19[13], v19[14], v19[15], v19[16], v19[17], v19[18], v19[19], v19[20], v19[21], v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34);

    sub_10001970C(v36);
    v14 = &v20;
  }

  else
  {
    sub_1000196B0(v36, &v20);
    v14 = v36;
  }

  memcpy(v35, v14, sizeof(v35));
  v23 = &type metadata for Table;
  v24 = &protocol witness table for Table;
  v20 = swift_allocObject();
  memcpy((v20 + 16), v35, 0xB0uLL);
  Connection.prepareRowIterator(_:)(&v20);
  v15 = sub_1000034F8(&v20);
  if (!v3)
  {
    __chkstk_darwin(v15);

    RowIterator.compactMap<A>(_:)();
    v4 = v17;
  }

  return v4;
}

uint64_t sub_100096494(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = qword_100198258;

  if (v6 != -1)
  {
    sub_100007FC0(&qword_100198258);
  }

  memcpy(__dst, &unk_10019AE58, 0xB0uLL);
  memcpy(v91, &unk_10019AE58, sizeof(v91));
  sub_1000196B0(__dst, v60);
  if (qword_100198260 != -1)
  {
    sub_1000071FC(&qword_100198260);
  }

  sub_100003A8C(&qword_10019AF08);
  *v60 = *a1;
  <- infix<A>(_:_:)();
  sub_10002EB80(&unk_10019AAE0, &unk_10014BE30);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10014E680;
  if (qword_100198268 != -1)
  {
    sub_100002BC8(&qword_100198268);
  }

  v97 = a2;
  sub_100003A8C(&qword_10019AF20);
  *v60 = *(a1 + 16);
  <- infix<A>(_:_:)();
  if (qword_100198270 != -1)
  {
    swift_once();
  }

  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v8 = LNStaticDeferredLocalizedString.asLocalizedStringResourceJSON(encoder:)();
  if (v3)
  {

    v10 = sub_10002EBC8(&v81);
    sub_100006800(v10, v11, v12, v13, v14, v15, v16, v17, v55, v56, v58, v59, v60[0], *&v60[8], v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91[0]);
    sub_10001970C(v60);
LABEL_21:
    sub_10002EBC8(v7 + 32);
    *(v7 + 16) = 0;
    swift_setDeallocating();
    return sub_1000B3030();
  }

  v18 = v8;
  v19 = v9;

  *v60 = v18;
  *&v60[8] = v19;
  <- infix<A>(_:_:)();

  if (qword_100198278 != -1)
  {
    swift_once();
  }

  sub_100003A8C(&qword_10019AF50);
  *v60 = *(a1 + 40);
  <- infix<A>(_:_:)();
  if (qword_100198280 != -1)
  {
    swift_once();
  }

  sub_100003A8C(&qword_10019AF68);
  *v60 = *(a1 + 56);
  <- infix<A>(_:_:)();
  if (qword_100198288 != -1)
  {
    swift_once();
  }

  sub_100003A8C(&qword_10019AF80);
  *v60 = *(a1 + 72);
  <- infix<A>(_:_:)();
  if (qword_100198290 != -1)
  {
    swift_once();
  }

  v57 = qword_10019AF98;
  type metadata accessor for CodingUserInfoKey();
  sub_10002EB80(&unk_100198750, &unk_1001518C0);
  v20 = Dictionary.init(dictionaryLiteral:)();
  v21 = LNValue.asJson(userInfo:)(v20);
  if (v22)
  {

    v23 = sub_10002EBC8(&v81);
    sub_100006800(v23, v24, v25, v26, v27, v28, v29, v30, v55, v57, v58, v59, v60[0], *&v60[8], v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91[0]);
    sub_10001970C(v60);
    sub_10002EBC8(v7 + 352);
    sub_10002EBC8(v7 + 272);
    sub_10002EBC8(v7 + 192);
    sub_10002EBC8(v7 + 112);
    goto LABEL_21;
  }

  <- infix<A>(_:_:)();

  v32 = QueryType.insert(_:_:)(&v81, v7);
  v34 = v33;
  v36 = v35;
  swift_setDeallocating();
  sub_1000B3030();
  v37 = sub_10002EBC8(&v81);
  sub_100006800(v37, v38, v39, v40, v41, v42, v43, v44, v55, v57, v21._countAndFlagsBits, v21._object, v60[0], *&v60[8], v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91[0]);
  sub_10001970C(v60);
  v98.template._countAndFlagsBits = v32;
  v98.template._object = v34;
  v98.bindings._rawValue = v36;
  v45 = v97;
  Connection.run(_:)(v98);
  if (v46)
  {
  }

  else
  {

    v47 = *(a1 + 96);
    v48 = *(v47 + 16);
    for (i = (v47 + 64); v48; --v48)
    {
      v50 = *(i - 3);
      v51 = *(i - 2);
      v52 = *(i - 1);
      v53 = *i;
      *&v92 = *(i - 4);
      *(&v92 + 1) = v50;
      v93 = v51;
      v94 = v52;
      v95 = v53;

      v54 = v53;
      sub_100071A14(&v92, v45);

      i += 5;
    }
  }
}

void sub_100096A90(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v5 = a1[2] == a2[2] && a1[3] == a2[3];
    if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      sub_100003D44(0, &qword_100199300, NSObject_ptr);
      if (static NSObject.== infix(_:_:)())
      {
        v6 = a1[5] == a2[5] && a1[6] == a2[6];
        if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v7 = a1[7] == a2[7] && a1[8] == a2[8];
          if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            v8 = a1[9] == a2[9] && a1[10] == a2[10];
            if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (static NSObject.== infix(_:_:)())
            {
              v9 = a1[12];
              v10 = a2[12];

              sub_1000453A0(v9, v10);
            }
          }
        }
      }
    }
  }
}

void sub_100096BC8(uint64_t a1)
{
  String.hash(into:)();
  String.hash(into:)();
  NSObject.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  NSObject.hash(into:)();
  v3 = *(v1 + 96);

  sub_10004A69C(a1, v3);
}

Swift::Int sub_100096C5C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  NSObject.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  NSObject.hash(into:)();
  sub_10004A69C(v2, *(v0 + 96));
  return Hasher._finalize()();
}

Swift::Int sub_100096D00(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_100096BC8(v2);
  return Hasher._finalize()();
}

uint64_t sub_100096DC4()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100056DD4();
  return ExpressionType.init(_:)(0xD000000000000010, 0x8000000100154580, v0, v1);
}

uint64_t sub_100096E54()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100056DD4();
  return ExpressionType.init(_:)(0xD000000000000010, 0x8000000100155350, v0, v1);
}

uint64_t sub_100096EB8()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100056DD4();
  return ExpressionType.init(_:)(0xD000000000000011, 0x8000000100156590, v0, v1);
}

uint64_t sub_100096F1C()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100056DD4();
  return ExpressionType.init(_:)(0xD000000000000017, 0x8000000100156570, v0, v1);
}

uint64_t sub_100096F9C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v7 = sub_100056DD4();
  return ExpressionType.init(_:)(a3, a4, v6, v7);
}

uint64_t sub_10009704C@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  v4 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  __chkstk_darwin(v4 - 8);
  v6 = v26 - v5;
  if (qword_100198268 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  v33 = v35;
  v34 = v36;
  if (qword_100198260 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  v8 = v35;
  v7 = v36;
  v9 = sub_100071D10(v33, v34, v35, v36, a1);
  v30 = v8;
  v31 = v9;
  v32 = v7;
  if (qword_100198270 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  v10 = v35;
  v11 = v36;
  if (qword_100198278 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  v12 = v35;
  v13 = v36;
  if (qword_100198280 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  v29 = v10;
  v15 = v35;
  v14 = v36;
  if (qword_100198288 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  v27 = v6;
  v28 = v11;
  v17 = v35;
  v16 = v36;
  if (qword_100198290 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  v26[1] = v35;
  v26[2] = v36;
  sub_100003D44(0, &qword_10019AD00, LNStaticDeferredLocalizedString_ptr);
  v18 = LNStaticDeferredLocalizedString.init(localizedStringResourceJSON:)();
  v29 = sub_100003D44(0, &qword_1001990E8, LNValue_ptr);
  v19 = type metadata accessor for URL();
  sub_1000075C4(v27, 1, 1, v19);
  v20 = static LNValue.fromJSON(_:bundleURL:effectiveBundleIdentifier:)();
  sub_1000209B0(v27);

  v23 = v33;
  v22 = v34;
  v25 = v31;
  v24 = v32;
  *a2 = v30;
  a2[1] = v24;
  a2[2] = v23;
  a2[3] = v22;
  a2[4] = v18;
  a2[5] = v12;
  a2[6] = v13;
  a2[7] = v15;
  a2[8] = v14;
  a2[9] = v17;
  a2[10] = v16;
  a2[11] = v20;
  a2[12] = v25;
  return result;
}

void *sub_100097590@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(__src);
  if (!v2)
  {
    return memcpy(a1, __src, 0x68uLL);
  }

  return result;
}

uint64_t sub_1000975EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100097658()
{
  result = qword_10019AFB0;
  if (!qword_10019AFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019AFB0);
  }

  return result;
}

void sub_1000976AC()
{
  sub_100006A04();
  v1 = v0;
  v3 = v2;
  v20 = v5;
  v21 = v4;
  v6 = sub_10002EB80(&unk_10019B1E0, &unk_10014E3A0);
  sub_100002944();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = &v18 - v10;
  v19 = type metadata accessor for _RegexFactory();
  sub_100002944();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_100002958();
  v17 = v16 - v15;
  makeFactory()();
  v22 = v3;
  v23 = v1;
  sub_100056540();
  _RegexFactory.ignoreCapturesInTypedOutput<A>(_:)();
  sub_10002EB80(&qword_100199688, &unk_1001501B0);
  sub_10002EB80(&qword_100199680, &unk_10014E380);
  sub_100013EBC(&qword_100199698, &qword_100199680, &unk_10014E380, &protocol conformance descriptor for Regex<A>);
  sub_100013EBC(&qword_1001996D0, &unk_10019B1E0, &unk_10014E3A0, &protocol conformance descriptor for Regex<A>);
  _RegexFactory.accumulate<A, B, C>(_:_:)();
  (*(v8 + 8))(v11, v6);
  (*(v13 + 8))(v17, v19);
  sub_1000069EC();
}

unint64_t sub_1000978C4(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return String.subscript.getter();
  }

  __break(1u);
  return result;
}

void sub_100097910()
{
  v2 = v0;
  sub_100098DD0();
  if (!v1)
  {
    v80 = v3;
    v88[3] = _swiftEmptyArrayStorage;
    v4 = _s7BuilderVMa(0);
    v6 = *(v0 + v4[7]);
    v87 = v0;
    v79 = v4;
    v74 = *(v6 + 16);
    if (v74)
    {
      v7 = 0;
      v73 = (v0 + v4[10]);
      v8 = v0 + v4[5];
      v72 = *(v0 + v4[11]);
      v71 = v6 + 32;
      v69 = *(v8 + 48);
      v70 = *(v8 + 40);
      *&v5 = 136315138;
      v67 = v5;
      v68 = *(v0 + v4[7]);
      do
      {
        if (v7 >= *(v6 + 16))
        {
LABEL_50:
          __break(1u);
          return;
        }

        v81 = v7;
        v9 = (v71 + 24 * v7);
        v10 = v9[1];
        v77 = *v9;
        v11 = v9[2];

        v12 = v11;
        v13 = [v12 intentIdentifier];
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        sub_1000034B4(v73, v73[3]);
        v84 = v10;
        v85 = sub_100078C8C(v70, v69, v14, v16);
        v83 = v12;
        v17 = [v12 intentIdentifier];
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;

        if (*(v72 + 16))
        {
          v21 = sub_10000C2A0(v18, v20);
          v23 = v22;

          if (v23)
          {
            v24 = *(*(v72 + 56) + 8 * v21);
            v25 = v24;
            goto LABEL_10;
          }
        }

        else
        {
        }

        v24 = 0;
LABEL_10:
        v2 = v87;
        v26 = &TableBuilder;
        if (v85)
        {
          v75 = v24;
          v27 = [v85 identifier];

          v28 = [v85 parameters];
          sub_100003D44(0, &qword_100199048, LNActionParameterMetadata_ptr);
          v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v30 = sub_1000232F4(v29);
          v31 = 0;
          v32 = _swiftEmptyArrayStorage;
          while (v30 != v31)
          {
            if ((v29 & 0xC000000000000001) != 0)
            {
              v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v31 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_48;
              }

              v33 = *(v29 + 8 * v31 + 32);
            }

            v34 = v33;
            if (__OFADD__(v31, 1))
            {
              __break(1u);
LABEL_48:
              __break(1u);
LABEL_49:
              __break(1u);
              goto LABEL_50;
            }

            v35 = [v33 v26[34].weak_ivar_lyt];
            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {

              v36 = sub_1000237B0(v34);
              v38 = v37;

              if (v38)
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_100004E28();
                  sub_100013A60();
                  v32 = v42;
                }

                v40 = v32[2];
                v39 = v32[3];
                if (v40 >= v39 >> 1)
                {
                  sub_100005150(v39);
                  sub_100013A60();
                  v32 = v43;
                }

                v32[2] = v40 + 1;
                v41 = &v32[2 * v40];
                v41[4] = v36;
                v41[5] = v38;
                v26 = &TableBuilder;
              }
            }

            else
            {
            }

            ++v31;
          }

          v88[0] = _swiftEmptyDictionarySingleton;
          v2 = v87;
          v44 = v84;
          if (v32)
          {
            goto LABEL_32;
          }

          goto LABEL_31;
        }

        if (v24)
        {
          v75 = v24;
          v45 = [v24 identifier];

          v88[0] = _swiftEmptyDictionarySingleton;
          v44 = v84;
LABEL_31:
          v32 = _swiftEmptyArrayStorage;
LABEL_32:
          v46 = sub_100099210(v77, v44, v83, v32, v80, v88);

          sub_10006E5E0(v46);

          goto LABEL_33;
        }

        if (qword_1001982F0 != -1)
        {
          sub_100002A48();
          swift_once();
        }

        v47 = type metadata accessor for Logger();
        sub_10000347C(v47, qword_10019E008);

        v48 = Logger.logObject.getter();
        v49 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v48, v49))
        {
          v50 = sub_100007764();
          v51 = swift_slowAlloc();
          v88[0] = v51;
          *v50 = v67;
          v52 = sub_100004C50(v14, v16, v88);

          *(v50 + 4) = v52;
          _os_log_impl(&_mh_execute_header, v48, v49, "%s does not have any metadata, skipping", v50, 0xCu);
          sub_1000034F8(v51);
          sub_1000036AC(v51);
          sub_1000036AC(v50);
        }

        else
        {
        }

        v2 = v87;
LABEL_33:
        v4 = v79;
        v6 = v68;
        v7 = v81 + 1;
      }

      while (v81 + 1 != v74);
    }

    v53 = 0;
    v54 = *(v2 + v4[12]);
    v55 = (v54 + 48);
    v88[0] = _swiftEmptyDictionarySingleton;
    v76 = v54;
    v78 = *(v54 + 16);
    while (v78 != v53)
    {
      if (v53 >= *(v76 + 16))
      {
        goto LABEL_49;
      }

      v82 = v53;
      v56 = *v55;
      v57 = v2 + v4[5];
      v58 = *(v57 + 48);
      v86 = *(v57 + 40);

      v59 = v56;

      v60 = [v59 entityIdentifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v61 = [v59 phraseTemplates];
      sub_100003D44(0, &qword_10019AD00, LNStaticDeferredLocalizedString_ptr);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10002EB80(&qword_1001990E0, &unk_10014DDC0);
      Dictionary.init(dictionaryLiteral:)();
      sub_100003D44(0, &qword_1001990E8, LNValue_ptr);
      Dictionary.init(dictionaryLiteral:)();
      type metadata accessor for LNPlatformName(0);
      sub_100003D44(0, &qword_10019A0A8, LNAvailabilityAnnotation_ptr);
      sub_100018448();
      sub_10009F250(&qword_100198940, v62, &unk_10014CDB0);
      Dictionary.init(dictionaryLiteral:)();
      v63 = objc_allocWithZone(LNAssistantIntentMetadata);
      v2 = v87;
      sub_10009D608();
      v65 = v64;
      v66 = sub_100099210(v86, v58, v64, _swiftEmptyArrayStorage, v80, v88);
      v53 = v82 + 1;
      sub_10006E5E0(v66);

      v55 += 3;
      v4 = v79;
    }
  }
}

uint64_t sub_1000981C4()
{
  sub_10002EB80(&qword_10019B3B0, &unk_100150190);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10014BC40;
  *(v0 + 32) = String.subscript.getter();
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  *(v0 + 56) = v3;
  result = String.subscript.getter();
  *(v0 + 64) = result;
  *(v0 + 72) = v5;
  *(v0 + 80) = v6;
  *(v0 + 88) = v7;
  qword_10019DE90 = v0;
  return result;
}

uint64_t sub_1000982A0()
{
  v0 = sub_10002EB80(&qword_100199680, &unk_10014E380);
  sub_100037CD8(v0, qword_10019DE98);
  sub_10000347C(v0, qword_10019DE98);
  sub_10002EB80(&qword_100199688, &unk_1001501B0);
  sub_100013EBC(&qword_100199698, &qword_100199680, &unk_10014E380, &protocol conformance descriptor for Regex<A>);
  return Regex.init<A>(_:)();
}

uint64_t sub_100098378@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v1 = sub_10002EB80(&unk_10019B1E0, &unk_10014E3A0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v38 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v28 - v5;
  v7 = sub_10002EB80(&qword_100199680, &unk_10014E380);
  v39 = *(v7 - 8);
  v40 = v7;
  __chkstk_darwin(v7);
  v9 = &v28 - v8;
  v43 = type metadata accessor for _RegexFactory();
  v10 = *(v43 - 8);
  __chkstk_darwin(v43);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_10002EB80(&qword_1001996C0, &unk_1001501D0);
  v44 = *(v42 - 8);
  __chkstk_darwin(v42);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v31 = &v28 - v16;
  v47 = 31524;
  v48 = 0xE200000000000000;
  v33 = sub_100056540();
  static RegexComponentBuilder.buildExpression<A>(_:)();
  makeFactory()();
  sub_1000988AC(v6);
  sub_10002EB80(&qword_100199688, &unk_1001501B0);
  sub_100013EBC(&qword_1001996D0, &unk_10019B1E0, &unk_10014E3A0, &protocol conformance descriptor for Regex<A>);
  v29 = v9;
  v30 = v1;
  _RegexFactory.capture<A, B>(_:)();
  v36 = *(v2 + 8);
  v37 = v2 + 8;
  v36(v6, v1);
  v17 = *(v10 + 8);
  v34 = v10 + 8;
  v35 = v17;
  v17(v12, v43);
  Capture.init(_:)();
  sub_100013EBC(&qword_1001996D8, &qword_1001996C0, &unk_1001501D0, &protocol conformance descriptor for Capture<A>);
  v18 = v31;
  v19 = v42;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v20 = *(v44 + 8);
  v44 += 8;
  v32 = v20;
  v20(v14, v19);
  v45 = 125;
  v46 = 0xE100000000000000;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v45 = v49;
  v46 = v50;
  static RegexComponentBuilder.buildPartialBlock<A>(first:)();

  makeFactory()();
  v21 = v38;
  v22 = v30;
  _RegexFactory.ignoreCapturesInTypedOutput<A>(_:)();
  v23 = v29;
  v24 = v18;
  v25 = v42;
  _RegexFactory.accumulate<A, B, C>(_:_:)();
  v26 = v36;
  v36(v21, v22);
  v35(v12, v43);
  sub_1000976AC();

  (*(v39 + 8))(v23, v40);
  v26(v6, v22);
  return v32(v24, v25);
}

uint64_t sub_1000988AC@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v1 = type metadata accessor for RegexRepetitionBehavior();
  v30 = v1;
  v38 = *(v1 - 8);
  __chkstk_darwin(v1);
  v37 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for _RegexFactory();
  v35 = *(v3 - 8);
  v36 = v3;
  __chkstk_darwin(v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002EB80(&qword_1001996E0, &unk_10014E3B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v30 - v7;
  v31 = type metadata accessor for CharacterClass();
  v34 = *(v31 - 8);
  __chkstk_darwin(v31);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002EB80(&qword_1001996E8, &unk_1001501E0);
  v12 = *(v11 - 8);
  v32 = v11;
  v33 = v12;
  __chkstk_darwin(v11);
  v14 = &v30 - v13;
  v15 = sub_10002EB80(&unk_10019B1E0, &unk_10014E3A0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v30 - v20;
  __chkstk_darwin(v22);
  v24 = &v30 - v23;
  static RegexComponent<>.word.getter();
  sub_1000075C4(v8, 1, 1, v1);
  makeFactory()();
  sub_10009F250(&qword_1001996F0, &type metadata accessor for CharacterClass, &protocol conformance descriptor for CharacterClass);
  v25 = v31;
  _RegexFactory.oneOrMore<A, B>(_:_:)();
  (*(v35 + 8))(v5, v36);
  sub_100003E9C(v8, &qword_1001996E0, &unk_10014E3B0);
  (*(v34 + 8))(v10, v25);
  OneOrMore.init(_:)();
  v26 = v32;
  OneOrMore.regex.getter();
  (*(v33 + 8))(v14, v26);
  v27 = v37;
  static RegexRepetitionBehavior.reluctant.getter();
  Regex.repetitionBehavior(_:)();
  (*(v38 + 8))(v27, v30);
  v28 = *(v16 + 8);
  v28(v18, v15);
  sub_100013EBC(&qword_1001996D0, &unk_10019B1E0, &unk_10014E3A0, &protocol conformance descriptor for Regex<A>);
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v28(v21, v15);
  static RegexComponentBuilder.buildPartialBlock<A>(first:)();
  return (v28)(v24, v15);
}

void sub_100098DD0()
{
  v1 = _s7BuilderVMa(0);
  v2 = (v0 + *(v1 + 20));
  v3 = v2[3];
  v4 = v2[4];
  sub_1000034B4(v2, v3);
  sub_10002EB80(&unk_100198B60, &qword_10014E3C0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10014CE90;
  v6 = (v0 + *(v1 + 24));
  v7 = *v6;
  v8 = v6[1];
  *(v5 + 32) = *v6;
  *(v5 + 40) = v8;
  v9 = *(v4 + 24);

  v55 = v9(v5, v3, v4);
  v11 = v10;

  v12 = v2[3];
  v13 = v2[4];
  sub_1000034B4(v2, v12);
  v14 = (*(v13 + 32))(v7, v8, v12, v13);
  v15 = *(v14 + 16);
  v16 = (v14 + 48);
  v17 = v15 + 1;
  do
  {
    if (!--v17)
    {
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_10014CE90;
      *(v36 + 32) = v55;
      *(v36 + 40) = v11;
      if (v15)
      {
        sub_100011438(0, v15, 0);
        v37 = (v14 + 40);
        do
        {
          v39 = *(v37 - 1);
          v38 = *v37;
          v40 = _swiftEmptyArrayStorage[2];
          v41 = _swiftEmptyArrayStorage[3];

          if (v40 >= v41 >> 1)
          {
            sub_100011438(v41 > 1, v40 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v40 + 1;
          v42 = &_swiftEmptyArrayStorage[2 * v40];
          v42[4] = v39;
          v42[5] = v38;
          v37 += 3;
          --v15;
        }

        while (v15);
      }

      goto LABEL_33;
    }

    v18 = v16 + 24;
    v19 = *v16;
    v16 += 24;
  }

  while (v19 != 1);
  v52 = v11;
  v21 = *(v18 - 5);
  v20 = *(v18 - 4);

  v22 = 0;
  v53 = _swiftEmptyArrayStorage;
LABEL_5:
  v23 = 24 * v22;
  while (v15 != v22)
  {
    if (v22 >= *(v14 + 16))
    {
      __break(1u);
      return;
    }

    v24 = *(v14 + v23 + 32);
    v25 = *(v14 + v23 + 40);
    if (v24 != v21 || v25 != v20)
    {
      v27 = *(v14 + v23 + 48);
      sub_100024754();
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {

        v28 = v53;
        v56 = v53;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1000B34CC(0, v53[2] + 1, 1);
          v28 = v53;
        }

        v30 = v28[2];
        v29 = v28[3];
        v31 = v30 + 1;
        if (v30 >= v29 >> 1)
        {
          v33 = sub_100005150(v29);
          v54 = v34;
          v51 = v35;
          sub_1000B34CC(v33, v34, 1);
          v31 = v54;
          v30 = v51;
          v28 = v56;
        }

        ++v22;
        v28[2] = v31;
        v53 = v28;
        v32 = &v28[3 * v30];
        v32[4] = v24;
        v32[5] = v25;
        *(v32 + 48) = v27;
        goto LABEL_5;
      }
    }

    v23 += 24;
    ++v22;
  }

  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_10014BC40;
  *(v43 + 32) = v21;
  *(v43 + 40) = v20;
  *(v43 + 48) = v55;
  *(v43 + 56) = v52;
  v44 = v53[2];
  if (v44)
  {
    sub_100011438(0, v44, 0);
    v45 = v53 + 5;
    do
    {
      v47 = *(v45 - 1);
      v46 = *v45;
      v49 = _swiftEmptyArrayStorage[2];
      v48 = _swiftEmptyArrayStorage[3];

      if (v49 >= v48 >> 1)
      {
        sub_100011438(v48 > 1, v49 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v49 + 1;
      v50 = &_swiftEmptyArrayStorage[2 * v49];
      v50[4] = v47;
      v50[5] = v46;
      v45 += 3;
      --v44;
    }

    while (v44);
  }

LABEL_33:
  sub_10006E3AC(_swiftEmptyArrayStorage);
}

uint64_t sub_100099210(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v66 = a2;
  v7 = v6;
  v62 = a6;
  v63 = a5;
  v64 = a4;
  v65 = a1;
  v9 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  __chkstk_darwin(v9 - 8);
  sub_100006724();
  v12 = v10 - v11;
  __chkstk_darwin(v13);
  v15 = &v58 - v14;
  v16 = type metadata accessor for URL();
  sub_100002944();
  v59 = v17;
  __chkstk_darwin(v18);
  sub_100002958();
  v21 = v20 - v19;
  v22 = [a3 phraseTemplates];
  sub_100003D44(0, &qword_10019AD00, LNStaticDeferredLocalizedString_ptr);
  v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v24 = [a3 intentIdentifier];
  v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v61 = v25;

  if (!sub_1000232F4(v23))
  {
    v30 = sub_10001AB24();
    sub_1000075C4(v30, v31, 1, v16);
LABEL_9:
    sub_100003E9C(v15, &qword_1001990C0, &unk_10014E200);
    goto LABEL_10;
  }

  sub_10003818C(0, (v23 & 0xC000000000000001) == 0, v23);
  if ((v23 & 0xC000000000000001) != 0)
  {
    v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v26 = *(v23 + 32);
  }

  v27 = v26;
  v28 = [v26 bundleURL];

  if (v28)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  sub_1000075C4(v12, v29, 1, v16);
  sub_10009EDDC(v12, v15);
  v32 = sub_10001AB24();
  if (sub_1000032C4(v32, v33, v16) == 1)
  {
    goto LABEL_9;
  }

  (*(v59 + 32))(v21, v15, v16);
  v48 = objc_opt_self();
  URL._bridgeToObjectiveC()(v49);
  v51 = v50;
  v52 = [v48 ln_uniqueBundleWithURL:v50];

  if (v52)
  {
    v53 = _s7BuilderVMa(0);
    v34 = sub_1000BB650(0xD000000000000010, 0x80000001001565B0, *(v7 + *(v53 + 24)), *(v7 + *(v53 + 24) + 8));

    v54 = sub_10001E110();
    v55(v54);
    goto LABEL_11;
  }

  v56 = sub_10001E110();
  v57(v56);
LABEL_10:
  v34 = 0;
LABEL_11:
  sub_100099D04();
  v36 = v35;

  v37 = [a3 parameterValues];
  sub_10002EB80(&qword_1001990E0, &unk_10014DDC0);
  v38 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v39 = sub_10009A6B4(v38, v34, v62);

  v40 = sub_10009FDF8(a3);
  v67 = &_swiftEmptySetSingleton;
  __chkstk_darwin(v40);
  v41 = v61;
  *(&v58 - 12) = v60;
  *(&v58 - 11) = v41;
  v43 = v63;
  v42 = v64;
  *(&v58 - 10) = v7;
  *(&v58 - 9) = v43;
  *(&v58 - 8) = v39;
  *(&v58 - 56) = 0;
  *(&v58 - 6) = v42;
  *(&v58 - 5) = v44;
  *(&v58 - 4) = &v67;
  v45 = v66;
  *(&v58 - 3) = v65;
  *(&v58 - 2) = v45;
  *(&v58 - 1) = a3;
  v46 = sub_10006D7E0(_swiftEmptyArrayStorage, sub_10009F0C8, (&v58 - 14), v36);

  return v46;
}

void sub_1000996B8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  __chkstk_darwin(v6 - 8);
  sub_100006724();
  v74 = v7 - v8;
  __chkstk_darwin(v9);
  v75 = &v66 - v10;
  v11 = type metadata accessor for URL();
  sub_100002944();
  v73 = v12;
  __chkstk_darwin(v13);
  sub_100002958();
  v16 = v15 - v14;
  v17 = *(a2 + 16);
  v18 = [v17 intentIdentifier];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v22 = _s7BuilderVMa(0);
  sub_1000034B4((a3 + *(v22 + 40)), *(a3 + *(v22 + 40) + 24));
  v23 = a3 + *(v22 + 20);
  v24 = *(v23 + 48);
  v25 = *(v23 + 40);
  v77 = v19;
  v26 = v76;
  v27 = sub_100078C8C(v25, v24, v19, v21);
  if (v26)
  {

    if (qword_1001982F0 != -1)
    {
      sub_100002A48();
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_10000347C(v28, qword_10019E008);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.info.getter();

    v31 = os_log_type_enabled(v29, v30);
    v32 = v77;
    if (v31)
    {
      v33 = sub_100007764();
      v34 = swift_slowAlloc();
      v78 = v34;
      *v33 = 136315138;
      v35 = sub_100004C50(v32, v21, &v78);

      *(v33 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v29, v30, "%s does not have any metadata, skipping", v33, 0xCu);
      sub_1000034F8(v34);
      sub_1000036AC(v34);
      sub_100004D70();
    }

    else
    {
    }

    return;
  }

  v67 = v22;
  v68 = v16;
  v71 = a3;
  v72 = v27;
  v76 = 0;
  v70 = v17;
  v36 = [v17 phrases];
  v69 = sub_100003D44(0, &qword_10019AD00, LNStaticDeferredLocalizedString_ptr);
  v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (sub_1000232F4(v37))
  {
    sub_10003818C(0, (v37 & 0xC000000000000001) == 0, v37);
    v38 = v11;
    if ((v37 & 0xC000000000000001) != 0)
    {
      v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v39 = *(v37 + 32);
    }

    v40 = v39;
    v41 = v68;
    v42 = v74;

    v43 = [v40 bundleURL];

    v44 = v77;
    if (v43)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v45 = 0;
    }

    else
    {
      v45 = 1;
    }

    v49 = v73;
    sub_1000075C4(v42, v45, 1, v38);
    v46 = v75;
    sub_10009EDDC(v42, v75);
    v50 = sub_10001AB24();
    if (sub_1000032C4(v50, v51, v38) != 1)
    {
      (*(v49 + 32))(v41, v46, v38);
      v53 = objc_opt_self();
      URL._bridgeToObjectiveC()(v54);
      v56 = v55;
      v57 = [v53 ln_uniqueBundleWithURL:v55];

      v52 = v70;
      if (v57)
      {
        sub_1000BB650(0xD000000000000010, 0x80000001001565B0, *(v71 + *(v67 + 24)), *(v71 + *(v67 + 24) + 8));

        (*(v49 + 8))(v68, v38);
      }

      else
      {
        (*(v49 + 8))(v41, v38);
      }

      goto LABEL_19;
    }
  }

  else
  {

    v46 = v75;
    v47 = sub_10001AB24();
    sub_1000075C4(v47, v48, 1, v11);
    v44 = v77;
  }

  sub_100003E9C(v46, &qword_1001990C0, &unk_10014E200);
  v52 = v70;
LABEL_19:
  v58 = [v52 phrases];
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100099D04();
  v60 = v59;

  v61 = *(v60 + 16);
  if (v61)
  {
    v77 = v60;
    v62 = (v60 + 56);
    do
    {
      v63 = *(v62 - 1);
      v64 = *v62;
      objc_allocWithZone(LNExamplePhraseDescription);

      sub_10009D7B8(4, v44, v21, v63, v64, 0, 0, 0, 0);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v65 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v65 >> 1)
      {
        sub_100005150(v65);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v62 += 4;
      --v61;
    }

    while (v61);
  }
}

void sub_100099D04()
{
  sub_100006A04();
  v3 = v2;
  v4 = v1;
  if (v1 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    sub_10003818C(0, (v4 & 0xC000000000000001) == 0, v4);
    if ((v4 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v6 = *(v4 + 32);
    }

    v36 = v6;
    if (!v3 || (v7 = [v6 key], static String._unconditionallyBridgeFromObjectiveC(_:)(), v7, sub_100024754(), v8 = sub_1000B6334(), v6 = , !v8))
    {
      __chkstk_darwin(v6);
      sub_100003710();
      *(v31 - 16) = v0;
      sub_1000C3140(sub_10009EE4C, v32, v4);

      break;
    }

    v37 = v8;

    sub_100004F18();
    sub_10009D9E8(&v37, v9, v10, sub_10009DD50, sub_10009DB8C);

    v4 = v37;
    v11 = *(v37 + 16);
    if (!v11)
    {
LABEL_20:

      break;
    }

    v39[0] = _swiftEmptyArrayStorage;
    v0 = v39;
    sub_1000B3558(0, v11, 0);
    v12 = 0;
    v13 = v39[0];
    v34 = v4;
    v35 = *(v4 + 16);
    v3 = (v4 + 40);
    v33 = v11;
    while (v35 != v12)
    {
      if (v12 >= *(v4 + 16))
      {
        goto LABEL_23;
      }

      v14 = *(v3 - 1);
      v15 = *v3;
      if (v12)
      {
        v37 = 91;
        v38 = 0xE100000000000000;

        v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v16);

        v17._countAndFlagsBits = 93;
        v17._object = 0xE100000000000000;
        String.append(_:)(v17);
        v19 = v37;
        v18 = v38;
      }

      else
      {

        v19 = 0;
        v18 = 0xE000000000000000;
      }

      v20 = [v36 key];
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      v37 = v21;
      v38 = v23;

      v0 = &v37;
      v24._countAndFlagsBits = v19;
      v24._object = v18;
      String.append(_:)(v24);

      v25 = v37;
      v26 = v38;
      v39[0] = v13;
      v28 = *(v13 + 16);
      v27 = *(v13 + 24);
      if (v28 >= v27 >> 1)
      {
        v30 = sub_100005150(v27);
        v0 = v39;
        sub_1000B3558(v30, v28 + 1, 1);
        v13 = v39[0];
      }

      *(v13 + 16) = v28 + 1;
      v29 = (v13 + 32 * v28);
      v29[4] = v25;
      v29[5] = v26;
      v29[6] = v14;
      v29[7] = v15;
      ++v12;
      v3 += 2;
      v4 = v34;
      if (v33 == v12)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  sub_1000069EC();
}

void sub_10009A044()
{
  sub_100006A04();
  v1 = v0;
  v3 = v2;
  v71 = sub_10002EB80(&qword_100199678, &unk_1001501A0);
  sub_100002944();
  v67 = v4;
  __chkstk_darwin(v5);
  sub_100006724();
  v69 = v6 - v7;
  __chkstk_darwin(v8);
  v70 = v62 - v9;
  v72 = v3;
  v73 = v1;
  if (qword_1001982A0 != -1)
  {
LABEL_24:
    swift_once();
  }

  v10 = sub_10002EB80(&qword_100199680, &unk_10014E380);
  sub_10000347C(v10, qword_10019DE98);
  sub_10002EB80(&qword_100199688, &unk_1001501B0);
  sub_100056498();
  sub_100013EBC(&qword_100199698, &qword_100199680, &unk_10014E380, &protocol conformance descriptor for Regex<A>);
  v15 = BidirectionalCollection<>.matches<A, B>(of:)();
  v16 = *(v15 + 16);
  v17 = _swiftEmptyArrayStorage;
  v66 = v15;
  if (v16)
  {
    v80 = _swiftEmptyArrayStorage;
    sub_1000B3578(0, v16, 0, v11, v12, v13, v14);
    v17 = v80;
    v18 = *(v67 + 16);
    v19 = v15 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
    v64 = *(v67 + 72);
    v65 = v18;
    v68 = v67 + 16;
    v63 = (v67 + 8);
    do
    {
      v20 = v69;
      v21 = v71;
      v65(v69, v19, v71);
      Regex.Match.output.getter();
      (*v63)(v20, v21);
      v22 = v72;
      v23 = v73;
      v25 = v74;
      v24 = v75;

      v80 = v17;
      v27 = v17[2];
      v26 = v17[3];
      if (v27 >= v26 >> 1)
      {
        v29 = sub_100005150(v26);
        sub_1000B3578(v29, v27 + 1, 1, v30, v31, v32, v33);
        v17 = v80;
      }

      v17[2] = v27 + 1;
      v28 = &v17[4 * v27];
      v28[4] = v22;
      v28[5] = v23;
      v28[6] = v25;
      v28[7] = v24;
      v19 += v64;
      --v16;
    }

    while (v16);
    v15 = v66;
  }

  v72 = v17;

  sub_100013528();
  sub_10009D9E8(&v72, v34, v35, sub_10009E258, sub_10009DC54);

  sub_10002EB80(&qword_1001996A0, &unk_10014E390);
  sub_100013EBC(&qword_1001996A8, &qword_1001996A0, &unk_10014E390, &protocol conformance descriptor for [A]);
  sub_1000564EC();
  v62[2] = Sequence<>.joined(separator:)();
  v62[1] = v36;

  v65 = *(v15 + 16);
  if (!v65)
  {
LABEL_20:

    sub_1000069EC();
    return;
  }

  v37 = 0;
  v64 = v15 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
  v63 = (v67 + 16);
  v38 = _swiftEmptyDictionarySingleton;
  v62[3] = v67 + 8;
  while (1)
  {
    if (v37 >= *(v15 + 16))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    (*(v67 + 16))(v70, v64 + *(v67 + 72) * v37, v71);
    Regex.Match.output.getter();

    v40 = v76;
    v39 = v77;
    v41 = v78;
    v42 = v79;
    v68 = Regex.Match.range.getter();
    v69 = v43;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v72 = v38;
    sub_10001E110();
    v45 = sub_10004592C();
    v47 = v38[2];
    v48 = (v46 & 1) == 0;
    v49 = v47 + v48;
    if (__OFADD__(v47, v48))
    {
      goto LABEL_22;
    }

    v50 = v45;
    v51 = v46;
    sub_10002EB80(&qword_1001996B8, &unk_1001501C0);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v49))
    {
      break;
    }

LABEL_15:
    if (v51)
    {

      v38 = v72;
      v54 = sub_1000077B8();
      v55(v54);
    }

    else
    {
      v38 = v72;
      sub_10000681C(&v72[v50 >> 6]);
      v56 = (v38[6] + 32 * v50);
      *v56 = v40;
      v56[1] = v39;
      v56[2] = v41;
      v56[3] = v42;
      v57 = sub_1000077B8();
      v58(v57);
      v59 = v38[2];
      v60 = __OFADD__(v59, 1);
      v61 = v59 + 1;
      if (v60)
      {
        goto LABEL_23;
      }

      v38[2] = v61;
    }

    ++v37;
    v15 = v66;
    if (v65 == v37)
    {
      goto LABEL_20;
    }
  }

  sub_10001E110();
  v52 = sub_10004592C();
  if ((v51 & 1) == (v53 & 1))
  {
    v50 = v52;
    goto LABEL_15;
  }

  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);

  __break(1u);
}

void sub_10009A5E4(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  _s7BuilderVMa(0);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 localizedStringForLocaleIdentifier:v4];

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = [v3 key];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  *a2 = v10;
  a2[1] = v12;
  a2[2] = v6;
  a2[3] = v8;
}

void *sub_10009A6B4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1;
  if (a2 && (v4 = a2, *(a2 + 16)))
  {
    v5 = a1 + 64;
    sub_100002BE8();
    v8 = v7 & v6;
    v10 = (v9 + 63) >> 6;

    v11 = 0;
    v12 = 0;
LABEL_4:
    if (v8)
    {
      goto LABEL_9;
    }

    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_89;
      }

      if (v13 >= v10)
      {
        break;
      }

      v8 = *(v5 + 8 * v13);
      ++v12;
      if (v8)
      {
        v12 = v13;
LABEL_9:
        v14 = __clz(__rbit64(v8)) | (v12 << 6);
        v15 = (*(v3 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(v3 + 56) + 8 * v14);
        if (v18 >> 62)
        {
          v19 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v8 &= v8 - 1;
        if (v19)
        {
          v119 = v3;
          v137 = v18 & 0xC000000000000001;
          v126 = v18 & 0xFFFFFFFFFFFFFF8;
          v128 = v17;
          v129 = v16;
          v133 = v19;

          v20 = 0;
          v124 = v4;
          v135 = v18;
          while (1)
          {
            if (v137)
            {
              v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v20 >= *(v126 + 16))
              {
                goto LABEL_97;
              }

              v21 = *(v18 + 8 * v20 + 32);
            }

            if (__OFADD__(v20, 1))
            {
              goto LABEL_93;
            }

            v139 = v20 + 1;
            v142 = v21;
            v22 = [v21 key];
            v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v25 = v24;

            if (*(v4 + 16))
            {
              v26 = sub_10000C2A0(v23, v25);
              v28 = v27;

              if (v28)
              {
                v131 = *(*(v4 + 56) + 8 * v26);

                sub_10002CCE0(v11, 0);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                sub_10000C2A0(v128, v129);
                sub_100003B6C();
                v34 = v32 + v33;
                if (__OFADD__(v32, v33))
                {
                  goto LABEL_98;
                }

                v35 = v30;
                v36 = v31;
                sub_10002EB80(&qword_10019AFD0, &qword_1001501F0);
                if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v34))
                {
                  v37 = sub_10000C2A0(v128, v129);
                  v39 = v131;
                  if ((v36 & 1) != (v38 & 1))
                  {
                    goto LABEL_104;
                  }

                  v35 = v37;
                  if (v36)
                  {
                    goto LABEL_29;
                  }
                }

                else
                {
                  v39 = v131;
                  if (v36)
                  {
LABEL_29:
                    v45 = _swiftEmptyDictionarySingleton[7];
                    v46 = *(v39 + 16);
                    v47 = *(v45 + 8 * v35);
                    v48 = *(v47 + 16);
                    v49 = v48 + v46;
                    if (__OFADD__(v48, v46))
                    {
                      goto LABEL_99;
                    }

                    v50 = swift_isUniquelyReferenced_nonNull_native();
                    *(v45 + 8 * v35) = v47;
                    if (!v50 || (v51 = *(v47 + 24) >> 1, v51 < v49))
                    {
                      sub_100013A60();
                      v47 = v52;
                      *(v45 + 8 * v35) = v52;
                      v51 = *(v52 + 24) >> 1;
                    }

                    if (*(v131 + 16))
                    {
                      if (v51 - *(v47 + 16) < v46)
                      {
                        goto LABEL_101;
                      }

                      swift_arrayInitWithCopy();

                      if (v46)
                      {
                        v53 = *(v47 + 16);
                        v43 = __OFADD__(v53, v46);
                        v54 = v53 + v46;
                        if (v43)
                        {
                          goto LABEL_103;
                        }

                        *(v47 + 16) = v54;
                      }
                    }

                    else
                    {

                      if (v46)
                      {
                        goto LABEL_100;
                      }
                    }

                    *(v45 + 8 * v35) = v47;
                    v11 = sub_10009F544;
                    v4 = v124;
                    goto LABEL_40;
                  }
                }

                sub_10000681C(&_swiftEmptyDictionarySingleton[v35 >> 6]);
                v41 = (v40[6] + 16 * v35);
                *v41 = v128;
                v41[1] = v129;
                *(v40[7] + 8 * v35) = _swiftEmptyArrayStorage;
                v42 = v40[2];
                v43 = __OFADD__(v42, 1);
                v44 = v42 + 1;
                if (v43)
                {
                  goto LABEL_102;
                }

                v40[2] = v44;

                goto LABEL_29;
              }
            }

            else
            {
            }

LABEL_40:

            ++v20;
            v18 = v135;
            if (v139 == v133)
            {

              v3 = v119;
              goto LABEL_4;
            }
          }
        }

        goto LABEL_4;
      }
    }

    v62 = _swiftEmptyDictionarySingleton;
LABEL_87:

    sub_10002CCE0(v11, 0);
    return v62;
  }

  else
  {
    v55 = a1 + 64;
    sub_100002BE8();
    v58 = v57 & v56;
    v60 = (v59 + 63) >> 6;

    v11 = 0;
    v61 = 0;
    v62 = _swiftEmptyDictionarySingleton;
LABEL_44:
    while (v58)
    {
LABEL_49:
      v64 = __clz(__rbit64(v58)) | (v61 << 6);
      v65 = (*(v3 + 48) + 16 * v64);
      v66 = v65[1];
      v136 = *v65;
      v67 = *(*(v3 + 56) + 8 * v64);
      if (v67 >> 62)
      {
        v68 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v68 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v58 &= v58 - 1;
      if (v68)
      {
        v117 = v60;
        v118 = v55;
        v120 = v3;
        v127 = v67 & 0xC000000000000001;
        v121 = v67 & 0xFFFFFFFFFFFFFF8;
        v122 = v68;

        v69 = 0;
        v123 = v67;
        v125 = v66;
        while (1)
        {
          if (v127)
          {
            v70 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v69 >= *(v121 + 16))
            {
              goto LABEL_95;
            }

            v70 = *(v67 + 8 * v69 + 32);
          }

          v71 = v70;
          if (__OFADD__(v69, 1))
          {
            goto LABEL_90;
          }

          v143 = v62;
          v72 = [v70 key];
          v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v75 = v74;

          v76 = *a3;
          v132 = v71;
          v134 = v69 + 1;
          if (*(*a3 + 16) && (v77 = sub_100012AC4(), (v78 & 1) != 0))
          {
            v79 = (v76[7] + 16 * v77);
            v138 = v79[1];
            v140 = *v79;

            v62 = v143;
          }

          else
          {
            v130 = v11;
            _s7BuilderVMa(0);
            v80 = String._bridgeToObjectiveC()();
            v81 = [v71 localizedStringForLocaleIdentifier:v80];

            v140 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v83 = v82;

            v138 = v83;

            swift_isUniquelyReferenced_nonNull_native();
            v144 = *a3;
            sub_100012AC4();
            sub_100003B6C();
            if (__OFADD__(v86, v87))
            {
              goto LABEL_92;
            }

            v88 = v84;
            v89 = v85;
            sub_10002EB80(&qword_100199670, &unk_10014E370);
            if (sub_100012750())
            {
              sub_100012AC4();
              sub_10009F580();
              if (!v91)
              {
                goto LABEL_104;
              }

              v88 = v90;
            }

            if (v89)
            {

              v92 = v144;
              v93 = (v144[7] + 16 * v88);
              *v93 = v140;
              v93[1] = v138;
            }

            else
            {
              v92 = v144;
              sub_10000681C(&v144[v88 >> 6]);
              v94 = (v144[6] + 16 * v88);
              *v94 = v73;
              v94[1] = v75;
              v95 = (v144[7] + 16 * v88);
              *v95 = v140;
              v95[1] = v138;
              v96 = v144[2];
              v43 = __OFADD__(v96, 1);
              v97 = v96 + 1;
              if (v43)
              {
                goto LABEL_96;
              }

              v144[2] = v97;
            }

            v62 = v143;
            *a3 = v92;
            v11 = v130;
          }

          sub_10002CCE0(v11, 0);
          swift_isUniquelyReferenced_nonNull_native();
          sub_100012AC4();
          sub_100003B6C();
          if (__OFADD__(v100, v101))
          {
            goto LABEL_91;
          }

          v102 = v98;
          v103 = v99;
          sub_10002EB80(&qword_10019AFD0, &qword_1001501F0);
          if (sub_100012750())
          {
            sub_100012AC4();
            sub_10009F580();
            if (!v91)
            {
              goto LABEL_104;
            }

            v102 = v104;
          }

          if ((v103 & 1) == 0)
          {
            sub_10000681C(&v62[v102 >> 6]);
            v105 = (v62[6] + 16 * v102);
            *v105 = v136;
            v105[1] = v125;
            *(v62[7] + 8 * v102) = _swiftEmptyArrayStorage;
            v106 = v62[2];
            v43 = __OFADD__(v106, 1);
            v107 = v106 + 1;
            if (v43)
            {
              goto LABEL_94;
            }

            v62[2] = v107;
          }

          v108 = v62[7];
          v109 = *(v108 + 8 * v102);
          v110 = swift_isUniquelyReferenced_nonNull_native();
          *(v108 + 8 * v102) = v109;
          if ((v110 & 1) == 0)
          {
            sub_100004E28();
            sub_100013A60();
            v109 = v114;
            *(v108 + 8 * v102) = v114;
          }

          v11 = *(v109 + 16);
          v111 = *(v109 + 24);
          if (v11 >= v111 >> 1)
          {
            sub_100005150(v111);
            sub_100013A60();
            *(v108 + 8 * v102) = v115;
          }

          v112 = *(v108 + 8 * v102);
          *(v112 + 16) = v11 + 1;
          v113 = v112 + 16 * v11;
          *(v113 + 32) = v140;
          *(v113 + 40) = v138;
          ++v69;
          sub_100011858();
          v67 = v123;
          if (v134 == v122)
          {

            sub_100011858();
            v55 = v118;
            v3 = v120;
            v60 = v117;
            goto LABEL_44;
          }
        }
      }
    }

    while (1)
    {
      v63 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        break;
      }

      if (v63 >= v60)
      {
        goto LABEL_87;
      }

      v58 = *(v55 + 8 * v63);
      ++v61;
      if (v58)
      {
        v61 = v63;
        goto LABEL_49;
      }
    }

    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10009AF54(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v83 = a1;
  v82 = a14;
  v95 = a11;
  v85 = a10;
  v84 = a9;
  v86 = a2[1];
  v87 = *a2;
  v98 = a2[3];
  v99 = a2[2];
  sub_10009A044();
  v90 = v17;
  result = _s7BuilderVMa(0);
  v20 = 0;
  v21 = *(a5 + *(result + 36));
  v22 = *(v21 + 16);
  v23 = _swiftEmptyArrayStorage;
LABEL_2:
  v24 = (v21 + 32 + (v20 << 6));
  while (v22 != v20)
  {
    if (v20 >= *(v21 + 16))
    {
      __break(1u);
      goto LABEL_42;
    }

    v26 = v24[1];
    v25 = v24[2];
    v27 = *v24;
    *&v104[10] = *(v24 + 42);
    v103 = v26;
    *v104 = v25;
    v102 = v27;
    v28 = v27 == a3 && *(&v27 + 1) == a4;
    if (v28 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
    {
      sub_10009F108(&v102, v105);
      result = swift_isUniquelyReferenced_nonNull_native();
      v106 = v23;
      if ((result & 1) == 0)
      {
        result = sub_1000B37A4(0, v23[2] + 1, 1);
        v23 = v106;
      }

      v30 = v23[2];
      v29 = v23[3];
      if (v30 >= v29 >> 1)
      {
        result = sub_1000B37A4((v29 > 1), v30 + 1, 1);
        v23 = v106;
      }

      ++v20;
      v23[2] = v30 + 1;
      v31 = &v23[8 * v30];
      v32 = v102;
      v33 = v103;
      v34 = *v104;
      *(v31 + 74) = *&v104[10];
      v31[3] = v33;
      v31[4] = v34;
      v31[2] = v32;
      goto LABEL_2;
    }

    v24 += 4;
    ++v20;
  }

  v35 = sub_10009B3E8(a3, a4, v87, v86, v99, v98, v90, v19, v70, v72, v74, a6, a7, v23, a8 & 1, a9, a10);
  if (v100)
  {
  }

  v36 = v35;
  v89 = 0;

  v37 = 0;
  v38 = v36 + 8;
  v39 = 1 << *(v36 + 32);
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  else
  {
    v40 = -1;
  }

  v41 = v40 & v36[8];
  v42 = (v39 + 63) >> 6;
  v43 = a11;
  v92 = v42;
  v94 = v36;
  if (v41)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v44 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v44 >= v42)
    {
    }

    v41 = v38[v44];
    ++v37;
    if (v41)
    {
      v37 = v44;
      do
      {
LABEL_26:
        v45 = __clz(__rbit64(v41));
        v41 &= v41 - 1;
        v46 = (v37 << 10) | (16 * v45);
        v47 = v36[7];
        v48 = (v36[6] + v46);
        v50 = *v48;
        v49 = v48[1];
        v51 = (v47 + v46);
        v96 = *v51;
        v52 = *v43;
        v101 = v51[1];
        if (*(*v43 + 16))
        {
          Hasher.init(_seed:)();

          String.hash(into:)();
          v53 = Hasher._finalize()();
          v54 = ~(-1 << *(v52 + 32));
          while (1)
          {
            v55 = v53 & v54;
            if (((*(v52 + 56 + (((v53 & v54) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v53 & v54)) & 1) == 0)
            {
              break;
            }

            v56 = (*(v52 + 48) + 16 * v55);
            if (*v56 != v50 || v56[1] != v49)
            {
              v58 = _stringCompareWithSmolCheck(_:_:expecting:)();
              v53 = v55 + 1;
              if ((v58 & 1) == 0)
              {
                continue;
              }
            }

            v43 = v95;
            goto LABEL_38;
          }

          v43 = v95;
        }

        else
        {
        }

        sub_100027678(&v102, v50, v49, v59, v60, v61, v62, v63, v71, v73, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v89, v90, v92, v94, v95, v96, v98);

        v64 = [v82 intentIdentifier];
        v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v67 = v66;

        v68 = objc_allocWithZone(LNExamplePhraseDescription);

        sub_10009D7B8(0, v65, v67, v50, v49, v97, v101, v99, v69);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        sub_1000FCDF4();
        result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_38:
        v42 = v92;
        v36 = v94;
      }

      while (v41);
    }
  }

LABEL_42:
  __break(1u);
  return result;
}