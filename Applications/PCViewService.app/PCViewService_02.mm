void sub_100030734()
{
  v1 = v0;
  if (qword_1000D9768 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000047A0(v2, qword_1000DBDE8);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    v6 = *(v1 + OBJC_IVAR____TtC13PCViewService20XPCConnectionManager_retries);
    v7 = __OFADD__(v6, 1);
    v8 = v6 + 1;
    if (v7)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *(v5 + 4) = v8;
    v9 = v5;

    _os_log_impl(&_mh_execute_header, v3, v4, "Retrying (new count: %ld)", v9, 0xCu);
  }

  else
  {
  }

  *(v1 + OBJC_IVAR____TtC13PCViewService20XPCConnectionManager_delayedRetryTask) = 0;

  sub_100031864();
  v10 = *(v1 + OBJC_IVAR____TtC13PCViewService20XPCConnectionManager_retries);
  v7 = __OFADD__(v10, 1);
  v11 = v10 + 1;
  if (v7)
  {
    __break(1u);
    goto LABEL_12;
  }

  *(v1 + OBJC_IVAR____TtC13PCViewService20XPCConnectionManager_retries) = v11;

  sub_100030D8C();
}

uint64_t sub_1000308A0(double a1)
{
  v2 = sub_1000056EC(&qword_1000DBF90, &qword_100097670);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  if (qword_1000D9768 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000047A0(v5, qword_1000DBDE8);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v6, v7, "Scheduling retry after %f seconds", v8, 0xCu);
  }

  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = a1;
  *(v11 + 40) = v10;
  return sub_10004FC2C(0, 0, v4, &unk_100093DB8, v11);
}

uint64_t sub_100030A98(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 48) = a5;
  *(v5 + 40) = a1;
  return _swift_task_switch(sub_100030ABC, 0, 0);
}

uint64_t sub_100030ABC(unint64_t a1)
{
  v3 = *(v1 + 40) * 1000000000.0;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(a1);
  }

  v4 = v3;
  v5 = swift_task_alloc();
  *(v1 + 56) = v5;
  *v5 = v1;
  v5[1] = sub_100030BA4;
  a1 = v4;

  return static Task<>.sleep(nanoseconds:)(a1);
}

uint64_t sub_100030BA4()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_100030CD8, 0, 0);
  }
}

uint64_t sub_100030CD8()
{
  v1 = *(v0 + 64);
  static Task<>.checkCancellation()();
  if (v1)
  {
    v2 = *(v0 + 8);
  }

  else
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_100030734();
    }

    v2 = *(v0 + 8);
  }

  return v2();
}

uint64_t sub_100030D8C()
{
  v1 = v0;
  if (qword_1000D9768 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000047A0(v2, qword_1000DBDE8);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_1000343F8(0x4E66497472617473, 0xEF29286465646565, &aBlock);
    *(v5 + 12) = 2080;
    v6 = *(v1 + OBJC_IVAR____TtC13PCViewService20XPCConnectionManager_internalCnx);
    sub_1000056EC(&qword_1000DBF88, &unk_100093D90);
    v7 = String.init<A>(describing:)();
    v9 = sub_1000343F8(v7, v8, &aBlock);

    *(v5 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: self.internalCnx=%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v10 = OBJC_IVAR____TtC13PCViewService20XPCConnectionManager_internalCnx;
  v11 = *(v1 + OBJC_IVAR____TtC13PCViewService20XPCConnectionManager_internalCnx);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  v14 = os_log_type_enabled(v12, v13);
  if (v11)
  {
    if (v14)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Connection already exists", v15, 2u);
    }

    v16 = 0;
LABEL_22:

    return v16;
  }

  if (v14)
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Starting", v17, 2u);
  }

  v18 = v1 + OBJC_IVAR____TtC13PCViewService20XPCConnectionManager_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v19 = *(v18 + 8);
    ObjectType = swift_getObjectType();
    v21 = (*(v19 + 8))(ObjectType, v19);
    v22 = [v21 interruptionHandler];
    if (v22)
    {
      v23 = v22;
      v24 = swift_allocObject();
      *(v24 + 16) = v23;
      v25 = sub_100032230;
    }

    else
    {
      v25 = 0;
      v24 = 0;
    }

    v26 = swift_allocObject();
    v26[2] = v1;
    v26[3] = v25;
    v26[4] = v24;
    v43 = sub_100031BB0;
    v44 = v26;
    aBlock = _NSConcreteStackBlock;
    v40 = 1107296256;
    v41 = sub_100035630;
    v42 = &unk_1000C8C08;
    v27 = _Block_copy(&aBlock);

    v38 = v25;
    sub_10000B16C(v25, v24);

    [v21 setInterruptionHandler:v27];
    _Block_release(v27);
    v28 = [v21 invalidationHandler];
    if (v28)
    {
      v29 = v28;
      v30 = swift_allocObject();
      *(v30 + 16) = v29;
      v31 = sub_10000EEE4;
    }

    else
    {
      v31 = 0;
      v30 = 0;
    }

    v32 = swift_allocObject();
    *(v32 + 16) = v31;
    *(v32 + 24) = v30;
    v43 = sub_100031C14;
    v44 = v32;
    aBlock = _NSConcreteStackBlock;
    v40 = 1107296256;
    v41 = sub_100035630;
    v42 = &unk_1000C8C58;
    v33 = _Block_copy(&aBlock);
    sub_10000B16C(v31, v30);

    [v21 setInvalidationHandler:v33];
    _Block_release(v33);
    [v21 activate];
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Connection created", v36, 2u);
    }

    sub_10000B17C(v38, v24);
    sub_10000B17C(v31, v30);
    swift_unknownObjectRelease();

    v12 = *(v1 + v10);
    *(v1 + v10) = v21;
    v16 = 1;
    goto LABEL_22;
  }

  return 2;
}

uint64_t sub_100031354(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = sub_1000056EC(&qword_1000DBF90, &qword_100097670);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v7;
  sub_1000820D0(0, 0, v5, &unk_100093DA8, v8);

  if (a2)
  {
    return a2(result);
  }

  return result;
}

uint64_t sub_1000314B4()
{
  if (qword_1000D9768 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000047A0(v1, qword_1000DBDE8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Connection interrupted", v4, 2u);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v6 = swift_task_alloc();
    v0[7] = v6;
    *v6 = v0;
    v6[1] = sub_10003165C;

    return sub_10003039C();
  }

  else
  {
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_10003165C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_10003176C(void (*a1)(void))
{
  if (qword_1000D9768 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000047A0(v2, qword_1000DBDE8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Connection invalidated", v5, 2u);
  }

  if (a1)
  {
    a1();
  }
}

void sub_100031864()
{
  v1 = OBJC_IVAR____TtC13PCViewService20XPCConnectionManager_internalCnx;
  v2 = *(v0 + OBJC_IVAR____TtC13PCViewService20XPCConnectionManager_internalCnx);
  if (v2)
  {
    v3 = v0;
    v4 = qword_1000D9768;
    v5 = v2;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000047A0(v6, qword_1000DBDE8);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Stopping", v9, 2u);
    }

    [v5 invalidate];
    v10 = *(v3 + v1);
    *(v3 + v1) = 0;
  }
}

__n128 initializeBufferWithCopyOfBuffer for XPCConnectionManager.ReconnectPolicy(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for XPCConnectionManager.ReconnectPolicy(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for XPCConnectionManager.ReconnectPolicy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_100031A40(uint64_t a1)
{
  if (*(a1 + 16) <= 2u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_100031A58(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_100031A84()
{
  result = qword_1000DBF80;
  if (!qword_1000DBF80)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBF80);
  }

  return result;
}

uint64_t sub_100031ADC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13PCViewService20XPCConnectionManager_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_100031B68()
{

  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100031BBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100031BD4()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100031C1C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100031C54()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100031C8C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100031CCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100031D80;

  return sub_100031494(a1, v4, v5, v6);
}

uint64_t sub_100031D80()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100031E74()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100031EB4(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v7 = *(v1 + 5);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100031D80;

  return sub_100030A98(v6, a1, v4, v5, v7);
}

void *sub_100031F78(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

unint64_t sub_100031F98()
{
  result = qword_1000DBF98;
  if (!qword_1000DBF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBF98);
  }

  return result;
}

uint64_t sub_100031FEC(uint64_t a1)
{
  v2 = sub_1000056EC(&qword_1000DA8D0, &qword_100091B60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for XPCConnectionManager.ManagerError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for XPCConnectionManager.ManagerError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000321D0()
{
  result = qword_1000DBFA0;
  if (!qword_1000DBFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBFA0);
  }

  return result;
}

uint64_t sub_100032234(uint64_t a1)
{
  result = type metadata accessor for UUID();
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

uint64_t sub_1000322F0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_100032334()
{
  v0 = type metadata accessor for Logger();
  sub_100004E8C(v0, qword_1000DBFA8);
  sub_1000047A0(v0, qword_1000DBFA8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000323AC(void *a1, int a2)
{
  v25 = a2;
  v3 = sub_1000056EC(&qword_1000DC0B8, &qword_100094068);
  v23 = *(v3 - 8);
  v24 = v3;
  __chkstk_darwin(v3);
  v22 = &v18 - v4;
  v5 = sub_1000056EC(&qword_1000DC0C0, &qword_100094070);
  v20 = *(v5 - 8);
  v21 = v5;
  __chkstk_darwin(v5);
  v7 = &v18 - v6;
  v8 = sub_1000056EC(&qword_1000DC0C8, &qword_100094078);
  v19 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  v11 = sub_1000056EC(&qword_1000DC0D0, &unk_100094080);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - v13;
  sub_100006768(a1, a1[3]);
  sub_100035050();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = (v12 + 8);
  if (v25)
  {
    if (v25 == 1)
    {
      v27 = 1;
      sub_1000350F8();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v20 + 8))(v7, v21);
    }

    else
    {
      v28 = 2;
      sub_1000350A4();
      v16 = v22;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v23 + 8))(v16, v24);
    }
  }

  else
  {
    v26 = 0;
    sub_10003514C();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v19 + 8))(v10, v8);
  }

  return (*v15)(v14, v11);
}

uint64_t sub_10003272C()
{
  v1 = 0x657463656E6E6F63;
  if (*v0 != 1)
  {
    v1 = 0x6164696C61766E69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6574736575716572;
  }
}

uint64_t sub_100032790@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000349B4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000327C4(uint64_t a1)
{
  v2 = sub_100035050();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100032800(uint64_t a1)
{
  v2 = sub_100035050();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003283C(uint64_t a1)
{
  v2 = sub_1000350F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100032878(uint64_t a1)
{
  v2 = sub_1000350F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000328B4(uint64_t a1)
{
  v2 = sub_1000350A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000328F0(uint64_t a1)
{
  v2 = sub_1000350A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003292C(uint64_t a1)
{
  v2 = sub_10003514C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100032968(uint64_t a1)
{
  v2 = sub_10003514C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000329A4@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_100034AE0(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

id sub_1000329EC()
{
  v1 = v0;
  v2 = *v0;
  if (qword_1000D9770 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000047A0(v3, qword_1000DBFA8);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1000343F8(0xD000000000000013, 0x80000001000A21E0, &v20);
    _os_log_impl(&_mh_execute_header, v4, v5, "%s", v6, 0xCu);
    sub_10000529C(v7);
  }

  v8 = *(v1 + qword_1000DBFC8);
  if (v8)
  {
    v9 = *(v1 + qword_1000DBFC8);
  }

  else
  {
    v10 = objc_allocWithZone(NSXPCConnection);

    v11 = String._bridgeToObjectiveC()();

    v9 = [v10 initWithMachServiceName:v11 options:0];
  }

  v24 = sub_100032DFC;
  v25 = 0;
  v20 = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_100035630;
  v23 = &unk_1000C8FC0;
  v12 = _Block_copy(&v20);
  v13 = v8;
  [v9 setInterruptionHandler:v12];
  _Block_release(v12);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = *(v2 + 80);
  *(v15 + 32) = *(v2 + 96);
  *(v15 + 40) = *(v2 + 104);
  *(v15 + 56) = *(v2 + 120);
  *(v15 + 64) = v14;
  v24 = sub_100034314;
  v25 = v15;
  v20 = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_100035630;
  v23 = &unk_1000C9038;
  v16 = _Block_copy(&v20);

  [v9 setInvalidationHandler:v16];
  _Block_release(v16);
  v17 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP13PCViewService15XPCLinkProtocol_];
  if (qword_1000D9800 != -1)
  {
    swift_once();
  }

  [v9 _setQueue:qword_1000F3D18];
  v18 = v17;
  [v9 setExportedInterface:v18];
  [v9 setExportedObject:v1];
  [v9 setRemoteObjectInterface:v18];

  return v9;
}

void sub_100032DFC()
{
  if (qword_1000D9770 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000047A0(v0, qword_1000DBFA8);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "### XPC interrupted", v2, 2u);
  }
}

uint64_t sub_100032EE4(uint64_t a1)
{
  if (qword_1000D9770 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000047A0(v1, qword_1000DBFA8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "XPC invalidated", v4, 2u);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    PassthroughSubject.send(_:)();
  }

  return result;
}

uint64_t sub_100033020()
{
  v1 = v0;
  if (qword_1000D9770 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000047A0(v2, qword_1000DBFA8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  v6 = qword_1000F3C48;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v1 + v6, v7);

  return v1;
}

uint64_t sub_1000331A4()
{
  sub_100033020();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_1000331FC(uint64_t a1, unint64_t a2)
{
  v27 = a1;
  v4 = *v2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DispatchQoS();
  v8 = *(v28 - 8);
  __chkstk_darwin(v28);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000D9770 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000047A0(v11, qword_1000DBFA8);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v26 = v7;
    v16 = v5;
    v17 = v8;
    v18 = a2;
    v19 = v15;
    aBlock[0] = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_1000343F8(0xD000000000000019, 0x80000001000A2200, aBlock);
    _os_log_impl(&_mh_execute_header, v12, v13, "%s", v14, 0xCu);
    sub_10000529C(v19);
    a2 = v18;
    v8 = v17;
    v5 = v16;
    v7 = v26;
  }

  if (qword_1000D9800 != -1)
  {
    swift_once();
  }

  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  *(v21 + 16) = *(v4 + 80);
  *(v21 + 32) = *(v4 + 96);
  *(v21 + 40) = *(v4 + 104);
  *(v21 + 56) = *(v4 + 120);
  *(v21 + 64) = v20;
  v22 = v27;
  *(v21 + 72) = v27;
  *(v21 + 80) = a2;
  aBlock[4] = sub_1000351E0;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100035630;
  aBlock[3] = &unk_1000C9088;
  v23 = _Block_copy(aBlock);

  sub_10000A1AC(v22, a2);
  static DispatchQoS.unspecified.getter();
  v30 = _swiftEmptyArrayStorage;
  sub_100035218(&qword_1000D9FA0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000056EC(&qword_1000D9FA8, &unk_100091780);
  sub_100035260();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v29 + 8))(v7, v5);
  (*(v8 + 8))(v10, v28);
}

uint64_t sub_100033690(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a3;
  v9 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for Optional();
  v11 = __chkstk_darwin(v10);
  v13 = &v31 - v12;
  v14 = *(a5 - 8);
  v15 = __chkstk_darwin(v11);
  v33 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v31 - v17;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v34 = result;
    sub_10004DE18();
    (*(v14 + 56))(v13, 0, 1, a5);
    (*(v14 + 32))(v18, v13, a5);
    if (qword_1000D9770 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000047A0(v20, qword_1000DBFA8);
    v21 = v33;
    (*(v14 + 16))(v33, v18, a5);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v32 = v24;
      v35 = swift_slowAlloc();
      v36 = v35;
      *v24 = 136315138;
      v25 = sub_10008C240(v21, a5);
      v27 = v26;
      v28 = *(v14 + 8);
      v28(v21, a5);
      v29 = sub_1000343F8(v25, v27, &v36);

      v30 = v32;
      *(v32 + 1) = v29;
      _os_log_impl(&_mh_execute_header, v22, v23, "Received output: %s", v30, 0xCu);
      sub_10000529C(v35);
    }

    else
    {

      v28 = *(v14 + 8);
      v28(v21, a5);
    }

    PassthroughSubject.send(_:)();
    v28(v18, a5);
  }

  return result;
}

uint64_t sub_100033D4C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = qword_1000F3C48;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_100033DCC()
{
  v1 = *(v0 + OBJC_IVAR____TtC13PCViewService20XPCConnectionManager_internalCnx);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1000056EC(&qword_1000DC0D8, &unk_100094090);
    if (swift_dynamicCast())
    {
      isa = Data._bridgeToObjectiveC()().super.isa;
      [v13 handleWithSerializedObject:isa];

      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_1000D9770 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_1000047A0(v8, qword_1000DBFA8);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, v10, "### Could not cast rmeoteObjectProxy to XPCLinkProtocol", v11, 2u);
      }
    }
  }

  else
  {
    if (qword_1000D9770 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000047A0(v5, qword_1000DBFA8);
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v6, "### No connection", v7, 2u);
    }
  }
}

uint64_t sub_100034060(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t, unint64_t))
{
  v5 = a3;

  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  a4(v6, v8);
  sub_100008A9C(v6, v8);
}

uint64_t sub_100034100(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100034150(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1000341A4(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1000341BC(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_1000341F0()
{
  result = qword_1000DC068;
  if (!qword_1000DC068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC068);
  }

  return result;
}

uint64_t sub_10003428C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000342A4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000342DC()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100034328(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

void sub_10003439C(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_1000343F8(v6, v7, a3);

  v9 = *a1;
  *v9 = v8;
  *a1 = v9 + 1;
}

unint64_t sub_1000343F8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000344C4(v11, 0, 0, 1, a1, a2);
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
    sub_10000A150(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000529C(v11);
  return v7;
}

unint64_t sub_1000344C4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000345D0(a5, a6);
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
    result = _StringObject.sharedUTF8.getter();
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

void *sub_1000345D0(uint64_t a1, unint64_t a2)
{
  v3 = sub_10003461C(a1, a2);
  sub_10003474C(&off_1000C6988);
  return v3;
}

void *sub_10003461C(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_100034838(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100034838(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
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

void sub_10003474C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1000348AC(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v8 + 32], (a1 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void *sub_100034838(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_1000056EC(&qword_1000DC070, &qword_100094038);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000348AC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000056EC(&qword_1000DC070, &qword_100094038);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

_BYTE **sub_1000349A0(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_1000349B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574736575716572 && a2 == 0xE900000000000064;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657463656E6E6F63 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6164696C61766E69 && a2 == 0xEB00000000646574)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100034AE0(void *a1)
{
  v31 = sub_1000056EC(&qword_1000DC078, &qword_100094040);
  v28 = *(v31 - 8);
  __chkstk_darwin(v31);
  v33 = &v26 - v2;
  v32 = sub_1000056EC(&qword_1000DC080, &qword_100094048);
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v26 - v3;
  v5 = sub_1000056EC(&qword_1000DC088, &qword_100094050);
  v29 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v26 - v6;
  v8 = sub_1000056EC(&qword_1000DC090, &qword_100094058);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - v10;
  v12 = a1[3];
  v35 = a1;
  sub_100006768(a1, v12);
  sub_100035050();
  v13 = v34;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v13)
  {
    v27 = v5;
    v14 = v33;
    v34 = v9;
    v15 = v11;
    v16 = KeyedDecodingContainer.allKeys.getter();
    v17 = (2 * *(v16 + 16)) | 1;
    v36 = v16;
    v37 = v16 + 32;
    v38 = 0;
    v39 = v17;
    v18 = sub_100074828();
    if (v18 != 3 && v38 == v39 >> 1)
    {
      v9 = v18;
      if (v18)
      {
        if (v18 == 1)
        {
          v40 = 1;
          sub_1000350F8();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v19 = v34;
          (*(v30 + 8))(v4, v32);
          (*(v19 + 8))(v11, v8);
LABEL_13:
          swift_unknownObjectRelease();
          sub_10000529C(v35);
          return v9;
        }

        v40 = 2;
        sub_1000350A4();
        v24 = v11;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v25 = v34;
        (*(v28 + 8))(v14, v31);
      }

      else
      {
        v40 = 0;
        sub_10003514C();
        v24 = v11;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v29 + 8))(v7, v27);
        v25 = v34;
      }

      (*(v25 + 8))(v24, v8);
      goto LABEL_13;
    }

    v20 = type metadata accessor for DecodingError();
    swift_allocError();
    v22 = v21;
    v9 = *(sub_1000056EC(&qword_1000DBA80, &qword_100094060) + 48);
    *v22 = &type metadata for XPCConnectionEvent;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v20 - 8) + 104))(v22, enum case for DecodingError.typeMismatch(_:), v20);
    swift_willThrow();
    (*(v34 + 8))(v15, v8);
    swift_unknownObjectRelease();
  }

  sub_10000529C(v35);
  return v9;
}

unint64_t sub_100035050()
{
  result = qword_1000DC098;
  if (!qword_1000DC098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC098);
  }

  return result;
}

unint64_t sub_1000350A4()
{
  result = qword_1000DC0A0;
  if (!qword_1000DC0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC0A0);
  }

  return result;
}

unint64_t sub_1000350F8()
{
  result = qword_1000DC0A8;
  if (!qword_1000DC0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC0A8);
  }

  return result;
}

unint64_t sub_10003514C()
{
  result = qword_1000DC0B0;
  if (!qword_1000DC0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC0B0);
  }

  return result;
}

uint64_t sub_1000351A0()
{

  sub_100008A9C(*(v0 + 72), *(v0 + 80));

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_100035218(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100035260()
{
  result = qword_1000D9FB0;
  if (!qword_1000D9FB0)
  {
    sub_100005818(&qword_1000D9FA8, &unk_100091780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9FB0);
  }

  return result;
}

unint64_t sub_100035310()
{
  result = qword_1000DC0E0;
  if (!qword_1000DC0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC0E0);
  }

  return result;
}

unint64_t sub_100035368()
{
  result = qword_1000DC0E8;
  if (!qword_1000DC0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC0E8);
  }

  return result;
}

unint64_t sub_1000353C0()
{
  result = qword_1000DC0F0;
  if (!qword_1000DC0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC0F0);
  }

  return result;
}

unint64_t sub_100035418()
{
  result = qword_1000DC0F8;
  if (!qword_1000DC0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC0F8);
  }

  return result;
}

unint64_t sub_100035470()
{
  result = qword_1000DC100;
  if (!qword_1000DC100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC100);
  }

  return result;
}

unint64_t sub_1000354C8()
{
  result = qword_1000DC108;
  if (!qword_1000DC108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC108);
  }

  return result;
}

unint64_t sub_100035520()
{
  result = qword_1000DC110;
  if (!qword_1000DC110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC110);
  }

  return result;
}

unint64_t sub_100035578()
{
  result = qword_1000DC118;
  if (!qword_1000DC118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC118);
  }

  return result;
}

unint64_t sub_1000355D0()
{
  result = qword_1000DC120;
  if (!qword_1000DC120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC120);
  }

  return result;
}

uint64_t sub_100035664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000056EC(&qword_1000DABD8, &unk_100092030);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100035740(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000056EC(&qword_1000DABD8, &unk_100092030);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for CloseButtonView(uint64_t a1)
{
  result = qword_1000DC180;
  if (!qword_1000DC180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100035850(uint64_t a1)
{
  sub_10001AA74(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1000358EC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1000056EC(&qword_1000DBD08, &qword_1000937D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_1000056EC(&qword_1000DC1C8, &qword_100094488);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  Image.init(systemName:)();
  static SymbolRenderingMode.palette.getter();
  v8 = type metadata accessor for SymbolRenderingMode();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  v9 = Image.symbolRenderingMode(_:)();

  sub_10000A628(v7, &qword_1000DC1C8, &qword_100094488);
  v10 = sub_100035AF8();
  v11 = sub_100035DDC();
  v12 = type metadata accessor for Font.Design();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  v13 = static Font.system(size:weight:design:)();
  sub_10000A628(v4, &qword_1000DBD08, &qword_1000937D0);
  result = swift_getKeyPath();
  *a1 = v9;
  a1[1] = v10;
  a1[2] = v11;
  a1[3] = result;
  a1[4] = v13;
  return result;
}

uint64_t sub_100035AF8()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000056EC(&qword_1000DACB0, &unk_100093790);
  __chkstk_darwin(v5);
  v7 = &v21 - v6;
  v8 = type metadata accessor for ColorScheme();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001B7E0(v0, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
  }

  v13 = (*(v9 + 88))(v11, v8);
  if (v13 == enum case for ColorScheme.light(_:))
  {
    v14 = *(type metadata accessor for CloseButtonView(0) + 20);
  }

  else
  {
    v15 = v13;
    v16 = enum case for ColorScheme.dark(_:);
    v17 = type metadata accessor for CloseButtonView(0);
    if (v15 != v16)
    {
      v18 = *(v0 + *(v17 + 20));
      v19 = *(v9 + 8);

      v19(v11, v8);
      return v18;
    }

    v14 = *(v17 + 24);
  }

  v18 = *(v0 + v14);

  return v18;
}

uint64_t sub_100035DDC()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000056EC(&qword_1000DACB0, &unk_100093790);
  __chkstk_darwin(v5);
  v7 = &v21 - v6;
  v8 = type metadata accessor for ColorScheme();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001B7E0(v0, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
  }

  v13 = (*(v9 + 88))(v11, v8);
  if (v13 == enum case for ColorScheme.light(_:))
  {
    v14 = *(type metadata accessor for CloseButtonView(0) + 28);
  }

  else
  {
    v15 = v13;
    v16 = enum case for ColorScheme.dark(_:);
    v17 = type metadata accessor for CloseButtonView(0);
    if (v15 != v16)
    {
      v18 = *(v0 + *(v17 + 28));
      v19 = *(v9 + 8);

      v19(v11, v8);
      return v18;
    }

    v14 = *(v17 + 32);
  }

  v18 = *(v0 + v14);

  return v18;
}

uint64_t sub_1000360C4@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000360F0@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

unint64_t sub_100036178()
{
  result = qword_1000DC1D0;
  if (!qword_1000DC1D0)
  {
    sub_100005818(&qword_1000DC1D8, &qword_1000944C0);
    sub_100036230();
    sub_10000EE58(&qword_1000DC200, &qword_1000DC208, &unk_10009AAC0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC1D0);
  }

  return result;
}

unint64_t sub_100036230()
{
  result = qword_1000DC1E0;
  if (!qword_1000DC1E0)
  {
    sub_100005818(&qword_1000DC1E8, &qword_1000944C8);
    sub_10000EE58(&qword_1000DC1F0, &qword_1000DC1F8, &qword_1000944D0, &protocol conformance descriptor for _ForegroundStyleModifier2<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC1E0);
  }

  return result;
}

__n128 sub_1000362E8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10003630C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_100036354(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1000363D0@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v30 = static Alignment.top.getter();
  v7 = v6;
  sub_10003676C(a2, a1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v42, __src, 0x1E0uLL);
  sub_10001A510(__dst, v39, &qword_1000DC210, &unk_1000945E0);
  sub_10000A628(v42, &qword_1000DC210, &unk_1000945E0);
  memcpy(v38, __dst, sizeof(v38));
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v8 = static Animation.linear(duration:)();
  v9 = *(a2 + 8);
  if (qword_1000D9778 != -1)
  {
    swift_once();
  }

  v10 = qword_1000F3C58;
  v11 = *(qword_1000F3C58 + 176);
  sub_1000264E0();

  v12 = v10[23];
  sub_1000264E0();

  v13 = v10[24];
  sub_1000264E0();

  v14 = v10[25];
  sub_1000264E0();

  v15 = static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
  v16 = *a2;
  v17 = v10[22];
  sub_1000264E0();

  v18 = v10[23];
  sub_1000264E0();

  v19 = v10[24];
  sub_1000264E0();

  v20 = v10[25];
  sub_1000264E0();

  v21 = static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
  *__src = *(a2 + 56);
  sub_1000056EC(&qword_1000DAFC0, &qword_100092670);
  State.wrappedValue.getter();
  v22 = v39[0];
  v23 = swift_allocObject();
  v24 = *(a2 + 3);
  *(v23 + 48) = *(a2 + 2);
  *(v23 + 64) = v24;
  *(v23 + 80) = *(a2 + 8);
  v25 = *(a2 + 1);
  *(v23 + 16) = *a2;
  *(v23 + 32) = v25;
  v26 = swift_allocObject();
  v27 = *(a2 + 3);
  *(v26 + 48) = *(a2 + 2);
  *(v26 + 64) = v27;
  *(v26 + 80) = *(a2 + 8);
  v28 = *(a2 + 1);
  *(v26 + 16) = *a2;
  *(v26 + 32) = v28;
  *a3 = v30;
  *(a3 + 8) = v7;
  memcpy((a3 + 16), v38, 0x1E0uLL);
  *(a3 + 560) = v35;
  *(a3 + 576) = v36;
  *(a3 + 592) = v37;
  *(a3 + 496) = v31;
  *(a3 + 512) = v32;
  *(a3 + 528) = v33;
  *(a3 + 544) = v34;
  *(a3 + 608) = v8;
  *(a3 + 616) = v9;
  *(a3 + 624) = v15;
  *(a3 + 632) = v16;
  *(a3 + 640) = v21;
  *(a3 + 648) = v22;
  *(a3 + 656) = sub_1000375E0;
  *(a3 + 664) = v23;
  *(a3 + 672) = 0u;
  *(a3 + 688) = v9;
  *(a3 + 696) = sub_1000375E8;
  *(a3 + 704) = v26;
  sub_1000371D4(a2, __src);
  return sub_1000371D4(a2, __src);
}

uint64_t sub_10003676C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v33 = a2;
  v36 = a3;
  v4 = type metadata accessor for Color.RGBColorSpace();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v32 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000D9778 != -1)
  {
    swift_once();
  }

  v6 = *(qword_1000F3C58 + 272);
  v7 = sub_100025508();

  if (v7)
  {
    v8 = &type metadata for PerspectiveViewEffectProvider;
  }

  else
  {
    v8 = &type metadata for RegularViewEffectProvider;
  }

  if (v7)
  {
    v9 = &off_1000C9398;
  }

  else
  {
    v9 = &off_1000C93B0;
  }

  v73 = v9;
  v72 = v8;
  v71[0] = 0x3FB999999999999ALL;
  sub_100006768(v71, v8);
  v10 = *a1;
  if (v10 == 2)
  {
    v11 = 2;
  }

  else
  {
    v67[0] = *(a1 + 56);
    sub_1000056EC(&qword_1000DAFC0, &qword_100092670);
    State.wrappedValue.getter();
    v11 = (v65[0] & 1) == 0;
  }

  v12 = *(a1 + 8);
  if (v7)
  {
    v13 = &off_1000C9398;
  }

  else
  {
    v13 = &off_1000C93B0;
  }

  v14 = v33;
  (v13[1])(v74, v11, v33, v8, v9, *(a1 + 8));
  v15 = v72;
  v16 = v73;
  sub_100006768(v71, v72);
  if (v10 == 2)
  {
    v17 = 2;
  }

  else
  {
    v67[0] = *(a1 + 56);
    sub_1000056EC(&qword_1000DAFC0, &qword_100092670);
    State.wrappedValue.getter();
    v17 = (v65[0] & 1) == 0;
  }

  (v16[2])(v75, v17, v14, v15, v16, v12);
  GeometryProxy.size.getter();
  v19 = v18 * 0.4;
  GeometryProxy.size.getter();
  v21 = v20 * 0.3;
  v22 = *(a1 + 1);
  (*(v34 + 104))(v32, enum case for Color.RGBColorSpace.sRGB(_:), v35);
  v23 = Color.init(_:red:green:blue:opacity:)();
  sub_10001FDA4(v74, v22, v23, &v52, v19, v12);

  v24 = *(a1 + 2);
  v25 = *(a1 + 3);
  LODWORD(v65[0]) = 1065353216;

  State.init(wrappedValue:)();
  v83 = v21;
  v84 = v24;
  v85 = v25;
  v86 = v10 == 2;
  v87 = v67[0];
  v88 = *(&v67[0] + 1);
  sub_10001FF80(v75, &v40);

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v69[55] = v79;
  *&v69[71] = v80;
  *&v69[87] = v81;
  *&v69[103] = v82;
  *&v69[7] = v76;
  *&v69[23] = v77;
  *&v69[39] = v78;
  v63[0] = v52;
  v63[1] = v53;
  v63[4] = v56;
  v63[5] = v57;
  v63[2] = v54;
  v63[3] = v55;
  v63[9] = v61;
  v63[8] = v60;
  v63[6] = v58;
  v63[7] = v59;
  v39[8] = v60;
  v39[9] = v61;
  v39[4] = v56;
  v39[5] = v57;
  v39[6] = v58;
  v39[7] = v59;
  v39[0] = v52;
  v39[1] = v53;
  v39[2] = v54;
  v39[3] = v55;
  v65[8] = v48;
  v65[9] = v49;
  v65[10] = v50;
  v65[4] = v44;
  v65[5] = v45;
  v65[6] = v46;
  v65[7] = v47;
  v65[0] = v40;
  v65[1] = v41;
  v65[2] = v42;
  v65[3] = v43;
  *(&v39[18] + 8) = v48;
  *(&v39[19] + 8) = v49;
  *(&v39[20] + 8) = v50;
  *(&v39[16] + 8) = v46;
  *(&v39[17] + 8) = v47;
  *(&v39[14] + 8) = v44;
  *(&v39[15] + 8) = v45;
  v64 = v62;
  v66 = v51;
  v70 = 1;
  *&v39[10] = v62;
  *(&v39[21] + 1) = v51;
  *(&v39[10] + 8) = v40;
  *(&v39[11] + 8) = v41;
  *(&v39[12] + 8) = v42;
  *(&v39[13] + 8) = v43;
  v26 = v36;
  memcpy(v36, v39, 0x160uLL);
  *(v26 + 44) = 0;
  v26[360] = 1;
  v27 = *&v69[80];
  *(v26 + 425) = *&v69[64];
  *(v26 + 441) = v27;
  *(v26 + 457) = *&v69[96];
  *(v26 + 59) = *&v69[111];
  v28 = *&v69[16];
  *(v26 + 361) = *v69;
  *(v26 + 377) = v28;
  v29 = *&v69[48];
  *(v26 + 393) = *&v69[32];
  *(v26 + 409) = v29;
  v67[8] = v48;
  v67[9] = v49;
  v67[10] = v50;
  v68 = v51;
  v67[4] = v44;
  v67[5] = v45;
  v67[6] = v46;
  v67[7] = v47;
  v67[0] = v40;
  v67[1] = v41;
  v67[2] = v42;
  v67[3] = v43;
  sub_10001A510(v63, v37, &qword_1000DC220, &qword_1000945F8);
  sub_10001A510(v65, v37, &qword_1000DC228, &qword_100094600);
  sub_10000A628(v67, &qword_1000DC228, &qword_100094600);
  v37[8] = v60;
  v37[9] = v61;
  v38 = v62;
  v37[4] = v56;
  v37[5] = v57;
  v37[6] = v58;
  v37[7] = v59;
  v37[0] = v52;
  v37[1] = v53;
  v37[2] = v54;
  v37[3] = v55;
  sub_10000A628(v37, &qword_1000DC220, &qword_1000945F8);
  return sub_10000529C(v71);
}

void sub_100036DD8(uint64_t a1)
{
  if (qword_1000D9778 != -1)
  {
    swift_once();
  }

  v2 = *(qword_1000F3C58 + 280);
  v3 = sub_100025508();

  if (v3)
  {
    v4 = objc_opt_self();
    v5 = swift_allocObject();
    v6 = *(a1 + 48);
    *(v5 + 48) = *(a1 + 32);
    *(v5 + 64) = v6;
    *(v5 + 80) = *(a1 + 64);
    v7 = *(a1 + 16);
    *(v5 + 16) = *a1;
    *(v5 + 32) = v7;
    aBlock[4] = sub_1000375F0;
    aBlock[5] = v5;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10004B3C4;
    aBlock[3] = &unk_1000C92D0;
    v8 = _Block_copy(aBlock);
    sub_1000371D4(a1, v10);

    v9 = [v4 scheduledTimerWithTimeInterval:0 repeats:v8 block:1.0];
    _Block_release(v8);
    v10[0] = *(a1 + 40);
    aBlock[0] = v9;
    sub_1000056EC(&qword_1000DC218, &qword_1000945F0);
    State.wrappedValue.setter();
  }
}

void sub_100036F74(float *a1, uint64_t a2)
{
  if (*a1 > 0.5)
  {
    sub_1000056EC(&qword_1000DC218, &qword_1000945F0);
    State.wrappedValue.getter();
    [v2 invalidate];
  }
}

void sub_100036FEC(uint64_t a1, uint64_t a2)
{
  v9[0] = *(a2 + 56);
  LOBYTE(aBlock[0]) = 1;
  sub_1000056EC(&qword_1000DAFC0, &qword_100092670);
  State.wrappedValue.setter();
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  v5 = *(a2 + 48);
  *(v4 + 48) = *(a2 + 32);
  *(v4 + 64) = v5;
  *(v4 + 80) = *(a2 + 64);
  v6 = *(a2 + 16);
  *(v4 + 16) = *a2;
  *(v4 + 32) = v6;
  aBlock[4] = sub_100037660;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10004B3C4;
  aBlock[3] = &unk_1000C9320;
  v7 = _Block_copy(aBlock);
  sub_1000371D4(a2, v9);

  v8 = [v3 scheduledTimerWithTimeInterval:0 repeats:v7 block:{2.0, v9[0]}];
  _Block_release(v7);
}

uint64_t sub_10003713C@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v3 = *(v1 + 48);
  v10[2] = *(v1 + 32);
  v10[3] = v3;
  v11 = *(v1 + 64);
  v4 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v4;
  v5 = swift_allocObject();
  v6 = *(v1 + 48);
  *(v5 + 48) = *(v1 + 32);
  *(v5 + 64) = v6;
  *(v5 + 80) = *(v1 + 64);
  v7 = *(v1 + 16);
  *(v5 + 16) = *v1;
  *(v5 + 32) = v7;
  *a1 = sub_1000371CC;
  a1[1] = v5;
  return sub_1000371D4(v10, v9);
}

void sub_10003720C(uint64_t a1@<X0>, float64x2_t *a2@<X8>, float a3@<S0>, double a4@<D1>)
{
  v6 = a1;
  GeometryProxy.size.getter();
  v9 = 0.0;
  v10 = 1.0;
  if (v6)
  {
    if (v6 == 1)
    {
      v11 = 1.0 - a3;
      v10 = v11 + a3;
      v12.f64[0] = v8 * a4 * a3;
      v13 = vmulq_n_f64(xmmword_1000944F0, v11);
      v9 = a3 * 0.0 + v13.f64[0];
      v12.f64[1] = a3;
      v14 = vaddq_f64(v13, v12);
      v15 = v11 + v11 - a3;
    }

    else
    {
      v16 = v8 * a4;
      v14 = vdupq_lane_s64(0x3FF2666666666666, 0);
      v14.f64[0] = v16;
      v15 = 2.0;
    }
  }

  else
  {
    v14 = xmmword_1000944F0;
    v15 = 0.0;
  }

  a2->f64[0] = v10;
  a2->f64[1] = v9;
  a2[1] = v14;
  a2[2].f64[0] = v15;
  a2[2].f64[1] = v9;
}

void sub_1000372D8(uint64_t a1@<X0>, float64x2_t *a2@<X8>, float a3@<S0>, double a4@<D1>)
{
  v6 = a1;
  GeometryProxy.size.getter();
  v9 = v8 * 0.15;
  v10 = 1.0;
  if (v6)
  {
    if (v6 == 1)
    {
      v11 = v9 + v8 * 0.35;
      v12 = v9 + (a4 + 0.05) * v8;
      v13 = 1.0 - a3;
      v10 = v13 + a3;
      v14 = a3 * 0.0 + v13 * 0.0;
      v15 = vdupq_n_s64(0x3FECCCCCCCCCCCCDuLL);
      v16.f64[1] = v15.f64[1];
      v16.f64[0] = v11;
      v15.f64[0] = v12;
      _Q2 = vaddq_f64(vmulq_n_f64(v15, a3), vmulq_n_f64(v16, v13));
      v18 = v14;
    }

    else
    {
      __asm { FMOV            V2.2D, #1.0 }

      _Q2.f64[0] = v9 + v8 * a4;
      v14 = 0.0;
      v18 = 0.0;
    }
  }

  else
  {
    _Q2 = vdupq_lane_s64(0x3FE6666666666666, 0);
    _Q2.f64[0] = v8 * 0.15;
    v18 = 15.0;
    v14 = 0.0;
  }

  a2->f64[0] = v10;
  a2->f64[1] = v14;
  a2[1] = _Q2;
  a2[2].f64[0] = v14;
  a2[2].f64[1] = v18;
}

double sub_1000373FC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  sub_10003720C(a1, v7, a3, *v3);
  v5 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v5;
  result = *&v8;
  *(a2 + 32) = v8;
  return result;
}

double sub_100037440@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  sub_1000372D8(a1, v7, a3, *v3);
  v5 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v5;
  result = *&v8;
  *(a2 + 32) = v8;
  return result;
}

void sub_100037484(uint64_t a1@<X0>, double *a2@<X8>, float a3@<S0>, double a4@<D1>)
{
  v6 = a1;
  GeometryProxy.size.getter();
  v9 = (a4 + 0.15) * v8;
  v10 = 0.0;
  v11 = 1.0;
  if (v6)
  {
    if (v6 == 1)
    {
      v12 = 1.0 - a3;
      v11 = v12 + a3;
      v10 = a3 * 0.0 + v12 * 0.0;
      v9 = v12 * (v8 * 0.9) + v9 * a3;
    }
  }

  else
  {
    v9 = v9 + v8 * 0.1;
  }

  *a2 = v11;
  a2[1] = v10;
  a2[2] = v9;
  a2[3] = v11;
  a2[4] = v10;
  a2[5] = v10;
}

double sub_100037548@<D0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  GeometryProxy.size.getter();
  result = 1.0;
  *a2 = xmmword_100094500;
  *(a2 + 16) = v4 * v6;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = 0x3FF0000000000000;
  return result;
}

double sub_10003759C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>, float a3@<S0>)
{
  sub_100037484(a1, v7, a3, *v3);
  v5 = v7[1];
  *a2 = v7[0];
  a2[1] = v5;
  result = *&v8;
  a2[2] = v8;
  return result;
}

uint64_t sub_1000375F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100037610()
{

  return _swift_deallocObject(v0, 88, 7);
}

unint64_t sub_1000376D8()
{
  result = qword_1000DC230;
  if (!qword_1000DC230)
  {
    sub_100005818(&qword_1000DC238, &qword_100094660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC230);
  }

  return result;
}

uint64_t sub_10003777C(uint64_t a1)
{
  result = type metadata accessor for ActivityDisplayContext(319);
  if (v2 <= 0x3F)
  {
    result = sub_100037828();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for NearbySharingInteractionDisplayContext(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void *sub_100037828()
{
  result = qword_1000DC2C0;
  if (!qword_1000DC2C0)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_1000DC2C0);
  }

  return result;
}

void sub_1000378C8(uint64_t a1)
{
  sub_100037970(319);
  if (v1 <= 0x3F)
  {
    sub_1000379E4(319, &qword_1000DC378, &type metadata for XPCConnectionEvent);
    if (v2 <= 0x3F)
    {
      sub_1000379E4(319, &unk_1000DC380, &type metadata for NearbySharingInteractionViewEvent);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_100037970(uint64_t a1)
{
  if (!qword_1000DC370)
  {
    type metadata accessor for Date();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1000DC370);
    }
  }
}

void sub_1000379E4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    type metadata accessor for Date();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for CardMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_20;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 3)
  {
    v8 = v7 - 2;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CardMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFC)
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_100037BA8(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_100037BBC(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

uint64_t sub_100037BDC(char a1)
{
  if (a1 == 3)
  {
    return 0x726F737365636361;
  }

  if (a1 == 4)
  {
    return 1701602409;
  }

  _StringGuts.grow(_:)(25);

  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0x736F6C4365766F6DLL;
    }

    else
    {
      v3 = 0x6574656C706D6F63;
    }

    if (a1 == 1)
    {
      v4 = 0xEA00000000007265;
    }

    else
    {
      v4 = 0xE800000000000000;
    }
  }

  else
  {
    v4 = 0xE500000000000000;
    v3 = 0x6F72746E69;
  }

  v5 = v4;
  String.append(_:)(*&v3);

  v6._countAndFlagsBits = 10528;
  v6._object = 0xE200000000000000;
  String.append(_:)(v6);
  return 0xD000000000000015;
}

uint64_t sub_100037D04(void *a1, int a2)
{
  v24 = a2;
  v23 = sub_1000056EC(&qword_1000DC5E8, &qword_100094950);
  v21 = *(v23 - 8);
  __chkstk_darwin(v23);
  v19 = &v17 - v3;
  v22 = sub_1000056EC(&qword_1000DC5F0, &qword_100094958);
  v20 = *(v22 - 8);
  __chkstk_darwin(v22);
  v5 = &v17 - v4;
  v6 = sub_1000056EC(&qword_1000DC5F8, &qword_100094960);
  v18 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v17 - v7;
  v9 = sub_1000056EC(&qword_1000DC600, &qword_100094968);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - v11;
  sub_100006768(a1, a1[3]);
  sub_10003D9DC();
  v13 = v24;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v13 == 4)
  {
    v28 = 2;
    sub_10003DA30();
    v14 = v19;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v21 + 8))(v14, v23);
    return (*(v10 + 8))(v12, v9);
  }

  if (v13 == 3)
  {
    v25 = 0;
    sub_10003DB2C();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v18 + 8))(v8, v6);
    return (*(v10 + 8))(v12, v9);
  }

  v27 = 1;
  sub_10003DA84();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v26 = v13;
  sub_10003DB80();
  v16 = v22;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v20 + 8))(v5, v16);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1000380F0(uint64_t a1)
{
  v2 = sub_10003DB2C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003812C(uint64_t a1)
{
  v2 = sub_10003DB2C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100038168()
{
  v1 = 0x6F69746163756465;
  if (*v0 != 1)
  {
    v1 = 1701602409;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726F737365636361;
  }
}

uint64_t sub_1000381C8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10003D2E4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000381F0(uint64_t a1)
{
  v2 = sub_10003D9DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003822C(uint64_t a1)
{
  v2 = sub_10003D9DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100038274(uint64_t a1)
{
  v2 = sub_10003DA84();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000382B0(uint64_t a1)
{
  v2 = sub_10003DA84();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000382EC(uint64_t a1)
{
  v2 = sub_10003DA30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100038328(uint64_t a1)
{
  v2 = sub_10003DA30();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100038364@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_10003D410(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

BOOL sub_1000383B4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 4)
  {
    return v3 == 4;
  }

  if (v2 == 3)
  {
    return v3 == 3;
  }

  if ((v3 - 3) < 2)
  {
    return 0;
  }

  return v2 == v3;
}

void sub_100038408(void *a1)
{
  v2 = sub_1000056EC(&qword_1000DC458, &qword_100094870);
  v73 = *(v2 - 8);
  v74 = v2;
  __chkstk_darwin(v2);
  v72 = &v48 - v3;
  v70 = type metadata accessor for NearbySharingInteractionDisplayContext(0);
  __chkstk_darwin(v70);
  v71 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000056EC(&qword_1000DC460, &qword_100094878);
  v68 = *(v5 - 8);
  v69 = v5;
  __chkstk_darwin(v5);
  v67 = &v48 - v6;
  v7 = sub_1000056EC(&qword_1000DC468, &qword_100094880);
  v63 = *(v7 - 8);
  v64 = v7;
  __chkstk_darwin(v7);
  v61 = &v48 - v8;
  v9 = sub_1000056EC(&qword_1000DC470, &qword_100094888);
  v65 = *(v9 - 8);
  v66 = v9;
  __chkstk_darwin(v9);
  v62 = &v48 - v10;
  v60 = sub_1000056EC(&qword_1000DC478, &qword_100094890);
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v58 = &v48 - v11;
  v57 = sub_1000056EC(&qword_1000DC480, &qword_100094898);
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v55 = &v48 - v12;
  v54 = sub_1000056EC(&qword_1000DC488, &qword_1000948A0);
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v50 = &v48 - v13;
  v52 = sub_1000056EC(&qword_1000DC490, &qword_1000948A8);
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v15 = &v48 - v14;
  v49 = type metadata accessor for ActivityDisplayContext(0);
  __chkstk_darwin(v49);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ViewServiceInput(0);
  __chkstk_darwin(v18);
  v20 = (&v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_1000056EC(&qword_1000DC498, &qword_1000948B0);
  v22 = *(v21 - 8);
  v76 = v21;
  v77 = v22;
  __chkstk_darwin(v21);
  v24 = &v48 - v23;
  sub_100006768(a1, a1[3]);
  sub_10003C890();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_10003D138(v75, v20, type metadata accessor for ViewServiceInput);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      v28 = v76;
      if (EnumCaseMultiPayload == 4)
      {
        v29 = *v20;
        LOBYTE(v78) = 4;
        sub_10003C9E0();
        v30 = v62;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v78 = v29;
        sub_10002C1F8();
        v31 = v66;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        (*(v65 + 8))(v30, v31);
        (*(v77 + 8))(v24, v28);

        return;
      }

      LOBYTE(v78) = 6;
      sub_10003C938();
      v39 = v67;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v40 = v69;
      KeyedEncodingContainer.encode(_:forKey:)();
      v41 = v68;
      goto LABEL_14;
    }

    v28 = v76;
    if (EnumCaseMultiPayload == 6)
    {
      v35 = v71;
      sub_10003CC2C(v20, v71, type metadata accessor for NearbySharingInteractionDisplayContext);
      LOBYTE(v78) = 7;
      sub_10003C8E4();
      v36 = v72;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_10003D1F4(&qword_1000DBC88, type metadata accessor for NearbySharingInteractionDisplayContext, &unk_1000910D8);
      v37 = v74;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v73 + 8))(v36, v37);
      sub_10003CD3C(v35, type metadata accessor for NearbySharingInteractionDisplayContext);
LABEL_15:
      (*(v77 + 8))(v24, v28);
      return;
    }

    LOBYTE(v78) = 5;
    sub_10003C98C();
    v47 = v61;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v63 + 8))(v47, v64);
    (*(v77 + 8))(v24, v28);
  }

  else
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        sub_10003CC2C(v20, v17, type metadata accessor for ActivityDisplayContext);
        LOBYTE(v78) = 0;
        sub_10003CBD8();
        v26 = v76;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        sub_10003D1F4(&qword_1000DC4B0, type metadata accessor for ActivityDisplayContext, &unk_100097DFC);
        v27 = v52;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        (*(v51 + 8))(v15, v27);
        sub_10003CD3C(v17, type metadata accessor for ActivityDisplayContext);
        (*(v77 + 8))(v24, v26);
        return;
      }

      v38 = *v20;
      LOBYTE(v78) = 1;
      sub_10003CB30();
      v39 = v50;
      v28 = v76;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      LOBYTE(v78) = v38;
      sub_10003CCE8();
      v40 = v54;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v41 = v53;
LABEL_14:
      (*(v41 + 8))(v39, v40);
      goto LABEL_15;
    }

    if (EnumCaseMultiPayload == 2)
    {
      LOBYTE(v78) = 2;
      sub_10003CADC();
      v32 = v55;
      v33 = v76;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v34 = v57;
      KeyedEncodingContainer.encode(_:forKey:)();

      (*(v56 + 8))(v32, v34);
      (*(v77 + 8))(v24, v33);
    }

    else
    {
      v42 = *v20;
      v43 = v20[1];
      LOBYTE(v78) = 3;
      sub_10003CA34();
      v44 = v58;
      v45 = v76;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v78 = v42;
      v79 = v43;
      sub_10003CC94();
      v46 = v60;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v59 + 8))(v44, v46);
      (*(v77 + 8))(v24, v45);
      sub_100019FD8(v42);
    }
  }
}

uint64_t sub_100039030@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v119 = a2;
  v105 = sub_1000056EC(&qword_1000DC3B0, &qword_100094820);
  v106 = *(v105 - 8);
  __chkstk_darwin(v105);
  v118 = &v83 - v3;
  v117 = sub_1000056EC(&qword_1000DC3B8, &qword_100094828);
  v104 = *(v117 - 8);
  __chkstk_darwin(v117);
  v111 = &v83 - v4;
  v102 = sub_1000056EC(&qword_1000DC3C0, &qword_100094830);
  v100 = *(v102 - 8);
  __chkstk_darwin(v102);
  v109 = &v83 - v5;
  v103 = sub_1000056EC(&qword_1000DC3C8, &qword_100094838);
  v101 = *(v103 - 8);
  __chkstk_darwin(v103);
  v110 = &v83 - v6;
  v99 = sub_1000056EC(&qword_1000DC3D0, &qword_100094840);
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v107 = &v83 - v7;
  v96 = sub_1000056EC(&qword_1000DC3D8, &qword_100094848);
  v97 = *(v96 - 8);
  __chkstk_darwin(v96);
  v116 = &v83 - v8;
  v95 = sub_1000056EC(&qword_1000DC3E0, &qword_100094850);
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v108 = &v83 - v9;
  v93 = sub_1000056EC(&qword_1000DC3E8, &qword_100094858);
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v113 = &v83 - v10;
  v115 = sub_1000056EC(&qword_1000DC3F0, &unk_100094860);
  v120 = *(v115 - 8);
  __chkstk_darwin(v115);
  v12 = &v83 - v11;
  v112 = type metadata accessor for ViewServiceInput(0);
  v13 = __chkstk_darwin(v112);
  v91 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v89 = (&v83 - v16);
  v17 = __chkstk_darwin(v15);
  v90 = (&v83 - v18);
  v19 = __chkstk_darwin(v17);
  v21 = &v83 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = (&v83 - v23);
  v25 = __chkstk_darwin(v22);
  v27 = &v83 - v26;
  v28 = __chkstk_darwin(v25);
  v30 = &v83 - v29;
  __chkstk_darwin(v28);
  v32 = &v83 - v31;
  v33 = a1[3];
  v122 = a1;
  sub_100006768(a1, v33);
  sub_10003C890();
  v114 = v12;
  v34 = v121;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v34)
  {
    v84 = v27;
    v85 = v24;
    v87 = v30;
    v86 = v21;
    v35 = v113;
    v121 = 0;
    v36 = v116;
    v37 = v117;
    v38 = v118;
    v88 = v32;
    v39 = v119;
    v40 = v114;
    v41 = v115;
    v42 = KeyedDecodingContainer.allKeys.getter();
    v43 = (2 * *(v42 + 16)) | 1;
    v124 = v42;
    v125 = v42 + 32;
    v126 = 0;
    v127 = v43;
    v44 = sub_10007183C();
    if (v44 == 8 || v126 != v127 >> 1)
    {
      v50 = type metadata accessor for DecodingError();
      swift_allocError();
      v52 = v51;
      sub_1000056EC(&qword_1000DBA80, &qword_100094060);
      *v52 = v112;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v50 - 8) + 104))(v52, enum case for DecodingError.typeMismatch(_:), v50);
      swift_willThrow();
      goto LABEL_10;
    }

    if (v44 <= 3u)
    {
      v45 = v121;
      if (v44 <= 1u)
      {
        if (!v44)
        {
          LOBYTE(v123) = 0;
          sub_10003CBD8();
          v46 = v35;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v45)
          {
            type metadata accessor for ActivityDisplayContext(0);
            sub_10003D1F4(&qword_1000DC450, type metadata accessor for ActivityDisplayContext, &unk_100097E24);
            v47 = v87;
            v48 = v93;
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            (*(v92 + 8))(v46, v48);
            (*(v120 + 8))(v40, v41);
            swift_unknownObjectRelease();
            swift_storeEnumTagMultiPayload();
            v49 = v47;
LABEL_35:
            v67 = v88;
            sub_10003CC2C(v49, v88, type metadata accessor for ViewServiceInput);
            v54 = v39;
            goto LABEL_37;
          }

          goto LABEL_10;
        }

        LOBYTE(v123) = 1;
        sub_10003CB30();
        v62 = v108;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v45)
        {
          sub_10003CB84();
          v63 = v95;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v94 + 8))(v62, v63);
          (*(v120 + 8))(v40, v41);
          swift_unknownObjectRelease();
          v79 = v84;
          *v84 = v123;
LABEL_33:
          swift_storeEnumTagMultiPayload();
          v49 = v79;
          goto LABEL_35;
        }

        goto LABEL_10;
      }

      if (v44 == 2)
      {
        LOBYTE(v123) = 2;
        sub_10003CADC();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (v45)
        {
          goto LABEL_10;
        }

        v59 = v96;
        v75 = KeyedDecodingContainer.decode(_:forKey:)();
        v77 = v76;
        (*(v97 + 8))(v36, v59);
        (*(v120 + 8))(v40, v41);
        swift_unknownObjectRelease();
        v78 = v85;
        *v85 = v75;
        v78[1] = v77;
LABEL_34:
        swift_storeEnumTagMultiPayload();
        v49 = v78;
        goto LABEL_35;
      }

      LOBYTE(v123) = 3;
      sub_10003CA34();
      v68 = v107;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v45)
      {
        sub_10003CA88();
        v69 = v99;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v98 + 8))(v68, v69);
        (*(v120 + 8))(v40, v41);
        swift_unknownObjectRelease();
        v79 = v86;
        *v86 = v123;
        goto LABEL_33;
      }

LABEL_10:
      (*(v120 + 8))(v40, v41);
      swift_unknownObjectRelease();
      return sub_10000529C(v122);
    }

    if (v44 > 5u)
    {
      if (v44 != 6)
      {
        LOBYTE(v123) = 7;
        sub_10003C8E4();
        v70 = v38;
        v71 = v121;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (v71)
        {
          goto LABEL_10;
        }

        type metadata accessor for NearbySharingInteractionDisplayContext(0);
        sub_10003D1F4(&qword_1000DBC78, type metadata accessor for NearbySharingInteractionDisplayContext, &unk_100091100);
        v78 = v91;
        v72 = v105;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v106 + 8))(v70, v72);
        (*(v120 + 8))(v40, v41);
        swift_unknownObjectRelease();
        goto LABEL_34;
      }

      v54 = v39;
      LOBYTE(v123) = 6;
      sub_10003C938();
      v60 = v111;
      v61 = v121;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v61)
      {
        goto LABEL_10;
      }

      KeyedDecodingContainer.decode(_:forKey:)();
      v73 = v120;
      v81 = v80;
      (*(v104 + 8))(v60, v37);
      (*(v73 + 8))(v40, v41);
      swift_unknownObjectRelease();
      v74 = v89;
      *v89 = v81;
    }

    else
    {
      v54 = v39;
      if (v44 != 4)
      {
        LOBYTE(v123) = 5;
        sub_10003C98C();
        v64 = v109;
        v65 = v121;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v66 = v120;
        if (!v65)
        {
          (*(v100 + 8))(v64, v102);
          (*(v66 + 8))(v40, v41);
          swift_unknownObjectRelease();
          v67 = v88;
          swift_storeEnumTagMultiPayload();
LABEL_37:
          sub_10003CC2C(v67, v54, type metadata accessor for ViewServiceInput);
          return sub_10000529C(v122);
        }

        goto LABEL_10;
      }

      LOBYTE(v123) = 4;
      sub_10003C9E0();
      v55 = v110;
      v56 = v121;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v57 = v120;
      if (v56)
      {
        goto LABEL_10;
      }

      sub_10002C150();
      v58 = v103;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v101 + 8))(v55, v58);
      (*(v57 + 8))(v40, v41);
      swift_unknownObjectRelease();
      v74 = v90;
      *v90 = v123;
    }

    swift_storeEnumTagMultiPayload();
    v82 = v74;
    v67 = v88;
    sub_10003CC2C(v82, v88, type metadata accessor for ViewServiceInput);
    goto LABEL_37;
  }

  return sub_10000529C(v122);
}

uint64_t sub_10003A12C(void *a1)
{
  v68 = sub_1000056EC(&qword_1000DC550, &qword_100094900);
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v66 = &v57 - v2;
  v71 = sub_1000056EC(&qword_1000DC558, &qword_100094908);
  v62 = *(v71 - 8);
  __chkstk_darwin(v71);
  v70 = &v57 - v3;
  v64 = sub_1000056EC(&qword_1000DC560, &qword_100094910);
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v61 = &v57 - v4;
  v60 = sub_1000056EC(&qword_1000DC568, &qword_100094918);
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v58 = &v57 - v5;
  v69 = sub_1000056EC(&qword_1000DC570, &qword_100094920);
  v57 = *(v69 - 8);
  __chkstk_darwin(v69);
  v7 = &v57 - v6;
  v72 = type metadata accessor for Date();
  v73 = *(v72 - 8);
  v8 = __chkstk_darwin(v72);
  v65 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v57 - v11;
  __chkstk_darwin(v10);
  v14 = &v57 - v13;
  v15 = type metadata accessor for ViewServiceOutput(0);
  __chkstk_darwin(v15);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1000056EC(&qword_1000DC578, &qword_100094928);
  v75 = *(v77 - 8);
  __chkstk_darwin(v77);
  v19 = &v57 - v18;
  sub_100006768(a1, a1[3]);
  sub_10003CD9C();
  v78 = v19;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_10003D138(v74, v17, type metadata accessor for ViewServiceOutput);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v74 = v14;
    v24 = v7;
    v25 = v70;
    v26 = v69;
    v27 = v71;
    if (EnumCaseMultiPayload)
    {
      v47 = *v17;
      v48 = sub_1000056EC(&qword_1000DC520, &unk_1000948F0);
      v49 = v73;
      v50 = v12;
      v51 = v72;
      (*(v73 + 32))(v12, &v17[*(v48 + 48)], v72);
      LOBYTE(v82) = 3;
      sub_10003CEEC();
      v53 = v77;
      v52 = v78;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      LOBYTE(v82) = v47;
      LOBYTE(v79) = 0;
      sub_10003D23C();
      v54 = v76;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v54)
      {
        (*(v62 + 8))(v25, v27);
        (*(v49 + 8))(v50, v51);
        return (*(v75 + 8))(v52, v53);
      }

      else
      {
        LOBYTE(v82) = 1;
        sub_10003D1F4(&qword_1000DC588, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        (*(v62 + 8))(v25, v27);
        (*(v49 + 8))(v50, v51);
        return (*(v75 + 8))(v78, v53);
      }
    }

    else
    {
      v28 = *(v17 + 1);
      v82 = *v17;
      v83 = v28;
      *v84 = *(v17 + 2);
      *&v84[9] = *(v17 + 41);
      v71 = *(v17 + 8);
      v29 = sub_1000056EC(&qword_1000DC548, &unk_100097680);
      v30 = v73;
      v31 = v72;
      (*(v73 + 32))(v74, &v17[*(v29 + 64)], v72);
      LOBYTE(v79) = 0;
      sub_10003D03C();
      v32 = v77;
      v33 = v78;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v79 = v82;
      v80 = v83;
      v81[0] = *v84;
      *(v81 + 9) = *&v84[9];
      v85 = 0;
      sub_10003D290();
      v34 = v76;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v34)
      {

        (*(v57 + 8))(v24, v26);
        (*(v30 + 8))(v74, v31);
        (*(v75 + 8))(v33, v32);
        return sub_10003D0E4(&v82);
      }

      else
      {
        sub_10003D0E4(&v82);
        LOBYTE(v79) = 1;
        KeyedEncodingContainer.encode(_:forKey:)();

        LOBYTE(v79) = 2;
        sub_10003D1F4(&qword_1000DC588, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v55 = v74;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v56 = v78;
        (*(v57 + 8))(v24, v26);
        (*(v30 + 8))(v55, v31);
        return (*(v75 + 8))(v56, v77);
      }
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v36 = *(v17 + 1);
    v82 = *v17;
    v83 = v36;
    *v84 = *(v17 + 2);
    *&v84[9] = *(v17 + 41);
    v37 = sub_1000056EC(&qword_1000DC500, &unk_100097360);
    v38 = v73;
    v39 = v65;
    v40 = v72;
    (*(v73 + 32))(v65, &v17[*(v37 + 48)], v72);
    LOBYTE(v79) = 4;
    sub_10003CDF0();
    v41 = v66;
    v42 = v77;
    v43 = v78;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v79 = v82;
    v80 = v83;
    v81[0] = *v84;
    *(v81 + 9) = *&v84[9];
    v85 = 0;
    sub_10003D1A0();
    v44 = v68;
    v45 = v76;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v45)
    {
      (*(v67 + 8))(v41, v44);
      (*(v38 + 8))(v39, v40);
      (*(v75 + 8))(v43, v42);
      return sub_10003CE98(&v82);
    }

    else
    {
      sub_10003CE98(&v82);
      LOBYTE(v79) = 1;
      sub_10003D1F4(&qword_1000DC588, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v67 + 8))(v41, v44);
      (*(v38 + 8))(v39, v40);
      return (*(v75 + 8))(v43, v42);
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      LOBYTE(v82) = 1;
      sub_10003CFE8();
      v21 = v58;
      v22 = v77;
      v23 = v78;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v59 + 8))(v21, v60);
    }

    else
    {
      LOBYTE(v82) = 2;
      sub_10003CF94();
      v46 = v61;
      v22 = v77;
      v23 = v78;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v63 + 8))(v46, v64);
    }

    return (*(v75 + 8))(v23, v22);
  }
}

uint64_t sub_10003ADC4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v71 = sub_1000056EC(&qword_1000DC4B8, &qword_1000948B8);
  v73 = *(v71 - 8);
  __chkstk_darwin(v71);
  v75 = &v61 - v3;
  v70 = sub_1000056EC(&qword_1000DC4C0, &qword_1000948C0);
  v72 = *(v70 - 8);
  __chkstk_darwin(v70);
  v81 = &v61 - v4;
  v68 = sub_1000056EC(&qword_1000DC4C8, &qword_1000948C8);
  v65 = *(v68 - 8);
  __chkstk_darwin(v68);
  v80 = &v61 - v5;
  v67 = sub_1000056EC(&qword_1000DC4D0, &qword_1000948D0);
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v79 = &v61 - v6;
  v69 = sub_1000056EC(&qword_1000DC4D8, &qword_1000948D8);
  v74 = *(v69 - 8);
  __chkstk_darwin(v69);
  v78 = &v61 - v7;
  v82 = sub_1000056EC(&qword_1000DC4E0, &unk_1000948E0);
  v77 = *(v82 - 8);
  __chkstk_darwin(v82);
  v9 = &v61 - v8;
  v10 = type metadata accessor for ViewServiceOutput(0);
  v11 = __chkstk_darwin(v10);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v61 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v61 - v18;
  __chkstk_darwin(v17);
  v21 = &v61 - v20;
  v22 = a1[3];
  v83 = a1;
  sub_100006768(a1, v22);
  sub_10003CD9C();
  v23 = v84;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    return sub_10000529C(v83);
  }

  v25 = v79;
  v24 = v80;
  v61 = v16;
  v62 = v13;
  v26 = v78;
  v27 = v81;
  v64 = 0;
  v84 = v10;
  v63 = v21;
  v28 = v77;
  v29 = v82;
  v30 = KeyedDecodingContainer.allKeys.getter();
  v31 = (2 * *(v30 + 16)) | 1;
  v86 = v30;
  v87 = v30 + 32;
  v88 = 0;
  v89 = v31;
  v32 = sub_100071870();
  v33 = v29;
  if (v32 == 5 || v88 != v89 >> 1)
  {
    v40 = type metadata accessor for DecodingError();
    swift_allocError();
    v42 = v41;
    sub_1000056EC(&qword_1000DBA80, &qword_100094060);
    v43 = v29;
    *v42 = v84;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v40 - 8) + 104))(v42, enum case for DecodingError.typeMismatch(_:), v40);
    swift_willThrow();
    goto LABEL_10;
  }

  if (v32 > 1u)
  {
    if (v32 == 2)
    {
      LOBYTE(v85) = 2;
      sub_10003CF94();
      v49 = v64;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v49)
      {
        v64 = 0;
        (*(v65 + 8))(v24, v68);
        (*(v28 + 8))(v9, v29);
        swift_unknownObjectRelease();
        v60 = v63;
        swift_storeEnumTagMultiPayload();
LABEL_27:
        v54 = v83;
        v45 = v76;
        goto LABEL_28;
      }

LABEL_17:
      (*(v28 + 8))(v9, v29);
      goto LABEL_11;
    }

    if (v32 == 3)
    {
      LOBYTE(v85) = 3;
      sub_10003CEEC();
      v34 = v27;
      v35 = v29;
      v36 = v64;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v37 = v28;
      if (!v36)
      {
        LOBYTE(v85) = 0;
        sub_10003CF40();
        v38 = v61;
        v39 = v70;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        sub_1000056EC(&qword_1000DC520, &unk_1000948F0);
        type metadata accessor for Date();
        LOBYTE(v85) = 1;
        sub_10003D1F4(&qword_1000DC508, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v64 = 0;
        (*(v72 + 8))(v34, v39);
        (*(v37 + 8))(v9, v35);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v56 = v38;
LABEL_26:
        v60 = v63;
        sub_10003CC2C(v56, v63, type metadata accessor for ViewServiceOutput);
        goto LABEL_27;
      }

      goto LABEL_17;
    }

    LOBYTE(v85) = 4;
    sub_10003CDF0();
    v43 = v29;
    v50 = v64;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    if (!v50)
    {
      LOBYTE(v85) = 0;
      sub_10003CE44();
      v51 = v62;
      v52 = v71;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      sub_1000056EC(&qword_1000DC500, &unk_100097360);
      type metadata accessor for Date();
      v90 = 1;
      sub_10003D1F4(&qword_1000DC508, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v55 = v75;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v64 = 0;
      (*(v73 + 8))(v55, v52);
      (*(v28 + 8))(v9, v29);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v56 = v51;
      goto LABEL_26;
    }

LABEL_10:
    (*(v28 + 8))(v9, v43);
LABEL_11:
    swift_unknownObjectRelease();
    return sub_10000529C(v83);
  }

  v45 = v76;
  if (v32)
  {
    LOBYTE(v85) = 1;
    sub_10003CFE8();
    v53 = v64;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    if (v53)
    {
      (*(v28 + 8))(v9, v33);
      goto LABEL_11;
    }

    v64 = 0;
    (*(v66 + 8))(v25, v67);
    (*(v28 + 8))(v9, v33);
    swift_unknownObjectRelease();
    v60 = v63;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    LOBYTE(v85) = 0;
    sub_10003D03C();
    v43 = v33;
    v46 = v64;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    if (v46)
    {
      goto LABEL_10;
    }

    LOBYTE(v85) = 0;
    sub_10003D090();
    v47 = v19;
    v48 = v69;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v90 = 1;
    v57 = KeyedDecodingContainer.decode(_:forKey:)();
    v81 = v9;
    v59 = v58;
    sub_1000056EC(&qword_1000DC548, &unk_100097680);
    *(v19 + 8) = v57;
    *(v19 + 9) = v59;
    v80 = v59;
    type metadata accessor for Date();
    v90 = 2;
    sub_10003D1F4(&qword_1000DC508, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v64 = 0;
    (*(v74 + 8))(v26, v48);
    (*(v28 + 8))(v81, v82);
    swift_unknownObjectRelease();
    swift_storeEnumTagMultiPayload();
    v60 = v63;
    sub_10003CC2C(v47, v63, type metadata accessor for ViewServiceOutput);
  }

  v54 = v83;
LABEL_28:
  sub_10003CC2C(v60, v45, type metadata accessor for ViewServiceOutput);
  return sub_10000529C(v54);
}

uint64_t sub_10003BC7C(uint64_t a1)
{
  v2 = sub_10003CBD8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003BCB8(uint64_t a1)
{
  v2 = sub_10003CBD8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003BCF4(uint64_t a1)
{
  v2 = sub_10003CB30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003BD30(uint64_t a1)
{
  v2 = sub_10003CB30();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10003BD6C()
{
  v1 = *v0;
  v2 = 0x65646F4D64726163;
  v3 = 0x73736572676F7270;
  if (v1 != 6)
  {
    v3 = 0xD000000000000026;
  }

  v4 = 0x6E6F70736552726DLL;
  if (v1 != 4)
  {
    v4 = 1735289200;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x7373696D736964;
  if (v1 != 2)
  {
    v5 = 0xD000000000000013;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10003BE70@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10003F16C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10003BEA4(uint64_t a1)
{
  v2 = sub_10003C890();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003BEE0(uint64_t a1)
{
  v2 = sub_10003C890();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10003BF30(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_10003BFB4(uint64_t a1)
{
  v2 = sub_10003CADC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003BFF0(uint64_t a1)
{
  v2 = sub_10003CADC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003C02C(uint64_t a1)
{
  v2 = sub_10003CA34();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003C068(uint64_t a1)
{
  v2 = sub_10003CA34();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003C0A4(uint64_t a1)
{
  v2 = sub_10003C9E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003C0E0(uint64_t a1)
{
  v2 = sub_10003C9E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003C11C(uint64_t a1)
{
  v2 = sub_10003C8E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003C158(uint64_t a1)
{
  v2 = sub_10003C8E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003C194(uint64_t a1)
{
  v2 = sub_10003C98C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003C1D0(uint64_t a1)
{
  v2 = sub_10003C98C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10003C20C(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_10003C28C(uint64_t a1)
{
  v2 = sub_10003C938();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003C2C8(uint64_t a1)
{
  v2 = sub_10003C938();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003C334()
{
  v1 = 0x6E6F73616572;
  if (*v0 != 1)
  {
    v1 = 0x6D617473656D6974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_10003C384@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10003F410(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10003C3AC(uint64_t a1)
{
  v2 = sub_10003D03C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003C3E8(uint64_t a1)
{
  v2 = sub_10003D03C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003C424()
{
  v1 = *v0;
  v2 = 0x6E65764564726163;
  v3 = 1735289200;
  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 0xD00000000000001CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x64656873696E6966;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10003C4C0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10003F524(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10003C4F4(uint64_t a1)
{
  v2 = sub_10003CD9C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003C530(uint64_t a1)
{
  v2 = sub_10003CD9C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003C56C(uint64_t a1)
{
  v2 = sub_10003CFE8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003C5A8(uint64_t a1)
{
  v2 = sub_10003CFE8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003C5E4()
{
  if (*v0)
  {
    return 0x6D617473656D6974;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_10003C61C(uint64_t a1)
{
  v2 = sub_10003CDF0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003C658(uint64_t a1)
{
  v2 = sub_10003CDF0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003C694(uint64_t a1)
{
  v2 = sub_10003CF94();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003C6D0(uint64_t a1)
{
  v2 = sub_10003CF94();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10003C70C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_10003C7E8(uint64_t a1)
{
  v2 = sub_10003CEEC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003C824(uint64_t a1)
{
  v2 = sub_10003CEEC();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10003C890()
{
  result = qword_1000DC3F8;
  if (!qword_1000DC3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC3F8);
  }

  return result;
}

unint64_t sub_10003C8E4()
{
  result = qword_1000DC400;
  if (!qword_1000DC400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC400);
  }

  return result;
}

unint64_t sub_10003C938()
{
  result = qword_1000DC408;
  if (!qword_1000DC408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC408);
  }

  return result;
}

unint64_t sub_10003C98C()
{
  result = qword_1000DC410;
  if (!qword_1000DC410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC410);
  }

  return result;
}

unint64_t sub_10003C9E0()
{
  result = qword_1000DC418;
  if (!qword_1000DC418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC418);
  }

  return result;
}

unint64_t sub_10003CA34()
{
  result = qword_1000DC420;
  if (!qword_1000DC420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC420);
  }

  return result;
}

unint64_t sub_10003CA88()
{
  result = qword_1000DC428;
  if (!qword_1000DC428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC428);
  }

  return result;
}

unint64_t sub_10003CADC()
{
  result = qword_1000DC430;
  if (!qword_1000DC430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC430);
  }

  return result;
}

unint64_t sub_10003CB30()
{
  result = qword_1000DC438;
  if (!qword_1000DC438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC438);
  }

  return result;
}

unint64_t sub_10003CB84()
{
  result = qword_1000DC440;
  if (!qword_1000DC440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC440);
  }

  return result;
}

unint64_t sub_10003CBD8()
{
  result = qword_1000DC448;
  if (!qword_1000DC448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC448);
  }

  return result;
}

uint64_t sub_10003CC2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10003CC94()
{
  result = qword_1000DC4A0;
  if (!qword_1000DC4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC4A0);
  }

  return result;
}

unint64_t sub_10003CCE8()
{
  result = qword_1000DC4A8;
  if (!qword_1000DC4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC4A8);
  }

  return result;
}

uint64_t sub_10003CD3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10003CD9C()
{
  result = qword_1000DC4E8;
  if (!qword_1000DC4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC4E8);
  }

  return result;
}

unint64_t sub_10003CDF0()
{
  result = qword_1000DC4F0;
  if (!qword_1000DC4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC4F0);
  }

  return result;
}

unint64_t sub_10003CE44()
{
  result = qword_1000DC4F8;
  if (!qword_1000DC4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC4F8);
  }

  return result;
}

unint64_t sub_10003CEEC()
{
  result = qword_1000DC510;
  if (!qword_1000DC510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC510);
  }

  return result;
}

unint64_t sub_10003CF40()
{
  result = qword_1000DC518;
  if (!qword_1000DC518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC518);
  }

  return result;
}

unint64_t sub_10003CF94()
{
  result = qword_1000DC528;
  if (!qword_1000DC528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC528);
  }

  return result;
}

unint64_t sub_10003CFE8()
{
  result = qword_1000DC530;
  if (!qword_1000DC530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC530);
  }

  return result;
}

unint64_t sub_10003D03C()
{
  result = qword_1000DC538;
  if (!qword_1000DC538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC538);
  }

  return result;
}

unint64_t sub_10003D090()
{
  result = qword_1000DC540;
  if (!qword_1000DC540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC540);
  }

  return result;
}

uint64_t sub_10003D138(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_10003D1A0()
{
  result = qword_1000DC580;
  if (!qword_1000DC580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC580);
  }

  return result;
}

uint64_t sub_10003D1F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10003D23C()
{
  result = qword_1000DC590;
  if (!qword_1000DC590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC590);
  }

  return result;
}

unint64_t sub_10003D290()
{
  result = qword_1000DC598;
  if (!qword_1000DC598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC598);
  }

  return result;
}

uint64_t sub_10003D2E4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x726F737365636361 && a2 == 0xED00007765695679 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F69746163756465 && a2 == 0xED0000776569566ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701602409 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_10003D410(void *a1)
{
  v33 = sub_1000056EC(&qword_1000DC5A0, &qword_100094930);
  v38 = *(v33 - 8);
  __chkstk_darwin(v33);
  v37 = &v31 - v2;
  v3 = sub_1000056EC(&qword_1000DC5A8, &qword_100094938);
  v4 = *(v3 - 8);
  v35 = v3;
  v36 = v4;
  __chkstk_darwin(v3);
  v6 = &v31 - v5;
  v7 = sub_1000056EC(&qword_1000DC5B0, &qword_100094940);
  v34 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  v10 = sub_1000056EC(&qword_1000DC5B8, &qword_100094948);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - v12;
  v14 = a1[3];
  v40 = a1;
  v15 = sub_100006768(a1, v14);
  sub_10003D9DC();
  v16 = v39;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v16)
  {
    v32 = v7;
    v39 = 0;
    v18 = v37;
    v17 = v38;
    v19 = v11;
    v20 = KeyedDecodingContainer.allKeys.getter();
    v21 = (2 * *(v20 + 16)) | 1;
    v41 = v20;
    v42 = v20 + 32;
    v43 = 0;
    v44 = v21;
    v22 = sub_100074828();
    if (v22 == 3 || v43 != v44 >> 1)
    {
      v25 = type metadata accessor for DecodingError();
      swift_allocError();
      v27 = v26;
      sub_1000056EC(&qword_1000DBA80, &qword_100094060);
      *v27 = &type metadata for CardMode;
      v15 = v13;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v25 - 8) + 104))(v27, enum case for DecodingError.typeMismatch(_:), v25);
      swift_willThrow();
    }

    else if (v22)
    {
      if (v22 == 1)
      {
        v45 = 1;
        sub_10003DA84();
        v15 = v13;
        v23 = v39;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v23)
        {
          sub_10003DAD8();
          v24 = v35;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v36 + 8))(v6, v24);
          (*(v11 + 8))(v13, v10);
          swift_unknownObjectRelease();
          v15 = v45;
          goto LABEL_10;
        }
      }

      else
      {
        v45 = 2;
        sub_10003DA30();
        v15 = v13;
        v30 = v39;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v30)
        {
          (*(v17 + 8))(v18, v33);
          (*(v11 + 8))(v13, v10);
          swift_unknownObjectRelease();
          v15 = 4;
          goto LABEL_10;
        }
      }
    }

    else
    {
      v45 = 0;
      sub_10003DB2C();
      v15 = v13;
      v29 = v39;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v29)
      {
        (*(v34 + 8))(v9, v32);
        (*(v11 + 8))(v13, v10);
        swift_unknownObjectRelease();
        v15 = 3;
        goto LABEL_10;
      }
    }

    (*(v19 + 8))(v13, v10);
    swift_unknownObjectRelease();
  }

LABEL_10:
  sub_10000529C(v40);
  return v15;
}

unint64_t sub_10003D9DC()
{
  result = qword_1000DC5C0;
  if (!qword_1000DC5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC5C0);
  }

  return result;
}

unint64_t sub_10003DA30()
{
  result = qword_1000DC5C8;
  if (!qword_1000DC5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC5C8);
  }

  return result;
}

unint64_t sub_10003DA84()
{
  result = qword_1000DC5D0;
  if (!qword_1000DC5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC5D0);
  }

  return result;
}

unint64_t sub_10003DAD8()
{
  result = qword_1000DC5D8;
  if (!qword_1000DC5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC5D8);
  }

  return result;
}

unint64_t sub_10003DB2C()
{
  result = qword_1000DC5E0;
  if (!qword_1000DC5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC5E0);
  }

  return result;
}

unint64_t sub_10003DB80()
{
  result = qword_1000DC608;
  if (!qword_1000DC608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC608);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ViewServiceOutput.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ViewServiceOutput.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ViewServiceInput.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ViewServiceInput.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10003DF90()
{
  result = qword_1000DC610;
  if (!qword_1000DC610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC610);
  }

  return result;
}

unint64_t sub_10003DFE8()
{
  result = qword_1000DC618;
  if (!qword_1000DC618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC618);
  }

  return result;
}

unint64_t sub_10003E040()
{
  result = qword_1000DC620;
  if (!qword_1000DC620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC620);
  }

  return result;
}

unint64_t sub_10003E098()
{
  result = qword_1000DC628;
  if (!qword_1000DC628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC628);
  }

  return result;
}

unint64_t sub_10003E0F0()
{
  result = qword_1000DC630;
  if (!qword_1000DC630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC630);
  }

  return result;
}

unint64_t sub_10003E148()
{
  result = qword_1000DC638;
  if (!qword_1000DC638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC638);
  }

  return result;
}

unint64_t sub_10003E1A0()
{
  result = qword_1000DC640;
  if (!qword_1000DC640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC640);
  }

  return result;
}

unint64_t sub_10003E1F8()
{
  result = qword_1000DC648;
  if (!qword_1000DC648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC648);
  }

  return result;
}

unint64_t sub_10003E250()
{
  result = qword_1000DC650;
  if (!qword_1000DC650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC650);
  }

  return result;
}

unint64_t sub_10003E2A8()
{
  result = qword_1000DC658;
  if (!qword_1000DC658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC658);
  }

  return result;
}

unint64_t sub_10003E300()
{
  result = qword_1000DC660;
  if (!qword_1000DC660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC660);
  }

  return result;
}

unint64_t sub_10003E358()
{
  result = qword_1000DC668;
  if (!qword_1000DC668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC668);
  }

  return result;
}

unint64_t sub_10003E3B0()
{
  result = qword_1000DC670;
  if (!qword_1000DC670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC670);
  }

  return result;
}

unint64_t sub_10003E408()
{
  result = qword_1000DC678;
  if (!qword_1000DC678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC678);
  }

  return result;
}

unint64_t sub_10003E460()
{
  result = qword_1000DC680;
  if (!qword_1000DC680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC680);
  }

  return result;
}

unint64_t sub_10003E4B8()
{
  result = qword_1000DC688;
  if (!qword_1000DC688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC688);
  }

  return result;
}

unint64_t sub_10003E510()
{
  result = qword_1000DC690;
  if (!qword_1000DC690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC690);
  }

  return result;
}

unint64_t sub_10003E568()
{
  result = qword_1000DC698;
  if (!qword_1000DC698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC698);
  }

  return result;
}

unint64_t sub_10003E5C0()
{
  result = qword_1000DC6A0;
  if (!qword_1000DC6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC6A0);
  }

  return result;
}

unint64_t sub_10003E618()
{
  result = qword_1000DC6A8;
  if (!qword_1000DC6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC6A8);
  }

  return result;
}

unint64_t sub_10003E670()
{
  result = qword_1000DC6B0;
  if (!qword_1000DC6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC6B0);
  }

  return result;
}

unint64_t sub_10003E6C8()
{
  result = qword_1000DC6B8;
  if (!qword_1000DC6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC6B8);
  }

  return result;
}

unint64_t sub_10003E720()
{
  result = qword_1000DC6C0;
  if (!qword_1000DC6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC6C0);
  }

  return result;
}

unint64_t sub_10003E778()
{
  result = qword_1000DC6C8;
  if (!qword_1000DC6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC6C8);
  }

  return result;
}

unint64_t sub_10003E7D0()
{
  result = qword_1000DC6D0;
  if (!qword_1000DC6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC6D0);
  }

  return result;
}

unint64_t sub_10003E828()
{
  result = qword_1000DC6D8;
  if (!qword_1000DC6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC6D8);
  }

  return result;
}

unint64_t sub_10003E880()
{
  result = qword_1000DC6E0;
  if (!qword_1000DC6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC6E0);
  }

  return result;
}

unint64_t sub_10003E8D8()
{
  result = qword_1000DC6E8;
  if (!qword_1000DC6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC6E8);
  }

  return result;
}

unint64_t sub_10003E930()
{
  result = qword_1000DC6F0;
  if (!qword_1000DC6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC6F0);
  }

  return result;
}

unint64_t sub_10003E988()
{
  result = qword_1000DC6F8;
  if (!qword_1000DC6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC6F8);
  }

  return result;
}

unint64_t sub_10003E9E0()
{
  result = qword_1000DC700;
  if (!qword_1000DC700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC700);
  }

  return result;
}

unint64_t sub_10003EA38()
{
  result = qword_1000DC708;
  if (!qword_1000DC708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC708);
  }

  return result;
}

unint64_t sub_10003EA90()
{
  result = qword_1000DC710;
  if (!qword_1000DC710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC710);
  }

  return result;
}

unint64_t sub_10003EAE8()
{
  result = qword_1000DC718;
  if (!qword_1000DC718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC718);
  }

  return result;
}

unint64_t sub_10003EB40()
{
  result = qword_1000DC720;
  if (!qword_1000DC720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC720);
  }

  return result;
}

unint64_t sub_10003EB98()
{
  result = qword_1000DC728;
  if (!qword_1000DC728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC728);
  }

  return result;
}

unint64_t sub_10003EBF0()
{
  result = qword_1000DC730;
  if (!qword_1000DC730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC730);
  }

  return result;
}

unint64_t sub_10003EC48()
{
  result = qword_1000DC738;
  if (!qword_1000DC738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC738);
  }

  return result;
}

unint64_t sub_10003ECA0()
{
  result = qword_1000DC740;
  if (!qword_1000DC740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC740);
  }

  return result;
}

unint64_t sub_10003ECF8()
{
  result = qword_1000DC748;
  if (!qword_1000DC748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC748);
  }

  return result;
}

unint64_t sub_10003ED50()
{
  result = qword_1000DC750;
  if (!qword_1000DC750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC750);
  }

  return result;
}

unint64_t sub_10003EDA8()
{
  result = qword_1000DC758;
  if (!qword_1000DC758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC758);
  }

  return result;
}

unint64_t sub_10003EE00()
{
  result = qword_1000DC760;
  if (!qword_1000DC760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC760);
  }

  return result;
}

unint64_t sub_10003EE58()
{
  result = qword_1000DC768;
  if (!qword_1000DC768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC768);
  }

  return result;
}

unint64_t sub_10003EEB0()
{
  result = qword_1000DC770;
  if (!qword_1000DC770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC770);
  }

  return result;
}

unint64_t sub_10003EF08()
{
  result = qword_1000DC778;
  if (!qword_1000DC778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC778);
  }

  return result;
}

unint64_t sub_10003EF60()
{
  result = qword_1000DC780;
  if (!qword_1000DC780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC780);
  }

  return result;
}

unint64_t sub_10003EFB8()
{
  result = qword_1000DC788;
  if (!qword_1000DC788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC788);
  }

  return result;
}

unint64_t sub_10003F010()
{
  result = qword_1000DC790;
  if (!qword_1000DC790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC790);
  }

  return result;
}

unint64_t sub_10003F068()
{
  result = qword_1000DC798;
  if (!qword_1000DC798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC798);
  }

  return result;
}

unint64_t sub_10003F0C0()
{
  result = qword_1000DC7A0;
  if (!qword_1000DC7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC7A0);
  }

  return result;
}

unint64_t sub_10003F118()
{
  result = qword_1000DC7A8;
  if (!qword_1000DC7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DC7A8);
  }

  return result;
}

uint64_t sub_10003F16C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000016 && 0x80000001000A22A0 == a2;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65646F4D64726163 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7373696D736964 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001000A22C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F70736552726DLL && a2 == 0xEA00000000006573 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1735289200 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x73736572676F7270 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000026 && 0x80000001000A22E0 == a2)
  {

    return 7;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_10003F410(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_10003F524(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65764564726163 && a2 == 0xE900000000000074;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64656873696E6966 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1735289200 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001000A2310 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001000A2330 == a2)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_10003F714(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x746867696CLL;
    }

    else
    {
      v4 = 1952870259;
    }

    if (v2)
    {
      v3 = 0xE500000000000000;
    }

    else
    {
      v3 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE600000000000000;
    v4 = 0x6D756964656DLL;
  }

  else
  {
    v3 = 0xE500000000000000;
    if (a1 == 3)
    {
      v4 = 0x7976616568;
    }

    else
    {
      v4 = 0x6469676972;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0x746867696CLL;
    }

    else
    {
      v8 = 1952870259;
    }

    if (a2)
    {
      v7 = 0xE500000000000000;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    if (v4 != v8)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x7976616568;
    if (a2 != 3)
    {
      v5 = 0x6469676972;
    }

    if (a2 == 2)
    {
      v6 = 0x6D756964656DLL;
    }

    else
    {
      v6 = v5;
    }

    if (a2 == 2)
    {
      v7 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xE500000000000000;
    }

    if (v4 != v6)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v7)
  {
LABEL_33:
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_34;
  }

  v9 = 1;
LABEL_34:

  return v9 & 1;
}

uint64_t sub_10003F874(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x656369766564;
    }

    else
    {
      v3 = 0x7974697669746361;
    }

    if (v2)
    {
      v4 = 0xE600000000000000;
    }

    else
    {
      v4 = 0xE800000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xD000000000000012;
    v4 = 0x80000001000A0B90;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x7974706D65;
    }

    else
    {
      v3 = 0xD000000000000012;
    }

    if (v2 == 3)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0x80000001000A0BB0;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x656369766564;
    }

    else
    {
      v9 = 0x7974697669746361;
    }

    if (a2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE800000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v5 = 0x7974706D65;
    v6 = 0x80000001000A0BB0;
    if (a2 == 3)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xD000000000000012;
    }

    if (a2 == 2)
    {
      v7 = 0xD000000000000012;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0x80000001000A0B90;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_37;
    }
  }

  if (v4 != v8)
  {
LABEL_37:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_38;
  }

  v10 = 1;
LABEL_38:

  return v10 & 1;
}

uint64_t sub_10003F9F8()
{

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_10003FAEC()
{
  sub_10003FA5C();

  return _swift_deallocClassInstance(v0, 136, 7);
}

uint64_t sub_10003FB9C()
{
  sub_10003FB44();

  return _swift_deallocClassInstance(v0, 88, 7);
}

void *sub_10003FBF4()
{
  type metadata accessor for Defaults();
  v0 = swift_allocObject();
  result = sub_1000414D4();
  qword_1000F3C58 = v0;
  return result;
}

uint64_t sub_10003FC30(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x74756F656D6974;
  }

  else
  {
    v3 = 0x6E6F74747562;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x74756F656D6974;
  }

  else
  {
    v5 = 0x6E6F74747562;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10003FCD4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_10003FD54(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_10003FDC0(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_10003FE48(uint64_t *a1@<X8>)
{
  v2 = 0x6E6F74747562;
  if (*v1)
  {
    v2 = 0x74756F656D6974;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

Swift::Int sub_10003FF50()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_100040034(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_100040104(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000401E4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100045530(*a1);
  *a2 = result;
  return result;
}

void sub_100040214(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x7974697669746361;
  v5 = 0x80000001000A0B90;
  v6 = 0xD000000000000012;
  v7 = 0xE500000000000000;
  v8 = 0x7974706D65;
  if (v2 != 3)
  {
    v8 = 0xD000000000000012;
    v7 = 0x80000001000A0BB0;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x656369766564;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_100040374()
{
  v1 = *v0;
  v2 = 0x7974697669746361;
  v3 = 0xD000000000000012;
  v4 = 0x7974706D65;
  if (v1 != 3)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656369766564;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100040410(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x737569646172;
  }

  else
  {
    v3 = 0x656C797473;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x737569646172;
  }

  else
  {
    v5 = 0x656C797473;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1000404B0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_10004052C(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_100040594(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_100040618(Swift::OpaquePointer cases@<0:X3>, Swift::String *a2@<X0>, char *a3@<X8>)
{
  v4 = _findStringSwitchCase(cases:string:)(cases, *a2);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v4)
  {
    v5 = 0;
  }

  *a3 = v5;
}

void sub_100040674(uint64_t *a1@<X8>)
{
  v2 = 0x656C797473;
  if (*v1)
  {
    v2 = 0x737569646172;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

Swift::Int sub_100040778()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_100040844(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_1000408FC(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000409C4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10004557C(*a1);
  *a2 = result;
  return result;
}

void sub_1000409F4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1952870259;
  v5 = 0xE600000000000000;
  v6 = 0x6D756964656DLL;
  v7 = 0x7976616568;
  if (v2 != 3)
  {
    v7 = 0x6469676972;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = 0x746867696CLL;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t sub_100040B3C()
{
  v1 = *v0;
  v2 = 1952870259;
  v3 = 0x6D756964656DLL;
  v4 = 0x7976616568;
  if (v1 != 3)
  {
    v4 = 0x6469676972;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x746867696CLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000411C0()
{
  sub_100040BC0();

  return _swift_deallocClassInstance(v0, 1528, 7);
}

unint64_t sub_100041294()
{
  result = qword_1000DEBF8;
  if (!qword_1000DEBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DEBF8);
  }

  return result;
}

unint64_t sub_10004131C()
{
  result = qword_1000DEC10;
  if (!qword_1000DEC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DEC10);
  }

  return result;
}

unint64_t sub_1000413A4()
{
  result = qword_1000DEC28;
  if (!qword_1000DEC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DEC28);
  }

  return result;
}

uint64_t sub_100041428(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100005818(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100041480()
{
  result = qword_1000DEC40;
  if (!qword_1000DEC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DEC40);
  }

  return result;
}

void *sub_1000414D4()
{
  v1 = v0;
  v2 = sub_1000056EC(&qword_1000DEC68, &qword_1000969D8);
  v3 = __chkstk_darwin(v2 - 8);
  v631 = (&v628 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v3);
  v632 = (&v628 - v5);
  if (qword_1000D9838 != -1)
  {
    swift_once();
  }

  v6 = qword_1000F3D78;
  v7 = sub_1000056EC(&qword_1000DEC70, &qword_1000969E0);
  v8 = objc_allocWithZone(v7);
  v9 = v6;
  v10 = sub_100045718(0, 0xD000000000000014, 0x80000001000A3E20, v6);

  v1[2] = v10;
  v11 = objc_allocWithZone(v7);
  v12 = v9;
  v13 = sub_100045718(0, 0xD00000000000001ELL, 0x80000001000A3E40, v6);

  v1[3] = v13;
  v14 = objc_allocWithZone(v7);
  v15 = v12;
  v16 = sub_100045718(1, 0xD000000000000020, 0x80000001000A3E60, v6);

  v1[4] = v16;
  v17 = objc_allocWithZone(v7);
  v18 = v15;
  v19 = sub_100045718(0, 0xD000000000000023, 0x80000001000A3E90, v6);

  v1[5] = v19;
  v20 = objc_allocWithZone(v7);
  v21 = v18;
  v22 = sub_100045718(1, 0xD00000000000001FLL, 0x80000001000A3EC0, v6);

  v1[6] = v22;
  v23 = sub_1000056EC(&qword_1000DEC78, &qword_1000969E8);
  v642 = v23;
  v24 = objc_allocWithZone(v23);
  v25 = v21;
  v26 = sub_100045E04(0xD00000000000001ELL, 0x80000001000A3EE0, v6, &qword_1000DEC78, &qword_1000969E8, 8.0);

  v1[7] = v26;
  v27 = objc_allocWithZone(v7);
  v28 = v25;
  v29 = sub_100045718(1, 0xD000000000000017, 0x80000001000A3F00, v6);

  v1[8] = v29;
  v30 = objc_allocWithZone(v7);
  v31 = v28;
  v32 = sub_100045718(0, 0xD000000000000016, 0x80000001000A3F20, v6);

  v1[9] = v32;
  v33 = objc_allocWithZone(v23);
  v34 = v31;
  v35 = sub_100045E04(0xD000000000000021, 0x80000001000A3F40, v6, &qword_1000DEC78, &qword_1000969E8, 300.0);

  v1[10] = v35;
  v36 = objc_allocWithZone(v7);
  v37 = v34;
  v38 = sub_100045718(0, 0xD000000000000017, 0x80000001000A3F70, v6);

  v1[11] = v38;
  v39 = objc_allocWithZone(v7);
  v40 = v37;
  v41 = sub_100045718(1, 0xD00000000000001DLL, 0x80000001000A3F90, v6);

  v1[12] = v41;
  v42 = objc_allocWithZone(v7);
  v43 = v40;
  v44 = sub_100045718(1, 0xD00000000000002ALL, 0x80000001000A3FB0, v6);

  v1[13] = v44;
  v45 = objc_allocWithZone(v7);
  v46 = v43;
  v641 = 0xD000000000000012;
  v47 = sub_100045718(0, 0xD000000000000012, 0x80000001000A3FE0, v6);

  v1[14] = v47;
  v48 = objc_allocWithZone(v7);
  v49 = v46;
  v640 = 0xD000000000000011;
  v50 = sub_100045718(0, 0xD000000000000011, 0x80000001000A4000, v6);

  v1[15] = v50;
  v51 = objc_allocWithZone(v7);
  v52 = v49;
  v53 = sub_100045718(1, 0xD000000000000011, 0x80000001000A4020, v6);

  v1[16] = v53;
  v54 = objc_allocWithZone(v7);
  v55 = v52;
  v56 = sub_100045718(0, 0x646F4D6775626564, 0xEE00737265696669, v6);

  v1[17] = v56;
  v57 = objc_allocWithZone(v7);
  v58 = v55;
  v633 = 0xD000000000000010;
  v59 = sub_100045718(1, 0xD000000000000010, 0x80000001000A4040, v6);

  v1[18] = v59;
  v60 = objc_allocWithZone(v7);
  v61 = v58;
  v62 = sub_100045718(1, 0xD000000000000016, 0x80000001000A4060, v6);

  v1[19] = v62;
  v63 = v642;
  v64 = objc_allocWithZone(v642);
  v65 = v61;
  v66 = sub_100045E04(0xD000000000000020, 0x80000001000A4080, v6, &qword_1000DEC78, &qword_1000969E8, 8.0);

  v1[20] = v66;
  v639 = sub_1000056EC(&qword_1000DEC80, &qword_1000969F0);
  v67 = objc_allocWithZone(v639);
  v68 = v65;
  v69 = sub_100046050(2, 0xD000000000000019, 0x80000001000A40B0, v6, &qword_1000DEC80, &qword_1000969F0);

  v1[21] = v69;
  v70 = objc_allocWithZone(v63);
  v71 = v68;
  v637 = 0xD000000000000013;
  v72 = sub_100045E04(0xD000000000000013, 0x80000001000A40D0, v6, &qword_1000DEC78, &qword_1000969E8, 1.0);

  v1[22] = v72;
  v73 = objc_allocWithZone(v63);
  v74 = v71;
  v75 = sub_100045E04(0xD000000000000018, 0x80000001000A40F0, v6, &qword_1000DEC78, &qword_1000969E8, 30.0);

  v1[23] = v75;
  v76 = objc_allocWithZone(v63);
  v77 = v74;
  v78 = sub_100045E04(0xD000000000000016, 0x80000001000A4110, v6, &qword_1000DEC78, &qword_1000969E8, 10.0);

  v1[24] = v78;
  v79 = objc_allocWithZone(v63);
  v80 = v77;
  v81 = sub_100045E04(0xD00000000000001ELL, 0x80000001000A4130, v6, &qword_1000DEC78, &qword_1000969E8, 0.0);

  v1[25] = v81;
  v82 = objc_allocWithZone(v7);
  v83 = v80;
  v84 = sub_100045718(1, 0xD00000000000001ALL, 0x80000001000A4150, v6);

  v1[26] = v84;
  v85 = objc_allocWithZone(v7);
  v86 = v83;
  v87 = sub_100045718(0, v641, 0x80000001000A4170, v6);

  v1[27] = v87;
  v88 = sub_1000056EC(&qword_1000DEC88, &qword_1000969F8);
  v89 = objc_allocWithZone(v88);
  v90 = v86;
  v91 = sub_100046728(2, 0xD000000000000022, 0x80000001000A4190, v6, &qword_1000DEC88, &qword_1000969F8);

  v1[28] = v91;
  v92 = objc_allocWithZone(v88);
  v93 = v90;
  v94 = sub_100046728(2, 0xD000000000000017, 0x80000001000A41C0, v6, &qword_1000DEC88, &qword_1000969F8);

  v1[29] = v94;
  v634 = v88;
  v95 = objc_allocWithZone(v88);
  v96 = v93;
  v97 = sub_100046728(2, 0xD000000000000019, 0x80000001000A41E0, v6, &qword_1000DEC88, &qword_1000969F8);

  v1[30] = v97;
  v98 = objc_allocWithZone(v88);
  v99 = v96;
  v100 = sub_100046728(2, 0xD000000000000020, 0x80000001000A4200, v6, &qword_1000DEC88, &qword_1000969F8);

  v1[31] = v100;
  v101 = objc_allocWithZone(v7);
  v102 = v99;
  v103 = sub_100045718(0, 0xD00000000000001BLL, 0x80000001000A4230, v6);

  v1[32] = v103;
  v104 = objc_allocWithZone(v7);
  v105 = v102;
  v106 = sub_100045718(1, 0xD000000000000020, 0x80000001000A4250, v6);

  v1[33] = v106;
  v107 = objc_allocWithZone(v7);
  v108 = v105;
  v109 = sub_100045718(0, 0xD000000000000024, 0x80000001000A4280, v6);

  v1[34] = v109;
  v110 = objc_allocWithZone(v7);
  v111 = v108;
  v112 = sub_100045718(0, 0xD00000000000001CLL, 0x80000001000A42B0, v6);

  v1[35] = v112;
  v113 = objc_allocWithZone(sub_1000056EC(&qword_1000DEC90, &qword_100096A00));
  v114 = v111;
  v115 = sub_100046294(0, 0x65756E69746E6F63, 0xEF72656767697254, v6, &qword_1000DEC90, &qword_100096A00);

  v1[36] = v115;
  v116 = objc_allocWithZone(v639);
  v117 = v114;
  v118 = sub_100046050(28, 0xD000000000000021, 0x80000001000A42D0, v6, &qword_1000DEC80, &qword_1000969F0);

  v1[37] = v118;
  v119 = sub_100046BC0(_swiftEmptyArrayStorage);
  v120 = sub_1000056EC(&qword_1000DEC98, &qword_100096A08);
  v121 = objc_allocWithZone(v120);
  v122 = v117;
  v123 = sub_100046050(v119, 0x6761735564726163, 0xEA00000000007365, v6, &qword_1000DEC98, &qword_100096A08);

  v1[38] = v123;
  v124 = sub_100046BC0(_swiftEmptyArrayStorage);
  v125 = objc_allocWithZone(v120);
  v126 = v122;
  v127 = sub_100046050(v124, 0x67617355746E6968, 0xEA00000000007365, v6, &qword_1000DEC98, &qword_100096A08);

  v1[39] = v127;
  v128 = sub_100046BC0(_swiftEmptyArrayStorage);
  v129 = objc_allocWithZone(v120);
  v130 = v126;
  v131 = sub_100046050(v128, 0xD000000000000014, 0x80000001000A4300, v6, &qword_1000DEC98, &qword_100096A08);

  v1[40] = v131;
  v132 = sub_100046BC0(_swiftEmptyArrayStorage);
  v133 = objc_allocWithZone(v120);
  v134 = v130;
  v135 = sub_100046050(v132, 0x726566736E617274, 0xEE00736567617355, v6, &qword_1000DEC98, &qword_100096A08);

  v1[41] = v135;
  v136 = objc_allocWithZone(v7);
  v137 = v134;
  v138 = v6;
  v139 = sub_100045718(0, 0xD000000000000016, 0x80000001000A4320, v6);

  v1[42] = v139;
  v140 = objc_allocWithZone(v7);
  v141 = v137;
  v142 = sub_100045718(0, 0xD000000000000016, 0x80000001000A4340, v6);

  v1[43] = v142;
  v638 = v7;
  v143 = objc_allocWithZone(v7);
  v144 = v141;
  v145 = sub_100045718(0, 0xD000000000000019, 0x80000001000A4360, v6);

  v1[44] = v145;
  v146 = objc_allocWithZone(v7);
  v147 = v144;
  v628 = v6;
  v148 = sub_100045718(0, v641, 0x80000001000A4380, v6);

  v1[45] = v148;
  v149 = type metadata accessor for Date();
  v150 = *(v149 - 1);
  v629 = *(v150 + 56);
  v630 = v150 + 56;
  v151 = v632;
  v629(v632, 1, 1, v149);
  v152 = v631;
  sub_100046CBC(v151, v631);
  v153 = sub_1000056EC(&qword_1000DECA0, &qword_100096A10);
  v635 = v153;
  v154 = objc_allocWithZone(v153);
  v155 = v147;
  v156 = sub_10004595C(v152, 0xD000000000000015, 0x80000001000A43A0, v138);

  sub_100046D2C(v151);
  v1[46] = v156;
  v636 = v149;
  v157 = v629;
  v629(v151, 1, 1, v149);
  sub_100046CBC(v151, v152);
  v158 = objc_allocWithZone(v153);
  v159 = v155;
  v160 = v628;
  v161 = sub_10004595C(v152, 0xD000000000000016, 0x80000001000A43C0, v628);

  sub_100046D2C(v151);
  v1[47] = v161;
  v157(v151, 1, 1, v149);
  sub_100046CBC(v151, v152);
  v162 = v635;
  v163 = objc_allocWithZone(v635);
  v164 = v159;
  v165 = sub_10004595C(v152, v640, 0x80000001000A43E0, v160);

  sub_100046D2C(v151);
  v1[48] = v165;
  v157(v151, 1, 1, v636);
  sub_100046CBC(v151, v152);
  v166 = objc_allocWithZone(v162);
  v167 = v164;
  v168 = sub_10004595C(v152, 0xD000000000000023, 0x80000001000A4400, v160);

  sub_100046D2C(v151);
  v1[49] = v168;
  v169 = objc_allocWithZone(v642);
  v170 = v167;
  v171 = sub_100045E04(0xD00000000000001FLL, 0x80000001000A4430, v160, &qword_1000DEC78, &qword_1000969E8, 86400.0);

  v1[50] = v171;
  v157(v151, 1, 1, v636);
  sub_100046CBC(v151, v152);
  v172 = objc_allocWithZone(v635);
  v173 = v170;
  v174 = sub_10004595C(v152, 0xD00000000000001ELL, 0x80000001000A4450, v160);

  sub_100046D2C(v151);
  v1[51] = v174;
  v175 = objc_allocWithZone(v639);
  v176 = v173;
  v177 = sub_100046050(0, 0xD00000000000001DLL, 0x80000001000A4470, v160, &qword_1000DEC80, &qword_1000969F0);

  v1[52] = v177;
  v178 = objc_allocWithZone(v634);
  v179 = v176;
  v180 = sub_100046728(1, 0xD00000000000001ALL, 0x80000001000A4490, v160, &qword_1000DEC88, &qword_1000969F8);

  v1[53] = v180;
  v181 = v642;
  v182 = objc_allocWithZone(v642);
  v183 = v179;
  v184 = v637;
  v185 = sub_100045E04(v637, 0x80000001000A44B0, v160, &qword_1000DEC78, &qword_1000969E8, -1.0);

  v1[54] = v185;
  v186 = objc_allocWithZone(v181);
  v187 = v183;
  v188 = sub_100045E04(0xD000000000000014, 0x80000001000A44D0, v160, &qword_1000DEC78, &qword_1000969E8, -1.0);

  v1[55] = v188;
  v189 = sub_1000056EC(&qword_1000DECA8, &qword_100096A18);
  v190 = objc_allocWithZone(v189);
  v191 = v187;
  v192 = sub_100046728(0, 0xD000000000000017, 0x80000001000A44F0, v160, &qword_1000DECA8, &qword_100096A18);

  v1[56] = v192;
  v193 = objc_allocWithZone(v189);
  v194 = v191;
  v195 = sub_100046728(1, 0xD000000000000018, 0x80000001000A4510, v160, &qword_1000DECA8, &qword_100096A18);

  v1[57] = v195;
  v196 = objc_allocWithZone(v189);
  v197 = v194;
  v198 = sub_100046728(2, 0xD000000000000017, 0x80000001000A4530, v160, &qword_1000DECA8, &qword_100096A18);

  v1[58] = v198;
  v199 = sub_1000056EC(&qword_1000DECB0, &qword_100096A20);
  v200 = objc_allocWithZone(v199);
  v201 = v197;
  v202 = v640;
  v203 = sub_100045BB8(0, 0, v640, 0x80000001000A4550, v160);

  v1[59] = v203;
  v636 = v199;
  v204 = objc_allocWithZone(v199);
  v205 = v201;
  v206 = sub_100045BB8(0, 0, 0xD000000000000016, 0x80000001000A4570, v160);

  v1[60] = v206;
  v207 = objc_allocWithZone(v199);
  v208 = v205;
  v209 = sub_100045BB8(0, 0, 0xD000000000000017, 0x80000001000A4590, v160);

  v1[61] = v209;
  v210 = v638;
  v211 = objc_allocWithZone(v638);
  v212 = v208;
  v213 = sub_100045718(0, 0xD000000000000025, 0x80000001000A45B0, v160);

  v1[62] = v213;
  v214 = objc_allocWithZone(v210);
  v215 = v212;
  v216 = sub_100045718(0, 0xD00000000000001CLL, 0x80000001000A45E0, v160);

  v1[63] = v216;
  v217 = objc_allocWithZone(v210);
  v218 = v215;
  v219 = sub_100045718(0, 0xD00000000000001FLL, 0x80000001000A4600, v160);

  v1[64] = v219;
  v220 = objc_allocWithZone(v210);
  v221 = v218;
  v222 = sub_100045718(0, v202, 0x80000001000A4620, v160);

  v1[65] = v222;
  v223 = objc_allocWithZone(v210);
  v224 = v221;
  v225 = sub_100045718(0, 0x656D6F4870696B73, 0xEC00000064726143, v160);

  v1[66] = v225;
  v226 = v642;
  v227 = objc_allocWithZone(v642);
  v228 = v224;
  v229 = sub_100045E04(v184, 0x80000001000A4640, v160, &qword_1000DEC78, &qword_1000969E8, 8.0);

  v1[67] = v229;
  v230 = objc_allocWithZone(v210);
  v231 = v228;
  v232 = sub_100045718(0, 0xD00000000000001BLL, 0x80000001000A4660, v160);

  v1[68] = v232;
  v233 = objc_allocWithZone(v226);
  v234 = v231;
  v235 = sub_100045E04(0xD00000000000001ELL, 0x80000001000A4680, v160, &qword_1000DEC78, &qword_1000969E8, 0.5);

  v1[69] = v235;
  v236 = sub_1000056EC(&qword_1000DECB8, &qword_100096A28);
  v237 = objc_allocWithZone(v236);
  v238 = v234;
  v239 = sub_100045E04(0xD00000000000001CLL, 0x80000001000A46A0, v160, &qword_1000DECB8, &qword_100096A28, 0.1);

  v1[70] = v239;
  v240 = objc_allocWithZone(v236);
  v241 = v238;
  v242 = sub_100045E04(0xD00000000000001DLL, 0x80000001000A46C0, v160, &qword_1000DECB8, &qword_100096A28, 0.1);

  v1[71] = v242;
  v243 = objc_allocWithZone(v236);
  v244 = v241;
  v245 = sub_100045E04(0xD000000000000022, 0x80000001000A46E0, v160, &qword_1000DECB8, &qword_100096A28, 1.2);

  v1[72] = v245;
  v246 = objc_allocWithZone(v236);
  v247 = v244;
  v248 = sub_100045E04(0xD000000000000023, 0x80000001000A4710, v160, &qword_1000DECB8, &qword_100096A28, -1.25);

  v1[73] = v248;
  v249 = objc_allocWithZone(v236);
  v250 = v247;
  v251 = sub_100045E04(0xD000000000000021, 0x80000001000A4740, v160, &qword_1000DECB8, &qword_100096A28, 25.0);

  v1[74] = v251;
  v252 = objc_allocWithZone(v236);
  v253 = v250;
  v254 = sub_100045E04(0xD000000000000022, 0x80000001000A4770, v160, &qword_1000DECB8, &qword_100096A28, 25.0);

  v1[75] = v254;
  v255 = objc_allocWithZone(v236);
  v256 = v253;
  v257 = sub_100045E04(0xD000000000000015, 0x80000001000A47A0, v160, &qword_1000DECB8, &qword_100096A28, 0.0);

  v1[76] = v257;
  v258 = objc_allocWithZone(sub_1000056EC(&qword_1000DECC0, &qword_100096A30));
  v259 = v256;
  v260 = sub_100046294(1, v633, 0x80000001000A47C0, v160, &qword_1000DECC0, &qword_100096A30);

  v1[77] = v260;
  v261 = objc_allocWithZone(v639);
  v262 = v259;
  v263 = sub_100046050(11, 0x72756C4264726163, 0xED0000656C797453, v160, &qword_1000DEC80, &qword_1000969F0);

  v1[78] = v263;
  v264 = objc_allocWithZone(v236);
  v265 = v262;
  v266 = sub_100045E04(0x72756C4264726163, 0xEE00737569646152, v160, &qword_1000DECB8, &qword_100096A28, 16.0);

  v1[79] = v266;
  v267 = v638;
  v268 = objc_allocWithZone(v638);
  v269 = v265;
  v270 = sub_100045718(0, 0xD000000000000018, 0x80000001000A47E0, v160);

  v1[80] = v270;
  v632 = v236;
  v271 = objc_allocWithZone(v236);
  v272 = v269;
  v273 = sub_100045E04(0xD000000000000014, 0x80000001000A4800, v160, &qword_1000DECB8, &qword_100096A28, 20.0);

  v1[81] = v273;
  v274 = objc_allocWithZone(v236);
  v275 = v272;
  v276 = sub_100045E04(0xD000000000000016, 0x80000001000A4820, v160, &qword_1000DECB8, &qword_100096A28, 20.0);

  v1[82] = v276;
  v277 = objc_allocWithZone(v267);
  v278 = v275;
  v279 = sub_100045718(1, 0xD000000000000019, 0x80000001000A4840, v160);

  v1[83] = v279;
  v280 = v642;
  v281 = objc_allocWithZone(v642);
  v282 = v278;
  v283 = sub_100045E04(v641, 0x80000001000A4860, v160, &qword_1000DEC78, &qword_1000969E8, 0.3);

  v1[84] = v283;
  v284 = objc_allocWithZone(v280);
  v285 = v282;
  v286 = sub_100045E04(0x617078456C6C6970, 0xEF656C616353646ELL, v160, &qword_1000DEC78, &qword_1000969E8, 1.3);

  v1[85] = v286;
  v287 = objc_allocWithZone(sub_1000056EC(&qword_1000DECC8, &qword_100096A38));
  v288 = v285;
  v289 = kCAMediaTimingFunctionEaseOut;
  v290 = sub_100046050(kCAMediaTimingFunctionEaseOut, 0xD00000000000001CLL, 0x80000001000A4880, v160, &qword_1000DECC8, &qword_100096A38);

  v1[86] = v290;
  v291 = objc_allocWithZone(sub_1000056EC(&qword_1000DECD0, &qword_100096A40));
  v292 = v288;
  v293 = sub_100046294(0, 0xD00000000000001CLL, 0x80000001000A48A0, v160, &qword_1000DECD0, &qword_100096A40);

  v1[87] = v293;
  v294 = objc_allocWithZone(sub_1000056EC(&qword_1000DECD8, &qword_100096A48));
  v295 = v292;
  v296 = sub_100046294(0, 0xD000000000000019, 0x80000001000A48C0, v160, &qword_1000DECD8, &qword_100096A48);

  v1[88] = v296;
  v297 = v638;
  v298 = objc_allocWithZone(v638);
  v299 = v295;
  v300 = sub_100045718(1, 0xD000000000000018, 0x80000001000A48E0, v160);

  v1[89] = v300;
  v301 = objc_allocWithZone(v280);
  v302 = v299;
  v303 = sub_100045E04(0xD000000000000014, 0x80000001000A4900, v160, &qword_1000DEC78, &qword_1000969E8, 0.0);

  v1[90] = v303;
  v304 = objc_allocWithZone(v297);
  v305 = v302;
  v306 = sub_100045718(0, 0xD00000000000001FLL, 0x80000001000A4920, v160);

  v1[91] = v306;
  v307 = objc_allocWithZone(v297);
  v308 = v305;
  v309 = sub_100045718(1, v641, 0x80000001000A4940, v160);

  v1[92] = v309;
  v310 = objc_allocWithZone(v297);
  v311 = v308;
  v312 = sub_100045718(1, v637, 0x80000001000A4960, v160);

  v1[93] = v312;
  v313 = sub_1000056EC(&qword_1000DECE0, &qword_100096A50);
  v635 = v313;
  v314 = objc_allocWithZone(v313);
  v315 = v311;
  v316 = sub_1000464DC(0xD000000000000014, 0x80000001000A4980, v160, 0.15);

  v1[94] = v316;
  v317 = objc_allocWithZone(v313);
  v318 = v315;
  v319 = sub_1000464DC(0xD000000000000014, 0x80000001000A49A0, v160, 0.0);

  v1[95] = v319;
  v320 = sub_1000056EC(&qword_1000DECE8, &qword_100096A58);
  v321 = objc_allocWithZone(v320);
  v322 = v318;
  v323 = v640;
  v324 = sub_100046728(4, v640, 0x80000001000A49C0, v160, &qword_1000DECE8, &qword_100096A58);

  v1[96] = v324;
  v325 = v632;
  v326 = objc_allocWithZone(v632);
  v327 = v322;
  v328 = sub_100045E04(0xD000000000000015, 0x80000001000A49E0, v160, &qword_1000DECB8, &qword_100096A28, 1.0);

  v1[97] = v328;
  v329 = objc_allocWithZone(v320);
  v330 = v327;
  v331 = sub_100046728(3, v323, 0x80000001000A4A00, v160, &qword_1000DECE8, &qword_100096A58);

  v1[98] = v331;
  v332 = objc_allocWithZone(v325);
  v333 = v330;
  v334 = sub_100045E04(0xD000000000000015, 0x80000001000A4A20, v160, &qword_1000DECB8, &qword_100096A28, 1.0);

  v1[99] = v334;
  v335 = v638;
  v336 = objc_allocWithZone(v638);
  v337 = v333;
  v338 = sub_100045718(0, 0xD000000000000027, 0x80000001000A4A40, v160);

  v1[100] = v338;
  v339 = objc_allocWithZone(v335);
  v340 = v337;
  v341 = sub_100045718(0, 0xD000000000000032, 0x80000001000A4A70, v160);

  v1[101] = v341;
  v342 = objc_allocWithZone(v335);
  v343 = v340;
  v344 = sub_100045718(0, 0xD000000000000019, 0x80000001000A4AB0, v160);

  v1[102] = v344;
  v345 = objc_allocWithZone(v335);
  v346 = v343;
  v347 = sub_100045718(1, 0xD000000000000017, 0x80000001000A4AD0, v160);

  v1[103] = v347;
  v348 = objc_allocWithZone(v335);
  v349 = v346;
  v350 = sub_100045718(0, 0xD000000000000015, 0x80000001000A4AF0, v160);

  v1[104] = v350;
  v351 = objc_allocWithZone(v335);
  v352 = v349;
  v353 = sub_100045718(1, 0xD00000000000001ELL, 0x80000001000A4B10, v160);

  v1[105] = v353;
  v354 = objc_allocWithZone(v335);
  v355 = v352;
  v356 = sub_100045718(0, 0xD00000000000001BLL, 0x80000001000A4B30, v160);

  v1[106] = v356;
  v357 = v335;
  v358 = objc_allocWithZone(v335);
  v359 = v355;
  v360 = sub_100045718(0, 0xD000000000000017, 0x80000001000A4B50, v160);

  v1[107] = v360;
  v361 = v642;
  v362 = objc_allocWithZone(v642);
  v363 = v359;
  v364 = v640;
  v365 = sub_100045E04(v640, 0x80000001000A4B70, v160, &qword_1000DEC78, &qword_1000969E8, 0.0);

  v1[108] = v365;
  v366 = objc_allocWithZone(v357);
  v367 = v363;
  v368 = sub_100045718(0, 0xD00000000000001ALL, 0x80000001000A1FE0, v160);

  v1[109] = v368;
  v369 = objc_allocWithZone(v357);
  v370 = v367;
  v371 = sub_100045718(0, 0xD000000000000016, 0x80000001000A2000, v160);

  v1[110] = v371;
  v372 = objc_allocWithZone(v357);
  v373 = v370;
  v374 = sub_100045718(0, v364, 0x80000001000A4B90, v160);

  v1[111] = v374;
  v375 = v632;
  v376 = objc_allocWithZone(v632);
  v377 = v373;
  v378 = sub_100045E04(0x706C416567646162, 0xEF6E696765426168, v160, &qword_1000DECB8, &qword_100096A28, 0.0);

  v1[112] = v378;
  v379 = objc_allocWithZone(v375);
  v380 = v377;
  v381 = sub_100045E04(0x706C416567646162, 0xED0000646E456168, v160, &qword_1000DECB8, &qword_100096A28, 1.0);

  v1[113] = v381;
  v382 = objc_allocWithZone(v361);
  v383 = v380;
  v384 = sub_100045E04(0x6C65446567646162, 0xEA00000000007961, v160, &qword_1000DEC78, &qword_1000969E8, 1.0);

  v1[114] = v384;
  v385 = objc_allocWithZone(v361);
  v386 = v383;
  v387 = sub_100045E04(0x7275446567646162, 0xED00006E6F697461, v160, &qword_1000DEC78, &qword_1000969E8, 1.0);

  v1[115] = v387;
  v388 = objc_allocWithZone(v375);
  v389 = v386;
  v390 = sub_100045E04(0x6163536567646162, 0xEF6E69676542656CLL, v160, &qword_1000DECB8, &qword_100096A28, 0.8);

  v1[116] = v390;
  v391 = objc_allocWithZone(v375);
  v392 = v389;
  v393 = sub_100045E04(0x6163536567646162, 0xED0000646E45656CLL, v160, &qword_1000DECB8, &qword_100096A28, 1.0);

  v1[117] = v393;
  v394 = objc_allocWithZone(v375);
  v395 = v392;
  v396 = sub_100045E04(0x68706C4172756C62, 0xEE006E6967654261, v160, &qword_1000DECB8, &qword_100096A28, 0.0);

  v1[118] = v396;
  v397 = objc_allocWithZone(v375);
  v398 = v395;
  v399 = sub_100045E04(0x68706C4172756C62, 0xEC000000646E4561, v160, &qword_1000DECB8, &qword_100096A28, 0.5);

  v1[119] = v399;
  v400 = objc_allocWithZone(v375);
  v401 = v398;
  v402 = sub_100045E04(0x6772614D72756C62, 0xEA00000000006E69, v160, &qword_1000DECB8, &qword_100096A28, 15.0);

  v1[120] = v402;
  v403 = objc_allocWithZone(v375);
  v404 = v401;
  v405 = sub_100045E04(0x6964615272756C62, 0xEA00000000007375, v160, &qword_1000DECB8, &qword_100096A28, 0.5);

  v1[121] = v405;
  v631 = sub_1000056EC(&qword_1000DECF0, &qword_100096A60);
  v406 = objc_allocWithZone(v631);
  v407 = v404;
  v408 = sub_10004696C(0, 1, 0xD00000000000001BLL, 0x80000001000A4BB0, v160);

  v1[122] = v408;
  v409 = objc_allocWithZone(v636);
  v410 = v407;
  v411 = sub_100045BB8(0, 0, 0xD000000000000016, 0x80000001000A4BD0, v160);

  v1[123] = v411;
  v412 = objc_allocWithZone(v375);
  v413 = v410;
  v414 = sub_100045E04(0x706C416569766F6DLL, 0xEF6E696765426168, v160, &qword_1000DECB8, &qword_100096A28, 0.0);

  v1[124] = v414;
  v415 = objc_allocWithZone(v375);
  v416 = v413;
  v417 = sub_100045E04(0x706C416569766F6DLL, 0xED0000646E456168, v160, &qword_1000DECB8, &qword_100096A28, 1.0);

  v1[125] = v417;
  v418 = objc_allocWithZone(v642);
  v419 = v416;
  v420 = v641;
  v421 = sub_100045E04(v641, 0x80000001000A4BF0, v160, &qword_1000DEC78, &qword_1000969E8, 0.5);

  v1[126] = v421;
  v422 = objc_allocWithZone(v375);
  v423 = v419;
  v424 = sub_100045E04(0x6163536569766F6DLL, 0xEF6E69676542656CLL, v160, &qword_1000DECB8, &qword_100096A28, 0.1);

  v1[127] = v424;
  v425 = objc_allocWithZone(v375);
  v426 = v423;
  v427 = sub_100045E04(0x6163536569766F6DLL, 0xED0000646E45656CLL, v160, &qword_1000DECB8, &qword_100096A28, 1.0);

  v1[128] = v427;
  v428 = objc_allocWithZone(v375);
  v429 = v426;
  v430 = sub_100045E04(v420, 0x80000001000A4C10, v160, &qword_1000DECB8, &qword_100096A28, 10.0);

  v1[129] = v430;
  v431 = objc_allocWithZone(v375);
  v432 = v429;
  v433 = sub_100045E04(0x6461506569766F6DLL, 0xEF706F54676E6964, v160, &qword_1000DECB8, &qword_100096A28, -25.0);

  v1[130] = v433;
  v434 = v642;
  v435 = objc_allocWithZone(v642);
  v436 = v432;
  v437 = sub_100045E04(0xD000000000000016, 0x80000001000A4C30, v160, &qword_1000DEC78, &qword_1000969E8, 1.0);

  v1[131] = v437;
  v438 = objc_allocWithZone(v375);
  v439 = v436;
  v440 = sub_100045E04(0xD000000000000016, 0x80000001000A4C50, v160, &qword_1000DECB8, &qword_100096A28, 50.0);

  v1[132] = v440;
  v441 = objc_allocWithZone(v375);
  v442 = v439;
  v443 = sub_100045E04(0xD000000000000014, 0x80000001000A4C70, v160, &qword_1000DECB8, &qword_100096A28, 0.0);

  v1[133] = v443;
  v444 = objc_allocWithZone(v434);
  v445 = v442;
  v446 = sub_100045E04(v640, 0x80000001000A4C90, v160, &qword_1000DEC78, &qword_1000969E8, 5.0);

  v1[134] = v446;
  v447 = v638;
  v448 = objc_allocWithZone(v638);
  v449 = v445;
  v450 = sub_100045718(0, 0x49556775626564, 0xE700000000000000, v160);

  v1[135] = v450;
  v451 = objc_allocWithZone(v447);
  v452 = v449;
  v453 = sub_100045718(0, 0x655265726F6E6769, 0xEA00000000006C61, v160);

  v1[136] = v453;
  v454 = objc_allocWithZone(v375);
  v455 = v452;
  v456 = sub_100045E04(0xD000000000000014, 0x80000001000A4CB0, v160, &qword_1000DECB8, &qword_100096A28, 1.2);

  v1[137] = v456;
  v457 = objc_allocWithZone(v375);
  v458 = v455;
  v459 = sub_100045E04(0xD000000000000015, 0x80000001000A4CD0, v160, &qword_1000DECB8, &qword_100096A28, 50.0);

  v1[138] = v459;
  v460 = v636;
  v461 = objc_allocWithZone(v636);
  v462 = v458;
  v463 = sub_100045BB8(0, 0, 0x497070416F6D6544, 0xEB000000006E6F63, v160);

  v1[139] = v463;
  v464 = objc_allocWithZone(v631);
  v465 = v462;
  v466 = sub_10004696C(0, 1, 0x67616D496F6D6544, 0xE900000000000065, v160);

  v1[140] = v466;
  v467 = objc_allocWithZone(v460);
  v468 = v465;
  v469 = sub_100045BB8(0, 0, 0x656D614E6F6D6544, 0xE800000000000000, v160);

  v1[141] = v469;
  v470 = objc_allocWithZone(v460);
  v471 = v468;
  v472 = sub_100045BB8(0, 0, 0x746275536F6D6544, 0xEB00000000747865, v160);

  v1[142] = v472;
  v473 = objc_allocWithZone(v447);
  v474 = v471;
  v475 = sub_100045718(0, 0xD000000000000024, 0x80000001000A4CF0, v160);

  v1[143] = v475;
  v476 = objc_allocWithZone(v460);
  v477 = v474;
  v478 = sub_100045BB8(0, 0, 0xD000000000000022, 0x80000001000A4D20, v160);

  v1[144] = v478;
  v479 = objc_allocWithZone(v639);
  v480 = v477;
  v481 = sub_100046050(0, 0x7543636974706168, 0xEB00000000657672, v160, &qword_1000DEC80, &qword_1000969F0);

  v1[145] = v481;
  v482 = objc_allocWithZone(v447);
  v483 = v480;
  v484 = v641;
  v485 = sub_100045718(1, v641, 0x80000001000A4D50, v160);

  v1[146] = v485;
  v486 = v642;
  v487 = objc_allocWithZone(v642);
  v488 = v483;
  v489 = sub_100045E04(0x7246636974706168, 0xEF79636E65757165, v160, &qword_1000DEC78, &qword_1000969E8, 60.0);

  v1[147] = v489;
  v490 = v635;
  v491 = objc_allocWithZone(v635);
  v492 = v488;
  v493 = sub_1000464DC(v484, 0x80000001000A4D70, v160, 0.65);

  v1[148] = v493;
  v494 = objc_allocWithZone(v490);
  v495 = v492;
  v496 = sub_1000464DC(v484, 0x80000001000A4D90, v160, 0.0);

  v1[149] = v496;
  v497 = v490;
  v498 = objc_allocWithZone(v490);
  v499 = v495;
  v500 = v633;
  v501 = sub_1000464DC(v633, 0x80000001000A4DB0, v160, 0.15);

  v1[150] = v501;
  v502 = objc_allocWithZone(v497);
  v503 = v499;
  v504 = sub_1000464DC(v500, 0x80000001000A4DD0, v160, 0.15);

  v1[151] = v504;
  v505 = objc_allocWithZone(v486);
  v506 = v503;
  v507 = sub_100045E04(0x664F636974706168, 0xEC00000074657366, v160, &qword_1000DEC78, &qword_1000969E8, 0.3);

  v1[152] = v507;
  v508 = objc_allocWithZone(v486);
  v509 = v506;
  v510 = v637;
  v511 = sub_100045E04(v637, 0x80000001000A4DF0, v160, &qword_1000DEC78, &qword_1000969E8, 0.8425);

  v1[153] = v511;
  v512 = objc_allocWithZone(v486);
  v513 = v509;
  v514 = sub_100045E04(0xD00000000000001CLL, 0x80000001000A4E10, v160, &qword_1000DEC78, &qword_1000969E8, 0.0625);

  v1[154] = v514;
  v515 = objc_allocWithZone(v486);
  v516 = v513;
  v517 = sub_100045E04(0xD000000000000014, 0x80000001000A4E30, v160, &qword_1000DEC78, &qword_1000969E8, 0.4);

  v1[155] = v517;
  v518 = objc_allocWithZone(v486);
  v519 = v516;
  v520 = sub_100045E04(0xD00000000000001DLL, 0x80000001000A4E50, v160, &qword_1000DEC78, &qword_1000969E8, 0.125);

  v1[156] = v520;
  v521 = objc_allocWithZone(v486);
  v522 = v519;
  v523 = sub_100045E04(0xD00000000000001BLL, 0x80000001000A4E70, v160, &qword_1000DEC78, &qword_1000969E8, 0.0);

  v1[157] = v523;
  v524 = v638;
  v525 = objc_allocWithZone(v638);
  v526 = v522;
  v527 = sub_100045718(0, v641, 0x80000001000A4E90, v160);

  v1[158] = v527;
  v528 = objc_allocWithZone(v524);
  v529 = v526;
  v530 = sub_100045718(1, 0x6D53676E69727073, 0xEF676E6968746F6FLL, v160);

  v1[159] = v530;
  v531 = objc_allocWithZone(v524);
  v532 = v529;
  v533 = sub_100045718(0, 0xD000000000000017, 0x80000001000A4EB0, v160);

  v1[160] = v533;
  v534 = objc_allocWithZone(v639);
  v535 = v532;
  v536 = sub_100046050(-60, 0xD000000000000014, 0x80000001000A4ED0, v160, &qword_1000DEC80, &qword_1000969F0);

  v1[161] = v536;
  v537 = v635;
  v538 = objc_allocWithZone(v635);
  v539 = v535;
  v540 = sub_1000464DC(0xD000000000000018, 0x80000001000A4EF0, v160, 4.0);

  v1[162] = v540;
  v541 = objc_allocWithZone(v537);
  v542 = v539;
  v543 = sub_1000464DC(v510, 0x80000001000A4F10, v160, 0.3);

  v1[163] = v543;
  v544 = v634;
  v545 = objc_allocWithZone(v634);
  v546 = v542;
  v547 = sub_100046728(2, 0x7365526563726F66, 0xEE007265646E6F70, v160, &qword_1000DEC88, &qword_1000969F8);

  v1[164] = v547;
  v548 = objc_allocWithZone(v524);
  v549 = v546;
  v550 = sub_100045718(0, 0xD000000000000018, 0x80000001000A4F30, v160);

  v1[165] = v550;
  v551 = v524;
  v552 = objc_allocWithZone(v524);
  v553 = v549;
  v554 = sub_100045718(1, 0xD000000000000014, 0x80000001000A4F50, v160);

  v1[166] = v554;
  v555 = objc_allocWithZone(v524);
  v556 = v553;
  v557 = sub_100045718(1, 0x45676E69676E6172, 0xEF646563726F666ELL, v160);

  v1[167] = v557;
  v558 = objc_allocWithZone(v544);
  v559 = v556;
  v560 = sub_100046728(2, 0xD00000000000001BLL, 0x80000001000A4F70, v160, &qword_1000DEC88, &qword_1000969F8);

  v1[168] = v560;
  v561 = objc_allocWithZone(v636);
  v562 = v559;
  v563 = sub_100045BB8(0, 0, v640, 0x80000001000A4F90, v160);

  v1[169] = v563;
  v564 = objc_allocWithZone(v524);
  v565 = v562;
  v566 = sub_100045718(1, 0x746552776F6C6C61, 0xEC00000073656972, v160);

  v1[170] = v566;
  v567 = v639;
  v568 = objc_allocWithZone(v639);
  v569 = v565;
  v570 = sub_100046050(0, 0xD000000000000018, 0x80000001000A2080, v160, &qword_1000DEC80, &qword_1000969F0);

  v1[171] = v570;
  v571 = objc_allocWithZone(v567);
  v572 = v569;
  v573 = sub_100046050(0, 0xD000000000000016, 0x80000001000A20A0, v160, &qword_1000DEC80, &qword_1000969F0);

  v1[172] = v573;
  v574 = objc_allocWithZone(v642);
  v575 = v572;
  v576 = sub_100045E04(0xD00000000000001DLL, 0x80000001000A4FB0, v160, &qword_1000DEC78, &qword_1000969E8, 0.0);

  v1[173] = v576;
  v577 = objc_allocWithZone(v551);
  v578 = v575;
  v579 = sub_100045718(0, 0x44676E69676E6172, 0xEF64656C62617369, v160);

  v1[174] = v579;
  v580 = v635;
  v581 = objc_allocWithZone(v635);
  v582 = v578;
  v583 = sub_1000464DC(v640, 0x80000001000A4FD0, v160, 10.0);

  v1[175] = v583;
  v584 = objc_allocWithZone(v580);
  v585 = v582;
  v586 = sub_1000464DC(0x6E61747369447462, 0xEF656772614C6563, v160, 10.0);

  v1[176] = v586;
  v587 = objc_allocWithZone(v580);
  v588 = v585;
  v589 = sub_1000464DC(0x6E61747369447462, 0xEF726568744F6563, v160, 10.0);

  v1[177] = v589;
  v590 = objc_allocWithZone(v580);
  v591 = v588;
  v592 = sub_1000464DC(0xD000000000000018, 0x80000001000A4FF0, v160, 0.5);

  v1[178] = v592;
  v593 = objc_allocWithZone(v580);
  v594 = v591;
  v595 = sub_1000464DC(0xD000000000000016, 0x80000001000A2040, v160, 0.075);

  v1[179] = v595;
  v596 = objc_allocWithZone(v580);
  v597 = v594;
  v598 = sub_1000464DC(0xD000000000000014, 0x80000001000A2060, v160, 0.13);

  v1[180] = v598;
  v599 = objc_allocWithZone(v580);
  v600 = v597;
  v601 = sub_1000464DC(0xD000000000000014, 0x80000001000A5010, v160, 0.16);

  v1[181] = v601;
  v602 = objc_allocWithZone(v580);
  v603 = v600;
  v604 = sub_1000464DC(0xD00000000000001ALL, 0x80000001000A5030, v160, 2.0);

  v1[182] = v604;
  v605 = objc_allocWithZone(v580);
  v606 = v603;
  v607 = sub_1000464DC(0xD000000000000018, 0x80000001000A5050, v160, 2.0);

  v1[183] = v607;
  v608 = objc_allocWithZone(v580);
  v609 = v606;
  v610 = sub_1000464DC(0xD000000000000018, 0x80000001000A5070, v160, 2.0);

  v1[184] = v610;
  v611 = objc_allocWithZone(v580);
  v612 = v609;
  v613 = sub_1000464DC(0xD00000000000001BLL, 0x80000001000A5090, v160, 1.25);

  v1[185] = v613;
  v614 = objc_allocWithZone(v580);
  v615 = v612;
  v616 = sub_1000464DC(0xD000000000000019, 0x80000001000A50B0, v160, 1.25);

  v1[186] = v616;
  v617 = objc_allocWithZone(v580);
  v618 = v615;
  v619 = sub_1000464DC(0xD000000000000019, 0x80000001000A50D0, v160, 1.25);

  v1[187] = v619;
  v620 = objc_allocWithZone(v580);
  v621 = v618;
  v622 = sub_1000464DC(0xD000000000000016, 0x80000001000A50F0, v160, 0.3);

  v1[188] = v622;
  v623 = objc_allocWithZone(v580);
  v624 = sub_1000464DC(0xD000000000000014, 0x80000001000A5110, v160, 0.36);

  v1[189] = v624;
  v625 = objc_allocWithZone(v580);
  v626 = sub_1000464DC(0xD000000000000014, 0x80000001000A5130, v160, 0.36);

  v1[190] = v626;
  return v1;
}

unint64_t sub_100045054(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1000451E8(a1, a2, v4);
}

unint64_t sub_1000450CC(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000452A0(a1, v4);
}

unint64_t sub_100045110(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_100045368(a1, v4);
}

unint64_t sub_100045154(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_10004542C(a1, v2);
}

unint64_t sub_1000451E8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1000452A0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100046D94(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10000EEEC(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100045368(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_100046EE0();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10004542C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_100045530(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000C6E40, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10004557C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000C6ED8, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000455C8()
{
  result = qword_1000DEC48;
  if (!qword_1000DEC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DEC48);
  }

  return result;
}

unint64_t sub_10004561C()
{
  result = qword_1000DEC50;
  if (!qword_1000DEC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DEC50);
  }

  return result;
}

unint64_t sub_100045670()
{
  result = qword_1000DEC58;
  if (!qword_1000DEC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DEC58);
  }

  return result;
}

unint64_t sub_1000456C4()
{
  result = qword_1000DEC60;
  if (!qword_1000DEC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DEC60);
  }

  return result;
}

id sub_100045718(char a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + *((swift_isaMask & *v5) + 0x88)) = 0;
  *(v5 + *((swift_isaMask & *v5) + 0x60)) = a1;
  v14 = (v5 + *((swift_isaMask & *v5) + 0x68));
  *v14 = a2;
  v14[1] = a3;
  *(v5 + *((swift_isaMask & *v5) + 0x70)) = a4;
  *(v5 + *((swift_isaMask & *v5) + 0x78)) = 0;
  strcpy(v20, "UserDefault-");
  HIBYTE(v20[6]) = 0;
  v20[7] = -5120;
  v15 = a4;

  v16._countAndFlagsBits = a2;
  v16._object = a3;
  String.append(_:)(v16);

  Logger.init(subsystem:category:)();
  (*(v11 + 32))(v5 + *((swift_isaMask & *v5) + 0x80), v13, v10);
  v17 = sub_1000056EC(&qword_1000DEC70, &qword_1000969E0);
  v19.receiver = v5;
  v19.super_class = v17;
  return objc_msgSendSuper2(&v19, "init");
}

id sub_10004595C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + *((swift_isaMask & *v5) + 0x88)) = 0;
  sub_100046CBC(a1, v5 + *((swift_isaMask & *v5) + 0x60));
  v14 = (v5 + *((swift_isaMask & *v5) + 0x68));
  *v14 = a2;
  v14[1] = a3;
  *(v5 + *((swift_isaMask & *v5) + 0x70)) = a4;
  *(v5 + *((swift_isaMask & *v5) + 0x78)) = 0;
  strcpy(v21, "UserDefault-");
  HIBYTE(v21[6]) = 0;
  v21[7] = -5120;
  v15 = a4;

  v16._countAndFlagsBits = a2;
  v16._object = a3;
  String.append(_:)(v16);

  Logger.init(subsystem:category:)();
  (*(v11 + 32))(v5 + *((swift_isaMask & *v5) + 0x80), v13, v10);
  v17 = sub_1000056EC(&qword_1000DECA0, &qword_100096A10);
  v20.receiver = v5;
  v20.super_class = v17;
  v18 = objc_msgSendSuper2(&v20, "init");
  sub_100046D2C(a1);
  return v18;
}

id sub_100045BB8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v6 = v5;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + *((swift_isaMask & *v6) + 0x88)) = 0;
  v16 = (v6 + *((swift_isaMask & *v6) + 0x60));
  *v16 = a1;
  v16[1] = a2;
  v17 = (v6 + *((swift_isaMask & *v6) + 0x68));
  *v17 = a3;
  v17[1] = a4;
  *(v6 + *((swift_isaMask & *v6) + 0x70)) = a5;
  *(v6 + *((swift_isaMask & *v6) + 0x78)) = 0;
  strcpy(v23, "UserDefault-");
  HIBYTE(v23[6]) = 0;
  v23[7] = -5120;
  v18 = a5;

  v19._countAndFlagsBits = a3;
  v19._object = a4;
  String.append(_:)(v19);

  Logger.init(subsystem:category:)();
  (*(v13 + 32))(v6 + *((swift_isaMask & *v6) + 0x80), v15, v12);
  v20 = sub_1000056EC(&qword_1000DECB0, &qword_100096A20);
  v22.receiver = v6;
  v22.super_class = v20;
  return objc_msgSendSuper2(&v22, "init");
}

id sub_100045E04(uint64_t a1, void *a2, void *a3, uint64_t *a4, uint64_t *a5, double a6)
{
  v23 = a5;
  v8 = v6;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v8 + *((swift_isaMask & *v8) + 0x88)) = 0;
  *(v8 + *((swift_isaMask & *v8) + 0x60)) = a6;
  v17 = (v8 + *((swift_isaMask & *v8) + 0x68));
  *v17 = a1;
  v17[1] = a2;
  *(v8 + *((swift_isaMask & *v8) + 0x70)) = a3;
  *(v8 + *((swift_isaMask & *v8) + 0x78)) = 0;
  strcpy(v25, "UserDefault-");
  HIBYTE(v25[6]) = 0;
  v25[7] = -5120;
  v18 = a3;

  v19._countAndFlagsBits = a1;
  v19._object = a2;
  String.append(_:)(v19);

  Logger.init(subsystem:category:)();
  (*(v14 + 32))(v8 + *((swift_isaMask & *v8) + 0x80), v16, v13);
  v20 = sub_1000056EC(a4, v23);
  v24.receiver = v8;
  v24.super_class = v20;
  return objc_msgSendSuper2(&v24, "init");
}

id sub_100046050(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v23 = a6;
  v8 = v6;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v8 + *((swift_isaMask & *v8) + 0x88)) = 0;
  *(v8 + *((swift_isaMask & *v8) + 0x60)) = a1;
  v17 = (v8 + *((swift_isaMask & *v8) + 0x68));
  *v17 = a2;
  v17[1] = a3;
  *(v8 + *((swift_isaMask & *v8) + 0x70)) = a4;
  *(v8 + *((swift_isaMask & *v8) + 0x78)) = 0;
  strcpy(v25, "UserDefault-");
  HIBYTE(v25[6]) = 0;
  v25[7] = -5120;
  v18 = a4;

  v19._countAndFlagsBits = a2;
  v19._object = a3;
  String.append(_:)(v19);

  Logger.init(subsystem:category:)();
  (*(v14 + 32))(v8 + *((swift_isaMask & *v8) + 0x80), v16, v13);
  v20 = sub_1000056EC(a5, v23);
  v24.receiver = v8;
  v24.super_class = v20;
  return objc_msgSendSuper2(&v24, "init");
}

id sub_100046294(char a1, uint64_t a2, void *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v23 = a6;
  v8 = v6;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v8 + *((swift_isaMask & *v8) + 0x88)) = 0;
  *(v8 + *((swift_isaMask & *v8) + 0x60)) = a1 & 1;
  v17 = (v8 + *((swift_isaMask & *v8) + 0x68));
  *v17 = a2;
  v17[1] = a3;
  *(v8 + *((swift_isaMask & *v8) + 0x70)) = a4;
  *(v8 + *((swift_isaMask & *v8) + 0x78)) = 0;
  strcpy(v25, "UserDefault-");
  HIBYTE(v25[6]) = 0;
  v25[7] = -5120;
  v18 = a4;

  v19._countAndFlagsBits = a2;
  v19._object = a3;
  String.append(_:)(v19);

  Logger.init(subsystem:category:)();
  (*(v14 + 32))(v8 + *((swift_isaMask & *v8) + 0x80), v16, v13);
  v20 = sub_1000056EC(a5, v23);
  v24.receiver = v8;
  v24.super_class = v20;
  return objc_msgSendSuper2(&v24, "init");
}

id sub_1000464DC(uint64_t a1, void *a2, void *a3, float a4)
{
  v5 = v4;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + *((swift_isaMask & *v5) + 0x88)) = 0;
  *(v5 + *((swift_isaMask & *v5) + 0x60)) = a4;
  v14 = (v5 + *((swift_isaMask & *v5) + 0x68));
  *v14 = a1;
  v14[1] = a2;
  *(v5 + *((swift_isaMask & *v5) + 0x70)) = a3;
  *(v5 + *((swift_isaMask & *v5) + 0x78)) = 0;
  strcpy(v20, "UserDefault-");
  HIBYTE(v20[6]) = 0;
  v20[7] = -5120;
  v15 = a3;

  v16._countAndFlagsBits = a1;
  v16._object = a2;
  String.append(_:)(v16);

  Logger.init(subsystem:category:)();
  (*(v11 + 32))(v5 + *((swift_isaMask & *v5) + 0x80), v13, v10);
  v17 = sub_1000056EC(&qword_1000DECE0, &qword_100096A50);
  v19.receiver = v5;
  v19.super_class = v17;
  return objc_msgSendSuper2(&v19, "init");
}

id sub_100046728(char a1, uint64_t a2, void *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v23 = a6;
  v8 = v6;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v8 + *((swift_isaMask & *v8) + 0x88)) = 0;
  *(v8 + *((swift_isaMask & *v8) + 0x60)) = a1;
  v17 = (v8 + *((swift_isaMask & *v8) + 0x68));
  *v17 = a2;
  v17[1] = a3;
  *(v8 + *((swift_isaMask & *v8) + 0x70)) = a4;
  *(v8 + *((swift_isaMask & *v8) + 0x78)) = 0;
  strcpy(v25, "UserDefault-");
  HIBYTE(v25[6]) = 0;
  v25[7] = -5120;
  v18 = a4;

  v19._countAndFlagsBits = a2;
  v19._object = a3;
  String.append(_:)(v19);

  Logger.init(subsystem:category:)();
  (*(v14 + 32))(v8 + *((swift_isaMask & *v8) + 0x80), v16, v13);
  v20 = sub_1000056EC(a5, v23);
  v24.receiver = v8;
  v24.super_class = v20;
  return objc_msgSendSuper2(&v24, "init");
}

id sub_10004696C(uint64_t a1, char a2, uint64_t a3, void *a4, void *a5)
{
  v6 = v5;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + *((swift_isaMask & *v6) + 0x88)) = 0;
  v16 = v6 + *((swift_isaMask & *v6) + 0x60);
  *v16 = a1;
  v16[8] = a2 & 1;
  v17 = (v6 + *((swift_isaMask & *v6) + 0x68));
  *v17 = a3;
  v17[1] = a4;
  *(v6 + *((swift_isaMask & *v6) + 0x70)) = a5;
  *(v6 + *((swift_isaMask & *v6) + 0x78)) = 0;
  strcpy(v23, "UserDefault-");
  HIBYTE(v23[6]) = 0;
  v23[7] = -5120;
  v18 = a5;

  v19._countAndFlagsBits = a3;
  v19._object = a4;
  String.append(_:)(v19);

  Logger.init(subsystem:category:)();
  (*(v13 + 32))(v6 + *((swift_isaMask & *v6) + 0x80), v15, v12);
  v20 = sub_1000056EC(&qword_1000DECF0, &qword_100096A60);
  v22.receiver = v6;
  v22.super_class = v20;
  return objc_msgSendSuper2(&v22, "init");
}

unint64_t sub_100046BC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000056EC(&qword_1000DECF8, &qword_100096A68);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100045054(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t sub_100046CBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000056EC(&qword_1000DEC68, &qword_1000969D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100046D2C(uint64_t a1)
{
  v2 = sub_1000056EC(&qword_1000DEC68, &qword_1000969D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100046DF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000056EC(qword_1000DED00, &qword_100096A70);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_100045110(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_100046EE0()
{
  result = qword_1000DAD20;
  if (!qword_1000DAD20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000DAD20);
  }

  return result;
}

uint64_t sub_100046F34(uint64_t a1)
{
  result = swift_checkMetadataState();
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

uint64_t sub_100047030()
{
  v1 = *(*v0 + 80);
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(*v0);
  v5 = v14 - v4;
  v14[0] = v3;
  swift_getMetatypeMetadata();
  v6 = String.init<A>(describing:)();
  v8 = v7;
  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  v9._countAndFlagsBits = 60;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  String.append(_:)(v10);

  v11._countAndFlagsBits = 32;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  (*(*(*(*v0 + 80) - 8) + 16))(v5, &v0[*(*v0 + 96)]);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  (*(v2 + 8))(v5, v1);
  v12._countAndFlagsBits = 62;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  return v14[0];
}

char *sub_1000471FC()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  return v0;
}

uint64_t sub_1000472AC(uint64_t a1)
{
  type metadata accessor for AnyPublisher();
  type metadata accessor for Optional();
  type metadata accessor for CurrentValueSubject();
  swift_getWitnessTable();
  type metadata accessor for Publishers.Map();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for Publishers.SwitchToLatest();
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Logger();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1000474B0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = type metadata accessor for AnyPublisher();
  type metadata accessor for Optional();
  type metadata accessor for CurrentValueSubject();
  swift_getWitnessTable();
  v16[4] = v4;
  v16[5] = type metadata accessor for Publishers.Map();
  v16[6] = swift_getWitnessTable();
  v16[7] = swift_getWitnessTable();
  v5 = type metadata accessor for Publishers.SwitchToLatest();
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v16 - v11;
  v13 = *(v3 + 104);
  swift_beginAccess();
  (*(v7 + 16))(v12, &v1[v13], v6);
  v14 = *(v5 - 8);
  if ((*(v14 + 48))(v12, 1, v5) != 1)
  {
    return (*(v14 + 32))(a1, v12, v5);
  }

  (*(v7 + 8))(v12, v6);
  sub_1000477D8(v1);
  (*(v14 + 16))(v10, a1, v5);
  (*(v14 + 56))(v10, 0, 1, v5);
  swift_beginAccess();
  (*(v7 + 40))(&v1[v13], v10, v6);
  return swift_endAccess();
}

uint64_t sub_1000477D8(void *a1)
{
  type metadata accessor for Optional();
  type metadata accessor for CurrentValueSubject();
  type metadata accessor for AnyPublisher();
  swift_getWitnessTable();
  v2 = type metadata accessor for Publishers.Map();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v7 - v4;
  v7[1] = a1[3];

  Publisher.map<A>(_:)();

  swift_getWitnessTable();
  swift_getWitnessTable();
  Publisher<>.switchToLatest()();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1000479E8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v24 = a1;
  v25 = a3;
  v22 = *a2;
  v4 = *(v22 + class metadata base offset for CurrentValueSubject);
  v5 = type metadata accessor for Just();
  v23 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v21 - v6;
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v21 - v11;
  v13 = *(v4 - 8);
  v14 = __chkstk_darwin(v10);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v21 - v17;
  (*(v9 + 16))(v12, v24, v8);
  if ((*(v13 + 48))(v12, 1, v4) == 1)
  {
    (*(v9 + 8))(v12, v8);
    v26 = a2;
    swift_getWitnessTable();
    result = Publisher.eraseToAnyPublisher()();
    v20 = result;
  }

  else
  {
    (*(v13 + 32))(v18, v12, v4);
    (*(v13 + 16))(v16, v18, v4);
    Just.init(_:)();
    swift_getWitnessTable();
    v20 = Publisher.eraseToAnyPublisher()();
    (*(v23 + 8))(v7, v5);
    result = (*(v13 + 8))(v18, v4);
  }

  *v25 = v20;
  return result;
}

uint64_t sub_100047D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for AnyPublisher();
  type metadata accessor for Optional();
  type metadata accessor for CurrentValueSubject();
  swift_getWitnessTable();
  v9[0] = v3;
  v9[1] = type metadata accessor for Publishers.Map();
  v9[2] = swift_getWitnessTable();
  v9[3] = swift_getWitnessTable();
  v4 = type metadata accessor for Publishers.SwitchToLatest();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_1000474B0(v9 - v6);
  swift_getWitnessTable();
  dispatch thunk of Publisher.receive<A>(subscriber:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100047F74()
{
  v1 = *v0;
  v2 = *(v1 + 80);
  v3 = type metadata accessor for Optional();
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = __chkstk_darwin(v3);
  v6 = &v30 - v5;
  v7 = *(v2 - 8);
  v8 = __chkstk_darwin(v4);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v30 - v11;
  sub_1000056EC(&qword_1000DEE08, &qword_100096BE8);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100092B80;
  v32 = v1;
  swift_getMetatypeMetadata();
  *(v13 + 32) = String.init<A>(describing:)();
  *(v13 + 40) = v14;
  v32 = 0;
  v33 = 0xE000000000000000;
  v15._countAndFlagsBits = 0x3D65756C6176;
  v15._object = 0xE600000000000000;
  String.append(_:)(v15);
  CurrentValueSubject.value.getter();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v16 = *(v7 + 8);
  v16(v12, v2);
  v17 = v33;
  *(v13 + 48) = v32;
  *(v13 + 56) = v17;
  CurrentValueSubject.value.getter();
  if ((*(v7 + 48))(v6, 1, v2) == 1)
  {
    (*(v30 + 8))(v6, v31);
  }

  else
  {
    (*(v7 + 32))(v10, v6, v2);
    v32 = 0;
    v33 = 0xE000000000000000;
    _StringGuts.grow(_:)(16);
    v18._countAndFlagsBits = 0x656469727265766FLL;
    v18._object = 0xEE003D65756C6156;
    String.append(_:)(v18);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v19 = v32;
    v20 = v33;
    v22 = *(v13 + 16);
    v21 = *(v13 + 24);
    if (v22 >= v21 >> 1)
    {
      v13 = sub_10006F40C((v21 > 1), v22 + 1, 1, v13);
    }

    v16(v10, v2);
    *(v13 + 16) = v22 + 1;
    v23 = v13 + 16 * v22;
    *(v23 + 32) = v19;
    *(v23 + 40) = v20;
  }

  v32 = v13;
  sub_1000056EC(&qword_1000DB448, &qword_1000928B8);
  sub_100048664();
  v24 = BidirectionalCollection<>.joined(separator:)();
  v26 = v25;

  v32 = 60;
  v33 = 0xE100000000000000;
  v27._countAndFlagsBits = v24;
  v27._object = v26;
  String.append(_:)(v27);

  v28._countAndFlagsBits = 62;
  v28._object = 0xE100000000000000;
  String.append(_:)(v28);

  return v32;
}

char *sub_100048344()
{

  v1 = *(*v0 + 104);
  type metadata accessor for AnyPublisher();
  type metadata accessor for Optional();
  type metadata accessor for CurrentValueSubject();
  swift_getWitnessTable();
  type metadata accessor for Publishers.Map();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for Publishers.SwitchToLatest();
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 144);
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t sub_10004859C(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return _swift_deallocClassInstance(v1, v2, v3);
}

unint64_t sub_100048664()
{
  result = qword_1000DEE10;
  if (!qword_1000DEE10)
  {
    sub_100005818(&qword_1000DB448, &qword_1000928B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DEE10);
  }

  return result;
}

uint64_t sub_1000486DC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 368))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000486FC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 360) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = (a2 - 1);
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

  *(result + 368) = v3;
  return result;
}

uint64_t sub_1000487AC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_100048888(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_100048960(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_100049D0C(319, &unk_1000DEE80, &type metadata for AnyView, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100048A0C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ActivityIconView(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  *a1 = static Alignment.center.getter();
  a1[1] = v8;
  v9 = sub_1000056EC(&qword_1000DEF78, &qword_100096CE8);
  sub_100048CCC(v2, a1 + *(v9 + 44));
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v10 = (a1 + *(sub_1000056EC(&qword_1000DEF80, &unk_100096CF0) + 36));
  v11 = v27;
  *v10 = v26;
  v10[1] = v11;
  v10[2] = v28;
  v12 = static Animation.easeOut(duration:)();
  v13 = v2 + *(v5 + 56);
  v14 = *v13;
  v15 = *(v13 + 8);
  v24[16] = v14;
  v25 = v15;
  sub_1000056EC(&qword_1000DAFC0, &qword_100092670);
  State.wrappedValue.getter();
  LOBYTE(v5) = v24[15];
  v16 = a1 + *(sub_1000056EC(&qword_1000DEF88, &qword_100096D00) + 36);
  *v16 = v12;
  v16[8] = v5;
  v17 = a1 + *(sub_1000056EC(&qword_1000DEF90, &qword_100096D08) + 36);
  sub_1000056EC(&qword_1000DEEB0, &qword_100096C78);
  Binding.wrappedValue.getter();
  sub_100049D7C(v2, &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v18 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v19 = swift_allocObject();
  sub_100049DE4(&v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v19 + v18);
  v20 = &v17[*(sub_1000056EC(&qword_1000DEF98, &qword_100096D10) + 36)];
  *v20 = sub_100049E48;
  v20[1] = v19;
  sub_100049D7C(v2, &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v21 = swift_allocObject();
  sub_100049DE4(&v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v21 + v18);
  result = sub_1000056EC(&qword_1000DEFA0, &qword_100096D18);
  v23 = (a1 + *(result + 36));
  *v23 = sub_10004A010;
  v23[1] = v21;
  v23[2] = 0;
  v23[3] = 0;
  return result;
}

uint64_t sub_100048CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_1000056EC(&qword_1000DEFB0, &qword_100096D30);
  v4 = __chkstk_darwin(v3 - 8);
  v31 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v30 = &v30 - v7;
  v8 = __chkstk_darwin(v6);
  v10 = &v30 - v9;
  __chkstk_darwin(v8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ActivityIconView(0);
  v14 = (a1 + v13[10]);
  v16 = *v14;
  v15 = v14[1];
  v34 = v16;
  v35 = v15;
  sub_1000056EC(&qword_1000DEFA8, &unk_100096D20);
  State.wrappedValue.getter();
  v17 = v33;
  v18 = a1 + v13[12];
  v20 = *(v18 + 8);
  LOBYTE(v34) = *v18;
  v19 = v34;
  v35 = v20;
  sub_1000056EC(&qword_1000DAFC0, &qword_100092670);
  State.wrappedValue.getter();
  sub_100048F38(v17, v33, v12);

  v21 = (a1 + v13[11]);
  v23 = *v21;
  v22 = v21[1];
  v34 = v23;
  v35 = v22;
  State.wrappedValue.getter();
  v24 = v33;
  LOBYTE(v34) = v19;
  v35 = v20;
  State.wrappedValue.getter();
  sub_100048F38(v24, (v33 & 1) == 0, v10);

  v25 = v30;
  sub_10004A180(v12, v30);
  v26 = v31;
  sub_10004A180(v10, v31);
  v27 = v32;
  sub_10004A180(v25, v32);
  v28 = sub_1000056EC(&qword_1000DEFB8, &qword_100096D38);
  sub_10004A180(v26, v27 + *(v28 + 48));
  sub_10004A1F0(v10);
  sub_10004A1F0(v12);
  sub_10004A1F0(v26);
  return sub_10004A1F0(v25);
}

uint64_t sub_100048F38@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v37 = a2;
  v39 = a3;
  v5 = sub_1000056EC(&qword_1000DEFC0, &qword_100096D40);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v36[-v7];
  v9 = sub_1000056EC(&qword_1000DEFC8, &qword_100096D48);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v36[-v11];
  v13 = sub_1000056EC(&qword_1000DEFD0, &unk_100096D50);
  __chkstk_darwin(v13);
  v15 = &v36[-v14];
  v16 = type metadata accessor for ActivityIconView(0);
  v17 = v16[5];
  v38 = v3;
  v18 = *(v3 + v17) * 0.25;
  v19 = (v8 + *(v6 + 44));
  v20 = *(type metadata accessor for RoundedRectangle() + 20);
  v21 = enum case for RoundedCornerStyle.continuous(_:);
  v22 = type metadata accessor for RoundedCornerStyle();
  v23 = v19 + v20;
  v24 = v37;
  (*(*(v22 - 8) + 104))(v23, v21, v22);
  *v19 = v18;
  v19[1] = v18;
  *(v19 + *(sub_1000056EC(&qword_1000DEFD8, &qword_10009C740) + 36)) = 256;
  *v8 = a1;
  v25 = 0;
  v26 = 1.0;
  if (v24)
  {
    v27 = 1.0;
  }

  else
  {
    v27 = 0.0;
  }

  sub_10001F170(v8, v12, &qword_1000DEFC0, &qword_100096D40);
  *&v12[*(v10 + 44)] = v27;
  if ((v24 & 1) == 0)
  {
    v26 = *(v38 + v16[9]);
  }

  static UnitPoint.center.getter();
  v29 = v28;
  v31 = v30;
  sub_10001F170(v12, v15, &qword_1000DEFC8, &qword_100096D48);
  v32 = &v15[*(v13 + 36)];
  *v32 = v26;
  v32[1] = v26;
  *(v32 + 2) = v29;
  *(v32 + 3) = v31;
  if ((v24 & 1) == 0)
  {
    v25 = *(v38 + v16[8]);
  }

  v33 = v39;
  sub_10001F170(v15, v39, &qword_1000DEFD0, &unk_100096D50);
  result = sub_1000056EC(&qword_1000DEFB0, &qword_100096D30);
  v35 = v33 + *(result + 36);
  *v35 = v25;
  *(v35 + 8) = 0;
  return result;
}

uint64_t sub_10004920C(char *a1)
{
  v36 = a1;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v2 - 8);
  v43 = v2;
  __chkstk_darwin(v2);
  v41 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v39 = *(v4 - 8);
  v40 = v4;
  __chkstk_darwin(v4);
  v38 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ActivityIconView(0);
  v37 = *(v6 - 1);
  v7 = *(v37 + 64);
  __chkstk_darwin(v6);
  v8 = type metadata accessor for DispatchTime();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v35 - v13;
  v15 = v1 + v6[12];
  v16 = *v15;
  v17 = *(v15 + 8);
  LOBYTE(aBlock) = v16;
  v45 = v17;
  sub_1000056EC(&qword_1000DAFC0, &qword_100092670);
  State.wrappedValue.getter();
  v18 = v50;
  v19 = *(type metadata accessor for ActivityIcon(0) + 20);
  v20 = *&v36[v19];
  if (v18 == 1)
  {
    if (v20)
    {
      v21 = *&v36[v19];
    }

    else
    {
      v21 = AnyView.init<A>(_:)();
    }

    v22 = v6[11];
  }

  else
  {
    if (v20)
    {
      v21 = *&v36[v19];
    }

    else
    {
      v21 = AnyView.init<A>(_:)();
    }

    v22 = v6[10];
  }

  v23 = (v1 + v22);
  v25 = *v23;
  v24 = v23[1];
  aBlock = v25;
  v45 = v24;
  v50 = v21;

  sub_1000056EC(&qword_1000DEFA8, &unk_100096D20);
  State.wrappedValue.setter();
  sub_10000FE40();
  v26 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v27 = *(v9 + 8);
  v35 = v8;
  v36 = v27;
  (v27)(v12, v8);
  sub_100049D7C(v1, &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v29 = swift_allocObject();
  sub_100049DE4(&v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28);
  v48 = sub_10004A084;
  v49 = v29;
  aBlock = _NSConcreteStackBlock;
  v45 = 1107296256;
  v46 = sub_100035630;
  v47 = &unk_1000CA210;
  v30 = _Block_copy(&aBlock);

  v31 = v38;
  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_10004A128();
  sub_1000056EC(&qword_1000D9FA8, &unk_100091780);
  sub_10000EE58(&qword_1000D9FB0, &qword_1000D9FA8, &unk_100091780, &protocol conformance descriptor for [A]);
  v32 = v41;
  v33 = v43;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v30);

  (*(v42 + 8))(v32, v33);
  (*(v39 + 8))(v31, v40);
  return (v36)(v14, v35);
}