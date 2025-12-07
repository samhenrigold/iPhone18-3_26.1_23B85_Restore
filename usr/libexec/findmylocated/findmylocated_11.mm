id sub_100139350(id result, char a2)
{
  if (!a2)
  {
    return result;
  }

  return result;
}

void sub_100139360(id a1, char a2)
{
  if (!a2)
  {
  }
}

uint64_t sub_100139370(uint64_t a1)
{
  v2 = sub_10004B564(&qword_1005A9670, &unk_1004C2480);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001393D8()
{
  result = qword_1005A8C80;
  if (!qword_1005A8C80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005A8C80);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for SecureLocationsSubmitResponseBody(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_100139444(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_10013948C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100139520()
{
  sub_10013A738();
  result = OS_os_log.init(subsystem:category:)();
  qword_1005DFBF0 = result;
  return result;
}

void *sub_100139580()
{
  type metadata accessor for SystemInfoDynamic();
  v0 = swift_allocObject();
  result = sub_1001395BC();
  qword_1005DFBF8 = v0;
  return result;
}

void *sub_1001395BC()
{
  v1 = v0;
  sub_10004B564(&qword_1005ABCC0, &qword_1004C5F98);
  swift_allocObject();
  v2 = CurrentValueSubject.init(_:)();
  v0[2] = v2;
  sub_10004B564(&qword_1005A8688, &qword_1004C5FA0);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v0[4] = v3;
  v0[5] = 0;
  swift_unownedRetainStrong();
  sub_10004B564(&qword_1005ABCC8, &qword_1004C5FA8);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  swift_unownedRetainStrong();

  swift_unownedRetain();
  swift_unownedRetain();
  sub_10013A6D4();
  v5 = Publisher.eraseToAnyPublisher()();
  swift_unownedRelease();

  *(v4 + 24) = v5;

  v1[3] = v4;
  if ((static SystemInfo.underTest.getter() & 1) == 0)
  {
    sub_100139B2C();
    sub_1001396F4();
  }

  return v1;
}

uint64_t sub_1001396F4()
{
  v0 = type metadata accessor for DarwinNotifications();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v29 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = &v26 - v4;
  v6 = static os_log_type_t.default.getter();
  sub_10013A738();
  v7 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, v7, "Registering for me device change darwin notification", 52, 2, _swiftEmptyArrayStorage);

  sub_10004B564(&qword_1005AA730, &qword_1004C4388);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C2310;
  v9 = *(v1 + 104);
  v9(v5, enum case for DarwinNotifications.devicesChanged(_:), v0);
  v10 = DarwinNotifications.rawValue.getter();
  v12 = v11;
  v27 = *(v1 + 8);
  v27(v5, v0);
  v13 = swift_allocObject();
  v14 = v28;
  swift_weakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = sub_10013A784;
  *(v15 + 24) = v13;
  *(inited + 32) = v10;
  *(inited + 40) = v12;
  *(inited + 48) = sub_10013A7AC;
  *(inited + 56) = v15;
  v16 = v29;
  v9(v29, enum case for DarwinNotifications.meDeviceChanged(_:), v0);

  v17 = v16;
  v18 = DarwinNotifications.rawValue.getter();
  v20 = v19;
  v27(v17, v0);
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = sub_10013A7B0;
  *(v22 + 24) = v21;
  *(inited + 64) = v18;
  *(inited + 72) = v20;
  *(inited + 80) = sub_10013A80C;
  *(inited + 88) = v22;

  v23 = sub_1002089E4(inited);
  swift_setDeallocating();
  sub_10004B564(&qword_1005AA738, &qword_1004C4390);
  swift_arrayDestroy();
  type metadata accessor for DarwinNotificationHelper();
  v24 = swift_allocObject();
  type metadata accessor for DarwinNotificationListener();
  swift_allocObject();
  *(v24 + 16) = sub_1001400CC(v23, 0);
  *(v24 + 24) = 0;
  *(v14 + 40) = v24;
}

uint64_t sub_100139A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6)
{
  v8 = static os_log_type_t.default.getter();
  if (qword_1005A7F58 != -1)
  {
    v10 = v8;
    swift_once();
    v8 = v10;
  }

  os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, qword_1005DFBF0, a5, a6, 2, _swiftEmptyArrayStorage);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100139B2C();
  }

  return result;
}

uint64_t sub_100139B2C()
{
  v0 = type metadata accessor for Device();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = static os_log_type_t.default.getter();
  if (qword_1005A7F58 != -1)
  {
    v10 = v4;
    swift_once();
    v4 = v10;
  }

  v5 = qword_1005DFBF0;
  os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, qword_1005DFBF0, "SystemInfoDynamic: Forcing Refresh", 34, 2, _swiftEmptyArrayStorage);
  unsafeFromAsyncTask<A>(_:)();
  v6 = static os_log_type_t.default.getter();
  sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1004C1900;
  v8 = Device.isThisDevice.getter();
  *(v7 + 56) = &type metadata for Bool;
  *(v7 + 64) = &protocol witness table for Bool;
  *(v7 + 32) = v8 & 1;
  os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, v5, "This device is me device? %d", v11);

  swift_unownedRetainStrong();
  CurrentValueSubject.value.getter();

  if (v14 <= 1u)
  {
    if (v14)
    {
      if ((Device.isThisDevice.getter() & 1) == 0)
      {
        HIBYTE(v11) = 2;
        goto LABEL_17;
      }

      return (*(v1 + 8))(v3, v0);
    }
  }

  else
  {
    if (v14 == 2)
    {
      if (Device.isThisDevice.getter())
      {
        v13 = 1;
        goto LABEL_17;
      }

      return (*(v1 + 8))(v3, v0);
    }

    if (v14 == 3)
    {
      if ((Device.isThisDevice.getter() & 1) == 0)
      {
        v12 = 2;
LABEL_17:
        CurrentValueSubject.send(_:)();
        return (*(v1 + 8))(v3, v0);
      }

      return (*(v1 + 8))(v3, v0);
    }
  }

  if (Device.isThisDevice.getter())
  {
    BYTE1(v11) = 1;
  }

  else
  {
    BYTE2(v11) = 2;
  }

  CurrentValueSubject.send(_:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100139EDC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100139F70;

  return daemon.getter();
}

uint64_t sub_100139F70(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 32) = a1;

  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for SettingsService(0);
  v6 = sub_100009098(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100009098(&qword_1005AA6E8, type metadata accessor for SettingsService, &unk_1004DC468);
  *v3 = v9;
  v3[1] = sub_10013A14C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10013A14C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[6] = a1;
  v3[7] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10013A3F0, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[8] = v5;
    *v5 = v4;
    v5[1] = sub_10013A2DC;
    v6 = v3[2];

    return sub_100484570(v6, 0);
  }
}

uint64_t sub_10013A2DC()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_10013A454;
  }

  else
  {
    v2 = sub_100016108;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10013A3F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10013A454()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10013A4B8()
{

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for SystemInfoDynamic.MeDeviceState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SystemInfoDynamic.MeDeviceState(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10013A680()
{
  result = qword_1005ABCB8;
  if (!qword_1005ABCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ABCB8);
  }

  return result;
}

unint64_t sub_10013A6D4()
{
  result = qword_1005ABCD0;
  if (!qword_1005ABCD0)
  {
    sub_10004B610(&qword_1005ABCC0, &qword_1004C5F98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ABCD0);
  }

  return result;
}

unint64_t sub_10013A738()
{
  result = qword_1005ABEA0;
  if (!qword_1005ABEA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005ABEA0);
  }

  return result;
}

uint64_t sub_10013A810()
{
  sub_10013A738();
  result = OS_os_log.init(subsystem:category:)();
  qword_1005DFC00 = result;
  return result;
}

uint64_t sub_10013A878(uint64_t a1)
{
  type metadata accessor for XPCActivity_SPD();
  sub_10013E4FC();
  v2._countAndFlagsBits = CustomDebugStringConvertible.typeDescription.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 8250;
  v3._object = 0xE200000000000000;
  String.append(_:)(v3);
  v4._countAndFlagsBits = CustomDebugStringConvertible<>.addressDescription.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 23328;
  v5._object = 0xE200000000000000;
  String.append(_:)(v5);
  String.append(_:)(*(v1 + 24));
  v6._countAndFlagsBits = 15965;
  v6._object = 0xE200000000000000;
  String.append(_:)(v6);
  return 60;
}

double sub_10013A958(void *a1)
{
  v2 = String.utf8CString.getter();
  xpc_activity_unregister((v2 + 32));

  v3 = a1[12];
  v4 = a1[13];
  a1[12] = 0;
  a1[13] = 0;
  sub_100037FC8(v3, v4);
  swift_unknownObjectWeakAssign();
  v5 = static os_log_type_t.default.getter();
  if (qword_1005A7F68 != -1)
  {
    swift_once();
  }

  v6 = qword_1005DFC00;
  sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1004C1900;
  type metadata accessor for XPCActivity_SPD();

  v8 = String.init<A>(describing:)();
  v10 = v9;
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = sub_1000588B8();
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, v6, "%{public}@: Unregistered criteria", 33, 2, v7);

  return result;
}

double sub_10013AAA8(_xpc_activity_s *a1)
{
  v2 = static os_log_type_t.default.getter();
  if (qword_1005A7F68 != -1)
  {
    swift_once();
  }

  v3 = qword_1005DFC00;
  sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1004C1900;
  type metadata accessor for XPCActivity_SPD();

  v5 = String.init<A>(describing:)();
  v7 = v6;
  *(v4 + 56) = &type metadata for String;
  v8 = sub_1000588B8();
  *(v4 + 64) = v8;
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, v3, "%{public}@: updateCriteria called on XPCActivity", 48, 2, v4);

  sub_10004B564(&qword_1005ABE98, &qword_1004C61E8);
  OS_dispatch_queue.sync<A>(execute:)();
  if (a1)
  {
    sub_10013B504(a1);
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = MEMORY[0x58];
    v11 = static os_log_type_t.default.getter();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1004C2310;

    v13 = String.init<A>(describing:)();
    *(v12 + 56) = &type metadata for String;
    *(v12 + 64) = v8;
    *(v12 + 32) = v13;
    *(v12 + 40) = v14;
    v16 = MEMORY[0x18];
    v15 = MEMORY[0x20];
    *(v12 + 96) = &type metadata for String;
    *(v12 + 104) = v8;
    *(v12 + 72) = v16;
    *(v12 + 80) = v15;

    if (v10 == 1)
    {
      os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v3, "%{public}@: No current activity -- re-registering: %{public}@", 61, 2, v12);

      sub_10013AF2C(v17);
    }

    else
    {
      os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v3, "%{public}@: No current activity -- hasn't checked in yet: %{public}@", 68, 2, v12);
    }
  }

  return result;
}

BOOL sub_10013ADA4(uint64_t a1, xpc_activity_state_t a2, const char *a3, uint64_t a4, ...)
{
  sub_10004B564(&qword_1005ABE98, &qword_1004C61E8);
  OS_dispatch_queue.sync<A>(execute:)();
  if (activity)
  {
    v7 = xpc_activity_set_state(activity, a2);
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = static os_log_type_t.error.getter();
    if (qword_1005A7F68 != -1)
    {
      swift_once();
    }

    v9 = qword_1005DFC00;
    sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1004C1900;
    type metadata accessor for XPCActivity_SPD();

    v11 = String.init<A>(describing:)();
    v13 = v12;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_1000588B8();
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v9, a3, a4, 2, v10);

    return 0;
  }

  return v7;
}

uint64_t sub_10013AF2C(uint64_t a1)
{
  result = static SystemInfo.underTest.getter();
  if ((result & 1) == 0)
  {
    v3 = *(v1 + 16);
    v4 = swift_allocObject();
    *(v4 + 16) = sub_10013E478;
    *(v4 + 24) = v1;
    v6[4] = sub_1000CAA0C;
    v6[5] = v4;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_10013EC94;
    v6[3] = &unk_100591D20;
    v5 = _Block_copy(v6);

    dispatch_sync(v3, v5);
    _Block_release(v5);
    LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

    if (v3)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10013B068(void *a1)
{
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = a1[12];
  v4 = a1[13];
  a1[12] = sub_10013E480;
  a1[13] = v2;

  sub_100037FC8(v3, v4);
  v8[4] = sub_10013E480;
  v8[5] = v2;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10013B278;
  v8[3] = &unk_100591D70;
  v5 = _Block_copy(v8);

  v6 = String.utf8CString.getter();
  xpc_activity_register((v6 + 32), XPC_ACTIVITY_CHECK_IN, v5);

  _Block_release(v5);
}

uint64_t sub_10013B1A4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = type metadata accessor for Transaction();
    __chkstk_darwin(v3);
    static Transaction.named<A>(_:with:)();
  }

  return result;
}

uint64_t sub_10013B278(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_10013B2D8(uint64_t a1, xpc_activity_t activity, uint64_t (**a3)(_xpc_activity_s *, uint64_t, unint64_t))
{
  state = xpc_activity_get_state(activity);
  v5 = sub_10013DD14(state);
  v18 = static os_log_type_t.default.getter();
  if (qword_1005A7F68 != -1)
  {
    swift_once();
  }

  v6 = qword_1005DFC00;
  sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1004C0BD0;
  type metadata accessor for XPCActivity_SPD();

  v8 = String.init<A>(describing:)();
  v10 = v9;
  *(v7 + 56) = &type metadata for String;
  v11 = sub_1000588B8();
  *(v7 + 64) = v11;
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  swift_unknownObjectRetain();
  sub_10004B564(&qword_1005ABEE8, &qword_1004C6200);
  v12 = String.init<A>(describing:)();
  *(v7 + 96) = &type metadata for String;
  *(v7 + 104) = v11;
  *(v7 + 72) = v12;
  *(v7 + 80) = v13;
  v14 = String.init<A>(describing:)();
  *(v7 + 136) = &type metadata for String;
  *(v7 + 144) = v11;
  *(v7 + 112) = v14;
  *(v7 + 120) = v15;
  os_log(_:dso:log:_:_:)(v18, &_mh_execute_header, v6, "%{public}@: activityHandler() for %{public}@ -- state: %{public}@", 65, 2, v7);

  if (!v5)
  {
    __chkstk_darwin(v16);
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v5 = v5;
  }

  return a3[8](a3, a1, v5);
}

unint64_t sub_10013B504(_xpc_activity_s *a1)
{
  v3 = v1;
  v4 = a1;
  if (!xpc_activity_copy_criteria(a1))
  {
    goto LABEL_4;
  }

  v5 = swift_unknownObjectRetain();
  sub_10013DB90(v5, &v54);
  if (v54 != 2)
  {
    v60 = v54;
    v61 = v55;
    v62 = v56;
    (*(v1 + 48))(&v57, &v54);
    if (v57 == 2)
    {
      v22 = *(v1 + 16);
      v4 = swift_allocObject();
      *(v4 + 2) = sub_10011FAE4;
      *(v4 + 3) = v3;
      *(&v52 + 1) = sub_1000CAA0C;
      v53 = v4;
      aBlock = _NSConcreteStackBlock;
      *&aBlock_8 = 1107296256;
      *(&aBlock_8 + 1) = sub_10013EC94;
      *&v52 = &unk_100591CD0;
      v23 = _Block_copy(&aBlock);

      dispatch_sync(v22, v23);
      _Block_release(v23);
      LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();
      swift_unknownObjectRelease();

      if ((v22 & 1) == 0)
      {
        return 6;
      }

      __break(1u);
    }

    else
    {
      aBlock = v57;
      aBlock_8 = v58;
      v52 = v59;
      v24 = sub_10013D764(&aBlock, &v60);
      v25 = static os_log_type_t.default.getter();
      if (!v24)
      {
        v49 = v25;
        if (qword_1005A7F68 != -1)
        {
          swift_once();
        }

        v48 = qword_1005DFC00;
        sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_1004C2310;
        type metadata accessor for XPCActivity_SPD();

        v35 = String.init<A>(describing:)();
        v37 = v36;
        *(v34 + 56) = &type metadata for String;
        v38 = sub_1000588B8();
        *(v34 + 64) = v38;
        *(v34 + 32) = v35;
        *(v34 + 40) = v37;
        v39 = String.init<A>(describing:)();
        *(v34 + 96) = &type metadata for String;
        *(v34 + 104) = v38;
        *(v34 + 72) = v39;
        *(v34 + 80) = v40;
        os_log(_:dso:log:_:_:)(v49, &_mh_execute_header, v48, "%{public}@: Existing criteria: %{public}@", 41, 2, v34);

        v41 = static os_log_type_t.default.getter();
        v42 = swift_allocObject();
        *(v42 + 16) = xmmword_1004C2310;

        v43 = String.init<A>(describing:)();
        *(v42 + 56) = &type metadata for String;
        *(v42 + 64) = v38;
        *(v42 + 32) = v43;
        *(v42 + 40) = v44;
        v45 = String.init<A>(describing:)();
        *(v42 + 96) = &type metadata for String;
        *(v42 + 104) = v38;
        *(v42 + 72) = v45;
        *(v42 + 80) = v46;
        os_log(_:dso:log:_:_:)(v41, &_mh_execute_header, v48, "%{public}@: Registering updated criteria: %{public}@", 52, 2, v42);

        sub_10013BC5C();
        xpc_activity_set_criteria(v4, v47);
        swift_unknownObjectRelease();
        goto LABEL_10;
      }

      v2 = v25;
      if (qword_1005A7F68 == -1)
      {
        goto LABEL_16;
      }
    }

    swift_once();
LABEL_16:
    v26 = qword_1005DFC00;
    sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1004C2310;
    type metadata accessor for XPCActivity_SPD();

    v28 = String.init<A>(describing:)();
    v30 = v29;
    *(v27 + 56) = &type metadata for String;
    v31 = sub_1000588B8();
    *(v27 + 64) = v31;
    *(v27 + 32) = v28;
    *(v27 + 40) = v30;
    v32 = String.init<A>(describing:)();
    *(v27 + 96) = &type metadata for String;
    *(v27 + 104) = v31;
    *(v27 + 72) = v32;
    *(v27 + 80) = v33;
    os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, v26, "%{public}@: Keeping existing criteria for: %{public}@", 53, 2, v27);

LABEL_10:
    swift_unknownObjectRelease();
    state = xpc_activity_get_state(v4);
    return sub_10013DD14(state);
  }

  swift_unknownObjectRelease();
LABEL_4:
  v6 = *(v1 + 48);
  v60 = 2;
  v61 = 0u;
  v62 = 0u;
  v6(&v57, &v60);
  v7 = v57;
  if (v57 != 2)
  {
LABEL_7:
    aBlock = v7;
    aBlock_8 = v58;
    v52 = v59;
    v10 = static os_log_type_t.default.getter();
    if (qword_1005A7F68 != -1)
    {
      swift_once();
    }

    v11 = qword_1005DFC00;
    sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1004C2310;
    type metadata accessor for XPCActivity_SPD();

    v13 = String.init<A>(describing:)();
    v15 = v14;
    *(v12 + 56) = &type metadata for String;
    v16 = sub_1000588B8();
    *(v12 + 64) = v16;
    *(v12 + 32) = v13;
    *(v12 + 40) = v15;
    v17 = String.init<A>(describing:)();
    *(v12 + 96) = &type metadata for String;
    *(v12 + 104) = v16;
    *(v12 + 72) = v17;
    *(v12 + 80) = v18;
    os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v11, "%{public}@: Registering new criteria: %@", 40, 2, v12);

    sub_10013BC5C();
    xpc_activity_set_criteria(v4, v19);
    goto LABEL_10;
  }

  v8 = *(v1 + 16);
  v4 = swift_allocObject();
  *(v4 + 2) = sub_10011E210;
  *(v4 + 3) = v3;
  *(&v52 + 1) = sub_1000C7A78;
  v53 = v4;
  aBlock = _NSConcreteStackBlock;
  *&aBlock_8 = 1107296256;
  *(&aBlock_8 + 1) = sub_10013EC94;
  *&v52 = &unk_100591C80;
  v9 = _Block_copy(&aBlock);

  dispatch_sync(v8, v9);
  _Block_release(v9);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return 6;
}

void sub_10013BC5C()
{
  v1 = xpc_dictionary_create(0, 0, 0);
  v2 = v1;
  v3 = &XPC_ACTIVITY_PRIORITY_MAINTENANCE;
  if (!*v0)
  {
    v3 = &XPC_ACTIVITY_PRIORITY_UTILITY;
  }

  xpc_dictionary_set_string(v1, XPC_ACTIVITY_PRIORITY, *v3);
  v4 = *(v0 + 1);
  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_REPEATING, *(v0 + 1));
  xpc_dictionary_set_int64(v2, XPC_ACTIVITY_DELAY, *(v0 + 8));
  xpc_dictionary_set_int64(v2, XPC_ACTIVITY_GRACE_PERIOD, *(v0 + 16));
  if (v4 == 1)
  {
    xpc_dictionary_set_int64(v2, XPC_ACTIVITY_INTERVAL, *(v0 + 24));
  }

  v5 = *(v0 + 32);
  if (v5)
  {
    if (!XPC_ACTIVITY_POWER_NAP)
    {
      __break(1u);
      goto LABEL_51;
    }

    xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_POWER_NAP, 1);
  }

  if ((v5 & 4) == 0)
  {
    goto LABEL_11;
  }

  if (!XPC_ACTIVITY_REQUIRE_SIGNIFICANT_USER_INACTIVITY)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_REQUIRE_SIGNIFICANT_USER_INACTIVITY, 1);
LABEL_11:
  if ((v5 & 2) == 0)
  {
    goto LABEL_14;
  }

  if (!XPC_ACTIVITY_SHOULD_WAKE_DEVICE)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_SHOULD_WAKE_DEVICE, 1);
LABEL_14:
  if ((v5 & 8) == 0)
  {
    goto LABEL_17;
  }

  if (!XPC_ACTIVITY_USES_DUET_POWER_BUDGETING)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_USES_DUET_POWER_BUDGETING, 1);
LABEL_17:
  if ((v5 & 0x10) == 0)
  {
    goto LABEL_20;
  }

  if (!XPC_ACTIVITY_REQUIRES_CLASS_A)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_REQUIRES_CLASS_A, 1);
LABEL_20:
  if ((v5 & 0x20) == 0)
  {
    goto LABEL_23;
  }

  if (!XPC_ACTIVITY_REQUIRES_CLASS_B)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_REQUIRES_CLASS_B, 1);
LABEL_23:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_26;
  }

  if (!XPC_ACTIVITY_REQUIRES_CLASS_C)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_REQUIRES_CLASS_C, 1);
LABEL_26:
  if ((v5 & 0x80) == 0)
  {
    goto LABEL_29;
  }

  if (!XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);
LABEL_29:
  if ((v5 & 0x100) == 0)
  {
    goto LABEL_32;
  }

  if (!XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY, 1);
LABEL_32:
  if ((v5 & 0x2000) == 0)
  {
    goto LABEL_35;
  }

  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = String.utf8CString.getter();
  v8 = String.utf8CString.getter();
  xpc_dictionary_set_string(v6, (v7 + 32), (v8 + 32));

  if (!XPC_ACTIVITY_DUET_ACTIVITY_SCHEDULER_DATA)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  xpc_dictionary_set_value(v2, XPC_ACTIVITY_DUET_ACTIVITY_SCHEDULER_DATA, v6);
  swift_unknownObjectRelease();
LABEL_35:
  if ((v5 & 0x200) != 0)
  {
    xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  }

  if ((v5 & 0x400) != 0)
  {
    if (XPC_ACTIVITY_MEMORY_INTENSIVE)
    {
      xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_MEMORY_INTENSIVE, 1);
      goto LABEL_40;
    }

LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

LABEL_40:
  if ((v5 & 0x800) == 0)
  {
    goto LABEL_43;
  }

  if (!XPC_ACTIVITY_CPU_INTENSIVE)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_CPU_INTENSIVE, 1);
LABEL_43:
  if ((v5 & 0x1000) == 0)
  {
    goto LABEL_46;
  }

  if (!XPC_ACTIVITY_DISK_INTENSIVE)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_DISK_INTENSIVE, 1);
LABEL_46:
  if ((v5 & 0x4000) == 0)
  {
    return;
  }

  if (!XPC_ACTIVITY_COMMUNICATES_WITH_PAIRED_DEVICE)
  {
LABEL_63:
    __break(1u);
    return;
  }

  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_COMMUNICATES_WITH_PAIRED_DEVICE, 1);
}

uint64_t sub_10013BFD8()
{
  result = String.init(cString:)();
  qword_1005ABCE0 = result;
  *algn_1005ABCE8 = v1;
  return result;
}

uint64_t sub_10013C008(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x616E65746E69616DLL;
  }

  else
  {
    v3 = 0x7974696C697475;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xEB0000000065636ELL;
  }

  if (*a2)
  {
    v5 = 0x616E65746E69616DLL;
  }

  else
  {
    v5 = 0x7974696C697475;
  }

  if (*a2)
  {
    v6 = 0xEB0000000065636ELL;
  }

  else
  {
    v6 = 0xE700000000000000;
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

Swift::Int sub_10013C0B8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_10013C144(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_10013C1BC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_10013C244(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10058B058, *a1);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_10013C2A4(uint64_t *a1@<X8>)
{
  v2 = 0x7974696C697475;
  if (*v1)
  {
    v2 = 0x616E65746E69616DLL;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xEB0000000065636ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10013C39C()
{
  if (*v0)
  {
    return 0x6E65746E69616D2ELL;
  }

  else
  {
    return 0x7974696C6974752ELL;
  }
}

unint64_t sub_10013C3E0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10013DDD8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10013C4BC(__int16 a1)
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

  v2 = sub_1001FC900(0, 1, 1, _swiftEmptyArrayStorage);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_1001FC900((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0x614E7265776F702ELL;
  *(v5 + 5) = 0xE900000000000070;
  if ((a1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1001FC900(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_1001FC900((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x766544656B61772ELL;
    *(v8 + 5) = 0xEB00000000656369;
  }

LABEL_12:
  if ((a1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1001FC900(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_1001FC900((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    *(v11 + 4) = 0xD00000000000001ALL;
    *(v11 + 5) = 0x80000001004E2610;
  }

  if ((a1 & 8) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1001FC900(0, *(v2 + 2) + 1, 1, v2);
    }

    v13 = *(v2 + 2);
    v12 = *(v2 + 3);
    if (v13 >= v12 >> 1)
    {
      v2 = sub_1001FC900((v12 > 1), v13 + 1, 1, v2);
    }

    *(v2 + 2) = v13 + 1;
    v14 = &v2[16 * v13];
    *(v14 + 4) = 0xD000000000000017;
    *(v14 + 5) = 0x80000001004E25F0;
  }

  if ((a1 & 0x10) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1001FC900(0, *(v2 + 2) + 1, 1, v2);
    }

    v16 = *(v2 + 2);
    v15 = *(v2 + 3);
    if (v16 >= v15 >> 1)
    {
      v2 = sub_1001FC900((v15 > 1), v16 + 1, 1, v2);
    }

    *(v2 + 2) = v16 + 1;
    v17 = &v2[16 * v16];
    *(v17 + 4) = 0x657269757165722ELL;
    *(v17 + 5) = 0xEF417373616C4373;
    if ((a1 & 0x20) == 0)
    {
LABEL_26:
      if ((a1 & 0x40) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_46;
    }
  }

  else if ((a1 & 0x20) == 0)
  {
    goto LABEL_26;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1001FC900(0, *(v2 + 2) + 1, 1, v2);
  }

  v19 = *(v2 + 2);
  v18 = *(v2 + 3);
  if (v19 >= v18 >> 1)
  {
    v2 = sub_1001FC900((v18 > 1), v19 + 1, 1, v2);
  }

  *(v2 + 2) = v19 + 1;
  v20 = &v2[16 * v19];
  *(v20 + 4) = 0x657269757165722ELL;
  *(v20 + 5) = 0xEF427373616C4373;
  if ((a1 & 0x40) == 0)
  {
LABEL_27:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_51;
  }

LABEL_46:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1001FC900(0, *(v2 + 2) + 1, 1, v2);
  }

  v22 = *(v2 + 2);
  v21 = *(v2 + 3);
  if (v22 >= v21 >> 1)
  {
    v2 = sub_1001FC900((v21 > 1), v22 + 1, 1, v2);
  }

  *(v2 + 2) = v22 + 1;
  v23 = &v2[16 * v22];
  *(v23 + 4) = 0x657269757165722ELL;
  *(v23 + 5) = 0xEF437373616C4373;
  if ((a1 & 0x80) == 0)
  {
LABEL_28:
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_56;
  }

LABEL_51:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1001FC900(0, *(v2 + 2) + 1, 1, v2);
  }

  v25 = *(v2 + 2);
  v24 = *(v2 + 3);
  if (v25 >= v24 >> 1)
  {
    v2 = sub_1001FC900((v24 > 1), v25 + 1, 1, v2);
  }

  *(v2 + 2) = v25 + 1;
  v26 = &v2[16 * v25];
  *(v26 + 4) = 0xD000000000000010;
  *(v26 + 5) = 0x80000001004E25D0;
  if ((a1 & 0x100) == 0)
  {
LABEL_29:
    if ((a1 & 0x200) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_61;
  }

LABEL_56:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1001FC900(0, *(v2 + 2) + 1, 1, v2);
  }

  v28 = *(v2 + 2);
  v27 = *(v2 + 3);
  if (v28 >= v27 >> 1)
  {
    v2 = sub_1001FC900((v27 > 1), v28 + 1, 1, v2);
  }

  *(v2 + 2) = v28 + 1;
  v29 = &v2[16 * v28];
  *(v29 + 4) = 0xD00000000000001BLL;
  *(v29 + 5) = 0x80000001004E25B0;
  if ((a1 & 0x200) == 0)
  {
LABEL_30:
    if ((a1 & 0x400) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_66;
  }

LABEL_61:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1001FC900(0, *(v2 + 2) + 1, 1, v2);
  }

  v31 = *(v2 + 2);
  v30 = *(v2 + 3);
  if (v31 >= v30 >> 1)
  {
    v2 = sub_1001FC900((v30 > 1), v31 + 1, 1, v2);
  }

  *(v2 + 2) = v31 + 1;
  v32 = &v2[16 * v31];
  strcpy(v32 + 32, ".allowBattery");
  *(v32 + 23) = -4864;
  if ((a1 & 0x400) == 0)
  {
LABEL_31:
    if ((a1 & 0x800) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_71;
  }

LABEL_66:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1001FC900(0, *(v2 + 2) + 1, 1, v2);
  }

  v34 = *(v2 + 2);
  v33 = *(v2 + 3);
  if (v34 >= v33 >> 1)
  {
    v2 = sub_1001FC900((v33 > 1), v34 + 1, 1, v2);
  }

  *(v2 + 2) = v34 + 1;
  v35 = &v2[16 * v34];
  *(v35 + 4) = 0xD000000000000010;
  *(v35 + 5) = 0x80000001004E2590;
  if ((a1 & 0x800) == 0)
  {
LABEL_32:
    if ((a1 & 0x1000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_76;
  }

LABEL_71:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1001FC900(0, *(v2 + 2) + 1, 1, v2);
  }

  v37 = *(v2 + 2);
  v36 = *(v2 + 3);
  if (v37 >= v36 >> 1)
  {
    v2 = sub_1001FC900((v36 > 1), v37 + 1, 1, v2);
  }

  *(v2 + 2) = v37 + 1;
  v38 = &v2[16 * v37];
  strcpy(v38 + 32, ".cpuIntensive");
  *(v38 + 23) = -4864;
  if ((a1 & 0x1000) == 0)
  {
LABEL_33:
    if ((a1 & 0x2000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_81;
  }

LABEL_76:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1001FC900(0, *(v2 + 2) + 1, 1, v2);
  }

  v40 = *(v2 + 2);
  v39 = *(v2 + 3);
  if (v40 >= v39 >> 1)
  {
    v2 = sub_1001FC900((v39 > 1), v40 + 1, 1, v2);
  }

  *(v2 + 2) = v40 + 1;
  v41 = &v2[16 * v40];
  strcpy(v41 + 32, ".diskIntensive");
  v41[47] = -18;
  if ((a1 & 0x2000) == 0)
  {
LABEL_34:
    if ((a1 & 0x4000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_86;
  }

LABEL_81:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1001FC900(0, *(v2 + 2) + 1, 1, v2);
  }

  v43 = *(v2 + 2);
  v42 = *(v2 + 3);
  if (v43 >= v42 >> 1)
  {
    v2 = sub_1001FC900((v42 > 1), v43 + 1, 1, v2);
  }

  *(v2 + 2) = v43 + 1;
  v44 = &v2[16 * v43];
  *(v44 + 4) = 0xD000000000000019;
  *(v44 + 5) = 0x80000001004E2570;
  if ((a1 & 0x4000) != 0)
  {
LABEL_86:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1001FC900(0, *(v2 + 2) + 1, 1, v2);
    }

    v46 = *(v2 + 2);
    v45 = *(v2 + 3);
    if (v46 >= v45 >> 1)
    {
      v2 = sub_1001FC900((v45 > 1), v46 + 1, 1, v2);
    }

    *(v2 + 2) = v46 + 1;
    v47 = &v2[16 * v46];
    *(v47 + 4) = 0xD000000000000012;
    *(v47 + 5) = 0x80000001004E2550;
  }

LABEL_91:
  sub_10004B564(&qword_1005A9630, &qword_1004C5680);
  sub_10013E894();
  v48 = BidirectionalCollection<>.joined(separator:)();
  v50 = v49;

  v51._countAndFlagsBits = v48;
  v51._object = v50;
  String.append(_:)(v51);

  v52._countAndFlagsBits = 93;
  v52._object = 0xE100000000000000;
  String.append(_:)(v52);
  return 91;
}

uint64_t sub_10013CE10(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005ABED0, &qword_1004C61F8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_100011AEC(a1, a1[3]);
  sub_10013E2D4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = *v3;
  v16 = 0;
  sub_10013E3D0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v15 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = *(v3 + 4);
    v10[15] = 5;
    sub_10013E424();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

BOOL sub_10013D0B4(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_10013D0E4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_10013D110@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void sub_10013D1E8(uint64_t *a2@<X8>)
{
  v3 = sub_1001ADB9C();

  *a2 = v3;
}

uint64_t sub_10013D228()
{
  v1 = *v0;
  v2 = 0x797469726F697270;
  v3 = 0x7265506563617267;
  v4 = 0x6C61767265746E69;
  if (v1 != 4)
  {
    v4 = 0x736E6F6974706FLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E69746165706572;
  if (v1 != 1)
  {
    v5 = 0x79616C6564;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10013D2EC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10013DE3C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10013D314(uint64_t a1)
{
  v2 = sub_10013E2D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10013D350(uint64_t a1)
{
  v2 = sub_10013E2D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10013D38C@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10013E040(a2, v6);
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

BOOL sub_10013D3EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_10013D764(v5, v7);
}

uint64_t sub_10013D438()
{

  sub_100134068(v0 + 80);
  sub_100037FC8(*(v0 + 96), *(v0 + 104));

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for XPCActivity_SPD.State(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for XPCActivity_SPD.State(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10013D614(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[40])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10013D658(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_10013D6B8()
{
  result = qword_1005ABE80;
  if (!qword_1005ABE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ABE80);
  }

  return result;
}

uint64_t sub_10013D730@<X0>(uint64_t *a1@<X8>)
{
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

BOOL sub_10013D764(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == 0;
  if (*a1)
  {
    v5 = 0x616E65746E69616DLL;
  }

  else
  {
    v5 = 0x7974696C697475;
  }

  if (v4)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xEB0000000065636ELL;
  }

  if (*a2)
  {
    v7 = 0x616E65746E69616DLL;
  }

  else
  {
    v7 = 0x7974696C697475;
  }

  if (*a2)
  {
    v8 = 0xEB0000000065636ELL;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v5 == v7 && v6 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  if (((*(a1 + 1) ^ *(a2 + 1)) & 1) == 0 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return *(a1 + 32) == *(a2 + 32);
  }

  return 0;
}

uint64_t sub_10013D888(uint64_t result)
{
  if (!XPC_ACTIVITY_POWER_NAP)
  {
    __break(1u);
    goto LABEL_49;
  }

  v1 = result;
  result = xpc_dictionary_get_BOOL(result, XPC_ACTIVITY_POWER_NAP);
  if (!XPC_ACTIVITY_REQUIRE_SIGNIFICANT_USER_INACTIVITY)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v2 = result;
  result = xpc_dictionary_get_BOOL(v1, XPC_ACTIVITY_REQUIRE_SIGNIFICANT_USER_INACTIVITY);
  if (!XPC_ACTIVITY_SHOULD_WAKE_DEVICE)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v3 = result;
  result = xpc_dictionary_get_BOOL(v1, XPC_ACTIVITY_SHOULD_WAKE_DEVICE);
  if (!XPC_ACTIVITY_USES_DUET_POWER_BUDGETING)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v4 = result;
  result = xpc_dictionary_get_BOOL(v1, XPC_ACTIVITY_USES_DUET_POWER_BUDGETING);
  if (!XPC_ACTIVITY_REQUIRES_CLASS_A)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v5 = result;
  result = xpc_dictionary_get_BOOL(v1, XPC_ACTIVITY_REQUIRES_CLASS_A);
  if (!XPC_ACTIVITY_REQUIRES_CLASS_B)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v6 = result;
  result = xpc_dictionary_get_BOOL(v1, XPC_ACTIVITY_REQUIRES_CLASS_B);
  if (!XPC_ACTIVITY_REQUIRES_CLASS_C)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v7 = result;
  result = xpc_dictionary_get_BOOL(v1, XPC_ACTIVITY_REQUIRES_CLASS_C);
  if (!XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v8 = result;
  result = xpc_dictionary_get_BOOL(v1, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY);
  if (!XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY)
  {
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v9 = v2;
  if (v3)
  {
    v9 = v2 | 4;
  }

  if (v4)
  {
    v9 |= 2uLL;
  }

  if (v5)
  {
    v9 |= 8uLL;
  }

  if (v6)
  {
    v9 |= 0x10uLL;
  }

  if (v7)
  {
    v9 |= 0x20uLL;
  }

  if (v8)
  {
    v9 |= 0x40uLL;
  }

  if (result)
  {
    v10 = v9 | 0x80;
  }

  else
  {
    v10 = v9;
  }

  result = xpc_dictionary_get_BOOL(v1, XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY);
  if (result)
  {
    v11 = v10 | 0x100;
  }

  else
  {
    v11 = v10;
  }

  if (!XPC_ACTIVITY_DUET_ACTIVITY_SCHEDULER_DATA)
  {
    goto LABEL_57;
  }

  v12 = xpc_dictionary_get_dictionary(v1, XPC_ACTIVITY_DUET_ACTIVITY_SCHEDULER_DATA);
  if (v12)
  {
    v13 = v12;
    v14 = String.utf8CString.getter();
    string = xpc_dictionary_get_string(v13, (v14 + 32));

    swift_unknownObjectRelease();
    if (string)
    {
      v11 |= 0x2000uLL;
    }
  }

  result = xpc_dictionary_get_BOOL(v1, XPC_ACTIVITY_ALLOW_BATTERY);
  if (!XPC_ACTIVITY_MEMORY_INTENSIVE)
  {
    goto LABEL_58;
  }

  v16 = result;
  result = xpc_dictionary_get_BOOL(v1, XPC_ACTIVITY_MEMORY_INTENSIVE);
  if (!XPC_ACTIVITY_CPU_INTENSIVE)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v17 = result;
  result = xpc_dictionary_get_BOOL(v1, XPC_ACTIVITY_CPU_INTENSIVE);
  if (!XPC_ACTIVITY_DISK_INTENSIVE)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v18 = result;
  result = xpc_dictionary_get_BOOL(v1, XPC_ACTIVITY_DISK_INTENSIVE);
  if (!XPC_ACTIVITY_COMMUNICATES_WITH_PAIRED_DEVICE)
  {
LABEL_61:
    __break(1u);
    return result;
  }

  v19 = v11 | 0x200;
  if (!v16)
  {
    v19 = v11;
  }

  if (v17)
  {
    v19 |= 0x400uLL;
  }

  if (v18)
  {
    v19 |= 0x800uLL;
  }

  if (result)
  {
    v20 = v19 | 0x1000;
  }

  else
  {
    v20 = v19;
  }

  v21 = xpc_dictionary_get_BOOL(v1, XPC_ACTIVITY_COMMUNICATES_WITH_PAIRED_DEVICE);
  swift_unknownObjectRelease();
  if (v21)
  {
    return v20 | 0x4000;
  }

  else
  {
    return v20;
  }
}

uint64_t sub_10013DB90@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (xpc_dictionary_get_string(a1, XPC_ACTIVITY_PRIORITY))
  {
    v4 = String.init(cString:)();
    if (qword_1005A7F70 != -1)
    {
      v16 = v4;
      v17 = v5;
      swift_once();
      v4 = v16;
      v5 = v17;
    }

    if (v4 == qword_1005ABCE0 && v5 == *algn_1005ABCE8)
    {

      v8 = 0;
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v8 = ~v7 & 1;
    }

    v14 = xpc_dictionary_get_BOOL(a1, XPC_ACTIVITY_REPEATING);
    int64 = xpc_dictionary_get_int64(a1, XPC_ACTIVITY_DELAY);
    v10 = xpc_dictionary_get_int64(a1, XPC_ACTIVITY_GRACE_PERIOD);
    v11 = xpc_dictionary_get_int64(a1, XPC_ACTIVITY_INTERVAL);
    result = sub_10013D888(a1);
    v15 = 256;
    if (!v14)
    {
      v15 = 0;
    }

    v13 = v15 | v8;
  }

  else
  {
    swift_unknownObjectRelease();
    int64 = 0;
    v10 = 0;
    v11 = 0;
    result = 0;
    v13 = 2;
  }

  *a2 = v13;
  a2[1] = int64;
  a2[2] = v10;
  a2[3] = v11;
  a2[4] = result;
  return result;
}

unint64_t sub_10013DD14(unint64_t result)
{
  if (result >= 6)
  {
    _StringGuts.grow(_:)(38);

    v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v1);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

unint64_t sub_10013DDD8(unint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  return result;
}

unint64_t sub_10013DDE8()
{
  result = qword_1005ABEA8;
  if (!qword_1005ABEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ABEA8);
  }

  return result;
}

uint64_t sub_10013DE3C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x797469726F697270 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69746165706572 && a2 == 0xE900000000000067 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79616C6564 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7265506563617267 && a2 == 0xEB00000000646F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C61767265746E69 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_10013E040@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10004B564(&qword_1005ABEB0, &qword_1004C61F0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  sub_100011AEC(a1, a1[3]);
  sub_10013E2D4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100004984(a1);
  }

  v23 = 0;
  sub_10013E328();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v24;
  v22 = 1;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = 2;
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  v20 = 3;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v19 = 4;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v18 = 5;
  sub_10013E37C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v11 = v17;
  result = sub_100004984(a1);
  *a2 = v9;
  *(a2 + 1) = v10 & 1;
  v13 = v15;
  *(a2 + 8) = v16;
  *(a2 + 16) = v13;
  *(a2 + 24) = v14;
  *(a2 + 32) = v11;
  return result;
}

unint64_t sub_10013E2D4()
{
  result = qword_1005ABEB8;
  if (!qword_1005ABEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ABEB8);
  }

  return result;
}

unint64_t sub_10013E328()
{
  result = qword_1005ABEC0;
  if (!qword_1005ABEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ABEC0);
  }

  return result;
}

unint64_t sub_10013E37C()
{
  result = qword_1005ABEC8;
  if (!qword_1005ABEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ABEC8);
  }

  return result;
}

unint64_t sub_10013E3D0()
{
  result = qword_1005ABED8;
  if (!qword_1005ABED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ABED8);
  }

  return result;
}

unint64_t sub_10013E424()
{
  result = qword_1005ABEE0;
  if (!qword_1005ABEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ABEE0);
  }

  return result;
}

unint64_t sub_10013E4A4@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  swift_unknownObjectWeakAssign();
  *(v4 + 88) = 1;
  result = sub_10013B504(v3);
  *a1 = result;
  return result;
}

unint64_t sub_10013E4FC()
{
  result = qword_1005ABEF0;
  if (!qword_1005ABEF0)
  {
    type metadata accessor for XPCActivity_SPD();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ABEF0);
  }

  return result;
}

unint64_t sub_10013E584()
{
  result = qword_1005ABEF8;
  if (!qword_1005ABEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ABEF8);
  }

  return result;
}

unint64_t sub_10013E5DC()
{
  result = qword_1005ABF00;
  if (!qword_1005ABF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ABF00);
  }

  return result;
}

unint64_t sub_10013E634()
{
  result = qword_1005ABF08;
  if (!qword_1005ABF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ABF08);
  }

  return result;
}

unint64_t sub_10013E68C()
{
  result = qword_1005ABF10;
  if (!qword_1005ABF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ABF10);
  }

  return result;
}

unint64_t sub_10013E6E4()
{
  result = qword_1005ABF18;
  if (!qword_1005ABF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ABF18);
  }

  return result;
}

unint64_t sub_10013E73C()
{
  result = qword_1005ABF20;
  if (!qword_1005ABF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ABF20);
  }

  return result;
}

unint64_t sub_10013E794()
{
  result = qword_1005ABF28;
  if (!qword_1005ABF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ABF28);
  }

  return result;
}

unint64_t sub_10013E7EC()
{
  result = qword_1005ABF30;
  if (!qword_1005ABF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ABF30);
  }

  return result;
}

unint64_t sub_10013E840()
{
  result = qword_1005ABF38;
  if (!qword_1005ABF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ABF38);
  }

  return result;
}

unint64_t sub_10013E894()
{
  result = qword_1005ABF48;
  if (!qword_1005ABF48)
  {
    sub_10004B610(&qword_1005A9630, &qword_1004C5680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ABF48);
  }

  return result;
}

void *CurrentValueSubject.eraseToAnyCurrentValuePublisher()()
{
  type metadata accessor for AnyCurrentValuePublisher(0, *(*v0 + class metadata base offset for CurrentValueSubject), *(*v0 + class metadata base offset for CurrentValueSubject + 8), *(*v0 + class metadata base offset for CurrentValueSubject + 16));
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_allocObject();
  v1 = sub_10013EAD4(v0);

  swift_unownedRelease();
  return v1;
}

uint64_t AnyCurrentValuePublisher.value.getter()
{
  swift_unownedRetainStrong();
  CurrentValueSubject.value.getter();
}

uint64_t AnyCurrentValuePublisher.deinit()
{
  swift_unownedRelease();

  return v0;
}

uint64_t AnyCurrentValuePublisher.__deallocating_deinit()
{
  swift_unownedRelease();

  return swift_deallocClassInstance();
}

void *sub_10013EAD4(uint64_t a1)
{
  v2 = v1;
  *(v1 + 16) = a1;
  swift_unownedRetainStrong();
  swift_unownedRetain();
  type metadata accessor for CurrentValueSubject();
  swift_getWitnessTable();
  v3 = Publisher.eraseToAnyPublisher()();

  *(v2 + 24) = v3;
  return v2;
}

uint64_t DarwinNotificationHelper.__allocating_init(notificationName:rateLimit:)(void *a1, double a2)
{
  v4 = swift_allocObject();
  type metadata accessor for DarwinNotificationPoster();
  v5 = swift_allocObject();
  sub_10013F61C(a1, a2);
  *(v4 + 16) = 0;
  *(v4 + 24) = v5;
  return v4;
}

uint64_t DarwinNotificationHelper.__allocating_init(notificationHandlers:)(uint64_t a1)
{
  v2 = swift_allocObject();
  type metadata accessor for DarwinNotificationListener();
  v3 = swift_allocObject();
  sub_1001400CC(a1, 0);
  *(v2 + 16) = v3;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t DarwinNotificationHelper.description.getter(uint64_t a1)
{
  type metadata accessor for DarwinNotificationHelper();
  sub_100141D04(&qword_1005AC000, v1, type metadata accessor for DarwinNotificationHelper, &protocol conformance descriptor for DarwinNotificationHelper);
  v2._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 32;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  v4._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 62;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  return 60;
}

uint64_t sub_10013EE14(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DarwinNotificationHelper();
  v2._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 32;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  v4._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 62;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  return 60;
}

uint64_t DarwinNotificationHelper.init(notificationHandlers:)(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for DarwinNotificationListener();
  v4 = swift_allocObject();
  sub_1001400CC(a1, 0);
  *(v2 + 16) = v4;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t DarwinNotificationHelper.__allocating_init(subscribedToNames:)(uint64_t a1)
{
  v2 = swift_allocObject();
  type metadata accessor for DarwinNotificationListener();
  v3 = swift_allocObject();
  sub_100140F00(a1);
  *(v2 + 16) = v3;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t DarwinNotificationHelper.init(subscribedToNames:)(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for DarwinNotificationListener();
  v4 = swift_allocObject();
  sub_100140F00(a1);
  *(v2 + 16) = v4;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t DarwinNotificationHelper.init(notificationName:rateLimit:)(void *a1, double a2)
{
  v3 = v2;
  type metadata accessor for DarwinNotificationPoster();
  v6 = swift_allocObject();
  sub_10013F61C(a1, a2);
  *(v3 + 16) = 0;
  *(v3 + 24) = v6;
  return v3;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DarwinNotificationHelper.post(bypassRateLimit:)(Swift::Bool bypassRateLimit)
{
  if (*(v1 + 24))
  {
    if (bypassRateLimit)
    {

      sub_10013FCCC();
    }

    else
    {

      sub_10004B564(&qword_1005A9ED8, &qword_1004C6710);
      sub_10001DF0C(&qword_1005A9EE0, &qword_1005A9ED8, &qword_1004C6710, &protocol conformance descriptor for PassthroughSubject<A, B>);
      Subject<>.send()();
    }
  }

  else
  {
    sub_1000C9214();
    swift_allocError();
    *v2 = 0;
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DarwinNotificationHelper.setValue(value:)(Swift::UInt64 value)
{
  v2 = *(v1 + 24);
  if (v2)
  {
    v4 = *(v2 + 32);
    v5 = swift_allocObject();
    *(v5 + 16) = v2;
    *(v5 + 24) = value;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1001412C0;
    *(v6 + 24) = v5;
    v9[4] = sub_1001412C8;
    v9[5] = v6;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_10013EC94;
    v9[3] = &unk_100592010;
    v7 = _Block_copy(v9);
    swift_retain_n();

    dispatch_sync(v4, v7);
    _Block_release(v7);
    LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

    if ((v4 & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  sub_1000C9214();
  swift_allocError();
  *v8 = 0;
  swift_willThrow();
}

Swift::UInt64 __swiftcall DarwinNotificationHelper.currentValue(name:)(Swift::String name)
{
  object = name._object;
  if (*(v1 + 16))
  {
    __chkstk_darwin(name._countAndFlagsBits);

    OS_dispatch_queue.sync<A>(execute:)();

    return v10;
  }

  else
  {
    countAndFlagsBits = name._countAndFlagsBits;
    if (qword_1005A7F90 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000A6F0(v5, qword_1005DFC40);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_10000D01C(countAndFlagsBits, object, &v10);
      _os_log_impl(&_mh_execute_header, v6, v7, "DarwinNotificationHelper initialized for posting. Not registered for %s", v8, 0xCu);
      sub_100004984(v9);
    }

    return 0;
  }
}

uint64_t DarwinNotificationHelper.publisher(name:)(uint64_t a1)
{
  if (*(v1 + 16))
  {
    __chkstk_darwin(a1);

    sub_10004B564(&qword_1005AC008, &qword_1004C6718);
    OS_dispatch_queue.sync<A>(execute:)();

    return v4;
  }

  else
  {
    sub_1000C9214();
    swift_allocError();
    *v3 = 1;
    return swift_willThrow();
  }
}

uint64_t DarwinNotificationHelper.deinit()
{

  return v0;
}

uint64_t DarwinNotificationHelper.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10013F61C(void *a1, double a2)
{
  v32 = a1;
  v4 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v24 = *(v4 - 8);
  v25 = v4;
  __chkstk_darwin(v4);
  v23 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004B564(&qword_1005AC2D8, &qword_1004C6918);
  v27 = *(v6 - 8);
  v28 = v6;
  __chkstk_darwin(v6);
  v26 = &v22 - v7;
  v31 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v8 = *(v31 - 8);
  __chkstk_darwin(v31);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v11);
  v12 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v12 - 8);
  v33 = sub_10004B564(&qword_1005A9ED8, &qword_1004C6710);
  swift_allocObject();
  *(v2 + 24) = PassthroughSubject.init()();
  v29 = sub_10004B518();
  static DispatchQoS.unspecified.getter();
  v34 = _swiftEmptyArrayStorage;
  sub_100141D04(&qword_1005A8670, 255, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10004B564(&unk_1005AB400, &unk_1004C0BF0);
  sub_10001DF0C(&qword_1005A8680, &unk_1005AB400, &unk_1004C0BF0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v8 + 104))(v10, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v31);
  v13 = v30;
  v14 = v32;
  v15 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v13 + 40) = _swiftEmptyArrayStorage;
  *(v13 + 32) = v15;
  *(v13 + 16) = v14;
  *(v13 + 48) = a2 != 0.0;
  v34 = *(v13 + 24);
  if (a2 == 0.0)
  {
    swift_allocObject();
    swift_weakInit();
    sub_10001DF0C(&qword_1005AC2E0, &qword_1005A9ED8, &qword_1004C6710, &protocol conformance descriptor for PassthroughSubject<A, B>);
    v20 = v14;

    Publisher<>.sink(receiveValue:)();
  }

  else
  {
    v16 = v14;

    v17 = v23;
    static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
    v35 = *(v13 + 32);
    sub_10001DF0C(&qword_1005AC2E0, &qword_1005A9ED8, &qword_1004C6710, &protocol conformance descriptor for PassthroughSubject<A, B>);
    sub_100141D04(&qword_1005AC2B8, 255, sub_10004B518, &protocol conformance descriptor for OS_dispatch_queue);
    v18 = v26;
    Publisher.throttle<A>(for:scheduler:latest:)();
    (*(v24 + 8))(v17, v25);

    swift_allocObject();
    swift_weakInit();
    sub_10001DF0C(&qword_1005AC2E8, &qword_1005AC2D8, &qword_1004C6918, &protocol conformance descriptor for Publishers.Throttle<A, B>);
    v19 = v28;
    Publisher<>.sink(receiveValue:)();

    (*(v27 + 8))(v18, v19);
  }

  swift_beginAccess();
  sub_10004B564(&qword_1005AC2C8, &qword_1004C6910);
  sub_10001DF0C(&qword_1005AC2D0, &qword_1005AC2C8, &qword_1004C6910, &protocol conformance descriptor for [A]);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  return v13;
}

void sub_10013FCCC()
{
  v1 = v0;
  center = CFNotificationCenterGetDarwinNotifyCenter();
  if (center)
  {
    if (qword_1005A7F78 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000A6F0(v2, qword_1005DFC08);
    swift_retain_n();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v12 = v6;
      *v5 = 136446466;
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = sub_10000D01C(v7, v8, &v12);

      *(v5 + 4) = v9;
      *(v5 + 12) = 1024;
      v10 = *(v1 + 48);

      *(v5 + 14) = v10;

      _os_log_impl(&_mh_execute_header, v3, v4, "Posting %{public}s, rate-limiting: %{BOOL}d.", v5, 0x12u);
      sub_100004984(v6);
    }

    else
    {
    }

    CFNotificationCenterPostNotification(center, *(v1 + 16), 0, 0, 1u);
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t sub_10013FEE4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10013FCCC();
  }

  return result;
}

void sub_10013FF3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(a1 + 32);
  *v7 = v8;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12[12] = 1;
    sub_100142CC0(v10, v11, a2, 0x100000000);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10014007C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1001400CC(uint64_t a1, int a2)
{
  v3 = v2;
  v27 = a2;
  v26 = a1;
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v24 = *(v4 - 8);
  v25 = v4;
  __chkstk_darwin(v4);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v7);
  v8 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v8 - 8);
  *(v2 + 24) = _swiftEmptyDictionarySingleton;
  v9 = sub_10004B518();
  v23[0] = "er not available";
  v23[1] = v9;
  static DispatchQoS.unspecified.getter();
  v10 = _swiftEmptyArrayStorage;
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100141D04(&qword_1005A8670, 255, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10004B564(&unk_1005AB400, &unk_1004C0BF0);
  sub_10001DF0C(&qword_1005A8680, &unk_1005AB400, &unk_1004C0BF0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v24 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v25);
  v11 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v2 + 32) = v11;
  *(v2 + 40) = _swiftEmptyDictionarySingleton;
  *(v2 + 56) = _swiftEmptyArrayStorage;
  v12 = v26;
  *(v2 + 16) = v26;
  *(v2 + 48) = v27;
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = v12;
    v10 = sub_10022BC70(*(v12 + 16), 0);
    v15 = sub_10023E65C(aBlock, v10 + 4, v13, v14);
    v16 = aBlock[0];

    result = sub_10000E3F8(v16);
    if (v15 != v13)
    {
      goto LABEL_8;
    }

    v18 = *(v3 + 32);
  }

  else
  {
    v18 = v11;
  }

  v19 = swift_allocObject();
  *(v19 + 16) = v3;
  *(v19 + 24) = v10;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_100141E34;
  *(v20 + 24) = v19;
  aBlock[4] = sub_100141E30;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013EC94;
  aBlock[3] = &unk_100592208;
  v21 = _Block_copy(aBlock);

  dispatch_sync(v18, v21);
  _Block_release(v21);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return v3;
  }

  __break(1u);
LABEL_8:
  __break(1u);
  return result;
}

void sub_100140520(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10004B564(&qword_1005AC2A0, &qword_1004C6900);
  __chkstk_darwin(v4 - 8);
  v65 = &v57 - v5;
  v64 = sub_10004B564(&qword_1005AC2A8, &qword_1004C6908);
  v6 = *(v64 - 8);
  __chkstk_darwin(v64);
  v63 = &v57 - v7;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v2 + 32);
  *v11 = v12;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v62 = v12;
  v13 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if ((v13 & 1) == 0)
  {
    goto LABEL_31;
  }

  if (qword_1005A7F90 != -1)
  {
LABEL_32:
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v61 = sub_10000A6F0(v14, qword_1005DFC40);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Setup darwin callback handlers", v17, 2u);
  }

  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = 0;
    v60 = (v6 + 8);
    v59 = *(v2 + 48);
    v58 = v75;
    v21 = (a1 + 40);
    *&v18 = 136315138;
    v57 = v18;
    v67 = v2;
    v6 = v65;
    while (1)
    {
      v68 = v21;
      v69 = v19;
      v24 = *(v21 - 1);
      v25 = *v21;
      v26 = qword_1005A7F80;

      if (v26 != -1)
      {
        v27 = swift_once();
      }

      __chkstk_darwin(v27);
      v66 = v28;
      *(&v57 - 4) = v28;
      *(&v57 - 3) = v24;
      *(&v57 - 2) = v25;
      sub_10004B564(&qword_1005AC008, &qword_1004C6718);
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v70 = v24;
      v71 = v20;
      v29 = v62;
      v73 = v62;
      v30 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
      (*(*(v30 - 8) + 56))(v6, 1, 1, v30);
      sub_10004B518();
      sub_10001DF0C(&qword_1005AC2B0, &qword_1005AC008, &qword_1004C6718, &protocol conformance descriptor for AnyPublisher<A, B>);
      sub_100141D04(&qword_1005AC2B8, 255, sub_10004B518, &protocol conformance descriptor for OS_dispatch_queue);
      v31 = v29;
      v32 = v63;
      Publisher.receive<A>(on:options:)();
      sub_100141D4C(v6);

      swift_allocObject();
      v2 = v67;
      swift_weakInit();
      sub_10001DF0C(&qword_1005AC2C0, &qword_1005AC2A8, &qword_1004C6908, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
      v33 = v64;
      Publisher<>.sink(receiveValue:)();

      (*v60)(v32, v33);
      swift_beginAccess();
      sub_10004B564(&qword_1005AC2C8, &qword_1004C6910);
      sub_10001DF0C(&qword_1005AC2D0, &qword_1005AC2C8, &qword_1004C6910, &protocol conformance descriptor for [A]);
      AnyCancellable.store<A>(in:)();
      swift_endAccess();

      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        aBlock[0] = v37;
        *v36 = v57;
        v38 = v70;
        *(v36 + 4) = sub_10000D01C(v70, v25, aBlock);
        _os_log_impl(&_mh_execute_header, v34, v35, "Setting up darwin callback handler for %s", v36, 0xCu);
        sub_100004984(v37);
        v2 = v67;
      }

      else
      {

        v38 = v70;
      }

      a1 = String.utf8CString.getter();
      out_token = 0;
      v20 = v71;
      if ((v59 & 1) != 0 || (OSAllocatedUnfairLock.callAsFunction<A>(_:)(), (aBlock[0] & 1) == 0))
      {
        v39 = swift_allocObject();
        swift_weakInit();
        v40 = swift_allocObject();
        v40[2] = v39;
        v40[3] = v38;
        v40[4] = v25;
        v75[2] = sub_100141DBC;
        v75[3] = v40;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v75[0] = sub_100141B9C;
        v75[1] = &unk_100592190;
        v41 = _Block_copy(aBlock);

        notify_register_dispatch((a1 + 32), &out_token, v31, v41);
        _Block_release(v41);
      }

      else
      {
        notify_register_check((a1 + 32), &out_token);
      }

      v42 = out_token;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v73 = *(v2 + 24);
      v44 = v73;
      *(v2 + 24) = 0x8000000000000000;
      v45 = sub_1000110D8(v38, v25);
      v47 = v44[2];
      v48 = (v46 & 1) == 0;
      v49 = __OFADD__(v47, v48);
      v50 = v47 + v48;
      if (v49)
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v51 = v46;
      if (v44[3] < v50)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_23;
      }

      v56 = v45;
      sub_100204438();
      v45 = v56;
      v2 = v67;
      if (v51)
      {
LABEL_7:
        v22 = v45;

        v23 = v73;
        *(v73[7] + 4 * v22) = v42;
        goto LABEL_8;
      }

LABEL_24:
      v23 = v73;
      v73[(v45 >> 6) + 8] |= 1 << v45;
      v53 = (v23[6] + 16 * v45);
      *v53 = v38;
      v53[1] = v25;
      *(v23[7] + 4 * v45) = v42;
      v54 = v23[2];
      v49 = __OFADD__(v54, 1);
      v55 = v54 + 1;
      if (v49)
      {
        goto LABEL_30;
      }

      v23[2] = v55;
LABEL_8:
      *(v2 + 24) = v23;
      swift_endAccess();

      v21 = v68 + 2;
      v19 = v69 - 1;
      if (v69 == 1)
      {
        return;
      }
    }

    sub_10022F774(v50, isUniquelyReferenced_nonNull_native);
    v45 = sub_1000110D8(v38, v25);
    if ((v51 & 1) != (v52 & 1))
    {
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }

LABEL_23:
    if (v51)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }
}

uint64_t sub_100140F00(uint64_t a1)
{
  v2 = v1;
  v17 = a1;
  v16 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v16 - 8);
  __chkstk_darwin(v16);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v6);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  *(v1 + 24) = _swiftEmptyDictionarySingleton;
  v8 = sub_10004B518();
  v15[0] = "er not available";
  v15[1] = v8;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100141D04(&qword_1005A8670, 255, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10004B564(&unk_1005AB400, &unk_1004C0BF0);
  sub_10001DF0C(&qword_1005A8680, &unk_1005AB400, &unk_1004C0BF0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v16);
  *(v1 + 32) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v1 + 40) = _swiftEmptyDictionarySingleton;
  *(v1 + 56) = _swiftEmptyArrayStorage;
  *(v1 + 16) = sub_1002089E4(_swiftEmptyArrayStorage);
  *(v1 + 48) = 0;
  v9 = *(v1 + 32);
  v10 = swift_allocObject();
  v11 = v17;
  *(v10 + 16) = v2;
  *(v10 + 24) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_100141CBC;
  *(v12 + 24) = v10;
  aBlock[4] = sub_100141E30;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013EC94;
  aBlock[3] = &unk_100592118;
  v13 = _Block_copy(aBlock);

  dispatch_sync(v9, v13);
  _Block_release(v13);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if ((v9 & 1) == 0)
  {
    return v2;
  }

  __break(1u);
  return result;
}

void sub_1001412F0()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  while (v4)
  {
    v7 = v6;
LABEL_9:
    v8 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    notify_cancel(*(*(v1 + 56) + ((v7 << 8) | (4 * v8))));
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= v5)
    {

      return;
    }

    v4 = *(v1 + 64 + 8 * v7);
    ++v6;
    if (v4)
    {
      v6 = v7;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_100141408()
{
  sub_1001412F0();

  return swift_deallocClassInstance();
}

uint64_t sub_10014143C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v2 + 32);
  *v8 = v9;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v8, v5);
  if (v9)
  {
    swift_beginAccess();
    v12 = *(v2 + 24);
    if (*(v12 + 16) && (v13 = sub_1000110D8(a1, a2), (v14 & 1) != 0))
    {
      v15 = 0;
      v16 = *(*(v12 + 56) + 4 * v13);
    }

    else
    {
      v16 = 0;
      v15 = 1;
    }

    swift_endAccess();
    v17[8] = v15;
    return sub_100142E58(a1, a2, v16 | (v15 << 32));
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001415C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  swift_beginAccess();
  if (*(*(a1 + 40) + 16) && (sub_1000110D8(a2, a3), (v8 & 1) != 0))
  {
    swift_endAccess();
    sub_10004B564(&qword_1005AC288, &qword_1004C68E8);
    sub_10001DF0C(&qword_1005AC290, &qword_1005AC288, &qword_1004C68E8, &protocol conformance descriptor for PassthroughSubject<A, B>);
    result = Publisher.eraseToAnyPublisher()();
    v10 = result;
  }

  else
  {
    swift_endAccess();
    sub_10004B564(&qword_1005AC288, &qword_1004C68E8);
    swift_allocObject();
    v11 = PassthroughSubject.init()();
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(a1 + 40);
    *(a1 + 40) = 0x8000000000000000;
    sub_100453810(v11, a2, a3, isUniquelyReferenced_nonNull_native);

    *(a1 + 40) = v13;
    swift_endAccess();
    sub_10001DF0C(&qword_1005AC290, &qword_1005AC288, &qword_1004C68E8, &protocol conformance descriptor for PassthroughSubject<A, B>);
    v10 = Publisher.eraseToAnyPublisher()();
  }

  *a4 = v10;
  return result;
}

uint64_t sub_1001417C0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100141830(v2, v3);
  }

  return result;
}

uint64_t sub_100141830(void *a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = v3[4];
  *v9 = v10;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    if (qword_1005A7F90 == -1)
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
  v12 = type metadata accessor for Logger();
  sub_10000A6F0(v12, qword_1005DFC40);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_10000D01C(a1, a2, &v25);
    _os_log_impl(&_mh_execute_header, v13, v14, "Invoking callback, notification, %s", v15, 0xCu);
    sub_100004984(v16);
  }

  v17 = sub_10014143C(a1, a2);
  v18 = v3[2];
  if (*(v18 + 16))
  {
    v19 = sub_1000110D8(a1, a2);
    if (v20)
    {
      v21 = *(*(v18 + 56) + 16 * v19);
      v25 = a1;
      v26 = a2;
      v27 = v17;

      v21(&v25);
    }
  }

  swift_beginAccess();
  if (!*(v3[5] + 16))
  {
    return swift_endAccess();
  }

  sub_1000110D8(a1, a2);
  if ((v22 & 1) == 0)
  {
    return swift_endAccess();
  }

  swift_endAccess();
  v25 = a1;
  v26 = a2;
  v27 = v17;

  PassthroughSubject.send(_:)();
}

uint64_t sub_100141B28(uint64_t a1, uint64_t a2, void *a3, unint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100141830(a3, a4);
  }

  return result;
}

uint64_t sub_100141B9C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_100141BF0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10014143C(*(v1 + 24), *(v1 + 32));
  *a1 = result;
  return result;
}

unint64_t sub_100141C68()
{
  result = qword_1005AC280;
  if (!qword_1005AC280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AC280);
  }

  return result;
}

uint64_t sub_100141D04(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100141D4C(uint64_t a1)
{
  v2 = sub_10004B564(&qword_1005AC2A0, &qword_1004C6900);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100141DC8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t *DarwinNotificationManager.shared.unsafeMutableAddressor()
{
  if (qword_1005A7F80 != -1)
  {
    swift_once();
  }

  return &static DarwinNotificationManager.shared;
}

uint64_t sub_100141EC8()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005DFC08);
  sub_10000A6F0(v0, qword_1005DFC08);
  return Logger.init(subsystem:category:)();
}

uint64_t DarwinNotification.description.getter(uint64_t a1, void *a2)
{
  sub_100142FC8();
  v4._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 32;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  v6._countAndFlagsBits = a1;
  v6._object = a2;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 8250;
  v7._object = 0xE200000000000000;
  String.append(_:)(v7);
  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  return 91;
}

BOOL static DarwinNotification.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a4 && a2 == a5)
  {
    return a3 == a6;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v8)
  {
    return a3 == a6;
  }

  return result;
}

Swift::Int DarwinNotification.hashValue.getter(uint64_t a1, uint64_t a2, Swift::UInt64 a3)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(a3);
  return Hasher._finalize()();
}

Swift::Int sub_100142158()
{
  v1 = *(v0 + 16);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void sub_1001421BC(uint64_t a1)
{
  v2 = *(v1 + 16);
  String.hash(into:)();
  Hasher._combine(_:)(v2);
}

Swift::Int sub_1001421F4()
{
  v1 = *(v0 + 16);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

BOOL sub_100142260(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v3;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

void *sub_1001422BC()
{
  type metadata accessor for DarwinNotificationManager();
  v0 = swift_allocObject();
  result = sub_100142A58();
  static DarwinNotificationManager.shared = v0;
  return result;
}

uint64_t static DarwinNotificationManager.shared.getter()
{
  if (qword_1005A7F80 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100142354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  swift_beginAccess();
  if (!*(*(a1 + 32) + 16))
  {
    goto LABEL_5;
  }

  sub_1000110D8(a2, a3);
  if ((v8 & 1) == 0)
  {

LABEL_5:
    sub_10004B564(&qword_1005AC288, &qword_1004C68E8);
    swift_allocObject();
    v9 = PassthroughSubject.init()();
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(a1 + 32);
    *(a1 + 32) = 0x8000000000000000;
    sub_100453810(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *(a1 + 32) = v13;
    swift_endAccess();
    sub_10001DF0C(&qword_1005AC290, &qword_1005AC288, &qword_1004C68E8, &protocol conformance descriptor for PassthroughSubject<A, B>);
    goto LABEL_6;
  }

  sub_10004B564(&qword_1005AC288, &qword_1004C68E8);
  sub_10001DF0C(&qword_1005AC290, &qword_1005AC288, &qword_1004C68E8, &protocol conformance descriptor for PassthroughSubject<A, B>);
LABEL_6:
  v11 = Publisher.eraseToAnyPublisher()();

  *a4 = v11;
  return result;
}

Swift::Void __swiftcall DarwinNotificationManager.setUp()()
{
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  swift_weakInit();
  v4[4] = sub_10014301C;
  v4[5] = v2;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_10013B278;
  v4[3] = &unk_100592280;
  v3 = _Block_copy(v4);

  xpc_set_event_stream_handler("com.apple.notifyd.matching", v1, v3);
  _Block_release(v3);
}

uint64_t sub_100142638(void *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (xpc_dictionary_get_string(a1, _xpc_event_key_name))
    {
      v4 = String.init(cString:)();
      v6 = v5;
      if (qword_1005A7F78 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_10000A6F0(v7, qword_1005DFC08);

      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v18 = v11;
        *v10 = 136446210;

        v12 = DarwinNotification.description.getter(v4, v6);
        v14 = v13;

        v15 = sub_10000D01C(v12, v14, &v18);

        *(v10 + 4) = v15;
        _os_log_impl(&_mh_execute_header, v8, v9, "On XPC event stream, com.apple.notifyd.matching, notification: %{public}s)", v10, 0xCu);
        sub_100004984(v11);
      }

      __chkstk_darwin(v16);
      sub_10004B564(&qword_1005AC3F0, &unk_1004C6A30);
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      if (v18)
      {
        v17 = type metadata accessor for Transaction();
        __chkstk_darwin(v17);
        static Transaction.named<A>(_:with:)();
      }
    }
  }

  return result;
}

void sub_100142930(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  swift_beginAccess();
  v8 = *(a1 + 32);
  if (*(v8 + 16))
  {

    v9 = sub_1000110D8(a2, a3);
    if (v10)
    {
      v11 = *(*(v8 + 56) + 8 * v9);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  *a4 = v11;
}

uint64_t DarwinNotificationManager.deinit()
{

  return v0;
}

uint64_t DarwinNotificationManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_100142A58()
{
  v1 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v1);
  v2 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[0] = sub_10004B518();
  (*(v4 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v3);
  static DispatchQoS.unspecified.getter();
  v9[1] = _swiftEmptyArrayStorage;
  sub_10014311C();
  sub_10004B564(&unk_1005AB400, &unk_1004C0BF0);
  sub_10001DF0C(&qword_1005A8680, &unk_1005AB400, &unk_1004C0BF0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v0[2] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  sub_10004B564(&qword_1005A8688, &qword_1004C5FA0);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v0[3] = v7;
  v0[4] = _swiftEmptyDictionarySingleton;
  return v0;
}

void sub_100142CC0(uint64_t a1, uint64_t a2, uint64_t state64, uint64_t token)
{
  if ((token & 0x100000000) != 0)
  {
    out_token = 0;
    v5 = String.utf8CString.getter();
    notify_register_check((v5 + 32), &out_token);

    if (out_token == -1)
    {
      if (qword_1005A7F78 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_10000A6F0(v6, qword_1005DFC08);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, v8, "Failed notify_register_check.", v9, 2u);
      }
    }

    else
    {
      notify_set_state(out_token, state64);
      notify_cancel(out_token);
    }
  }

  else
  {

    notify_set_state(token, state64);
  }
}

uint64_t sub_100142E58(uint64_t a1, uint64_t a2, uint64_t token)
{
  if ((token & 0x100000000) == 0)
  {
    state64 = 0;
    notify_get_state(token, &state64);
    return state64;
  }

  out_token = 0;
  v3 = String.utf8CString.getter();
  notify_register_check((v3 + 32), &out_token);

  if (out_token != -1)
  {
    state64 = 0;
    notify_get_state(out_token, &state64);
    notify_cancel(out_token);
    return state64;
  }

  if (qword_1005A7F78 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005DFC08);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed notify_register_check.", v8, 2u);
  }

  return 0;
}

unint64_t sub_100142FC8()
{
  result = qword_1005AC2F0;
  if (!qword_1005AC2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AC2F0);
  }

  return result;
}

unint64_t sub_100143028()
{
  result = qword_1005AC2F8;
  if (!qword_1005AC2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AC2F8);
  }

  return result;
}

unint64_t sub_10014311C()
{
  result = qword_1005A8670;
  if (!qword_1005A8670)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A8670);
  }

  return result;
}

uint64_t sub_100143174(uint64_t a1)
{
  URLComponents.init()();
  URLComponents.scheme.setter();
  Account.appHostName.getter();
  URLComponents.host.setter();
  v1._countAndFlagsBits = Account.dsid.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 47;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = static SystemInfo.uniqueDeviceID.getter();
  String.append(_:)(v3);

  return URLComponents.path.setter();
}

uint64_t type metadata accessor for AckAlertEndpoint(uint64_t a1)
{
  result = qword_1005AC450;
  if (!qword_1005AC450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001432D4(uint64_t a1)
{
  result = type metadata accessor for URLComponents();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100143340@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URLComponents();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1001433A8(void *a1)
{
  v2 = v1;
  v4 = sub_10004B564(&qword_1005AC550, &qword_1004C6CB0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - v6;
  sub_100011AEC(a1, a1[3]);
  sub_100145204();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8 = v2[7];
  v9 = v2[5];
  v48 = v2[6];
  v49 = v8;
  v10 = v2[7];
  v11 = v2[9];
  v50 = v2[8];
  v51 = v11;
  v12 = v2[3];
  v13 = v2[1];
  v44 = v2[2];
  v45 = v12;
  v14 = v2[3];
  v15 = v2[5];
  v46 = v2[4];
  v47 = v15;
  v16 = v2[1];
  v43[0] = *v2;
  v43[1] = v16;
  v39 = v48;
  v40 = v10;
  v17 = v2[9];
  v41 = v50;
  v42 = v17;
  v35 = v44;
  v36 = v14;
  v37 = v46;
  v38 = v9;
  v33 = v43[0];
  v34 = v13;
  v32 = 0;
  sub_100005F04(v43, &v22, &qword_1005A9328, &unk_1004C7F20);
  sub_100145258();
  v18 = v52;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v18)
  {
    v28 = v39;
    v29 = v40;
    v30 = v41;
    v31 = v42;
    v24 = v35;
    v25 = v36;
    v26 = v37;
    v27 = v38;
    v22 = v33;
    v23 = v34;
    sub_100002CE0(&v22, &qword_1005A9328, &unk_1004C7F20);
  }

  else
  {
    v28 = v39;
    v29 = v40;
    v30 = v41;
    v31 = v42;
    v24 = v35;
    v25 = v36;
    v26 = v37;
    v27 = v38;
    v22 = v33;
    v23 = v34;
    sub_100002CE0(&v22, &qword_1005A9328, &unk_1004C7F20);
    type metadata accessor for AckMeAlertRequestContent(0);
    v21 = 1;
    type metadata accessor for ClientContext(0);
    sub_1000090E0(&qword_1005AC568, type metadata accessor for ClientContext, &unk_1004C9A18);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v21 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1001436B4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = type metadata accessor for ClientContext(0);
  __chkstk_darwin(v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004B564(&qword_1005AC570, &qword_1004C6CB8);
  v27 = *(v6 - 8);
  v28 = v6;
  __chkstk_darwin(v6);
  v8 = &v25 - v7;
  v9 = type metadata accessor for AckMeAlertRequestContent(0);
  __chkstk_darwin(v9);
  v11 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a1[3];
  v30 = a1;
  sub_100011AEC(a1, v12);
  sub_100145204();
  v13 = v29;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v13)
  {
    return sub_100004984(v30);
  }

  v29 = v3;
  v42 = 0;
  sub_1001452AC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v14 = v39;
  v11[6] = v38;
  v11[7] = v14;
  v15 = v41;
  v11[8] = v40;
  v11[9] = v15;
  v16 = v35;
  v11[2] = v34;
  v11[3] = v16;
  v17 = v37;
  v11[4] = v36;
  v11[5] = v17;
  v18 = v33;
  *v11 = v32;
  v11[1] = v18;
  v31 = 1;
  sub_1000090E0(&qword_1005AC580, type metadata accessor for ClientContext, &unk_1004C9A40);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_100144E70(v5, v11 + *(v9 + 20));
  v31 = 2;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v29 = v20;
  v21 = v19;
  (*(v27 + 8))(v8, v28);
  v22 = (v11 + *(v9 + 24));
  v23 = v29;
  *v22 = v21;
  v22[1] = v23;
  sub_100145300(v11, v26, type metadata accessor for AckMeAlertRequestContent);
  sub_100004984(v30);
  return sub_100144ED4(v11, type metadata accessor for AckMeAlertRequestContent);
}

uint64_t sub_100143AE0()
{
  v1 = 0x6F43746E65696C63;
  if (*v0 != 1)
  {
    v1 = 0x64497472656C61;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F43726576726573;
  }
}

uint64_t sub_100143B44@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100143C5C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100143B6C(uint64_t a1)
{
  v2 = sub_100145204();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100143BA8(uint64_t a1)
{
  v2 = sub_100145204();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100143C20(uint64_t a1)
{
  v2 = sub_100145368();

  return RequestContentRepresentable.description.getter(a1, v2);
}

uint64_t sub_100143C5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F43726576726573 && a2 == 0xED0000747865746ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64497472656C61 && a2 == 0xE700000000000000)
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

uint64_t sub_100143D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[184] = a3;
  v3[183] = a2;
  v3[182] = a1;
  v4 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  v3[185] = v4;
  v3[186] = *(v4 - 8);
  v3[187] = swift_task_alloc();
  v3[188] = type metadata accessor for AckMeAlertRequestContent(0);
  v3[189] = swift_task_alloc();
  v5 = type metadata accessor for Account();
  v3[190] = v5;
  v3[191] = *(v5 - 8);
  v3[192] = swift_task_alloc();
  sub_10004B564(&qword_1005AC488, &unk_1004C8430);
  v3[193] = swift_task_alloc();
  v3[194] = swift_task_alloc();
  sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
  v3[195] = swift_task_alloc();
  v3[196] = swift_task_alloc();
  type metadata accessor for ClientContext(0);
  v3[197] = swift_task_alloc();
  v3[198] = swift_task_alloc();

  return _swift_task_switch(sub_100143F98, 0, 0);
}

uint64_t sub_100143F98()
{
  v1 = v0[196];
  v2 = v0[195];
  v3 = v0[194];
  v4 = v0[193];
  v5 = v0[192];
  v6 = v0[191];
  v7 = v0[190];
  v8 = v0[182];
  v0[199] = sub_10014ABCC();
  v9 = type metadata accessor for Handle();
  (*(*(v9 - 8) + 56))(v1, 1, 1, v9);
  v10 = type metadata accessor for RequestOrigin();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  (*(v6 + 16))(v5, v8, v7);
  sub_100005F04(v3, v4, &qword_1005AC488, &unk_1004C8430);
  sub_100005F04(v1, v2, &qword_1005B3360, &unk_1004C6AA0);
  v11 = swift_task_alloc();
  v0[200] = v11;
  *v11 = v0;
  v11[1] = sub_100144154;
  v12 = v0[198];
  v13 = v0[195];
  v14 = v0[193];
  v15 = v0[192];

  return sub_1001667E8(v12, v15, v14, v13, _swiftEmptyArrayStorage);
}

uint64_t sub_100144154()
{
  v1 = *v0;
  v2 = *(*v0 + 1584);
  v3 = *(*v0 + 1576);
  v4 = *(*v0 + 1568);
  v5 = *(*v0 + 1552);
  v8 = *v0;

  sub_100002CE0(v5, &qword_1005AC488, &unk_1004C8430);
  sub_100002CE0(v4, &qword_1005B3360, &unk_1004C6AA0);
  sub_100145300(v2, v3, type metadata accessor for ClientContext);
  v6 = swift_task_alloc();
  *(v1 + 1608) = v6;
  *v6 = v8;
  v6[1] = sub_100144330;

  return daemon.getter();
}

uint64_t sub_100144330(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 1616) = a1;

  v3 = swift_task_alloc();
  *(v2 + 1624) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DataManager(0);
  v6 = sub_1000090E0(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1000090E0(&qword_1005A90D0, type metadata accessor for DataManager, &unk_1004D1410);
  *v3 = v9;
  v3[1] = sub_10014450C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10014450C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[204] = a1;
  v3[205] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1001448E8, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[206] = v5;
    *v5 = v4;
    v5[1] = sub_10014469C;

    return sub_100245BB8((v3 + 62));
  }
}

uint64_t sub_10014469C()
{
  v1 = *(*v0 + 1632);

  return _swift_task_switch(sub_1001447AC, v1, 0);
}

uint64_t sub_1001447AC()
{
  memcpy(v0 + 1, v0 + 31, 0x1E0uLL);
  if (sub_100033B90((v0 + 1)) == 1)
  {
    sub_10003170C(v0 + 61);
  }

  else
  {
    v1 = v0[14];
    v0[77] = v0[13];
    v0[78] = v1;
    v2 = v0[16];
    v0[79] = v0[15];
    v0[80] = v2;
    v3 = v0[10];
    v0[73] = v0[9];
    v0[74] = v3;
    v4 = v0[12];
    v0[75] = v0[11];
    v0[76] = v4;
    v5 = v0[8];
    v0[71] = v0[7];
    v0[72] = v5;
    sub_100005F04((v0 + 71), (v0 + 81), &qword_1005A9328, &unk_1004C7F20);
    sub_100002CE0((v0 + 31), &qword_1005A90D8, &unk_1004C6AB0);
    v6 = v0[78];
    v0[67] = v0[77];
    v0[68] = v6;
    v7 = v0[80];
    v0[69] = v0[79];
    v0[70] = v7;
    v8 = v0[74];
    v0[63] = v0[73];
    v0[64] = v8;
    v9 = v0[76];
    v0[65] = v0[75];
    v0[66] = v9;
    v10 = v0[72];
    v0[61] = v0[71];
    v0[62] = v10;
  }

  return _swift_task_switch(sub_100144A44, 0, 0);
}

uint64_t sub_1001448E8()
{
  v1 = v0[198];
  v2 = v0[197];
  v3 = v0[191];
  v4 = v0[190];
  v5 = v0[182];

  sub_100144ED4(v2, type metadata accessor for ClientContext);
  (*(v3 + 8))(v5, v4);
  sub_100144ED4(v1, type metadata accessor for ClientContext);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100144A44()
{
  v1 = *(v0 + 1640);
  v2 = *(v0 + 1576);
  v3 = *(v0 + 1512);
  v4 = *(v0 + 1504);
  v5 = *(v0 + 1496);
  v6 = *(v0 + 1488);
  v7 = *(v0 + 1480);
  v8 = *(v0 + 1472);
  v9 = *(v0 + 1464);

  v10 = *(v0 + 992);
  *v3 = *(v0 + 976);
  v3[1] = v10;
  v11 = *(v0 + 1008);
  v12 = *(v0 + 1024);
  v13 = *(v0 + 1056);
  v3[4] = *(v0 + 1040);
  v3[5] = v13;
  v3[2] = v11;
  v3[3] = v12;
  v14 = *(v0 + 1072);
  v15 = *(v0 + 1088);
  v16 = *(v0 + 1120);
  v3[8] = *(v0 + 1104);
  v3[9] = v16;
  v3[6] = v14;
  v3[7] = v15;
  sub_100144E70(v2, v3 + *(v4 + 20));
  v17 = (v3 + *(v4 + 24));
  *v17 = v9;
  v17[1] = v8;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  *v5 = sub_10019E890;
  v5[1] = 0;
  (*(v6 + 104))(v5, enum case for JSONEncoder.DateEncodingStrategy.custom(_:), v7);
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  sub_1000090E0(&qword_1005AC490, type metadata accessor for AckMeAlertRequestContent, &unk_1004C6C54);
  v18 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v20 = *(v0 + 1584);
  if (v1)
  {
    v21 = *(v0 + 1528);
    v22 = *(v0 + 1520);
    v23 = *(v0 + 1512);
    v24 = *(v0 + 1456);

    (*(v21 + 8))(v24, v22);
    sub_100144ED4(v23, type metadata accessor for AckMeAlertRequestContent);
    sub_100144ED4(v20, type metadata accessor for ClientContext);

    v25 = *(v0 + 8);

    return v25();
  }

  else
  {
    v27 = v18;
    v28 = v19;
    v29 = *(v0 + 1528);
    v30 = *(v0 + 1520);
    v31 = *(v0 + 1512);
    v32 = *(v0 + 1456);

    (*(v29 + 8))(v32, v30);
    sub_100144ED4(v31, type metadata accessor for AckMeAlertRequestContent);
    sub_100144ED4(v20, type metadata accessor for ClientContext);

    sub_10002CF44(v27, v28);

    sub_10001A794(v27, v28);

    v33 = *(v0 + 8);
    v34 = *(v0 + 1592);

    return v33(v34, v27, v28);
  }
}

uint64_t type metadata accessor for AckMeAlertRequestContent(uint64_t a1)
{
  result = qword_1005AC4F0;
  if (!qword_1005AC4F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100144E70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100144ED4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100144F5C(uint64_t a1)
{
  sub_100144FE8();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ClientContext(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100144FE8()
{
  if (!qword_1005AC500)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1005AC500);
    }
  }
}

uint64_t sub_100145038(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100145080(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1001450D4()
{
  result = qword_1005AC538;
  if (!qword_1005AC538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AC538);
  }

  return result;
}

uint64_t sub_100145128(uint64_t a1)
{
  *(a1 + 8) = sub_1000090E0(&qword_1005AC540, type metadata accessor for AckMeAlertRequestContent, &unk_1004C6C10);
  result = sub_1000090E0(&qword_1005AC490, type metadata accessor for AckMeAlertRequestContent, &unk_1004C6C54);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1001451B0()
{
  result = qword_1005AC548;
  if (!qword_1005AC548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AC548);
  }

  return result;
}

unint64_t sub_100145204()
{
  result = qword_1005AC558;
  if (!qword_1005AC558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AC558);
  }

  return result;
}

unint64_t sub_100145258()
{
  result = qword_1005AC560;
  if (!qword_1005AC560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AC560);
  }

  return result;
}

unint64_t sub_1001452AC()
{
  result = qword_1005AC578;
  if (!qword_1005AC578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AC578);
  }

  return result;
}

uint64_t sub_100145300(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100145368()
{
  result = qword_1005AC588;
  if (!qword_1005AC588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AC588);
  }

  return result;
}

unint64_t sub_1001453D0()
{
  result = qword_1005AC590;
  if (!qword_1005AC590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AC590);
  }

  return result;
}

unint64_t sub_100145428()
{
  result = qword_1005AC598;
  if (!qword_1005AC598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AC598);
  }

  return result;
}

unint64_t sub_100145480()
{
  result = qword_1005AC5A0;
  if (!qword_1005AC5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AC5A0);
  }

  return result;
}

uint64_t type metadata accessor for UpdateFenceEndpoint(uint64_t a1)
{
  result = qword_1005AC600;
  if (!qword_1005AC600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100145548(__int128 *a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 40) == 255)
  {
    sub_100002CE0(a1, &qword_1005AC648, &unk_1004C6EE8);
    sub_1001FEC88(a2, a3, &v9);

    sub_100002CE0(&v9, &qword_1005AC648, &unk_1004C6EE8);
  }

  else
  {
    v6 = a1[1];
    v9 = *a1;
    v10[0] = v6;
    *(v10 + 9) = *(a1 + 25);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_1004521C0(&v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }
}

void sub_100145624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    sub_100452450(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v14;
  }

  else
  {
    v9 = sub_1000110D8(a2, a3);
    v11 = v10;

    if (v11)
    {
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v4;
      v15 = *v4;
      if (!v12)
      {
        sub_100202888();
        v13 = v15;
      }

      sub_1001FFBFC(v9, v13);
      *v4 = v13;
    }
  }
}

void sub_10014571C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v4;
    sub_1004525D4(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v16;
  }

  else
  {
    v11 = sub_1000110D8(a3, a4);
    v13 = v12;

    if (v13)
    {
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v5;
      v17 = *v5;
      if (!v14)
      {
        sub_100202A1C();
        v15 = v17;
      }

      sub_1001FFDAC(v11, v15);
      *v5 = v15;
    }
  }
}

uint64_t sub_100145824(uint64_t a1, uint64_t a2)
{
  v5 = sub_10004B564(&qword_1005AC640, &qword_1004C6EE0);
  __chkstk_darwin(v5 - 8);
  v7 = &v17 - v6;
  v8 = type metadata accessor for Location();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_100002CE0(a1, &qword_1005AC640, &qword_1004C6EE0);
    sub_1001FED6C(a2, v12);
    v13 = type metadata accessor for Handle();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_100002CE0(v7, &qword_1005AC640, &qword_1004C6EE0);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_100452B70(v11, a2, isUniquelyReferenced_nonNull_native);
    v16 = type metadata accessor for Handle();
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_100145A50(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = sub_10004B564(&qword_1005AAC58, &qword_1004C46E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_10004B564(&qword_1005AAC60, &qword_1004C46E8);
  __chkstk_darwin(v10);
  v12 = &v16 - v11;
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_100002CE0(a1, &qword_1005AAC58, &qword_1004C46E0);
    sub_1001FEF48(a2, a3, v9);
    sub_1000049D0(a2, a3);
    return sub_100002CE0(v9, &qword_1005AAC58, &qword_1004C46E0);
  }

  else
  {
    sub_100149968(a1, v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_100453364(v12, a2, a3, isUniquelyReferenced_nonNull_native);
    result = sub_1000049D0(a2, a3);
    *v3 = v17;
  }

  return result;
}

void sub_100145C20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10004B564(&qword_1005A9EC8, &unk_1004C3420);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  v10 = type metadata accessor for SecureLocationsSubscription(0);
  __chkstk_darwin(v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_100002CE0(a1, &qword_1005A9EC8, &unk_1004C3420);
    sub_1001FF0F8(a2, a3, v9);

    sub_100002CE0(v9, &qword_1005A9EC8, &unk_1004C3420);
  }

  else
  {
    sub_100149900(a1, v12, type metadata accessor for SecureLocationsSubscription);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    sub_1004534D8(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v16;
  }
}

uint64_t sub_100145DF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_100453644(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = type metadata accessor for Destination();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_1001FDA80(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_100204410();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = type metadata accessor for Destination();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_100200814(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = type metadata accessor for Destination();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

void sub_100145FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10004B564(&qword_1005AE720, &qword_1004CA2F0);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  v10 = type metadata accessor for FenceRecord(0);
  __chkstk_darwin(v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_100002CE0(a1, &qword_1005AE720, &qword_1004CA2F0);
    sub_1001FF314(a2, a3, v9);

    sub_100002CE0(v9, &qword_1005AE720, &qword_1004CA2F0);
  }

  else
  {
    sub_100149900(a1, v12, type metadata accessor for FenceRecord);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    sub_100453B5C(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v16;
  }
}

uint64_t sub_100146188(uint64_t a1, uint64_t a2)
{
  v5 = sub_10004B564(&qword_1005AC670, &qword_1004C6F18);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_10004B564(&qword_1005AC678, &qword_1004C6F20);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_100002CE0(a1, &qword_1005AC670, &qword_1004C6F18);
    sub_1001FF504(a2, v7);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_100002CE0(v7, &qword_1005AC670, &qword_1004C6F18);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_100454044(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = type metadata accessor for UUID();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_1001463BC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_100010BD4(a1, &v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_100454254(&v9, a2, isUniquelyReferenced_nonNull_native);
    v5 = type metadata accessor for UUID();
    result = (*(*(v5 - 8) + 8))(a2, v5);
    *v2 = v8;
  }

  else
  {
    sub_1001FF528(a2, &v9);
    v7 = type metadata accessor for UUID();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    if (v10)
    {
      return sub_100004984(&v9);
    }
  }

  return result;
}

uint64_t sub_1001464BC(uint64_t a1, uint64_t a2)
{
  v5 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_100002CE0(a1, &unk_1005AE5B0, &qword_1004C32F0);
    sub_1001FF60C(a2, v7);
    v12 = type metadata accessor for ClientID();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_100002CE0(v7, &unk_1005AE5B0, &qword_1004C32F0);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_100454624(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = type metadata accessor for ClientID();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_1001466E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_100454A28(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = type metadata accessor for Handle();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_1001FD93C(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_100205330();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = type metadata accessor for Handle();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_1002016B4(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = type metadata accessor for Handle();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_1001468A8(uint64_t a1, uint64_t a2)
{
  v5 = sub_10004B564(&qword_1005AC680, &qword_1004C6F28);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_10004B564(&qword_1005AC688, &unk_1004C6F30);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_100002CE0(a1, &qword_1005AC680, &qword_1004C6F28);
    sub_1001FF7E4(a2, v7);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_100002CE0(v7, &qword_1005AC680, &qword_1004C6F28);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_100454E24(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = type metadata accessor for UUID();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_100146ADC(uint64_t a1, uint64_t a2)
{
  v5 = sub_10004B564(&qword_1005AC660, &unk_1004DD170);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_10004B564(&qword_1005AC668, &qword_1004C6F10);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_100002CE0(a1, &qword_1005AC660, &unk_1004DD170);
    sub_1001FF9E4(a2, v7);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_100002CE0(v7, &qword_1005AC660, &unk_1004DD170);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_100455034(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = type metadata accessor for UUID();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_100146D10(uint64_t a1, uint64_t a2)
{
  v5 = sub_10004B564(&qword_1005AC650, &qword_1004C6EF8);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_10004B564(&qword_1005AC658, &unk_1004C6F00);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_100002CE0(a1, &qword_1005AC650, &qword_1004C6EF8);
    sub_1001FFA08(a2, v7);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_100002CE0(v7, &qword_1005AC650, &qword_1004C6EF8);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_100455244(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = type metadata accessor for UUID();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

void sub_100146F44()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1004525D4(1702195828, 0xE400000000000000, 0xD00000000000001BLL, 0x80000001004E2970, isUniquelyReferenced_nonNull_native);
  v1 = [objc_opt_self() currentDevice];
  if (!v1)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = v1;
  v3 = [v1 serverFriendlyDescription];

  if (!v3)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = swift_isUniquelyReferenced_nonNull_native();
  sub_1004525D4(v4, v6, 0xD000000000000011, 0x80000001004E2990, v7);
  v8 = sub_10019E938();
  v10 = v9;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_1004525D4(v8, v10, 0x6567412D72657355, 0xEA0000000000746ELL, v11);
  if (static SystemInfo.isInternalBuild.getter())
  {
    v12 = [objc_opt_self() standardUserDefaults];
    v13 = String._bridgeToObjectiveC()();
    v14 = [v12 BOOLForKey:v13];

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      sub_1004525D4(1702195828, 0xE400000000000000, 0xD000000000000018, 0x80000001004DDD20, v15);
    }
  }
}

uint64_t sub_10014715C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v147 = a3;
  v7 = type metadata accessor for Fence.MonitorRegion.Source();
  v140 = *(v7 - 8);
  v141 = v7;
  v8 = __chkstk_darwin(v7);
  v138 = &v128 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v139 = &v128 - v10;
  v11 = type metadata accessor for Fence.MonitorRegion();
  v143 = *(v11 - 8);
  v144 = v11;
  v12 = __chkstk_darwin(v11);
  v142 = &v128 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v137 = &v128 - v14;
  v136 = type metadata accessor for PlaceMark();
  v135 = *(v136 - 8);
  __chkstk_darwin(v136);
  v134 = &v128 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10004B564(&qword_1005A96E0, &qword_1004C2A80);
  __chkstk_darwin(v16 - 8);
  v146 = (&v128 - v17);
  v145 = type metadata accessor for Fence.AcceptanceStatus();
  v18 = *(v145 - 8);
  v19 = __chkstk_darwin(v145);
  v21 = &v128 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v128 - v22;
  v24 = type metadata accessor for Fence.Variant();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v128 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = a1;
  sub_1001497E4(a1, a4, type metadata accessor for ClientContext);
  v28 = a2;
  v29 = (Fence.shouldDeleteFence.getter() & 1) == 0;
  updated = type metadata accessor for UpdateFenceRequestContent(0);
  *(a4 + updated[10]) = v29;
  v149 = v28;
  Fence.variant.getter();
  v31 = (*(v25 + 88))(v27, v24);
  if (v31 != enum case for Fence.Variant.oneTime(_:) && v31 != enum case for Fence.Variant.recurring(_:) && v31 != enum case for Fence.Variant.scheduled(_:))
  {
    goto LABEL_33;
  }

  v32 = v31 == enum case for Fence.Variant.oneTime(_:);
  (*(v25 + 8))(v27, v24);
  *(a4 + updated[15]) = v32;
  Fence.acceptanceStatus.getter();
  v33 = v145;
  (*(v18 + 16))(v21, v23, v145);
  v34 = (*(v18 + 88))(v21, v33);
  if (v34 == enum case for Fence.AcceptanceStatus.pendingHidden(_:))
  {
    v35 = 0xE600000000000000;
    v36 = 0x6E6564646948;
  }

  else if (v34 == enum case for Fence.AcceptanceStatus.pending(_:))
  {
    v35 = 0xE700000000000000;
    v36 = 0x676E69646E6550;
  }

  else
  {
    if (v34 != enum case for Fence.AcceptanceStatus.accepted(_:))
    {
      goto LABEL_33;
    }

    v35 = 0xE800000000000000;
    v36 = 0x6465747065636341;
  }

  (*(v18 + 8))(v23, v33);
  v37 = (a4 + updated[24]);
  *v37 = v36;
  v37[1] = v35;
  v38 = v146;
  Fence.ckRecordIdentifier.getter();
  v39 = type metadata accessor for UUID();
  v40 = *(v39 - 8);
  if ((*(v40 + 48))(v38, 1, v39) == 1)
  {
    sub_100002CE0(v38, &qword_1005A96E0, &qword_1004C2A80);
    v41 = 0;
    v42 = 0;
  }

  else
  {
    v41 = UUID.uuidString.getter();
    v42 = v43;
    (*(v40 + 8))(v38, v39);
  }

  v44 = (a4 + updated[22]);
  *v44 = v41;
  v44[1] = v42;
  v45 = Fence.ckRecordZoneOwnerName.getter();
  v46 = (a4 + updated[23]);
  *v46 = v45;
  v46[1] = v47;
  v48 = a4;
  v49 = v147;
  v50 = *v147;
  v151 = v147[1];
  v51 = v151;
  v152 = v50;
  *(v48 + updated[25]) = v50;
  *(v48 + updated[9]) = v51;
  v52 = v49[5];
  v53 = (v48 + updated[19]);
  *v53 = v49[4];
  v53[1] = v52;
  v54 = v49[9];
  *(v48 + updated[6]) = v49[8];
  *(v48 + updated[7]) = v54;
  *(v48 + updated[8]) = v49[10];
  v55 = v49[7];
  v146 = v49[6];
  sub_100005F04(&v152, v150, &qword_1005A96A8, &qword_1004C3320);
  sub_100005F04(&v151, v150, &qword_1005A96A8, &qword_1004C3320);

  v56 = v49;
  v57 = v48;
  sub_1001498AC(v56);
  v58 = (v48 + updated[20]);
  *v58 = v146;
  v58[1] = v55;
  v59 = v149;
  v60 = sub_100249754();
  v61 = v60;
  if ((v60 & 1) == 0)
  {
    LODWORD(v147) = v60;
    v74 = Fence.label.getter();
    v75 = (v48 + updated[11]);
    *v75 = v74;
    v75[1] = v76;
    v77 = v134;
    Fence.placemark.getter();
    v78 = PlaceMark.streetAddress.getter();
    v80 = v79;
    v81 = *(v135 + 8);
    v82 = v136;
    v81(v77, v136);
    v146 = v81;
    v83 = (v57 + updated[5]);
    *v83 = v78;
    v83[1] = v80;
    Fence.placemark.getter();
    v84 = PlaceMark.streetName.getter();
    v86 = v85;
    v81(v77, v82);
    v87 = (v57 + updated[18]);
    *v87 = v84;
    v87[1] = v86;
    Fence.placemark.getter();
    v145 = PlaceMark.administrativeArea.getter();
    v135 = v88;
    v133 = PlaceMark.country.getter();
    v132 = v89;
    v131 = PlaceMark.formattedAddressLines.getter();
    v130 = PlaceMark.locality.getter();
    v129 = v90;
    v91 = PlaceMark.stateCode.getter();
    v128 = v92;
    v93 = PlaceMark.streetAddress.getter();
    v95 = v94;
    v96 = PlaceMark.streetName.getter();
    v98 = v97;
    v146(v77, v82);
    v99 = v149;
    v100 = (v57 + updated[21]);
    v101 = v135;
    *v100 = v145;
    v100[1] = v101;
    v102 = v132;
    v100[2] = v133;
    v100[3] = v102;
    v103 = v130;
    v100[4] = v131;
    v100[5] = v103;
    v100[6] = v129;
    v100[7] = v91;
    v100[8] = v128;
    v100[9] = v93;
    v100[10] = v95;
    v100[11] = v96;
    v100[12] = v98;
    v104 = Fence.label.getter();
    v105 = (v57 + updated[16]);
    *v105 = v104;
    v105[1] = v106;
    v107 = v137;
    Fence.region.getter();
    v108 = v139;
    Fence.MonitorRegion.source.getter();
    v109 = *(v143 + 8);
    v110 = v107;
    v111 = v144;
    v109(v110, v144);
    v113 = v140;
    v112 = v141;
    v114 = v138;
    (*(v140 + 16))(v138, v108, v141);
    v115 = (*(v113 + 88))(v114, v112);
    if (v115 == enum case for Fence.MonitorRegion.Source.unknown(_:))
    {
      v116 = 0;
LABEL_31:
      (*(v113 + 8))(v108, v112);
      v117 = v57 + updated[13];
      *v117 = v116;
      *(v117 + 8) = 0;
      v118 = v142;
      Fence.region.getter();
      Fence.MonitorRegion.center.getter();
      v120 = v119;
      v109(v118, v111);
      v121 = v57 + updated[12];
      *v121 = v120;
      *(v121 + 8) = 0;
      Fence.region.getter();
      Fence.MonitorRegion.center.getter();
      v123 = v122;
      v109(v118, v111);
      v124 = v57 + updated[14];
      *v124 = v123;
      *(v124 + 8) = 0;
      Fence.region.getter();
      Fence.MonitorRegion.radius.getter();
      v126 = v125;
      v127 = type metadata accessor for Fence();
      (*(*(v127 - 8) + 8))(v99, v127);
      sub_10014984C(v148, type metadata accessor for ClientContext);
      result = (v109)(v118, v111);
      v73 = updated[17];
      *(v57 + v73) = v126;
      v61 = v147;
      goto LABEL_32;
    }

    if (v115 == enum case for Fence.MonitorRegion.Source.currentLocation(_:))
    {
      v116 = 1;
      goto LABEL_31;
    }

    if (v115 == enum case for Fence.MonitorRegion.Source.friendLocation(_:))
    {
      v116 = 2;
      goto LABEL_31;
    }

    if (v115 == enum case for Fence.MonitorRegion.Source.labelledLocation(_:))
    {
      v116 = 3;
      goto LABEL_31;
    }

    if (v115 == enum case for Fence.MonitorRegion.Source.addressBook(_:))
    {
      v116 = 4;
      goto LABEL_31;
    }

    if (v115 == enum case for Fence.MonitorRegion.Source.custom(_:))
    {
      v116 = 5;
      goto LABEL_31;
    }

    if (v115 == enum case for Fence.MonitorRegion.Source.droppedPin(_:))
    {
      v116 = 6;
      goto LABEL_31;
    }

    if (v115 == enum case for Fence.MonitorRegion.Source.tool(_:))
    {
      v116 = 7;
      goto LABEL_31;
    }

    while (1)
    {
LABEL_33:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  v62 = (v48 + updated[11]);
  *v62 = 0;
  v62[1] = 0;
  v63 = (v48 + updated[5]);
  *v63 = 0;
  v63[1] = 0;
  v64 = (v48 + updated[18]);
  *v64 = 0;
  v64[1] = 0;
  v65 = v48 + updated[21];
  *v65 = xmmword_1004C6EC0;
  *(v65 + 16) = 0u;
  *(v65 + 32) = 0u;
  *(v65 + 48) = 0u;
  *(v65 + 64) = 0u;
  *(v65 + 80) = 0u;
  *(v65 + 96) = 0;
  v66 = (v48 + updated[16]);
  *v66 = 0;
  v66[1] = 0;
  v67 = v48 + updated[13];
  *v67 = 0;
  *(v67 + 8) = 0;
  v68 = v48 + updated[12];
  longitude = kCLLocationCoordinate2DInvalid.longitude;
  *v68 = kCLLocationCoordinate2DInvalid.latitude;
  *(v68 + 8) = 0;
  v70 = type metadata accessor for Fence();
  (*(*(v70 - 8) + 8))(v59, v70);
  result = sub_10014984C(v148, type metadata accessor for ClientContext);
  v72 = v48 + updated[14];
  *v72 = longitude;
  *(v72 + 8) = 0;
  v73 = updated[17];
  *(v48 + v73) = 0;
LABEL_32:
  *(v57 + v73 + 8) = v61 & 1;
  return result;
}

uint64_t sub_100147E18(uint64_t a1)
{
  v2 = sub_10005D018();

  return RequestContentRepresentable.description.getter(a1, v2);
}

unint64_t sub_100147E54(char a1)
{
  result = 0x6F43746E65696C63;
  switch(a1)
  {
    case 1:
      result = 0x73736572646461;
      break;
    case 2:
      result = 0x736C69616D65;
      break;
    case 3:
      result = 0x6D754E656E6F6870;
      break;
    case 4:
      result = 7562345;
      break;
    case 5:
      result = 0x6449646E65697266;
      break;
    case 6:
      result = 1850700649;
      break;
    case 7:
      result = 0x6C6562616CLL;
      break;
    case 8:
      result = 0x656475746974616CLL;
      break;
    case 9:
      result = 0x6E6F697461636F6CLL;
      break;
    case 10:
      result = 0x64757469676E6F6CLL;
      break;
    case 11:
      result = 0x6F656D6974656E6FLL;
      break;
    case 12:
      result = 0x6441797474657270;
      break;
    case 13:
      result = 0x737569646172;
      break;
    case 14:
      result = 0x614E746565727473;
      break;
    case 15:
      result = 1701869940;
      break;
    case 16:
      result = 0x72656767697274;
      break;
    case 17:
      result = 0x726464416C6C7566;
      break;
    case 18:
      result = 0x64726F6365526B63;
      break;
    case 19:
      result = 0xD000000000000015;
      break;
    case 20:
      result = 0xD000000000000010;
      break;
    case 21:
      result = 25705;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001480B0(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005AC7A0, &qword_1004C7178);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  sub_100011AEC(a1, a1[3]);
  sub_100149DB8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v31[0]) = 0;
  type metadata accessor for ClientContext(0);
  sub_100149E0C(&qword_1005AC568, type metadata accessor for ClientContext, &unk_1004C9A18);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    updated = type metadata accessor for UpdateFenceRequestContent(0);
    LOBYTE(v31[0]) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v38 = updated;
    v10 = *(updated + 24);
    v19 = v3;
    *&v31[0] = *(v3 + v10);
    LOBYTE(v24) = 2;
    sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    sub_1000D2774();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v31[0] = *(v19 + v38[7]);
    LOBYTE(v24) = 3;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v31[0] = *(v19 + v38[8]);
    LOBYTE(v24) = 4;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v31[0]) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v31[0]) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v31[0]) = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v31[0]) = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v31[0]) = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v31[0]) = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v31[0]) = 11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v31[0]) = 12;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v31[0]) = 13;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v31[0]) = 14;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v31[0]) = 15;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v37[0] = 16;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = (v19 + v38[21]);
    v12 = v11[3];
    v13 = v11[5];
    v34 = v11[4];
    v35 = v13;
    v14 = v11[1];
    v31[0] = *v11;
    v31[1] = v14;
    v15 = v11[3];
    v17 = *v11;
    v16 = v11[1];
    v32 = v11[2];
    v33 = v15;
    v27 = v12;
    v28 = v34;
    v29 = v11[5];
    v24 = v17;
    v36 = *(v11 + 12);
    v30 = *(v11 + 12);
    v25 = v16;
    v26 = v32;
    v23 = 17;
    sub_100005F04(v31, v21, &qword_1005AC7B0, &qword_1004C7180);
    sub_100149E54();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v21[4] = v28;
    v21[5] = v29;
    v22 = v30;
    v21[0] = v24;
    v21[1] = v25;
    v21[2] = v26;
    v21[3] = v27;
    sub_100002CE0(v21, &qword_1005AC7B0, &qword_1004C7180);
    v20 = 18;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v20 = 19;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v20 = 20;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v20 = 21;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100148818@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10014A26C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10014884C(uint64_t a1)
{
  v2 = sub_100149DB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100148888(uint64_t a1)
{
  v2 = sub_100149DB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001488DC(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005AC7C0, &qword_1004C7188);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_100011AEC(a1, a1[3]);
  sub_100149EA8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v12 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = *(v3 + 32);
    v10[15] = 2;
    sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    sub_1000D2774();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10[14] = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10[13] = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10[12] = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10[11] = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_100148B50()
{
  v1 = *v0;
  v2 = 0x7972746E756F63;
  v3 = 0x6441746565727473;
  if (v1 != 5)
  {
    v3 = 0x614E746565727473;
  }

  v4 = 0x7974696C61636F6CLL;
  if (v1 != 3)
  {
    v4 = 0x646F436574617473;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0xD000000000000015;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100148C44@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10014A95C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100148C78(uint64_t a1)
{
  v2 = sub_100149EA8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100148CB4(uint64_t a1)
{
  v2 = sub_100149EA8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100148D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for Fence();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = type metadata accessor for UpdateFenceRequestContent(0);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v7 = type metadata accessor for Account();
  v4[16] = v7;
  v4[17] = *(v7 - 8);
  v4[18] = swift_task_alloc();
  sub_10004B564(&qword_1005AC488, &unk_1004C8430);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  type metadata accessor for ClientContext(0);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();

  return _swift_task_switch(sub_100148FC0, 0, 0);
}

uint64_t sub_100148FC0()
{
  v1 = v0[22];
  v2 = v0[20];
  v18 = v0[19];
  v19 = v0[21];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[16];
  v6 = v0[5];
  v7 = v0[2];
  sub_100146F44();
  v0[25] = v8;
  v9 = type metadata accessor for Handle();
  (*(*(v9 - 8) + 56))(v1, 1, 1, v9);
  v10 = type metadata accessor for RequestOrigin();
  v0[26] = v10;
  v11 = *(v10 - 8);
  v0[27] = v11;
  (*(v11 + 16))(v2, v6, v10);
  (*(v11 + 56))(v2, 0, 1, v10);
  (*(v3 + 16))(v4, v7, v5);
  sub_100005F04(v2, v18, &qword_1005AC488, &unk_1004C8430);
  sub_100005F04(v1, v19, &qword_1005B3360, &unk_1004C6AA0);
  v12 = swift_task_alloc();
  v0[28] = v12;
  *v12 = v0;
  v12[1] = sub_1001491B8;
  v13 = v0[24];
  v14 = v0[21];
  v15 = v0[18];
  v16 = v0[19];

  return sub_1001667E8(v13, v15, v16, v14, _swiftEmptyArrayStorage);
}

uint64_t sub_1001491B8()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 160);

  sub_100002CE0(v2, &qword_1005AC488, &unk_1004C8430);
  sub_100002CE0(v1, &qword_1005B3360, &unk_1004C6AA0);

  return _swift_task_switch(sub_10014930C, 0, 0);
}

uint64_t sub_10014930C()
{
  v41 = v0;
  v1 = v0[23];
  v2 = v0[15];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];
  v7 = v0[3];
  v6 = v0[4];
  sub_1001497E4(v0[24], v1, type metadata accessor for ClientContext);
  (*(v4 + 16))(v3, v7, v5);
  sub_10014715C(v1, v3, v6, v2);
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v8 = v0[14];
  v9 = v0[15];
  v10 = type metadata accessor for Logger();
  sub_10000A6F0(v10, qword_1005DFF88);
  sub_1001497E4(v9, v8, type metadata accessor for UpdateFenceRequestContent);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[14];
  if (v13)
  {
    v15 = v0[13];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v40 = v17;
    *v16 = 136315138;
    sub_1001497E4(v14, v15, type metadata accessor for UpdateFenceRequestContent);
    v18 = String.init<A>(describing:)();
    v20 = v19;
    sub_10014984C(v14, type metadata accessor for UpdateFenceRequestContent);
    v21 = sub_10000D01C(v18, v20, &v40);

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v11, v12, "Update Fence Request content: %s", v16, 0xCu);
    sub_100004984(v17);
  }

  else
  {

    sub_10014984C(v14, type metadata accessor for UpdateFenceRequestContent);
  }

  v23 = v0[7];
  v22 = v0[8];
  v24 = v0[6];
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  *v22 = sub_10019E890;
  v22[1] = 0;
  (*(v23 + 104))(v22, enum case for JSONEncoder.DateEncodingStrategy.custom(_:), v24);
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  sub_100149E0C(&qword_1005AC638, type metadata accessor for UpdateFenceRequestContent, &unk_1004C711C);
  v25 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v38 = v26;
  v39 = v25;

  v27 = v0[24];
  v28 = v0[17];
  v30 = v0[15];
  v29 = v0[16];
  v31 = v0[10];
  v32 = v0[9];
  v33 = v0[2];
  v34 = v0[3];
  (*(v0[27] + 8))(v0[5], v0[26]);
  (*(v31 + 8))(v34, v32);
  (*(v28 + 8))(v33, v29);
  sub_10014984C(v30, type metadata accessor for UpdateFenceRequestContent);
  sub_10014984C(v27, type metadata accessor for ClientContext);

  v35 = v0[1];
  v36 = v0[25];

  return v35(v36, v39, v38);
}

uint64_t type metadata accessor for UpdateFenceRequestContent(uint64_t a1)
{
  result = qword_1005AC6E8;
  if (!qword_1005AC6E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001497E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10014984C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100149900(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100149968(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005AAC60, &qword_1004C46E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100149A00(uint64_t a1)
{
  type metadata accessor for ClientContext(319);
  if (v1 <= 0x3F)
  {
    sub_10008B2BC(319, &qword_1005A9790, &type metadata for String);
    if (v2 <= 0x3F)
    {
      sub_100149B90(319);
      if (v3 <= 0x3F)
      {
        sub_10008B2BC(319, &qword_1005AC700, &type metadata for Bool);
        if (v4 <= 0x3F)
        {
          sub_10008B2BC(319, &qword_1005AC708, &type metadata for Double);
          if (v5 <= 0x3F)
          {
            sub_10008B2BC(319, &qword_1005A9788, &type metadata for Int);
            if (v6 <= 0x3F)
            {
              sub_10008B2BC(319, &unk_1005AC710, &type metadata for UpdateFenceRequestContent.Address);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_100149B90(uint64_t a1)
{
  if (!qword_1005AC6F8)
  {
    sub_10004B610(&qword_1005A9630, &qword_1004C5680);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1005AC6F8);
    }
  }
}

__n128 sub_100149BF4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100149C20(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 104))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100149C7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_100149D0C()
{
  result = qword_1005AC790;
  if (!qword_1005AC790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AC790);
  }

  return result;
}

unint64_t sub_100149D64()
{
  result = qword_1005AC798;
  if (!qword_1005AC798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AC798);
  }

  return result;
}

unint64_t sub_100149DB8()
{
  result = qword_1005AC7A8;
  if (!qword_1005AC7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AC7A8);
  }

  return result;
}

uint64_t sub_100149E0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100149E54()
{
  result = qword_1005AC7B8;
  if (!qword_1005AC7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AC7B8);
  }

  return result;
}

unint64_t sub_100149EA8()
{
  result = qword_1005AC7C8;
  if (!qword_1005AC7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AC7C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UpdateFenceRequestContent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEB)
  {
    goto LABEL_17;
  }

  if (a2 + 21 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 21) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 21;
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

      return (*a1 | (v4 << 8)) - 21;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v8 = v6 - 22;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UpdateFenceRequestContent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEB)
  {
    v4 = 0;
  }

  if (a2 > 0xEA)
  {
    v5 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
    *result = a2 + 21;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10014A060()
{
  result = qword_1005AC7D0;
  if (!qword_1005AC7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AC7D0);
  }

  return result;
}

unint64_t sub_10014A0B8()
{
  result = qword_1005AC7D8;
  if (!qword_1005AC7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AC7D8);
  }

  return result;
}

unint64_t sub_10014A110()
{
  result = qword_1005AC7E0;
  if (!qword_1005AC7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AC7E0);
  }

  return result;
}

unint64_t sub_10014A168()
{
  result = qword_1005AC7E8;
  if (!qword_1005AC7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AC7E8);
  }

  return result;
}

unint64_t sub_10014A1C0()
{
  result = qword_1005AC7F0;
  if (!qword_1005AC7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AC7F0);
  }

  return result;
}

unint64_t sub_10014A218()
{
  result = qword_1005AC7F8;
  if (!qword_1005AC7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AC7F8);
  }

  return result;
}

uint64_t sub_10014A26C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73736572646461 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736C69616D65 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D754E656E6F6870 && a2 == 0xEC00000073726562 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 7562345 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6449646E65697266 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1850700649 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x656475746974616CLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEC00000065707954 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6F656D6974656E6FLL && a2 == 0xEB00000000796C6ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6441797474657270 && a2 == 0xED00007373657264 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x737569646172 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x614E746565727473 && a2 == 0xEA0000000000656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x72656767697274 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x726464416C6C7566 && a2 == 0xEB00000000737365 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x64726F6365526B63 && a2 == 0xEC000000656D614ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001004E29D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001004E29F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    return 21;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 21;
    }

    else
    {
      return 22;
    }
  }
}

uint64_t sub_10014A95C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001004E2A10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7972746E756F63 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001004E2A30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7974696C61636F6CLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x646F436574617473 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6441746565727473 && a2 == 0xED00007373657264 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x614E746565727473 && a2 == 0xEA0000000000656DLL)
  {

    return 6;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t type metadata accessor for FriendshipEndpoint(uint64_t a1)
{
  result = qword_1005AC858;
  if (!qword_1005AC858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10014AC44()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005DFC28);
  sub_10000A6F0(v0, qword_1005DFC28);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10014ACC8(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v14 = a4;
  v8 = sub_10004B564(&qword_1005AC978, &qword_1004C7678);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - v10;
  sub_100011AEC(a1, a1[3]);
  sub_10014D088();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = a2;
  v17 = 0;
  sub_10004B564(&qword_1005AC968, &qword_1004C7670);
  sub_10014D0DC(&qword_1005AC980, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v15 = a3;
    v16 = v14;
    v17 = 1;
    sub_10002CF44(a3, v14);
    sub_10010670C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10001A794(v15, v16);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_10014AEB0(void *a1)
{
  v2 = v1;
  v4 = sub_10004B564(&qword_1005AC940, &qword_1004C7658);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - v6;
  sub_100011AEC(a1, a1[3]);
  sub_10014CDD0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8 = v2[7];
  v9 = v2[5];
  v48 = v2[6];
  v49 = v8;
  v10 = v2[7];
  v11 = v2[9];
  v50 = v2[8];
  v51 = v11;
  v12 = v2[3];
  v13 = v2[1];
  v44 = v2[2];
  v45 = v12;
  v14 = v2[3];
  v15 = v2[5];
  v46 = v2[4];
  v47 = v15;
  v16 = v2[1];
  v43[0] = *v2;
  v43[1] = v16;
  v39 = v48;
  v40 = v10;
  v17 = v2[9];
  v41 = v50;
  v42 = v17;
  v35 = v44;
  v36 = v14;
  v37 = v46;
  v38 = v9;
  v33 = v43[0];
  v34 = v13;
  v32 = 0;
  sub_100005F04(v43, &v22, &qword_1005A9328, &unk_1004C7F20);
  sub_100145258();
  v18 = v52;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v18)
  {
    v28 = v39;
    v29 = v40;
    v30 = v41;
    v31 = v42;
    v24 = v35;
    v25 = v36;
    v26 = v37;
    v27 = v38;
    v22 = v33;
    v23 = v34;
    sub_100002CE0(&v22, &qword_1005A9328, &unk_1004C7F20);
  }

  else
  {
    v28 = v39;
    v29 = v40;
    v30 = v41;
    v31 = v42;
    v24 = v35;
    v25 = v36;
    v26 = v37;
    v27 = v38;
    v22 = v33;
    v23 = v34;
    sub_100002CE0(&v22, &qword_1005A9328, &unk_1004C7F20);
    type metadata accessor for FriendshipImportContent(0);
    v21 = 1;
    type metadata accessor for ClientContext(0);
    sub_100009128(&qword_1005AC568, type metadata accessor for ClientContext, &unk_1004C9A18);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v21 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10014B1BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = type metadata accessor for ClientContext(0);
  __chkstk_darwin(v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004B564(&qword_1005AC950, &qword_1004C7660);
  v27 = *(v6 - 8);
  v28 = v6;
  __chkstk_darwin(v6);
  v8 = &v25 - v7;
  v9 = type metadata accessor for FriendshipImportContent(0);
  __chkstk_darwin(v9);
  v11 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a1[3];
  v30 = a1;
  sub_100011AEC(a1, v12);
  sub_10014CDD0();
  v13 = v29;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v13)
  {
    return sub_100004984(v30);
  }

  v29 = v3;
  v42 = 0;
  sub_1001452AC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v14 = v39;
  v11[6] = v38;
  v11[7] = v14;
  v15 = v41;
  v11[8] = v40;
  v11[9] = v15;
  v16 = v35;
  v11[2] = v34;
  v11[3] = v16;
  v17 = v37;
  v11[4] = v36;
  v11[5] = v17;
  v18 = v33;
  *v11 = v32;
  v11[1] = v18;
  v31 = 1;
  sub_100009128(&qword_1005AC580, type metadata accessor for ClientContext, &unk_1004C9A40);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_100144E70(v5, v11 + *(v9 + 20));
  v31 = 2;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v29 = v20;
  v21 = v19;
  (*(v27 + 8))(v8, v28);
  v22 = (v11 + *(v9 + 24));
  v23 = v29;
  *v22 = v21;
  v22[1] = v23;
  sub_10014CBF0(v11, v26, type metadata accessor for FriendshipImportContent);
  sub_100004984(v30);
  return sub_10014CC58(v11, type metadata accessor for FriendshipImportContent);
}

uint64_t sub_10014B5E8()
{
  if (*v0)
  {
    return 2036625250;
  }

  else
  {
    return 0xD000000000000010;
  }
}

void sub_10014B620(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001004E2A70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = 0;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000)
  {

    v6 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  *a3 = v6;
}

uint64_t sub_10014B708(uint64_t a1)
{
  v2 = sub_10014D088();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10014B744(uint64_t a1)
{
  v2 = sub_10014D088();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10014B780@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10014CE24(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_10014B7D0(uint64_t a1)
{
  v2 = sub_10006DA74();

  return RequestContentRepresentable.description.getter(a1, v2);
}

uint64_t sub_10014B80C()
{
  v1 = 0x6F43746E65696C63;
  if (*v0 != 1)
  {
    v1 = 7107189;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F43726576726573;
  }
}

uint64_t sub_10014B868@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10014D378(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10014B890(uint64_t a1)
{
  v2 = sub_10014CDD0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10014B8CC(uint64_t a1)
{
  v2 = sub_10014CDD0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10014B938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[184] = a3;
  v3[183] = a2;
  v3[182] = a1;
  v4 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  v3[185] = v4;
  v3[186] = *(v4 - 8);
  v3[187] = swift_task_alloc();
  v3[188] = type metadata accessor for FriendshipImportContent(0);
  v3[189] = swift_task_alloc();
  v3[190] = swift_task_alloc();
  v3[191] = swift_task_alloc();
  v5 = type metadata accessor for Account();
  v3[192] = v5;
  v3[193] = *(v5 - 8);
  v3[194] = swift_task_alloc();
  v6 = type metadata accessor for ClientOrigin();
  v3[195] = v6;
  v3[196] = *(v6 - 8);
  v3[197] = swift_task_alloc();
  sub_10004B564(&qword_1005AC488, &unk_1004C8430);
  v3[198] = swift_task_alloc();
  v3[199] = swift_task_alloc();
  sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
  v3[200] = swift_task_alloc();
  v3[201] = swift_task_alloc();
  type metadata accessor for ClientContext(0);
  v3[202] = swift_task_alloc();
  v3[203] = swift_task_alloc();

  return _swift_task_switch(sub_10014BBC0, 0, 0);
}

uint64_t sub_10014BBC0()
{
  v1 = v0[201];
  v2 = v0[199];
  v18 = v0[198];
  v19 = v0[200];
  v3 = v0[197];
  v4 = v0[196];
  v5 = v0[195];
  v6 = v0[194];
  v7 = v0[193];
  v8 = v0[192];
  v9 = v0[182];
  v0[204] = sub_10014ABCC();
  v10 = type metadata accessor for Handle();
  (*(*(v10 - 8) + 56))(v1, 1, 1, v10);
  (*(v4 + 104))(v3, enum case for ClientOrigin.other(_:), v5);
  RequestOrigin.init(_:)();
  v11 = type metadata accessor for RequestOrigin();
  (*(*(v11 - 8) + 56))(v2, 0, 1, v11);
  (*(v7 + 16))(v6, v9, v8);
  sub_100005F04(v2, v18, &qword_1005AC488, &unk_1004C8430);
  sub_100005F04(v1, v19, &qword_1005B3360, &unk_1004C6AA0);
  v12 = swift_task_alloc();
  v0[205] = v12;
  *v12 = v0;
  v12[1] = sub_10014BDC4;
  v13 = v0[203];
  v14 = v0[200];
  v15 = v0[198];
  v16 = v0[194];

  return sub_1001667E8(v13, v16, v15, v14, _swiftEmptyArrayStorage);
}

uint64_t sub_10014BDC4()
{
  v1 = *v0;
  v2 = *(*v0 + 1624);
  v3 = *(*v0 + 1616);
  v4 = *(*v0 + 1608);
  v5 = *(*v0 + 1592);
  v8 = *v0;

  sub_100002CE0(v5, &qword_1005AC488, &unk_1004C8430);
  sub_100002CE0(v4, &qword_1005B3360, &unk_1004C6AA0);
  sub_10014CBF0(v2, v3, type metadata accessor for ClientContext);
  v6 = swift_task_alloc();
  *(v1 + 1648) = v6;
  *v6 = v8;
  v6[1] = sub_10014BFA0;

  return daemon.getter();
}

uint64_t sub_10014BFA0(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 1656) = a1;

  v3 = swift_task_alloc();
  *(v2 + 1664) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DataManager(0);
  v6 = sub_100009128(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100009128(&qword_1005A90D0, type metadata accessor for DataManager, &unk_1004D1410);
  *v3 = v9;
  v3[1] = sub_10014C17C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10014C17C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[209] = a1;
  v3[210] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10014C558, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[211] = v5;
    *v5 = v4;
    v5[1] = sub_10014C30C;

    return sub_100245BB8((v3 + 62));
  }
}

uint64_t sub_10014C30C()
{
  v1 = *(*v0 + 1672);

  return _swift_task_switch(sub_10014C41C, v1, 0);
}

uint64_t sub_10014C41C()
{
  memcpy(v0 + 1, v0 + 31, 0x1E0uLL);
  if (sub_100033B90((v0 + 1)) == 1)
  {
    sub_10003170C(v0 + 61);
  }

  else
  {
    v1 = v0[14];
    v0[77] = v0[13];
    v0[78] = v1;
    v2 = v0[16];
    v0[79] = v0[15];
    v0[80] = v2;
    v3 = v0[10];
    v0[73] = v0[9];
    v0[74] = v3;
    v4 = v0[12];
    v0[75] = v0[11];
    v0[76] = v4;
    v5 = v0[8];
    v0[71] = v0[7];
    v0[72] = v5;
    sub_100005F04((v0 + 71), (v0 + 81), &qword_1005A9328, &unk_1004C7F20);
    sub_100002CE0((v0 + 31), &qword_1005A90D8, &unk_1004C6AB0);
    v6 = v0[78];
    v0[67] = v0[77];
    v0[68] = v6;
    v7 = v0[80];
    v0[69] = v0[79];
    v0[70] = v7;
    v8 = v0[74];
    v0[63] = v0[73];
    v0[64] = v8;
    v9 = v0[76];
    v0[65] = v0[75];
    v0[66] = v9;
    v10 = v0[72];
    v0[61] = v0[71];
    v0[62] = v10;
  }

  return _swift_task_switch(sub_10014C6F0, 0, 0);
}

uint64_t sub_10014C558()
{
  v1 = v0[203];
  v2 = v0[202];
  v3 = v0[193];
  v4 = v0[192];
  v5 = v0[182];

  sub_10014CC58(v2, type metadata accessor for ClientContext);
  (*(v3 + 8))(v5, v4);
  sub_10014CC58(v1, type metadata accessor for ClientContext);

  sub_10001A794(0, 0xF000000000000000);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10014C6F0()
{
  v42 = v0;
  v1 = *(v0 + 1616);
  v2 = *(v0 + 1528);
  v3 = *(v0 + 1504);
  v4 = *(v0 + 1472);
  v5 = *(v0 + 1464);

  v6 = *(v0 + 992);
  *v2 = *(v0 + 976);
  v2[1] = v6;
  v7 = *(v0 + 1008);
  v8 = *(v0 + 1024);
  v9 = *(v0 + 1056);
  v2[4] = *(v0 + 1040);
  v2[5] = v9;
  v2[2] = v7;
  v2[3] = v8;
  v10 = *(v0 + 1072);
  v11 = *(v0 + 1088);
  v12 = *(v0 + 1120);
  v2[8] = *(v0 + 1104);
  v2[9] = v12;
  v2[6] = v10;
  v2[7] = v11;
  sub_100144E70(v1, v2 + *(v3 + 20));
  v13 = (v2 + *(v3 + 24));
  *v13 = v5;
  v13[1] = v4;
  if (qword_1005A7F88 != -1)
  {
    swift_once();
  }

  v14 = *(v0 + 1528);
  v15 = *(v0 + 1520);
  v16 = type metadata accessor for Logger();
  sub_10000A6F0(v16, qword_1005DFC28);
  sub_10014CBF0(v14, v15, type metadata accessor for FriendshipImportContent);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  v19 = os_log_type_enabled(v17, v18);
  v20 = *(v0 + 1520);
  if (v19)
  {
    v21 = *(v0 + 1512);
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v41 = v23;
    *v22 = 136315138;
    sub_10014CBF0(v20, v21, type metadata accessor for FriendshipImportContent);
    v24 = String.init<A>(describing:)();
    v26 = v25;
    sub_10014CC58(v20, type metadata accessor for FriendshipImportContent);
    v27 = sub_10000D01C(v24, v26, &v41);

    *(v22 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v17, v18, "Request content: %s", v22, 0xCu);
    sub_100004984(v23);
  }

  else
  {

    sub_10014CC58(v20, type metadata accessor for FriendshipImportContent);
  }

  v28 = *(v0 + 1680);
  v29 = *(v0 + 1496);
  v30 = *(v0 + 1488);
  v31 = *(v0 + 1480);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  *v29 = sub_10019E890;
  v29[1] = 0;
  (*(v30 + 104))(v29, enum case for JSONEncoder.DateEncodingStrategy.custom(_:), v31);
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  sub_100009128(&qword_1005AC890, type metadata accessor for FriendshipImportContent, &unk_1004C75D4);
  v32 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v28)
  {

    v34 = 0;
    v35 = 0xF000000000000000;
  }

  else
  {
    v34 = v32;
    v35 = v33;
  }

  v36 = *(v0 + 1624);
  v37 = *(v0 + 1528);
  (*(*(v0 + 1544) + 8))(*(v0 + 1456), *(v0 + 1536));
  sub_10014CC58(v37, type metadata accessor for FriendshipImportContent);
  sub_10014CC58(v36, type metadata accessor for ClientContext);
  sub_10001A794(0, 0xF000000000000000);

  sub_10002CF44(v34, v35);

  sub_10001A794(v34, v35);

  v38 = *(v0 + 8);
  v39 = *(v0 + 1632);

  return v38(v39, v34, v35);
}

uint64_t type metadata accessor for FriendshipImportContent(uint64_t a1)
{
  result = qword_1005AC8F0;
  if (!qword_1005AC8F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10014CBF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10014CC58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10014CCF4(uint64_t a1)
{
  *(a1 + 8) = sub_100009128(&qword_1005AC930, type metadata accessor for FriendshipImportContent, &unk_1004C7590);
  result = sub_100009128(&qword_1005AC890, type metadata accessor for FriendshipImportContent, &unk_1004C75D4);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10014CD7C()
{
  result = qword_1005AC938;
  if (!qword_1005AC938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AC938);
  }

  return result;
}

unint64_t sub_10014CDD0()
{
  result = qword_1005AC948;
  if (!qword_1005AC948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AC948);
  }

  return result;
}

uint64_t sub_10014CE24(void *a1)
{
  v3 = sub_10004B564(&qword_1005AC958, &qword_1004C7668);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - v5;
  v7 = a1[3];
  sub_100011AEC(a1, v7);
  sub_10014D088();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100004984(a1);
    sub_10001A794(0, 0xF000000000000000);
  }

  else
  {
    sub_10004B564(&qword_1005AC968, &qword_1004C7670);
    v14 = 0;
    sub_10014D0DC(&qword_1005AC970, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v7 = v12;
    v14 = 1;
    sub_1000F4D64();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v9 = v12;
    v10 = v13;
    sub_10001A794(0, 0xF000000000000000);

    sub_10002CF44(v9, v10);
    sub_100004984(a1);

    sub_10001A794(v9, v10);
  }

  return v7;
}

unint64_t sub_10014D088()
{
  result = qword_1005AC960;
  if (!qword_1005AC960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AC960);
  }

  return result;
}

uint64_t sub_10014D0DC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10004B610(&qword_1005AC968, &qword_1004C7670);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10014D16C()
{
  result = qword_1005AC988;
  if (!qword_1005AC988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AC988);
  }

  return result;
}

unint64_t sub_10014D1C4()
{
  result = qword_1005AC990;
  if (!qword_1005AC990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AC990);
  }

  return result;
}

unint64_t sub_10014D21C()
{
  result = qword_1005AC998;
  if (!qword_1005AC998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AC998);
  }

  return result;
}

unint64_t sub_10014D274()
{
  result = qword_1005AC9A0;
  if (!qword_1005AC9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AC9A0);
  }

  return result;
}

unint64_t sub_10014D2CC()
{
  result = qword_1005AC9A8;
  if (!qword_1005AC9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AC9A8);
  }

  return result;
}

unint64_t sub_10014D324()
{
  result = qword_1005AC9B0;
  if (!qword_1005AC9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AC9B0);
  }

  return result;
}

uint64_t sub_10014D378(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F43726576726573 && a2 == 0xED0000747865746ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
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

uint64_t sub_10014D4A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[185] = a4;
  v4[184] = a3;
  v4[183] = a2;
  v4[182] = a1;
  v5 = type metadata accessor for IDSStatus();
  v4[186] = v5;
  v4[187] = *(v5 - 8);
  v4[188] = swift_task_alloc();
  v4[189] = swift_task_alloc();
  v6 = type metadata accessor for Handle();
  v4[190] = v6;
  v4[191] = *(v6 - 8);
  v4[192] = swift_task_alloc();
  v7 = type metadata accessor for ClientOrigin();
  v4[193] = v7;
  v4[194] = *(v7 - 8);
  v4[195] = swift_task_alloc();
  v8 = type metadata accessor for RequestOrigin();
  v4[196] = v8;
  v4[197] = *(v8 - 8);
  v4[198] = swift_task_alloc();
  v9 = type metadata accessor for GroupID();
  v4[199] = v9;
  v4[200] = *(v9 - 8);
  v4[201] = swift_task_alloc();
  sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v4[202] = swift_task_alloc();
  v10 = swift_task_alloc();
  v4[203] = v10;
  *v10 = v4;
  v10[1] = sub_10014D750;

  return daemon.getter();
}

uint64_t sub_10014D750(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 1632) = a1;

  v3 = swift_task_alloc();
  *(v2 + 1640) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DataManager(0);
  v6 = sub_100154014(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100154014(&qword_1005A90D0, type metadata accessor for DataManager, &unk_1004D1410);
  *v3 = v9;
  v3[1] = sub_10014D92C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10014D92C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[206] = a1;
  v3[207] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10014DD08, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[208] = v5;
    *v5 = v4;
    v5[1] = sub_10014DABC;

    return sub_100245BB8((v3 + 62));
  }
}

uint64_t sub_10014DABC()
{
  v1 = *(*v0 + 1648);

  return _swift_task_switch(sub_10014DBCC, v1, 0);
}

uint64_t sub_10014DBCC()
{
  memcpy(v0 + 1, v0 + 31, 0x1E0uLL);
  if (sub_100033B90((v0 + 1)) == 1)
  {
    sub_10003170C(v0 + 61);
  }

  else
  {
    v1 = v0[14];
    v0[77] = v0[13];
    v0[78] = v1;
    v2 = v0[16];
    v0[79] = v0[15];
    v0[80] = v2;
    v3 = v0[10];
    v0[73] = v0[9];
    v0[74] = v3;
    v4 = v0[12];
    v0[75] = v0[11];
    v0[76] = v4;
    v5 = v0[8];
    v0[71] = v0[7];
    v0[72] = v5;
    sub_100005F04((v0 + 71), (v0 + 81), &qword_1005A9328, &unk_1004C7F20);
    sub_100002CE0((v0 + 31), &qword_1005A90D8, &unk_1004C6AB0);
    v6 = v0[78];
    v0[67] = v0[77];
    v0[68] = v6;
    v7 = v0[80];
    v0[69] = v0[79];
    v0[70] = v7;
    v8 = v0[74];
    v0[63] = v0[73];
    v0[64] = v8;
    v9 = v0[76];
    v0[65] = v0[75];
    v0[66] = v9;
    v10 = v0[72];
    v0[61] = v0[71];
    v0[62] = v10;
  }

  return _swift_task_switch(sub_10014DE7C, 0, 0);
}

uint64_t sub_10014DD08()
{
  v1 = v0[185];
  v2 = v0[184];
  v3 = v0[183];

  v4 = type metadata accessor for FriendshipRequestType();
  (*(*(v4 - 8) + 8))(v1, v4);
  v5 = type metadata accessor for FriendshipRequest();
  (*(*(v5 - 8) + 8))(v2, v5);
  sub_10015483C(v3, type metadata accessor for ClientContext);

  v6 = v0[1];

  return v6();
}

unint64_t sub_10014DE7C()
{
  v1 = *(v0 + 1616);
  v2 = *(v0 + 1464);
  v3 = *(v0 + 1456);

  v4 = *(v0 + 992);
  *v3 = *(v0 + 976);
  v3[1] = v4;
  v5 = *(v0 + 1008);
  v6 = *(v0 + 1024);
  v7 = *(v0 + 1056);
  v3[4] = *(v0 + 1040);
  v3[5] = v7;
  v3[2] = v5;
  v3[3] = v6;
  v8 = *(v0 + 1072);
  v9 = *(v0 + 1088);
  v10 = *(v0 + 1120);
  v3[8] = *(v0 + 1104);
  v3[9] = v10;
  v3[6] = v8;
  v3[7] = v9;
  v73 = type metadata accessor for FriendshipOfferContent(0);
  sub_1001547D4(v2, v3 + v73[5], type metadata accessor for ClientContext);
  FriendshipRequest.endDate.getter();
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v1, 1, v11);
  v81 = v0;
  v14 = *(v0 + 1616);
  if (v13 == 1)
  {
    sub_100002CE0(*(v0 + 1616), &unk_1005AE5B0, &qword_1004C32F0);
    v15 = 0.0;
  }

  else
  {
    Date.timeIntervalSince1970.getter();
    v17 = v16;
    (*(v12 + 8))(v14, v11);
    v15 = v17 * 1000.0;
  }

  v18 = *(v0 + 1584);
  v19 = *(v0 + 1576);
  v20 = v81[196];
  v21 = v81[195];
  v22 = v81[194];
  v23 = v81[193];
  *(v81[182] + v73[6]) = v15;
  FriendshipRequest.origin.getter();
  v24 = FriendshipRequest.isFromGroup.getter();
  RequestOrigin.origin.getter();
  (*(v19 + 8))(v18, v20);
  if ((*(v22 + 88))(v21, v23) == enum case for ClientOrigin.messagesApp(_:))
  {
    if (v24)
    {
      v25 = &enum case for GroupID.group(_:);
    }

    else
    {
      v25 = &enum case for GroupID.oneToOne(_:);
    }

    (*(v81[200] + 104))(v81[201], *v25, v81[199]);
  }

  else
  {
    v26 = v81[195];
    v27 = v81[194];
    v28 = v81[193];
    (*(v81[200] + 104))(v81[201], enum case for GroupID.oneToOne(_:), v81[199]);
    (*(v27 + 8))(v26, v28);
  }

  v29 = v81[201];
  v30 = v81[200];
  v31 = v81[199];
  v32 = v81[182];
  v33 = GroupID.rawValue.getter();
  v35 = v34;
  (*(v30 + 8))(v29, v31);
  v36 = (v32 + v73[7]);
  *v36 = v33;
  v36[1] = v35;
  result = FriendshipRequest.toHandles.getter();
  v80 = *(result + 16);
  if (v80)
  {
    v38 = 0;
    v39 = v81[191];
    v78 = result + ((*(v39 + 80) + 32) & ~*(v39 + 80));
    v77 = enum case for IDSStatus.valid(_:);
    v76 = v81[187];
    v82 = (v76 + 32);
    v79 = v39;
    v75 = (v39 + 8);
    v40 = v81;
    v74 = result;
    while (1)
    {
      if (v38 >= *(result + 16))
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        return result;
      }

      v42 = v40[189];
      v43 = v40[188];
      v44 = v40[186];
      (*(v79 + 16))(v40[192], v78 + *(v79 + 72) * v38, v40[190]);
      v45 = Handle.identifier.getter();
      v47 = v46;
      (*(v76 + 104))(v42, v77, v44);
      v48 = *v82;
      (*v82)(v43, v42, v44);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      result = sub_1000110D8(v45, v47);
      v51 = _swiftEmptyDictionarySingleton[2];
      v52 = (v50 & 1) == 0;
      v53 = __OFADD__(v51, v52);
      v54 = v51 + v52;
      if (v53)
      {
        goto LABEL_32;
      }

      v55 = v50;
      if (_swiftEmptyDictionarySingleton[3] >= v54)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v65 = result;
          sub_100202B94();
          result = v65;
          v40 = v81;
        }
      }

      else
      {
        sub_10022C964(v54, isUniquelyReferenced_nonNull_native);
        result = sub_1000110D8(v45, v47);
        if ((v55 & 1) != (v56 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }
      }

      v57 = v40;
      v58 = v40[192];
      v59 = v57[190];
      v60 = v57[188];
      v61 = v57[186];
      if (v55)
      {
        v41 = result;

        (*(v76 + 40))(_swiftEmptyDictionarySingleton[7] + *(v76 + 72) * v41, v60, v61);
        (*v75)(v58, v59);
      }

      else
      {
        _swiftEmptyDictionarySingleton[(result >> 6) + 8] |= 1 << result;
        v62 = (_swiftEmptyDictionarySingleton[6] + 16 * result);
        *v62 = v45;
        v62[1] = v47;
        v48(_swiftEmptyDictionarySingleton[7] + *(v76 + 72) * result, v60, v61);
        result = (*v75)(v58, v59);
        v63 = _swiftEmptyDictionarySingleton[2];
        v53 = __OFADD__(v63, 1);
        v64 = v63 + 1;
        if (v53)
        {
          goto LABEL_33;
        }

        _swiftEmptyDictionarySingleton[2] = v64;
      }

      ++v38;
      v40 = v81;
      result = v74;
      if (v80 == v38)
      {
        goto LABEL_25;
      }
    }
  }

  v40 = v81;
LABEL_25:
  v66 = v40[185];
  v67 = v40[184];
  v68 = v40[183];
  v69 = v40[182];

  v70 = type metadata accessor for FriendshipRequestType();
  (*(*(v70 - 8) + 8))(v66, v70);
  v71 = type metadata accessor for FriendshipRequest();
  (*(*(v71 - 8) + 8))(v67, v71);
  sub_10015483C(v68, type metadata accessor for ClientContext);
  *(v69 + v73[8]) = _swiftEmptyDictionarySingleton;

  v72 = v40[1];

  return v72();
}

uint64_t sub_10014E5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[185] = a4;
  v4[184] = a3;
  v4[183] = a2;
  v4[182] = a1;
  sub_10004B564(&qword_1005A9188, &unk_1004D80D0);
  v4[186] = swift_task_alloc();
  v4[187] = swift_task_alloc();
  v5 = type metadata accessor for HandleType();
  v4[188] = v5;
  v4[189] = *(v5 - 8);
  v4[190] = swift_task_alloc();
  v4[191] = swift_task_alloc();
  v4[192] = swift_task_alloc();
  v4[193] = swift_task_alloc();
  sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
  v4[194] = swift_task_alloc();
  v4[195] = swift_task_alloc();
  v6 = type metadata accessor for ClientOrigin();
  v4[196] = v6;
  v4[197] = *(v6 - 8);
  v4[198] = swift_task_alloc();
  v7 = type metadata accessor for RequestOrigin();
  v4[199] = v7;
  v4[200] = *(v7 - 8);
  v4[201] = swift_task_alloc();
  v8 = type metadata accessor for GroupID();
  v4[202] = v8;
  v4[203] = *(v8 - 8);
  v4[204] = swift_task_alloc();
  v9 = type metadata accessor for Handle();
  v4[205] = v9;
  v4[206] = *(v9 - 8);
  v4[207] = swift_task_alloc();
  v4[208] = swift_task_alloc();
  v4[209] = swift_task_alloc();
  v4[210] = swift_task_alloc();
  sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v4[211] = swift_task_alloc();
  v10 = swift_task_alloc();
  v4[212] = v10;
  *v10 = v4;
  v10[1] = sub_10014E91C;

  return daemon.getter();
}

uint64_t sub_10014E91C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[213] = a1;

  v3 = swift_task_alloc();
  v2[214] = v3;
  v4 = type metadata accessor for Daemon();
  v2[215] = v4;
  v5 = type metadata accessor for DataManager(0);
  v2[216] = v5;
  v6 = sub_100154014(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[217] = v6;
  v7 = sub_100154014(&qword_1005A90D0, type metadata accessor for DataManager, &unk_1004D1410);
  v2[218] = v7;
  *v3 = v9;
  v3[1] = sub_10014EB10;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10014EB10(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[219] = a1;
  v3[220] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10014EEEC, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[221] = v5;
    *v5 = v4;
    v5[1] = sub_10014ECA0;

    return sub_100245BB8((v3 + 62));
  }
}

uint64_t sub_10014ECA0()
{
  v1 = *(*v0 + 1752);

  return _swift_task_switch(sub_10014EDB0, v1, 0);
}

uint64_t sub_10014EDB0()
{
  memcpy(v0 + 1, v0 + 31, 0x1E0uLL);
  if (sub_100033B90((v0 + 1)) == 1)
  {
    sub_10003170C(v0 + 61);
  }

  else
  {
    v1 = v0[14];
    v0[77] = v0[13];
    v0[78] = v1;
    v2 = v0[16];
    v0[79] = v0[15];
    v0[80] = v2;
    v3 = v0[10];
    v0[73] = v0[9];
    v0[74] = v3;
    v4 = v0[12];
    v0[75] = v0[11];
    v0[76] = v4;
    v5 = v0[8];
    v0[71] = v0[7];
    v0[72] = v5;
    sub_100005F04((v0 + 71), (v0 + 81), &qword_1005A9328, &unk_1004C7F20);
    sub_100002CE0((v0 + 31), &qword_1005A90D8, &unk_1004C6AB0);
    v6 = v0[78];
    v0[67] = v0[77];
    v0[68] = v6;
    v7 = v0[80];
    v0[69] = v0[79];
    v0[70] = v7;
    v8 = v0[74];
    v0[63] = v0[73];
    v0[64] = v8;
    v9 = v0[76];
    v0[65] = v0[75];
    v0[66] = v9;
    v10 = v0[72];
    v0[61] = v0[71];
    v0[62] = v10;
  }

  return _swift_task_switch(sub_10014F0DC, 0, 0);
}

uint64_t sub_10014EEEC()
{
  v1 = v0[185];
  v2 = v0[184];
  v3 = v0[183];

  v4 = type metadata accessor for FriendshipRequestType();
  (*(*(v4 - 8) + 8))(v1, v4);
  v5 = type metadata accessor for FriendshipRequest();
  (*(*(v5 - 8) + 8))(v2, v5);
  sub_10015483C(v3, type metadata accessor for ClientContext);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10014F0DC()
{
  v1 = v0;
  v2 = *(v0 + 1464);
  v3 = *(v0 + 1456);

  v4 = *(v1 + 992);
  *v3 = *(v1 + 976);
  v3[1] = v4;
  v5 = *(v1 + 1008);
  v6 = *(v1 + 1024);
  v7 = *(v1 + 1056);
  v3[4] = *(v1 + 1040);
  v3[5] = v7;
  v3[2] = v5;
  v3[3] = v6;
  v8 = *(v1 + 1072);
  v9 = *(v1 + 1088);
  v10 = *(v1 + 1120);
  v3[8] = *(v1 + 1104);
  v3[9] = v10;
  v3[6] = v8;
  v3[7] = v9;
  v11 = type metadata accessor for FriendshipRequestContent(0);
  *(v1 + 1776) = v11;
  sub_1001547D4(v2, v3 + v11[5], type metadata accessor for ClientContext);
  v12 = FriendshipRequest.toHandles.getter();
  v13 = *(v12 + 16);
  if (v13)
  {
    v56 = v11;
    v14 = *(v1 + 1648);
    sub_10002B3C0(0, v13, 0);
    v15 = *(v14 + 16);
    v14 += 16;
    v16 = v12 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v57 = *(v14 + 56);
    v58 = v15;
    v17 = (v14 - 8);
    do
    {
      v18 = *(v1 + 1680);
      v19 = v1;
      v20 = *(v1 + 1640);
      v58(v18, v16, v20);
      v21 = Handle.identifier.getter();
      v23 = v22;
      (*v17)(v18, v20);
      v25 = _swiftEmptyArrayStorage[2];
      v24 = _swiftEmptyArrayStorage[3];
      if (v25 >= v24 >> 1)
      {
        sub_10002B3C0((v24 > 1), v25 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v25 + 1;
      v26 = &_swiftEmptyArrayStorage[2 * v25];
      v26[4] = v21;
      v26[5] = v23;
      v16 += v57;
      --v13;
      v1 = v19;
    }

    while (v13);

    v11 = v56;
  }

  else
  {
  }

  v27 = *(v1 + 1688);
  *(*(v1 + 1456) + v11[8]) = _swiftEmptyArrayStorage;
  FriendshipRequest.endDate.getter();
  v28 = type metadata accessor for Date();
  v29 = *(v28 - 8);
  v30 = (*(v29 + 48))(v27, 1, v28);
  v31 = *(v1 + 1688);
  if (v30 == 1)
  {
    sub_100002CE0(*(v1 + 1688), &unk_1005AE5B0, &qword_1004C32F0);
    v32 = 0.0;
  }

  else
  {
    Date.timeIntervalSince1970.getter();
    v34 = v33;
    (*(v29 + 8))(v31, v28);
    v32 = v34 * 1000.0;
  }

  v35 = *(v1 + 1608);
  v36 = *(v1 + 1600);
  v37 = *(v1 + 1592);
  v38 = *(v1 + 1584);
  v39 = *(v1 + 1576);
  v40 = *(v1 + 1568);
  *(*(v1 + 1456) + v11[6]) = v32;
  FriendshipRequest.origin.getter();
  v41 = FriendshipRequest.isFromGroup.getter();
  RequestOrigin.origin.getter();
  (*(v36 + 8))(v35, v37);
  if ((*(v39 + 88))(v38, v40) == enum case for ClientOrigin.messagesApp(_:))
  {
    if (v41)
    {
      v42 = &enum case for GroupID.group(_:);
    }

    else
    {
      v42 = &enum case for GroupID.oneToOne(_:);
    }

    (*(*(v1 + 1624) + 104))(*(v1 + 1632), *v42, *(v1 + 1616));
  }

  else
  {
    v43 = *(v1 + 1584);
    v44 = *(v1 + 1576);
    v45 = *(v1 + 1568);
    (*(*(v1 + 1624) + 104))(*(v1 + 1632), enum case for GroupID.oneToOne(_:), *(v1 + 1616));
    (*(v44 + 8))(v43, v45);
  }

  v46 = *(v1 + 1632);
  v47 = *(v1 + 1624);
  v48 = *(v1 + 1616);
  v49 = *(v1 + 1456);
  v50 = GroupID.rawValue.getter();
  v52 = v51;
  (*(v47 + 8))(v46, v48);
  v53 = (v49 + v11[7]);
  *v53 = v50;
  v53[1] = v52;
  v54 = swift_task_alloc();
  *(v1 + 1784) = v54;
  *v54 = v1;
  v54[1] = sub_10014F558;

  return daemon.getter();
}

uint64_t sub_10014F558(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[224] = a1;

  v4 = swift_task_alloc();
  v2[225] = v4;
  *v4 = v3;
  v4[1] = sub_10014F6E4;
  v5 = v2[218];
  v6 = v2[217];
  v7 = v2[216];
  v8 = v2[215];

  return ActorServiceDaemon.getService<A>()(v8, v7, v6, v5);
}

uint64_t sub_10014F6E4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1808) = a1;
  *(v3 + 1816) = v1;

  if (v1)
  {
    v4 = sub_100150EE4;
  }

  else
  {
    v4 = sub_10014F81C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10014F81C(uint64_t a1)
{
  v2 = FriendshipRequest.toHandles.getter();
  *(v1 + 1824) = v2;
  v5 = *(v2 + 16);
  *(v1 + 1832) = v5;
  if (v5)
  {
    v6 = *(v1 + 1808);
    v7 = *(v1 + 1648);
    v8 = *(v1 + 1512);
    v9 = *(v7 + 80);
    *(v1 + 1984) = v9;
    v10 = enum case for HandleType.follower(_:);
    *(v1 + 1988) = enum case for HandleType.follower(_:);
    *(v1 + 1992) = enum case for HandleType.following(_:);
    *(v1 + 1848) = _swiftEmptyArrayStorage;
    *(v1 + 1840) = 0;
    if (*(v2 + 16))
    {
      v11 = *(v1 + 1544);
      v12 = *(v1 + 1504);
      (*(v7 + 16))(*(v1 + 1672), v2 + ((v9 + 32) & ~v9), *(v1 + 1640));
      v13 = *(v8 + 104);
      *(v1 + 1856) = v13;
      *(v1 + 1864) = (v8 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
      v13(v11, v10, v12);
      v2 = sub_10014FB64;
      v3 = v6;
      v4 = 0;
    }

    else
    {
      __break(1u);
    }

    return _swift_task_switch(v2, v3, v4);
  }

  else
  {

    v14 = *(v1 + 1480);
    v15 = *(v1 + 1472);
    v16 = *(v1 + 1464);
    v17 = _swiftEmptyArrayStorage;
    v18 = _swiftEmptyArrayStorage[2];
    v19 = FriendshipRequest.toHandles.getter();

    v20 = type metadata accessor for FriendshipRequestType();
    (*(*(v20 - 8) + 8))(v14, v20);
    v21 = type metadata accessor for FriendshipRequest();
    (*(*(v21 - 8) + 8))(v15, v21);
    sub_10015483C(v16, type metadata accessor for ClientContext);
    v22 = *(v19 + 16);

    if (v18 != v22)
    {

      v17 = 0;
    }

    *(*(v1 + 1456) + *(*(v1 + 1776) + 36)) = v17;

    v23 = *(v1 + 8);

    return v23();
  }
}

uint64_t sub_10014FB64()
{
  v25 = v0;
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v1 = v0[193];
  v2 = v0[192];
  v3 = v0[189];
  v4 = v0[188];
  v5 = type metadata accessor for Logger();
  v0[234] = sub_10000A6F0(v5, qword_1005DFF18);
  v6 = *(v3 + 16);
  v0[235] = v6;
  v0[236] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v1, v4);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[192];
  v11 = v0[189];
  v12 = v0[188];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v13 = 136446722;
    *(v13 + 4) = sub_10000D01C(0xD00000000000002BLL, 0x80000001004DEAF0, &v24);
    *(v13 + 12) = 2080;
    sub_100154014(&qword_1005A9198, &type metadata accessor for HandleType, &protocol conformance descriptor for HandleType);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v11 + 8);
    v17(v10, v12);
    v18 = sub_10000D01C(v14, v16, &v24);

    *(v13 + 14) = v18;
    *(v13 + 22) = 1026;
    *(v13 + 24) = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s type: %s shouldRefresh: %{BOOL,public}d", v13, 0x1Cu);
    swift_arrayDestroy();
  }

  else
  {

    v17 = *(v11 + 8);
    v17(v10, v12);
  }

  v0[237] = v17;
  v19 = swift_task_alloc();
  v0[238] = v19;
  *v19 = v0;
  v19[1] = sub_10014FE4C;
  v20 = v0[209];
  v21 = v0[193];
  v22 = v0[187];

  return sub_1001E3D9C(v22, v20, v21, 0);
}

uint64_t sub_10014FE4C()
{
  v1 = *(*v0 + 1808);

  return _swift_task_switch(sub_10014FF5C, v1, 0);
}

uint64_t sub_10014FF5C()
{
  v1 = v0[187];
  v2 = type metadata accessor for Friend();
  v0[239] = v2;
  v3 = *(v2 - 8);
  v4 = v3;
  v0[240] = v3;
  v6 = v3 + 48;
  v5 = *(v3 + 48);
  v0[241] = v5;
  v0[242] = v6 & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v5(v1, 1, v2) == 1)
  {
    sub_100002CE0(v1, &qword_1005A9188, &unk_1004D80D0);
    v7 = 1;
  }

  else
  {
    Friend.handle.getter();
    (*(v4 + 8))(v1, v2);
    v7 = 0;
  }

  v8 = v0[237];
  v9 = v0[205];
  v10 = v0[195];
  v11 = v0[193];
  v12 = v0[188];
  v13 = v0[189] + 8;
  v14 = *(v0[206] + 56);
  v0[243] = v14;
  v14(v10, v7, 1, v9);
  v0[244] = v13 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v11, v12);

  return _swift_task_switch(sub_1001500F0, 0, 0);
}

uint64_t sub_1001500F0()
{
  v1 = *(v0 + 1648);
  v2 = *(v0 + 1640);
  v3 = *(v0 + 1560);
  v4 = *(v1 + 48);
  *(v0 + 1960) = v4;
  *(v0 + 1968) = (v1 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v2) == 1)
  {
    sub_100002CE0(v3, &qword_1005B3360, &unk_1004C6AA0);
LABEL_15:
    v31 = *(v0 + 1808);
    (*(v0 + 1856))(*(v0 + 1528), *(v0 + 1992), *(v0 + 1504));
    v17 = sub_1001505A0;
    v18 = v31;
    goto LABEL_16;
  }

  (*(v1 + 32))(*(v0 + 1664), v3, v2);
  v5 = Handle.serverID.getter();
  if (!v6)
  {
    (*(*(v0 + 1648) + 8))(*(v0 + 1664), *(v0 + 1640));
    goto LABEL_15;
  }

  v7 = v6;
  v40 = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + 1848);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_1001FC900(0, *(v9 + 2) + 1, 1, *(v0 + 1848));
  }

  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1001FC900((v10 > 1), v11 + 1, 1, v9);
  }

  v12 = *(v0 + 1832);
  v13 = *(v0 + 1672);
  v14 = *(v0 + 1640);
  v15 = *(v0 + 1840) + 1;
  v16 = *(*(v0 + 1648) + 8);
  v16(*(v0 + 1664), v14);
  v17 = v16(v13, v14);
  *(v9 + 2) = v11 + 1;
  v20 = &v9[16 * v11];
  *(v20 + 4) = v40;
  *(v20 + 5) = v7;
  if (v15 != v12)
  {
    v32 = *(v0 + 1840) + 1;
    *(v0 + 1848) = v9;
    *(v0 + 1840) = v32;
    v33 = *(v0 + 1824);
    if (v32 >= *(v33 + 16))
    {
      __break(1u);
      return _swift_task_switch(v17, v18, v19);
    }

    v34 = *(v0 + 1988);
    v35 = *(v0 + 1808);
    v36 = *(v0 + 1544);
    v37 = *(v0 + 1512);
    v38 = *(v0 + 1504);
    (*(*(v0 + 1648) + 16))(*(v0 + 1672), v33 + ((*(v0 + 1984) + 32) & ~*(v0 + 1984)) + *(*(v0 + 1648) + 72) * v32, *(v0 + 1640));
    v39 = *(v37 + 104);
    *(v0 + 1856) = v39;
    *(v0 + 1864) = (v37 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v39(v36, v34, v38);
    v17 = sub_10014FB64;
    v18 = v35;
LABEL_16:
    v19 = 0;

    return _swift_task_switch(v17, v18, v19);
  }

  v21 = *(v0 + 1480);
  v22 = *(v0 + 1472);
  v23 = *(v0 + 1464);
  v24 = *(v9 + 2);
  v25 = FriendshipRequest.toHandles.getter();

  v26 = type metadata accessor for FriendshipRequestType();
  (*(*(v26 - 8) + 8))(v21, v26);
  v27 = type metadata accessor for FriendshipRequest();
  (*(*(v27 - 8) + 8))(v22, v27);
  sub_10015483C(v23, type metadata accessor for ClientContext);
  v28 = *(v25 + 16);

  if (v24 != v28)
  {

    v9 = 0;
  }

  *(*(v0 + 1456) + *(*(v0 + 1776) + 36)) = v9;

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_1001505A0()
{
  v18 = v0;
  (*(v0 + 1880))(*(v0 + 1520), *(v0 + 1528), *(v0 + 1504));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 1896);
  v5 = *(v0 + 1520);
  v6 = *(v0 + 1504);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v7 = 136446722;
    *(v7 + 4) = sub_10000D01C(0xD00000000000002BLL, 0x80000001004DEAF0, &v17);
    *(v7 + 12) = 2080;
    sub_100154014(&qword_1005A9198, &type metadata accessor for HandleType, &protocol conformance descriptor for HandleType);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;
    v4(v5, v6);
    v11 = sub_10000D01C(v8, v10, &v17);

    *(v7 + 14) = v11;
    *(v7 + 22) = 1026;
    *(v7 + 24) = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s type: %s shouldRefresh: %{BOOL,public}d", v7, 0x1Cu);
    swift_arrayDestroy();
  }

  else
  {

    v4(v5, v6);
  }

  v12 = swift_task_alloc();
  *(v0 + 1976) = v12;
  *v12 = v0;
  v12[1] = sub_100150800;
  v13 = *(v0 + 1672);
  v14 = *(v0 + 1528);
  v15 = *(v0 + 1488);

  return sub_1001E3D9C(v15, v13, v14, 0);
}

uint64_t sub_100150800()
{
  v1 = *(*v0 + 1808);

  return _swift_task_switch(sub_100150910, v1, 0);
}

uint64_t sub_100150910()
{
  v1 = *(v0 + 1912);
  v2 = *(v0 + 1488);
  if ((*(v0 + 1928))(v2, 1, v1) == 1)
  {
    sub_100002CE0(v2, &qword_1005A9188, &unk_1004D80D0);
    v3 = 1;
  }

  else
  {
    v4 = *(v0 + 1920);
    Friend.handle.getter();
    (*(v4 + 8))(v2, v1);
    v3 = 0;
  }

  v5 = *(v0 + 1896);
  v6 = *(v0 + 1528);
  v7 = *(v0 + 1504);
  (*(v0 + 1944))(*(v0 + 1552), v3, 1, *(v0 + 1640));
  v5(v6, v7);

  return _swift_task_switch(sub_100150A28, 0, 0);
}

uint64_t sub_100150A28()
{
  v1 = *(v0 + 1640);
  v2 = *(v0 + 1552);
  if ((*(v0 + 1960))(v2, 1, v1) == 1)
  {
    (*(*(v0 + 1648) + 8))(*(v0 + 1672), v1);

    sub_100002CE0(v2, &qword_1005B3360, &unk_1004C6AA0);
LABEL_11:
    v7 = *(v0 + 1848);
    goto LABEL_12;
  }

  (*(*(v0 + 1648) + 32))(*(v0 + 1656), v2, v1);
  v3 = Handle.serverID.getter();
  if (!v4)
  {
    v19 = *(v0 + 1672);
    v20 = *(v0 + 1656);
    v21 = *(v0 + 1648);
    v22 = *(v0 + 1640);

    v23 = *(v21 + 8);
    v23(v20, v22);
    v23(v19, v22);
    goto LABEL_11;
  }

  v5 = v4;
  v42 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + 1848);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_1001FC900(0, *(v7 + 2) + 1, 1, *(v0 + 1848));
  }

  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_1001FC900((v8 > 1), v9 + 1, 1, v7);
  }

  v10 = *(v0 + 1832);
  v11 = *(v0 + 1672);
  v12 = *(v0 + 1640);
  v13 = *(v0 + 1840) + 1;
  v14 = *(*(v0 + 1648) + 8);
  v14(*(v0 + 1656), v12);
  v15 = v14(v11, v12);
  *(v7 + 2) = v9 + 1;
  v18 = &v7[16 * v9];
  *(v18 + 4) = v42;
  *(v18 + 5) = v5;
  if (v13 == v10)
  {

LABEL_12:
    v24 = *(v0 + 1480);
    v25 = *(v0 + 1472);
    v26 = *(v0 + 1464);
    v27 = *(v7 + 2);
    v28 = FriendshipRequest.toHandles.getter();

    v29 = type metadata accessor for FriendshipRequestType();
    (*(*(v29 - 8) + 8))(v24, v29);
    v30 = type metadata accessor for FriendshipRequest();
    (*(*(v30 - 8) + 8))(v25, v30);
    sub_10015483C(v26, type metadata accessor for ClientContext);
    v31 = *(v28 + 16);

    if (v27 != v31)
    {

      v7 = 0;
    }

    *(*(v0 + 1456) + *(*(v0 + 1776) + 36)) = v7;

    v32 = *(v0 + 8);

    return v32();
  }

  v34 = *(v0 + 1840) + 1;
  *(v0 + 1848) = v7;
  *(v0 + 1840) = v34;
  v35 = *(v0 + 1824);
  if (v34 >= *(v35 + 16))
  {
    __break(1u);
  }

  else
  {
    v36 = *(v0 + 1988);
    v37 = *(v0 + 1808);
    v38 = *(v0 + 1544);
    v39 = *(v0 + 1512);
    v40 = *(v0 + 1504);
    (*(*(v0 + 1648) + 16))(*(v0 + 1672), v35 + ((*(v0 + 1984) + 32) & ~*(v0 + 1984)) + *(*(v0 + 1648) + 72) * v34, *(v0 + 1640));
    v41 = *(v39 + 104);
    *(v0 + 1856) = v41;
    *(v0 + 1864) = (v39 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v41(v38, v36, v40);
    v15 = sub_10014FB64;
    v16 = v37;
    v17 = 0;
  }

  return _swift_task_switch(v15, v16, v17);
}

uint64_t sub_100150EE4()
{
  v1 = v0[185];
  v2 = v0[184];
  v3 = v0[183];
  v4 = type metadata accessor for FriendshipRequestType();
  (*(*(v4 - 8) + 8))(v1, v4);
  v5 = type metadata accessor for FriendshipRequest();
  (*(*(v5 - 8) + 8))(v2, v5);
  sub_10015483C(v3, type metadata accessor for ClientContext);

  *(v0[182] + *(v0[222] + 36)) = 0;

  v6 = v0[1];

  return v6();
}

uint64_t sub_1001510DC(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v14 = a4;
  v8 = sub_10004B564(&qword_1005ACBA8, &qword_1004C7BD8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - v10;
  sub_100011AEC(a1, a1[3]);
  sub_100154CCC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = a2;
  v17 = 0;
  sub_10004B564(&qword_1005AC968, &qword_1004C7670);
  sub_10014D0DC(&qword_1005AC980, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v15 = a3;
    v16 = v14;
    v17 = 1;
    sub_10002CF44(a3, v14);
    sub_10010670C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10001A794(v15, v16);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1001512C4(uint64_t a1)
{
  v2 = sub_100154CCC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100151300(uint64_t a1)
{
  v2 = sub_100154CCC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10015133C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100154A68(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_10015138C(uint64_t a1)
{
  v2 = sub_10006DC3C();

  return RequestContentRepresentable.description.getter(a1, v2);
}

uint64_t sub_1001513C8(void *a1)
{
  v2 = v1;
  v4 = sub_10004B564(&qword_1005ACB80, &qword_1004C7BC0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21[-v6];
  sub_100011AEC(a1, a1[3]);
  sub_10015489C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8 = v2[7];
  v9 = v2[5];
  v49 = v2[6];
  v50 = v8;
  v10 = v2[7];
  v11 = v2[9];
  v51 = v2[8];
  v52 = v11;
  v12 = v2[3];
  v13 = v2[1];
  v45 = v2[2];
  v46 = v12;
  v14 = v2[3];
  v15 = v2[5];
  v47 = v2[4];
  v48 = v15;
  v16 = v2[1];
  v44[0] = *v2;
  v44[1] = v16;
  v40 = v49;
  v41 = v10;
  v17 = v2[9];
  v42 = v51;
  v43 = v17;
  v36 = v45;
  v37 = v14;
  v38 = v47;
  v39 = v9;
  v34 = v44[0];
  v35 = v13;
  v33 = 0;
  sub_100005F04(v44, &v23, &qword_1005A9328, &unk_1004C7F20);
  sub_100145258();
  v18 = v53;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v18)
  {
    v29 = v40;
    v30 = v41;
    v31 = v42;
    v32 = v43;
    v25 = v36;
    v26 = v37;
    v27 = v38;
    v28 = v39;
    v23 = v34;
    v24 = v35;
    sub_100002CE0(&v23, &qword_1005A9328, &unk_1004C7F20);
  }

  else
  {
    v29 = v40;
    v30 = v41;
    v31 = v42;
    v32 = v43;
    v25 = v36;
    v26 = v37;
    v27 = v38;
    v28 = v39;
    v23 = v34;
    v24 = v35;
    sub_100002CE0(&v23, &qword_1005A9328, &unk_1004C7F20);
    v19 = type metadata accessor for FriendshipOfferContent(0);
    LOBYTE(v22) = 1;
    type metadata accessor for ClientContext(0);
    sub_100154014(&qword_1005AC568, type metadata accessor for ClientContext, &unk_1004C9A18);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v22) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v22) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v22 = *(v2 + *(v19 + 32));
    v21[7] = 4;
    sub_10004B564(&qword_1005ACB68, &qword_1004C7BB8);
    sub_1001549AC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

void sub_100151758(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v23 = type metadata accessor for ClientContext(0);
  __chkstk_darwin(v23);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10004B564(&qword_1005ACB58, &qword_1004C7BB0);
  v24 = *(v5 - 8);
  v25 = v5;
  __chkstk_darwin(v5);
  v7 = &v22 - v6;
  v8 = type metadata accessor for FriendshipOfferContent(0);
  __chkstk_darwin(v8);
  v10 = (&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = a1[3];
  v40 = a1;
  sub_100011AEC(a1, v11);
  sub_10015489C();
  v12 = v26;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v12)
  {
    sub_100004984(v40);
  }

  else
  {
    v29 = 0;
    sub_1001452AC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v13 = v37;
    v10[6] = v36;
    v10[7] = v13;
    v14 = v39;
    v10[8] = v38;
    v10[9] = v14;
    v15 = v33;
    v10[2] = v32;
    v10[3] = v15;
    v16 = v35;
    v10[4] = v34;
    v10[5] = v16;
    v17 = v31;
    *v10 = v30;
    v10[1] = v17;
    LOBYTE(v28) = 1;
    sub_100154014(&qword_1005AC580, type metadata accessor for ClientContext, &unk_1004C9A40);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_100144E70(v4, v10 + v8[5]);
    LOBYTE(v28) = 2;
    KeyedDecodingContainer.decode(_:forKey:)();
    *(v10 + v8[6]) = v18;
    LOBYTE(v28) = 3;
    v19 = KeyedDecodingContainer.decode(_:forKey:)();
    v20 = (v10 + v8[7]);
    *v20 = v19;
    v20[1] = v21;
    sub_10004B564(&qword_1005ACB68, &qword_1004C7BB8);
    v27 = 4;
    sub_1001548F0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v24 + 8))(v7, v25);
    *(v10 + v8[8]) = v28;
    sub_1001547D4(v10, v22, type metadata accessor for FriendshipOfferContent);
    sub_100004984(v40);
    sub_10015483C(v10, type metadata accessor for FriendshipOfferContent);
  }
}

uint64_t sub_100151BF8()
{
  v1 = *v0;
  v2 = 0x6F43726576726573;
  v3 = 0x73657269707865;
  v4 = 0x644970756F7267;
  if (v1 != 3)
  {
    v4 = 0xD000000000000013;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6F43746E65696C63;
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

uint64_t sub_100151CA0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100155068(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100151CC8(uint64_t a1)
{
  v2 = sub_10015489C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100151D04(uint64_t a1)
{
  v2 = sub_10015489C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100151D70(void *a1)
{
  v2 = v1;
  v4 = sub_10004B564(&qword_1005ACB50, &qword_1004C7BA8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - v6;
  sub_100011AEC(a1, a1[3]);
  sub_100154780();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8 = v2[7];
  v9 = v2[5];
  v41 = v2[6];
  v42 = v8;
  v10 = v2[7];
  v11 = v2[9];
  v43 = v2[8];
  v44 = v11;
  v12 = v2[3];
  v13 = v2[1];
  v37 = v2[2];
  v38 = v12;
  v14 = v2[3];
  v15 = v2[5];
  v39 = v2[4];
  v40 = v15;
  v16 = v2[1];
  v36[0] = *v2;
  v36[1] = v16;
  v32 = v41;
  v33 = v10;
  v17 = v2[9];
  v34 = v43;
  v35 = v17;
  v28 = v37;
  v29 = v14;
  v30 = v39;
  v31 = v9;
  v26 = v36[0];
  v27 = v13;
  v25 = 0;
  sub_100005F04(v36, v24, &qword_1005A9328, &unk_1004C7F20);
  sub_100145258();
  v18 = v45;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v24[6] = v32;
  v24[7] = v33;
  v24[8] = v34;
  v24[9] = v35;
  v24[2] = v28;
  v24[3] = v29;
  v24[4] = v30;
  v24[5] = v31;
  v24[0] = v26;
  v24[1] = v27;
  sub_100002CE0(v24, &qword_1005A9328, &unk_1004C7F20);
  if (v18)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v19 = type metadata accessor for FriendshipRequestContent(0);
  LOBYTE(v23) = 1;
  type metadata accessor for ClientContext(0);
  sub_100154014(&qword_1005AC568, type metadata accessor for ClientContext, &unk_1004C9A18);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  LOBYTE(v23) = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v23) = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v23 = *(v2 + *(v19 + 32));
  HIBYTE(v22) = 4;
  v21 = sub_10004B564(&qword_1005A9630, &qword_1004C5680);
  sub_10001CCC4(&qword_1005A9EA8, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  v45 = v21;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v23 = *(v2 + *(v19 + 36));
  HIBYTE(v22) = 5;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  return (*(v5 + 8))(v7, 0);
}

void sub_100152178(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = type metadata accessor for ClientContext(0);
  __chkstk_darwin(v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10004B564(&qword_1005ACB40, &qword_1004C7BA0);
  v26 = *(v28 - 8);
  __chkstk_darwin(v28);
  v8 = &v24 - v7;
  v9 = type metadata accessor for FriendshipRequestContent(0);
  __chkstk_darwin(v9);
  v11 = (&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a1[3];
  v42 = a1;
  sub_100011AEC(a1, v12);
  sub_100154780();
  v27 = v8;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100004984(v42);
  }

  else
  {
    v31 = 0;
    sub_1001452AC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v13 = v39;
    v14 = v40;
    v11[6] = v38;
    v11[7] = v13;
    v15 = v41;
    v11[8] = v14;
    v11[9] = v15;
    v16 = v35;
    v11[2] = v34;
    v11[3] = v16;
    v17 = v37;
    v11[4] = v36;
    v11[5] = v17;
    v18 = v33;
    *v11 = v32;
    v11[1] = v18;
    LOBYTE(v30) = 1;
    sub_100154014(&qword_1005AC580, type metadata accessor for ClientContext, &unk_1004C9A40);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_100144E70(v6, v11 + v9[5]);
    LOBYTE(v30) = 2;
    v19 = v27;
    KeyedDecodingContainer.decode(_:forKey:)();
    *(v11 + v9[6]) = v20;
    LOBYTE(v30) = 3;
    v21 = KeyedDecodingContainer.decode(_:forKey:)();
    v22 = (v11 + v9[7]);
    *v22 = v21;
    v22[1] = v23;
    sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    v29 = 4;
    sub_10001CCC4(&qword_1005A9E80, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v11 + v9[8]) = v30;
    v29 = 5;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v26 + 8))(v19, v28);
    *(v11 + v9[9]) = v30;
    sub_1001547D4(v11, v25, type metadata accessor for FriendshipRequestContent);
    sub_100004984(v42);
    sub_10015483C(v11, type metadata accessor for FriendshipRequestContent);
  }
}