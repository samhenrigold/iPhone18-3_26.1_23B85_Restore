unint64_t sub_100038F40()
{
  result = qword_10007F080;
  if (!qword_10007F080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F080);
  }

  return result;
}

unint64_t sub_100038F98()
{
  result = qword_10007F088;
  if (!qword_10007F088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F088);
  }

  return result;
}

unint64_t sub_100038FF0()
{
  result = qword_10007F090;
  if (!qword_10007F090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F090);
  }

  return result;
}

unint64_t sub_100039044()
{
  result = qword_10007F0A0;
  if (!qword_10007F0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F0A0);
  }

  return result;
}

unint64_t sub_100039098()
{
  result = qword_10007F0A8;
  if (!qword_10007F0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F0A8);
  }

  return result;
}

uint64_t sub_1000390EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100039134(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DelayedNotificationTimetableFactoryConfiguration.Window.DaysOfWeek.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DelayedNotificationTimetableFactoryConfiguration.Window.DaysOfWeek.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000392D4()
{
  result = qword_10007F0B0;
  if (!qword_10007F0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F0B0);
  }

  return result;
}

unint64_t sub_10003932C()
{
  result = qword_10007F0B8;
  if (!qword_10007F0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F0B8);
  }

  return result;
}

unint64_t sub_100039384()
{
  result = qword_10007F0C0;
  if (!qword_10007F0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F0C0);
  }

  return result;
}

uint64_t sub_1000393F4()
{
  v1[2] = v0;
  v2 = type metadata accessor for Date();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000394C0, 0, 0);
}

uint64_t sub_1000394C0()
{
  v1 = [objc_msgSend(*(v0[2] + OBJC_IVAR___NDScoredNotificationPool_context) "news:"configuration" core:?ConfigurationManager")];
  result = swift_unknownObjectRelease();
  if (v1)
  {
    if ([v1 respondsToSelector:"notificationPoolMaxAge"])
    {
      [v1 notificationPoolMaxAge];
    }

    swift_unknownObjectRelease();
    v3 = v0[5];
    v4 = v0[3];
    v5 = v0[4];
    Date.init()();
    static Date.- infix(_:_:)();
    v6 = *(v5 + 8);
    v0[7] = v6;
    v0[8] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v6(v3, v4);
    v7 = swift_task_alloc();
    v0[9] = v7;
    *v7 = v0;
    v7[1] = sub_10003964C;
    v8 = v0[6];

    return sub_10003A314(v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10003964C()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1000397E0;
  }

  else
  {
    v2 = sub_100039760;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100039760()
{
  (*(v0 + 56))(*(v0 + 48), *(v0 + 24));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000397E0()
{
  (*(v0 + 56))(*(v0 + 48), *(v0 + 24));

  v1 = *(v0 + 8);

  return v1();
}

void sub_100039860(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_1000398EC(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3)
{
  v18[1] = a3;
  v19 = a2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v18 - v9;
  v11 = sub_100039D94();
  URL.appendingPathComponent(_:)();
  v12 = type metadata accessor for PoolAccessHandle();
  v13 = swift_allocObject();
  *(v13 + 32) = 0;
  *(v13 + 16) = v11;
  sub_100025E70(0, &qword_10007F2F0, NSFileHandle_ptr);
  (*(v5 + 16))(v8, v10, v4);
  v14 = v11;
  v15 = sub_10003F02C(v8);
  if (v3)
  {

    (*(v5 + 8))(v10, v4);
    v16 = 0;
  }

  else
  {
    v16 = v15;
    (*(v5 + 8))(v10, v4);
  }

  *(v13 + 24) = v16;
  v20[3] = v12;
  v20[4] = sub_100044B88(&qword_10007F258, type metadata accessor for PoolAccessHandle, &unk_10005BC08);
  v20[0] = v13;

  v19(&v21, v20);
  sub_10001653C(v20);
  *(v13 + 32) = 1;

  return v21;
}

uint64_t sub_100039B54@<X0>(void (*a1)(void *)@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v17[1] = a3;
  v17[2] = a2;
  v19 = a1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v17 - v9;
  v11 = sub_100039D94();
  URL.appendingPathComponent(_:)();
  v12 = type metadata accessor for PoolAccessHandle();
  v13 = swift_allocObject();
  *(v13 + 32) = 0;
  *(v13 + 16) = v11;
  sub_100025E70(0, &qword_10007F2F0, NSFileHandle_ptr);
  (*(v5 + 16))(v8, v10, v4);
  v14 = sub_10003F02C(v8);
  if (v3)
  {

    v15 = 0;
  }

  else
  {
    v15 = v14;
  }

  (*(v5 + 8))(v10, v4);
  *(v13 + 24) = v15;
  v18[3] = v12;
  v18[4] = sub_100044B88(&qword_10007F258, type metadata accessor for PoolAccessHandle, &unk_10005BC08);
  v18[0] = v13;

  v19(v18);
  sub_10001653C(v18);
  *(v13 + 32) = 1;
}

id sub_100039D94()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v0 + OBJC_IVAR___NDScoredNotificationPool_accessQueue);
  *v8 = v9;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v8, v5);
  if (v9)
  {
    v12 = OBJC_IVAR___NDScoredNotificationPool__index;
    v13 = *(v0 + OBJC_IVAR___NDScoredNotificationPool__index);
    if (v13)
    {
      v14 = *(v0 + OBJC_IVAR___NDScoredNotificationPool__index);
LABEL_8:
      v23 = v13;
      return v14;
    }

    v15 = sub_10003EB1C(v0);
    if (v15)
    {
      v16 = *(v0 + v12);
      *(v0 + v12) = v15;
      v14 = v15;

      goto LABEL_8;
    }

    v17 = v0;
    result = [objc_allocWithZone(NTPBNotificationPoolIndex) init];
    if (result)
    {
      v18 = result;
      static Date.distantPast.getter();
      isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v2 + 8))(v4, v1);
      v20 = [(objc_class *)isa pbDate];

      [v18 setCreationDate:v20];
      sub_100025E70(0, &qword_10007F2E8, NSMutableArray_ptr);
      v21 = NSArray.init(arrayLiteral:)();
      [v18 setEntries:v21];

      v22 = *(v17 + v12);
      *(v17 + v12) = v18;
      v14 = v18;

      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10003A04C(void *a1, void (*a2)(double))
{
  v3 = sub_100002288(a1, a1[3]);
  __chkstk_darwin(v3);
  (*(v5 + 16))(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_10002377C(v12);
  dispatch thunk of Sequence.makeIterator()();
  sub_100017518(v12, AssociatedTypeWitness);
  dispatch thunk of IteratorProtocol.next()();
  v6 = v10;
  if (v10)
  {
    v7 = v11;
    do
    {
      LOBYTE(v10) = 0;
      v8 = v6;
      a2(v7);

      if (v10)
      {
        break;
      }

      sub_100017518(v12, AssociatedTypeWitness);
      dispatch thunk of IteratorProtocol.next()();
      v6 = v10;
      v7 = v11;
    }

    while (v10);
  }

  return sub_10001653C(v12);
}

uint64_t sub_10003A314(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Date();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v2[9] = v5;
  v2[10] = *(v5 - 8);
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_10003A444, 0, 0);
}

uint64_t sub_10003A444()
{
  v47 = v0;
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  v5 = FCGenerateOperationID();
  v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  static Logger.notifications.getter();
  v43 = *(v3 + 16);
  v43(v1, v4, v2);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  v42 = v9;
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 80);
  v12 = *(v0 + 88);
  v13 = *(v0 + 64);
  v14 = *(v0 + 72);
  v15 = *(v0 + 32);
  v16 = *(v0 + 40);
  if (v10)
  {
    v17 = swift_slowAlloc();
    v46[0] = swift_slowAlloc();
    *v17 = 136446466;
    sub_100044B88(&qword_10007E300, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v40 = v14;
    v41 = v12;
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    (*(v16 + 8))(v13, v15);
    v21 = sub_100021F24(v18, v20, v46);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2082;
    *(v17 + 14) = sub_100021F24(v44, v7, v46);
    _os_log_impl(&_mh_execute_header, v8, v42, "will refresh notification pool if older than date=%{public}s, instance=%{public}s", v17, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v41, v40);
  }

  else
  {

    (*(v16 + 8))(v13, v15);
    (*(v11 + 8))(v12, v14);
  }

  v22 = v7;
  v23 = v44;
  v25 = *(v0 + 16);
  v24 = *(v0 + 24);
  v26 = swift_task_alloc();
  v26[2] = v24;
  v26[3] = v25;
  v26[4] = v44;
  v26[5] = v22;
  OS_dispatch_queue.sync<A>(execute:)();

  if (*(v0 + 128) == 1)
  {
    v27 = *(v0 + 48);
    v28 = *(v0 + 56);
    v29 = *(v0 + 32);
    v30 = *(v0 + 40);
    v31 = *(v0 + 24);
    v45 = *&v31[OBJC_IVAR___NDScoredNotificationPool_refreshSerialQueue];
    v43(v28, *(v0 + 16), v29);
    v32 = (*(v30 + 80) + 24) & ~*(v30 + 80);
    v33 = swift_allocObject();
    *(v0 + 96) = v33;
    *(v33 + 16) = v31;
    (*(v30 + 32))(v33 + v32, v28, v29);
    v34 = (v33 + ((v27 + v32 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v34 = v23;
    v34[1] = v22;
    v35 = v31;
    v36 = swift_task_alloc();
    *(v0 + 104) = v36;
    v36[2] = v45;
    v36[3] = &unk_10005BCC8;
    v36[4] = v33;
    v37 = swift_task_alloc();
    *(v0 + 112) = v37;
    *v37 = v0;
    v37[1] = sub_10003A900;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v37, 0, 0, 0x2865747563657865, 0xEB00000000293A5FLL, sub_1000448E4, v36, &type metadata for () + 8);
  }

  else
  {

    v38 = *(v0 + 8);

    return v38();
  }
}

uint64_t sub_10003A900()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_10003AA9C;
  }

  else
  {

    v2 = sub_10003AA1C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10003AA1C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003AA9C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003ACA4(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_10003AD4C;

  return sub_1000393F4();
}

uint64_t sub_10003AD4C()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

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
  v9 = *(v6 + 8);

  return v9();
}

void sub_10003AED0(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, char *a5@<X8>)
{
  v94 = a4;
  v88 = a3;
  v90 = a2;
  v93 = a5;
  v6 = type metadata accessor for Logger();
  v91 = *(v6 - 8);
  v92 = v6;
  v7 = __chkstk_darwin(v6);
  v89 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v87 = &v84 - v10;
  __chkstk_darwin(v9);
  v86 = &v84 - v11;
  v12 = sub_100015140(&qword_10007E790, &qword_10005BD10);
  __chkstk_darwin(v12 - 8);
  v14 = &v84 - v13;
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v85 = &v84 - v21;
  v22 = __chkstk_darwin(v20);
  v84 = &v84 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = &v84 - v25;
  __chkstk_darwin(v24);
  v28 = &v84 - v27;
  v29 = sub_100039D94();
  v30 = [v29 creationDate];

  if (v30)
  {
    v31 = [v30 nsDate];

    if (v31)
    {
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v32 = *(v16 + 32);
      v33 = v26;
      v34 = v16;
      v32(v14, v33, v15);
      (*(v16 + 56))(v14, 0, 1, v15);
      v32(v28, v14, v15);
    }

    else
    {
      v34 = v16;
      (*(v16 + 56))(v14, 1, 1, v15);
      static Date.distantPast.getter();
      if ((*(v16 + 48))(v14, 1, v15) != 1)
      {
        sub_100022E54(v14, &qword_10007E790, &qword_10005BD10);
      }
    }

    sub_100044B88(&qword_10007F2E0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    if (dispatch thunk of static Comparable.< infix(_:_:)())
    {
      v35 = v89;
      static Logger.notifications.getter();
      (*(v34 + 16))(v19, v28, v15);

      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        *v38 = 136446466;
        sub_100044B88(&qword_10007E300, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v39 = dispatch thunk of CustomStringConvertible.description.getter();
        v90 = v28;
        v40 = v34;
        v42 = v41;
        v43 = *(v40 + 8);
        v43(v19, v15);
        v44 = sub_100021F24(v39, v42, &v95);

        *(v38 + 4) = v44;
        *(v38 + 12) = 2082;
        *(v38 + 14) = sub_100021F24(v88, v94, &v95);
        _os_log_impl(&_mh_execute_header, v36, v37, "need to refresh notification pool due to age, lastRefresh=%{public}s, instance=%{public}s", v38, 0x16u);
        swift_arrayDestroy();

        (*(v91 + 8))(v89, v92);
        v43(v90, v15);
      }

      else
      {

        v66 = *(v34 + 8);
        v66(v19, v15);
        (*(v91 + 8))(v35, v92);
        v66(v28, v15);
      }
    }

    else
    {
      v45 = v28;
      v46 = [*(a1 + OBJC_IVAR___NDScoredNotificationPool_contentVariantProvider) preferredContentVariant];
      v47 = sub_100039D94();
      v48 = [v47 isPaidVariant];

      v49 = v16;
      v50 = (v16 + 16);
      if ((((v46 == 1) ^ v48) & 1) == 0)
      {
        v67 = v86;
        static Logger.notifications.getter();
        v68 = v84;
        v69 = v45;
        (*v50)(v84, v45, v15);
        v70 = v94;

        v71 = Logger.logObject.getter();
        v72 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          v90 = v69;
          v74 = v73;
          v89 = swift_slowAlloc();
          v95 = v89;
          *v74 = 136446466;
          sub_100044B88(&qword_10007E300, &type metadata accessor for Date, &protocol conformance descriptor for Date);
          v75 = dispatch thunk of CustomStringConvertible.description.getter();
          v76 = v49;
          v78 = v77;
          v79 = *(v76 + 8);
          v79(v68, v15);
          v80 = sub_100021F24(v75, v78, &v95);

          *(v74 + 4) = v80;
          *(v74 + 12) = 2082;
          *(v74 + 14) = sub_100021F24(v88, v70, &v95);
          _os_log_impl(&_mh_execute_header, v71, v72, "no need to refresh notification pool, lastRefresh=%{public}s, instance=%{public}s", v74, 0x16u);
          swift_arrayDestroy();

          (*(v91 + 8))(v86, v92);
          v79(v90, v15);
        }

        else
        {

          v83 = *(v49 + 8);
          v83(v68, v15);
          (*(v91 + 8))(v67, v92);
          v83(v69, v15);
        }

        v81 = 0;
        goto LABEL_18;
      }

      v51 = v87;
      static Logger.notifications.getter();
      v52 = *v50;
      v53 = v85;
      v90 = v45;
      v52(v85, v45, v15);
      v54 = v94;

      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = v46 == 1;
        v58 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v95 = v89;
        *v58 = 67240706;
        *(v58 + 4) = v57;
        *(v58 + 8) = 2082;
        sub_100044B88(&qword_10007E300, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v59 = dispatch thunk of CustomStringConvertible.description.getter();
        v60 = v54;
        v61 = v49;
        v63 = v62;
        v64 = *(v61 + 8);
        v64(v53, v15);
        v65 = sub_100021F24(v59, v63, &v95);

        *(v58 + 10) = v65;
        *(v58 + 18) = 2082;
        *(v58 + 20) = sub_100021F24(v88, v60, &v95);
        _os_log_impl(&_mh_execute_header, v55, v56, "need to refresh notification pool due to content variant change, preferPaid=%{BOOL,public}d, lastRefresh=%{public}s, instance=%{public}s", v58, 0x1Cu);
        swift_arrayDestroy();

        (*(v91 + 8))(v87, v92);
        v64(v90, v15);
      }

      else
      {

        v82 = *(v49 + 8);
        v82(v53, v15);
        (*(v91 + 8))(v51, v92);
        v82(v90, v15);
      }
    }

    v81 = 1;
LABEL_18:
    *v93 = v81;
    return;
  }

  __break(1u);
}

uint64_t sub_10003B97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_10003B9A0, 0, 0);
}

uint64_t sub_10003B9A0()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v3 + 16) = *(v0 + 16);
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  OS_dispatch_queue.sync<A>(execute:)();

  if (*(v0 + 56) == 1)
  {
    v4 = swift_task_alloc();
    *(v0 + 48) = v4;
    *v4 = v0;
    v4[1] = sub_10003BAF0;
    v6 = *(v0 + 32);
    v5 = *(v0 + 40);

    return sub_10003BBE4(v6, v5);
  }

  else
  {
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_10003BAF0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10003BBE4(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = type metadata accessor for URL();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();

  return _swift_task_switch(sub_10003BD48, 0, 0);
}

uint64_t sub_10003BD48(uint64_t a1)
{
  Date.init()();
  v2 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(OBJC_IVAR___NDScoredNotificationPool_cacheDirectory);
  v4 = v3;
  v1[2] = 0;
  v5 = [v2 URLForDirectory:99 inDomain:1 appropriateForURL:v3 create:1 error:v1 + 2];

  v6 = v1[2];
  if (v5)
  {
    v7 = v1[9];
    v8 = v1[8];
    v9 = v1[4];
    v28 = v1[5];
    v29 = v1[13];
    v10 = v1[3];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v6;

    v12._countAndFlagsBits = 0x7865646E692DLL;
    v12._object = 0xE600000000000000;
    String.append(_:)(v12);
    URL.appendingPathComponent(_:)();

    v13._countAndFlagsBits = 0x736D6574692DLL;
    v13._object = 0xE600000000000000;
    String.append(_:)(v13);
    URL.appendingPathComponent(_:)();

    v14 = objc_allocWithZone(FCPBMessageStreamWriter);
    URL._bridgeToObjectiveC()(v15);
    v17 = v16;
    v18 = [v14 initWithURL:v16];
    v1[14] = v18;

    v19 = swift_allocObject();
    v1[15] = v19;
    *(v19 + 16) = &_swiftEmptyDictionarySingleton;
    v20 = swift_allocObject();
    v1[16] = v20;
    *(v20 + 16) = _swiftEmptyArrayStorage;
    v21 = swift_allocObject();
    v1[17] = v21;
    v21[2] = v19;
    v21[3] = v18;
    v21[4] = v20;
    v22 = swift_task_alloc();
    v1[18] = v22;
    v22[2] = v28;
    v22[3] = sub_1000448F0;
    v22[4] = v21;
    v22[5] = v10;
    v22[6] = v9;
    v22[7] = v18;
    v22[8] = v20;
    v22[9] = v19;
    v22[10] = v29;
    v22[11] = v7;
    v22[12] = v8;

    v23 = v18;

    v24 = swift_task_alloc();
    v1[19] = v24;
    *v24 = v1;
    v24[1] = sub_10003C15C;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v24, 0, 0, 0xD000000000000021, 0x800000010005EDC0, sub_1000448FC, v22, &type metadata for () + 8);
  }

  else
  {
    v25 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v1[12] + 8))(v1[13], v1[11]);

    v26 = v1[1];

    return v26();
  }
}

uint64_t sub_10003C15C()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_10003C410;
  }

  else
  {
    v2 = sub_10003C2BC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10003C2BC()
{
  v1 = v0[14];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[10];
  v12 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
  v8 = v0[6];
  v7 = v0[7];

  v9 = *(v7 + 8);
  v9(v4, v8);

  v9(v6, v8);
  v9(v5, v8);
  (*(v3 + 8))(v2, v12);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10003C410()
{
  v1 = v0[14];
  v3 = v0[9];
  v2 = v0[10];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[6];

  v7 = *(v5 + 8);
  v7(v2, v6);

  v7(v4, v6);
  v7(v3, v6);
  (*(v0[12] + 8))(v0[13], v0[11]);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10003C6EC(uint64_t a1, const void *a2, void *a3)
{
  v3[2] = a3;
  v6 = type metadata accessor for Date();
  v3[3] = v6;
  v3[4] = *(v6 - 8);
  v7 = swift_task_alloc();
  v3[5] = v7;
  v3[6] = _Block_copy(a2);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  a3;
  v8 = swift_task_alloc();
  v3[7] = v8;
  *v8 = v3;
  v8[1] = sub_10003C818;

  return sub_10003A314(v7);
}

uint64_t sub_10003C818()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 24);
  v8 = *(*v1 + 16);
  v9 = *v1;

  (*(v6 + 8))(v5, v7);

  v10 = *(v3 + 48);
  if (v2)
  {
    v11 = _convertErrorToNSError(_:)();

    (*(v10 + 16))(v10, v11);
  }

  else
  {
    (*(v10 + 16))(*(v3 + 48), 0);
  }

  _Block_release(*(v4 + 48));

  v12 = *(v9 + 8);

  return v12();
}

id sub_10003CA00(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  result = [a1 identifier];
  if (result)
  {
    v9 = result;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = [a3 writeMessage:a1];
    v15 = v14;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(a2 + 16);
    *(a2 + 16) = 0x8000000000000000;
    sub_100041DE4(v13, v15, v10, v12, isUniquelyReferenced_nonNull_native);

    *(a2 + 16) = v18;
    swift_endAccess();
    swift_beginAccess();
    v17 = a1;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10003CB6C(uint64_t a1, char *a2, void (**a3)(uint64_t a1, void *a2), uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v66 = a7;
  v67 = a8;
  v74 = a6;
  v64 = a5;
  v57 = a3;
  v59 = a1;
  v62 = a11;
  v63 = a12;
  v65 = a9;
  v61 = a10;
  v72 = type metadata accessor for URL();
  v70 = *(v72 - 8);
  v14 = v70[8];
  v15 = __chkstk_darwin(v72);
  v73 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v71 = &v52 - v16;
  v17 = type metadata accessor for Date();
  v68 = *(v17 - 8);
  v69 = v17;
  v56 = *(v68 + 64);
  __chkstk_darwin(v17);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v19;
  v20 = sub_100015140(&unk_10007F290, &qword_10005A838);
  v53 = v20;
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v52 - v23;
  v54 = &v52 - v23;
  v58 = a2;
  v25 = [objc_allocWithZone(FCNotificationPoolOperation) initWithContext:*&a2[OBJC_IVAR___NDScoredNotificationPool_context] contentVariantProvider:*&a2[OBJC_IVAR___NDScoredNotificationPool_contentVariantProvider]];
  v60 = v25;
  v79 = v57;
  v80 = a4;
  aBlock = _NSConcreteStackBlock;
  v76 = 1107296256;
  v57 = &v77;
  v77 = sub_1000213F4;
  v78 = &unk_100073C60;
  v26 = _Block_copy(&aBlock);

  [v25 setItemHandler:v26];
  _Block_release(v26);
  (*(v21 + 16))(v24, v59, v20);
  v27 = v68;
  (*(v68 + 16))(v19, v61, v69);
  v28 = v70;
  v29 = v70[2];
  v30 = v72;
  v29(v71, v62, v72);
  v29(v73, v63, v30);
  v31 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v32 = (v22 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
  v35 = (*(v27 + 80) + v34 + 8) & ~*(v27 + 80);
  v36 = (v56 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = *(v28 + 80);
  v38 = (v37 + v36 + 8) & ~v37;
  v39 = (v14 + v37 + v38) & ~v37;
  v40 = swift_allocObject();
  v41 = v74;
  *(v40 + 16) = v64;
  *(v40 + 24) = v41;
  (*(v21 + 32))(v40 + v31, v54, v53);
  v43 = v66;
  v42 = v67;
  *(v40 + v32) = v66;
  *(v40 + v33) = v42;
  *(v40 + v34) = v65;
  (*(v68 + 32))(v40 + v35, v55, v69);
  v44 = v58;
  *(v40 + v36) = v58;
  v45 = v70[4];
  v46 = v40 + v38;
  v47 = v72;
  v45(v46, v71, v72);
  v45(v40 + v39, v73, v47);
  v79 = sub_100044954;
  v80 = v40;
  aBlock = _NSConcreteStackBlock;
  v76 = 1107296256;
  v77 = sub_100039860;
  v78 = &unk_100073CB0;
  v48 = _Block_copy(&aBlock);

  v49 = v43;

  v50 = v44;

  v51 = v60;
  [v60 setCompletionHandler:v48];
  _Block_release(v48);
  [v51 start];
}

void sub_10003D108(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v105 = a4;
  v106 = type metadata accessor for Logger();
  v18 = *(v106 - 8);
  v19 = __chkstk_darwin(v106);
  v21 = &v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  __chkstk_darwin(v22);
  v25 = &v92 - v24;
  if (a1)
  {
    v104 = a2;
    swift_errorRetain();
    static Logger.notifications.getter();
    swift_errorRetain();

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = a3;
      v31 = swift_slowAlloc();
      v110[0] = v31;
      *v28 = 138543618;
      swift_errorRetain();
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 4) = v32;
      *v29 = v32;
      *(v28 + 12) = 2082;
      *(v28 + 14) = sub_100021F24(v104, v30, v110);
      _os_log_impl(&_mh_execute_header, v26, v27, "failed to refresh notification pool, error=%{public}@, instance=%{public}s", v28, 0x16u);
      sub_100022E54(v29, &qword_10007E768, &qword_10005BCE0);

      sub_10001653C(v31);
    }

    (*(v18 + 8))(v25, v106);
    v110[0] = a1;
    sub_100015140(&unk_10007F290, &qword_10005A838);
    goto LABEL_32;
  }

  v102 = a8;
  v103 = v18;
  v99 = v23;
  v110[0] = 0;
  v33 = [a5 close:v110];
  v34 = v110[0];
  if ((v33 & 1) == 0)
  {
    v38 = v110[0];
    v37 = _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_29;
  }

  v98 = v21;
  type metadata accessor for ProxyScoringServiceConnection();
  v35 = v34;
  v36 = static ProxyScoringServiceConnection.shared.getter();
  __chkstk_darwin(v36);
  *(&v92 - 2) = a6 + 16;
  sub_100015140(&unk_10007F2A0, &qword_10005BCE8);
  ProxyScoringServiceConnection.withSyncScoringService<A>(_:)();
  v37 = 0;
  v104 = a2;
  v95 = a3;
  v93 = a11;
  v94 = a10;
  v96 = a9;

  v100 = v110[0];
  swift_beginAccess();
  v39 = *(a7 + 16);
  v40 = _swiftEmptyArrayStorage;
  v108[0] = _swiftEmptyArrayStorage;
  v41 = v39 + 64;
  v42 = 1 << *(v39 + 32);
  v43 = -1;
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  v44 = v43 & *(v39 + 64);
  v45 = (v42 + 63) >> 6;
  v101 = v39;
  swift_bridgeObjectRetain_n();
  v46 = 0;
  v92 = a7;
  v97 = 0;
  if (v44)
  {
LABEL_15:
    while (1)
    {
      v48 = (v46 << 10) | (16 * __clz(__rbit64(v44)));
      v49 = (*(v101 + 48) + v48);
      v51 = *v49;
      v50 = v49[1];
      v52 = (*(v101 + 56) + v48);
      v53 = *v52;
      v54 = v52[1];
      v55 = objc_allocWithZone(NTPBNotificationPoolIndexEntry);

      v56 = [v55 init];
      if (!v56)
      {
        break;
      }

      if (v53 < 0)
      {
        goto LABEL_38;
      }

      v57 = v56;
      [v56 setItemOffset:v53];
      if (v54 < 0)
      {
        goto LABEL_39;
      }

      [v57 setItemLength:v54];
      v58 = v100;
      v59 = 0.0;
      if (v100[2])
      {
        v60 = sub_100040750(v51, v50);
        if (v61)
        {
          v59 = *(v58[7] + 8 * v60);
        }
      }

      [v57 setScore:{v59, v92}];
      v62 = v57;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v108[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v44 &= v44 - 1;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v40 = v108[0];

      v37 = v97;
      if (!v44)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  while (1)
  {
LABEL_11:
    v47 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
    }

    if (v47 >= v45)
    {
      break;
    }

    v44 = *(v41 + 8 * v47);
    ++v46;
    if (v44)
    {
      v46 = v47;
      goto LABEL_15;
    }
  }

  v107 = v40;
  sub_10003E0F0(&v107);
  v63 = [objc_allocWithZone(NTPBNotificationPoolIndex) init];
  if (!v63)
  {
    goto LABEL_41;
  }

  v64 = v63;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v66 = [(objc_class *)isa pbDate];

  [v64 setCreationDate:v66];
  [v64 setIsPaidVariant:{objc_msgSend(*(v96 + OBJC_IVAR___NDScoredNotificationPool_contentVariantProvider), "preferredContentVariant") == 1}];
  sub_10003E168(v107);
  v67 = objc_allocWithZone(NSMutableArray);
  v68 = Array._bridgeToObjectiveC()().super.isa;

  v69 = [v67 initWithArray:v68];

  [v64 setEntries:v69];
  v70 = [v64 data];
  a3 = v95;
  a2 = v104;
  if (!v70)
  {
LABEL_42:
    __break(1u);
    return;
  }

  v71 = v70;

  v72 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v74 = v73;

  v75 = v94;
  Data.write(to:options:)();
  if (v37)
  {
    sub_1000153DC(v72, v74);

    v21 = v98;
LABEL_29:
    static Logger.notifications.getter();

    swift_errorRetain();
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = a3;
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v108[0] = v81;
      *v78 = 138543618;
      swift_errorRetain();
      v82 = _swift_stdlib_bridgeErrorToNSError();
      *(v78 + 4) = v82;
      *v80 = v82;
      *(v78 + 12) = 2082;
      *(v78 + 14) = sub_100021F24(a2, v79, v108);
      _os_log_impl(&_mh_execute_header, v76, v77, "failed to persist notification pool, error=%{public}@, instance=%{public}s", v78, 0x16u);
      sub_100022E54(v80, &qword_10007E768, &qword_10005BCE0);

      sub_10001653C(v81);
    }

    (*(v103 + 8))(v21, v106);
    v108[0] = v37;
    sub_100015140(&unk_10007F290, &qword_10005A838);
LABEL_32:
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v83 = sub_1000153DC(v72, v74);
    __chkstk_darwin(v83);
    *(&v92 - 4) = v84;
    *(&v92 - 3) = v75;
    *(&v92 - 2) = v93;
    *(&v92 - 1) = v64;
    OS_dispatch_queue.sync<A>(execute:)();
    v85 = v106;
    v86 = v99;
    static Logger.notifications.getter();

    v87 = v92;

    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v109 = v91;
      *v90 = 134349314;
      swift_beginAccess();
      *(v90 + 4) = *(*(v87 + 16) + 16);

      *(v90 + 12) = 2082;
      *(v90 + 14) = sub_100021F24(a2, a3, &v109);
      _os_log_impl(&_mh_execute_header, v88, v89, "successfully refreshed notification pool, items=%{public}ld, instance=%{public}s", v90, 0x16u);
      sub_10001653C(v91);
    }

    else
    {
    }

    (*(v103 + 8))(v86, v85);
    sub_100015140(&unk_10007F290, &qword_10005A838);
    CheckedContinuation.resume(returning:)();
  }
}

void sub_10003DC24(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  swift_beginAccess();
  sub_100025E70(0, &qword_10007EE28, NTPBNotificationItem_ptr);

  isa = Array._bridgeToObjectiveC()().super.isa;

  type metadata accessor for NDScoringServiceEnvironment();
  v9 = static NDScoringServiceEnvironment.news.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_100044B48;
  *(v10 + 24) = v7;
  aBlock[4] = sub_100044B80;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10003E03C;
  aBlock[3] = &unk_100073D28;
  v11 = _Block_copy(aBlock);

  [a1 scoreNotificationItems:isa environment:v9 completion:v11];
  _Block_release(v11);
}

uint64_t sub_10003DDB8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  if (a1)
  {
    v4 = a2;
    v5 = sub_10003DE20(a1);
    a2 = v4;
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  a3(v6, a2);
}

void *sub_10003DE20(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100015140(&qword_10007F2C8, &qword_10005BD00);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    v9 = 0;
LABEL_11:
    v10 = *(*(a1 + 56) + 8 * (__clz(__rbit64(v5)) | (v9 << 6)));

    v11 = v10;
    static Double._conditionallyBridgeFromObjectiveC(_:result:)();

    return 0;
  }

  else
  {
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v6)
      {

        return v2;
      }

      v5 = *(a1 + 64 + 8 * v9);
      ++v8;
      if (v5)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    __break(1u);
    __break(1u);
  }

  return result;
}

uint64_t sub_10003E03C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_100025E70(0, &qword_10007F2C0, NSNumber_ptr);
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

void sub_10003E0F0(unint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_10004417C(v2);
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v4[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v4[1] = v3;
  sub_100043160(v4);
  *a1 = v2;
}

char *sub_10003E168(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = _swiftEmptyArrayStorage;
  result = sub_1000429F8(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        sub_100025E70(0, &qword_10007F280, NTPBNotificationPoolIndexEntry_ptr);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_1000429F8((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_10002A3E4(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_100025E70(0, &qword_10007F280, NTPBNotificationPoolIndexEntry_ptr);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_1000429F8((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_10002A3E4(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_10003E364(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v13 = _swiftEmptyArrayStorage;
    sub_100042A58(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v13 = v2;
      v8 = v2[2];
      v7 = v2[3];

      if (v8 >= v7 >> 1)
      {
        sub_100042A58((v7 > 1), v8 + 1, 1);
        v2 = v13;
      }

      v11 = &type metadata for String;
      v12 = &protocol witness table for String;
      *&v10 = v6;
      *(&v10 + 1) = v5;
      v2[2] = v8 + 1;
      sub_10000390C(&v10, &v2[5 * v8 + 4]);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_10003E460(uint64_t a1)
{
  v2 = sub_100015140(&qword_10007F310, qword_10005BD58);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v13 - v4;
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v14 = _swiftEmptyArrayStorage;
    sub_100042A18(0, v6, 0);
    v7 = v14;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_1000035EC(v8, v5);
      sub_100015140(&qword_10007F318, &qword_10005BD98);
      swift_dynamicCast();
      v14 = v7;
      v11 = v7[2];
      v10 = v7[3];
      if (v11 >= v10 >> 1)
      {
        sub_100042A18((v10 > 1), v11 + 1, 1);
        v7 = v14;
      }

      v7[2] = v11 + 1;
      sub_10000390C(v13, &v7[5 * v11 + 4]);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

id sub_10003E604(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v58 = a4;
  v60 = a3;
  v64 = a2;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = "v16@?0@NTPBNotificationItem8";
  URL.appendingPathComponent(_:)();
  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  v12 = *(v6 + 8);
  v63 = v5;
  v12(v8, v5);
  v13 = String._bridgeToObjectiveC()();
  [v11 setUInt16XAttr:0 withName:v13];

  v62 = "otification_pool_version";
  URL.appendingPathComponent(_:)();
  URL._bridgeToObjectiveC()(v14);
  v16 = v15;
  v12(v8, v5);
  v57 = "notification_pool_index";
  v17 = String._bridgeToObjectiveC()();
  [v16 setUInt16XAttr:0 withName:v17];

  v18 = *(a1 + OBJC_IVAR___NDScoredNotificationPool__index);
  v56 = OBJC_IVAR___NDScoredNotificationPool__index;
  *(a1 + OBJC_IVAR___NDScoredNotificationPool__index) = 0;

  v59 = objc_opt_self();
  v19 = [v59 defaultManager];
  v20 = v63;
  v61 = a1;
  URL.appendingPathComponent(_:)();
  URL._bridgeToObjectiveC()(v21);
  v23 = v22;
  v24 = v20;
  v65 = v6 + 8;
  v66 = v12;
  v12(v8, v20);
  URL._bridgeToObjectiveC()(v25);
  v27 = v26;
  v68 = 0;
  v28 = [v19 replaceItemAtURL:v23 withItemAtURL:v26 backupItemName:0 options:0 resultingItemURL:0 error:&v68];

  v29 = v68;
  if (v28 && (v30 = v68, v31 = [v59 defaultManager], v32 = v61, URL.appendingPathComponent(_:)(), URL._bridgeToObjectiveC()(v33), v35 = v34, v66(v8, v24), URL._bridgeToObjectiveC()(v36), v38 = v37, v68 = 0, v39 = objc_msgSend(v31, "replaceItemAtURL:withItemAtURL:backupItemName:options:resultingItemURL:error:", v35, v37, 0, 0, 0, &v68), v31, v35, v38, v29 = v68, v39))
  {
    v40 = v24;
    v41 = v68;
    URL.appendingPathComponent(_:)();
    URL._bridgeToObjectiveC()(v42);
    v44 = v43;
    v66(v8, v24);
    if (qword_10007DFF0 != -1)
    {
      swift_once();
    }

    v45 = word_1000817C0;
    v46 = String._bridgeToObjectiveC()();
    [v44 setUInt16XAttr:v45 withName:v46];

    URL.appendingPathComponent(_:)();
    URL._bridgeToObjectiveC()(v47);
    v49 = v48;
    v66(v8, v40);
    v50 = String._bridgeToObjectiveC()();
    [v49 setUInt16XAttr:v45 withName:v50];

    v51 = *(v32 + v56);
    v52 = v58;
    *(v32 + v56) = v58;

    return v52;
  }

  else
  {
    v54 = v29;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

id sub_10003EB1C(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v27 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = v26 - v6;
  v26[0] = "v16@?0@NTPBNotificationItem8";
  URL.appendingPathComponent(_:)();
  URL._bridgeToObjectiveC()(v8);
  v10 = v9;
  v11 = *(v3 + 8);
  v11(v7, v2);
  v12 = String._bridgeToObjectiveC()();
  v13 = [v10 getUInt16XAttrWithName:v12];

  v26[1] = a1;
  URL.appendingPathComponent(_:)();
  URL._bridgeToObjectiveC()(v14);
  v16 = v15;
  v11(v7, v2);
  v17 = String._bridgeToObjectiveC()();
  LODWORD(v12) = [v16 getUInt16XAttrWithName:v17];

  if (v13 != v12)
  {
    return 0;
  }

  if (qword_10007DFF0 != -1)
  {
    swift_once();
  }

  if (v13 != word_1000817C0)
  {
    return 0;
  }

  v18 = v27;
  URL.appendingPathComponent(_:)();
  v19 = Data.init(contentsOf:options:)();
  v21 = v20;
  v11(v18, v2);
  v22 = objc_allocWithZone(NTPBNotificationPoolIndex);
  sub_100015334(v19, v21);
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_1000153DC(v19, v21);
  v24 = [v22 initWithData:isa];

  sub_1000153DC(v19, v21);
  return v24;
}

uint64_t type metadata accessor for ScoredNotificationPool(uint64_t a1)
{
  result = qword_10007F128;
  if (!qword_10007F128)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10003EF78(uint64_t a1)
{
  result = type metadata accessor for URL();
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

id sub_10003F02C(uint64_t a1)
{
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v3 = v2;
  v12 = 0;
  v4 = [swift_getObjCClassFromMetadata() fileHandleForReadingFromURL:v2 error:&v12];

  v5 = v12;
  if (v4)
  {
    v6 = type metadata accessor for URL();
    v7 = *(*(v6 - 8) + 8);
    v8 = v5;
    v7(a1, v6);
  }

  else
  {
    v9 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 8))(a1, v10);
  }

  return v4;
}

id sub_10003F184(uint64_t a1)
{
  v2 = *(v1 + 24);
  if (v2)
  {
    v4 = *(v1 + 16);
    v5 = v2;
    result = [v4 entries];
    if (result)
    {
      v7 = result;
      v8 = [result objectAtIndexedSubscript:a1];

      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_100025E70(0, &qword_10007F280, NTPBNotificationPoolIndexEntry_ptr);
      if (swift_dynamicCast())
      {
        v9 = v12;
        v10 = objc_autoreleasePoolPush();
        sub_10003F3B0(&v13, v12, v5, &v12);
        objc_autoreleasePoolPop(v10);

        return v13;
      }

      else
      {
        if (qword_10007E000 != -1)
        {
          swift_once();
        }

        v11 = qword_1000817D0;

        return v11;
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_10007E000 != -1)
    {
      swift_once();
    }

    return qword_1000817D0;
  }

  return result;
}

void sub_10003F3B0(uint64_t *__return_ptr a1@<X8>, id a2@<X1>, void *a3@<X0>, uint64_t *a4@<X2>)
{
  v22 = 0;
  if (![a3 seekToOffset:objc_msgSend(a2 error:{"itemOffset"), &v22}])
  {
    v15 = v22;
    v11 = _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_7:
    *a4 = v11;
    return;
  }

  v8 = v22;
  if (([a2 itemLength] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  v9 = NSFileHandle.read(upToCount:)();
  v11 = v4;
  if (v4)
  {
    goto LABEL_7;
  }

  if (v10 >> 60 == 15)
  {
    v12 = v10;
    v13 = v9;
    isa = 0;
  }

  else
  {
    v16 = v9;
    v17 = v10;
    sub_100015334(v9, v10);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v13 = v16;
    v18 = v16;
    v12 = v17;
    sub_1000445BC(v18, v17);
  }

  v19 = [objc_allocWithZone(NTPBNotificationItem) initWithData:isa];

  if (v19)
  {
    [a2 score];
    v21 = v20;
    sub_1000445BC(v13, v12);
    *a1 = v19;
    a1[1] = v21;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10003F564()
{

  return _swift_deallocClassInstance(v0, 33, 7);
}

void sub_10003F60C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10003F6D0(a1, a3);
  if (a2 < 1)
  {
    if (v6 > 0 || v6 <= a2)
    {
LABEL_8:
      v7 = __OFADD__(a1, a2);
      v8 = a1 + a2;
      if (v7)
      {
        __break(1u);
      }

      else
      {
        v9 = [*(v3 + 16) entries];
        if (!v9)
        {
LABEL_15:
          __break(1u);
          return;
        }

        v10 = v9;
        v11 = [v9 count];

        if ((v8 & 0x8000000000000000) == 0 && v11 >= v8)
        {
          return;
        }
      }

      __break(1u);
      goto LABEL_15;
    }
  }

  else if (v6 < 0 || v6 >= a2)
  {
    goto LABEL_8;
  }
}

void sub_10003F6D0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = [v5 entries];
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = v6;
  v8 = [v6 count];

  if (a1 < 0 || v8 < a1)
  {
    __break(1u);
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = [v5 entries];
  if (!v9)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v10 = v9;
  v11 = [v9 count];

  if (a2 < 0 || v11 < a2)
  {
    goto LABEL_9;
  }
}

void sub_10003F79C(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1 - 1;
  if (__OFSUB__(*a1, 1))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = [*(*v2 + 16) entries];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 count];

    if ((v4 & 0x8000000000000000) == 0 && v4 < v7)
    {
      *a2 = v4;
      return;
    }

    goto LABEL_7;
  }

LABEL_8:
  __break(1u);
}

void sub_10003F824(uint64_t *a1)
{
  v2 = *a1 - 1;
  if (__OFSUB__(*a1, 1))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v4 = [*(*v1 + 16) entries];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 count];

    if ((v2 & 0x8000000000000000) == 0 && v2 < v6)
    {
      *a1 = v2;
      return;
    }

    goto LABEL_7;
  }

LABEL_8:
  __break(1u);
}

void sub_10003F8AC(void *a1@<X8>)
{
  v3 = [*(*v1 + 16) entries];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 count];

    *a1 = v5;
  }

  else
  {
    __break(1u);
  }
}

void (*sub_10003F914(void *a1, uint64_t *a2))(uint64_t a1)
{
  v3 = sub_10003F184(*a2);
  a1[2] = v3;
  *a1 = v3;
  a1[1] = v4;
  return sub_10003F968;
}

void sub_10003F970(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *v2;
  v7 = [*(v6 + 16) entries];
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = v7;
  v9 = [v7 count];

  if (v9 < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v5 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v9 < v4)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  *a2 = v5;
  a2[1] = v4;
  a2[2] = v6;
}

void sub_10003FA18(void *a1@<X8>)
{
  v3 = [*(*v1 + 16) entries];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 count];

    if ((v5 & 0x8000000000000000) == 0)
    {
      *a1 = 0;
      a1[1] = v5;
      return;
    }

    __break(1u);
  }

  __break(1u);
}

id sub_10003FA88()
{
  result = [*(*v0 + 16) entries];
  if (result)
  {
    v2 = result;
    v3 = [result count];

    return (v3 == 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10003FAE8(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1 + a2;
  if (__OFADD__(*a1, a2))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = [*(*v3 + 16) entries];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 count];

    if ((v5 & 0x8000000000000000) == 0 && v8 >= v5)
    {
      *a3 = v5;
      return;
    }

    goto LABEL_7;
  }

LABEL_8:
  __break(1u);
}

void sub_10003FB70(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  sub_10003F60C(*a1, a2, *a3);
  *a4 = v5;
  *(a4 + 8) = v6 & 1;
}

uint64_t *sub_10003FBAC(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *sub_10003FBC8(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_10003FBE4(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

void sub_10003FC00(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = [*(*v2 + 16) entries];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 count];

    if ((v4 & 0x8000000000000000) == 0 && v4 < v7)
    {
      *a2 = v4 + 1;
      return;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_10003FC80(uint64_t *a1)
{
  v3 = *a1;
  v4 = [*(*v1 + 16) entries];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 count];

    if ((v3 & 0x8000000000000000) == 0 && v3 < v6)
    {
      *a1 = v3 + 1;
      return;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_10003FD0C()
{
  v1 = [*(*v0 + 16) entries];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 count];

    sub_10003F6D0(0, v3);
  }

  else
  {
    __break(1u);
  }
}

void *sub_10003FD80()
{
  v1 = sub_100042734(*v0);

  return v1;
}

unint64_t sub_10003FE88()
{
  result = qword_10007F210;
  if (!qword_10007F210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F210);
  }

  return result;
}

uint64_t sub_100040068(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_100032974(&qword_10007F028, &unk_10005B428);
    sub_10003FE88();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100040130(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100032974(&qword_10007F220, &qword_10005BAC0);
    sub_100044B88(a2, type metadata accessor for PoolAccessHandle, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000401CC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_100023584;

  return v6();
}

uint64_t sub_1000402B4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_100017F58;

  return v7();
}

uint64_t sub_10004039C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100015140(&unk_10007EB50, &qword_10005AB40);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_100044684(a3, v23 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100022E54(v11, &unk_10007EB50, &qword_10005AB40);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = String.utf8CString.getter() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_100022E54(a3, &unk_10007EB50, &qword_10005AB40);

    return v21;
  }

LABEL_8:
  sub_100022E54(a3, &unk_10007EB50, &qword_10005AB40);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

void *sub_100040688(uint64_t a1, uint64_t a2)
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

  sub_100015140(&qword_10007F288, &unk_10005BC60);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

unint64_t sub_10004070C(uint64_t a1)
{
  v2 = static Hasher._hash(seed:_:)();

  return sub_100040894(a1, v2);
}

unint64_t sub_100040750(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100040900(a1, a2, v4);
}

unint64_t sub_1000407C8(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000409B8(a1, v4);
}

unint64_t sub_10004080C(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  sub_10002DDE8(v1);
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_100040A80(v1, v2);
}

unint64_t sub_100040894(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100040900(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_1000409B8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10002A4B8(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10002A3F4(v8);
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

unint64_t sub_100040A80(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v31 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v33 + 48) + v4);
      if (v6 <= 4)
      {
        v9 = 0xD000000000000017;
        if (v6 == 3)
        {
          v10 = 0x6B6E615278616DLL;
        }

        else
        {
          v10 = 0x65726F63536E696DLL;
        }

        if (v6 == 3)
        {
          v11 = 0xE700000000000000;
        }

        else
        {
          v11 = 0xE800000000000000;
        }

        if (v6 == 2)
        {
          v12 = 0x800000010005D530;
        }

        else
        {
          v9 = v10;
          v12 = v11;
        }

        if (*(*(v33 + 48) + v4))
        {
          v13 = 0x64657269707865;
        }

        else
        {
          v13 = 0xD000000000000010;
        }

        if (*(*(v33 + 48) + v4))
        {
          v14 = 0xE700000000000000;
        }

        else
        {
          v14 = 0x800000010005D510;
        }

        if (*(*(v33 + 48) + v4) <= 1u)
        {
          v7 = v13;
        }

        else
        {
          v7 = v9;
        }

        if (*(*(v33 + 48) + v4) <= 1u)
        {
          v8 = v14;
        }

        else
        {
          v8 = v12;
        }
      }

      else if (*(*(v33 + 48) + v4) > 7u)
      {
        if (v6 == 8)
        {
          v7 = 0xD000000000000021;
          v8 = 0x800000010005D5A0;
        }

        else if (v6 == 9)
        {
          v7 = 0xD00000000000001ALL;
          v8 = 0x800000010005D5D0;
        }

        else
        {
          v7 = 0x6143656372756F73;
          v8 = 0xEC00000074694870;
        }
      }

      else if (v6 == 5)
      {
        v7 = 0xD000000000000010;
        v8 = 0x800000010005D560;
      }

      else if (v6 == 6)
      {
        v7 = 0x627550646574756DLL;
        v8 = 0xEE0072656873696CLL;
      }

      else
      {
        v7 = 0xD000000000000014;
        v8 = 0x800000010005D580;
      }

      v15 = 0xD000000000000021;
      v16 = 0xD00000000000001ALL;
      if (v5 != 9)
      {
        v16 = 0x6143656372756F73;
      }

      v17 = 0xEC00000074694870;
      if (v5 == 9)
      {
        v17 = 0x800000010005D5D0;
      }

      if (v5 != 8)
      {
        v15 = v16;
      }

      v18 = 0x800000010005D5A0;
      if (v5 != 8)
      {
        v18 = v17;
      }

      v19 = 0xD000000000000014;
      if (v5 == 6)
      {
        v19 = 0x627550646574756DLL;
      }

      v20 = 0xEE0072656873696CLL;
      if (v5 != 6)
      {
        v20 = 0x800000010005D580;
      }

      if (v5 == 5)
      {
        v19 = 0xD000000000000010;
        v20 = 0x800000010005D560;
      }

      if (v5 <= 7)
      {
        v15 = v19;
        v18 = v20;
      }

      v21 = 0xD000000000000017;
      if (v5 == 3)
      {
        v22 = 0x6B6E615278616DLL;
      }

      else
      {
        v22 = 0x65726F63536E696DLL;
      }

      if (v5 == 3)
      {
        v23 = 0xE700000000000000;
      }

      else
      {
        v23 = 0xE800000000000000;
      }

      if (v5 == 2)
      {
        v24 = 0x800000010005D530;
      }

      else
      {
        v21 = v22;
        v24 = v23;
      }

      if (v5)
      {
        v25 = 0x64657269707865;
      }

      else
      {
        v25 = 0xD000000000000010;
      }

      if (v5)
      {
        v26 = 0xE700000000000000;
      }

      else
      {
        v26 = 0x800000010005D510;
      }

      if (v5 <= 1)
      {
        v21 = v25;
        v24 = v26;
      }

      v27 = v5 <= 4 ? v21 : v15;
      v28 = v5 <= 4 ? v24 : v18;
      if (v7 == v27 && v8 == v28)
      {
        break;
      }

      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v29 & 1) == 0)
      {
        v4 = (v4 + 1) & v31;
        if ((*(v32 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

Swift::Int sub_100040DEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100015140(&qword_10007F300, &qword_10005BD48);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10004108C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100015140(&qword_10007F2F8, &qword_10005BD40);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_10002A3E4((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_10002A4B8(v23, &v36);
        sub_100023520(*(v5 + 56) + 32 * v22, v35);
      }

      result = AnyHashable._rawHashValue(seed:)(*(v7 + 40));
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_10002A3E4(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

Swift::Int sub_100041344(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100015140(&qword_10007F308, &qword_10005BD50);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v22 = v19 | (v8 << 6);
      v23 = *(*(v5 + 48) + v22);
      v24 = *(*(v5 + 56) + 8 * v22);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v15) >> 6;
        while (++v17 != v26 || (v25 & 1) == 0)
        {
          v27 = v17 == v26;
          if (v17 == v26)
          {
            v17 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v17);
          if (v28 != -1)
          {
            v18 = __clz(__rbit64(~v28)) + (v17 << 6);
            goto LABEL_8;
          }
        }

LABEL_34:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v23;
      *(*(v7 + 56) + 8 * v18) = v24;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_16;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_32:
  *v3 = v7;
  return result;
}

uint64_t sub_10004177C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100015140(&qword_10007F350, &qword_10005B420);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      result = static Hasher._hash(seed:_:)();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

Swift::Int sub_1000419EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100015140(&unk_10007F2D0, &qword_10005BD08);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

_OWORD *sub_100041C98(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1000407C8(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_100042180();
      goto LABEL_7;
    }

    sub_10004108C(v13, a3 & 1);
    v19 = sub_1000407C8(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_10002A4B8(a2, v21);
      return sub_100041F58(v10, v21, a1, v16);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_10001653C(v17);

  return sub_10002A3E4(a1, v17);
}

unint64_t sub_100041DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_100040750(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1000419EC(v18, a5 & 1);
      result = sub_100040750(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      sub_1000425CC();
      result = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * result);
    *v24 = a1;
    v24[1] = a2;
    return result;
  }

  v23[(result >> 6) + 8] |= 1 << result;
  v25 = (v23[6] + 16 * result);
  *v25 = a3;
  v25[1] = a4;
  v26 = (v23[7] + 16 * result);
  *v26 = a1;
  v26[1] = a2;
  v27 = v23[2];
  v17 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v17)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v23[2] = v28;
}

_OWORD *sub_100041F58(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_10002A3E4(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t sub_100041FD4(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

void *sub_100042018()
{
  v1 = v0;
  sub_100015140(&qword_10007F300, &qword_10005BD48);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100042180()
{
  v1 = v0;
  sub_100015140(&qword_10007F2F8, &qword_10005BD40);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_10002A4B8(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_100023520(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_10002A3E4(v22, (*(v4 + 56) + v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100042324()
{
  v1 = v0;
  sub_100015140(&qword_10007F308, &qword_10005BD50);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100042470()
{
  v1 = v0;
  sub_100015140(&qword_10007F350, &qword_10005B420);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1000425CC()
{
  v1 = v0;
  sub_100015140(&unk_10007F2D0, &qword_10005BD08);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100042734(uint64_t a1)
{
  result = [*(a1 + 16) entries];
  if (result)
  {
    v2 = result;
    v3 = [result count];

    sub_10003F6D0(0, v3);
    if (v4)
    {
      v5 = v4;
      v6 = sub_100040688(v4, 0);

      sub_100043E4C(&v9, v6 + 4, v5);
      v8 = v7;

      if (v8 == v5)
      {
        return v6;
      }

      __break(1u);
    }

    return _swiftEmptyArrayStorage;
  }

  __break(1u);
  return result;
}

void sub_1000427F8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_100015140(&qword_10007F338, &qword_10005BDB8);
      v7 = *(type metadata accessor for MultiDatabaseFeedItemPool.DatabaseSource() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        type metadata accessor for MultiDatabaseFeedItemPool.DatabaseSource();
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

char *sub_100042998(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100042A98(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000429B8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100042BA4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000429D8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100042DEC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000429F8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100042F08(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100042A18(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100043018(a1, a2, a3, *v3, &qword_10007F320, &qword_10005BDA0, &qword_10007F318, &qword_10005BD98);
  *v3 = result;
  return result;
}

void *sub_100042A58(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100043018(a1, a2, a3, *v3, &qword_10007F328, &qword_10005BDA8, &qword_10007F330, &qword_10005BDB0);
  *v3 = result;
  return result;
}

char *sub_100042A98(char *result, int64_t a2, char a3, char *a4)
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
    sub_100015140(&qword_10007F340, &qword_10005BDC0);
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

void *sub_100042BA4(void *result, int64_t a2, char a3, void *a4)
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
    sub_100015140(&qword_10007F358, &qword_10005BDD8);
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
    sub_100015140(&unk_10007F360, &unk_10005BDE0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100042CE8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100015140(&unk_10007F2B0, &qword_10005BCF8);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_100042DEC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100015140(&qword_10007F348, &unk_10005BDC8);
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
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

char *sub_100042F08(char *result, int64_t a2, char a3, char *a4)
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
    sub_100015140(&qword_10007E848, &qword_10005BCF0);
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

void *sub_100043018(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    sub_100015140(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100015140(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void sub_100043160(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100025E70(0, &qword_10007F280, NTPBNotificationPoolIndexEntry_ptr);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_100043370(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_100043274(0, v2, 1, a1);
  }
}

void sub_100043274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v10 = v6;
    while (1)
    {
      v11 = *v10;
      v12 = v8;
      v13 = v11;
      [v12 score];
      v15 = v14;
      [v13 score];
      v17 = v16;

      if (v17 >= v15)
      {
LABEL_4:
        ++v4;
        v6 += 8;
        --v7;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v18 = *v10;
      v8 = *(v10 + 8);
      *v10 = v8;
      *(v10 + 8) = v18;
      v10 -= 8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_100043370(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_121:
      v8 = sub_100043D34(v8);
    }

    v99 = v5;
    v100 = *(v8 + 2);
    if (v100 >= 2)
    {
      while (*a3)
      {
        v5 = v100 - 1;
        v101 = *&v8[16 * v100];
        v102 = *&v8[16 * v100 + 24];
        sub_1000439E8((*a3 + 8 * v101), (*a3 + 8 * *&v8[16 * v100 + 16]), (*a3 + 8 * v102), v9);
        if (v99)
        {
          goto LABEL_98;
        }

        if (v102 < v101)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_100043D34(v8);
        }

        if (v100 - 2 >= *(v8 + 2))
        {
          goto LABEL_115;
        }

        v103 = &v8[16 * v100];
        *v103 = v101;
        *(v103 + 1) = v102;
        sub_100043CA8(v100 - 1);
        v100 = *(v8 + 2);
        if (v100 <= 1)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_125;
    }

LABEL_98:

    return;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v105 = v5;
      v11 = *(*a3 + 8 * v10);
      v5 = 8 * v7;
      v12 = v7;
      v13 = (*a3 + 8 * v7);
      v15 = *v13;
      v14 = v13 + 2;
      v16 = v11;
      v17 = v15;
      [v16 score];
      v19 = v18;
      [v17 score];
      v21 = v20;

      v22 = v12 + 2;
      while (v6 != v22)
      {
        v23 = *(v14 - 1);
        v24 = *v14;
        v25 = v23;
        [v24 score];
        v27 = v26;
        [v25 score];
        v29 = v28;

        ++v22;
        ++v14;
        if (v21 < v19 == v29 >= v27)
        {
          v6 = (v22 - 1);
          break;
        }
      }

      v9 = v12;
      if (v21 < v19)
      {
        if (v6 < v12)
        {
          goto LABEL_118;
        }

        if (v12 < v6)
        {
          v30 = 8 * v6 - 8;
          v31 = v6;
          v32 = v12;
          do
          {
            if (v32 != --v31)
            {
              v34 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v33 = *(v34 + v5);
              *(v34 + v5) = *(v34 + v30);
              *(v34 + v30) = v33;
            }

            v32 = (v32 + 1);
            v30 -= 8;
            v5 += 8;
          }

          while (v32 < v31);
        }
      }

      v10 = v6;
      v5 = v105;
    }

    v35 = a3[1];
    if (v10 < v35)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_117;
      }

      if (v10 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_119;
        }

        if (v9 + a4 >= v35)
        {
          v36 = a3[1];
        }

        else
        {
          v36 = v9 + a4;
        }

        if (v36 < v9)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v10 != v36)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v10 < v9)
    {
      goto LABEL_116;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_100043D48(0, *(v8 + 2) + 1, 1, v8);
    }

    v54 = *(v8 + 2);
    v53 = *(v8 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v8 = sub_100043D48((v53 > 1), v54 + 1, 1, v8);
    }

    *(v8 + 2) = v55;
    v56 = &v8[16 * v54];
    *(v56 + 4) = v9;
    *(v56 + 5) = v10;
    v57 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    v111 = v10;
    if (v54)
    {
      while (1)
      {
        v58 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v59 = *(v8 + 4);
          v60 = *(v8 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_57:
          if (v62)
          {
            goto LABEL_105;
          }

          v75 = &v8[16 * v55];
          v77 = *v75;
          v76 = *(v75 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_108;
          }

          v81 = &v8[16 * v58 + 32];
          v83 = *v81;
          v82 = *(v81 + 1);
          v69 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v69)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v79, v84))
          {
            goto LABEL_112;
          }

          if (v79 + v84 >= v61)
          {
            if (v61 < v84)
            {
              v58 = v55 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v85 = &v8[16 * v55];
        v87 = *v85;
        v86 = *(v85 + 1);
        v69 = __OFSUB__(v86, v87);
        v79 = v86 - v87;
        v80 = v69;
LABEL_71:
        if (v80)
        {
          goto LABEL_107;
        }

        v88 = &v8[16 * v58];
        v90 = *(v88 + 4);
        v89 = *(v88 + 5);
        v69 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v69)
        {
          goto LABEL_110;
        }

        if (v91 < v79)
        {
          goto LABEL_3;
        }

LABEL_78:
        v96 = v58 - 1;
        if (v58 - 1 >= v55)
        {
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
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v97 = *&v8[16 * v96 + 32];
        v9 = *&v8[16 * v58 + 40];
        sub_1000439E8((*a3 + 8 * v97), (*a3 + 8 * *&v8[16 * v58 + 32]), (*a3 + 8 * v9), v57);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v9 < v97)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_100043D34(v8);
        }

        if (v96 >= *(v8 + 2))
        {
          goto LABEL_102;
        }

        v98 = &v8[16 * v96];
        *(v98 + 4) = v97;
        *(v98 + 5) = v9;
        sub_100043CA8(v58);
        v55 = *(v8 + 2);
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v63 = &v8[16 * v55 + 32];
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_103;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_104;
      }

      v70 = &v8[16 * v55];
      v72 = *v70;
      v71 = *(v70 + 1);
      v69 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v69)
      {
        goto LABEL_106;
      }

      v69 = __OFADD__(v61, v73);
      v74 = v61 + v73;
      if (v69)
      {
        goto LABEL_109;
      }

      if (v74 >= v66)
      {
        v92 = &v8[16 * v58 + 32];
        v94 = *v92;
        v93 = *(v92 + 1);
        v69 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v69)
        {
          goto LABEL_113;
        }

        if (v61 < v95)
        {
          v58 = v55 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v7 = v111;
    v6 = a3[1];
    if (v111 >= v6)
    {
      goto LABEL_88;
    }
  }

  v106 = v5;
  v37 = v9;
  v38 = *a3;
  v39 = *a3 + 8 * v10 - 8;
  v107 = v37;
  v40 = v37 - v10;
  v109 = v36;
LABEL_30:
  v110 = v10;
  v41 = *(v38 + 8 * v10);
  v42 = v40;
  v43 = v39;
  while (1)
  {
    v44 = *v43;
    v45 = v41;
    v46 = v44;
    [v45 score];
    v48 = v47;
    [v46 score];
    v50 = v49;

    if (v50 >= v48)
    {
LABEL_29:
      v10 = v110 + 1;
      v39 += 8;
      --v40;
      if (v110 + 1 != v109)
      {
        goto LABEL_30;
      }

      v10 = v109;
      v5 = v106;
      v9 = v107;
      goto LABEL_37;
    }

    if (!v38)
    {
      break;
    }

    v51 = *v43;
    v41 = *(v43 + 8);
    *v43 = v41;
    *(v43 + 8) = v51;
    v43 -= 8;
    if (__CFADD__(v42++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
}

uint64_t sub_1000439E8(void **__src, void **a2, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != a2 || &a2[v12] <= a4)
    {
      v25 = a2;
      memmove(a4, a2, 8 * v12);
      a2 = v25;
    }

    v24 = a2;
    v14 = &v4[v12];
    if (v10 >= 8 && a2 > v6)
    {
      v41 = v4;
LABEL_26:
      __dst = v24;
      v26 = v24 - 1;
      --v5;
      v27 = v14;
      do
      {
        v28 = v5 + 1;
        v29 = *--v27;
        v30 = v26;
        v31 = *v26;
        v32 = v29;
        v33 = v31;
        [v32 score];
        v35 = v34;
        [v33 score];
        v37 = v36;

        if (v37 < v35)
        {
          v38 = v30;
          if (v28 != __dst)
          {
            *v5 = *v30;
          }

          v4 = v41;
          if (v14 <= v41 || (v24 = v38, v38 <= v6))
          {
            v24 = v38;
            goto LABEL_37;
          }

          goto LABEL_26;
        }

        if (v28 != v14)
        {
          *v5 = *v27;
        }

        --v5;
        v14 = v27;
        v26 = v30;
      }

      while (v27 > v41);
      v14 = v27;
      v24 = __dst;
      v4 = v41;
    }
  }

  else
  {
    v13 = a2;
    if (a4 != __src || &__src[v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    v14 = &v4[v9];
    if (v7 >= 8 && v13 < v5)
    {
      while (1)
      {
        v15 = *v4;
        v16 = *v13;
        v17 = v15;
        [v16 score];
        v19 = v18;
        [v17 score];
        v21 = v20;

        if (v21 >= v19)
        {
          break;
        }

        v22 = v13;
        v23 = v6 == v13++;
        if (!v23)
        {
          goto LABEL_16;
        }

LABEL_17:
        ++v6;
        if (v4 >= v14 || v13 >= v5)
        {
          goto LABEL_19;
        }
      }

      v22 = v4;
      v23 = v6 == v4++;
      if (v23)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v6 = *v22;
      goto LABEL_17;
    }

LABEL_19:
    v24 = v6;
  }

LABEL_37:
  if (v24 != v4 || v24 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v24, v4, 8 * (v14 - v4));
  }

  return 1;
}

uint64_t sub_100043CA8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100043D34(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_100043D48(char *result, int64_t a2, char a3, char *a4)
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
    sub_100015140(&unk_10007F2B0, &qword_10005BCF8);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void sub_100043E4C(void *a1, void *a2, uint64_t a3)
{
  if (!a2)
  {
    v4 = 0;
    goto LABEL_26;
  }

  v4 = a3;
  if (!a3)
  {
LABEL_26:
    *a1 = v3;
    a1[1] = v4;
    return;
  }

  if (a3 < 0)
  {
LABEL_29:
    __break(1u);
  }

  else
  {
    v5 = a2;
    v24 = a1;
    v6 = 1;
    while (1)
    {
      v7 = [*(v3 + 16) entries];
      if (!v7)
      {
        break;
      }

      v8 = v7;
      v9 = [v7 count];

      if ((v6 - 1) == v9)
      {
        v4 = v6 - 1;
LABEL_25:
        a1 = v24;
        goto LABEL_26;
      }

      v10 = *(v3 + 24);
      if (v10)
      {
        v11 = *(v3 + 16);
        v12 = v10;
        v13 = [v11 entries];
        if (!v13)
        {
          goto LABEL_32;
        }

        v14 = v13;
        v15 = [v13 objectAtIndexedSubscript:v6 - 1];

        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_100025E70(0, &qword_10007F280, NTPBNotificationPoolIndexEntry_ptr);
        if (swift_dynamicCast())
        {
          v16 = v25;
          v17 = objc_autoreleasePoolPush();
          sub_10003F3B0(v26, v16, v12, &v25);
          objc_autoreleasePoolPop(v17);

          v18 = v26[0];
          v19 = v26[1];
        }

        else
        {
          if (qword_10007E000 != -1)
          {
            swift_once();
          }

          v19 = qword_1000817D8;
          v18 = qword_1000817D0;
        }
      }

      else
      {
        if (qword_10007E000 != -1)
        {
          swift_once();
        }

        v19 = qword_1000817D8;
        v18 = qword_1000817D0;
      }

      v20 = [*(v3 + 16) entries];
      if (!v20)
      {
        goto LABEL_31;
      }

      v21 = v20;
      v22 = [v20 count];

      if (v6 - 1 >= v22)
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      *v5 = v18;
      v5[1] = v19;
      if (v4 == v6)
      {
        goto LABEL_25;
      }

      v5 += 2;
      if (__OFADD__(v6++, 1))
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

uint64_t sub_10004417C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0, a1);
}

id sub_1000441E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v23 = a3;
  ObjectType = swift_getObjectType();
  v22 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v22);
  v24 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR___NDScoredNotificationPool__index] = 0;
  *&v4[OBJC_IVAR___NDScoredNotificationPool_context] = a1;
  *&v4[OBJC_IVAR___NDScoredNotificationPool_contentVariantProvider] = a2;
  v14 = OBJC_IVAR___NDScoredNotificationPool_cacheDirectory;
  v21 = type metadata accessor for URL();
  v15 = *(v21 - 8);
  (*(v15 + 16))(&v4[v14], a3, v21);
  v16 = sub_100025E70(0, &qword_10007F260, OS_dispatch_queue_ptr);
  v20[0] = "Handle";
  v20[1] = v16;
  (*(v11 + 104))(v13, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v10);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  static DispatchQoS.unspecified.getter();
  v27 = _swiftEmptyArrayStorage;
  sub_100044B88(&qword_10007F268, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100015140(&qword_10007F270, &qword_10005BC58);
  sub_100044574(&qword_10007F278, &qword_10007F270, &qword_10005BC58, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *&v4[OBJC_IVAR___NDScoredNotificationPool_accessQueue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v17 = [objc_allocWithZone(FCAsyncSerialQueue) initWithQualityOfService:17];
  *&v4[OBJC_IVAR___NDScoredNotificationPool_refreshSerialQueue] = v17;
  v26.receiver = v4;
  v26.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v26, "init");
  (*(v15 + 8))(v23, v21);
  return v18;
}

uint64_t sub_100044574(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100032974(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000445BC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000153DC(result, a2);
  }

  return result;
}

uint64_t sub_1000445D0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100023584;

  return sub_10003C6EC(v2, v3, v4);
}

uint64_t sub_100044684(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015140(&unk_10007EB50, &qword_10005AB40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000446F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100023584;

  return sub_100021D34(a1, v4);
}

uint64_t sub_1000447CC()
{
  v2 = *(type metadata accessor for Date() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100017F58;

  return sub_10003B97C(v4, v0 + v3, v6, v7);
}

uint64_t sub_10004493C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100044954(void *a1)
{
  v3 = *(sub_100015140(&unk_10007F290, &qword_10005A838) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for Date() - 8);
  v9 = (*(v8 + 80) + v7 + 8) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(type metadata accessor for URL() - 8);
  v12 = *(v11 + 80);
  sub_10003D108(a1, *(v1 + 16), *(v1 + 24), v1 + v4, *(v1 + v5), *(v1 + v6), *(v1 + v7), v1 + v9, *(v1 + v10), v1 + ((v12 + v10 + 8) & ~v12), v1 + ((*(v11 + 64) + v12 + ((v12 + v10 + 8) & ~v12)) & ~v12));
}

uint64_t sub_100044B48(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_100044B88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100044BD0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100017F58;

  return sub_10003ACA4(v2, v3);
}

uint64_t type metadata accessor for DelayedNotificationTimetable(uint64_t a1)
{
  result = qword_10007F3E0;
  if (!qword_10007F3E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100044D6C(uint64_t a1)
{
  v1 = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_100044DC4(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for URL();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_100044F10, 0, 0);
}

uint64_t sub_100044F10()
{
  v77 = v0;
  v1 = v0[3];
  static Logger.feedItemPool.getter();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[14];
  v7 = v0[10];
  v8 = v0[11];
  if (v5)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v76[0] = v10;
    *v9 = 136446210;
    v11 = NDManagedFeedItemPoolOptions.name.getter();
    v13 = sub_100021F24(v11, v12, v76);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "will register for managed feed item dropbox, name=%{public}s", v9, 0xCu);
    sub_10001653C(v10);
  }

  v14 = *(v8 + 8);
  v14(v6, v7);
  v15 = v0[9];
  v16 = NDManagedFeedItemPoolOptions.name.getter();
  sub_100046940(v16, v17, v15);

  v18 = URL.checkResourceIsReachable()();
  v19 = v0[9];
  v20 = v0[5];
  v21 = v0[6];
  if (v22)
  {
    v23 = v0[4];
    (*(v21 + 8))(v19, v20);
    v24 = *(v23 + OBJC_IVAR___NDFeedItemPoolManager_activeRefreshTask);
    *(swift_task_alloc() + 16) = v23;
    os_unfair_lock_lock((v24 + 24));
    sub_100050C18((v24 + 16));
    os_unfair_lock_unlock((v24 + 24));
LABEL_8:

    v38 = v0[3];
    static Logger.feedItemPool.getter();
    v39 = v38;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();

    v42 = os_log_type_enabled(v40, v41);
    v43 = v0[12];
    v44 = v0[10];
    if (v42)
    {
      v72 = v0[12];
      v75 = v14;
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v76[0] = v46;
      *v45 = 136446210;
      v47 = NDManagedFeedItemPoolOptions.name.getter();
      v49 = sub_100021F24(v47, v48, v76);

      *(v45 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v40, v41, "failed to register for managed feed item dropbox, name=%{public}s", v45, 0xCu);
      sub_10001653C(v46);

      v75(v72, v44);
    }

    else
    {

      v14(v43, v44);
    }

    swift_willThrow();

    v50 = v0[1];
    goto LABEL_12;
  }

  v25 = *(v21 + 8);
  v25(v19, v20);
  if (!v18)
  {
    v27 = v0[4];
    sub_1000505FC();
    swift_allocError();
    *v28 = 2;
    *(v28 + 8) = 1;
    swift_willThrow();
    v29 = *(v27 + OBJC_IVAR___NDFeedItemPoolManager_activeRefreshTask);
    *(swift_task_alloc() + 16) = v27;
    os_unfair_lock_lock((v29 + 24));
    sub_100050C18((v29 + 16));
    os_unfair_lock_unlock((v29 + 24));
    goto LABEL_8;
  }

  v26 = v0[3];
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v0[2] = v26;
  type metadata accessor for NDManagedFeedItemPoolOptions();
  sub_100050B1C(&qword_10007F510, &type metadata accessor for NDManagedFeedItemPoolOptions, &protocol conformance descriptor for NDManagedFeedItemPoolOptions);
  v30 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v32 = v31;
  v74 = v14;
  v33 = v0[7];

  v34 = NDManagedFeedItemPoolOptions.name.getter();
  sub_100046940(v34, v35, v33);
  v36 = v0[7];
  v37 = v0[5];

  URL.appendingPathComponent(_:)();
  v25(v36, v37);
  Data.write(to:options:)();
  v52 = v0[3];
  static Logger.feedItemPool.getter();
  v53 = v52;
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.default.getter();

  v56 = os_log_type_enabled(v54, v55);
  v57 = v0[13];
  v73 = v0[10];
  v58 = v0[8];
  v59 = v0[5];
  if (v56)
  {
    v71 = v0[8];
    v60 = swift_slowAlloc();
    v70 = v59;
    v61 = swift_slowAlloc();
    v76[0] = v61;
    *v60 = 136446210;
    v62 = NDManagedFeedItemPoolOptions.name.getter();
    v69 = v57;
    v64 = sub_100021F24(v62, v63, v76);

    *(v60 + 4) = v64;
    _os_log_impl(&_mh_execute_header, v54, v55, "did register for managed feed item dropbox, name=%{public}s", v60, 0xCu);
    sub_10001653C(v61);

    sub_1000153DC(v30, v32);

    v74(v69, v73);
    v66 = v70;
    v65 = v71;
  }

  else
  {
    sub_1000153DC(v30, v32);

    v74(v57, v73);
    v65 = v58;
    v66 = v59;
  }

  v25(v65, v66);
  v67 = v0[4];
  v68 = *(v67 + OBJC_IVAR___NDFeedItemPoolManager_activeRefreshTask);
  *(swift_task_alloc() + 16) = v67;
  os_unfair_lock_lock((v68 + 24));
  sub_100050C18((v68 + 16));
  os_unfair_lock_unlock((v68 + 24));

  v50 = v0[1];
LABEL_12:

  return v50();
}

uint64_t sub_1000457BC(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for NDFeedItemPool.UnderlyingType();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v6 = type metadata accessor for DropboxFeedItemPool();
  v2[17] = v6;
  v2[18] = *(v6 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v2[22] = v7;
  v2[23] = *(v7 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();

  return _swift_task_switch(sub_100045A4C, 0, 0);
}

uint64_t sub_100045A4C(uint64_t a1)
{
  v138 = v1;
  v2 = v1[3];
  static Logger.feedItemPool.getter();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[27];
  v8 = v1[22];
  v9 = v1[23];
  if (v6)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v137[0] = v11;
    *v10 = 136446210;
    v12 = NDFeedItemPoolFetchOptions.name.getter();
    v14 = sub_100021F24(v12, v13, v137);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "will fetch feed item dropbox, name=%{public}s", v10, 0xCu);
    sub_10001653C(v11);
  }

  v15 = *(v9 + 8);
  v15(v7, v8);
  v16 = v1[15];
  v17 = NDFeedItemPoolFetchOptions.name.getter();
  sub_100046940(v17, v18, v16);
  v136 = v15;
  v19 = v1[15];
  v20 = v1[12];
  v21 = v1[13];
  v22 = v1[11];

  URL.appendingPathComponent(_:)();
  v23 = v22;
  v24 = *(v20 + 8);
  v24(v19, v23);
  v25 = NDFeedItemPoolFetchOptions.name.getter();
  sub_100046940(v25, v26, v21);
  v27 = v1[13];
  v28 = v1[11];

  URL.appendingPathComponent(_:)();
  v24(v27, v28);
  v29 = Data.init(contentsOf:options:)();
  v31 = v30;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  type metadata accessor for NDManagedFeedItemPoolOptions();
  sub_100050B1C(&qword_10007F490, &type metadata accessor for NDManagedFeedItemPoolOptions, &protocol conformance descriptor for NDManagedFeedItemPoolOptions);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v24(v1[14], v1[11]);

  sub_1000153DC(v29, v31);
  v32 = v1[2];
  NDManagedFeedItemPoolOptions.configurationSet.getter();

  DropboxFeedItemPool.init(fileURL:configurationSet:)();
  v33 = v1[18];
  v35 = v1[9];
  v34 = v1[10];
  v36 = v1[8];
  DropboxFeedItemPool.refreshDate.getter();
  Date.timeIntervalSinceNow.getter();
  v38 = v37;
  v39 = *(v35 + 8);
  v39(v34, v36);
  v40 = fabs(v38);
  NDFeedItemPoolFetchOptions.maxAge.getter();
  v41 = (v33 + 16);
  v42 = v1[21];
  v43 = v1[17];
  v44 = v1[3];
  if (v40 <= v45)
  {
    v130 = v39;
    v68 = v1[20];
    static Logger.feedItemPool.getter();
    v134 = *v41;
    (*v41)(v68, v42, v43);
    v69 = v44;
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.default.getter();

    v72 = os_log_type_enabled(v70, v71);
    v73 = v1[26];
    v74 = v1[22];
    v75 = v1[20];
    v76 = v1[18];
    v132 = v1[17];
    if (v72)
    {
      v128 = v1[26];
      v129 = v1[22];
      v77 = v1[10];
      v125 = v70;
      v78 = v1[8];
      v79 = swift_slowAlloc();
      v137[0] = swift_slowAlloc();
      *v79 = 136446466;
      v80 = NDFeedItemPoolFetchOptions.name.getter();
      v124 = v71;
      v82 = sub_100021F24(v80, v81, v137);

      *(v79 + 4) = v82;
      *(v79 + 12) = 2082;
      DropboxFeedItemPool.refreshDate.getter();
      sub_100050B1C(&qword_10007E300, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v83 = dispatch thunk of CustomStringConvertible.description.getter();
      v85 = v84;
      v130(v77, v78);
      v86 = *(v76 + 8);
      v86(v75, v132);
      v87 = v86;
      v88 = sub_100021F24(v83, v85, v137);

      *(v79 + 14) = v88;
      _os_log_impl(&_mh_execute_header, v125, v124, "did fetch feed item dropbox, name=%{public}s, refreshDate=%{public}s", v79, 0x16u);
      swift_arrayDestroy();

      v89 = v128;
      v90 = v129;
    }

    else
    {

      v112 = *(v76 + 8);
      v112(v75, v132);
      v87 = v112;
      v89 = v73;
      v90 = v74;
    }

    v136(v89, v90);
    v113 = v1[21];
    v114 = v1[17];
    v116 = v1[6];
    v115 = v1[7];
    v118 = v1[4];
    v117 = v1[5];
    v134(v115, v113, v114);
    (*(v116 + 104))(v115, enum case for NDFeedItemPool.UnderlyingType.dropbox(_:), v117);
    v119 = objc_allocWithZone(type metadata accessor for NDFeedItemPool());
    v120 = NDFeedItemPool.init(_:)();
    v87(v113, v114);
    v121 = *(v118 + OBJC_IVAR___NDFeedItemPoolManager_activeRefreshTask);
    *(swift_task_alloc() + 16) = v118;
    os_unfair_lock_lock((v121 + 24));
    sub_100050C18((v121 + 16));
    os_unfair_lock_unlock((v121 + 24));

    v122 = v1[1];

    return v122(v120);
  }

  else
  {
    v46 = v1[19];
    static Logger.feedItemPool.getter();
    (*v41)(v46, v42, v43);
    v47 = v44;
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();

    v50 = os_log_type_enabled(v48, v49);
    v51 = v1[25];
    v52 = v1[22];
    v54 = v1[18];
    v53 = v1[19];
    v133 = v1[17];
    if (v50)
    {
      v131 = v1[22];
      v55 = v1[10];
      log = v48;
      v123 = v1[8];
      v56 = swift_slowAlloc();
      v137[0] = swift_slowAlloc();
      *v56 = 136446722;
      v57 = NDFeedItemPoolFetchOptions.name.getter();
      v126 = v49;
      v59 = sub_100021F24(v57, v58, v137);

      *(v56 + 4) = v59;
      *(v56 + 12) = 2082;
      DropboxFeedItemPool.refreshDate.getter();
      sub_100050B1C(&qword_10007E300, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      v62 = v61;
      v39(v55, v123);
      v63 = *(v54 + 8);
      v63(v53, v133);
      v64 = sub_100021F24(v60, v62, v137);

      *(v56 + 14) = v64;
      *(v56 + 22) = 2050;
      NDFeedItemPoolFetchOptions.maxAge.getter();
      *(v56 + 24) = v65;
      _os_log_impl(&_mh_execute_header, log, v126, "feed item dropbox is stale, name=%{public}s, refreshDate=%{public}s, maxAge=%{public}f", v56, 0x20u);
      swift_arrayDestroy();

      v66 = v51;
      v67 = v131;
    }

    else
    {

      v63 = *(v54 + 8);
      v63(v53, v133);
      v66 = v51;
      v67 = v52;
    }

    v136(v66, v67);
    v91 = v1[21];
    v92 = v1[17];
    v93 = v1[4];
    sub_1000505FC();
    swift_allocError();
    *v94 = v40;
    *(v94 + 8) = 0;
    swift_willThrow();
    v63(v91, v92);
    v95 = *(v93 + OBJC_IVAR___NDFeedItemPoolManager_activeRefreshTask);
    *(swift_task_alloc() + 16) = v93;
    os_unfair_lock_lock((v95 + 24));
    sub_100050C18((v95 + 16));
    os_unfair_lock_unlock((v95 + 24));

    v96 = v1[3];
    static Logger.feedItemPool.getter();
    v97 = v96;
    swift_errorRetain();
    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.error.getter();

    v100 = os_log_type_enabled(v98, v99);
    v101 = v1[24];
    v102 = v1[22];
    if (v100)
    {
      v135 = v1[24];
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v137[0] = v105;
      *v103 = 136446466;
      v106 = NDFeedItemPoolFetchOptions.name.getter();
      v108 = sub_100021F24(v106, v107, v137);

      *(v103 + 4) = v108;
      *(v103 + 12) = 2114;
      swift_errorRetain();
      v109 = _swift_stdlib_bridgeErrorToNSError();
      *(v103 + 14) = v109;
      *v104 = v109;
      _os_log_impl(&_mh_execute_header, v98, v99, "failed to fetch feed item dropbox, name=%{public}s, error=%{public}@", v103, 0x16u);
      sub_100022E54(v104, &qword_10007E768, &qword_10005BCE0);

      sub_10001653C(v105);

      v136(v135, v102);
    }

    else
    {

      v136(v101, v102);
    }

    swift_willThrow();

    v110 = v1[1];

    return v110();
  }
}

id sub_100046940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a1;
  v23 = a3;
  v5 = type metadata accessor for URL.DirectoryHint();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v25 = *(v9 - 8);
  v26 = v9;
  __chkstk_darwin(v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100015140(&qword_10007F340, &qword_10005BDC0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10005A9A0;
  v13 = *(v3 + OBJC_IVAR___NDFeedItemPoolManager_rootDirectoryName + 8);
  *(v12 + 32) = *(v3 + OBJC_IVAR___NDFeedItemPoolManager_rootDirectoryName);
  *(v12 + 40) = v13;
  *(v12 + 48) = v24;
  *(v12 + 56) = a2;
  (*(v6 + 104))(v8, enum case for URL.DirectoryHint.isDirectory(_:), v5);
  sub_100050AC8();

  URL.appending<A>(components:directoryHint:)();

  (*(v6 + 8))(v8, v5);
  v14 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v15);
  v17 = v16;
  v27 = 0;
  v18 = [v14 createDirectoryAtURL:v16 withIntermediateDirectories:1 attributes:0 error:&v27];

  v19 = v27;
  if (v18)
  {
    (*(v25 + 32))(v23, v11, v26);
    return v19;
  }

  else
  {
    v21 = v27;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return (*(v25 + 8))(v11, v26);
  }
}

uint64_t sub_100046C48(uint64_t *a1, char *a2)
{
  v5 = sub_100015140(&unk_10007EB50, &qword_10005AB40);
  __chkstk_darwin(v5 - 8);
  v7 = &v32 - v6;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v32 - v13;
  if (*a1)
  {
    static Logger.feedItemPool.getter();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "already kicked off a rebuild for all feed item dropboxes", v17, 2u);
    }

    return (*(v9 + 8))(v12, v8);
  }

  else
  {
    v33 = a1;
    v34 = v2;
    v19 = objc_allocWithZone(NDAssertion);
    v20 = String._bridgeToObjectiveC()();
    v21 = [v19 initWithName:v20];

    static Logger.feedItemPool.getter();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "will rebuild all feed item dropboxes", v24, 2u);
    }

    (*(v9 + 8))(v14, v8);
    v25 = OBJC_IVAR___NDFeedItemPoolManager_refreshPriority;
    v26 = type metadata accessor for TaskPriority();
    v27 = *(v26 - 8);
    (*(v27 + 16))(v7, &a2[v25], v26);
    (*(v27 + 56))(v7, 0, 1, v26);
    v28 = swift_allocObject();
    v28[2] = 0;
    v28[3] = 0;
    v28[4] = a2;
    v28[5] = v21;
    v29 = a2;
    v30 = v21;
    v31 = sub_10004A9D0(0, 0, v7, &unk_10005BE68, v28);

    result = sub_100022E54(v7, &unk_10007EB50, &qword_10005AB40);
    *v33 = v31;
  }

  return result;
}

uint64_t sub_100046FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Logger();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();
  v6 = swift_task_alloc();
  v4[7] = v6;
  *v6 = v4;
  v6[1] = sub_1000470F4;

  return sub_100047500();
}

uint64_t sub_1000470F4()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_10004733C;
  }

  else
  {
    v2 = sub_100047208;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100047208(uint64_t a1)
{
  static Logger.feedItemPool.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "did rebuild all feed item dropboxes", v4, 2u);
  }

  v5 = v1[2];
  (*(v1[4] + 8))(v1[6], v1[3]);
  v6 = *(v5 + OBJC_IVAR___NDFeedItemPoolManager_activeRefreshTask);
  os_unfair_lock_lock((v6 + 24));

  *(v6 + 16) = 0;
  os_unfair_lock_unlock((v6 + 24));

  v7 = v1[1];

  return v7();
}

uint64_t sub_10004733C(uint64_t a1)
{
  static Logger.feedItemPool.getter();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "failed to rebuild all feed item dropboxes, error=%{public}@", v4, 0xCu);
    sub_100022E54(v5, &qword_10007E768, &qword_10005BCE0);
  }

  else
  {
  }

  v7 = v1[2];
  (*(v1[4] + 8))(v1[5], v1[3]);
  v8 = *(v7 + OBJC_IVAR___NDFeedItemPoolManager_activeRefreshTask);
  os_unfair_lock_lock((v8 + 24));

  *(v8 + 16) = 0;
  os_unfair_lock_unlock((v8 + 24));

  v9 = v1[1];

  return v9();
}

uint64_t sub_100047500()
{
  v1[38] = v0;
  v2 = type metadata accessor for MultiDatabaseFeedItemPool.DatabaseSource();
  v1[39] = v2;
  v1[40] = *(v2 - 8);
  v1[41] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[42] = v3;
  v1[43] = *(v3 - 8);
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v1[48] = v4;
  v1[49] = *(v4 - 8);
  v1[50] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v1[51] = v5;
  v1[52] = *(v5 - 8);
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v6 = type metadata accessor for DropboxFeedItemPool();
  v1[57] = v6;
  v1[58] = *(v6 - 8);
  v1[59] = swift_task_alloc();

  return _swift_task_switch(sub_100047778, 0, 0);
}

uint64_t sub_100047778()
{
  v0[60] = sub_10004AC3C();
  v1 = v0[38];
  v0[61] = type metadata accessor for ProxyScoringServiceConnection();
  v2 = static ProxyScoringServiceConnection.shared.getter();
  ProxyScoringServiceConnection.pushInterest()();

  sub_100002288((v1 + OBJC_IVAR___NDFeedItemPoolManager_userContextProvider), *(v1 + OBJC_IVAR___NDFeedItemPoolManager_userContextProvider + 24));
  sub_10002358C(v0 + 2);
  v0[34] = _swiftEmptyArrayStorage;
  v0[35] = _swiftEmptyArrayStorage;
  v3 = OBJC_IVAR___NDFeedItemPoolManager_myArticlesInventory;
  v0[62] = OBJC_IVAR___NDFeedItemPoolManager_myArticlesInventory;
  v4 = swift_task_alloc();
  v0[63] = v4;
  *v4 = v0;
  v4[1] = sub_10004795C;

  return sub_10004B0A4(v1 + v3, (v0 + 35), (v0 + 34));
}

uint64_t sub_10004795C()
{
  v2 = *v1;
  *(*v1 + 512) = v0;

  if (v0)
  {
    v2[10] = v2[2];
    sub_100022E54((v2 + 10), &qword_10007F4A0, &qword_10005BE80);
    v2[36] = v2[3];
    sub_100022E54((v2 + 36), &qword_10007F4A0, &qword_10005BE80);
    v2[33] = v2[4];
    sub_100022E54((v2 + 33), &qword_10007F4A0, &qword_10005BE80);
    v2[37] = v2[5];
    sub_100022E54((v2 + 37), &qword_10007F4A0, &qword_10005BE80);
    v2[12] = v2[6];
    sub_100022E54((v2 + 12), &qword_10007F4A8, &qword_10005BE88);

    v3 = sub_100049580;
  }

  else
  {
    v3 = sub_100047B14;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100047B14()
{
  v1 = (v0[38] + v0[62]);
  sub_100002288(v1, v1[3]);
  FeedItemInventoryType.validateHasScoredItems()();
  if (v2)
  {

    v0[13] = v0[2];
    sub_100022E54((v0 + 13), &qword_10007F4A0, &qword_10005BE80);
    v0[14] = v0[3];
    sub_100022E54((v0 + 14), &qword_10007F4A0, &qword_10005BE80);
    v0[15] = v0[4];
    sub_100022E54((v0 + 15), &qword_10007F4A0, &qword_10005BE80);
    v0[16] = v0[5];
    sub_100022E54((v0 + 16), &qword_10007F4A0, &qword_10005BE80);
    v0[17] = v0[6];
    sub_100022E54((v0 + 17), &qword_10007F4A8, &qword_10005BE88);
    v3 = static ProxyScoringServiceConnection.shared.getter();
    ProxyScoringServiceConnection.popInterest()();

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[38];
    v7 = OBJC_IVAR___NDFeedItemPoolManager_globalESLInventory;
    v8 = swift_task_alloc();
    v0[65] = v8;
    *v8 = v0;
    v8[1] = sub_100047D84;

    return sub_10004BCD0(v6 + v7, (v0 + 35), (v0 + 34));
  }
}

uint64_t sub_100047D84()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
  }

  v4 = *(v2 + 304);
  v5 = OBJC_IVAR___NDFeedItemPoolManager_perTagESLInventory;
  v6 = swift_task_alloc();
  *(v2 + 528) = v6;
  *v6 = v3;
  v6[1] = sub_100047ED8;

  return sub_10004C80C(v4 + v5, v2 + 280, v2 + 272);
}

uint64_t sub_100047ED8()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
  }

  v4 = *(v2 + 304);
  v5 = OBJC_IVAR___NDFeedItemPoolManager_peopleAlsoReadInventory;
  v6 = swift_task_alloc();
  *(v2 + 536) = v6;
  *v6 = v3;
  v6[1] = sub_10004802C;

  return sub_10004D1E8(v4 + v5, v2 + 280, v2 + 272);
}

uint64_t sub_10004802C()
{
  *(*v1 + 544) = v0;

  if (v0)
  {

    v2 = sub_100049698;
  }

  else
  {
    v2 = sub_100048148;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100048148()
{
  v61 = v0;
  v1 = v0[68];
  swift_beginAccess();
  v2 = v0[35];
  v0[69] = v2;
  if (!*(v2 + 16))
  {

    v0[28] = v0[2];
    sub_100022E54((v0 + 28), &qword_10007F4A0, &qword_10005BE80);
    v0[29] = v0[3];
    sub_100022E54((v0 + 29), &qword_10007F4A0, &qword_10005BE80);
    v0[30] = v0[4];
    sub_100022E54((v0 + 30), &qword_10007F4A0, &qword_10005BE80);
    v0[31] = v0[5];
    sub_100022E54((v0 + 31), &qword_10007F4A0, &qword_10005BE80);
    v0[32] = v0[6];
    sub_100022E54((v0 + 32), &qword_10007F4A8, &qword_10005BE88);
    sub_1000505FC();
    swift_allocError();
    *v37 = 1;
    *(v37 + 8) = 1;
    swift_willThrow();

    v38 = static ProxyScoringServiceConnection.shared.getter();
    ProxyScoringServiceConnection.popInterest()();

    v39 = v0[1];
LABEL_13:

    return v39();
  }

  v3 = *(v0[60] + 16);
  v0[70] = v3;
  if (!v3)
  {

    v0[23] = v0[2];
    sub_100022E54((v0 + 23), &qword_10007F4A0, &qword_10005BE80);
    v0[24] = v0[3];
    sub_100022E54((v0 + 24), &qword_10007F4A0, &qword_10005BE80);
    v0[25] = v0[4];
    sub_100022E54((v0 + 25), &qword_10007F4A0, &qword_10005BE80);
    v0[26] = v0[5];
    sub_100022E54((v0 + 26), &qword_10007F4A0, &qword_10005BE80);
    v0[27] = v0[6];
    sub_100022E54((v0 + 27), &qword_10007F4A8, &qword_10005BE88);
LABEL_12:

    v40 = static ProxyScoringServiceConnection.shared.getter();
    ProxyScoringServiceConnection.popInterest()();

    v39 = v0[1];
    goto LABEL_13;
  }

  v4 = 0;
  while (1)
  {
    v0[71] = v4;
    v5 = v0[55];
    v6 = v0[60] + 16 * v4;
    v7 = *(v6 + 32);
    v0[72] = v7;
    v8 = *(v6 + 40);
    v0[73] = v8;

    sub_100046940(v7, v8, v5);
    v59 = v7;
    if (v1)
    {
      break;
    }

    v9 = v0[55];
    v10 = v0[52];
    v11 = v0[53];
    v12 = v0[51];
    URL.appendingPathComponent(_:)();
    v13 = *(v10 + 8);
    v13(v9, v12);
    sub_100046940(v7, v8, v11);
    v14 = v0[53];
    v15 = v0[51];
    URL.appendingPathComponent(_:)();
    v13(v14, v15);
    v16 = Data.init(contentsOf:options:)();
    v18 = v17;
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    type metadata accessor for NDManagedFeedItemPoolOptions();
    sub_100050B1C(&qword_10007F490, &type metadata accessor for NDManagedFeedItemPoolOptions, &protocol conformance descriptor for NDManagedFeedItemPoolOptions);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v13(v0[54], v0[51]);

    sub_1000153DC(v16, v18);
    v19 = v0[11];
    NDManagedFeedItemPoolOptions.configurationSet.getter();

    DropboxFeedItemPool.init(fileURL:configurationSet:)();
    v21 = v0[58];
    v20 = v0[59];
    v22 = v0[57];
    v23 = v0[49];
    v24 = v0[50];
    v25 = v0[48];
    DropboxFeedItemPool.refreshDate.getter();
    Date.timeIntervalSinceNow.getter();
    v27 = v26;
    (*(v23 + 8))(v24, v25);
    (*(v21 + 8))(v20, v22);
    if (fabs(v27) > 300.0)
    {
      goto LABEL_17;
    }

    static Logger.feedItemPool.getter();

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    v30 = os_log_type_enabled(v28, v29);
    v31 = v0[45];
    v33 = v0[42];
    v32 = v0[43];
    if (v30)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v60[0] = v35;
      *v34 = 136446210;
      v36 = sub_100021F24(v59, v8, v60);

      *(v34 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v28, v29, "no need to rebuild feed item dropbox, name=%{public}s", v34, 0xCu);
      sub_10001653C(v35);
    }

    else
    {
    }

    (*(v32 + 8))(v31, v33);
    v1 = 0;
    v4 = v0[71] + 1;
    if (v4 == v0[70])
    {

      v0[18] = v0[2];
      sub_100022E54((v0 + 18), &qword_10007F4A0, &qword_10005BE80);
      v0[19] = v0[3];
      sub_100022E54((v0 + 19), &qword_10007F4A0, &qword_10005BE80);
      v0[20] = v0[4];
      sub_100022E54((v0 + 20), &qword_10007F4A0, &qword_10005BE80);
      v0[21] = v0[5];
      sub_100022E54((v0 + 21), &qword_10007F4A0, &qword_10005BE80);
      v0[22] = v0[6];
      sub_100022E54((v0 + 22), &qword_10007F4A8, &qword_10005BE88);
      goto LABEL_12;
    }
  }

LABEL_17:
  static Logger.feedItemPool.getter();

  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();

  v44 = os_log_type_enabled(v42, v43);
  v45 = v0[47];
  v47 = v0[42];
  v46 = v0[43];
  if (v44)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v60[0] = v49;
    *v48 = 136446210;
    *(v48 + 4) = sub_100021F24(v59, v8, v60);
    _os_log_impl(&_mh_execute_header, v42, v43, "will rebuild feed item dropbox, name=%{public}s", v48, 0xCu);
    sub_10001653C(v49);
  }

  v50 = *(v46 + 8);
  result = v50(v45, v47);
  v0[74] = v50;
  v51 = v0[69];
  v52 = *(v51 + 16);
  if (v52)
  {
    v53 = v0[40];
    v54 = (*(v53 + 80) + 32) & ~*(v53 + 80);
    (*(v53 + 16))(v0[41], v51 + v54, v0[39]);
    sub_1000427F8(v51, v51 + v54, 1, (2 * v52) | 1);
    v56 = v55;
    v0[75] = v55;
    v57 = swift_task_alloc();
    v0[76] = v57;
    *v57 = v0;
    v57[1] = sub_100048B1C;
    v58 = v0[41];

    return sub_10004DBC4(v59, v8, v58, v56, (v0 + 2));
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100048B1C()
{
  v2 = *v1;
  *(*v1 + 616) = v0;

  (*(v2[40] + 8))(v2[41], v2[39]);

  if (v0)
  {
    v3 = sub_10004A068;
  }

  else
  {
    v3 = sub_100048CA0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100048CA0(uint64_t a1)
{
  v71 = v1;
  static Logger.feedItemPool.getter();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[74];
  v6 = v1[73];
  if (v4)
  {
    v7 = v1[72];
    v68 = v1[46];
    v8 = v1[42];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v70[0] = v10;
    *v9 = 136446210;
    v11 = sub_100021F24(v7, v6, v70);

    *(v9 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "did rebuild feed item dropbox, name=%{public}s", v9, 0xCu);
    sub_10001653C(v10);

    v12 = v68;
  }

  else
  {
    v13 = v1[46];
    v8 = v1[42];

    v12 = v13;
  }

  v5(v12, v8);
  v14 = v1[71] + 1;
  if (v14 == v1[70])
  {
LABEL_5:

    v1[18] = v1[2];
    sub_100022E54((v1 + 18), &qword_10007F4A0, &qword_10005BE80);
    v1[19] = v1[3];
    sub_100022E54((v1 + 19), &qword_10007F4A0, &qword_10005BE80);
    v1[20] = v1[4];
    sub_100022E54((v1 + 20), &qword_10007F4A0, &qword_10005BE80);
    v1[21] = v1[5];
    sub_100022E54((v1 + 21), &qword_10007F4A0, &qword_10005BE80);
    v1[22] = v1[6];
    sub_100022E54((v1 + 22), &qword_10007F4A8, &qword_10005BE88);

    v15 = static ProxyScoringServiceConnection.shared.getter();
    ProxyScoringServiceConnection.popInterest()();

    v16 = v1[1];

    return v16();
  }

  else
  {
    v18 = v1[77];
    while (1)
    {
      v1[71] = v14;
      v22 = v1[55];
      v23 = v1[60] + 16 * v14;
      v24 = *(v23 + 32);
      v1[72] = v24;
      v25 = *(v23 + 40);
      v1[73] = v25;

      sub_100046940(v24, v25, v22);
      v69 = v24;
      if (v18)
      {
        break;
      }

      v26 = v1[55];
      v27 = v1[52];
      v28 = v1[53];
      v29 = v1[51];
      URL.appendingPathComponent(_:)();
      v30 = *(v27 + 8);
      v30(v26, v29);
      sub_100046940(v24, v25, v28);
      v31 = v1[53];
      v32 = v1[51];
      URL.appendingPathComponent(_:)();
      v30(v31, v32);
      v33 = Data.init(contentsOf:options:)();
      v35 = v34;
      type metadata accessor for JSONDecoder();
      swift_allocObject();
      JSONDecoder.init()();
      type metadata accessor for NDManagedFeedItemPoolOptions();
      sub_100050B1C(&qword_10007F490, &type metadata accessor for NDManagedFeedItemPoolOptions, &protocol conformance descriptor for NDManagedFeedItemPoolOptions);
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      v30(v1[54], v1[51]);

      sub_1000153DC(v33, v35);
      v36 = v1[11];
      NDManagedFeedItemPoolOptions.configurationSet.getter();

      DropboxFeedItemPool.init(fileURL:configurationSet:)();
      v38 = v1[58];
      v37 = v1[59];
      v39 = v1[57];
      v40 = v1[49];
      v41 = v1[50];
      v42 = v1[48];
      DropboxFeedItemPool.refreshDate.getter();
      Date.timeIntervalSinceNow.getter();
      v44 = v43;
      (*(v40 + 8))(v41, v42);
      (*(v38 + 8))(v37, v39);
      if (fabs(v44) > 300.0)
      {
        goto LABEL_16;
      }

      static Logger.feedItemPool.getter();

      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.default.getter();

      v47 = os_log_type_enabled(v45, v46);
      v48 = v1[45];
      v50 = v1[42];
      v49 = v1[43];
      if (v47)
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v70[0] = v20;
        *v19 = 136446210;
        v21 = sub_100021F24(v69, v25, v70);

        *(v19 + 4) = v21;
        _os_log_impl(&_mh_execute_header, v45, v46, "no need to rebuild feed item dropbox, name=%{public}s", v19, 0xCu);
        sub_10001653C(v20);
      }

      else
      {
      }

      (*(v49 + 8))(v48, v50);
      v18 = 0;
      v14 = v1[71] + 1;
      if (v14 == v1[70])
      {
        goto LABEL_5;
      }
    }

LABEL_16:
    static Logger.feedItemPool.getter();

    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();

    v53 = os_log_type_enabled(v51, v52);
    v54 = v1[47];
    v56 = v1[42];
    v55 = v1[43];
    if (v53)
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v70[0] = v58;
      *v57 = 136446210;
      *(v57 + 4) = sub_100021F24(v69, v25, v70);
      _os_log_impl(&_mh_execute_header, v51, v52, "will rebuild feed item dropbox, name=%{public}s", v57, 0xCu);
      sub_10001653C(v58);
    }

    v59 = *(v55 + 8);
    result = v59(v54, v56);
    v1[74] = v59;
    v60 = v1[69];
    v61 = *(v60 + 16);
    if (v61)
    {
      v62 = v1[40];
      v63 = (*(v62 + 80) + 32) & ~*(v62 + 80);
      (*(v62 + 16))(v1[41], v60 + v63, v1[39]);
      sub_1000427F8(v60, v60 + v63, 1, (2 * v61) | 1);
      v65 = v64;
      v1[75] = v64;
      v66 = swift_task_alloc();
      v1[76] = v66;
      *v66 = v1;
      v66[1] = sub_100048B1C;
      v67 = v1[41];

      return sub_10004DBC4(v69, v25, v67, v65, (v1 + 2));
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100049580()
{

  v1 = static ProxyScoringServiceConnection.shared.getter();
  ProxyScoringServiceConnection.popInterest()();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100049698()
{
  v60 = v0;
  swift_beginAccess();
  v1 = v0[35];
  v0[69] = v1;
  if (!*(v1 + 16))
  {

    v0[28] = v0[2];
    sub_100022E54((v0 + 28), &qword_10007F4A0, &qword_10005BE80);
    v0[29] = v0[3];
    sub_100022E54((v0 + 29), &qword_10007F4A0, &qword_10005BE80);
    v0[30] = v0[4];
    sub_100022E54((v0 + 30), &qword_10007F4A0, &qword_10005BE80);
    v0[31] = v0[5];
    sub_100022E54((v0 + 31), &qword_10007F4A0, &qword_10005BE80);
    v0[32] = v0[6];
    sub_100022E54((v0 + 32), &qword_10007F4A8, &qword_10005BE88);
    sub_1000505FC();
    swift_allocError();
    *v36 = 1;
    *(v36 + 8) = 1;
    swift_willThrow();

    v37 = static ProxyScoringServiceConnection.shared.getter();
    ProxyScoringServiceConnection.popInterest()();

    v38 = v0[1];
LABEL_12:

    return v38();
  }

  v2 = *(v0[60] + 16);
  v0[70] = v2;
  if (!v2)
  {

    v0[23] = v0[2];
    sub_100022E54((v0 + 23), &qword_10007F4A0, &qword_10005BE80);
    v0[24] = v0[3];
    sub_100022E54((v0 + 24), &qword_10007F4A0, &qword_10005BE80);
    v0[25] = v0[4];
    sub_100022E54((v0 + 25), &qword_10007F4A0, &qword_10005BE80);
    v0[26] = v0[5];
    sub_100022E54((v0 + 26), &qword_10007F4A0, &qword_10005BE80);
    v0[27] = v0[6];
    sub_100022E54((v0 + 27), &qword_10007F4A8, &qword_10005BE88);
LABEL_11:

    v39 = static ProxyScoringServiceConnection.shared.getter();
    ProxyScoringServiceConnection.popInterest()();

    v38 = v0[1];
    goto LABEL_12;
  }

  v3 = 0;
  while (1)
  {
    v0[71] = v3;
    v4 = v0[55];
    v5 = v0[60] + 16 * v3;
    v6 = *(v5 + 32);
    v0[72] = v6;
    v7 = *(v5 + 40);
    v0[73] = v7;

    sub_100046940(v6, v7, v4);
    v58 = v6;
    v8 = v0[55];
    v9 = v0[52];
    v10 = v0[53];
    v11 = v0[51];
    URL.appendingPathComponent(_:)();
    v12 = *(v9 + 8);
    v12(v8, v11);
    sub_100046940(v6, v7, v10);
    v13 = v0[53];
    v14 = v0[51];
    URL.appendingPathComponent(_:)();
    v12(v13, v14);
    v15 = Data.init(contentsOf:options:)();
    v17 = v16;
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    type metadata accessor for NDManagedFeedItemPoolOptions();
    sub_100050B1C(&qword_10007F490, &type metadata accessor for NDManagedFeedItemPoolOptions, &protocol conformance descriptor for NDManagedFeedItemPoolOptions);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v12(v0[54], v0[51]);

    sub_1000153DC(v15, v17);
    v18 = v0[11];
    NDManagedFeedItemPoolOptions.configurationSet.getter();

    DropboxFeedItemPool.init(fileURL:configurationSet:)();
    v20 = v0[58];
    v19 = v0[59];
    v21 = v0[57];
    v22 = v0[49];
    v23 = v0[50];
    v24 = v0[48];
    DropboxFeedItemPool.refreshDate.getter();
    Date.timeIntervalSinceNow.getter();
    v26 = v25;
    (*(v22 + 8))(v23, v24);
    (*(v20 + 8))(v19, v21);
    if (fabs(v26) > 300.0)
    {
      break;
    }

    static Logger.feedItemPool.getter();

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();

    v29 = os_log_type_enabled(v27, v28);
    v30 = v0[45];
    v32 = v0[42];
    v31 = v0[43];
    if (v29)
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v59[0] = v34;
      *v33 = 136446210;
      v35 = sub_100021F24(v58, v7, v59);

      *(v33 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v27, v28, "no need to rebuild feed item dropbox, name=%{public}s", v33, 0xCu);
      sub_10001653C(v34);
    }

    else
    {
    }

    (*(v31 + 8))(v30, v32);
    v3 = v0[71] + 1;
    if (v3 == v0[70])
    {

      v0[18] = v0[2];
      sub_100022E54((v0 + 18), &qword_10007F4A0, &qword_10005BE80);
      v0[19] = v0[3];
      sub_100022E54((v0 + 19), &qword_10007F4A0, &qword_10005BE80);
      v0[20] = v0[4];
      sub_100022E54((v0 + 20), &qword_10007F4A0, &qword_10005BE80);
      v0[21] = v0[5];
      sub_100022E54((v0 + 21), &qword_10007F4A0, &qword_10005BE80);
      v0[22] = v0[6];
      sub_100022E54((v0 + 22), &qword_10007F4A8, &qword_10005BE88);
      goto LABEL_11;
    }
  }

  static Logger.feedItemPool.getter();

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();

  v43 = os_log_type_enabled(v41, v42);
  v44 = v0[47];
  v46 = v0[42];
  v45 = v0[43];
  if (v43)
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v59[0] = v48;
    *v47 = 136446210;
    *(v47 + 4) = sub_100021F24(v58, v7, v59);
    _os_log_impl(&_mh_execute_header, v41, v42, "will rebuild feed item dropbox, name=%{public}s", v47, 0xCu);
    sub_10001653C(v48);
  }

  v49 = *(v45 + 8);
  result = v49(v44, v46);
  v0[74] = v49;
  v50 = v0[69];
  v51 = *(v50 + 16);
  if (v51)
  {
    v52 = v0[40];
    v53 = (*(v52 + 80) + 32) & ~*(v52 + 80);
    (*(v52 + 16))(v0[41], v50 + v53, v0[39]);
    sub_1000427F8(v50, v50 + v53, 1, (2 * v51) | 1);
    v55 = v54;
    v0[75] = v54;
    v56 = swift_task_alloc();
    v0[76] = v56;
    *v56 = v0;
    v56[1] = sub_100048B1C;
    v57 = v0[41];

    return sub_10004DBC4(v58, v7, v57, v55, (v0 + 2));
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10004A068(uint64_t a1)
{
  v73 = v1;
  static Logger.feedItemPool.getter();

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[74];
  v6 = v1[73];
  if (v4)
  {
    v7 = v1[72];
    v70 = v1[44];
    v69 = v1[42];
    v8 = v1[74];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v72[0] = v11;
    *v9 = 136446466;
    v12 = sub_100021F24(v7, v6, v72);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2114;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&_mh_execute_header, v2, v3, "failed to rebuild feed item dropbox, name=%{public}s, error=%{public}@", v9, 0x16u);
    sub_100022E54(v10, &qword_10007E768, &qword_10005BCE0);

    sub_10001653C(v11);

    v8(v70, v69);
  }

  else
  {
    v14 = v1[44];
    v15 = v1[42];

    v5(v14, v15);
  }

  v16 = v1[71] + 1;
  if (v16 == v1[70])
  {
LABEL_5:

    v1[18] = v1[2];
    sub_100022E54((v1 + 18), &qword_10007F4A0, &qword_10005BE80);
    v1[19] = v1[3];
    sub_100022E54((v1 + 19), &qword_10007F4A0, &qword_10005BE80);
    v1[20] = v1[4];
    sub_100022E54((v1 + 20), &qword_10007F4A0, &qword_10005BE80);
    v1[21] = v1[5];
    sub_100022E54((v1 + 21), &qword_10007F4A0, &qword_10005BE80);
    v1[22] = v1[6];
    sub_100022E54((v1 + 22), &qword_10007F4A8, &qword_10005BE88);

    v17 = static ProxyScoringServiceConnection.shared.getter();
    ProxyScoringServiceConnection.popInterest()();

    v18 = v1[1];

    return v18();
  }

  else
  {
    while (1)
    {
      v1[71] = v16;
      v23 = v1[55];
      v24 = v1[60] + 16 * v16;
      v25 = *(v24 + 32);
      v1[72] = v25;
      v26 = *(v24 + 40);
      v1[73] = v26;

      sub_100046940(v25, v26, v23);
      v71 = v25;
      v27 = v1[55];
      v28 = v1[52];
      v29 = v1[53];
      v30 = v1[51];
      URL.appendingPathComponent(_:)();
      v31 = *(v28 + 8);
      v31(v27, v30);
      sub_100046940(v25, v26, v29);
      v32 = v1[53];
      v33 = v1[51];
      URL.appendingPathComponent(_:)();
      v31(v32, v33);
      v34 = Data.init(contentsOf:options:)();
      v36 = v35;
      type metadata accessor for JSONDecoder();
      swift_allocObject();
      JSONDecoder.init()();
      type metadata accessor for NDManagedFeedItemPoolOptions();
      sub_100050B1C(&qword_10007F490, &type metadata accessor for NDManagedFeedItemPoolOptions, &protocol conformance descriptor for NDManagedFeedItemPoolOptions);
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      v31(v1[54], v1[51]);

      sub_1000153DC(v34, v36);
      v37 = v1[11];
      NDManagedFeedItemPoolOptions.configurationSet.getter();

      DropboxFeedItemPool.init(fileURL:configurationSet:)();
      v39 = v1[58];
      v38 = v1[59];
      v40 = v1[57];
      v41 = v1[49];
      v42 = v1[50];
      v43 = v1[48];
      DropboxFeedItemPool.refreshDate.getter();
      Date.timeIntervalSinceNow.getter();
      v45 = v44;
      (*(v41 + 8))(v42, v43);
      (*(v39 + 8))(v38, v40);
      if (fabs(v45) > 300.0)
      {
        break;
      }

      static Logger.feedItemPool.getter();

      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();

      v48 = os_log_type_enabled(v46, v47);
      v49 = v1[45];
      v51 = v1[42];
      v50 = v1[43];
      if (v48)
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v72[0] = v21;
        *v20 = 136446210;
        v22 = sub_100021F24(v71, v26, v72);

        *(v20 + 4) = v22;
        _os_log_impl(&_mh_execute_header, v46, v47, "no need to rebuild feed item dropbox, name=%{public}s", v20, 0xCu);
        sub_10001653C(v21);
      }

      else
      {
      }

      (*(v50 + 8))(v49, v51);
      v16 = v1[71] + 1;
      if (v16 == v1[70])
      {
        goto LABEL_5;
      }
    }

    static Logger.feedItemPool.getter();

    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();

    v54 = os_log_type_enabled(v52, v53);
    v55 = v1[47];
    v57 = v1[42];
    v56 = v1[43];
    if (v54)
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v72[0] = v59;
      *v58 = 136446210;
      *(v58 + 4) = sub_100021F24(v71, v26, v72);
      _os_log_impl(&_mh_execute_header, v52, v53, "will rebuild feed item dropbox, name=%{public}s", v58, 0xCu);
      sub_10001653C(v59);
    }

    v60 = *(v56 + 8);
    result = v60(v55, v57);
    v1[74] = v60;
    v61 = v1[69];
    v62 = *(v61 + 16);
    if (v62)
    {
      v63 = v1[40];
      v64 = (*(v63 + 80) + 32) & ~*(v63 + 80);
      (*(v63 + 16))(v1[41], v61 + v64, v1[39]);
      sub_1000427F8(v61, v61 + v64, 1, (2 * v62) | 1);
      v66 = v65;
      v1[75] = v65;
      v67 = swift_task_alloc();
      v1[76] = v67;
      *v67 = v1;
      v67[1] = sub_100048B1C;
      v68 = v1[41];

      return sub_10004DBC4(v71, v26, v68, v66, (v1 + 2));
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10004A9D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100015140(&unk_10007EB50, &qword_10005AB40);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_100022DA4(a3, v22 - v9, &unk_10007EB50, &qword_10005AB40);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100022E54(v10, &unk_10007EB50, &qword_10005AB40);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void *sub_10004AC3C()
{
  v1 = type metadata accessor for URL.DirectoryHint();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = type metadata accessor for URL();
  v5 = *(v43 - 8);
  v6 = __chkstk_darwin(v43);
  v42 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = v36 - v8;
  sub_100015140(&qword_10007F340, &qword_10005BDC0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10005A4F0;
  v11 = *(v0 + OBJC_IVAR___NDFeedItemPoolManager_rootDirectoryName + 8);
  *(v10 + 32) = *(v0 + OBJC_IVAR___NDFeedItemPoolManager_rootDirectoryName);
  *(v10 + 40) = v11;
  (*(v2 + 104))(v4, enum case for URL.DirectoryHint.isDirectory(_:), v1);
  sub_100050AC8();

  URL.appending<A>(components:directoryHint:)();

  (*(v2 + 8))(v4, v1);
  v12 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v13);
  v15 = v14;
  v44 = 0;
  v16 = [v12 contentsOfDirectoryAtURL:v14 includingPropertiesForKeys:0 options:0 error:&v44];

  v17 = v44;
  if (v16)
  {
    v18 = v43;
    v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v17;

    v21 = *(v19 + 16);
    if (v21)
    {
      v37 = v9;
      v44 = _swiftEmptyArrayStorage;
      sub_100042998(0, v21, 0);
      v4 = v44;
      v22 = *(v5 + 16);
      v23 = *(v5 + 80);
      v36[1] = v19;
      v24 = v19 + ((v23 + 32) & ~v23);
      v38 = *(v5 + 72);
      v39 = v22;
      v40 = v5 + 16;
      v41 = (v5 + 8);
      do
      {
        v25 = v42;
        v26 = v43;
        v39(v42, v24, v43);
        v27 = URL.lastPathComponent.getter();
        v29 = v28;
        v30 = *v41;
        (*v41)(v25, v26);
        v44 = v4;
        v32 = v4[2];
        v31 = v4[3];
        if (v32 >= v31 >> 1)
        {
          sub_100042998((v31 > 1), v32 + 1, 1);
          v4 = v44;
        }

        v4[2] = v32 + 1;
        v33 = &v4[2 * v32];
        v33[4] = v27;
        v33[5] = v29;
        v24 += v38;
        --v21;
      }

      while (v21);
      v30(v37, v43);
    }

    else
    {

      (*(v5 + 8))(v9, v18);
      return _swiftEmptyArrayStorage;
    }
  }

  else
  {
    v34 = v44;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v5 + 8))(v9, v43);
  }

  return v4;
}

uint64_t sub_10004B0A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  v4 = type metadata accessor for MultiDatabaseFeedItemPool.DatabaseSource();
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();
  sub_100015140(&qword_10007E790, &qword_10005BD10);
  v3[17] = swift_task_alloc();
  refreshed = type metadata accessor for FeedItemInventoryRefreshPolicy();
  v3[18] = refreshed;
  v3[19] = *(refreshed - 8);
  v3[20] = swift_task_alloc();

  return _swift_task_switch(sub_10004B1FC, 0, 0);
}

uint64_t sub_10004B1FC()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = v0[11];
  v5 = v4[3];
  v6 = v4[4];
  sub_100002288(v4, v5);
  (*(v2 + 104))(v1, enum case for FeedItemInventoryRefreshPolicy.default(_:), v3);
  v7 = swift_task_alloc();
  v0[21] = v7;
  *v7 = v0;
  v7[1] = sub_10004B2F0;
  v8 = v0[20];

  return dispatch thunk of FeedItemInventoryType.refreshIfNeeded(policy:)(v8, v5, v6);
}

uint64_t sub_10004B2F0()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = v2[20];
  v4 = v2[19];
  v5 = v2[18];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_10004B784;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_10004B488;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10004B488()
{
  v1 = *(v0 + 176);
  sub_100002288(*(v0 + 88), *(*(v0 + 88) + 24));
  dispatch thunk of FeedItemInventoryType.lastRefreshDate.getter();
  if (v1)
  {
LABEL_5:

    v7 = *(v0 + 8);

    return v7();
  }

  v2 = *(v0 + 136);
  v3 = type metadata accessor for Date();
  v4 = (*(*(v3 - 8) + 48))(v2, 1, v3);
  sub_100022E54(v2, &qword_10007E790, &qword_10005BD10);
  if (v4 == 1)
  {
    sub_1000505FC();
    swift_allocError();
    *v5 = 0;
    *(v5 + 8) = 1;
    swift_willThrow();
    goto LABEL_5;
  }

  sub_100002288(*(v0 + 88), *(*(v0 + 88) + 24));
  v6 = dispatch thunk of FeedItemInventoryType.databaseRef()();
  v10 = *(v0 + 120);
  v9 = *(v0 + 128);
  v11 = *(v0 + 112);
  v12 = *(v0 + 96);
  *v9 = v6;
  (*(v10 + 104))(v9, enum case for MultiDatabaseFeedItemPool.DatabaseSource.myArticles(_:), v11);
  swift_beginAccess();
  v13 = *v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v12 = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v25 = *(v0 + 96);
    v13 = sub_1000514E8(0, v13[2] + 1, 1, v13);
    *v25 = v13;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    v13 = sub_1000514E8((v15 > 1), v16 + 1, 1, v13);
  }

  v18 = *(v0 + 120);
  v17 = *(v0 + 128);
  v19 = *(v0 + 112);
  v20 = *(v0 + 88);
  v21 = *(v0 + 96);
  v13[2] = v16 + 1;
  (*(v18 + 32))(v13 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v16, v17, v19);
  *v21 = v13;
  swift_endAccess();
  v22 = v20[3];
  v23 = v20[4];
  sub_100002288(v20, v22);
  v24 = swift_task_alloc();
  *(v0 + 184) = v24;
  *v24 = v0;
  v24[1] = sub_10004BA80;

  return dispatch thunk of FeedItemInventoryType.tokenForCoordinatedRead()(v22, v23);
}

uint64_t sub_10004B784()
{
  sub_100002288(*(v0 + 88), *(*(v0 + 88) + 24));
  dispatch thunk of FeedItemInventoryType.lastRefreshDate.getter();
  v1 = *(v0 + 136);
  v2 = type metadata accessor for Date();
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  sub_100022E54(v1, &qword_10007E790, &qword_10005BD10);
  if (v3 == 1)
  {
    sub_1000505FC();
    swift_allocError();
    *v4 = 0;
    *(v4 + 8) = 1;
    swift_willThrow();

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    sub_100002288(*(v0 + 88), *(*(v0 + 88) + 24));
    v5 = dispatch thunk of FeedItemInventoryType.databaseRef()();
    v9 = *(v0 + 120);
    v8 = *(v0 + 128);
    v10 = *(v0 + 112);
    v11 = *(v0 + 96);
    *v8 = v5;
    (*(v9 + 104))(v8, enum case for MultiDatabaseFeedItemPool.DatabaseSource.myArticles(_:), v10);
    swift_beginAccess();
    v12 = *v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v11 = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v24 = *(v0 + 96);
      v12 = sub_1000514E8(0, v12[2] + 1, 1, v12);
      *v24 = v12;
    }

    v15 = v12[2];
    v14 = v12[3];
    if (v15 >= v14 >> 1)
    {
      v12 = sub_1000514E8((v14 > 1), v15 + 1, 1, v12);
    }

    v17 = *(v0 + 120);
    v16 = *(v0 + 128);
    v18 = *(v0 + 112);
    v19 = *(v0 + 88);
    v20 = *(v0 + 96);
    v12[2] = v15 + 1;
    (*(v17 + 32))(v12 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v15, v16, v18);
    *v20 = v12;
    swift_endAccess();
    v21 = v19[3];
    v22 = v19[4];
    sub_100002288(v19, v21);
    v23 = swift_task_alloc();
    *(v0 + 184) = v23;
    *v23 = v0;
    v23[1] = sub_10004BA80;

    return dispatch thunk of FeedItemInventoryType.tokenForCoordinatedRead()(v21, v22);
  }
}

uint64_t sub_10004BA80(uint64_t a1)
{
  v3 = *v2;
  v3[8] = v2;
  v3[9] = a1;
  v3[10] = v1;
  v4 = *v2;

  if (v1)
  {

    v5 = v4[1];

    return v5();
  }

  else
  {

    return _swift_task_switch(sub_10004BBE0, 0, 0);
  }
}

uint64_t sub_10004BBE0()
{
  v1 = *(v0 + 104);
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10004BCD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  v4 = type metadata accessor for MultiDatabaseFeedItemPool.DatabaseSource();
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();
  sub_100015140(&qword_10007E790, &qword_10005BD10);
  v3[17] = swift_task_alloc();
  refreshed = type metadata accessor for FeedItemInventoryRefreshPolicy();
  v3[18] = refreshed;
  v3[19] = *(refreshed - 8);
  v3[20] = swift_task_alloc();

  return _swift_task_switch(sub_10004BE28, 0, 0);
}

uint64_t sub_10004BE28()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = v0[11];
  v5 = v4[3];
  v6 = v4[4];
  sub_100002288(v4, v5);
  (*(v2 + 104))(v1, enum case for FeedItemInventoryRefreshPolicy.default(_:), v3);
  v7 = swift_task_alloc();
  v0[21] = v7;
  *v7 = v0;
  v7[1] = sub_10004BF1C;
  v8 = v0[20];

  return dispatch thunk of FeedItemInventoryType.refreshIfNeeded(policy:)(v8, v5, v6);
}

uint64_t sub_10004BF1C()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = v2[20];
  v4 = v2[19];
  v5 = v2[18];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_10004C3B0;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_10004C0B4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10004C0B4()
{
  v1 = *(v0 + 176);
  sub_100002288(*(v0 + 88), *(*(v0 + 88) + 24));
  dispatch thunk of FeedItemInventoryType.lastRefreshDate.getter();
  if (v1)
  {
LABEL_5:

    v7 = *(v0 + 8);

    return v7();
  }

  v2 = *(v0 + 136);
  v3 = type metadata accessor for Date();
  v4 = (*(*(v3 - 8) + 48))(v2, 1, v3);
  sub_100022E54(v2, &qword_10007E790, &qword_10005BD10);
  if (v4 == 1)
  {
    sub_1000505FC();
    swift_allocError();
    *v5 = 0;
    *(v5 + 8) = 1;
    swift_willThrow();
    goto LABEL_5;
  }

  sub_100002288(*(v0 + 88), *(*(v0 + 88) + 24));
  v6 = dispatch thunk of FeedItemInventoryType.databaseRef()();
  v10 = *(v0 + 120);
  v9 = *(v0 + 128);
  v11 = *(v0 + 112);
  v12 = *(v0 + 96);
  *v9 = v6;
  (*(v10 + 104))(v9, enum case for MultiDatabaseFeedItemPool.DatabaseSource.globalESL(_:), v11);
  swift_beginAccess();
  v13 = *v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v12 = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v25 = *(v0 + 96);
    v13 = sub_1000514E8(0, v13[2] + 1, 1, v13);
    *v25 = v13;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    v13 = sub_1000514E8((v15 > 1), v16 + 1, 1, v13);
  }

  v18 = *(v0 + 120);
  v17 = *(v0 + 128);
  v19 = *(v0 + 112);
  v20 = *(v0 + 88);
  v21 = *(v0 + 96);
  v13[2] = v16 + 1;
  (*(v18 + 32))(v13 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v16, v17, v19);
  *v21 = v13;
  swift_endAccess();
  v22 = v20[3];
  v23 = v20[4];
  sub_100002288(v20, v22);
  v24 = swift_task_alloc();
  *(v0 + 184) = v24;
  *v24 = v0;
  v24[1] = sub_10004C6AC;

  return dispatch thunk of FeedItemInventoryType.tokenForCoordinatedRead()(v22, v23);
}

uint64_t sub_10004C3B0()
{
  sub_100002288(*(v0 + 88), *(*(v0 + 88) + 24));
  dispatch thunk of FeedItemInventoryType.lastRefreshDate.getter();
  v1 = *(v0 + 136);
  v2 = type metadata accessor for Date();
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  sub_100022E54(v1, &qword_10007E790, &qword_10005BD10);
  if (v3 == 1)
  {
    sub_1000505FC();
    swift_allocError();
    *v4 = 0;
    *(v4 + 8) = 1;
    swift_willThrow();

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    sub_100002288(*(v0 + 88), *(*(v0 + 88) + 24));
    v5 = dispatch thunk of FeedItemInventoryType.databaseRef()();
    v9 = *(v0 + 120);
    v8 = *(v0 + 128);
    v10 = *(v0 + 112);
    v11 = *(v0 + 96);
    *v8 = v5;
    (*(v9 + 104))(v8, enum case for MultiDatabaseFeedItemPool.DatabaseSource.globalESL(_:), v10);
    swift_beginAccess();
    v12 = *v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v11 = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v24 = *(v0 + 96);
      v12 = sub_1000514E8(0, v12[2] + 1, 1, v12);
      *v24 = v12;
    }

    v15 = v12[2];
    v14 = v12[3];
    if (v15 >= v14 >> 1)
    {
      v12 = sub_1000514E8((v14 > 1), v15 + 1, 1, v12);
    }

    v17 = *(v0 + 120);
    v16 = *(v0 + 128);
    v18 = *(v0 + 112);
    v19 = *(v0 + 88);
    v20 = *(v0 + 96);
    v12[2] = v15 + 1;
    (*(v17 + 32))(v12 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v15, v16, v18);
    *v20 = v12;
    swift_endAccess();
    v21 = v19[3];
    v22 = v19[4];
    sub_100002288(v19, v21);
    v23 = swift_task_alloc();
    *(v0 + 184) = v23;
    *v23 = v0;
    v23[1] = sub_10004C6AC;

    return dispatch thunk of FeedItemInventoryType.tokenForCoordinatedRead()(v21, v22);
  }
}

uint64_t sub_10004C6AC(uint64_t a1)
{
  v3 = *v2;
  v3[8] = v2;
  v3[9] = a1;
  v3[10] = v1;
  v4 = *v2;

  if (v1)
  {

    v5 = v4[1];

    return v5();
  }

  else
  {

    return _swift_task_switch(sub_100050C30, 0, 0);
  }
}

uint64_t sub_10004C80C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  v4 = type metadata accessor for MultiDatabaseFeedItemPool.DatabaseSource();
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();
  sub_100015140(&qword_10007E790, &qword_10005BD10);
  v3[17] = swift_task_alloc();
  refreshed = type metadata accessor for FeedItemInventoryRefreshPolicy();
  v3[18] = refreshed;
  v3[19] = *(refreshed - 8);
  v3[20] = swift_task_alloc();

  return _swift_task_switch(sub_10004C964, 0, 0);
}

uint64_t sub_10004C964()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = v0[11];
  v5 = v4[3];
  v6 = v4[4];
  sub_100002288(v4, v5);
  (*(v2 + 104))(v1, enum case for FeedItemInventoryRefreshPolicy.default(_:), v3);
  v7 = swift_task_alloc();
  v0[21] = v7;
  *v7 = v0;
  v7[1] = sub_10004CA58;
  v8 = v0[20];

  return dispatch thunk of FeedItemInventoryType.refreshIfNeeded(policy:)(v8, v5, v6);
}

uint64_t sub_10004CA58()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = v2[20];
  v4 = v2[19];
  v5 = v2[18];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_10004CEEC;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_10004CBF0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10004CBF0()
{
  v1 = *(v0 + 176);
  sub_100002288(*(v0 + 88), *(*(v0 + 88) + 24));
  dispatch thunk of FeedItemInventoryType.lastRefreshDate.getter();
  if (v1)
  {
LABEL_5:

    v7 = *(v0 + 8);

    return v7();
  }

  v2 = *(v0 + 136);
  v3 = type metadata accessor for Date();
  v4 = (*(*(v3 - 8) + 48))(v2, 1, v3);
  sub_100022E54(v2, &qword_10007E790, &qword_10005BD10);
  if (v4 == 1)
  {
    sub_1000505FC();
    swift_allocError();
    *v5 = 0;
    *(v5 + 8) = 1;
    swift_willThrow();
    goto LABEL_5;
  }

  sub_100002288(*(v0 + 88), *(*(v0 + 88) + 24));
  v6 = dispatch thunk of FeedItemInventoryType.databaseRef()();
  v10 = *(v0 + 120);
  v9 = *(v0 + 128);
  v11 = *(v0 + 112);
  v12 = *(v0 + 96);
  *v9 = v6;
  (*(v10 + 104))(v9, enum case for MultiDatabaseFeedItemPool.DatabaseSource.perTagESL(_:), v11);
  swift_beginAccess();
  v13 = *v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v12 = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v25 = *(v0 + 96);
    v13 = sub_1000514E8(0, v13[2] + 1, 1, v13);
    *v25 = v13;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    v13 = sub_1000514E8((v15 > 1), v16 + 1, 1, v13);
  }

  v18 = *(v0 + 120);
  v17 = *(v0 + 128);
  v19 = *(v0 + 112);
  v20 = *(v0 + 88);
  v21 = *(v0 + 96);
  v13[2] = v16 + 1;
  (*(v18 + 32))(v13 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v16, v17, v19);
  *v21 = v13;
  swift_endAccess();
  v22 = v20[3];
  v23 = v20[4];
  sub_100002288(v20, v22);
  v24 = swift_task_alloc();
  *(v0 + 184) = v24;
  *v24 = v0;
  v24[1] = sub_10004C6AC;

  return dispatch thunk of FeedItemInventoryType.tokenForCoordinatedRead()(v22, v23);
}

uint64_t sub_10004CEEC()
{
  sub_100002288(*(v0 + 88), *(*(v0 + 88) + 24));
  dispatch thunk of FeedItemInventoryType.lastRefreshDate.getter();
  v1 = *(v0 + 136);
  v2 = type metadata accessor for Date();
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  sub_100022E54(v1, &qword_10007E790, &qword_10005BD10);
  if (v3 == 1)
  {
    sub_1000505FC();
    swift_allocError();
    *v4 = 0;
    *(v4 + 8) = 1;
    swift_willThrow();

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    sub_100002288(*(v0 + 88), *(*(v0 + 88) + 24));
    v5 = dispatch thunk of FeedItemInventoryType.databaseRef()();
    v9 = *(v0 + 120);
    v8 = *(v0 + 128);
    v10 = *(v0 + 112);
    v11 = *(v0 + 96);
    *v8 = v5;
    (*(v9 + 104))(v8, enum case for MultiDatabaseFeedItemPool.DatabaseSource.perTagESL(_:), v10);
    swift_beginAccess();
    v12 = *v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v11 = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v24 = *(v0 + 96);
      v12 = sub_1000514E8(0, v12[2] + 1, 1, v12);
      *v24 = v12;
    }

    v15 = v12[2];
    v14 = v12[3];
    if (v15 >= v14 >> 1)
    {
      v12 = sub_1000514E8((v14 > 1), v15 + 1, 1, v12);
    }

    v17 = *(v0 + 120);
    v16 = *(v0 + 128);
    v18 = *(v0 + 112);
    v19 = *(v0 + 88);
    v20 = *(v0 + 96);
    v12[2] = v15 + 1;
    (*(v17 + 32))(v12 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v15, v16, v18);
    *v20 = v12;
    swift_endAccess();
    v21 = v19[3];
    v22 = v19[4];
    sub_100002288(v19, v21);
    v23 = swift_task_alloc();
    *(v0 + 184) = v23;
    *v23 = v0;
    v23[1] = sub_10004C6AC;

    return dispatch thunk of FeedItemInventoryType.tokenForCoordinatedRead()(v21, v22);
  }
}

uint64_t sub_10004D1E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  v4 = type metadata accessor for MultiDatabaseFeedItemPool.DatabaseSource();
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();
  sub_100015140(&qword_10007E790, &qword_10005BD10);
  v3[17] = swift_task_alloc();
  refreshed = type metadata accessor for FeedItemInventoryRefreshPolicy();
  v3[18] = refreshed;
  v3[19] = *(refreshed - 8);
  v3[20] = swift_task_alloc();

  return _swift_task_switch(sub_10004D340, 0, 0);
}

uint64_t sub_10004D340()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = v0[11];
  v5 = v4[3];
  v6 = v4[4];
  sub_100002288(v4, v5);
  (*(v2 + 104))(v1, enum case for FeedItemInventoryRefreshPolicy.default(_:), v3);
  v7 = swift_task_alloc();
  v0[21] = v7;
  *v7 = v0;
  v7[1] = sub_10004D434;
  v8 = v0[20];

  return dispatch thunk of FeedItemInventoryType.refreshIfNeeded(policy:)(v8, v5, v6);
}

uint64_t sub_10004D434()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = v2[20];
  v4 = v2[19];
  v5 = v2[18];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_10004D8C8;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_10004D5CC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10004D5CC()
{
  v1 = *(v0 + 176);
  sub_100002288(*(v0 + 88), *(*(v0 + 88) + 24));
  dispatch thunk of FeedItemInventoryType.lastRefreshDate.getter();
  if (v1)
  {
LABEL_5:

    v7 = *(v0 + 8);

    return v7();
  }

  v2 = *(v0 + 136);
  v3 = type metadata accessor for Date();
  v4 = (*(*(v3 - 8) + 48))(v2, 1, v3);
  sub_100022E54(v2, &qword_10007E790, &qword_10005BD10);
  if (v4 == 1)
  {
    sub_1000505FC();
    swift_allocError();
    *v5 = 0;
    *(v5 + 8) = 1;
    swift_willThrow();
    goto LABEL_5;
  }

  sub_100002288(*(v0 + 88), *(*(v0 + 88) + 24));
  v6 = dispatch thunk of FeedItemInventoryType.databaseRef()();
  v10 = *(v0 + 120);
  v9 = *(v0 + 128);
  v11 = *(v0 + 112);
  v12 = *(v0 + 96);
  *v9 = v6;
  (*(v10 + 104))(v9, enum case for MultiDatabaseFeedItemPool.DatabaseSource.peopleAlsoRead(_:), v11);
  swift_beginAccess();
  v13 = *v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v12 = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v25 = *(v0 + 96);
    v13 = sub_1000514E8(0, v13[2] + 1, 1, v13);
    *v25 = v13;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    v13 = sub_1000514E8((v15 > 1), v16 + 1, 1, v13);
  }

  v18 = *(v0 + 120);
  v17 = *(v0 + 128);
  v19 = *(v0 + 112);
  v20 = *(v0 + 88);
  v21 = *(v0 + 96);
  v13[2] = v16 + 1;
  (*(v18 + 32))(v13 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v16, v17, v19);
  *v21 = v13;
  swift_endAccess();
  v22 = v20[3];
  v23 = v20[4];
  sub_100002288(v20, v22);
  v24 = swift_task_alloc();
  *(v0 + 184) = v24;
  *v24 = v0;
  v24[1] = sub_10004C6AC;

  return dispatch thunk of FeedItemInventoryType.tokenForCoordinatedRead()(v22, v23);
}

uint64_t sub_10004D8C8()
{
  sub_100002288(*(v0 + 88), *(*(v0 + 88) + 24));
  dispatch thunk of FeedItemInventoryType.lastRefreshDate.getter();
  v1 = *(v0 + 136);
  v2 = type metadata accessor for Date();
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  sub_100022E54(v1, &qword_10007E790, &qword_10005BD10);
  if (v3 == 1)
  {
    sub_1000505FC();
    swift_allocError();
    *v4 = 0;
    *(v4 + 8) = 1;
    swift_willThrow();

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    sub_100002288(*(v0 + 88), *(*(v0 + 88) + 24));
    v5 = dispatch thunk of FeedItemInventoryType.databaseRef()();
    v9 = *(v0 + 120);
    v8 = *(v0 + 128);
    v10 = *(v0 + 112);
    v11 = *(v0 + 96);
    *v8 = v5;
    (*(v9 + 104))(v8, enum case for MultiDatabaseFeedItemPool.DatabaseSource.peopleAlsoRead(_:), v10);
    swift_beginAccess();
    v12 = *v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v11 = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v24 = *(v0 + 96);
      v12 = sub_1000514E8(0, v12[2] + 1, 1, v12);
      *v24 = v12;
    }

    v15 = v12[2];
    v14 = v12[3];
    if (v15 >= v14 >> 1)
    {
      v12 = sub_1000514E8((v14 > 1), v15 + 1, 1, v12);
    }

    v17 = *(v0 + 120);
    v16 = *(v0 + 128);
    v18 = *(v0 + 112);
    v19 = *(v0 + 88);
    v20 = *(v0 + 96);
    v12[2] = v15 + 1;
    (*(v17 + 32))(v12 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v15, v16, v18);
    *v20 = v12;
    swift_endAccess();
    v21 = v19[3];
    v22 = v19[4];
    sub_100002288(v19, v21);
    v23 = swift_task_alloc();
    *(v0 + 184) = v23;
    *v23 = v0;
    v23[1] = sub_10004C6AC;

    return dispatch thunk of FeedItemInventoryType.tokenForCoordinatedRead()(v21, v22);
  }
}

uint64_t sub_10004DBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[41] = a5;
  v6[42] = v5;
  v6[39] = a3;
  v6[40] = a4;
  v6[37] = a1;
  v6[38] = a2;
  sub_100015140(&unk_10007EFC0, &qword_10005BEB0);
  v6[43] = swift_task_alloc();
  v7 = type metadata accessor for MergedFeedItemSequence();
  v6[44] = v7;
  v6[45] = *(v7 - 8);
  v6[46] = swift_task_alloc();
  sub_100015140(&qword_10007F4B0, &qword_10005BEB8);
  v6[47] = swift_task_alloc();
  v8 = type metadata accessor for Expression();
  v6[48] = v8;
  v6[49] = *(v8 - 8);
  v6[50] = swift_task_alloc();
  v9 = sub_100015140(&qword_10007F4B8, &qword_10005BEC0);
  v6[51] = v9;
  v6[52] = *(v9 - 8);
  v6[53] = swift_task_alloc();
  v6[54] = sub_100015140(&qword_10007F4C0, &qword_10005BEC8);
  v6[55] = swift_task_alloc();
  v6[56] = sub_100015140(&qword_10007F4C8, &qword_10005BED0);
  v6[57] = swift_task_alloc();
  v10 = type metadata accessor for MultiDatabaseFeedItemPool.DatabaseSource();
  v6[58] = v10;
  v6[59] = *(v10 - 8);
  v6[60] = swift_task_alloc();
  sub_100015140(&qword_10007F4D0, &qword_10005BED8);
  v6[61] = swift_task_alloc();
  v11 = type metadata accessor for FeedItemOrder();
  v6[62] = v11;
  v6[63] = *(v11 - 8);
  v6[64] = swift_task_alloc();
  v6[65] = swift_task_alloc();
  v6[66] = swift_task_alloc();
  v12 = sub_100015140(&qword_10007F4D8, &qword_10005BEE0);
  v6[67] = v12;
  v6[68] = *(v12 - 8);
  v6[69] = swift_task_alloc();
  v6[70] = swift_task_alloc();
  v6[71] = sub_100015140(&qword_10007F4E0, &qword_10005BEE8);
  v6[72] = swift_task_alloc();
  v6[73] = swift_task_alloc();
  v6[74] = sub_100015140(&qword_10007F4E8, &unk_10005BEF0);
  v6[75] = swift_task_alloc();
  v6[76] = swift_task_alloc();
  v13 = sub_100015140(&qword_10007F310, qword_10005BD58);
  v6[77] = v13;
  v6[78] = *(v13 - 8);
  v6[79] = swift_task_alloc();
  v6[80] = swift_task_alloc();
  v6[81] = swift_task_alloc();
  v14 = type metadata accessor for URL();
  v6[82] = v14;
  v6[83] = *(v14 - 8);
  v6[84] = swift_task_alloc();
  v6[85] = swift_task_alloc();
  v6[86] = swift_task_alloc();
  v6[87] = swift_task_alloc();
  v6[88] = swift_task_alloc();
  v6[89] = swift_task_alloc();
  v6[90] = swift_task_alloc();

  return _swift_task_switch(sub_10004E168, 0, 0);
}

uint64_t sub_10004E168()
{
  v1 = v0;
  sub_100046940(v0[37], v0[38], v0[89]);
  v2 = v0[89];
  v3 = v0[83];
  v4 = v0[82];
  URL.appendingPathComponent(_:)();
  v5 = *(v3 + 8);
  v5(v2, v4);
  v6 = Data.init(contentsOf:options:)();
  v8 = v7;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  type metadata accessor for NDManagedFeedItemPoolOptions();
  sub_100050B1C(&qword_10007F490, &type metadata accessor for NDManagedFeedItemPoolOptions, &protocol conformance descriptor for NDManagedFeedItemPoolOptions);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v5(v0[90], v0[82]);

  sub_1000153DC(v6, v8);
  v9 = v0[15];
  v10 = swift_allocObject();
  *(v10 + 16) = NDManagedFeedItemPoolOptions.preferredCount.getter();
  v11 = swift_allocObject();
  v12 = NDManagedFeedItemPoolOptions.preferredCount.getter();
  NDManagedFeedItemPoolOptions.preferredESLRatio.getter();
  *(v11 + 16) = ceil(v13 * v12);
  v182 = v11;
  v183 = v10;
  v172 = v9;
  MultiDatabaseFeedItemPool.DatabaseSource.resolveDatabase()();
  v158 = (v11 + 16);
  v14 = v1[66];
  v15 = v1[63];
  type metadata accessor for FeedItemAndScoreEntity();
  v16 = *(v15 + 104);
  LODWORD(v184) = enum case for FeedItemOrder.forYouScoreDescending(_:);
  v16(v14);
  sub_100050B1C(&qword_10007F4F0, &type metadata accessor for FeedItemAndScoreEntity, &protocol conformance descriptor for FeedItemAndScoreEntity);
  FeedItemDatabase.allFeedItemEntities<A>(_:order:)();
  v176 = v16;
  v156 = (v10 + 16);
  v157 = v5;
  v190 = v1[81];
  v165 = v1[77];
  v175 = v1[76];
  v17 = v1[74];
  v18 = v1[73];
  v19 = v1[71];
  v20 = v1[70];
  v21 = v1[68];
  v22 = v1[67];
  v23 = v1[61];
  v24 = v1[41];
  v186 = v1[42];
  v188 = v1[40];
  v181 = (v1[63] + 8);
  v178 = *v181;
  (*v181)(v1[66], v1[62]);
  v25 = *(v21 + 32);
  v25(v23, v20, v22);
  v162 = v25;
  v25(v18, v23, v22);
  v163 = v19;
  v26 = (v18 + *(v19 + 44));
  *v26 = sub_100050C34;
  v26[1] = 0;
  sub_100050A60(v18, v175, &qword_10007F4E0, &qword_10005BEE8);
  v164 = v17;
  v27 = (v175 + *(v17 + 36));
  *v27 = sub_100050710;
  v27[1] = v183;
  v1[11] = *v24;
  v1[26] = v24[1];
  v1[36] = v24[2];
  v1[13] = v24[3];
  v1[14] = v24[4];
  v28 = swift_allocObject();
  *(v28 + 16) = v182;
  *(v28 + 24) = v186;
  *(v28 + 32) = v172;
  v29 = v24[4];
  v30 = *(v24 + 1);
  *(v28 + 40) = *v24;
  *(v28 + 56) = v30;
  *(v28 + 72) = v29;
  sub_100050A60(v175, v190, &qword_10007F4E8, &unk_10005BEF0);
  v31 = (v190 + *(v165 + 36));
  *v31 = sub_100050718;
  v31[1] = v28;
  v32 = *(v188 + 16);
  v189 = v1;
  if (v32)
  {
    v161 = v1[78];
    v33 = v1[59];
    v34 = v1[42];
    v35 = v1[40] + ((*(v33 + 80) + 32) & ~*(v33 + 80));

    v36 = v34;
    v159 = v172;
    sub_100022DA4((v1 + 11), (v1 + 16), &qword_10007F4A0, &qword_10005BE80);
    sub_100022DA4((v1 + 26), (v1 + 17), &qword_10007F4A0, &qword_10005BE80);
    sub_100022DA4((v1 + 36), (v1 + 18), &qword_10007F4A0, &qword_10005BE80);
    sub_100022DA4((v1 + 13), (v1 + 19), &qword_10007F4A0, &qword_10005BE80);
    sub_100022DA4((v1 + 14), (v1 + 20), &qword_10007F4A8, &qword_10005BE88);
    v37 = *(v33 + 16);
    v33 += 16;
    v173 = _swiftEmptyArrayStorage;
    v191 = (v33 - 8);
    v186 = *(v33 + 56);
    v38 = v184;
    v174 = v37;
    v37(v1[60], v35, v1[58]);
    while (1)
    {
      MultiDatabaseFeedItemPool.DatabaseSource.resolveDatabase()();
      (v176)(v1[65], v38, v1[62]);
      FeedItemDatabase.allFeedItemEntities<A>(_:order:)();
      v170 = v1[79];
      v171 = v1[80];
      v39 = v1[72];
      v166 = v1[69];
      v167 = v1[75];
      v40 = v1[67];
      v41 = v189[65];
      v42 = v189[62];
      v43 = v189[61];
      v44 = v189[60];
      v45 = v189[58];
      v168 = v189[42];
      v169 = v189[41];

      v46 = v42;
      v1 = v189;
      v178(v41, v46);
      (*v191)(v44, v45);
      v162(v43, v166, v40);
      v162(v39, v43, v40);
      v47 = (v39 + *(v163 + 44));
      *v47 = sub_100050C34;
      v47[1] = 0;
      v48 = swift_allocObject();
      *(v48 + 16) = v183;
      *(v48 + 24) = v182;
      sub_100050A60(v39, v167, &qword_10007F4E0, &qword_10005BEE8);
      v49 = (v167 + *(v164 + 36));
      *v49 = sub_1000509F0;
      v49[1] = v48;
      v50 = swift_allocObject();
      *(v50 + 16) = v168;
      *(v50 + 24) = v159;
      v51 = *(v169 + 32);
      v52 = *(v169 + 16);
      *(v50 + 32) = *v169;
      *(v50 + 48) = v52;
      *(v50 + 64) = v51;
      sub_100050A60(v167, v170, &qword_10007F4E8, &unk_10005BEF0);
      v53 = (v170 + *(v165 + 36));
      *v53 = sub_100050C14;
      v53[1] = v50;
      sub_100050A60(v170, v171, &qword_10007F310, qword_10005BD58);

      v54 = v168;
      v55 = v159;
      sub_100022DA4((v1 + 11), (v1 + 27), &qword_10007F4A0, &qword_10005BE80);
      sub_100022DA4((v1 + 26), (v1 + 28), &qword_10007F4A0, &qword_10005BE80);
      sub_100022DA4((v1 + 36), (v1 + 29), &qword_10007F4A0, &qword_10005BE80);
      sub_100022DA4((v1 + 13), (v1 + 30), &qword_10007F4A0, &qword_10005BE80);
      sub_100022DA4((v1 + 14), (v1 + 31), &qword_10007F4A8, &qword_10005BE88);
      v56 = v173;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v56 = sub_10005182C(0, v173[2] + 1, 1, v173);
      }

      v58 = v56[2];
      v57 = v56[3];
      v38 = v184;
      if (v58 >= v57 >> 1)
      {
        v56 = sub_10005182C((v57 > 1), v58 + 1, 1, v56);
      }

      v59 = v189[80];
      v56[2] = v58 + 1;
      v173 = v56;
      sub_100050A60(v59, v56 + ((*(v161 + 80) + 32) & ~*(v161 + 80)) + *(v161 + 72) * v58, &qword_10007F310, qword_10005BD58);
      v35 += v186;
      if (!--v32)
      {
        break;
      }

      v174(v189[60], v35, v189[58]);
    }
  }

  else
  {
    v60 = v1[42];

    v61 = v60;
    v62 = v172;
    sub_100022DA4((v1 + 11), (v1 + 32), &qword_10007F4A0, &qword_10005BE80);
    sub_100022DA4((v1 + 26), (v1 + 33), &qword_10007F4A0, &qword_10005BE80);
    sub_100022DA4((v1 + 36), (v1 + 34), &qword_10007F4A0, &qword_10005BE80);
    sub_100022DA4((v1 + 13), (v1 + 35), &qword_10007F4A0, &qword_10005BE80);
    sub_100022DA4((v1 + 14), (v1 + 12), &qword_10007F4A8, &qword_10005BE88);
    v173 = _swiftEmptyArrayStorage;
  }

  NDManagedFeedItemPoolOptions.includeAllFromTagIDs.getter();
  v63 = FeedItemDatabase.feedContextForTagIDs(_:)();
  v64 = v1;

  v65 = v63 + 64;
  v66 = -1;
  v67 = -1 << *(v63 + 32);
  if (-v67 < 64)
  {
    v66 = ~(-1 << -v67);
  }

  v68 = v66 & *(v63 + 64);
  v69 = (63 - v67) >> 6;

  v70 = 0;
  v71 = _swiftEmptyArrayStorage;
  v72 = v63;
  if (v68)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v73 = v70 + 1;
    if (__OFADD__(v70, 1))
    {
      break;
    }

    if (v73 >= v69)
    {
      v80 = v64;
      v81 = v64[64];
      v82 = v64[62];
      v83 = v64[50];
      v84 = v80[48];
      v85 = v80[49];

      v86 = swift_allocObject();
      v86[2] = static FeedItemEntity.Columns.feedID.getter();
      v86[3] = v87;
      v88 = sub_10003E364(v71);

      v86[4] = v88;
      *v83 = v86;
      (*(v85 + 104))(v83, enum case for Expression.in(_:), v84);
      (v176)(v81, v184, v82);
      FeedItemDatabase.allFeedItemEntities<A>(_:where:order:)();
      v89 = v80[81];
      v185 = v80[78];
      v92 = v80[64];
      v93 = v80[62];
      v179 = v80[57];
      v180 = v80[56];
      v95 = v80[54];
      v94 = v80[55];
      v97 = v80[52];
      v96 = v80[53];
      v100 = v80 + 50;
      v99 = v80[50];
      v98 = v100[1];
      v101 = v189[49];
      v102 = v189[48];
      v187 = v89;
      v103 = v189[47];
      v177 = v189[42];
      v104 = v189[41];
      v178(v92, v93);
      (*(v101 + 8))(v99, v102);
      v105 = *(v97 + 32);
      v105(v103, v96, v98);
      v105(v94, v103, v98);
      v106 = v189;
      v107 = (v94 + *(v95 + 44));
      *v107 = sub_100050C34;
      v107[1] = 0;
      v108 = swift_allocObject();
      *(v108 + 16) = v177;
      *(v108 + 24) = v172;
      v109 = *(v104 + 32);
      v110 = *(v104 + 16);
      *(v108 + 32) = *v104;
      *(v108 + 48) = v110;
      *(v108 + 64) = v109;
      sub_100050A60(v94, v179, &qword_10007F4C0, &qword_10005BEC8);
      v111 = (v179 + *(v180 + 36));
      *v111 = sub_100050728;
      v111[1] = v108;
      sub_100015140(&qword_10007F4F8, &unk_10005BF00);
      v112 = (*(v185 + 80) + 32) & ~*(v185 + 80);
      v113 = swift_allocObject();
      *(v113 + 16) = xmmword_10005A4F0;
      sub_100022DA4(v187, v113 + v112, &qword_10007F310, qword_10005BD58);
      v114 = v177;
      v115 = v172;
      sub_100022DA4((v106 + 11), (v106 + 21), &qword_10007F4A0, &qword_10005BE80);
      sub_100022DA4((v106 + 26), (v106 + 22), &qword_10007F4A0, &qword_10005BE80);
      sub_100022DA4((v106 + 36), (v106 + 23), &qword_10007F4A0, &qword_10005BE80);
      sub_100022DA4((v106 + 13), (v106 + 24), &qword_10007F4A0, &qword_10005BE80);
      sub_100022DA4((v106 + 14), (v106 + 25), &qword_10007F4A8, &qword_10005BE88);
      sub_100050854(v173);
      sub_10003E460(v113);

      sub_100015140(&qword_10007F320, &qword_10005BDA0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10005A4F0;
      *(inited + 56) = v180;
      *(inited + 64) = sub_10005098C();
      v117 = sub_10002377C((inited + 32));
      sub_100022DA4(v179, v117, &qword_10007F4C8, &qword_10005BED0);
      sub_10005074C(inited);
      MergedFeedItemSequence.init(sequences:)();
      sub_100046940(v106[37], v106[38], v106[87]);
      v118 = v189[87];
      v119 = v189[82];
      v120 = v189[46];
      URL.appendingPathComponent(_:)();
      v157(v118, v119);
      v121 = objc_allocWithZone(FCPBMessageStreamWriter);
      URL._bridgeToObjectiveC()(v122);
      v124 = v123;
      v125 = [v121 initWithURL:v123];

      v126 = v115;
      v127 = v125;
      sub_10002A588(v120, v126, v127, v156, v158);
      v128 = v189[85];
      v130 = v189[37];
      v129 = v189[38];
      v184 = v127;

      v186 = v126;
      v131 = v129;
      v71 = 0;
      sub_100046940(v130, v131, v128);
      goto LABEL_29;
    }

    v68 = *(v65 + 8 * v73);
    ++v70;
    if (v68)
    {
      v70 = v73;
      do
      {
LABEL_18:
        v74 = (*(v72 + 56) + 24 * (__clz(__rbit64(v68)) | (v70 << 6)));
        v76 = *v74;
        v75 = v74[1];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v71 = sub_100051A1C(0, *(v71 + 2) + 1, 1, v71);
        }

        v78 = *(v71 + 2);
        v77 = *(v71 + 3);
        if (v78 >= v77 >> 1)
        {
          v71 = sub_100051A1C((v77 > 1), v78 + 1, 1, v71);
        }

        v68 &= v68 - 1;
        *(v71 + 2) = v78 + 1;
        v79 = &v71[16 * v78];
        *(v79 + 4) = v76;
        *(v79 + 5) = v75;
        v64 = v189;
      }

      while (v68);
    }
  }

  __break(1u);
LABEL_29:
  v132 = v189[86];
  v133 = v189[85];
  v134 = v189[84];
  v135 = v189[83];
  v136 = v189[82];
  URL.appendingPathComponent(_:)();
  v157(v133, v136);
  (*(v135 + 16))(v134, v132, v136);
  v137 = objc_allocWithZone(FCFileAccessToken);
  v138 = sub_1000504B0(v134);
  v139 = v189[88];
  v140 = v189[86];
  if (v71)
  {
    v141 = v189[82];
    v192 = v189[81];
    v142 = v189[57];
    v144 = v189[45];
    v143 = v189[46];
    v145 = v189[44];

    v157(v140, v141);
    v157(v139, v141);
    (*(v144 + 8))(v143, v145);
    sub_100022E54(v142, &qword_10007F4C8, &qword_10005BED0);
    sub_100022E54(v192, &qword_10007F310, qword_10005BD58);
  }

  else
  {
    v146 = v138;
    v147 = v189[45];
    v148 = [objc_opt_self() defaultManager];
    NSFileManager.replaceItemAt(_:withItemAt:backupItemName:options:)();
    v193 = (v147 + 8);
    v149 = v189[88];
    v150 = v189[86];
    v151 = v189[82];
    v160 = v189[81];
    v152 = v189[57];
    v153 = v189[46];
    v154 = v189[43];
    v155 = v189[44];

    sub_100022E54(v154, &unk_10007EFC0, &qword_10005BEB0);
    v157(v150, v151);
    v157(v149, v151);
    (*v193)(v153, v155);
    sub_100022E54(v152, &qword_10007F4C8, &qword_10005BED0);
    sub_100022E54(v160, &qword_10007F310, qword_10005BD58);
  }

  v90 = v189[1];

  return v90();
}

BOOL sub_10004FB54(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (*(a2 + 16) < 1)
  {
    return 0;
  }

  ScoredFeedItem.score.getter();
  return v3 > 0.0;
}

uint64_t sub_10004FBB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  if (*(a2 + 16) <= 0.0 && (v7 = ScoredFeedItem.feedItem.getter(), v8 = [v7 isEvergreen], v7, (v8 & 1) != 0))
  {
    v9 = 0;
  }

  else
  {
    v10 = ScoredFeedItem.feedItem.getter();
    v11 = NDManagedFeedItemPoolOptions.preferredFilterOptions.getter();
    v12 = objc_autoreleasePoolPush();
    sub_10004FE14(v10, v11, a5, &v14);
    objc_autoreleasePoolPop(v12);

    v9 = v14 ^ 1;
  }

  return v9 & 1;
}

BOOL sub_10004FC8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (*(a2 + 16) < 1)
  {
    return 0;
  }

  swift_beginAccess();
  if (*(a3 + 16) <= 0.0)
  {
    return 0;
  }

  ScoredFeedItem.score.getter();
  return v5 > 0.0;
}