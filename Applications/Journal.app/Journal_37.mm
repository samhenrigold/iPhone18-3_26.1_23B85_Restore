double *sub_1003E6C74(double *result, int64_t a2, char a3, double *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 3);
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

  v14 = *(a4 + 2);
  if (v13 <= v14)
  {
    v15 = *(a4 + 2);
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_1000F24EC(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    *(v16 + 2) = v14;
    *(v16 + 3) = 2 * (v18 >> 4);
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

    a4[2] = 0.0;
  }

  else
  {
    sub_1000F24EC(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

double *sub_1003E6DF0(double *result, int64_t a2, char a3, double *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 3);
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

  v14 = *(a4 + 2);
  if (v13 <= v14)
  {
    v15 = *(a4 + 2);
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_1000F24EC(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    *(v16 + 2) = v14;
    *(v16 + 3) = 2 * (v18 >> 3);
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

    a4[2] = 0.0;
  }

  else
  {
    sub_1000F24EC(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

double *sub_1003E6F74(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F24EC(&qword_100AE2CF8, &qword_100954498);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_1003E7094(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F24EC(&qword_100AE2CE8, &qword_100954490);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_1003E71B4(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F24EC(&qword_100AE2BD8, &qword_100954388);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  v14 = 24 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

double *sub_1003E72EC(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F24EC(&qword_100AE2BB8, &qword_100954368);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_1003E74A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1000F24EC(a3, a4);
  v6 = swift_allocObject();
  v7 = j__malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 17;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 4);
  return result;
}

double *sub_1003E7574(uint64_t a1, uint64_t a2)
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

  sub_1000F24EC(&qword_100AD65A8, &qword_100945288);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

double *sub_1003E7634(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1000F24EC(a3, a4);
  v10 = *(sub_1000F24EC(a5, a6) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (v11)
  {
    if ((result - v12) != 0x8000000000000000 || v11 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v11);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double *sub_1003E7784(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1000F24EC(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = j__malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double *sub_1003E7880(uint64_t a1, uint64_t a2)
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

  sub_1000F24EC(&unk_100AD4780, &unk_100941070);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

double *sub_1003E7908(uint64_t a1, uint64_t a2)
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

  sub_1000F24EC(&qword_100AE2C70, &qword_10095C3F0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

NSString sub_1003E799C()
{
  result = String._bridgeToObjectiveC()();
  qword_100B2F8B0 = result;
  return result;
}

NSString sub_1003E79D4()
{
  result = String._bridgeToObjectiveC()();
  qword_100B2F8B8 = result;
  return result;
}

uint64_t sub_1003E7A0C()
{
  v9 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v9 - 8);
  __chkstk_darwin(v9);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  sub_1000F24EC(&qword_100ADFA68, &qword_100950E98);
  swift_allocObject();
  *(v0 + 16) = PassthroughSubject.init()();
  *(v0 + 24) = 0;
  v6 = sub_100005508();
  v8[0] = "isIdleTimerPaused";
  v8[1] = v6;
  static DispatchQoS.background.getter();
  v10 = _swiftEmptyArrayStorage;
  sub_10001DD88(&qword_100AD1500, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000F24EC(&qword_100AD1508, &unk_100954530);
  sub_10000B58C(&qword_100AD1510, &qword_100AD1508, &unk_100954530, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v9);
  *(v0 + 32) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  Logger.init(subsystem:category:)();
  sub_1003E7CF4();
  return v0;
}

double sub_1003E7CF4()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100ADFAA0, &qword_100950F50);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  v18 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v5 = *(v18 - 8);
  __chkstk_darwin(v18);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&qword_100ADFAA8, &qword_100950F58);
  v9 = *(v8 - 8);
  v19 = v8;
  v20 = v9;
  __chkstk_darwin(v8);
  v11 = &v17 - v10;
  v22 = *(v0 + 16);

  static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
  v12 = *(v0 + 32);
  v21 = v12;
  v13 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  v17 = v12;
  sub_1000F24EC(&qword_100ADFA68, &qword_100950E98);
  sub_100005508();
  sub_10000B58C(&qword_100ADFAB0, &qword_100ADFA68, &qword_100950E98, &protocol conformance descriptor for PassthroughSubject<A, B>);
  sub_10001DD88(&qword_100ADFAB8, sub_100005508, &protocol conformance descriptor for OS_dispatch_queue);
  Publisher.debounce<A>(for:scheduler:options:)();
  sub_1003E95B8(v4);

  (*(v5 + 8))(v7, v18);

  swift_allocObject();
  swift_weakInit();
  sub_10000B58C(&qword_100ADFAC0, &qword_100ADFAA8, &qword_100950F58, &protocol conformance descriptor for Publishers.Debounce<A, B>);
  v14 = v19;
  v15 = Publisher<>.sink(receiveValue:)();

  (*(v20 + 8))(v11, v14);
  *(v1 + 24) = v15;

  return result;
}

double sub_1003E8080(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1003E80D8();
  }

  return result;
}

double sub_1003E80D8()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AD5170, &unk_100943680);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v22 = v0;
    v12 = v11;
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136315138;
    static Date.now.getter();
    v14 = Date.debugDescription.getter();
    v16 = v15;
    (*(v6 + 8))(v8, v5);
    v17 = sub_100008458(v14, v16, &v23);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "🫀 Reset inactivity timer at %s", v12, 0xCu);
    sub_10000BA7C(v13);

    v1 = v22;
  }

  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
  type metadata accessor for MainActor();

  v19 = static MainActor.shared.getter();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = &protocol witness table for MainActor;
  v20[4] = v1;
  sub_1003E9628(0, 0, v4, &unk_100954558, v20);

  return result;
}

uint64_t sub_1003E8394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a1;
  v4[4] = a4;
  v4[5] = type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return _swift_task_switch(sub_1003E8430, v6, v5);
}

uint64_t sub_1003E8430()
{
  swift_weakInit();

  return _swift_task_switch(sub_1003E849C, 0, 0);
}

uint64_t sub_1003E849C(uint64_t a1)
{
  *(v1 + 72) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003E8528, v3, v2);
}

uint64_t sub_1003E8528()
{

  sub_1003E85DC(v0 + 16);
  swift_weakDestroy();
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return _swift_task_switch(sub_1002CB1C0, v1, v2);
}

void sub_1003E85DC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [*(Strong + 40) invalidate];
    v3 = [objc_opt_self() scheduledTimerWithTimeInterval:v2 target:"inactivityTimerDidFire" selector:0 userInfo:0 repeats:60.0];
    v4 = *(v2 + 40);
    *(v2 + 40) = v3;
  }
}

void sub_1003E8698()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + 48) & 1) == 0)
  {
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v16 = v9;
      *v8 = 136315138;
      static Date.now.getter();
      v10 = Date.debugDescription.getter();
      v12 = v11;
      (*(v3 + 8))(v5, v2);
      v13 = sub_100008458(v10, v12, &v16);

      *(v8 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v6, v7, "🫀 Keep alive called at %s", v8, 0xCu);
      sub_10000BA7C(v9);
    }

    if (!*(v1 + 24))
    {
      sub_1003E7CF4();
      v14 = [objc_opt_self() defaultCenter];
      if (qword_100ACFD40 != -1)
      {
        swift_once();
      }

      [v14 postNotificationName:qword_100B2F8B0 object:0 userInfo:0];
    }

    sub_1000F24EC(&qword_100ADFA68, &qword_100950E98);
    sub_10000B58C(&qword_100ADFAE8, &qword_100ADFA68, &qword_100950E98, &protocol conformance descriptor for PassthroughSubject<A, B>);
    Subject<>.send()();
  }
}

uint64_t sub_1003E8984(const char *a1, uint64_t (*a2)(void), int a3, ...)
{
  LODWORD(v4) = a3;
  v7 = v3;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v22 = a1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v23 = a2;
    v17 = v16;
    v25 = v16;
    *v15 = 136315138;
    static Date.now.getter();
    v18 = Date.debugDescription.getter();
    v24 = v4;
    v4 = v19;
    (*(v9 + 8))(v11, v8);
    v20 = sub_100008458(v18, v4, &v25);
    LOBYTE(v4) = v24;

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, v22, v15, 0xCu);
    sub_10000BA7C(v17);
    a2 = v23;
  }

  result = a2();
  *(v7 + 48) = v4;
  return result;
}

double sub_1003E8B6C()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AD5170, &unk_100943680);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v22 = v4;
    v12 = v11;
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136315138;
    static Date.now.getter();
    v14 = Date.debugDescription.getter();
    v16 = v15;
    (*(v6 + 8))(v8, v5);
    v17 = sub_100008458(v14, v16, &v23);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "🫀 End session at %s", v12, 0xCu);
    sub_10000BA7C(v13);

    v4 = v22;
  }

  if (*(v1 + 24))
  {

    AnyCancellable.cancel()();
  }

  *(v1 + 24) = 0;

  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
  type metadata accessor for MainActor();

  v19 = static MainActor.shared.getter();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = &protocol witness table for MainActor;
  v20[4] = v1;
  sub_1003E9628(0, 0, v4, &unk_100954548, v20);

  return result;
}

uint64_t sub_1003E8E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();

  return _swift_task_switch(sub_1003E8ED4, 0, 0);
}

uint64_t sub_1003E8ED4(uint64_t a1)
{
  *(v1 + 40) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003E8F60, v3, v2);
}

uint64_t sub_1003E8F60()
{
  v1 = *(v0 + 16);

  v2 = *(v1 + 40);
  if (v2)
  {
    [v2 invalidate];
    v3 = *(v1 + 40);
    *(v1 + 40) = 0;
  }

  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000EC728, v5, v4);
}

void sub_1003E9004()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    static Date.now.getter();
    v8 = Date.debugDescription.getter();
    v10 = v9;
    (*(v1 + 8))(v3, v0);
    v11 = sub_100008458(v8, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "🫀 User became inactive at %s", v6, 0xCu);
    sub_10000BA7C(v7);
  }

  sub_1003E8B6C();
  v12 = [objc_opt_self() defaultCenter];
  if (qword_100ACFD48 != -1)
  {
    swift_once();
  }

  [v12 postNotificationName:qword_100B2F8B8 object:0 userInfo:0];
}

uint64_t sub_1003E927C()
{

  v1 = OBJC_IVAR____TtC7Journal17CanvasIdleTracker_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CanvasIdleTracker(uint64_t a1)
{
  result = qword_100AE2D38;
  if (!qword_100AE2D38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003E938C(uint64_t a1)
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

uint64_t sub_1003E9450(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032ECC;

  return sub_1003E8E58(a1, v4, v5, v6);
}

uint64_t sub_1003E9504(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_1003E8394(a1, v4, v5, v6);
}

uint64_t sub_1003E95B8(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100ADFAA0, &qword_100950F50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003E9628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000F24EC(&qword_100AD5170, &unk_100943680);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1001E6194(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1003EAA74(v11);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1003EAA74(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1003EAA74(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1003E98E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000F24EC(&qword_100AD5170, &unk_100943680);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1001E6194(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1003EAA74(v11);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_1000F24EC(&qword_100AD38E8, &qword_100941FB8);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_1003EAA74(a3);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1003EAA74(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_1000F24EC(&qword_100AD38E8, &qword_100941FB8);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1003E9BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000F24EC(&qword_100AD5170, &unk_100943680);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1001E6194(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1003EAA74(v11);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_1000F24EC(&qword_100AD38E0, &qword_100954620);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_1003EAA74(a3);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1003EAA74(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_1000F24EC(&qword_100AD38E0, &qword_100954620);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1003E9E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000F24EC(&qword_100AD5170, &unk_100943680);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1001E6194(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1003EAA74(v11);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1003EAA74(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1003EAA74(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1003EA148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000F24EC(&qword_100AD5170, &unk_100943680);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1001E6194(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1003EAA74(v11);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_1000F24EC(&qword_100AE2E98, &qword_100954640);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_1003EAA74(a3);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1003EAA74(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_1000F24EC(&qword_100AE2E98, &qword_100954640);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

id sub_1003EA41C(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v9 = sub_1000F24EC(&qword_100AD5170, &unk_100943680);
  __chkstk_darwin(v9 - 8);
  v11 = &v22 - v10;
  v12 = &v4[OBJC_IVAR____TtC7Journal32FollowUpPromptViewTextAttachment_followUpPrompt];
  *v12 = a1;
  *(v12 + 1) = a2;
  *&v4[OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment____lazy_storage___resizableAttachmentView] = 0;
  v13 = &v4[OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_anchorPosition];
  *v13 = 0;
  *(v13 + 1) = 0;
  v13[16] = 1;
  *&v4[OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_resizeDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_currentProvider] = 0;
  *&v4[OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_canvasDragInteraction] = 0;
  swift_beginAccess();
  *v13 = 0;
  *(v13 + 1) = 0;
  v13[16] = 1;
  *&v4[OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_preferredRatioSize] = xmmword_100954560;
  v14 = type metadata accessor for ResizableViewTextAttachment();
  v23.receiver = v4;
  v23.super_class = v14;

  v15 = objc_msgSendSuper2(&v23, "initWithData:ofType:", 0, 0);
  [v15 setAllowsTextAttachmentView:1];
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  type metadata accessor for MainActor();
  v17 = v15;
  v18 = static MainActor.shared.getter();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = &protocol witness table for MainActor;
  *(v19 + 32) = a1;
  *(v19 + 40) = a2;
  *(v19 + 48) = a4;
  *(v19 + 56) = v17;
  *(v19 + 64) = a3 & 1;
  v20 = vdupq_n_s64(a3);
  *v20.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v20, xmmword_100954580), vshlq_u64(v20, xmmword_100954570))), 0x1000100010001);
  *(v19 + 65) = vuzp1_s8(*v20.i8, *v20.i8).u32[0];
  *(v19 + 69) = BYTE5(a3) & 1;
  sub_1003E9628(0, 0, v11, &unk_1009545F0, v19);

  return v17;
}

uint64_t sub_1003EA6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 56) = a6;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  type metadata accessor for MainActor();
  *(v8 + 48) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003EA740, v10, v9);
}

uint64_t sub_1003EA740()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  v3 = *(v0 + 56);
  v4 = *(v0 + 16);

  v5 = objc_allocWithZone(type metadata accessor for FollowUpPromptAttachment());

  v6 = sub_10085DEDC(v4, v2);
  sub_10085E534(v3);
  sub_1007C8E14(v6, v1 & 0x10101010101);

  v7 = *(v0 + 8);

  return v7();
}

id sub_1003EA880(uint64_t a1, __n128 a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FollowUpPromptViewTextAttachment();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1003EA8EC()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal32FollowUpPromptViewTextAttachment_followUpPrompt);

  return v1;
}

uint64_t sub_1003EA928(uint64_t a1)
{
  v3 = v2;
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  v9 = *(v1 + 48);
  v10 = *(v1 + 56);
  v11 = 0x10000000000;
  if (!*(v1 + 69))
  {
    v11 = 0;
  }

  v12 = &_mh_execute_header;
  if (!*(v1 + 68))
  {
    v12 = 0;
  }

  v13 = 0x1000000;
  if (!*(v1 + 67))
  {
    v13 = 0;
  }

  v14 = 0x10000;
  if (!*(v1 + 66))
  {
    v14 = 0;
  }

  v15 = 256;
  if (!*(v1 + 65))
  {
    v15 = 0;
  }

  v16 = v15 | *(v1 + 64) | v14 | v13;
  v17 = v12 | v11;
  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = sub_100032ECC;

  return sub_1003EA6A0(a1, v6, v5, v7, v8, v9, v10, v16 | v17);
}

uint64_t sub_1003EAA74(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100AD5170, &unk_100943680);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003EAADC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100032EC8;

  return sub_100008D4C(a1, v4);
}

uint64_t sub_1003EAB94(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100032EC8;

  return sub_10018ACB4(a1, v4);
}

uint64_t sub_1003EAC4C(uint64_t a1, int *a2)
{
  *(v2 + 40) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 48) = v3;
  *v3 = v2;
  v3[1] = sub_1003EAD40;

  return v5(v2 + 16);
}

uint64_t sub_1003EAD40()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *v0;

  v4 = *(v1 + 32);
  *v2 = *(v1 + 16);
  *(v2 + 16) = v4;
  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_1003EAE74(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100032EC8;

  return sub_1003EAC4C(a1, v4);
}

uint64_t sub_1003EAF2C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100032EC8;

  return sub_10018ACB4(a1, v4);
}

uint64_t sub_1003EAFE4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100032EC8;

  return sub_10018ACB4(a1, v4);
}

uint64_t sub_1003EB09C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100032ECC;

  return sub_10018ACB4(a1, v4);
}

uint64_t sub_1003EB154()
{
  type metadata accessor for SuggestionAngelManager(0);
  v0 = swift_allocObject();
  result = sub_1003EE26C();
  qword_100B2F8C0 = v0;
  return result;
}

uint64_t sub_1003EB1F4(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  v29 = a2;
  v8 = v4;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v30 = *(v12 - 8);
  v31 = v12;
  __chkstk_darwin(v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v28 = a3;
    v17 = a4;
    v18 = swift_slowAlloc();
    *v18 = 67109120;
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      v19 = 1;
    }

    else
    {
      v19 = 0;
    }

    *(v18 + 4) = v19;

    _os_log_impl(&_mh_execute_header, v15, v16, a1, v18, 8u);

    a4 = v17;
    a3 = v28;
  }

  else
  {
  }

  v20 = v8 + OBJC_IVAR____TtC7Journal22SuggestionAngelManager_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v22 = result;
    v23 = *(v20 + 8);
    sub_1000065A8(0, &qword_100AD6210, OS_dispatch_queue_ptr);
    v24 = static OS_dispatch_queue.main.getter();
    v25 = swift_allocObject();
    *(v25 + 16) = v22;
    *(v25 + 24) = v23;
    aBlock[4] = a3;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006C7C;
    aBlock[3] = a4;
    v26 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10001DD40(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000F24EC(&unk_100AD6220, &unk_10093C0A0);
    sub_10001F408(&qword_100AD1530, &unk_100AD6220, &unk_10093C0A0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v26);
    swift_unknownObjectRelease();

    (*(v32 + 8))(v11, v9);
    return (*(v30 + 8))(v14, v31);
  }

  return result;
}

uint64_t sub_1003EB5C0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v39 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v37 = v7;
  v38 = v8;
  __chkstk_darwin(v7);
  v36 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC7Journal22SuggestionAngelManager_logger;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v35 = v10;
    v15 = v5;
    v16 = v4;
    v17 = v14;
    aBlock[0] = v14;
    *v13 = 136315138;
    v18 = sub_1003EBAF0(a1);
    v20 = sub_100008458(v18, v19, aBlock);

    *(v13 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "onDidTransitionTo: %s", v13, 0xCu);
    sub_10000BA7C(v17);
    v4 = v16;
    v5 = v15;
  }

  v21 = OBJC_IVAR____TtC7Journal22SuggestionAngelManager_lastReportedViewState;
  *(v2 + OBJC_IVAR____TtC7Journal22SuggestionAngelManager_lastReportedViewState) = a1;
  if (a1)
  {
    *(v2 + OBJC_IVAR____TtC7Journal22SuggestionAngelManager_needsToBeTerminated) = 1;
  }

  else
  {
    if (qword_100AD00A8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (!*(off_100AEB378 + 2) && !*(v2 + v21))
    {
      v22 = OBJC_IVAR____TtC7Journal22SuggestionAngelManager_needsToBeTerminated;
      if (*(v2 + OBJC_IVAR____TtC7Journal22SuggestionAngelManager_needsToBeTerminated) == 1)
      {
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = 0;
          _os_log_impl(&_mh_execute_header, v23, v24, "Auto-terminating after dismissed sheet.", v25, 2u);
        }

        *(v2 + v22) = 0;
        [*(v2 + OBJC_IVAR____TtC7Journal22SuggestionAngelManager_controller) terminate];
      }
    }
  }

  v26 = v2 + OBJC_IVAR____TtC7Journal22SuggestionAngelManager_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = result;
    v29 = *(v26 + 8);
    sub_1000065A8(0, &qword_100AD6210, OS_dispatch_queue_ptr);
    v30 = static OS_dispatch_queue.main.getter();
    v31 = swift_allocObject();
    v31[2] = v2;
    v31[3] = a1;
    v31[4] = v28;
    v31[5] = v29;
    aBlock[4] = sub_1003EE8E4;
    aBlock[5] = v31;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006C7C;
    aBlock[3] = &unk_100A6BB18;
    v32 = _Block_copy(aBlock);

    swift_unknownObjectRetain();

    v33 = v36;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10001DD40(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000F24EC(&unk_100AD6220, &unk_10093C0A0);
    sub_10001F408(&qword_100AD1530, &unk_100AD6220, &unk_10093C0A0);
    v34 = v39;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v32);
    swift_unknownObjectRelease();

    (*(v5 + 8))(v34, v4);
    return (*(v38 + 8))(v33, v37);
  }

  return result;
}

uint64_t sub_1003EBAF0(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0x657373696D736964;
    case 2:
      return 0x657263536C6C7566;
    case 1:
      return 1801807216;
  }

  _StringGuts.grow(_:)(27);
  v2._object = 0x80000001008F08D0;
  v2._countAndFlagsBits = 0xD000000000000019;
  String.append(_:)(v2);
  type metadata accessor for MOSuggestionSheetViewState(0);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1003EBC04(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + OBJC_IVAR____TtC7Journal22SuggestionAngelManager_windowScene);
  if (v4)
  {
    v5 = [v4 windows];
    sub_1000065A8(0, &unk_100AE3160, UIWindow_ptr);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v6 >> 62))
    {
      goto LABEL_3;
    }

LABEL_24:
    v7 = _CocoaArrayWrapper.endIndex.getter();
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_25:

    ObjectType = swift_getObjectType();
    return (*(a4 + 8))(a2, ObjectType);
  }

  v6 = _swiftEmptyArrayStorage;
  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_24;
  }

LABEL_3:
  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_25;
  }

LABEL_4:
  v8 = 0;
  notification = UIAccessibilityScreenChangedNotification;
  v9 = &selRef_setRegion_;
  while (1)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v11 = *(v6 + 8 * v8 + 32);
    }

    v10 = v11;
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    v13 = [v11 v9[349]];
    if (!v13)
    {
      goto LABEL_7;
    }

    v14 = v13;
    v15 = [v13 viewIfLoaded];
    if (v15)
    {
      v16 = v15;
      if (a2 >= 2)
      {
        if (a2 != 2)
        {
          goto LABEL_28;
        }

        [v15 setAccessibilityElementsHidden:1];
        v20 = [v14 presentedViewController];
        if (v20)
        {
          v21 = v20;
          v19 = [v20 view];

          if (v19)
          {
LABEL_22:
            [v19 setAccessibilityElementsHidden:?];
          }
        }
      }

      else
      {
        [v15 setAccessibilityElementsHidden:0];
        v17 = [v14 presentedViewController];
        if (v17)
        {
          v18 = v17;
          v19 = [v17 viewIfLoaded];

          if (v19)
          {
            goto LABEL_22;
          }
        }
      }

      UIAccessibilityPostNotification(notification, 0);

      v10 = v16;
      v9 = &selRef_setRegion_;
    }

LABEL_7:
    ++v8;
    if (v12 == v7)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  _StringGuts.grow(_:)(27);
  v24._object = 0x80000001008F08D0;
  v24._countAndFlagsBits = 0xD000000000000019;
  String.append(_:)(v24);
  type metadata accessor for MOSuggestionSheetViewState(0);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

double sub_1003EBF70(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  *&result = __chkstk_darwin(v7).n128_u64[0];
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC7Journal22SuggestionAngelManager_angelDelegateHandler;
  if (!*(v1 + OBJC_IVAR____TtC7Journal22SuggestionAngelManager_angelDelegateHandler) && !*(v1 + OBJC_IVAR____TtC7Journal22SuggestionAngelManager_controller) && !*(v1 + OBJC_IVAR____TtC7Journal22SuggestionAngelManager_windowScene))
  {
    v32 = OBJC_IVAR____TtC7Journal22SuggestionAngelManager_windowScene;
    v33 = v1;
    v34 = v9;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "activate", v16, 2u);
    }

    v17 = type metadata accessor for AngelControllerDelegateHandler();
    v18 = objc_allocWithZone(v17);
    v19 = &v18[OBJC_IVAR____TtC7JournalP33_C5BE6988A08BB0DB179AC7EC1D49D5B530AngelControllerDelegateHandler_onDidTransitionTo];
    v20 = v33;
    *v19 = sub_1003EE864;
    v19[1] = v20;
    v21 = &v18[OBJC_IVAR____TtC7JournalP33_C5BE6988A08BB0DB179AC7EC1D49D5B530AngelControllerDelegateHandler_onCancel];
    *v21 = sub_1003EE868;
    v21[1] = v20;
    v22 = &v18[OBJC_IVAR____TtC7JournalP33_C5BE6988A08BB0DB179AC7EC1D49D5B530AngelControllerDelegateHandler_onCreateBlankEntry];
    *v22 = sub_1003EE86C;
    v22[1] = v20;
    v23 = &v18[OBJC_IVAR____TtC7JournalP33_C5BE6988A08BB0DB179AC7EC1D49D5B530AngelControllerDelegateHandler_onPerformTask];
    *v23 = sub_1003EE870;
    v23[1] = v20;
    v37.receiver = v18;
    v37.super_class = v17;
    swift_retain_n();
    v24 = objc_msgSendSuper2(&v37, "init");
    v25 = *(v20 + v13);
    *(v20 + v13) = v24;
    v26 = v24;

    v27 = *(v20 + v32);
    *(v20 + v32) = a1;
    v28 = a1;

    v32 = *(v20 + OBJC_IVAR____TtC7Journal22SuggestionAngelManager_controllerQueue);
    v29 = swift_allocObject();
    v29[2] = v28;
    v29[3] = v20;
    v29[4] = v26;
    aBlock[4] = sub_1003EE878;
    aBlock[5] = v29;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006C7C;
    aBlock[3] = &unk_100A6BA78;
    v30 = _Block_copy(aBlock);

    v33 = v26;
    v31 = v28;
    static DispatchQoS.unspecified.getter();
    v35 = _swiftEmptyArrayStorage;
    sub_10001DD40(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000F24EC(&unk_100AD6220, &unk_10093C0A0);
    sub_10001F408(&qword_100AD1530, &unk_100AD6220, &unk_10093C0A0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v30);

    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v12, v34);
  }

  return result;
}

void sub_1003EC3DC(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 - 1) <= 1)
  {
    v14 = a3 + OBJC_IVAR____TtC7Journal22SuggestionAngelManager_delegate;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v16 = Strong;
      v25 = v7;
      v17 = *(v14 + 8);
      sub_1000065A8(0, &qword_100AD6210, OS_dispatch_queue_ptr);
      v24 = static OS_dispatch_queue.main.getter();
      v18 = swift_allocObject();
      v18[2] = v16;
      v18[3] = v17;
      v18[4] = a2;
      v18[5] = a1;
      aBlock[4] = sub_1003EE884;
      aBlock[5] = v18;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100006C7C;
      aBlock[3] = &unk_100A6BAC8;
      v23 = _Block_copy(aBlock);
      swift_unknownObjectRetain();
      v19 = a2;

      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10001DD40(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000F24EC(&unk_100AD6220, &unk_10093C0A0);
      sub_10001F408(&qword_100AD1530, &unk_100AD6220, &unk_10093C0A0);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v21 = v23;
      v20 = v24;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v21);
      swift_unknownObjectRelease();

      (*(v25 + 8))(v9, v6);
      (*(v11 + 8))(v13, v10);
    }
  }
}

void sub_1003EC708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(MOSuggestionSheetController) initForScene:a1];
  v6 = *(a2 + OBJC_IVAR____TtC7Journal22SuggestionAngelManager_controller);
  *(a2 + OBJC_IVAR____TtC7Journal22SuggestionAngelManager_controller) = v5;
  v7 = v5;

  [v7 setDelegate:a3];
  [v7 activate];
}

void sub_1003EC7B0()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + OBJC_IVAR____TtC7Journal22SuggestionAngelManager_controller);
  if (v10)
  {
    v11 = v7;
    v12 = qword_100AD00A8;
    v13 = v10;
    if (v12 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (*(off_100AEB378 + 2) || *(v0 + OBJC_IVAR____TtC7Journal22SuggestionAngelManager_lastReportedViewState) || (v14 = OBJC_IVAR____TtC7Journal22SuggestionAngelManager_needsToBeTerminated, (*(v0 + OBJC_IVAR____TtC7Journal22SuggestionAngelManager_needsToBeTerminated) & 1) == 0))
    {
    }

    else
    {
      v24 = v0;
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v15, v16, "Manual termination requested.", v17, 2u);
      }

      v18 = v24;
      *(v24 + v14) = 0;
      v24 = *(v18 + OBJC_IVAR____TtC7Journal22SuggestionAngelManager_controllerQueue);
      v19 = swift_allocObject();
      *(v19 + 16) = v13;
      aBlock[4] = sub_1003EE854;
      aBlock[5] = v19;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100006C7C;
      aBlock[3] = &unk_100A6BA28;
      v22 = _Block_copy(aBlock);
      v23 = v13;
      static DispatchQoS.unspecified.getter();
      v25 = _swiftEmptyArrayStorage;
      sub_10001DD40(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000F24EC(&unk_100AD6220, &unk_10093C0A0);
      sub_10001F408(&qword_100AD1530, &unk_100AD6220, &unk_10093C0A0);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v20 = v22;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v20);

      (*(v2 + 8))(v4, v1);
      (*(v6 + 8))(v9, v11);
    }
  }
}

double sub_1003ECB98(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v52 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000F24EC(&qword_100AD1420, &unk_10093C080);
  __chkstk_darwin(v11 - 8);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v44 - v15;
  v17 = *(v2 + OBJC_IVAR____TtC7Journal22SuggestionAngelManager_controller);
  if (v17)
  {
    v50 = v5;
    v51 = v4;
    v18 = a1;
    v48 = v17;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    v21 = os_log_type_enabled(v19, v20);
    v49 = v8;
    if (v21)
    {
      v46 = v20;
      v47 = v19;
      v22 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      aBlock[0] = v45;
      *v22 = 67110658;
      *(v22 + 4) = [v18 showCancelButton];

      *(v22 + 8) = 1024;
      *(v22 + 10) = [v18 showBlankEntryButton];

      *(v22 + 14) = 2048;
      [v18 peekDetentRatio];
      *(v22 + 16) = v23;
      *(v22 + 24) = 1024;
      *(v22 + 26) = [v18 presentFullScreen];

      *(v22 + 30) = 1024;
      *(v22 + 32) = [v18 presentationIsAnimated];

      *(v22 + 36) = 1024;
      *(v22 + 38) = [v18 selectedTabIsRecommended];

      *(v22 + 42) = 2080;
      v24 = [v18 selectedSuggestionId];
      if (v24)
      {
        v25 = v24;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v26 = type metadata accessor for UUID();
        (*(*(v26 - 8) + 56))(v13, 0, 1, v26);
      }

      else
      {
        v26 = type metadata accessor for UUID();
        (*(*(v26 - 8) + 56))(v13, 1, 1, v26);
      }

      sub_100024EC0(v13, v16);
      type metadata accessor for UUID();
      v31 = *(v26 - 8);
      if ((*(v31 + 48))(v16, 1, v26) == 1)
      {
        sub_10029D1EC(v16);
        v32 = 0xE300000000000000;
        v33 = 7104878;
      }

      else
      {
        v34 = UUID.uuidString.getter();
        v32 = v35;
        (*(v31 + 8))(v16, v26);
        v33 = v34;
      }

      v36 = sub_100008458(v33, v32, aBlock);

      *(v22 + 44) = v36;
      v37 = v47;
      _os_log_impl(&_mh_execute_header, v47, v46, "presentSheetWithOptions: showCancelButton=%{BOOL}d showBlankEntryButton=%{BOOL}d peekDetentRatio=%f presentFullScreen=%{BOOL}d presentationIsAnimated=%{BOOL}d selectedTabIsRecommended=%{BOOL}d selectedSuggestionId=%s", v22, 0x34u);
      sub_10000BA7C(v45);
    }

    else
    {
    }

    v38 = swift_allocObject();
    v39 = v48;
    *(v38 + 16) = v48;
    *(v38 + 24) = v18;
    aBlock[4] = sub_1003EE844;
    aBlock[5] = v38;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006C7C;
    aBlock[3] = &unk_100A6B9D8;
    v40 = _Block_copy(aBlock);
    v41 = v18;
    v42 = v39;
    static DispatchQoS.unspecified.getter();
    v53 = _swiftEmptyArrayStorage;
    sub_10001DD40(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000F24EC(&unk_100AD6220, &unk_10093C0A0);
    sub_10001F408(&qword_100AD1530, &unk_100AD6220, &unk_10093C0A0);
    v43 = v51;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v40);

    (*(v50 + 8))(v7, v43);
    (v52[1].isa)(v10, v49);
  }

  else
  {
    v52 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v52, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v52, v27, "Attempted to present a sheet w/o a controller.", v28, 2u);
    }

    v29 = v52;
  }

  return result;
}

void sub_1003ED2C8(uint64_t a1, char a2)
{
  v3 = v2;
  v36 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v36 - 8);
  __chkstk_darwin(v36);
  v37 = (&v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v3 + OBJC_IVAR____TtC7Journal22SuggestionAngelManager_controller);
  if (v13)
  {
    v33 = v10;
    v34 = v9;
    v35 = v6;
    v14 = v13;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      aBlock[0] = v18;
      *v17 = 136315394;
      v19 = sub_1003EBAF0(a1);
      v32 = v12;
      v21 = a1;
      v22 = sub_100008458(v19, v20, aBlock);
      v12 = v32;

      *(v17 + 4) = v22;
      a1 = v21;
      *(v17 + 12) = 1024;
      *(v17 + 14) = a2 & 1;
      _os_log_impl(&_mh_execute_header, v15, v16, "updateSheet: state=%s animated=%{BOOL}d", v17, 0x12u);
      sub_10000BA7C(v18);
    }

    v23 = swift_allocObject();
    *(v23 + 16) = v14;
    *(v23 + 24) = a1;
    *(v23 + 32) = a2 & 1;
    aBlock[4] = sub_1003EE818;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006C7C;
    aBlock[3] = &unk_100A6B988;
    v24 = _Block_copy(aBlock);
    v25 = v14;
    static DispatchQoS.unspecified.getter();
    v38 = _swiftEmptyArrayStorage;
    sub_10001DD40(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000F24EC(&unk_100AD6220, &unk_10093C0A0);
    sub_10001F408(&qword_100AD1530, &unk_100AD6220, &unk_10093C0A0);
    v27 = v36;
    v26 = v37;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v24);

    (*(v35 + 8))(v26, v27);
    (*(v33 + 8))(v12, v34);
  }

  else
  {
    v37 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v37, v28, "Attempted to update a sheet w/o a controller.", v29, 2u);
    }

    v30 = v37;
  }
}

uint64_t sub_1003ED764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[24] = a3;
  v4[25] = v3;
  if (a1)
  {
    swift_getObjectType();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v4[26] = v5;
  v4[27] = v7;

  return _swift_task_switch(sub_1003ED7F4, v5, v7);
}

uint64_t sub_1003ED7F4()
{
  v1 = v0[25];
  swift_weakInit();
  v2 = *(v1 + OBJC_IVAR____TtC7Journal22SuggestionAngelManager_controller);
  v0[28] = v2;
  if (v2)
  {
    v3 = v0[24];
    v0[2] = v0;
    v0[7] = v0 + 22;
    v0[3] = sub_1003ED9A8;
    v4 = swift_continuation_init();
    v0[17] = sub_1000F24EC(&qword_100AE3148, &qword_100954748);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_1003EDF74;
    v0[13] = &unk_100A6B938;
    v0[14] = v4;
    [v2 getAssetsForSuggestion:v3 withTypes:0 onAssetsCallback:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    sub_1003EDC58(0xD000000000000027, 0x80000001008F0830, (v0 + 21), v0[24]);
    swift_weakDestroy();
    v5 = v0[1];

    return v5(0);
  }
}

uint64_t sub_1003ED9A8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 232) = v2;
  v3 = *(v1 + 216);
  v4 = *(v1 + 208);
  if (v2)
  {
    v5 = sub_1003EDB44;
  }

  else
  {
    v5 = sub_1003EDAD8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1003EDAD8()
{
  swift_weakDestroy();
  v1 = *(v0 + 176);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1003EDB44(uint64_t a1)
{
  v2 = v1[28];
  v3 = v1[24];
  swift_willThrow();
  _StringGuts.grow(_:)(27);

  swift_getErrorValue();
  v4._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v4);

  sub_1003EDC58(0xD000000000000019, 0x80000001008F0880, (v1 + 21), v3);

  swift_weakDestroy();
  v5 = v1[1];

  return v5(0);
}

uint64_t sub_1003EDC58(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v28 = v8;
    v29 = a1;
    (*(v12 + 16))(v14, result + OBJC_IVAR____TtC7Journal22SuggestionAngelManager_logger, v11);

    v16 = a4;

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v26 = a2;
      v20 = v19;
      v27 = swift_slowAlloc();
      v30 = v27;
      *v20 = 136315394;
      v21 = [v16 suggestionIdentifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v22 = UUID.uuidString.getter();
      v24 = v23;
      (*(v28 + 8))(v10, v7);
      v25 = sub_100008458(v22, v24, &v30);

      *(v20 + 4) = v25;
      *(v20 + 12) = 2080;
      *(v20 + 14) = sub_100008458(v29, v26, &v30);
      _os_log_impl(&_mh_execute_header, v17, v18, "fetchAssets: [%s] %s", v20, 0x16u);
      swift_arrayDestroy();
    }

    return (*(v12 + 8))(v14, v11);
  }

  return result;
}

uint64_t sub_1003EDF74(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_10000CA14((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1000F24EC(&qword_100AD5BC0, &qword_100943550);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_1000F24EC(&unk_100AE3150, &unk_100954750);
    **(*(v4 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_1003EE060()
{
  v1 = OBJC_IVAR____TtC7Journal22SuggestionAngelManager_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_100038534(v0 + OBJC_IVAR____TtC7Journal22SuggestionAngelManager_delegate);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SuggestionAngelManager(uint64_t a1)
{
  result = qword_100AE2F00;
  if (!qword_100AE2F00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003EE1A0(uint64_t a1)
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

uint64_t sub_1003EE26C()
{
  v9 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v9 - 8);
  __chkstk_darwin(v9);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  Logger.init(subsystem:category:)();
  v8 = OBJC_IVAR____TtC7Journal22SuggestionAngelManager_controllerQueue;
  v7 = sub_1000065A8(0, &qword_100AD6210, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v10 = _swiftEmptyArrayStorage;
  sub_10001DD40(&qword_100AD1500, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000F24EC(&qword_100AD1508, &unk_100954530);
  sub_10001F408(&qword_100AD1510, &qword_100AD1508, &unk_100954530);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v9);
  *(v0 + v8) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v0 + OBJC_IVAR____TtC7Journal22SuggestionAngelManager_angelDelegateHandler) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal22SuggestionAngelManager_windowScene) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal22SuggestionAngelManager_controller) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal22SuggestionAngelManager_lastReportedViewState) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal22SuggestionAngelManager_needsToBeTerminated) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal22SuggestionAngelManager_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  return v0;
}

id sub_1003EE740()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AngelControllerDelegateHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_1003EE82C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1003EE884()
{
  v1 = v0[3];
  v3 = v0[4];
  v2 = v0[5];
  ObjectType = swift_getObjectType();
  return (*(v1 + 16))(v3, v2 != 2, ObjectType, v1);
}

uint64_t sub_1003EE908(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  return (*(v5 + 16))(a1, a2, ObjectType, v5);
}

id sub_1003EE9EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VariableBlurView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1003EEAD0()
{
  v1 = OBJC_IVAR____TtC7Journal16VariableBlurView_blurFilter;
  *(v0 + v1) = [objc_allocWithZone(CAFilter) initWithType:kCAFilterVariableBlur];
  *(v0 + OBJC_IVAR____TtC7Journal16VariableBlurView_maskSize) = vdupq_n_s64(0x4059000000000000uLL);
  v2 = OBJC_IVAR____TtC7Journal16VariableBlurView_alphaColorGradients;
  sub_1000F24EC(&unk_100AD4780, &unk_100941070);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100941D60;
  v4 = objc_opt_self();
  v5 = [v4 whiteColor];
  v6 = [v5 colorWithAlphaComponent:0.0];

  v7 = [v6 CGColor];
  *(v3 + 32) = v7;
  v8 = [v4 whiteColor];
  v9 = [v8 CGColor];

  *(v3 + 40) = v9;
  *(v0 + v2) = v3;
  *(v0 + OBJC_IVAR____TtC7Journal16VariableBlurView_blurRadius) = 2;
  v10 = v0 + OBJC_IVAR____TtC7Journal16VariableBlurView_inputMaskImage;
  strcpy((v0 + OBJC_IVAR____TtC7Journal16VariableBlurView_inputMaskImage), "inputMaskImage");
  *(v10 + 15) = -18;
  v11 = (v0 + OBJC_IVAR____TtC7Journal16VariableBlurView_inputNormalizeEdges);
  *v11 = 0xD000000000000013;
  v11[1] = 0x80000001008F0960;
  v12 = (v0 + OBJC_IVAR____TtC7Journal16VariableBlurView_inputDither);
  *v12 = 0x7469447475706E69;
  v12[1] = 0xEB00000000726568;
  v13 = (v0 + OBJC_IVAR____TtC7Journal16VariableBlurView_blurRadiusKey);
  *v13 = 0xD000000000000020;
  v13[1] = 0x80000001008F09C0;
  v14 = v0 + OBJC_IVAR____TtC7Journal16VariableBlurView_filterName;
  strcpy((v0 + OBJC_IVAR____TtC7Journal16VariableBlurView_filterName), "variableBlur");
  *(v14 + 13) = 0;
  *(v14 + 14) = -5120;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_1003EED90@<X0>(uint64_t *a1@<X0>, SEL *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1003F3E54(&qword_100AE4660, type metadata accessor for NotificationSettingsViewModel, &unk_1009548CC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (sub_1003F0210())
  {
    result = [*(v6 + 16) *a3];
  }

  else
  {
    result = 0;
  }

  *a4 = result;
  return result;
}

uint64_t sub_1003EEE5C(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1003F3E54(&qword_100AE4660, type metadata accessor for NotificationSettingsViewModel, &unk_1009548CC);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_1003F1768(1);
}

uint64_t sub_1003EEF5C(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = *a2;
  swift_getKeyPath();
  v12 = v9;
  v13 = v8;
  v14 = v9;
  sub_1003F3E54(&qword_100AE4660, type metadata accessor for NotificationSettingsViewModel, &unk_1009548CC);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_1003F19BC(0);
  return (*(v5 + 8))(v8, v4);
}

id sub_1003EF0F8()
{
  swift_getKeyPath();
  sub_1003F3E54(&qword_100AE4660, type metadata accessor for NotificationSettingsViewModel, &unk_1009548CC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 24);

  return v1;
}

id sub_1003EF1A8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003F3E54(&qword_100AE4660, type metadata accessor for NotificationSettingsViewModel, &unk_1009548CC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 24);
  *a2 = v4;

  return v4;
}

void sub_1003EF28C(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 24);
  sub_1000065A8(0, &qword_100AE34E0, UNNotificationSettings_ptr);
  v5 = v4;
  v6 = static NSObject.== infix(_:_:)();

  if (v6)
  {
    v7 = *(v2 + 24);
    *(v2 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1003F3E54(&qword_100AE4660, type metadata accessor for NotificationSettingsViewModel, &unk_1009548CC);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

double sub_1003EF448()
{
  swift_getKeyPath();
  sub_1003F3E54(&qword_100AE4660, type metadata accessor for NotificationSettingsViewModel, &unk_1009548CC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();

  return result;
}

double sub_1003EF50C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003F3E54(&qword_100AE4660, type metadata accessor for NotificationSettingsViewModel, &unk_1009548CC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v4 = *(v3 + 48);
  *a2 = *(v3 + 32);
  *(a2 + 16) = v4;

  return result;
}

double sub_1003EF5D8(__int128 *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1003F3E54(&qword_100AE4660, type metadata accessor for NotificationSettingsViewModel, &unk_1009548CC);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

void sub_1003EF6B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  a1[4] = a2;
  a1[5] = a3;
  a1[6] = a4;
}

uint64_t (*sub_1003EF734(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC7Journal29NotificationSettingsViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1003F3E54(&qword_100AE4660, type metadata accessor for NotificationSettingsViewModel, &unk_1009548CC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = sub_1003EF3F8(v4);
  return sub_1003EF86C;
}

void sub_1003EF86C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

uint64_t sub_1003EF900()
{
  swift_getKeyPath();
  sub_1003F3E54(&qword_100AE4660, type metadata accessor for NotificationSettingsViewModel, &unk_1009548CC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 56);
}

void sub_1003EF9A0(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003F3E54(&qword_100AE4660, type metadata accessor for NotificationSettingsViewModel, &unk_1009548CC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 56);
}

void sub_1003EFA48(char a1)
{
  if (*(v1 + 56) == (a1 & 1))
  {
    *(v1 + 56) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1003F3E54(&qword_100AE4660, type metadata accessor for NotificationSettingsViewModel, &unk_1009548CC);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1003EFB58()
{
  swift_getKeyPath();
  sub_1003F3E54(&qword_100AE4660, type metadata accessor for NotificationSettingsViewModel, &unk_1009548CC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 57);
}

void sub_1003EFBF8(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003F3E54(&qword_100AE4660, type metadata accessor for NotificationSettingsViewModel, &unk_1009548CC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 57);
}

void sub_1003EFCA0(char a1)
{
  if (*(v1 + 57) == (a1 & 1))
  {
    *(v1 + 57) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1003F3E54(&qword_100AE4660, type metadata accessor for NotificationSettingsViewModel, &unk_1009548CC);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

unint64_t sub_1003EFDB0()
{
  swift_getKeyPath();
  sub_1003F3E54(&qword_100AE4660, type metadata accessor for NotificationSettingsViewModel, &unk_1009548CC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 64);
  sub_1003F3DF4(v1);
  return v1;
}

void sub_1003EFE5C(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003F3E54(&qword_100AE4660, type metadata accessor for NotificationSettingsViewModel, &unk_1009548CC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 64);
  *a2 = v4;
  sub_1003F3DF4(v4);
}

double sub_1003EFF08(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1003F3E54(&qword_100AE4660, type metadata accessor for NotificationSettingsViewModel, &unk_1009548CC);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

uint64_t sub_1003EFFD4()
{
  swift_getKeyPath();
  sub_1003F3E54(&qword_100AE4660, type metadata accessor for NotificationSettingsViewModel, &unk_1009548CC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1003F007C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003F3E54(&qword_100AE4660, type metadata accessor for NotificationSettingsViewModel, &unk_1009548CC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 80);
  *a2 = result;
  a2[1] = v5;
  return result;
}

double sub_1003F012C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1003F3E54(&qword_100AE4660, type metadata accessor for NotificationSettingsViewModel, &unk_1009548CC);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

BOOL sub_1003F0210()
{
  swift_getKeyPath();
  sub_1003F3E54(&qword_100AE4660, type metadata accessor for NotificationSettingsViewModel, &unk_1009548CC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ([*(v0 + 24) authorizationStatus] != 2)
  {
    return 0;
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 64) >> 62 != 1;
}

uint64_t sub_1003F0318(char a1)
{
  swift_getKeyPath();
  sub_1003F3E54(&qword_100AE4660, type metadata accessor for NotificationSettingsViewModel, &unk_1009548CC);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  if (a1)
  {
    sub_100495870(&off_100A56368);
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_1003F1768(1);
}

uint64_t sub_1003F04B0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  swift_getKeyPath();
  v12 = v1;
  sub_1003F3E54(&qword_100AE4660, type metadata accessor for NotificationSettingsViewModel, &unk_1009548CC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  if (v1[4])
  {
    v6 = v1[5];
    v7 = v1[6];

    sub_10011243C(v6, v7, v5);

    v8 = type metadata accessor for Date();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v5, 1, v8) != 1)
    {
      return (*(v9 + 32))(a1, v5, v8);
    }
  }

  else
  {
    v8 = type metadata accessor for Date();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  }

  static Date.distantPast.getter();
  type metadata accessor for Date();
  result = (*(*(v8 - 8) + 48))(v5, 1, v8);
  if (result != 1)
  {
    return sub_10012C9CC(v5);
  }

  return result;
}

uint64_t sub_1003F06FC(uint64_t a1)
{
  v3 = type metadata accessor for Calendar.Component();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Calendar();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v1;
  v12 = sub_1003EF734(v25);
  v13 = *v11;
  v23 = a1;
  if (v13)
  {
    v14 = v11;
    static Calendar.current.getter();
    (*(v4 + 104))(v6, enum case for Calendar.Component.hour(_:), v3);
    v15 = Calendar.component(_:from:)();
    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v7);
    v14[1] = v15;
  }

  (v12)(v25, 0);
  v17 = sub_1003EF734(v25);
  if (*v16)
  {
    v18 = v16;
    static Calendar.current.getter();
    (*(v4 + 104))(v6, enum case for Calendar.Component.minute(_:), v3);
    v19 = v23;
    v20 = Calendar.component(_:from:)();
    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v7);
    v18[2] = v20;
    (v17)(v25, 0);
  }

  else
  {
    (v17)(v25, 0);
    v19 = v23;
  }

  sub_1003F1768(0);
  v21 = type metadata accessor for Date();
  return (*(*(v21 - 8) + 8))(v19, v21);
}

void sub_1003F0A00()
{
  swift_getKeyPath();
  sub_1003F3E54(&qword_100AE4660, type metadata accessor for NotificationSettingsViewModel, &unk_1009548CC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  if (*(v0 + 32))
  {
  }
}

id sub_1003F0ADC(uint64_t a1, SEL *a2)
{
  swift_getKeyPath();
  sub_1003F3E54(&qword_100AE4660, type metadata accessor for NotificationSettingsViewModel, &unk_1009548CC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ([*(v2 + 24) authorizationStatus] == 2 && (swift_getKeyPath(), ObservationRegistrar.access<A, B>(_:keyPath:)(), , *(v2 + 64) >> 62 != 1))
  {
    return [*(v2 + 16) *a2];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003F0C1C@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v40 = type metadata accessor for Calendar.SearchDirection();
  v38 = *(v40 - 8);
  __chkstk_darwin(v40);
  v39 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for Calendar.RepeatedTimePolicy();
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Calendar.MatchingPolicy();
  v7 = *(v6 - 8);
  v29 = v6;
  v30 = v7;
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for Date();
  v37 = *(v33 - 8);
  __chkstk_darwin(v33);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for Calendar();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v31 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v13 - 8);
  v32 = &v26 - v14;
  swift_getKeyPath();
  v41 = v1;
  sub_1003F3E54(&qword_100AE4660, type metadata accessor for NotificationSettingsViewModel, &unk_1009548CC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  static Calendar.current.getter();
  v15 = *(v1 + 16);
  v28 = [v15 streakReminderHour];
  [v15 streakReminderMinute];
  v27 = v11;
  static Date.now.getter();
  (*(v7 + 104))(v9, enum case for Calendar.MatchingPolicy.nextTime(_:), v6);
  v16 = v5;
  v17 = v35;
  (*(v3 + 104))(v5, enum case for Calendar.RepeatedTimePolicy.first(_:), v35);
  v18 = v38;
  v19 = v39;
  v20 = v40;
  (*(v38 + 104))(v39, enum case for Calendar.SearchDirection.forward(_:), v40);
  v21 = v32;
  v22 = v31;
  Calendar.date(bySettingHour:minute:second:of:matchingPolicy:repeatedTimePolicy:direction:)();
  v23 = v33;
  (*(v18 + 8))(v19, v20);
  (*(v3 + 8))(v16, v17);
  (*(v30 + 8))(v9, v29);
  v24 = v37;
  (*(v37 + 8))(v27, v23);
  (*(v34 + 8))(v22, v36);
  result = (*(v24 + 48))(v21, 1, v23);
  if (result != 1)
  {
    return (*(v24 + 32))(v26, v21, v23);
  }

  __break(1u);
  return result;
}

id sub_1003F1154(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v21 = type metadata accessor for Calendar.Component();
  v3 = *(v21 - 8);
  __chkstk_darwin(v21);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Calendar();
  v6 = *(v22 - 8);
  __chkstk_darwin(v22);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  static Calendar.current.getter();
  v19 = *(v3 + 104);
  v10 = v21;
  v19(v5, enum case for Calendar.Component.hour(_:), v21);
  v16 = Calendar.component(_:from:)();
  v18 = *(v3 + 8);
  v18(v5, v10);
  v11 = *(v6 + 8);
  v17 = v6 + 8;
  v12 = v22;
  v11(v8, v22);
  [v9 setStreakReminderHour:v16];
  static Calendar.current.getter();
  v19(v5, enum case for Calendar.Component.minute(_:), v10);
  v13 = Calendar.component(_:from:)();
  v18(v5, v10);
  v11(v8, v12);
  return [v9 setStreakReminderMinute:v13];
}

void sub_1003F13B8()
{
  v1 = v0;
  swift_getKeyPath();
  v15 = v0;
  sub_1003F3E54(&qword_100AE4660, type metadata accessor for NotificationSettingsViewModel, &unk_1009548CC);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  if (qword_100ACFD20 != -1)
  {
    swift_once();
  }

  v2 = qword_100B2F898;
  sub_1003EF28C([*(qword_100B2F898 + OBJC_IVAR____TtC7Journal27JournalNotificationsManager_notificationCenter) notificationSettings]);
  v3 = [*(v2 + OBJC_IVAR____TtC7Journal27JournalNotificationsManager_defaults) journalingScheduleData];
  if (v3)
  {
    v4 = v3;
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    sub_1003F3C98();
    Data.asObject<A>(of:)();
    sub_1000340DC(v5, v7);
    if (v15)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v1 + 80);
    ObjectType = swift_getObjectType();
    (*(v9 + 8))(v1, ObjectType, v9);
    swift_unknownObjectRelease();
  }

  v11 = objc_opt_self();
  v12 = [v11 defaultCenter];
  [v12 addObserver:v1 selector:"saveIfNeeded" name:UIApplicationWillResignActiveNotification object:0];

  v13 = [v11 defaultCenter];
  [v13 addObserver:v1 selector:"refreshNotificationSettings" name:UISceneDidActivateNotification object:0];

  v14 = [v11 defaultCenter];
  if (qword_100ACFD18 != -1)
  {
    swift_once();
  }

  [v14 addObserver:v1 selector:"refreshNotificationSettings" name:qword_100B2F890 object:0];
}

uint64_t sub_1003F1768(char a1)
{
  if (*(v1 + 56) == 1)
  {
    *(v1 + 56) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1003F3E54(&qword_100AE4660, type metadata accessor for NotificationSettingsViewModel, &unk_1009548CC);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v4 = swift_getKeyPath();
  __chkstk_darwin(v4);
  sub_1003F3E54(&qword_100AE4660, type metadata accessor for NotificationSettingsViewModel, &unk_1009548CC);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v1 + 80);
    ObjectType = swift_getObjectType();
    (*(v6 + 16))(v1, a1 & 1, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1003F19BC(char a1)
{
  if (*(v1 + 57) == 1)
  {
    *(v1 + 57) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1003F3E54(&qword_100AE4660, type metadata accessor for NotificationSettingsViewModel, &unk_1009548CC);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v4 = swift_getKeyPath();
  __chkstk_darwin(v4);
  sub_1003F3E54(&qword_100AE4660, type metadata accessor for NotificationSettingsViewModel, &unk_1009548CC);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v1 + 80);
    ObjectType = swift_getObjectType();
    (*(v6 + 24))(v1, a1 & 1, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_1003F1C10()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1000F24EC(&qword_100AD5170, &unk_100943680);
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - v4;
  v6 = objc_opt_self();
  v7 = [v6 defaultCenter];
  [v7 removeObserver:v1 name:UIApplicationWillResignActiveNotification object:0];

  v8 = [v6 defaultCenter];
  [v8 removeObserver:v1 name:UISceneDidActivateNotification object:0];

  v9 = [v6 defaultCenter];
  if (qword_100ACFD18 != -1)
  {
    swift_once();
  }

  [v9 removeObserver:v1 name:qword_100B2F890 object:0];

  swift_getKeyPath();
  v20 = v1;
  sub_1003F3E54(&qword_100AE4660, type metadata accessor for NotificationSettingsViewModel, &unk_1009548CC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((v1[7] & 1) != 0 || (swift_getKeyPath(), v20 = v1, ObservationRegistrar.access<A, B>(_:keyPath:)(), , *(v1 + 57) == 1))
  {
    swift_getKeyPath();
    v20 = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (v1[8] == 0x8000000000000000 || (swift_getKeyPath(), v20 = v1, ObservationRegistrar.access<A, B>(_:keyPath:)(), , v1[8] >> 62 == 1))
    {
      swift_getKeyPath();
      v20 = v1;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if ([v1[3] authorizationStatus] == 2)
      {
        v11 = [objc_opt_self() sharedApplication];
        v12 = String._bridgeToObjectiveC()();
        v13 = [v11 beginBackgroundTaskWithName:v12 expirationHandler:0];

        v14 = type metadata accessor for TaskPriority();
        (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
        type metadata accessor for MainActor();

        v15 = static MainActor.shared.getter();
        v16 = swift_allocObject();
        v16[2] = v15;
        v16[3] = &protocol witness table for MainActor;
        v16[4] = v1;
        v16[5] = v13;
        v16[6] = v2;
        v17 = sub_1003E9628(0, 0, v5, &unk_1009549C0, v16);
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        *(&v19 - 2) = v1;
        *(&v19 - 1) = v17;
        v20 = v1;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }
    }
  }

  return result;
}

uint64_t sub_1003F20CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v5[21] = type metadata accessor for StreakSummary(0);
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v5[24] = type metadata accessor for InsightsDataManager.Streaks(0);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[27] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[28] = v7;
  v5[29] = v6;

  return _swift_task_switch(sub_1003F21DC, v7, v6);
}

uint64_t sub_1003F21DC()
{
  v1 = v0[19];
  swift_getKeyPath();
  v0[5] = v1;
  v0[30] = OBJC_IVAR____TtC7Journal29NotificationSettingsViewModel___observationRegistrar;
  v0[31] = sub_1003F3E54(&qword_100AE4660, type metadata accessor for NotificationSettingsViewModel, &unk_1009548CC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + 56) == 1)
  {
    if (qword_100ACFD20 != -1)
    {
      swift_once();
    }

    v2 = v0[19];
    swift_getKeyPath();
    v0[15] = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    v0[16] = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    v0[17] = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if ([*(v2 + 24) authorizationStatus] == 2 && (v3 = v0[19], swift_getKeyPath(), v0[18] = v3, ObservationRegistrar.access<A, B>(_:keyPath:)(), , *(v3 + 64) >> 62 != 1))
    {
      [*(v0[19] + 16) isJournalingScheduleEnabled];
      v4 = v0[28];
      v5 = v0[29];
      v6 = sub_1003F2828;
    }

    else
    {
      v4 = v0[28];
      v5 = v0[29];
      v6 = sub_1003F40A4;
    }

    return _swift_task_switch(v6, v4, v5);
  }

  v7 = v0[19];
  swift_getKeyPath();
  v0[6] = v7;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((*(v7 + 56) & 1) != 0 || (v8 = v0[19], swift_getKeyPath(), v0[7] = v8, ObservationRegistrar.access<A, B>(_:keyPath:)(), , *(v8 + 57) == 1))
  {
    if (qword_100AD00D8 != -1)
    {
      swift_once();
    }

    v9 = v0[19];
    v0[32] = qword_100B2FD90;
    if ([*(v9 + 16) isStreakReminderEnabled])
    {
      v10 = swift_task_alloc();
      v0[33] = v10;
      *v10 = v0;
      v10[1] = sub_1003F2C60;

      return sub_1000351A4();
    }

    if (qword_100ACFD20 != -1)
    {
      swift_once();
    }

    v12 = *(qword_100B2F898 + OBJC_IVAR____TtC7Journal27JournalNotificationsManager_notificationCenter);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v12 removePendingNotificationRequestsWithIdentifiers:isa];
  }

  else
  {
  }

  v14 = v0[19];
  swift_getKeyPath();
  v15 = swift_task_alloc();
  *(v15 + 16) = v14;
  *(v15 + 24) = 0x8000000000000008;
  v0[8] = v14;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  if (*(v14 + 56))
  {
    v16 = v0[19];
    swift_getKeyPath();
    v17 = swift_task_alloc();
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    v0[10] = v16;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v0[19] + 56) = 0;
  }

  v18 = v0[19];
  if (*(v18 + 57))
  {
    swift_getKeyPath();
    v19 = swift_task_alloc();
    *(v19 + 16) = v18;
    *(v19 + 24) = 0;
    v0[9] = v18;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v18 + 57) = 0;
  }

  v20 = v0[20];
  v21 = [objc_opt_self() sharedApplication];
  [v21 endBackgroundTask:v20];

  v22 = v0[1];

  return v22();
}

uint64_t sub_1003F2828()
{
  v1 = v0[19];
  swift_getKeyPath();
  v0[6] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((*(v1 + 56) & 1) != 0 || (v2 = v0[19], swift_getKeyPath(), v0[7] = v2, ObservationRegistrar.access<A, B>(_:keyPath:)(), , *(v2 + 57) == 1))
  {
    if (qword_100AD00D8 != -1)
    {
      swift_once();
    }

    v3 = v0[19];
    v0[32] = qword_100B2FD90;
    if ([*(v3 + 16) isStreakReminderEnabled])
    {
      v4 = swift_task_alloc();
      v0[33] = v4;
      *v4 = v0;
      v4[1] = sub_1003F2C60;

      return sub_1000351A4();
    }

    if (qword_100ACFD20 != -1)
    {
      swift_once();
    }

    v6 = *(qword_100B2F898 + OBJC_IVAR____TtC7Journal27JournalNotificationsManager_notificationCenter);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v6 removePendingNotificationRequestsWithIdentifiers:isa];
  }

  else
  {
  }

  v8 = v0[19];
  swift_getKeyPath();
  v9 = swift_task_alloc();
  *(v9 + 16) = v8;
  *(v9 + 24) = 0x8000000000000008;
  v0[8] = v8;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  if (*(v8 + 56))
  {
    v10 = v0[19];
    swift_getKeyPath();
    v11 = swift_task_alloc();
    *(v11 + 16) = v10;
    *(v11 + 24) = 0;
    v0[10] = v10;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v0[19] + 56) = 0;
  }

  v12 = v0[19];
  if (*(v12 + 57))
  {
    swift_getKeyPath();
    v13 = swift_task_alloc();
    *(v13 + 16) = v12;
    *(v13 + 24) = 0;
    v0[9] = v12;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v12 + 57) = 0;
  }

  v14 = v0[20];
  v15 = [objc_opt_self() sharedApplication];
  [v15 endBackgroundTask:v14];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1003F2C60()
{
  v1 = *v0;

  v2 = *(v1 + 232);
  v3 = *(v1 + 224);

  return _swift_task_switch(sub_1003F2D80, v3, v2);
}

uint64_t sub_1003F2D80()
{
  v1 = v0[32];
  v2 = v0[26];
  v3 = v0[24];
  v19 = v0[21];
  swift_getKeyPath();
  v0[11] = v1;
  sub_1003F3E54(&qword_100AD99A0, type metadata accessor for InsightsDataManager, &unk_100962218);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC7Journal19InsightsDataManager__streaks;
  swift_beginAccess();
  sub_1003F3E9C(v1 + v4, v2, type metadata accessor for InsightsDataManager.Streaks);
  v5 = *(v19 + 28);
  v6 = v0[26];
  if (*(v2 + *(v3 + 20) + v5) >= 2)
  {
    v8 = *(v6 + v5);
    sub_1003F3F04(v6, type metadata accessor for InsightsDataManager.Streaks);
    v7 = v8 < 3;
  }

  else
  {
    sub_1003F3F04(v6, type metadata accessor for InsightsDataManager.Streaks);
    v7 = 0;
  }

  v9 = v0[32];
  v10 = v0[25];
  swift_getKeyPath();
  v0[12] = v9;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_1003F3E9C(v1 + v4, v10, type metadata accessor for InsightsDataManager.Streaks);
  v11 = v0[25];
  v12 = v11;
  if (v7)
  {
    v12 = v11 + *(v3 + 20);
  }

  v14 = v0[22];
  v13 = v0[23];
  sub_1003F3E9C(v12, v14, type metadata accessor for StreakSummary);
  sub_1003F3F04(v11, type metadata accessor for InsightsDataManager.Streaks);
  sub_1003D86F0(v14, v13);
  if (qword_100ACFD20 != -1)
  {
    swift_once();
  }

  v15 = v0[27];

  v16 = swift_task_alloc();
  v0[34] = v16;
  *v16 = v0;
  v16[1] = sub_1003F3078;
  v17 = v0[23];

  return sub_1003C2990(v15, &protocol witness table for MainActor, v17, v7);
}

uint64_t sub_1003F3078()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  v3 = *(v2 + 232);
  v4 = *(v2 + 224);
  if (v0)
  {
    v5 = sub_1003F3458;
  }

  else
  {
    v5 = sub_1003F31CC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1003F31CC()
{
  v1 = v0[23];

  sub_1003F3F04(v1, type metadata accessor for StreakSummary);
  v2 = v0[19];
  swift_getKeyPath();
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = 0x8000000000000008;
  v0[8] = v2;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  if (*(v2 + 56))
  {
    v4 = v0[19];
    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v4;
    *(v5 + 24) = 0;
    v0[10] = v4;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v0[19] + 56) = 0;
  }

  v6 = v0[19];
  if (*(v6 + 57))
  {
    swift_getKeyPath();
    v7 = swift_task_alloc();
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    v0[9] = v6;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v6 + 57) = 0;
  }

  v8 = v0[20];
  v9 = [objc_opt_self() sharedApplication];
  [v9 endBackgroundTask:v8];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1003F3458()
{
  v1 = v0[35];
  v2 = v0[23];
  v3 = v0[19];

  sub_1003F3F04(v2, type metadata accessor for StreakSummary);
  swift_getKeyPath();
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1 | 0x4000000000000000;
  v0[13] = v3;
  swift_errorRetain();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  v0[14] = v3;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = v0[19];
    v6 = *(v5 + 80);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(v5, ObjectType, v6);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v8 = v0[20];
  v9 = [objc_opt_self() sharedApplication];
  [v9 endBackgroundTask:v8];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1003F3694()
{

  sub_1003F3E14(*(v0 + 64));
  sub_100038534(v0 + 72);
  v1 = OBJC_IVAR____TtC7Journal29NotificationSettingsViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NotificationSettingsViewModel(uint64_t a1)
{
  result = qword_100AE3220;
  if (!qword_100AE3220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003F37AC(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_1003F3878()
{
  v1 = v0;
  sub_1000065A8(0, &qword_100AE1A30, NSUserDefaults_ptr);
  *(v0 + 16) = static NSUserDefaults.shared.getter();
  if (qword_100ACFD20 != -1)
  {
    swift_once();
  }

  v2 = qword_100B2F898;
  *(v1 + 24) = [*(qword_100B2F898 + OBJC_IVAR____TtC7Journal27JournalNotificationsManager_notificationCenter) notificationSettings];
  v3 = [*(v2 + OBJC_IVAR____TtC7Journal27JournalNotificationsManager_defaults) journalingScheduleData];
  if (v3)
  {
    v4 = v3;
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    sub_1003F3C98();
    Data.asObject<A>(of:)();
    sub_1000340DC(v5, v7);
    v8 = v11;
    v9 = v12;
  }

  else
  {
    v9 = 0;
    v8 = 0uLL;
  }

  *(v1 + 32) = v8;
  *(v1 + 48) = v9;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0x8000000000000000;
  *(v1 + 80) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 80) = 0;
  swift_unknownObjectWeakInit();
  ObservationRegistrar.init()();
  return v1;
}

uint64_t sub_1003F39EC()
{
  if (qword_100ACFD20 != -1)
  {
    swift_once();
  }

  sub_1003EF28C([*(qword_100B2F898 + OBJC_IVAR____TtC7Journal27JournalNotificationsManager_notificationCenter) notificationSettings]);
  swift_getKeyPath();
  sub_1003F3E54(&qword_100AE4660, type metadata accessor for NotificationSettingsViewModel, &unk_1009548CC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 80);
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(v0, ObjectType, v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_1003F3B40(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);

  return result;
}

unint64_t sub_1003F3B84(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_1003F3BA0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1003F3BFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1003F3C5C(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

unint64_t sub_1003F3C98()
{
  result = qword_100AE34D8;
  if (!qword_100AE34D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE34D8);
  }

  return result;
}

double sub_1003F3CEC()
{
  *(*(v0 + 16) + 80) = *(v0 + 32);
  swift_unknownObjectWeakAssign();
  return result;
}

uint64_t sub_1003F3D14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100032ECC;

  return sub_1003F20CC(a1, v4, v5, v6, v7);
}

void sub_1003F3DF4(unint64_t a1)
{
  if (a1 >> 62 == 1)
  {
    swift_errorRetain();
  }

  else if (!(a1 >> 62))
  {
  }
}

double sub_1003F3E14(unint64_t a1)
{
  if (a1 >> 62 == 1)
  {
  }

  else if (!(a1 >> 62))
  {
  }

  return result;
}

uint64_t sub_1003F3E54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003F3E9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003F3F04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_1003F3F84()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 64);
  *(v2 + 64) = v1;
  sub_1003F3DF4(v1);
  return sub_1003F3E14(v3);
}

void sub_1003F4054()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 24);
  *(v1 + 24) = v2;
  v4 = v2;
}

uint64_t sub_1003F40F0()
{
  v0 = _s23YearAdaptiveFormatStyleVMa(0);
  __chkstk_darwin(v0);
  v2 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000F24EC(&qword_100AD2A70, &qword_100952E00);
  __chkstk_darwin(v3 - 8);
  v5 = &v18 - v4;
  v6 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  sub_1006AC594(v5);
  v9 = type metadata accessor for PodcastAssetMetadata();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v5, 1, v9) == 1)
  {
    v11 = &qword_100AD2A70;
    v12 = &qword_100952E00;
    v13 = v5;
LABEL_5:
    sub_100004F84(v13, v11, v12);
    return 0;
  }

  PodcastAssetMetadata.timePlayed.getter();
  (*(v10 + 8))(v5, v9);
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v8, 1, v14) == 1)
  {
    v11 = &unk_100AD4790;
    v12 = &unk_10093B4E0;
    v13 = v8;
    goto LABEL_5;
  }

  static Date.FormatStyle.TimeStyle.shortened.getter();
  static FormatStyleCapitalizationContext.standalone.getter();
  static Locale.autoupdatingCurrent.getter();
  static Calendar.autoupdatingCurrent.getter();
  static TimeZone.autoupdatingCurrent.getter();
  static Date.now.getter();
  sub_100167A30();
  Date.formatted<A>(_:)();
  sub_1000FBBCC(v2);
  v17 = v18;
  (*(v15 + 8))(v8, v14);
  return v17;
}

uint64_t sub_1003F43E0()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v18 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView);
  v9 = OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType;
  v10 = *((swift_isaMask & *v8) + 0x58);
  v11 = *(v0 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType);
  v12 = v8;
  v10(8, v11);

  sub_1001F60BC();
  v13 = *(v1 + OBJC_IVAR____TtC7Journal22MotionActivityGridView_previousSizeType);
  if (v13 == 8 || (result = sub_10003C2FC(*(v1 + v9), v13), (result & 1) == 0))
  {
    result = [*(v1 + OBJC_IVAR____TtC7Journal23MotionActivityAssetView_motionImageView) superview];
    if (result)
    {

      result = [*(v1 + OBJC_IVAR____TtC7Journal23MotionActivityAssetView_exerciseNameLabel) superview];
      if (result)
      {

        result = [*(v1 + OBJC_IVAR____TtC7Journal23MotionActivityAssetView_workoutDataLabel) superview];
        if (result)
        {

          sub_100005508();
          v15 = static OS_dispatch_queue.main.getter();
          v16 = swift_allocObject();
          swift_unknownObjectWeakInit();
          aBlock[4] = sub_1003F65D0;
          aBlock[5] = v16;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100006C7C;
          aBlock[3] = &unk_100A6BD50;
          v17 = _Block_copy(aBlock);

          static DispatchQoS.unspecified.getter();
          aBlock[0] = _swiftEmptyArrayStorage;
          sub_1000826D8();
          sub_1000F24EC(&unk_100AD6220, &unk_10093C0A0);
          sub_100006610();
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v17);

          (*(v19 + 8))(v4, v2);
          return (*(v18 + 8))(v7, v5);
        }
      }
    }
  }

  return result;
}

void sub_1003F4780(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1001F60BC();
    sub_1001F7974();
    v3 = OBJC_IVAR____TtC7Journal23MotionActivityAssetView_exerciseNameLabel;
    v4 = *&v2[OBJC_IVAR____TtC7Journal23MotionActivityAssetView_exerciseNameLabel];
    sub_1000746FC();

    v5 = OBJC_IVAR____TtC7Journal23MotionActivityAssetView_workoutDataLabel;
    v6 = *&v2[OBJC_IVAR____TtC7Journal23MotionActivityAssetView_workoutDataLabel];
    sub_1000746FC();

    v7 = OBJC_IVAR____TtC7Journal23MotionActivityAssetView_motionImageView;
    v8 = *&v2[OBJC_IVAR____TtC7Journal23MotionActivityAssetView_motionImageView];

    sub_1000746FC();
    v9 = OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType;
    v10 = v2[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType];
    if (v10 > 3)
    {
      if (v10 - 4 >= 2)
      {
        if (v10 == 6)
        {
          v17 = *&v2[v3];
          v18 = v2;
          [v17 setHidden:1];
          [*&v2[v5] setHidden:1];
          v19 = *&v2[v7];
          sub_100013178(8.0);
        }

        else
        {
          v20 = v2;
          sub_1003F5AF4();
        }

        goto LABEL_7;
      }
    }

    else if (v10 >= 3)
    {
      v11 = v2;
      sub_1003F52A4();
LABEL_7:
      v13 = v2[v9];

      v2[OBJC_IVAR____TtC7Journal22MotionActivityGridView_previousSizeType] = v13;
      [v2 layoutIfNeeded];
      v14 = *&v2[v3];

      [v14 layoutIfNeeded];
      v15 = *&v2[v5];

      [v15 layoutIfNeeded];
      v16 = *&v2[v7];

      [v16 layoutIfNeeded];
      return;
    }

    v12 = v2;
    sub_1003F49A0();
    goto LABEL_7;
  }
}

id sub_1003F49A0()
{
  v1 = v0;
  v69 = OBJC_IVAR____TtC7Journal23MotionActivityAssetView_exerciseNameLabel;
  [*&v0[OBJC_IVAR____TtC7Journal23MotionActivityAssetView_exerciseNameLabel] setHidden:0];
  v68 = OBJC_IVAR____TtC7Journal23MotionActivityAssetView_workoutDataLabel;
  [*&v0[OBJC_IVAR____TtC7Journal23MotionActivityAssetView_workoutDataLabel] setHidden:0];
  v2 = OBJC_IVAR____TtC7Journal23MotionActivityAssetView_motionImageView;
  v3 = *&v0[OBJC_IVAR____TtC7Journal23MotionActivityAssetView_motionImageView];
  v4 = [v3 superview];
  if (v4)
  {
    v5 = v4;
    [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [v3 leadingAnchor];
    v7 = [v5 leadingAnchor];
    v8 = [v6 constraintEqualToAnchor:v7];

    [v8 setConstant:8.0];
    if (v8)
    {
      [v8 setActive:1];
    }
  }

  else
  {
    v8 = 0;
    v5 = v3;
  }

  v9 = *&v1[v2];
  v10 = [v9 superview];
  if (v10)
  {
    v11 = v10;
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = [v9 topAnchor];
    v13 = [v11 topAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];

    [v14 setConstant:8.0];
    if (v14)
    {
      [v14 setActive:1];
    }
  }

  else
  {
    v14 = 0;
    v11 = v9;
  }

  v15 = *&v1[v2];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = [v15 heightAnchor];
  v17 = [v15 widthAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 multiplier:1.0];

  [v18 setActive:1];
  v19 = *&v1[v2];
  [v1 frame];
  v21 = v20 + -16.0;
  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
  v22 = [v19 widthAnchor];
  v23 = [v22 constraintEqualToConstant:v21];

  [v23 setActive:1];
  v24 = *&v1[v2];
  v25 = sub_100028DA0(0, 1, 8.0);

  v26 = *&v1[v2];
  v27 = *&v1[v69];
  v28 = v26;
  [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
  v29 = [v27 leadingAnchor];
  v30 = [v28 trailingAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];

  [v31 setConstant:8.0];
  [v31 setActive:1];

  v32 = [*&v1[v69] bottomAnchor];
  v33 = [*&v1[v2] centerYAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];

  [v34 setActive:1];
  v35 = *&v1[v69];
  v36 = [v35 superview];
  if (v36)
  {
    v37 = v36;
    [v35 setTranslatesAutoresizingMaskIntoConstraints:0];
    v38 = [v35 trailingAnchor];
    v39 = [v37 trailingAnchor];
    v40 = [v38 constraintLessThanOrEqualToAnchor:v39];

    [v40 setConstant:-8.0];
    if (v40)
    {
      [v40 setActive:1];
    }

    v41 = v68;
    v42 = &selRef_setSuggestedName_;
  }

  else
  {
    v40 = 0;
    v37 = v35;
    v41 = v68;
    v42 = &selRef_setSuggestedName_;
  }

  [*&v1[v69] setTextAlignment:0];
  v43 = *&v1[v69];
  v44 = [v43 superview];
  if (v44)
  {
    v45 = v44;
    [v43 setTranslatesAutoresizingMaskIntoConstraints:0];
    v46 = [v43 topAnchor];
    v47 = [v45 topAnchor];
    v48 = [v46 constraintGreaterThanOrEqualToAnchor:v47];

    [v48 setConstant:8.0];
    if (v48)
    {
      [v48 setActive:1];
    }
  }

  else
  {
    v48 = 0;
    v45 = v43;
  }

  v49 = *&v1[v2];
  v50 = *&v1[v41];
  v51 = v49;
  [v50 setTranslatesAutoresizingMaskIntoConstraints:0];
  v52 = [v50 v42[232]];
  v53 = [v51 trailingAnchor];
  v54 = [v52 constraintEqualToAnchor:v53];

  [v54 setConstant:8.0];
  [v54 setActive:1];

  v55 = [*&v1[v41] topAnchor];
  v56 = [*&v1[v2] centerYAnchor];
  v57 = [v55 constraintEqualToAnchor:v56];

  [v57 setActive:1];
  v58 = *&v1[v41];
  v59 = [v58 superview];
  if (v59)
  {
    v60 = v59;
    [v58 setTranslatesAutoresizingMaskIntoConstraints:0];
    v61 = [v58 trailingAnchor];
    v62 = [v60 trailingAnchor];
    v63 = [v61 constraintLessThanOrEqualToAnchor:v62];

    [v63 setConstant:-8.0];
    if (v63)
    {
      [v63 setActive:1];
    }
  }

  else
  {
    v63 = 0;
    v60 = v58;
  }

  v64 = *&v1[v41];
  v65 = sub_100028DA0(2, 1, 8.0);

  v66 = *&v1[v41];

  return [v66 setTextAlignment:0];
}

void sub_1003F52A4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7Journal23MotionActivityAssetView_exerciseNameLabel;
  [*(v0 + OBJC_IVAR____TtC7Journal23MotionActivityAssetView_exerciseNameLabel) setHidden:0];
  v3 = OBJC_IVAR____TtC7Journal23MotionActivityAssetView_workoutDataLabel;
  [*(v0 + OBJC_IVAR____TtC7Journal23MotionActivityAssetView_workoutDataLabel) setHidden:0];
  v60 = v3;
  [*(v0 + v3) setTextAlignment:1];
  [*(v0 + v2) setTextAlignment:1];
  v4 = *(v0 + v2);
  v5 = [v4 superview];
  if (v5)
  {
    v6 = v5;
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [v4 topAnchor];
    v8 = [v6 topAnchor];
    v9 = [v7 constraintEqualToAnchor:v8];

    [v9 setConstant:12.0];
    if (v9)
    {
      [v9 setActive:1];
    }
  }

  else
  {
    v9 = 0;
    v6 = v4;
  }

  v10 = *(v1 + v2);
  v11 = [v10 superview];
  if (v11)
  {
    v12 = v11;
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = [v10 leadingAnchor];
    v14 = [v12 leadingAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];

    [v15 setConstant:8.0];
    if (v15)
    {
      [v15 setActive:1];
    }
  }

  else
  {
    v15 = 0;
    v12 = v10;
  }

  v16 = *(v1 + v2);
  v17 = [v16 superview];
  if (v17)
  {
    v18 = v17;
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
    v19 = [v16 trailingAnchor];
    v20 = [v18 trailingAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];

    [v21 setConstant:-8.0];
    if (v21)
    {
      [v21 setActive:1];
    }
  }

  else
  {
    v21 = 0;
    v18 = v16;
  }

  v22 = *&v60[v1];
  v23 = sub_100028DA0(0, 1, 12.0);

  v24 = *&v60[v1];
  v25 = [v24 superview];
  if (v25)
  {
    v26 = v25;
    [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
    v27 = [v24 leadingAnchor];
    v28 = [v26 leadingAnchor];
    v29 = [v27 constraintEqualToAnchor:v28];

    [v29 setConstant:12.0];
    if (v29)
    {
      [v29 setActive:1];
    }
  }

  else
  {
    v29 = 0;
    v26 = v24;
  }

  v30 = *&v60[v1];
  v31 = [v30 superview];
  if (v31)
  {
    v32 = v31;
    [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
    v33 = [v30 trailingAnchor];
    v34 = [v32 trailingAnchor];
    v35 = [v33 constraintEqualToAnchor:v34];

    [v35 setConstant:-12.0];
    if (v35)
    {
      [v35 setActive:1];
    }
  }

  else
  {
    v35 = 0;
    v32 = v30;
  }

  v36 = OBJC_IVAR____TtC7Journal23MotionActivityAssetView_motionImageView;
  v37 = *(v1 + v2);
  v38 = *(v1 + OBJC_IVAR____TtC7Journal23MotionActivityAssetView_motionImageView);
  v39 = v37;
  [v38 setTranslatesAutoresizingMaskIntoConstraints:0];
  v40 = [v38 topAnchor];
  v41 = [v39 bottomAnchor];
  v42 = [v40 constraintEqualToAnchor:v41];

  [v42 setConstant:5.0];
  [v42 setActive:1];

  v43 = *&v60[v1];
  v44 = *(v1 + v36);
  v45 = v43;
  [v44 setTranslatesAutoresizingMaskIntoConstraints:0];
  v46 = [v44 bottomAnchor];
  v47 = [v45 topAnchor];
  v48 = [v46 constraintEqualToAnchor:v47];

  [v48 setConstant:-5.0];
  [v48 setActive:1];

  v49 = *(v1 + v36);
  v50 = [v49 superview];
  if (v50)
  {
    v51 = v50;
    [v49 setTranslatesAutoresizingMaskIntoConstraints:0];
    v52 = [v49 leadingAnchor];
    v53 = [v51 leadingAnchor];
    v54 = [v52 constraintEqualToAnchor:v53];

    [v54 setConstant:12.0];
    if (v54)
    {
      [v54 setActive:1];
    }
  }

  else
  {
    v54 = 0;
    v51 = v49;
  }

  v55 = *(v1 + v36);
  v56 = [v55 superview];
  if (v56)
  {
    v57 = v56;
    [v55 setTranslatesAutoresizingMaskIntoConstraints:0];
    v58 = [v55 trailingAnchor];
    v59 = [v57 trailingAnchor];
    v61 = [v58 constraintEqualToAnchor:v59];

    [v61 setConstant:-12.0];
    if (v61)
    {
      [v61 setActive:1];
    }

    else
    {
      v61 = 0;
    }
  }

  else
  {
    v61 = 0;
    v57 = v55;
  }
}

void sub_1003F5AF4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7Journal23MotionActivityAssetView_exerciseNameLabel;
  [*(v0 + OBJC_IVAR____TtC7Journal23MotionActivityAssetView_exerciseNameLabel) setHidden:0];
  v3 = OBJC_IVAR____TtC7Journal23MotionActivityAssetView_workoutDataLabel;
  [*(v0 + OBJC_IVAR____TtC7Journal23MotionActivityAssetView_workoutDataLabel) setHidden:0];
  [*(v0 + v2) setTextAlignment:1];
  [*(v0 + v3) setTextAlignment:1];
  v4 = qword_100AD03C8;
  v5 = *(v0 + v2);
  if (v4 != -1)
  {
    swift_once();
  }

  [v5 setFont:qword_100B303C0];

  v65 = v3;
  v6 = *(v1 + v3);
  v7 = qword_100AD0380;
  v8 = v6;
  if (v7 != -1)
  {
    swift_once();
  }

  [v8 setFont:qword_100B30378];

  v9 = *(v1 + v2);
  v10 = [v9 superview];
  if (v10)
  {
    v11 = v10;
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = [v9 topAnchor];
    v13 = [v11 topAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];

    [v14 setConstant:25.0];
    if (v14)
    {
      [v14 setActive:1];
    }
  }

  else
  {
    v14 = 0;
    v11 = v9;
  }

  v15 = *(v1 + v2);
  v16 = [v15 superview];
  if (v16)
  {
    v17 = v16;
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    v18 = [v15 leadingAnchor];
    v19 = [v17 leadingAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];

    [v20 setConstant:20.0];
    if (v20)
    {
      [v20 setActive:1];
    }
  }

  else
  {
    v20 = 0;
    v17 = v15;
  }

  v21 = *(v1 + v2);
  v22 = [v21 superview];
  if (v22)
  {
    v23 = v22;
    [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
    v24 = [v21 trailingAnchor];
    v25 = [v23 trailingAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];

    [v26 setConstant:-20.0];
    if (v26)
    {
      [v26 setActive:1];
    }
  }

  else
  {
    v26 = 0;
    v23 = v21;
  }

  v27 = *&v65[v1];
  v28 = sub_100028DA0(0, 1, 25.0);

  v29 = *&v65[v1];
  v30 = [v29 superview];
  if (v30)
  {
    v31 = v30;
    [v29 setTranslatesAutoresizingMaskIntoConstraints:0];
    v32 = [v29 leadingAnchor];
    v33 = [v31 leadingAnchor];
    v34 = [v32 constraintEqualToAnchor:v33];

    [v34 setConstant:20.0];
    if (v34)
    {
      [v34 setActive:1];
    }
  }

  else
  {
    v34 = 0;
    v31 = v29;
  }

  v35 = *&v65[v1];
  v36 = [v35 superview];
  if (v36)
  {
    v37 = v36;
    [v35 setTranslatesAutoresizingMaskIntoConstraints:0];
    v38 = [v35 trailingAnchor];
    v39 = [v37 trailingAnchor];
    v40 = [v38 constraintEqualToAnchor:v39];

    [v40 setConstant:-20.0];
    if (v40)
    {
      [v40 setActive:1];
    }
  }

  else
  {
    v40 = 0;
    v37 = v35;
  }

  v41 = OBJC_IVAR____TtC7Journal23MotionActivityAssetView_motionImageView;
  v42 = *(v1 + v2);
  v43 = *(v1 + OBJC_IVAR____TtC7Journal23MotionActivityAssetView_motionImageView);
  v44 = v42;
  [v43 setTranslatesAutoresizingMaskIntoConstraints:0];
  v45 = [v43 topAnchor];
  v46 = [v44 bottomAnchor];
  v47 = [v45 constraintEqualToAnchor:v46];

  [v47 setConstant:15.0];
  [v47 setActive:1];

  v48 = *&v65[v1];
  v49 = *(v1 + v41);
  v50 = v48;
  [v49 setTranslatesAutoresizingMaskIntoConstraints:0];
  v51 = [v49 bottomAnchor];
  v52 = [v50 topAnchor];
  v53 = [v51 constraintEqualToAnchor:v52];

  [v53 setConstant:-15.0];
  [v53 setActive:1];

  v54 = *(v1 + v41);
  v55 = [v54 superview];
  if (v55)
  {
    v56 = v55;
    [v54 setTranslatesAutoresizingMaskIntoConstraints:0];
    v57 = [v54 leadingAnchor];
    v58 = [v56 leadingAnchor];
    v59 = [v57 constraintEqualToAnchor:v58];

    [v59 setConstant:12.0];
    if (v59)
    {
      [v59 setActive:1];
    }
  }

  else
  {
    v59 = 0;
    v56 = v54;
  }

  v60 = *(v1 + v41);
  v61 = [v60 superview];
  if (v61)
  {
    v62 = v61;
    [v60 setTranslatesAutoresizingMaskIntoConstraints:0];
    v63 = [v60 trailingAnchor];
    v64 = [v62 trailingAnchor];
    v66 = [v63 constraintEqualToAnchor:v64];

    [v66 setConstant:-12.0];
    if (v66)
    {
      [v66 setActive:1];
    }

    else
    {
      v66 = 0;
    }
  }

  else
  {
    v66 = 0;
    v62 = v60;
  }
}

id sub_1003F6500()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MotionActivityGridView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MotionActivityGridView(uint64_t a1)
{
  result = qword_100AE3518;
  if (!qword_100AE3518)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for CanvasDatePicker(uint64_t a1)
{
  result = qword_100AE3588;
  if (!qword_100AE3588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003F664C(uint64_t a1)
{
  sub_1003F6730(319, &unk_100AE3598, type metadata accessor for CanvasDatePickerViewModel, &type metadata accessor for Bindable);
  if (v1 <= 0x3F)
  {
    sub_1003F6730(319, &qword_100AF70F0, &type metadata accessor for Calendar, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1003F6730(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1003F67B0@<X0>(uint64_t a1@<X8>)
{
  v99 = a1;
  v98 = sub_1000F24EC(&qword_100AE35C8, &unk_100954B58);
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v96 = v85 - v2;
  v95 = sub_1000F24EC(&qword_100AD0E58, &unk_10093B570);
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v102 = v85 - v3;
  v92 = sub_1000F24EC(&qword_100AE35D0, &qword_100954B68);
  v93 = *(v92 - 8);
  __chkstk_darwin(v92);
  v90 = v85 - v4;
  v89 = sub_1000F24EC(&qword_100AE35D8, &qword_100954B70);
  v91 = *(v89 - 8);
  __chkstk_darwin(v89);
  v101 = v85 - v5;
  v87 = sub_1000F24EC(&qword_100AE35E0, &qword_100954B78);
  __chkstk_darwin(v87);
  v100 = v85 - v6;
  v7 = sub_1000F24EC(&qword_100AE35E8, &qword_100954B80);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v85 - v9;
  v11 = sub_1000F24EC(&qword_100AE35F0, &qword_100954B88);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v85 - v13;
  v105 = v1;
  sub_1000F24EC(&qword_100AE35F8, &qword_100954B90);
  sub_10000B58C(&qword_100AE3600, &qword_100AE35F8, &qword_100954B90, &protocol conformance descriptor for TupleView<A>);
  Form.init(content:)();
  sub_10000B58C(&qword_100AE3608, &qword_100AE35F0, &qword_100954B88, &protocol conformance descriptor for Form<A>);
  View.listHasLazyStackBehavior()();
  (*(v12 + 8))(v14, v11);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v15 = v100;
  (*(v8 + 32))(v100, v10, v7);
  v16 = v87;
  v17 = (v15 + *(v87 + 36));
  v18 = v114;
  v17[4] = v113;
  v17[5] = v18;
  v17[6] = v115;
  v19 = v110;
  *v17 = v109;
  v17[1] = v19;
  v20 = v112;
  v17[2] = v111;
  v17[3] = v20;
  v86 = type metadata accessor for LocalizedStringResource();
  v88 = v85;
  v21 = *(v86 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v86);
  v23 = v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for String.LocalizationValue();
  v85[1] = v85;
  __chkstk_darwin(v24 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  v25 = type metadata accessor for Locale();
  __chkstk_darwin(v25 - 8);
  static Locale.current.getter();
  v26 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v27 = __chkstk_darwin(v26);
  (*(v29 + 104))(v85 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for LocalizedStringResource.BundleDescription.main(_:), v27);
  v30 = LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  v31 = __chkstk_darwin(v30);
  v32 = v21;
  v33 = *(v21 + 16);
  v34 = v86;
  v33(v23, v23, v86, v31);
  v35 = Text.init(_:)();
  v37 = v36;
  LOBYTE(v12) = v38;
  v39 = sub_1003FCD48();
  v40 = v100;
  View.navigationTitle(_:)();
  sub_1000594D0(v35, v37, v12 & 1);

  (*(v32 + 8))(v23, v34);
  sub_100004F84(v40, &qword_100AE35E0, &qword_100954B78);
  v41 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v42 = *(v41 - 8);
  v43 = __chkstk_darwin(v41);
  v45 = v85 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v42 + 104))(v45, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v41, v43);
  v107 = v16;
  v108 = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v47 = v90;
  v48 = v89;
  v49 = v101;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v42 + 8))(v45, v41);
  (v91[1])(v49, v48);
  v50 = v103;
  v104 = v103;
  sub_1000F24EC(&qword_100AE3618, &qword_100954B98);
  v107 = v48;
  v108 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v51 = sub_1000F2A18(&qword_100AE3620, &qword_100954BA0);
  v52 = sub_10000B58C(&qword_100AE3628, &qword_100AE3620, &qword_100954BA0, &protocol conformance descriptor for ToolbarItem<A, B>);
  v107 = v51;
  v108 = v52;
  swift_getOpaqueTypeConformance2();
  v53 = v92;
  View.toolbar<A>(content:)();
  (v93[1])(v47, v53);
  v54 = type metadata accessor for CanvasDatePicker(0);
  v101 = v85;
  v55 = *(v54 - 8);
  v56 = *(v55 + 64);
  __chkstk_darwin(v54 - 8);
  sub_1003FD728(v50, v85 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CanvasDatePicker);
  type metadata accessor for MainActor();
  v57 = static MainActor.shared.getter();
  v58 = *(v55 + 80);
  v100 = ~v58;
  v59 = swift_allocObject();
  *(v59 + 16) = v57;
  *(v59 + 24) = &protocol witness table for MainActor;
  sub_1003FCE4C(v85 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0), v59 + ((v58 + 32) & ~v58));
  v60 = type metadata accessor for TaskPriority();
  v93 = v85;
  v92 = v60;
  v61 = *(v60 - 8);
  v62 = *(v61 + 64);
  __chkstk_darwin(v60);
  v63 = (v62 + 15) & 0xFFFFFFFFFFFFFFF0;
  v64 = v85 - v63;
  static TaskPriority.userInitiated.getter();
  if (sub_1008C158C(2, 26, 4, 0))
  {
    v90 = type metadata accessor for _TaskModifier2();
    v91 = v85;
    v89 = *(v90 - 1);
    __chkstk_darwin(v90);
    v66 = v85 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
    v107 = 0;
    v108 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v107 = 0xD00000000000002BLL;
    v108 = 0x80000001008F0B50;
    v106 = 118;
    v67._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v67);

    v88 = v85;
    v69 = __chkstk_darwin(v68);
    v70 = v85 - v63;
    v71 = v85 - v63;
    v72 = v92;
    (*(v61 + 16))(v70, v71, v92, v69);
    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    (*(v61 + 8))(v64, v72);
    v73 = v96;
    (*(v94 + 32))(v96, v102, v95);
    v74 = sub_1000F24EC(&qword_100AD0E60, &qword_100954BC0);
    v75 = (*(v89 + 32))(&v73[*(v74 + 36)], v66, v90);
  }

  else
  {
    v76 = sub_1000F24EC(&qword_100AD0E68, &qword_10093B580);
    v73 = v96;
    v77 = &v96[*(v76 + 36)];
    v78 = type metadata accessor for _TaskModifier();
    (*(v61 + 32))(&v77[*(v78 + 20)], v85 - v63, v92);
    *v77 = &unk_100954BB8;
    *(v77 + 1) = v59;
    v75 = (*(v94 + 32))(v73, v102, v95);
  }

  __chkstk_darwin(v75);
  v79 = v85 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003FD728(v103, v79, type metadata accessor for CanvasDatePicker);
  v80 = (v58 + 16) & v100;
  v81 = swift_allocObject();
  sub_1003FCE4C(v79, v81 + v80);
  v82 = v99;
  (*(v97 + 32))(v99, v73, v98);
  result = sub_1000F24EC(&qword_100AE3630, &qword_100954BC8);
  v84 = (v82 + *(result + 36));
  *v84 = 0;
  v84[1] = 0;
  v84[2] = sub_1003FCF8C;
  v84[3] = v81;
  return result;
}

uint64_t sub_1003F7814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v3 - 8);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1000F24EC(&qword_100AE3648, &qword_100954BD0);
  v44 = *(v47 - 8);
  __chkstk_darwin(v47);
  v48 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v45 = &v42 - v8;
  v9 = sub_1000F24EC(&qword_100AE3650, &qword_100954BD8);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v46 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v42 - v13;
  v51 = a1;
  LocalizedStringKey.init(stringLiteral:)();
  v56 = Text.init(_:tableName:bundle:comment:)();
  v57 = v15;
  v58 = v16 & 1;
  v59 = v17;
  sub_1000F24EC(&qword_100AE3658, &unk_100954BE0);
  v18 = sub_1000F2A18(&qword_100AD4018, &qword_100946220);
  v19 = type metadata accessor for GraphicalDatePickerStyle();
  v20 = sub_10000B58C(&qword_100AD72E0, &qword_100AD4018, &qword_100946220, &protocol conformance descriptor for DatePicker<A>);
  v21 = sub_1003FDF58(&qword_100AE3660, &type metadata accessor for GraphicalDatePickerStyle, &protocol conformance descriptor for GraphicalDatePickerStyle);
  v52 = v18;
  v53 = v19;
  v54 = v20;
  v55 = v21;
  swift_getOpaqueTypeConformance2();
  Section<>.init(header:content:)();
  KeyPath = swift_getKeyPath();
  v23 = static Visibility.== infix(_:_:)();
  v24 = &v14[*(v10 + 44)];
  v43 = v14;
  *v24 = KeyPath;
  v24[8] = v23 & 1;
  v50 = a1;
  LocalizedStringKey.init(stringLiteral:)();
  v56 = Text.init(_:tableName:bundle:comment:)();
  v57 = v25;
  v58 = v26 & 1;
  v59 = v27;
  sub_1000F24EC(&qword_100AE3528, &unk_100954AE0);
  Bindable.wrappedValue.getter();
  sub_1007AEB5C(v5);

  v52 = Text.init(_:)();
  v53 = v28;
  LOBYTE(v54) = v29 & 1;
  v55 = v30;
  sub_1000F24EC(&qword_100AE3668, &qword_100954C18);
  sub_10000B58C(&qword_100AE3670, &qword_100AE3668, &qword_100954C18, &protocol conformance descriptor for TupleView<A>);
  v31 = v45;
  Section<>.init(header:footer:content:)();
  v32 = v14;
  v33 = v46;
  sub_1000082B4(v32, v46, &qword_100AE3650, &qword_100954BD8);
  v34 = v44;
  v35 = *(v44 + 16);
  v36 = v47;
  v37 = v48;
  v35(v48, v31, v47);
  v38 = v49;
  sub_1000082B4(v33, v49, &qword_100AE3650, &qword_100954BD8);
  v39 = sub_1000F24EC(&qword_100AE3678, &qword_100954C20);
  v35((v38 + *(v39 + 48)), v37, v36);
  v40 = *(v34 + 8);
  v40(v31, v36);
  sub_100004F84(v43, &qword_100AE3650, &qword_100954BD8);
  v40(v37, v36);
  return sub_100004F84(v33, &qword_100AE3650, &qword_100954BD8);
}

uint64_t sub_1003F7DB4@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v1 = type metadata accessor for GraphicalDatePickerStyle();
  v36 = *(v1 - 8);
  v37 = v1;
  __chkstk_darwin(v1);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DatePickerComponents();
  __chkstk_darwin(v3 - 8);
  v33 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&qword_100AD2670, &qword_100940CB0);
  __chkstk_darwin(v5 - 8);
  v39 = &v29 - v6;
  v7 = sub_1000F24EC(&qword_100AD2690, &qword_100940CD0);
  __chkstk_darwin(v7 - 8);
  v38 = &v29 - v8;
  v9 = type metadata accessor for EntryDateSource();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = sub_1000F24EC(&qword_100AE3528, &unk_100954AE0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v29 - v15;
  v17 = sub_1000F24EC(&qword_100AD4018, &qword_100946220);
  v31 = *(v17 - 8);
  v32 = v17;
  __chkstk_darwin(v17);
  v30 = &v29 - v18;
  Bindable.projectedValue.getter();
  v19 = (*(v10 + 104))(&v29 - v12, enum case for EntryDateSource.custom(_:), v9);
  v20 = __chkstk_darwin(v19);
  (*(v10 + 32))(&v29 - v12, &v29 - v12, v9, v20);
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  (*(v14 + 8))(v16, v13);
  Bindable.wrappedValue.getter();
  v21 = v40;
  v22 = OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel_maximumDate;
  v23 = type metadata accessor for Date();
  (*(*(v23 - 8) + 16))(v39, v21 + v22, v23);

  sub_1003FDF58(&qword_100AD5BF0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    static DatePickerComponents.date.getter();
    v25 = v30;
    DatePicker.init(selection:in:displayedComponents:label:)();
    v26 = v34;
    GraphicalDatePickerStyle.init()();
    sub_10000B58C(&qword_100AD72E0, &qword_100AD4018, &qword_100946220, &protocol conformance descriptor for DatePicker<A>);
    sub_1003FDF58(&qword_100AE3660, &type metadata accessor for GraphicalDatePickerStyle, &protocol conformance descriptor for GraphicalDatePickerStyle);
    v27 = v32;
    v28 = v37;
    View.datePickerStyle<A>(_:)();
    (*(v36 + 8))(v26, v28);
    return (*(v31 + 8))(v25, v27);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003F836C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EntryDateSource();
  sub_1003FDF58(&qword_100AE36F0, &type metadata accessor for EntryDateSource, &protocol conformance descriptor for EntryDateSource);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1003F83F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v26 = a2;
  v4 = sub_1000F24EC(&qword_100AE2AA0, &unk_100954D20);
  __chkstk_darwin(v4 - 8);
  v24 = &v21 - v5;
  v6 = type metadata accessor for Date();
  v23 = *(v6 - 8);
  v7 = v23;
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v21 - v11;
  v13 = type metadata accessor for EntryDateSource();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v14 + 16);
  v21(v17, a3, v13, v15);
  v18 = *(v7 + 16);
  v22 = v6;
  v18(v12, v25, v6);
  v18(v9, v12, v6);
  sub_1007AD2C0(v9);
  v19 = v24;
  (v21)(v24, v17, v13);
  (*(v14 + 56))(v19, 0, 1, v13);
  sub_1007AD6D4(v19);
  sub_1007824F0(v12, v17);
  (*(v23 + 8))(v12, v22);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_1003F86A4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v8 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  result = Text.init(_:)();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_1003F88D8@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v150 = a2;
  v135 = sub_1000F24EC(&qword_100AE3680, &unk_100954C28);
  __chkstk_darwin(v135);
  v136 = &v114 - v3;
  v4 = sub_1000F24EC(&qword_100AD2690, &qword_100940CD0);
  __chkstk_darwin(v4 - 8);
  v128 = &v114 - v5;
  v125 = type metadata accessor for EntryDateSource();
  v124 = *(v125 - 8);
  __chkstk_darwin(v125);
  v120 = v6;
  v122 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_1000F24EC(&qword_100AE3528, &unk_100954AE0);
  v123 = *(v153 - 8);
  __chkstk_darwin(v153);
  v121 = &v114 - v7;
  v133 = sub_1000F24EC(&qword_100AE3688, &qword_100954C38);
  v127 = *(v133 - 8);
  __chkstk_darwin(v133);
  v126 = &v114 - v8;
  v148 = sub_1000F24EC(&qword_100AE3690, &qword_100954C40);
  v151 = *(v148 - 8);
  __chkstk_darwin(v148);
  v134 = &v114 - v9;
  v132 = type metadata accessor for CanvasDatePickerViewModel.MediaDate(0);
  v130 = *(v132 - 8);
  __chkstk_darwin(v132);
  v131 = &v114 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000F24EC(&qword_100AE3698, &unk_100954C48);
  __chkstk_darwin(v11 - 8);
  v149 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v147 = &v114 - v14;
  v15 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v15 - 8);
  v143 = &v114 - v16;
  v142 = type metadata accessor for Date();
  v17 = *(v142 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v142);
  v129 = &v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v141 = &v114 - v20;
  __chkstk_darwin(v21);
  v138 = &v114 - v22;
  __chkstk_darwin(v23);
  v144 = &v114 - v24;
  v25 = sub_1000F24EC(&qword_100AE36A0, &qword_100954C58);
  __chkstk_darwin(v25 - 8);
  v146 = &v114 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v157 = &v114 - v28;
  v29 = type metadata accessor for CanvasDatePicker(0);
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29 - 8);
  v32 = sub_1000F24EC(&qword_100AE36A8, &unk_100954C60);
  v154 = *(v32 - 8);
  v155 = v32;
  __chkstk_darwin(v32);
  v156 = &v114 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v36 = &v114 - v35;
  sub_1003FD728(a1, &v114 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CanvasDatePicker);
  v37 = *(v30 + 80);
  v38 = &v114 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = (v37 + 16) & ~v37;
  v40 = v39 + v31;
  v41 = v37 | 7;
  v42 = swift_allocObject();
  sub_1003FCE4C(v38, v42 + v39);
  v158 = a1;
  v43 = a1;
  v44 = sub_1000F24EC(&qword_100AD7350, &qword_100946270);
  v45 = sub_1003FD6AC();
  v145 = v36;
  v140 = v44;
  v139 = v45;
  Button.init(action:label:)();
  v152 = v43;
  Bindable.wrappedValue.getter();
  v46 = v143;
  sub_1007ADC94(v143);
  v47 = v142;

  v48 = (*(v17 + 48))(v46, 1, v47);
  v137 = v17;
  v119 = v18;
  v118 = v38;
  v117 = v39;
  v116 = v41;
  v115 = v40;
  if (v48 == 1)
  {
    sub_100004F84(v46, &unk_100AD4790, &unk_10093B4E0);
    (*(v154 + 56))(v157, 1, 1, v155);
    v49 = v151;
    v50 = v152;
    v51 = v47;
  }

  else
  {
    v114 = *(v17 + 32);
    v114(v144, v46, v47);
    sub_1003FD728(v152, v38, type metadata accessor for CanvasDatePicker);
    v52 = v138;
    v53 = v144;
    (*(v17 + 16))(v138, v144, v47);
    v54 = (v40 + *(v17 + 80)) & ~*(v17 + 80);
    v55 = v47;
    v56 = swift_allocObject();
    sub_1003FCE4C(v38, v56 + v39);
    v57 = v114(v56 + v54, v52, v55);
    __chkstk_darwin(v57);
    v50 = v152;
    v58 = v156;
    Button.init(action:label:)();
    v49 = v151;
    v59 = v157;
    v61 = v154;
    v60 = v155;
    (*(v154 + 32))(v157, v58, v155);
    (*(v61 + 56))(v59, 0, 1, v60);
    (*(v17 + 8))(v53, v55);
    v51 = v55;
  }

  v62 = v153;
  Bindable.wrappedValue.getter();
  v63 = v159;
  swift_getKeyPath();
  v159 = v63;
  sub_1003FDF58(&qword_100AEC4A0, type metadata accessor for CanvasDatePickerViewModel, &unk_1009682F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v64 = *(v63 + OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__mediaType);

  if (v64 == 3)
  {
    goto LABEL_9;
  }

  Bindable.wrappedValue.getter();
  v65 = v159;
  swift_getKeyPath();
  v159 = v65;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v66 = *(v65 + OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__mediaDates);

  if (!*(v66 + 16))
  {

LABEL_9:
    v90 = v147;
    (*(v49 + 56))(v147, 1, 1, v148);
    v91 = v154;
    v93 = v156;
    goto LABEL_12;
  }

  LODWORD(v144) = v64;
  v67 = v131;
  sub_1003FD728(v66 + ((*(v130 + 80) + 32) & ~*(v130 + 80)), v131, type metadata accessor for CanvasDatePickerViewModel.MediaDate);

  v68 = v137;
  v69 = v67 + *(v132 + 20);
  v70 = v129;
  v132 = *(v137 + 16);
  v71.n128_f64[0] = (v132)(v129, v69, v51);
  sub_1003FD790(v67, v71);
  v143 = *(v68 + 32);
  (v143)(v141, v70, v51);
  Bindable.wrappedValue.getter();
  v72 = v159;
  swift_getKeyPath();
  v159 = v72;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v73 = *(v72 + OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__mediaDates);

  v74 = *(v73 + 16);

  if (v74 < 2)
  {
    v95 = v118;
    sub_1003FD728(v50, v118, type metadata accessor for CanvasDatePicker);
    v96 = v138;
    v94 = v141;
    (v132)(v138, v141, v51);
    v97 = v137;
    v98 = (v115 + *(v137 + 80)) & ~*(v137 + 80);
    v99 = swift_allocObject();
    sub_1003FCE4C(v95, v99 + v117);
    v100 = (v143)(v99 + v98, v96, v51);
    v82 = v51;
    __chkstk_darwin(v100);
    v93 = v156;
    Button.init(action:label:)();
    v91 = v154;
    v101 = v155;
    (*(v154 + 16))(v136, v93, v155);
    swift_storeEnumTagMultiPayload();
    sub_10000B58C(&qword_100AE36C0, &qword_100AE3688, &qword_100954C38, &protocol conformance descriptor for Picker<A, B, C>);
    sub_10000B58C(&qword_100AE36C8, &qword_100AE36A8, &unk_100954C60, &protocol conformance descriptor for Button<A>);
    v89 = v134;
    _ConditionalContent<>.init(storage:)();
    (*(v91 + 8))(v93, v101);
    v90 = v147;
    v92 = v97;
  }

  else
  {
    v75 = v121;
    Bindable.projectedValue.getter();
    v76 = v124;
    v77 = v122;
    v78 = v125;
    v79 = (*(v124 + 104))(v122, enum case for EntryDateSource.photo(_:), v125);
    v80 = __chkstk_darwin(v79);
    v82 = v51;
    (*(v76 + 32))(&v114 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0), v77, v78, v80);
    swift_getKeyPath();
    Bindable<A>.subscript.getter();

    v83 = (*(v123 + 8))(v75, v62);
    __chkstk_darwin(v83);
    __chkstk_darwin(v84);
    __chkstk_darwin(v85);
    sub_1000F24EC(&qword_100AE36D0, &unk_100954D00);
    sub_1003FDF58(&unk_100AEE080, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_1003FD880();
    v86 = v126;
    Picker.init<A>(selection:content:label:currentValueLabel:)();
    v87 = v127;
    v88 = v133;
    (*(v127 + 16))(v136, v86, v133);
    swift_storeEnumTagMultiPayload();
    sub_10000B58C(&qword_100AE36C0, &qword_100AE3688, &qword_100954C38, &protocol conformance descriptor for Picker<A, B, C>);
    sub_10000B58C(&qword_100AE36C8, &qword_100AE36A8, &unk_100954C60, &protocol conformance descriptor for Button<A>);
    v89 = v134;
    _ConditionalContent<>.init(storage:)();
    (*(v87 + 8))(v86, v88);
    v90 = v147;
    v91 = v154;
    v92 = v137;
    v93 = v156;
    v94 = v141;
  }

  sub_1000CC8F0(v89, v90);
  (*(v151 + 56))(v90, 0, 1, v148);
  (*(v92 + 8))(v94, v82);
LABEL_12:
  v102 = v91;
  v103 = *(v91 + 16);
  v104 = v145;
  v105 = v155;
  v103(v93, v145, v155);
  v106 = v146;
  sub_1000082B4(v157, v146, &qword_100AE36A0, &qword_100954C58);
  v107 = v90;
  v108 = v90;
  v109 = v149;
  sub_1000082B4(v107, v149, &qword_100AE3698, &unk_100954C48);
  v110 = v150;
  v103(v150, v93, v105);
  v111 = sub_1000F24EC(&qword_100AE36B8, &qword_100954C98);
  sub_1000082B4(v106, &v110[*(v111 + 48)], &qword_100AE36A0, &qword_100954C58);
  sub_1000082B4(v109, &v110[*(v111 + 64)], &qword_100AE3698, &unk_100954C48);
  sub_100004F84(v108, &qword_100AE3698, &unk_100954C48);
  sub_100004F84(v157, &qword_100AE36A0, &qword_100954C58);
  v112 = *(v102 + 8);
  v112(v104, v105);
  sub_100004F84(v109, &qword_100AE3698, &unk_100954C48);
  sub_100004F84(v106, &qword_100AE36A0, &qword_100954C58);
  return (v112)(v156, v105);
}

double sub_1003F9CF4()
{
  v0 = sub_1000F24EC(&qword_100AE2AA0, &unk_100954D20);
  __chkstk_darwin(v0 - 8);
  v2 = &v28 - v1;
  v3 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v3);
  v5 = &v28 - v4;
  v6 = type metadata accessor for Date();
  v35 = *(v6 - 8);
  __chkstk_darwin(v6);
  v32 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v34 = &v28 - v9;
  v10 = type metadata accessor for EntryDateSource();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F24EC(&qword_100AE3528, &unk_100954AE0);
  Bindable.wrappedValue.getter();
  v31 = v36;
  v14 = *(v11 + 104);
  v30 = v13;
  v33 = v10;
  v14(v13, enum case for EntryDateSource.creation(_:), v10);
  Bindable.wrappedValue.getter();
  v15 = v36;
  swift_allocObject();
  swift_weakInit();
  NSManagedObjectContext.performAndWait<A>(_:)();
  v16 = v35;

  v17 = *(v16 + 48);
  if (v17(v5, 1, v6) == 1)
  {
    v28 = v6;
    v29 = v2;
    v18 = *(v15 + 16);
    v19 = OBJC_IVAR____TtC7Journal14EntryViewModel_date;
    swift_beginAccess();
    v20 = *(v16 + 16);
    v21 = v18 + v19;
    v6 = v28;
    v20(v34, v21, v28);

    if (v17(v5, 1, v6) != 1)
    {
      sub_100004F84(v5, &unk_100AD4790, &unk_10093B4E0);
    }

    v2 = v29;
    v22 = v34;
    v23 = v35;
  }

  else
  {

    v22 = v34;
    (*(v16 + 32))(v34, v5, v6);
    v23 = v16;
    v20 = *(v16 + 16);
  }

  v24 = v32;
  v20(v32, v22, v6);
  sub_1007AD2C0(v24);
  v25 = v30;
  v26 = v33;
  (*(v11 + 16))(v2, v30, v33);
  (*(v11 + 56))(v2, 0, 1, v26);
  sub_1007AD6D4(v2);
  sub_1007824F0(v22, v25);
  (*(v23 + 8))(v22, v6);
  (*(v11 + 8))(v25, v26);

  return result;
}

uint64_t sub_1003FA188@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v32 = a2;
  v38 = type metadata accessor for Date.FormatStyle();
  __chkstk_darwin(v38);
  v37 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v4);
  v36 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v31 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v35 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v31 - v13;
  v31 = sub_1000F24EC(&qword_100AE3528, &unk_100954AE0);
  v39 = a1;
  Bindable.wrappedValue.getter();
  v15 = v41;
  swift_allocObject();
  swift_weakInit();
  v34 = v4;
  NSManagedObjectContext.performAndWait<A>(_:)();

  v16 = *(v10 + 48);
  v17 = v16(v8, 1, v9);
  v33 = v14;
  if (v17 == 1)
  {
    v18 = *(v15 + 16);
    v19 = OBJC_IVAR____TtC7Journal14EntryViewModel_date;
    swift_beginAccess();
    (*(v10 + 16))(v14, v18 + v19, v9);

    v20 = v16;
    if (v16(v8, 1, v9) != 1)
    {
      sub_100004F84(v8, &unk_100AD4790, &unk_10093B4E0);
    }
  }

  else
  {
    v20 = v16;

    (*(v10 + 32))(v14, v8, v9);
  }

  Bindable.wrappedValue.getter();
  v21 = v40;
  swift_allocObject();
  swift_weakInit();
  v22 = v36;
  NSManagedObjectContext.performAndWait<A>(_:)();

  if (v20(v22, 1, v9) == 1)
  {
    v23 = *(v21 + 16);
    v24 = OBJC_IVAR____TtC7Journal14EntryViewModel_date;
    swift_beginAccess();
    v25 = v35;
    (*(v10 + 16))(v35, v23 + v24, v9);

    if (v20(v22, 1, v9) != 1)
    {
      sub_100004F84(v22, &unk_100AD4790, &unk_10093B4E0);
    }
  }

  else
  {

    v25 = v35;
    (*(v10 + 32))(v35, v22, v9);
  }

  sub_1003FA6BC(v25, v37);
  (*(v10 + 8))(v25, v9);
  sub_1003FDF58(&qword_100AD3CE8, &type metadata accessor for Date.FormatStyle, &protocol conformance descriptor for Date.FormatStyle);
  sub_1003FDF58(&qword_100AD5BF0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  result = Text.init<A>(_:format:)();
  v27 = v32;
  *v32 = result;
  v27[1] = v28;
  *(v27 + 16) = v29 & 1;
  v27[3] = v30;
  return result;
}

uint64_t sub_1003FA6BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a1;
  v79 = a2;
  v60 = type metadata accessor for Date.FormatStyle.Symbol.Year();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v58 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Date.FormatStyle.Symbol.Day();
  v77 = *(v3 - 8);
  v78 = v3;
  __chkstk_darwin(v3);
  v76 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date.FormatStyle.Symbol.Month();
  v74 = *(v5 - 8);
  v75 = v5;
  __chkstk_darwin(v5);
  v73 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for Date.FormatStyle.Symbol.Weekday();
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v55 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FormatStyleCapitalizationContext();
  __chkstk_darwin(v8 - 8);
  v69 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TimeZone();
  __chkstk_darwin(v10 - 8);
  v67 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v66 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000F24EC(&qword_100AD4280, &unk_100954D10);
  __chkstk_darwin(v14 - 8);
  v65 = &v54 - v15;
  v16 = sub_1000F24EC(&qword_100AD4288, &qword_10096FE10);
  __chkstk_darwin(v16 - 8);
  v63 = &v54 - v17;
  v72 = type metadata accessor for Date.FormatStyle();
  v64 = *(v72 - 8);
  __chkstk_darwin(v72);
  v62 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v68 = &v54 - v20;
  __chkstk_darwin(v21);
  v70 = &v54 - v22;
  v23 = type metadata accessor for Calendar.Component();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for Date();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v54 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for Calendar();
  v31 = *(v61 - 8);
  __chkstk_darwin(v61);
  v33 = (&v54 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for CanvasDatePicker(0);
  sub_100048878(v33);
  sub_1000F24EC(&qword_100AE3528, &unk_100954AE0);
  Bindable.wrappedValue.getter();
  (*(v28 + 16))(v30, v80 + OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel_maximumDate, v27);

  (*(v24 + 104))(v26, enum case for Calendar.Component.year(_:), v23);
  v34 = Calendar.compare(_:to:toGranularity:)();
  (*(v24 + 8))(v26, v23);
  v35 = v30;
  v36 = v62;
  (*(v28 + 8))(v35, v27);
  (*(v31 + 8))(v33, v61);
  v37 = type metadata accessor for Date.FormatStyle.DateStyle();
  (*(*(v37 - 8) + 56))(v63, 1, 1, v37);
  v38 = type metadata accessor for Date.FormatStyle.TimeStyle();
  (*(*(v38 - 8) + 56))(v65, 1, 1, v38);
  static Locale.autoupdatingCurrent.getter();
  static Calendar.autoupdatingCurrent.getter();
  static TimeZone.autoupdatingCurrent.getter();
  static FormatStyleCapitalizationContext.unknown.getter();
  Date.FormatStyle.init(date:time:locale:calendar:timeZone:capitalizationContext:)();
  v39 = (v64 + 8);
  if (v34)
  {
    v40 = v73;
    static Date.FormatStyle.Symbol.Month.abbreviated.getter();
    v41 = v68;
    Date.FormatStyle.month(_:)();
    (*(v74 + 8))(v40, v75);
    v42 = *v39;
    v43 = v36;
    v44 = v72;
    (*v39)(v43, v72);
    v45 = v76;
    static Date.FormatStyle.Symbol.Day.defaultDigits.getter();
    v46 = v70;
    Date.FormatStyle.day(_:)();
    (*(v77 + 8))(v45, v78);
    v42(v41, v44);
    v47 = v58;
    static Date.FormatStyle.Symbol.Year.defaultDigits.getter();
    Date.FormatStyle.year(_:)();
    (*(v59 + 8))(v47, v60);
  }

  else
  {
    v48 = v55;
    static Date.FormatStyle.Symbol.Weekday.wide.getter();
    v49 = v68;
    Date.FormatStyle.weekday(_:)();
    (*(v56 + 8))(v48, v57);
    v42 = *v39;
    v50 = v36;
    v44 = v72;
    (*v39)(v50, v72);
    v51 = v73;
    static Date.FormatStyle.Symbol.Month.abbreviated.getter();
    v46 = v70;
    Date.FormatStyle.month(_:)();
    (*(v74 + 8))(v51, v75);
    v42(v49, v44);
    v52 = v76;
    static Date.FormatStyle.Symbol.Day.defaultDigits.getter();
    Date.FormatStyle.day(_:)();
    (*(v77 + 8))(v52, v78);
  }

  return (v42)(v46, v44);
}

uint64_t sub_1003FB07C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Date.FormatStyle();
  __chkstk_darwin(v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v8 = __chkstk_darwin(v7);
  (*(v10 + 16))(&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  sub_1003FA6BC(a1, v6);
  sub_1003FDF58(&qword_100AD3CE8, &type metadata accessor for Date.FormatStyle, &protocol conformance descriptor for Date.FormatStyle);
  sub_1003FDF58(&qword_100AD5BF0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  result = Text.init<A>(_:format:)();
  *a2 = result;
  *(a2 + 8) = v12;
  *(a2 + 16) = v13 & 1;
  *(a2 + 24) = v14;
  return result;
}

uint64_t sub_1003FB248@<X0>(uint64_t a3@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_1003FB2B0(uint64_t a1)
{
  v2 = type metadata accessor for CanvasDatePicker(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  sub_1000F24EC(&qword_100AE3528, &unk_100954AE0);
  Bindable.wrappedValue.getter();
  swift_getKeyPath();
  sub_1003FDF58(&qword_100AEC4A0, type metadata accessor for CanvasDatePickerViewModel, &unk_1009682F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v14 + OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__mediaDates);

  v18 = v5;
  sub_1003FD728(a1, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CanvasDatePicker);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_1003FCE4C(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  sub_1000F24EC(&qword_100AE36F8, &qword_100954D80);
  type metadata accessor for UUID();
  sub_1000F24EC(&qword_100AE3700, &qword_100954D88);
  sub_10000B58C(&qword_100AE3708, &qword_100AE36F8, &qword_100954D80, &protocol conformance descriptor for [A]);
  v8 = sub_1000F2A18(&qword_100AD0DE0, &qword_10093B508);
  v9 = type metadata accessor for Date();
  v10 = sub_10000B58C(&qword_100AE36E0, &qword_100AD0DE0, &qword_10093B508, &protocol conformance descriptor for Label<A, B>);
  v11 = sub_1003FDF58(&unk_100AEE080, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v14 = v8;
  v15 = v9;
  v16 = v10;
  v17 = v11;
  swift_getOpaqueTypeConformance2();
  sub_1003FDF58(&qword_100AE3710, type metadata accessor for CanvasDatePickerViewModel.MediaDate, &unk_100968250);
  return ForEach<>.init(_:content:)();
}

uint64_t sub_1003FB608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000F24EC(&qword_100AD0DE0, &qword_10093B508);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14[-v8];
  v16 = a2;
  v17 = a1;
  v15 = a1;
  sub_1000F24EC(&qword_100AE3718, &unk_100954D90);
  sub_1003FDEDC();
  Label.init(title:icon:)();
  v10 = *(type metadata accessor for CanvasDatePickerViewModel.MediaDate(0) + 20);
  v11 = a3 + *(sub_1000F24EC(&qword_100AD0DD8, &qword_10093B500) + 36);
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 16))(v11, a1 + v10, v12);
  *(v11 + *(sub_1000F24EC(&qword_100AD0DD0, &unk_100954DA0) + 36)) = 1;
  return (*(v7 + 32))(a3, v9, v6);
}

uint64_t sub_1003FB7E4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Date.FormatStyle();
  __chkstk_darwin(v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(type metadata accessor for CanvasDatePickerViewModel.MediaDate(0) + 20);
  (*(v8 + 16))(v10, a1 + v11, v7);
  sub_1003FA6BC(a1 + v11, v6);
  sub_1003FDF58(&qword_100AD3CE8, &type metadata accessor for Date.FormatStyle, &protocol conformance descriptor for Date.FormatStyle);
  sub_1003FDF58(&qword_100AD5BF0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  result = Text.init<A>(_:format:)();
  *a2 = result;
  *(a2 + 8) = v13;
  *(a2 + 16) = v14 & 1;
  *(a2 + 24) = v15;
  return result;
}

uint64_t sub_1003FB9BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + *(type metadata accessor for CanvasDatePickerViewModel.MediaDate(0) + 24));
  if (v4)
  {
    v5 = v4;
    result = Image.init(uiImage:)();
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

uint64_t sub_1003FBA08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v49 = a2;
  v58 = a3;
  v57 = type metadata accessor for Date.FormatStyle();
  __chkstk_darwin(v57);
  v56 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EntryDateSource();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v48[0] = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&qword_100AE36E8, &unk_100968430);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = v48 - v10;
  v12 = sub_1000F24EC(&qword_100AE2AA0, &unk_100954D20);
  __chkstk_darwin(v12 - 8);
  v50 = v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v48 - v15;
  __chkstk_darwin(v17);
  v19 = v48 - v18;
  v20 = type metadata accessor for Date();
  v53 = *(v20 - 8);
  v54 = v20;
  __chkstk_darwin(v20);
  v51 = v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v52 = v48 - v23;
  v48[2] = sub_1000F24EC(&qword_100AE3528, &unk_100954AE0);
  v55 = a1;
  Bindable.wrappedValue.getter();
  v24 = v60;
  swift_getKeyPath();
  v60 = v24;
  v48[1] = sub_1003FDF58(&qword_100AEC4A0, type metadata accessor for CanvasDatePickerViewModel, &unk_1009682F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v25 = OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__source;
  swift_beginAccess();
  sub_1000082B4(v24 + v25, v19, &qword_100AE2AA0, &unk_100954D20);

  (*(v6 + 104))(v16, enum case for EntryDateSource.photo(_:), v5);
  (*(v6 + 56))(v16, 0, 1, v5);
  v26 = *(v9 + 56);
  sub_1000082B4(v19, v11, &qword_100AE2AA0, &unk_100954D20);
  sub_1000082B4(v16, &v11[v26], &qword_100AE2AA0, &unk_100954D20);
  v27 = *(v6 + 48);
  if (v27(v11, 1, v5) == 1)
  {
    sub_100004F84(v16, &qword_100AE2AA0, &unk_100954D20);
    sub_100004F84(v19, &qword_100AE2AA0, &unk_100954D20);
    v28 = v27(&v11[v26], 1, v5);
    v29 = v52;
    if (v28 == 1)
    {
      sub_100004F84(v11, &qword_100AE2AA0, &unk_100954D20);
      v30 = v54;
LABEL_9:
      Bindable.wrappedValue.getter();
      v37 = v59;
      swift_getKeyPath();
      v59 = v37;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v38 = OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__date;
      swift_beginAccess();
      v31 = v53;
      v32 = *(v53 + 16);
      v32(v29, v37 + v38, v30);

      goto LABEL_10;
    }

    goto LABEL_6;
  }

  sub_1000082B4(v11, v50, &qword_100AE2AA0, &unk_100954D20);
  if (v27(&v11[v26], 1, v5) == 1)
  {
    sub_100004F84(v16, &qword_100AE2AA0, &unk_100954D20);
    sub_100004F84(v19, &qword_100AE2AA0, &unk_100954D20);
    (*(v6 + 8))(v50, v5);
    v29 = v52;
LABEL_6:
    sub_100004F84(v11, &qword_100AE36E8, &unk_100968430);
    v30 = v54;
    goto LABEL_7;
  }

  v33 = v48[0];
  (*(v6 + 32))(v48[0], &v11[v26], v5);
  sub_1003FDF58(&qword_100AE36F0, &type metadata accessor for EntryDateSource, &protocol conformance descriptor for EntryDateSource);
  v34 = v50;
  v35 = dispatch thunk of static Equatable.== infix(_:_:)();
  v36 = *(v6 + 8);
  v36(v33, v5);
  sub_100004F84(v16, &qword_100AE2AA0, &unk_100954D20);
  sub_100004F84(v19, &qword_100AE2AA0, &unk_100954D20);
  v36(v34, v5);
  sub_100004F84(v11, &qword_100AE2AA0, &unk_100954D20);
  v30 = v54;
  v29 = v52;
  if (v35)
  {
    goto LABEL_9;
  }

LABEL_7:
  v31 = v53;
  v32 = *(v53 + 16);
  v32(v29, v49, v30);
LABEL_10:
  v32(v51, v29, v30);
  sub_1003FA6BC(v29, v56);
  sub_1003FDF58(&qword_100AD3CE8, &type metadata accessor for Date.FormatStyle, &protocol conformance descriptor for Date.FormatStyle);
  sub_1003FDF58(&qword_100AD5BF0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v39 = Text.init<A>(_:format:)();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  result = (*(v31 + 8))(v29, v30);
  v47 = v58;
  *v58 = v39;
  v47[1] = v41;
  *(v47 + 16) = v43 & 1;
  v47[3] = v45;
  return result;
}

double sub_1003FC1DC(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v24 = a3;
  v4 = sub_1000F24EC(&qword_100AE2AA0, &unk_100954D20);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  v7 = type metadata accessor for Date();
  v22 = *(v7 - 8);
  v8 = v22;
  v23 = v7;
  __chkstk_darwin(v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v22 - v12;
  v14 = type metadata accessor for EntryDateSource();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F24EC(&qword_100AE3528, &unk_100954AE0);
  Bindable.wrappedValue.getter();
  (*(v15 + 104))(v17, *v24, v14);
  v18 = *(v8 + 16);
  v19 = a2;
  v20 = v23;
  v18(v13, v19, v23);
  v18(v10, v13, v20);
  sub_1007AD2C0(v10);
  (*(v15 + 16))(v6, v17, v14);
  (*(v15 + 56))(v6, 0, 1, v14);
  sub_1007AD6D4(v6);
  sub_1007824F0(v13, v17);
  (*(v22 + 8))(v13, v20);
  (*(v15 + 8))(v17, v14);

  return result;
}

uint64_t sub_1003FC4A8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Date.FormatStyle();
  __chkstk_darwin(v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v8 = __chkstk_darwin(v7);
  (*(v10 + 16))(&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  sub_1003FA6BC(a1, v6);
  sub_1003FDF58(&qword_100AD3CE8, &type metadata accessor for Date.FormatStyle, &protocol conformance descriptor for Date.FormatStyle);
  sub_1003FDF58(&qword_100AD5BF0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  result = Text.init<A>(_:format:)();
  *a2 = result;
  *(a2 + 8) = v12;
  *(a2 + 16) = v13 & 1;
  *(a2 + 24) = v14;
  return result;
}

uint64_t sub_1003FC664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v4 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v4 - 8);
  sub_1007ACF44(v2);
  result = Text.init(_:)();
  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v8;
  return result;
}

uint64_t sub_1003FC6FC(uint64_t a1)
{
  v2 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1000F24EC(&qword_100AE3620, &qword_100954BA0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  static ToolbarItemPlacement.primaryAction.getter();
  v9 = a1;
  sub_1000F24EC(&qword_100AE3638, &qword_100964A10);
  sub_10000B58C(&qword_100AE3640, &qword_100AE3638, &qword_100964A10, &protocol conformance descriptor for Button<A>);
  ToolbarItem<>.init(placement:content:)();
  sub_10000B58C(&qword_100AE3628, &qword_100AE3620, &qword_100954BA0, &protocol conformance descriptor for ToolbarItem<A, B>);
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1003FC8E8(uint64_t a1)
{
  v2 = type metadata accessor for CanvasDatePicker(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = type metadata accessor for ButtonRole();
  __chkstk_darwin(v5 - 8);
  static ButtonRole.close.getter();
  sub_1003FD728(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CanvasDatePicker);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_1003FCE4C(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  return Button<>.init(role:action:)();
}

uint64_t sub_1003FCA50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a3;
  type metadata accessor for MainActor();
  v3[4] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[5] = v5;
  v3[6] = v4;

  return _swift_task_switch(sub_1003FCAE8, v5, v4);
}

uint64_t sub_1003FCAE8()
{
  sub_1000F24EC(&qword_100AE3528, &unk_100954AE0);
  Bindable.wrappedValue.getter();
  v0[7] = v0[2];
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_1003FCB9C;

  return sub_1007AF14C();
}

uint64_t sub_1003FCB9C()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return _swift_task_switch(sub_1000EC728, v3, v2);
}

double sub_1003FCCE0(uint64_t a1, void (*a2)(void *))
{
  sub_1000F24EC(&qword_100AE3528, &unk_100954AE0);
  v3 = Bindable.wrappedValue.getter();
  a2(v3);

  return result;
}

unint64_t sub_1003FCD48()
{
  result = qword_100AE3610;
  if (!qword_100AE3610)
  {
    sub_1000F2A18(&qword_100AE35E0, &qword_100954B78);
    sub_1000F2A18(&qword_100AE35F0, &qword_100954B88);
    sub_10000B58C(&qword_100AE3608, &qword_100AE35F0, &qword_100954B88, &protocol conformance descriptor for Form<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE3610);
  }

  return result;
}

uint64_t sub_1003FCE4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CanvasDatePicker(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003FCEB0()
{
  v2 = *(type metadata accessor for CanvasDatePicker(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100032ECC;

  return sub_1003FCA50(v4, v5, v0 + v3);
}

uint64_t sub_1003FCFA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003FDF58(&qword_100AEC4A0, type metadata accessor for CanvasDatePickerViewModel, &unk_1009682F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__date;
  swift_beginAccess();
  v5 = type metadata accessor for Date();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1003FD0A0(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_1007AD2C0(v5);
}

uint64_t sub_1003FD16C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003FDF58(&qword_100AEC4A0, type metadata accessor for CanvasDatePickerViewModel, &unk_1009682F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__source;
  swift_beginAccess();
  return sub_1000082B4(v3 + v4, a2, &qword_100AE2AA0, &unk_100954D20);
}

uint64_t sub_1003FD244(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100AE2AA0, &unk_100954D20);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_1000082B4(a1, &v6 - v3, &qword_100AE2AA0, &unk_100954D20);
  return sub_1007AD6D4(v4);
}

double sub_1003FD2F0@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003FDF58(&qword_100AEC4A0, type metadata accessor for CanvasDatePickerViewModel, &unk_1009682F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__mediaDates);

  return result;
}

double sub_1003FD3A4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1003FDF58(&qword_100AEC4A0, type metadata accessor for CanvasDatePickerViewModel, &unk_1009682F0);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

void sub_1003FD470(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003FDF58(&qword_100AEC4A0, type metadata accessor for CanvasDatePickerViewModel, &unk_1009682F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__mediaType);
}

double sub_1003FD5DC()
{
  type metadata accessor for CanvasDatePicker(0);

  return sub_1003F9CF4();
}

unint64_t sub_1003FD6AC()
{
  result = qword_100AE36B0;
  if (!qword_100AE36B0)
  {
    sub_1000F2A18(&qword_100AD7350, &qword_100946270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE36B0);
  }

  return result;
}

uint64_t sub_1003FD728(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003FD790(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for CanvasDatePickerViewModel.MediaDate(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1003FD880()
{
  result = qword_100AE36D8;
  if (!qword_100AE36D8)
  {
    sub_1000F2A18(&qword_100AE36D0, &unk_100954D00);
    sub_1000F2A18(&qword_100AD0DE0, &qword_10093B508);
    type metadata accessor for Date();
    sub_10000B58C(&qword_100AE36E0, &qword_100AD0DE0, &qword_10093B508, &protocol conformance descriptor for Label<A, B>);
    sub_1003FDF58(&unk_100AEE080, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE36D8);
  }

  return result;
}

uint64_t sub_1003FD9C4()
{
  v1 = (type metadata accessor for CanvasDatePicker(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = sub_1000F24EC(&qword_100AE3528, &unk_100954AE0);
  (*(*(v7 - 8) + 8))(v0 + v2, v7);
  v8 = v1[7];
  sub_1000F24EC(&qword_100AD9990, &unk_100942950);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for Calendar();
    (*(*(v9 - 8) + 8))(v0 + v2 + v8, v9);
  }

  else
  {
  }

  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

double sub_1003FDBB4(unsigned int *a1)
{
  v3 = *(type metadata accessor for CanvasDatePicker(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for Date() - 8);
  return sub_1003FC1DC(v1 + v4, v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)), a1);
}

uint64_t sub_1003FDCF4()
{
  v1 = (type metadata accessor for CanvasDatePicker(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = sub_1000F24EC(&qword_100AE3528, &unk_100954AE0);
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v1[7];
  sub_1000F24EC(&qword_100AD9990, &unk_100942950);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for Calendar();
    (*(*(v5 - 8) + 8))(v2 + v4, v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1003FDE4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for CanvasDatePicker(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1003FB608(a1, v6, a2);
}

unint64_t sub_1003FDEDC()
{
  result = qword_100AE3720;
  if (!qword_100AE3720)
  {
    sub_1000F2A18(&qword_100AE3718, &unk_100954D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE3720);
  }

  return result;
}

uint64_t sub_1003FDF58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1003FE004()
{
  result = qword_100AE3730;
  if (!qword_100AE3730)
  {
    sub_1000F2A18(&qword_100AE3630, &qword_100954BC8);
    sub_1000F2A18(&qword_100AD0E58, &unk_10093B570);
    sub_1000F2A18(&qword_100AE35D0, &qword_100954B68);
    sub_1000F2A18(&qword_100AE3618, &qword_100954B98);
    sub_1000F2A18(&qword_100AE35D8, &qword_100954B70);
    sub_1000F2A18(&qword_100AE35E0, &qword_100954B78);
    sub_1003FCD48();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1000F2A18(&qword_100AE3620, &qword_100954BA0);
    sub_10000B58C(&qword_100AE3628, &qword_100AE3620, &qword_100954BA0, &protocol conformance descriptor for ToolbarItem<A, B>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE3730);
  }

  return result;
}

char *sub_1003FE2D8(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC7Journal42FullScreenMotionActivityCollectionViewCell_motionActivityView;
  type metadata accessor for MotionActivityGridView(0);
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC7Journal42FullScreenMotionActivityCollectionViewCell_motionActivityAsset] = 0;
  v28.receiver = v4;
  v28.super_class = type metadata accessor for FullScreenMotionActivityCollectionViewCell(0);
  v10 = objc_msgSendSuper2(&v28, "initWithFrame:", a1, a2, a3, a4);
  swift_getKeyPath();
  swift_getKeyPath();
  __asm { FMOV            V0.2D, #1.0 }

  v27 = _Q0;
  v16 = v10;
  static UIView.Invalidating.subscript.setter();
  v17 = OBJC_IVAR____TtC7Journal42FullScreenMotionActivityCollectionViewCell_motionActivityView;
  v18 = *&v16[OBJC_IVAR____TtC7Journal42FullScreenMotionActivityCollectionViewCell_motionActivityView];
  v19 = v18[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType];
  v18[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType] = 7;
  v20 = OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated;
  if (v18[OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated] != 1)
  {
    v21 = v18;
LABEL_8:
    sub_1003F43E0();
    v18[v20] = 1;

    goto LABEL_9;
  }

  if (v19 > 3 && v19 > 6)
  {

    goto LABEL_9;
  }

  v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v23 = v18;

  if ((v22 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_9:
  v24 = *&v16[OBJC_IVAR____TtC7Journal33FullScreenAssetCollectionViewCell_maskedContentView];

  [v24 addSubview:{*&v16[v17], v27}];
  v25 = *&v16[v17];
  sub_100013178(0.0);

  return v16;
}

void sub_1003FE5CC()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal42FullScreenMotionActivityCollectionViewCell_motionActivityAsset);
}

id sub_1003FE60C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FullScreenMotionActivityCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FullScreenMotionActivityCollectionViewCell(uint64_t a1)
{
  result = qword_100AE3768;
  if (!qword_100AE3768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1003FE734()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7Journal42FullScreenMotionActivityCollectionViewCell_motionActivityView);
  v2 = v1;
  return v1;
}

void *sub_1003FE768()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7Journal42FullScreenMotionActivityCollectionViewCell_motionActivityAsset);
  v2 = v1;
  return v1;
}

uint64_t sub_1003FE79C(double a1)
{
  v1 = fabs(a1 + -0.5) < fabs(a1 + -0.25);
  v2 = v1;
  v3 = fabs(a1 + -0.75);
  v4 = 0.25;
  if (v1)
  {
    v4 = 0.5;
  }

  v5 = fabs(a1 + -1.0);
  v1 = v3 < vabdd_f64(a1, v4);
  v6 = 0.75;
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v6 = v4;
  }

  if (v5 >= vabdd_f64(a1, v6))
  {
    return v2;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_1003FE80C()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AE3778);
  v1 = sub_10000617C(v0, qword_100AE3778);
  if (qword_100AD01B0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B2FFB0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1003FE8D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a1;
  v66 = a2;

  v4 = String.init<A>(_:)();
  v6 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1003FF44C(v4, v5);
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v7 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = _StringObject.sharedUTF8.getter();
      v8 = v64;
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v19 = v8 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (v7)
          {
            v23 = 0;
            v24 = v7 + 1;
            while (1)
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v20)
              {
                if (v25 < 0x41 || v25 >= v21)
                {
                  if (v25 < 0x61 || v25 >= v22)
                  {
                    goto LABEL_125;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v23 * a3;
              if ((v23 * a3) >> 64 == (v23 * a3) >> 63)
              {
                v23 = v27 + (v25 + v26);
                if (!__OFADD__(v27, (v25 + v26)))
                {
                  ++v24;
                  if (--v19)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_125;
            }
          }
        }

        goto LABEL_125;
      }

      goto LABEL_129;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (v7)
        {
          v31 = 0;
          while (1)
          {
            v32 = *v7;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_125;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 == (v31 * a3) >> 63)
            {
              v31 = v34 + (v32 + v33);
              if (!__OFADD__(v34, (v32 + v33)))
              {
                ++v7;
                if (--v8)
                {
                  continue;
                }
              }
            }

            goto LABEL_125;
          }
        }
      }

      goto LABEL_125;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v10)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (v7)
        {
          v14 = 0;
          v15 = v7 + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                if (v16 < 0x61 || v16 >= v13)
                {
                  break;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v18 = v14 * a3;
            if ((v14 * a3) >> 64 == (v14 * a3) >> 63)
            {
              v14 = v18 - (v16 + v17);
              if (!__OFSUB__(v18, (v16 + v17)))
              {
                ++v15;
                if (--v10)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_125:

      return;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v37 = HIBYTE(v5) & 0xF;
  v65 = v6;
  v66 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v56 = 0;
        v57 = a3 + 48;
        v58 = a3 + 55;
        v59 = a3 + 87;
        if (a3 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v65;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_125;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v56 * a3;
          if ((v56 * a3) >> 64 == (v56 * a3) >> 63)
          {
            v56 = v63 + (v61 + v62);
            if (!__OFADD__(v63, (v61 + v62)))
            {
              v60 = (v60 + 1);
              if (--v37)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v65 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_125;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 == (v39 * a3) >> 63)
          {
            v39 = v46 - (v44 + v45);
            if (!__OFSUB__(v46, (v44 + v45)))
            {
              ++v43;
              if (--v38)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    goto LABEL_128;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v48 = 0;
      v49 = a3 + 48;
      v50 = a3 + 55;
      v51 = a3 + 87;
      if (a3 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v65 + 1;
      while (1)
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_125;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v48 * a3;
        if ((v48 * a3) >> 64 == (v48 * a3) >> 63)
        {
          v48 = v55 + (v53 + v54);
          if (!__OFADD__(v55, (v53 + v54)))
          {
            ++v52;
            if (--v47)
            {
              continue;
            }
          }
        }

        goto LABEL_125;
      }
    }

    goto LABEL_125;
  }

LABEL_130:
  __break(1u);
}

void sub_1003FEE60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v71 = a1;
  v72 = a2;

  v4 = String.init<A>(_:)();
  v6 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1003FF44C(v4, v5);
    v39 = v38;

    v5 = v39;
    if ((v39 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v7 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = _StringObject.sharedUTF8.getter();
      v8 = v70;
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v20 = v8 - 1;
        if (v20)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (v7)
          {
            LOWORD(v24) = 0;
            v25 = v7 + 1;
            while (1)
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v21)
              {
                if (v26 < 0x41 || v26 >= v22)
                {
                  if (v26 < 0x61 || v26 >= v23)
                  {
                    goto LABEL_125;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v24 * a3;
              v29 = (v24 * a3);
              if (v29 == v28)
              {
                v24 = v29 + (v26 + v27);
                if (v24 == v24)
                {
                  ++v25;
                  if (--v20)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_125;
            }
          }
        }

        goto LABEL_125;
      }

      goto LABEL_129;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (v7)
        {
          LOWORD(v33) = 0;
          while (1)
          {
            v34 = *v7;
            if (v34 < 0x30 || v34 >= v30)
            {
              if (v34 < 0x41 || v34 >= v31)
              {
                if (v34 < 0x61 || v34 >= v32)
                {
                  goto LABEL_125;
                }

                v35 = -87;
              }

              else
              {
                v35 = -55;
              }
            }

            else
            {
              v35 = -48;
            }

            v36 = v33 * a3;
            v37 = (v33 * a3);
            if (v37 == v36)
            {
              v33 = v37 + (v34 + v35);
              if (v33 == v33)
              {
                ++v7;
                if (--v8)
                {
                  continue;
                }
              }
            }

            goto LABEL_125;
          }
        }
      }

      goto LABEL_125;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v10)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (v7)
        {
          LOWORD(v14) = 0;
          v15 = v7 + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                if (v16 < 0x61 || v16 >= v13)
                {
                  break;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v18 = v14 * a3;
            v19 = (v14 * a3);
            if (v19 == v18)
            {
              v14 = v19 - (v16 + v17);
              if (v14 == v14)
              {
                ++v15;
                if (--v10)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_125:

      return;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v40 = HIBYTE(v5) & 0xF;
  v71 = v6;
  v72 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v40)
      {
        LOWORD(v61) = 0;
        v62 = a3 + 48;
        v63 = a3 + 55;
        v64 = a3 + 87;
        if (a3 > 10)
        {
          v62 = 58;
        }

        else
        {
          v64 = 97;
          v63 = 65;
        }

        v65 = &v71;
        while (1)
        {
          v66 = *v65;
          if (v66 < 0x30 || v66 >= v62)
          {
            if (v66 < 0x41 || v66 >= v63)
            {
              if (v66 < 0x61 || v66 >= v64)
              {
                goto LABEL_125;
              }

              v67 = -87;
            }

            else
            {
              v67 = -55;
            }
          }

          else
          {
            v67 = -48;
          }

          v68 = v61 * a3;
          v69 = (v61 * a3);
          if (v69 == v68)
          {
            v61 = v69 + (v66 + v67);
            if (v61 == v61)
            {
              v65 = (v65 + 1);
              if (--v40)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    if (v40)
    {
      v41 = v40 - 1;
      if (v41)
      {
        LOWORD(v42) = 0;
        v43 = a3 + 48;
        v44 = a3 + 55;
        v45 = a3 + 87;
        if (a3 > 10)
        {
          v43 = 58;
        }

        else
        {
          v45 = 97;
          v44 = 65;
        }

        v46 = &v71 + 1;
        while (1)
        {
          v47 = *v46;
          if (v47 < 0x30 || v47 >= v43)
          {
            if (v47 < 0x41 || v47 >= v44)
            {
              if (v47 < 0x61 || v47 >= v45)
              {
                goto LABEL_125;
              }

              v48 = -87;
            }

            else
            {
              v48 = -55;
            }
          }

          else
          {
            v48 = -48;
          }

          v49 = v42 * a3;
          v50 = (v42 * a3);
          if (v50 == v49)
          {
            v42 = v50 - (v47 + v48);
            if (v42 == v42)
            {
              ++v46;
              if (--v41)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    goto LABEL_128;
  }

  if (v40)
  {
    v51 = v40 - 1;
    if (v51)
    {
      LOWORD(v52) = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v71 + 1;
      while (1)
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_125;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        v59 = v52 * a3;
        v60 = (v52 * a3);
        if (v60 == v59)
        {
          v52 = v60 + (v57 + v58);
          if (v52 == v52)
          {
            ++v56;
            if (--v51)
            {
              continue;
            }
          }
        }

        goto LABEL_125;
      }
    }

    goto LABEL_125;
  }

LABEL_130:
  __break(1u);
}

uint64_t sub_1003FF44C(uint64_t a1, unint64_t a2)
{
  v2 = String.subscript.getter();
  v6 = sub_1003FF4CC(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_1003FF4CC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_100008524(v9, 0), v12 = sub_1003FF624(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_1003FF624(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1005770D0(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1005770D0(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

void sub_1003FF844(char a1, uint64_t a2, uint64_t a3)
{
  v3 = 0xD00000000000001ALL;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = "fileAttachmentIndexedData_";
    }

    else
    {
      v4 = "CollectionViewCell.swift";
    }
  }

  else
  {
    v3 = 0xD000000000000016;
    v4 = "fileAttachmentIndexedPath_";
  }

  v57 = v3;
  v58 = v4 | 0x8000000000000000;
  v5._countAndFlagsBits = 0x292B645C282A735CLL;
  v5._object = 0xEB000000002A735CLL;
  String.append(_:)(v5);
  v6 = objc_allocWithZone(NSRegularExpression);
  v7 = sub_10009D81C(v57, v58, 0);
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 firstMatchInString:v8 options:0 range:{0, String.UTF16View.count.getter()}];

  if (!v9)
  {

    return;
  }

  v10 = [v9 rangeAtIndex:1];
  v12 = v11;
  v13 = String._bridgeToObjectiveC()();
  v14 = [v13 substringWithRange:{v10, v12}];

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18 = HIBYTE(v17) & 0xF;
  v19 = v15 & 0xFFFFFFFFFFFFLL;
  if ((v17 & 0x2000000000000000) != 0)
  {
    v20 = HIBYTE(v17) & 0xF;
  }

  else
  {
    v20 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {

    goto LABEL_70;
  }

  if ((v17 & 0x1000000000000000) != 0)
  {
    sub_1003FEE60(v15, v17, 10);
    v56 = v55;

    if ((v56 & 0x10000) != 0)
    {
      goto LABEL_70;
    }

LABEL_77:

    return;
  }

  if ((v17 & 0x2000000000000000) != 0)
  {
    v57 = v15;
    v58 = v17 & 0xFFFFFFFFFFFFFFLL;
    if (v15 == 43)
    {
      if (v18)
      {
        if (--v18)
        {
          LOWORD(v35) = 0;
          v36 = &v57 + 1;
          while (1)
          {
            v37 = *v36 - 48;
            if (v37 > 9)
            {
              break;
            }

            v38 = (10 * v35);
            if (v38 != 10 * v35)
            {
              break;
            }

            v35 = v38 + v37;
            if ((v38 + v37) != v35)
            {
              break;
            }

            ++v36;
            if (!--v18)
            {
              goto LABEL_69;
            }
          }
        }

        goto LABEL_68;
      }

LABEL_82:
      __break(1u);
      return;
    }

    if (v15 != 45)
    {
      if (v18)
      {
        LOWORD(v42) = 0;
        v43 = &v57;
        while (1)
        {
          v44 = *v43 - 48;
          if (v44 > 9)
          {
            break;
          }

          v45 = (10 * v42);
          if (v45 != 10 * v42)
          {
            break;
          }

          v42 = v45 + v44;
          if ((v45 + v44) != v42)
          {
            break;
          }

          v43 = (v43 + 1);
          if (!--v18)
          {
            goto LABEL_69;
          }
        }
      }

      goto LABEL_68;
    }

    if (v18)
    {
      if (--v18)
      {
        LOWORD(v27) = 0;
        v28 = &v57 + 1;
        while (1)
        {
          v29 = *v28 - 48;
          if (v29 > 9)
          {
            break;
          }

          v30 = (10 * v27);
          if (v30 != 10 * v27)
          {
            break;
          }

          v27 = v30 - v29;
          if ((v30 - v29) != v27)
          {
            break;
          }

          ++v28;
          if (!--v18)
          {
            goto LABEL_69;
          }
        }
      }

      goto LABEL_68;
    }

    goto LABEL_80;
  }

  if ((v15 & 0x1000000000000000) != 0)
  {
    v21 = ((v17 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v21 = _StringObject.sharedUTF8.getter();
  }

  v22 = *v21;
  if (v22 == 43)
  {
    if (v19 >= 1)
    {
      v18 = v19 - 1;
      if (v19 != 1)
      {
        LOWORD(v31) = 0;
        if (v21)
        {
          v32 = v21 + 1;
          while (1)
          {
            v33 = *v32 - 48;
            if (v33 > 9)
            {
              goto LABEL_68;
            }

            v34 = (10 * v31);
            if (v34 != 10 * v31)
            {
              goto LABEL_68;
            }

            v31 = v34 + v33;
            if ((v34 + v33) != v31)
            {
              goto LABEL_68;
            }

            ++v32;
            if (!--v18)
            {
              goto LABEL_69;
            }
          }
        }

        goto LABEL_60;
      }

      goto LABEL_68;
    }

    goto LABEL_81;
  }

  if (v22 == 45)
  {
    if (v19 >= 1)
    {
      v18 = v19 - 1;
      if (v19 != 1)
      {
        LOWORD(v23) = 0;
        if (v21)
        {
          v24 = v21 + 1;
          while (1)
          {
            v25 = *v24 - 48;
            if (v25 > 9)
            {
              goto LABEL_68;
            }

            v26 = (10 * v23);
            if (v26 != 10 * v23)
            {
              goto LABEL_68;
            }

            v23 = v26 - v25;
            if ((v26 - v25) != v23)
            {
              goto LABEL_68;
            }

            ++v24;
            if (!--v18)
            {
              goto LABEL_69;
            }
          }
        }

LABEL_60:
        LOBYTE(v18) = 0;
        goto LABEL_69;
      }

      goto LABEL_68;
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  if (v19)
  {
    LOWORD(v39) = 0;
    if (v21)
    {
      while (1)
      {
        v40 = *v21 - 48;
        if (v40 > 9)
        {
          goto LABEL_68;
        }

        v41 = (10 * v39);
        if (v41 != 10 * v39)
        {
          goto LABEL_68;
        }

        v39 = v41 + v40;
        if ((v41 + v40) != v39)
        {
          goto LABEL_68;
        }

        ++v21;
        if (!--v19)
        {
          goto LABEL_60;
        }
      }
    }

    goto LABEL_60;
  }

LABEL_68:
  LOBYTE(v18) = 1;
LABEL_69:
  v46 = v18;

  if ((v46 & 1) == 0)
  {
    goto LABEL_77;
  }

LABEL_70:
  if (qword_100ACFD58 != -1)
  {
    swift_once();
  }

  v47 = type metadata accessor for Logger();
  sub_10000617C(v47, qword_100AE3778);
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v57 = v51;
    *v50 = 136315138;
    v52 = _NSRange.description.getter();
    v54 = sub_100008458(v52, v53, &v57);

    *(v50 + 4) = v54;
    _os_log_impl(&_mh_execute_header, v48, v49, "Unable to get index from indexRange: %s", v50, 0xCu);
    sub_10000BA7C(v51);
  }
}

uint64_t sub_1003FFF60(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005508();
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = a1;
  aBlock[4] = sub_10040161C;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006C7C;
  aBlock[3] = &unk_100A6BF58;
  v13 = _Block_copy(aBlock);
  v14 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000826D8();
  sub_1000F24EC(&unk_100AD6220, &unk_10093C0A0);
  sub_100006610();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

void sub_10040020C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v4 = Strong;
  v97 = a2;
  v5 = [objc_allocWithZone(UIStackView) init];
  v6 = [objc_allocWithZone(UIStackView) init];
  v7 = [objc_allocWithZone(UILabel) init];
  v101 = OBJC_IVAR____TtC7Journal21FullScreenContactView_backgroundView;
  v8 = *&v4[OBJC_IVAR____TtC7Journal21FullScreenContactView_backgroundView];
  sub_1000746FC();

  v98 = OBJC_IVAR____TtC7Journal21FullScreenContactView_dropShadowView;
  v9 = *&v4[OBJC_IVAR____TtC7Journal21FullScreenContactView_dropShadowView];
  sub_1000746FC();

  [v5 setUserInteractionEnabled:1];
  [v5 setAxis:1];
  [v5 setAlignment:3];
  v104 = v5;
  [v5 setSpacing:16.0];
  v10 = [objc_opt_self() mainBundle];
  v109._object = 0x80000001008E01C0;
  v11._countAndFlagsBits = 0x697463656E6E6F43;
  v11._object = 0xEB00000000736E6FLL;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v109._countAndFlagsBits = 0xD00000000000001FLL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v109);

  v13 = String._bridgeToObjectiveC()();

  [v7 setText:v13];

  v99 = v7;
  [v6 setAxis:1];
  [v6 setAlignment:3];
  [v6 setUserInteractionEnabled:1];
  [v6 setSpacing:2.0];
  v14 = [objc_allocWithZone(UILabel) init];
  if (qword_100AD03E0 != -1)
  {
    swift_once();
  }

  v103 = v6;
  v96 = qword_100B303D8;
  [v14 setFont:?];
  v15 = objc_opt_self();
  v16 = [v15 secondaryLabelColor];
  [v14 setTextColor:v16];

  [v14 setAdjustsFontSizeToFitWidth:1];
  [v14 setMinimumScaleFactor:0.5];
  [v14 setAdjustsFontForContentSizeCategory:1];
  [v14 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  v17 = [objc_allocWithZone(UILabel) init];
  if (qword_100AD0378 != -1)
  {
    swift_once();
  }

  [v17 setFont:qword_100B30370];
  v18 = [v15 labelColor];
  [v17 setTextColor:v18];

  [v17 setAdjustsFontSizeToFitWidth:1];
  [v17 setMinimumScaleFactor:0.5];
  [v17 setAdjustsFontForContentSizeCategory:1];
  [v17 setNumberOfLines:0];
  [v17 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  v19 = v99;
  [v19 setFont:v96];
  v20 = [v15 secondaryLabelColor];
  [v19 setTextColor:v20];

  [v19 setAdjustsFontForContentSizeCategory:1];
  [v19 setAdjustsFontSizeToFitWidth:1];
  [v19 setMinimumScaleFactor:0.5];
  [v19 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  [v19 setLineBreakMode:0];
  [v19 setNumberOfLines:0];
  [v19 setTextAlignment:1];
  [v103 addArrangedSubview:v14];
  [v103 addArrangedSubview:v17];
  [v103 addArrangedSubview:v19];
  [v103 setCustomSpacing:v14 afterView:6.0];
  [v103 setCustomSpacing:v19 afterView:12.0];
  v21 = [v14 superview];
  if (v21)
  {
    v22 = v21;
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    v23 = [v22 centerXAnchor];
    v24 = [v14 centerXAnchor];
    v25 = [v24 constraintEqualToAnchor:v23];

    [v25 setConstant:0.0];
    [v25 setActive:1];
  }

  v26 = [v17 superview];
  if (v26)
  {
    v27 = v26;
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    v28 = [v27 centerXAnchor];
    v29 = [v17 centerXAnchor];
    v30 = [v29 constraintEqualToAnchor:v28];

    [v30 setConstant:0.0];
    [v30 setActive:1];
  }

  v31 = [v19 superview];
  if (v31)
  {
    v32 = v31;
    [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
    v33 = [v32 centerXAnchor];
    v34 = [v19 centerXAnchor];
    v35 = [v34 constraintEqualToAnchor:v33];

    [v35 setConstant:0.0];
    [v35 setActive:1];

    v17 = v33;
  }

  else
  {
    v32 = v19;
  }

  v36 = v101;

  v37 = OBJC_IVAR____TtC7Journal21FullScreenContactView_contactAssetView;
  v38 = *&v4[OBJC_IVAR____TtC7Journal21FullScreenContactView_contactAssetView];
  v39 = v38[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType];
  v38[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType] = 7;
  v40 = OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated;
  if (v38[OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated] != 1)
  {
    v41 = v38;
LABEL_20:
    sub_10032A548();
    v38[v40] = 1;

    goto LABEL_21;
  }

  if (v39 > 3 && v39 > 6)
  {

    goto LABEL_21;
  }

  v42 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v43 = v38;

  if ((v42 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_21:
  v100 = v19;
  v44 = *&v4[v37];
  v45 = *&v44[OBJC_IVAR____TtC7Journal16ContactAssetView_contactAsset];
  *&v44[OBJC_IVAR____TtC7Journal16ContactAssetView_contactAsset] = v97;
  v46 = v44;
  v47 = v97;

  sub_100745BF4();
  [v104 addArrangedSubview:*&v4[v101]];
  v48 = *&v4[v98];
  sub_100760CA8(v48, 1);

  v49 = [*&v4[v98] layer];
  if (qword_100AD0A18 != -1)
  {
    swift_once();
  }

  v105 = xmmword_100B30F28;
  v106 = *&qword_100B30F38;
  v107 = xmmword_100B30F48;
  v108 = *&qword_100B30F58;
  [v49 setCornerRadii:&v105];

  v50 = [*&v4[v37] layer];
  v105 = xmmword_100B30F28;
  v106 = *&qword_100B30F38;
  v107 = xmmword_100B30F48;
  v108 = *&qword_100B30F58;
  [v50 setCornerRadii:&v105];

  [*&v4[v37] setClipsToBounds:1];
  [*&v4[v101] addSubview:*&v4[v98]];
  v102 = v37;
  [*&v4[v36] addSubview:*&v4[v37]];
  v51 = *&v4[v36];
  v52 = [v51 superview];
  if (v52)
  {
    v53 = v52;
    [v51 setTranslatesAutoresizingMaskIntoConstraints:0];
    v54 = [v51 leadingAnchor];
    v55 = [v53 leadingAnchor];
    v56 = [v54 constraintEqualToAnchor:v55];

    [v56 setConstant:20.0];
    v57 = v103;
    if (v56)
    {
      [v56 setActive:1];
    }

    v58 = v104;
  }

  else
  {
    v56 = 0;
    v53 = v51;
    v57 = v103;
    v58 = v104;
  }

  v59 = *&v4[v36];
  v60 = [v59 superview];
  if (v60)
  {
    v61 = v60;
    [v59 setTranslatesAutoresizingMaskIntoConstraints:0];
    v62 = [v59 trailingAnchor];
    v63 = [v61 trailingAnchor];
    v64 = [v62 constraintEqualToAnchor:v63];

    [v64 setConstant:-20.0];
    if (v64)
    {
      [v64 setActive:1];
    }
  }

  else
  {
    v64 = 0;
    v61 = v59;
  }

  v65 = *&v4[v36];
  [v65 setTranslatesAutoresizingMaskIntoConstraints:0];
  v66 = [v65 heightAnchor];
  v67 = [v65 widthAnchor];
  v68 = [v66 constraintEqualToAnchor:v67 multiplier:1.0];

  [v68 setActive:1];
  v69 = *&v4[v102];
  sub_100013178(0.0);

  v70 = *&v4[v98];
  sub_100013178(0.0);

  [v58 addArrangedSubview:v57];
  v71 = [v57 superview];
  if (v71)
  {
    v72 = v71;
    [v57 setTranslatesAutoresizingMaskIntoConstraints:0];
    v73 = [v57 leadingAnchor];
    v74 = [v72 leadingAnchor];
    v75 = [v73 constraintEqualToAnchor:v74];

    [v75 setConstant:32.0];
    [v75 setActive:1];
  }

  v76 = [v57 superview];
  if (v76)
  {
    v77 = v76;
    [v57 setTranslatesAutoresizingMaskIntoConstraints:0];
    v78 = [v57 trailingAnchor];
    v79 = [v77 trailingAnchor];
    v80 = [v78 constraintEqualToAnchor:v79];

    [v80 setConstant:-32.0];
    [v80 setActive:1];
  }

  [v4 addSubview:v58];
  v81 = [v58 superview];
  if (v81)
  {
    v82 = v81;
    [v58 setTranslatesAutoresizingMaskIntoConstraints:0];
    v83 = [v58 centerYAnchor];
    v84 = [v82 centerYAnchor];
    v85 = [v83 constraintEqualToAnchor:v84];

    [v85 setConstant:0.0];
    [v85 setActive:1];
  }

  v86 = [v58 superview];
  if (v86)
  {
    v87 = v86;
    [v58 setTranslatesAutoresizingMaskIntoConstraints:0];
    v88 = [v58 leadingAnchor];
    v89 = [v87 leadingAnchor];
    v90 = [v88 constraintEqualToAnchor:v89];

    [v90 setConstant:0.0];
    [v90 setActive:1];
  }

  v91 = [v58 superview];
  if (v91)
  {
    v92 = v91;
    [v58 setTranslatesAutoresizingMaskIntoConstraints:0];
    v93 = [v58 trailingAnchor];
    v94 = [v92 trailingAnchor];
    v95 = [v93 constraintEqualToAnchor:v94];

    [v95 setConstant:0.0];
    [v95 setActive:1];
  }

  [v4 layoutIfNeeded];
  [v58 layoutIfNeeded];
  [*&v4[v102] layoutIfNeeded];
}

id sub_100401348(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC7Journal21FullScreenContactView_contactAsset] = 0;
  v9 = OBJC_IVAR____TtC7Journal21FullScreenContactView_contactAssetView;
  type metadata accessor for ContactAssetGridView();
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = OBJC_IVAR____TtC7Journal21FullScreenContactView_backgroundView;
  *&v4[v10] = [objc_allocWithZone(UIView) init];
  v11 = OBJC_IVAR____TtC7Journal21FullScreenContactView_dropShadowView;
  *&v4[v11] = [objc_allocWithZone(UIView) init];
  v13.receiver = v4;
  v13.super_class = type metadata accessor for FullScreenContactView();
  return objc_msgSendSuper2(&v13, "initWithFrame:", a1, a2, a3, a4);
}

id sub_100401450(void *a1)
{
  *&v1[OBJC_IVAR____TtC7Journal21FullScreenContactView_contactAsset] = 0;
  v3 = OBJC_IVAR____TtC7Journal21FullScreenContactView_contactAssetView;
  type metadata accessor for ContactAssetGridView();
  *&v1[v3] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR____TtC7Journal21FullScreenContactView_backgroundView;
  *&v1[v4] = [objc_allocWithZone(UIView) init];
  v5 = OBJC_IVAR____TtC7Journal21FullScreenContactView_dropShadowView;
  *&v1[v5] = [objc_allocWithZone(UIView) init];
  v8.receiver = v1;
  v8.super_class = type metadata accessor for FullScreenContactView();
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

id sub_100401558()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FullScreenContactView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100401624()
{
  result = sub_1003632F8(_swiftEmptyArrayStorage);
  qword_100B2F8D8 = result;
  return result;
}

void sub_100401670()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AD5170, &unk_100943680);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - v3;
  v5 = type metadata accessor for TitleValueTableViewController();
  v20.receiver = v0;
  v20.super_class = v5;
  objc_msgSendSuper2(&v20, "viewDidLoad");
  v6 = [v0 navigationItem];
  sub_1000F24EC(&unk_100AD4780, &unk_100941070);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100941D50;
  sub_1000065A8(0, &qword_100AD43B0, UIBarButtonItem_ptr);
  sub_1000065A8(0, &qword_100AD4420, UIAction_ptr);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v21.is_nil = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v8.value._countAndFlagsBits = 0x65736F6C43;
  v8.value._object = 0xE500000000000000;
  v21.value.super.isa = 0;
  v22.value.super.super.isa = 0;
  *(v7 + 32) = UIBarButtonItem.init(title:image:primaryAction:menu:)(v8, v21, v22, v23);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v6 setLeftBarButtonItems:isa];

  v10 = [v1 tableView];
  if (!v10)
  {
    __break(1u);
    goto LABEL_7;
  }

  v11 = v10;
  v12 = [objc_allocWithZone(UIRefreshControl) init];
  [v11 setRefreshControl:v12];

  v13 = [v1 tableView];
  if (!v13)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v14 = v13;
  v15 = [v13 refreshControl];

  if (v15)
  {
    [v15 addTarget:v1 action:"refreshData" forControlEvents:4096];
  }

  (*((swift_isaMask & *v1) + 0x78))();
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
  type metadata accessor for MainActor();
  v17 = v1;
  v18 = static MainActor.shared.getter();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = &protocol witness table for MainActor;
  v19[4] = v17;
  sub_1003E9628(0, 0, v4, &unk_100954ED8, v19);
}

void sub_100401A00(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_100401AAC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v8 = (*((swift_isaMask & *a4) + 0x80) + **((swift_isaMask & *a4) + 0x80));
  v6 = swift_task_alloc();
  v4[5] = v6;
  *v6 = v4;
  v6[1] = sub_100401BF8;

  return v8();
}

uint64_t sub_100401BF8(uint64_t a1)
{
  *(*v1 + 48) = a1;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100401D3C, v3, v2);
}

id sub_100401D3C()
{
  v1 = v0[2];
  *&v1[OBJC_IVAR____TtC7Journal29TitleValueTableViewController_data] = v0[6];

  result = [v1 tableView];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = result;
  v4 = v0[2];
  [result reloadData];

  result = [v4 tableView];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  v6 = v0[2];
  [result reloadData];

  result = [v6 tableView];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v7 = result;

  v8 = [v7 refreshControl];

  [v8 endRefreshing];
  v9 = v0[1];

  return v9();
}

uint64_t sub_100401FE4()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100402078, v2, v1);
}

uint64_t sub_100402078()
{

  v1 = *(v0 + 8);

  return v1(_swiftEmptyArrayStorage);
}

id sub_1004025A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TitleValueTableViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100402608(uint64_t a1)
{
  result = 0;
  if ((a1 & 0x8000000000000000) == 0)
  {
    v4 = *(v1 + OBJC_IVAR____TtC7Journal29TitleValueTableViewController_data);
    if (*(v4 + 16) > a1)
    {
      return *(*(v4 + 24 * a1 + 48) + 16);
    }
  }

  return result;
}

uint64_t sub_100402640(uint64_t a1)
{
  v2 = 0;
  if ((a1 & 0x8000000000000000) == 0)
  {
    v3 = *(v1 + OBJC_IVAR____TtC7Journal29TitleValueTableViewController_data);
    if (*(v3 + 16) > a1)
    {
      v2 = *(v3 + 24 * a1 + 32);
    }
  }

  return v2;
}

void sub_1004026A4(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v14 = a1;
    v4 = [v3 textLabel];
    if (v4)
    {
      v5 = v4;
      v6 = [objc_opt_self() labelColor];
      [v5 setTextColor:v6];
    }

    v7 = [v3 textLabel];
    if (v7)
    {
      v8 = v7;
      v9 = [objc_opt_self() boldSystemFontOfSize:22.0];
      [v8 setFont:v9];
    }

    v10 = [v3 textLabel];
    if (v10)
    {
      v11 = v10;
      [v3 bounds];
      [v11 setFrame:?];
    }

    v12 = [v3 textLabel];
    if (v12)
    {
      v13 = v12;
      [v12 setTextAlignment:1];
    }
  }
}

id sub_100402854()
{
  v1 = [objc_allocWithZone(UITableViewCell) initWithStyle:3 reuseIdentifier:0];
  v2 = *(v0 + OBJC_IVAR____TtC7Journal29TitleValueTableViewController_data);

  v3 = IndexPath.section.getter();
  if (v3 < 0)
  {
    goto LABEL_19;
  }

  if (v3 >= *(v2 + 16))
  {
    goto LABEL_19;
  }

  v4 = *(v2 + 24 * v3 + 48);

  v5 = IndexPath.row.getter();
  if (v5 < 0 || v5 >= *(v4 + 16))
  {
    goto LABEL_19;
  }

  v6 = [v1 textLabel];
  if (v6)
  {
    v7 = v6;
    v8 = [objc_opt_self() boldSystemFontOfSize:18.0];
    [v7 setFont:v8];
  }

  v9 = [v1 textLabel];
  if (v9)
  {
    v10 = v9;
    [v9 setNumberOfLines:0];
  }

  v11 = [v1 textLabel];
  if (v11)
  {
    v12 = v11;

    v13 = String._bridgeToObjectiveC()();

    [v12 setText:v13];
  }

  v14 = [v1 detailTextLabel];
  if (v14)
  {
    v15 = v14;
    v16 = [objc_opt_self() systemFontOfSize:14.0];
    [v15 setFont:v16];
  }

  v17 = [v1 detailTextLabel];
  if (v17)
  {
    v18 = v17;
    [v17 setNumberOfLines:0];
  }

  v19 = [v1 detailTextLabel];
  if (!v19)
  {

LABEL_19:

    return v1;
  }

  v20 = v19;

  v21 = String._bridgeToObjectiveC()();

  [v20 setText:v21];

  return v1;
}

double sub_100402B2C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal29TitleValueTableViewController_data);

  v2 = IndexPath.section.getter();
  if ((v2 & 0x8000000000000000) == 0 && v2 < *(v1 + 16))
  {
    v3 = *(v1 + 24 * v2 + 48);

    v4 = IndexPath.row.getter();
    if ((v4 & 0x8000000000000000) == 0 && v4 < *(v3 + 16))
    {
      v5 = v3 + 32 * v4;
      v6 = *(v5 + 48);
      v7 = *(v5 + 56);

      v8 = [objc_opt_self() generalPasteboard];
      v9 = String._bridgeToObjectiveC()();
      [v8 setString:v9];
    }
  }

  return result;
}

uint64_t sub_100402C80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_100401AAC(a1, v4, v5, v6);
}

uint64_t sub_100402D3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032ECC;

  return sub_100401AAC(a1, v4, v5, v6);
}

char *sub_100402E28(uint64_t a1)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v4 - 8);
  v5 = OBJC_IVAR____TtC7JournalP33_FE1AF9319DABE2D117B2C08623B665DB30InsightsCalendarDecorationView_imageView;
  *&v1[v5] = [objc_allocWithZone(UIImageView) init];
  v33.receiver = v1;
  v33.super_class = type metadata accessor for InsightsCalendarDecorationView();
  v6 = objc_msgSendSuper2(&v33, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v7);
  String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v8._countAndFlagsBits = 0x73656972746E4520;
  v8._object = 0xE800000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v8);
  String.LocalizationValue.init(stringInterpolation:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v9 = String._bridgeToObjectiveC()();

  [v6 setAccessibilityLabel:v9];

  v10 = OBJC_IVAR____TtC7JournalP33_FE1AF9319DABE2D117B2C08623B665DB30InsightsCalendarDecorationView_imageView;
  [*&v6[OBJC_IVAR____TtC7JournalP33_FE1AF9319DABE2D117B2C08623B665DB30InsightsCalendarDecorationView_imageView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = *&v6[v10];
  v12 = String._bridgeToObjectiveC()();
  v13 = [objc_opt_self() systemImageNamed:v12];

  [v11 setImage:v13];
  v14 = *&v6[v10];
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 configurationWithTextStyle:UIFontTextStyleCaption2 scale:1];
  [v16 setPreferredSymbolConfiguration:v17];

  v18 = *&v6[v10];
  v19 = v6;
  [v19 addSubview:v18];
  v20 = objc_opt_self();
  sub_1000F24EC(&unk_100AD4780, &unk_100941070);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100941D70;
  v22 = [*&v6[v10] topAnchor];
  v23 = [v19 topAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 constant:-3.0];

  *(v21 + 32) = v24;
  v25 = [*&v6[v10] bottomAnchor];
  v26 = [v19 bottomAnchor];

  v27 = [v25 constraintLessThanOrEqualToAnchor:v26];
  *(v21 + 40) = v27;
  v28 = [*&v6[v10] centerXAnchor];
  v29 = [v19 centerXAnchor];

  v30 = [v28 constraintEqualToAnchor:v29];
  *(v21 + 48) = v30;
  sub_1001AD130();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v20 activateConstraints:isa];

  return v19;
}

id sub_1004033C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InsightsCalendarDecorationView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100403440(uint64_t a1)
{
  v2 = sub_100404874();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10040347C(uint64_t a1)
{
  v2 = sub_100404874();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004034B8@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_1004045AC(a2);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1004034E4(void *a1)
{
  v2 = sub_1000F24EC(&qword_100AE38F0, &qword_100955028);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_10000CA14(a1, a1[3]);
  sub_100404874();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1004035FC()
{
  result = qword_100AE38D0;
  if (!qword_100AE38D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE38D0);
  }

  return result;
}

unint64_t sub_100403654()
{
  result = qword_100AE38D8;
  if (!qword_100AE38D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE38D8);
  }

  return result;
}

unint64_t sub_1004036AC()
{
  result = qword_100AE38E0;
  if (!qword_100AE38E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE38E0);
  }

  return result;
}

unint64_t sub_100403704()
{
  result = qword_100AE38E8;
  if (!qword_100AE38E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE38E8);
  }

  return result;
}

uint64_t sub_100403758(uint64_t a1)
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for Calendar.Component();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for Calendar();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static Calendar.current.getter();
  (*(v4 + 104))(v6, enum case for Calendar.Component.weekday(_:), v3);
  v11 = Calendar.component(_:from:)();
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
  result = 0;
  if (v11 <= 3)
  {
    if (v11 == 1 || v11 == 2 || v11 == 3)
    {
      goto LABEL_9;
    }
  }

  else if (v11 <= 6 || v11 == 7)
  {
LABEL_9:
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    return String.init(localized:table:bundle:locale:comment:)();
  }

  return result;
}

uint64_t sub_100403BA4(uint64_t a1)
{
  v2 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v2 - 8);
  v76 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Date.FormatStyle.TimeStyle();
  v67 = *(v4 - 8);
  v68 = v4;
  __chkstk_darwin(v4);
  v65 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for Date.FormatStyle.DateStyle();
  v64 = *(v66 - 8);
  __chkstk_darwin(v66);
  v63 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for Date.FormatStyle.Symbol.Day();
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v60 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for Date.FormatStyle.Symbol.Month();
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v54 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for Date.FormatStyle();
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v52 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v53 = &v52 - v11;
  __chkstk_darwin(v12);
  v55 = &v52 - v13;
  v14 = type metadata accessor for Date();
  v73 = *(v14 - 8);
  v74 = v14;
  __chkstk_darwin(v14);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Locale();
  __chkstk_darwin(v17 - 8);
  v78 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v19 - 8);
  v77 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Calendar.Component();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Calendar();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.current.getter();
  v71 = *(v22 + 104);
  v71(v24, enum case for Calendar.Component.weekday(_:), v21);
  v75 = a1;
  v29 = Calendar.component(_:from:)();
  v69 = *(v22 + 8);
  v69(v24, v21);
  v70 = *(v26 + 8);
  v70(v28, v25);
  v30 = 0;
  v31 = 0xE000000000000000;
  if (v29 <= 3)
  {
    if (v29 != 1 && v29 != 2 && v29 != 3)
    {
      goto LABEL_10;
    }
  }

  else if (v29 > 6 && v29 != 7)
  {
    goto LABEL_10;
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v30 = String.init(localized:table:bundle:locale:comment:)();
  v31 = v32;
LABEL_10:
  v72 = v30;
  static Calendar.current.getter();
  static Date.now.getter();
  v71(v24, enum case for Calendar.Component.year(_:), v21);
  v33 = Calendar.compare(_:to:toGranularity:)();
  v69(v24, v21);
  (*(v73 + 8))(v16, v74);
  v70(v28, v25);
  if (v33)
  {
    v34 = v63;
    static Date.FormatStyle.DateStyle.abbreviated.getter();
    v35 = v65;
    static Date.FormatStyle.TimeStyle.omitted.getter();
    v36 = Date.formatted(date:time:)();
    v38 = v37;
    (*(v67 + 8))(v35, v68);
    (*(v64 + 8))(v34, v66);
  }

  else
  {
    v39 = v52;
    static FormatStyle<>.dateTime.getter();
    v40 = v54;
    static Date.FormatStyle.Symbol.Month.abbreviated.getter();
    v41 = v53;
    Date.FormatStyle.month(_:)();
    (*(v56 + 8))(v40, v57);
    v42 = *(v58 + 8);
    v43 = v59;
    v42(v39, v59);
    v44 = v60;
    static Date.FormatStyle.Symbol.Day.defaultDigits.getter();
    v45 = v55;
    Date.FormatStyle.day(_:)();
    (*(v61 + 8))(v44, v62);
    v42(v41, v43);
    sub_10012CA34();
    Date.formatted<A>(_:)();
    v42(v45, v43);
    v36 = v79;
    v38 = v80;
  }

  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v46._countAndFlagsBits = 0;
  v46._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v46);
  v47._countAndFlagsBits = v72;
  v47._object = v31;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v47);

  v48._countAndFlagsBits = 8236;
  v48._object = 0xE200000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v48);
  v49._countAndFlagsBits = v36;
  v49._object = v38;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v49);

  v50._countAndFlagsBits = 0;
  v50._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v50);
  String.LocalizationValue.init(stringInterpolation:)();
  static Locale.current.getter();
  return String.init(localized:table:bundle:locale:comment:)();
}