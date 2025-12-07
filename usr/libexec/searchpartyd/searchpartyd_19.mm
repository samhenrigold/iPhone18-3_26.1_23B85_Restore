uint64_t sub_100235874(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1002358B8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

void sub_100235908(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_1002359B8(319, &qword_10169A330, &type metadata for Data);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1002359B8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_100235A50()
{
  result = qword_10169A398;
  if (!qword_10169A398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A398);
  }

  return result;
}

unint64_t sub_100235AA8()
{
  result = qword_10169A3A0;
  if (!qword_10169A3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A3A0);
  }

  return result;
}

unint64_t sub_100235B00()
{
  result = qword_10169A3A8;
  if (!qword_10169A3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A3A8);
  }

  return result;
}

unint64_t sub_100235B54()
{
  result = qword_10169A3B8;
  if (!qword_10169A3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A3B8);
  }

  return result;
}

uint64_t sub_100235BA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100235C24()
{
  result = qword_10169A3C8;
  if (!qword_10169A3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A3C8);
  }

  return result;
}

unint64_t sub_100235C7C()
{
  result = qword_10169A3D0;
  if (!qword_10169A3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A3D0);
  }

  return result;
}

unint64_t sub_100235CD4()
{
  result = qword_10169A3D8;
  if (!qword_10169A3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A3D8);
  }

  return result;
}

uint64_t sub_100235D28@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074660(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100235D54@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10107467C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100235D80()
{
  v1 = OBJC_IVAR____TtC12searchpartyd23FirmwareUpdateScheduler____lazy_storage___updateScheduler;
  if (*(v0 + OBJC_IVAR____TtC12searchpartyd23FirmwareUpdateScheduler____lazy_storage___updateScheduler))
  {
    v2 = *(v0 + OBJC_IVAR____TtC12searchpartyd23FirmwareUpdateScheduler____lazy_storage___updateScheduler);
LABEL_8:

    return v2;
  }

  v3 = v0;
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  v4 = sub_101074660(v11);

  v6 = (v4 * 60) >> 64;
  v7 = 60 * v4;
  if (v6 == v7 >> 63)
  {
    OS_dispatch_queue.sync<A>(execute:)();
    v8 = sub_10107467C(v11);

    if ((v8 * 60) >> 64 == (60 * v8) >> 63)
    {
      v9 = (60 * v8);
      v10 = swift_allocObject();
      swift_weakInit();
      type metadata accessor for XPCScheduler();
      v2 = swift_allocObject();
      *(v2 + 64) = v10;
      *(v2 + 72) = 0;
      *(v2 + 16) = 0xD000000000000015;
      *(v2 + 24) = 0x800000010134D850;
      *(v2 + 32) = 0x3FF0000000000000;
      *(v2 + 40) = v7;
      *(v2 + 48) = v9;
      *(v2 + 56) = sub_100237198;
      swift_retain_n();
      sub_10073C0D8();

      *(v3 + v1) = v2;

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

uint64_t sub_100235F98(uint64_t a1)
{
  v2 = v1;
  v22 = a1;
  v3 = sub_1000BC4D4(&qword_1016B28A0, &unk_101393D00);
  __chkstk_darwin(v3 - 8);
  v23 = &v19 - v4;
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC12searchpartyd23FirmwareUpdateScheduler_configSubscription;
  v12 = sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  v13 = *(v12 - 8);
  v20 = *(v13 + 56);
  v21 = v12;
  v19 = v13 + 56;
  v20(v1 + v11, 1, 1);
  v14 = OBJC_IVAR____TtC12searchpartyd23FirmwareUpdateScheduler_configurationChangedQueue;
  sub_1000BC488();
  (*(v8 + 104))(v10, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v7);
  static DispatchQoS.unspecified.getter();
  v24[0] = _swiftEmptyArrayStorage;
  sub_100237258();
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000BC51C();
  v15 = v22;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v1 + v14) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v1 + OBJC_IVAR____TtC12searchpartyd23FirmwareUpdateScheduler____lazy_storage___updateScheduler) = 0;
  *(v1 + 16) = v15;

  sub_100235D80();

  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v24[3] = type metadata accessor for FirmwareUpdateScheduler(0);
  v24[4] = &off_101613EE8;
  v24[0] = v1;

  v16 = v23;
  sub_10014F468(v24, v23);

  sub_100007BAC(v24);
  (v20)(v16, 0, 1, v21);
  v17 = OBJC_IVAR____TtC12searchpartyd23FirmwareUpdateScheduler_configSubscription;
  swift_beginAccess();
  sub_1002372B0(v16, v2 + v17);
  swift_endAccess();
  return v2;
}

uint64_t sub_10023634C(uint64_t a1)
{
  v1 = static os_log_type_t.default.getter();
  if (qword_1016950B8 != -1)
  {
    swift_once();
  }

  v2 = qword_10177C400;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10138BBE0;
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  v4 = sub_101074660(v13);

  if ((v4 * 60) >> 64 == (60 * v4) >> 63)
  {
    v6 = Double.description.getter();
    v8 = v7;
    *(v3 + 56) = &type metadata for String;
    v9 = sub_100008C00();
    *(v3 + 64) = v9;
    *(v3 + 32) = v6;
    *(v3 + 40) = v8;
    OS_dispatch_queue.sync<A>(execute:)();
    v10 = sub_10107467C(v13);

    if ((v10 * 60) >> 64 == (60 * v10) >> 63)
    {
      v11 = Double.description.getter();
      *(v3 + 96) = &type metadata for String;
      *(v3 + 104) = v9;
      *(v3 + 72) = v11;
      *(v3 + 80) = v12;
      os_log(_:dso:log:_:_:)(v1, &_mh_execute_header, v2, "Scheduling firmware update check with frequency: %@, grace period: %@", 69, 2, v3);

      sub_100235D80();
      sub_10073C0D8();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100236584(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100236620, 0, 0);
}

uint64_t sub_100236620(uint64_t a1)
{
  v2 = static os_log_type_t.default.getter();
  if (qword_1016950B8 != -1)
  {
    v5 = v2;
    swift_once();
    v2 = v5;
  }

  v3 = *(v1 + 16);
  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, qword_10177C400, "XPC Scheduler fired: Checking firmware update", 45, 2, _swiftEmptyArrayStorage);
  v4 = *(v3 + 16);
  *(v1 + 32) = v4;

  return _swift_task_switch(sub_1002366F4, v4, 0);
}

uint64_t sub_1002366F4()
{
  v1 = *(v0 + 24);
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  sub_100251FF8(2, v1);
  sub_10000B3A8(v1, &qword_1016980D0, &unk_10138F3B0);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1002367BC()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC12searchpartyd23FirmwareUpdateScheduler_configurationChangedQueue);
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1002370D0;
  *(v5 + 24) = v4;
  v8[4] = sub_1000D2FB0;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10013FE14;
  v8[3] = &unk_101613F70;
  v6 = _Block_copy(v8);

  dispatch_sync(v2, v6);
  _Block_release(v6);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10023693C(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100235D80();

    sub_10073B7C8();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    OS_dispatch_queue.sync<A>(execute:)();
    v4 = sub_101074660(v9);

    v5 = (v4 * 60) >> 64;
    v6 = 60 * v4;
    if (v5 == v6 >> 63)
    {
      OS_dispatch_queue.sync<A>(execute:)();
      v7 = sub_10107467C(v9);

      if ((v7 * 60) >> 64 == (60 * v7) >> 63)
      {
        type metadata accessor for XPCScheduler();
        v8 = swift_allocObject();
        *(v8 + 64) = a1;
        *(v8 + 72) = 0;
        *(v8 + 16) = 0xD000000000000015;
        *(v8 + 24) = 0x800000010134D850;
        *(v8 + 32) = 0x3FF0000000000000;
        *(v8 + 40) = v6;
        *(v8 + 48) = (60 * v7);
        *(v8 + 56) = sub_1002370D8;
        swift_retain_n();
        sub_10073C0D8();

        *(v3 + OBJC_IVAR____TtC12searchpartyd23FirmwareUpdateScheduler____lazy_storage___updateScheduler) = v8;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100236B78(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for Transaction();

    static Transaction.asyncTask(name:block:)();
  }

  return result;
}

uint64_t sub_100236C0C()
{

  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd23FirmwareUpdateScheduler_configSubscription, &qword_1016B28A0, &unk_101393D00);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FirmwareUpdateScheduler(uint64_t a1)
{
  result = qword_10169A420;
  if (!qword_10169A420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100236CFC(uint64_t a1)
{
  sub_100236DB4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100236DB4(uint64_t a1)
{
  if (!qword_10169A430)
  {
    sub_1000BC580(&qword_1016B1E70, &qword_10138CDB0);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10169A430);
    }
  }
}

uint64_t sub_100236E40(uint64_t a1)
{
  type metadata accessor for AnyKeyPath();
  swift_getKeyPath();
  v1 = static AnyKeyPath.== infix(_:_:)();

  if (v1 & 1) != 0 || (swift_getKeyPath(), v2 = static AnyKeyPath.== infix(_:_:)(), result = , (v2))
  {
    v4 = static os_log_type_t.default.getter();
    if (qword_1016950B8 != -1)
    {
      swift_once();
    }

    v5 = qword_10177C400;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_10138BBE0;
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    OS_dispatch_queue.sync<A>(execute:)();
    v7 = sub_101074660(v15);

    if ((v7 * 60) >> 64 == (60 * v7) >> 63)
    {
      v8 = Double.description.getter();
      v10 = v9;
      *(v6 + 56) = &type metadata for String;
      v11 = sub_100008C00();
      *(v6 + 64) = v11;
      *(v6 + 32) = v8;
      *(v6 + 40) = v10;
      OS_dispatch_queue.sync<A>(execute:)();
      v12 = sub_10107467C(v15);

      if ((v12 * 60) >> 64 == (60 * v12) >> 63)
      {
        v13 = Double.description.getter();
        *(v6 + 96) = &type metadata for String;
        *(v6 + 104) = v11;
        *(v6 + 72) = v13;
        *(v6 + 80) = v14;
        os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v5, "Schedule configuration changed. Re-scheduling firmware update check with frequency: %@, grace period: %@", 104, 2, v6);

        return sub_1002367BC();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100237108()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014744;

  return sub_100236584(v0);
}

uint64_t sub_1002371C8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014650;

  return sub_100236584(v0);
}

unint64_t sub_100237258()
{
  result = qword_10169BB60;
  if (!qword_10169BB60)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169BB60);
  }

  return result;
}

uint64_t sub_1002372B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016B28A0, &unk_101393D00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100237320(uint64_t a1, char a2)
{
  *(v3 + 264) = a2;
  *(v3 + 40) = a1;
  *(v3 + 48) = v2;
  *(v3 + 56) = sub_1000BC4D4(&unk_101698CA0, &unk_101393DB0);
  *(v3 + 64) = swift_task_alloc();
  *(v3 + 72) = sub_1000BC4D4(&qword_1016975B8, &unk_10138C1B0);
  *(v3 + 80) = swift_task_alloc();
  type metadata accessor for OwnerSharingCircle(0);
  *(v3 + 88) = swift_task_alloc();
  type metadata accessor for OwnerPeerTrust(0);
  *(v3 + 96) = swift_task_alloc();
  sub_1000BC4D4(&unk_101698BC0, &qword_10138C440);
  *(v3 + 104) = swift_task_alloc();
  v4 = type metadata accessor for MemberSharingCircle(0);
  *(v3 + 112) = v4;
  *(v3 + 120) = *(v4 - 8);
  *(v3 + 128) = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  *(v3 + 136) = v5;
  v6 = *(v5 - 8);
  *(v3 + 144) = v6;
  *(v3 + 152) = *(v6 + 64);
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 168) = swift_task_alloc();

  return _swift_task_switch(sub_10023755C, v2, 0);
}

uint64_t sub_10023755C()
{
  v22 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[5];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177A560);
  v6 = *(v3 + 16);
  v0[22] = v6;
  v0[23] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[21];
  v11 = v0[17];
  v12 = v0[18];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_10024375C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v12 + 8))(v10, v11);
    v18 = sub_1000136BC(v15, v17, &v21);

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Decline %{private,mask.hash}s", v13, 0x16u);
    sub_100007BAC(v14);
  }

  else
  {

    (*(v12 + 8))(v10, v11);
  }

  v19 = *(v0[6] + 112);
  v0[24] = v19;

  return _swift_task_switch(sub_1002377C0, v19, 0);
}

uint64_t sub_1002377C0()
{

  v1 = swift_task_alloc();
  *(v0 + 200) = v1;
  v2 = sub_1000BC4D4(&unk_101698C40, &qword_10138C1C0);
  *v1 = v0;
  v1[1] = sub_1002378AC;
  v3 = *(v0 + 192);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_10012B4B8, v3, v2);
}

uint64_t sub_1002378AC()
{
  v1 = *(*v0 + 192);

  return _swift_task_switch(sub_1002379C4, v1, 0);
}

uint64_t sub_1002379C4()
{
  v1 = v0[6];
  v0[26] = v0[2];
  return _swift_task_switch(sub_1002379E8, v1, 0);
}

uint64_t sub_1002379E8()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = *(v0 + 104);
  v5 = *(v0 + 40);
  *(swift_task_alloc() + 16) = v5;
  sub_1012BBB68(sub_1002439F0, v1, v4);

  v6 = (*(v3 + 48))(v4, 1, v2);
  v7 = *(v0 + 104);
  if (v6 == 1)
  {
    v8 = *(v0 + 192);
    sub_10000B3A8(v7, &unk_101698BC0, &qword_10138C440);

    return _swift_task_switch(sub_100237CC8, v8, 0);
  }

  else
  {
    sub_1002437B0(v7, *(v0 + 128), type metadata accessor for MemberSharingCircle);
    v9 = swift_task_alloc();
    *(v0 + 216) = v9;
    *v9 = v0;
    v9[1] = sub_100237B9C;
    v10 = *(v0 + 128);
    v11 = *(v0 + 264);

    return sub_100238420(v10, v11, 0);
  }
}

uint64_t sub_100237B9C()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_100243A0C;
  }

  else
  {
    v4 = sub_1002439C8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100237CC8()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 160);
  v3 = *(v0 + 136);
  v4 = *(v0 + 144);
  (*(v0 + 176))(v2, *(v0 + 40), v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v0 + 232) = v6;
  *(v6 + 16) = v1;
  (*(v4 + 32))(v6 + v5, v2, v3);

  v7 = swift_task_alloc();
  *(v0 + 240) = v7;
  *v7 = v0;
  v7[1] = sub_100237E14;
  v9 = *(v0 + 56);
  v8 = *(v0 + 64);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_1002439EC, v6, v9);
}

uint64_t sub_100237E14()
{
  v1 = *(*v0 + 48);

  return _swift_task_switch(sub_100237F40, v1, 0);
}

uint64_t sub_100237F40()
{
  v1 = *(v0 + 64);
  v2 = sub_1000BC4D4(&qword_101698CB0, &qword_10138C1C8);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &unk_101698CA0, &unk_101393DB0);
    type metadata accessor for SPBeaconSharingError(0);
    *(v0 + 32) = 5;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_10024375C(&qword_101696340, type metadata accessor for SPBeaconSharingError, &unk_10138A4B4);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v6 = *(v0 + 88);
    v5 = *(v0 + 96);
    v8 = *(v0 + 72);
    v7 = *(v0 + 80);
    v9 = *(v2 + 48);
    v10 = *(v8 + 48);
    sub_1002437B0(v1, v7, type metadata accessor for OwnerPeerTrust);
    sub_1002437B0(v1 + v9, v7 + v10, type metadata accessor for OwnerSharingCircle);
    v11 = *(v8 + 48);
    sub_1002437B0(v7, v5, type metadata accessor for OwnerPeerTrust);
    sub_1002437B0(v7 + v11, v6, type metadata accessor for OwnerSharingCircle);
    v12 = swift_task_alloc();
    *(v0 + 248) = v12;
    *v12 = v0;
    v12[1] = sub_1002381F8;
    v14 = *(v0 + 88);
    v13 = *(v0 + 96);
    v15 = *(v0 + 264);

    return sub_10023BC50(v14, v13, v15);
  }
}

uint64_t sub_1002381F8()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_100238324;
  }

  else
  {
    v4 = sub_1002439E4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100238324()
{
  v1 = v0[12];
  sub_100243818(v0[11], type metadata accessor for OwnerSharingCircle);
  sub_100243818(v1, type metadata accessor for OwnerPeerTrust);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100238420(uint64_t a1, char a2, char a3)
{
  *(v4 + 745) = a3;
  *(v4 + 744) = a2;
  *(v4 + 240) = a1;
  *(v4 + 248) = v3;
  v5 = type metadata accessor for SharedBeaconRecord(0);
  *(v4 + 256) = v5;
  *(v4 + 264) = *(v5 - 8);
  *(v4 + 272) = swift_task_alloc();
  sub_1000BC4D4(&qword_1016975C8, &qword_10138C1F0);
  *(v4 + 280) = swift_task_alloc();
  *(v4 + 288) = sub_1000BC4D4(&qword_10169A608, &unk_1013BCC20);
  *(v4 + 296) = swift_task_alloc();
  *(v4 + 304) = swift_task_alloc();
  *(v4 + 312) = swift_task_alloc();
  *(v4 + 320) = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  *(v4 + 328) = swift_task_alloc();
  *(v4 + 336) = swift_task_alloc();
  *(v4 + 344) = sub_1000BC4D4(&unk_101698BC0, &qword_10138C440);
  *(v4 + 352) = swift_task_alloc();
  v6 = type metadata accessor for MemberSharingCircle(0);
  *(v4 + 360) = v6;
  v7 = *(v6 - 8);
  *(v4 + 368) = v7;
  *(v4 + 376) = *(v7 + 64);
  *(v4 + 384) = swift_task_alloc();
  *(v4 + 392) = swift_task_alloc();
  *(v4 + 400) = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  *(v4 + 408) = v8;
  v9 = *(v8 - 8);
  *(v4 + 416) = v9;
  *(v4 + 424) = *(v9 + 64);
  *(v4 + 432) = swift_task_alloc();
  *(v4 + 440) = sub_1000BC4D4(&qword_101698C10, &unk_10138C1E0);
  *(v4 + 448) = swift_task_alloc();
  v10 = type metadata accessor for MemberPeerTrust(0);
  *(v4 + 456) = v10;
  *(v4 + 464) = *(v10 - 8);
  *(v4 + 472) = swift_task_alloc();
  *(v4 + 480) = swift_task_alloc();
  *(v4 + 488) = swift_task_alloc();

  return _swift_task_switch(sub_100238788, v3, 0);
}

uint64_t sub_100238788()
{
  v1 = *(v0 + 360);
  v2 = *(*(v0 + 248) + 112);
  *(v0 + 496) = v2;
  *(v0 + 712) = *(v1 + 32);
  return _swift_task_switch(sub_1002387B8, v2, 0);
}

uint64_t sub_1002387B8()
{
  v1 = *(v0 + 712);
  v2 = *(v0 + 496);
  v3 = *(v0 + 432);
  v4 = *(v0 + 408);
  v5 = *(v0 + 416);
  v6 = *(v0 + 240);
  v7 = *(v5 + 16);
  *(v0 + 504) = v7;
  *(v0 + 512) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v3, v6 + v1, v4);
  v8 = *(v5 + 80);
  *(v0 + 716) = v8;
  v9 = (v8 + 24) & ~v8;
  v10 = swift_allocObject();
  *(v0 + 520) = v10;
  *(v10 + 16) = v2;
  v11 = *(v5 + 32);
  *(v0 + 528) = v11;
  *(v0 + 536) = (v5 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v11(v10 + v9, v3, v4);

  v12 = swift_task_alloc();
  *(v0 + 544) = v12;
  *v12 = v0;
  v12[1] = sub_100238944;
  v14 = *(v0 + 440);
  v13 = *(v0 + 448);

  return unsafeBlocking<A>(context:_:)(v13, 0xD000000000000010, 0x800000010134A8C0, sub_1002436BC, v10, v14);
}

uint64_t sub_100238944()
{
  v1 = *(*v0 + 248);

  return _swift_task_switch(sub_100238A70, v1, 0);
}

uint64_t sub_100238A70()
{
  v48 = v0;
  v1 = *(v0 + 448);
  if ((*(*(v0 + 464) + 48))(v1, 1, *(v0 + 456)) == 1)
  {
    sub_10000B3A8(v1, &qword_101698C10, &unk_10138C1E0);
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 384);
    v3 = *(v0 + 240);
    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177A560);
    sub_100243878(v3, v2, type metadata accessor for MemberSharingCircle);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 384);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v47 = v9;
      *v8 = 136315138;
      sub_10024375C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v10 = dispatch thunk of CustomStringConvertible.description.getter();
      v12 = v11;
      sub_100243818(v7, type metadata accessor for MemberSharingCircle);
      v13 = sub_1000136BC(v10, v12, &v47);

      *(v8 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v5, v6, "No peerTrustIdentifier for %s", v8, 0xCu);
      sub_100007BAC(v9);
    }

    else
    {
      v16 = *(v0 + 384);

      sub_100243818(v16, type metadata accessor for MemberSharingCircle);
    }

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    v14 = *(v0 + 744);
    sub_1002437B0(v1, *(v0 + 488), type metadata accessor for MemberPeerTrust);
    if (v14)
    {
      *(v0 + 584) = 0;
      v15 = *(v0 + 496);
      *(v0 + 720) = *(*(v0 + 360) + 20);

      return _swift_task_switch(sub_1002394A4, v15, 0);
    }

    else
    {
      if (qword_101694480 != -1)
      {
        swift_once();
      }

      v18 = *(v0 + 480);
      v19 = *(v0 + 488);
      v20 = *(v0 + 472);
      v21 = type metadata accessor for Logger();
      *(v0 + 552) = sub_1000076D4(v21, qword_10177A560);
      sub_100243878(v19, v18, type metadata accessor for MemberPeerTrust);
      sub_100243878(v19, v20, type metadata accessor for MemberPeerTrust);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();
      v24 = os_log_type_enabled(v22, v23);
      v25 = *(v0 + 472);
      v26 = *(v0 + 480);
      if (v24)
      {
        v27 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *v27 = 136315394;
        sub_10024375C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v28 = dispatch thunk of CustomStringConvertible.description.getter();
        v30 = v29;
        sub_100243818(v26, type metadata accessor for MemberPeerTrust);
        v31 = sub_1000136BC(v28, v30, &v47);

        *(v27 + 4) = v31;
        *(v27 + 12) = 2080;
        v32 = sub_100988F40();
        v34 = v33;
        sub_100243818(v25, type metadata accessor for MemberPeerTrust);
        v35 = sub_1000136BC(v32, v34, &v47);

        *(v27 + 14) = v35;
        _os_log_impl(&_mh_execute_header, v22, v23, "Declining share from peerTrustIdentifier: %s,\ncommunicationsIdentifier: %s.", v27, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_100243818(v25, type metadata accessor for MemberPeerTrust);
        sub_100243818(v26, type metadata accessor for MemberPeerTrust);
      }

      v36 = *(v0 + 504);
      v37 = *(v0 + 488);
      v38 = *(v0 + 456);
      v39 = *(v0 + 408);
      v41 = *(v0 + 240);
      v40 = *(v0 + 248);
      v42 = *(*(v0 + 360) + 28);
      *(v0 + 40) = type metadata accessor for CircleTrustDeclineEnvelopeV1(0);
      *(v0 + 48) = sub_10024375C(&qword_10169A610, type metadata accessor for CircleTrustDeclineEnvelopeV1, &unk_1013AE228);
      *(v0 + 56) = sub_10024375C(&qword_10169A618, type metadata accessor for CircleTrustDeclineEnvelopeV1, &unk_1013AE2C8);
      v43 = sub_1000280DC((v0 + 16));
      v36(v43, v41 + v42, v39);
      v44 = *(v38 + 28);
      v45 = swift_task_alloc();
      *(v0 + 560) = v45;
      *v45 = v0;
      v45[1] = sub_1002391C8;

      return sub_10129B0F0(v40 + 120, v0 + 16, 4, v37 + v44);
    }
  }
}

uint64_t sub_1002391C8()
{
  v2 = *v1;
  v2[71] = v0;

  if (v0)
  {
    v3 = v2[31];

    return _swift_task_switch(sub_10023B910, v3, 0);
  }

  else
  {
    sub_100007BAC(v2 + 2);
    v4 = swift_task_alloc();
    v2[72] = v4;
    *v4 = v2;
    v4[1] = sub_10023935C;

    return sub_100EC7D34(0, 0);
  }
}

uint64_t sub_10023935C()
{
  v1 = *v0;

  *(v1 + 584) = *(v1 + 568);
  v2 = *(v1 + 496);
  *(v1 + 720) = *(*(v1 + 360) + 20);

  return _swift_task_switch(sub_1002394A4, v2, 0);
}

uint64_t sub_1002394A4()
{
  v1 = *(v0 + 528);
  v2 = *(v0 + 496);
  v3 = *(v0 + 432);
  v4 = *(v0 + 408);
  v5 = (*(v0 + 716) + 24) & ~*(v0 + 716);
  (*(v0 + 504))(v3, *(v0 + 240) + *(v0 + 720), v4);
  v6 = swift_allocObject();
  *(v0 + 592) = v6;
  *(v6 + 16) = v2;
  v1(v6 + v5, v3, v4);

  v7 = swift_task_alloc();
  *(v0 + 600) = v7;
  *v7 = v0;
  v7[1] = sub_1002395FC;
  v9 = *(v0 + 344);
  v8 = *(v0 + 352);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_1002436E8, v6, v9);
}

uint64_t sub_1002395FC()
{
  v1 = *(*v0 + 248);

  return _swift_task_switch(sub_100239728, v1, 0);
}

uint64_t sub_100239728()
{
  v17 = v0;
  v1 = *(v0 + 360);
  v2 = *(v0 + 352);
  if ((*(*(v0 + 368) + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &unk_101698BC0, &qword_10138C440);
    type metadata accessor for SPBeaconSharingError(0);
    *(v0 + 216) = 5;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_10024375C(&qword_101696340, type metadata accessor for SPBeaconSharingError, &unk_10138A4B4);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177A560);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v16 = v7;
      *v6 = 136315138;
      swift_getErrorValue();
      v8 = Error.localizedDescription.getter();
      v10 = sub_1000136BC(v8, v9, &v16);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "Failure on share decline, iCloud Data update: %s", v6, 0xCu);
      sub_100007BAC(v7);
    }

    v11 = *(v0 + 488);
    if (*(v0 + 745))
    {
      sub_100243818(*(v0 + 488), type metadata accessor for MemberPeerTrust);
    }

    else
    {
      sub_1001118C8();
      swift_allocError();
      *v14 = 1;
      swift_willThrow();

      sub_100243818(v11, type metadata accessor for MemberPeerTrust);
    }

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    v13 = *(v0 + 496);
    sub_1002437B0(v2, *(v0 + 400), type metadata accessor for MemberSharingCircle);
    *(v0 + 724) = *(v1 + 24);

    return _swift_task_switch(sub_100239C0C, v13, 0);
  }
}

uint64_t sub_100239C0C()
{
  v1 = *(v0 + 528);
  v2 = *(v0 + 496);
  v3 = *(v0 + 432);
  v4 = *(v0 + 408);
  v5 = (*(v0 + 716) + 24) & ~*(v0 + 716);
  (*(v0 + 504))(v3, *(v0 + 400) + *(v0 + 724), v4);
  v6 = swift_allocObject();
  *(v0 + 608) = v6;
  *(v6 + 16) = v2;
  v1(v6 + v5, v3, v4);

  v7 = swift_task_alloc();
  *(v0 + 616) = v7;
  *v7 = v0;
  v7[1] = sub_100239D64;
  v8 = *(v0 + 336);
  v9 = *(v0 + 320);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_1002439E8, v6, v9);
}

uint64_t sub_100239D64()
{
  v1 = *v0;
  v2 = *(*v0 + 496);
  v3 = *(*v0 + 288);

  v1[182] = v3[12];
  v1[183] = v3[16];
  v1[184] = v3[20];
  v1[185] = v3[24];

  return _swift_task_switch(sub_100239ECC, v2, 0);
}

uint64_t sub_100239ECC()
{
  v1 = v0[62];
  v2 = v0[49];
  v3 = v0[46];
  sub_100243878(v0[50], v2, type metadata accessor for MemberSharingCircle);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = swift_allocObject();
  v0[78] = v5;
  *(v5 + 16) = v1;
  sub_1002437B0(v2, v5 + v4, type metadata accessor for MemberSharingCircle);

  v6 = swift_task_alloc();
  v0[79] = v6;
  *v6 = v0;
  v6[1] = sub_10023A020;
  v7 = v0[38];
  v8 = v0[36];

  return unsafeBlocking<A>(context:_:)(v7, 0xD000000000000010, 0x800000010134A8C0, sub_100243714, v5, v8);
}

uint64_t sub_10023A020()
{
  v1 = *(*v0 + 496);

  return _swift_task_switch(sub_10023A14C, v1, 0);
}

uint64_t sub_10023A14C()
{
  v1 = *(v0 + 732);
  v2 = *(v0 + 728);
  v3 = *(v0 + 304);
  v4 = *(v0 + 312);
  v5 = *(v0 + 288);
  v6 = *(v0 + 248);
  v7 = v5[12];
  v8 = v5[16];
  *(v0 + 640) = *(v3 + v5[20]);
  *(v0 + 648) = *(v3 + v5[24]);
  sub_1002437B0(v3, v4, type metadata accessor for MemberSharingCircle);
  sub_1000D2AD8(v3 + v7, v4 + v2, &unk_101698C30, &unk_101392630);
  sub_1000D2AD8(v3 + v8, v4 + v1, &unk_1016B29E0, &unk_1013B70E0);

  return _swift_task_switch(sub_10023A250, v6, 0);
}

uint64_t sub_10023A250()
{
  v49 = v0;
  v1 = *(v0 + 648);
  v2 = *(v0 + 740);
  v3 = *(v0 + 312);
  *(v3 + *(v0 + 736)) = *(v0 + 640);
  *(v3 + v2) = v1;
  p_weak_ivar_lyt = &BeaconKeyManager.weak_ivar_lyt;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 312);
  v6 = *(v0 + 296);
  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177A560);
  sub_1000D2A70(v5, v6, &qword_10169A608, &unk_1013BCC20);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v43 = *(v0 + 504);
    v46 = v9;
    v10 = *(v0 + 432);
    v47 = v7;
    v12 = *(v0 + 408);
    v11 = *(v0 + 416);
    v42 = *(v0 + 360);
    v13 = *(v0 + 296);
    v14 = *(v0 + 304);
    v44 = v13;
    v15 = *(v0 + 288);
    v16 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v48[0] = v45;
    *v16 = 141558275;
    *(v16 + 4) = 1752392040;
    *(v16 + 12) = 2081;
    sub_1000D2A70(v13, v14, &qword_10169A608, &unk_1013BCC20);
    v17 = *(v15 + 48);
    v18 = *(v15 + 64);

    p_weak_ivar_lyt = (&BeaconKeyManager + 56);

    v43(v10, v14 + *(v42 + 20), v12);
    sub_100243818(v14, type metadata accessor for MemberSharingCircle);
    sub_10000B3A8(v14 + v18, &unk_1016B29E0, &unk_1013B70E0);
    sub_10000B3A8(v14 + v17, &unk_101698C30, &unk_101392630);
    sub_10024375C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    (*(v11 + 8))(v10, v12);
    v7 = v47;
    sub_10000B3A8(v44, &qword_10169A608, &unk_1013BCC20);
    v22 = sub_1000136BC(v19, v21, v48);

    *(v16 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v8, v46, "Data update on decline. Delete %{private,mask.hash}s", v16, 0x16u);
    sub_100007BAC(v45);
  }

  else
  {
    v23 = *(v0 + 296);

    sub_10000B3A8(v23, &qword_10169A608, &unk_1013BCC20);
  }

  v24 = *(v0 + 584);
  v25 = *(v0 + 312);
  v26 = *(v0 + 280);
  *(swift_task_alloc() + 16) = v25;
  sub_100EC0C48(sub_100243740, v26);
  if (v24)
  {
    v27 = *(v0 + 400);
    v28 = *(v0 + 336);
    v29 = *(v0 + 312);

    sub_10000B3A8(v28, &unk_101698C30, &unk_101392630);
    sub_100243818(v27, type metadata accessor for MemberSharingCircle);
    sub_10000B3A8(v29, &qword_10169A608, &unk_1013BCC20);
    if (p_weak_ivar_lyt[144] != -1)
    {
      swift_once();
    }

    sub_1000076D4(v7, qword_10177A560);
    swift_errorRetain();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v48[0] = v33;
      *v32 = 136315138;
      swift_getErrorValue();
      v34 = Error.localizedDescription.getter();
      v36 = sub_1000136BC(v34, v35, v48);

      *(v32 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v30, v31, "Failure on share decline, iCloud Data update: %s", v32, 0xCu);
      sub_100007BAC(v33);
    }

    v37 = *(v0 + 488);
    if (*(v0 + 745))
    {
      sub_100243818(*(v0 + 488), type metadata accessor for MemberPeerTrust);
    }

    else
    {
      sub_1001118C8();
      swift_allocError();
      *v40 = 1;
      swift_willThrow();

      sub_100243818(v37, type metadata accessor for MemberPeerTrust);
    }

    v38 = *(v0 + 8);

    return v38();
  }

  else
  {
    v39 = *(v0 + 496);

    return _swift_task_switch(sub_10023A9C8, v39, 0);
  }
}

uint64_t sub_10023A9F0()
{
  v1 = v0[82];
  v2 = v0[35];
  v3 = swift_task_alloc();
  v0[83] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[84] = v4;
  *v4 = v0;
  v4[1] = sub_10023AAE8;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000011, 0x800000010134B790, sub_10011191C, v3, &type metadata for () + 1);
}

uint64_t sub_10023AAE8()
{
  *(*v1 + 680) = v0;

  if (v0)
  {
    v2 = sub_10023AD8C;
  }

  else
  {

    v2 = sub_10023AC04;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10023AC20()
{
  v1 = v0[41];
  v2 = v0[32];
  v3 = v0[33];
  sub_1000D2A70(v0[42], v1, &unk_101698C30, &unk_101392630);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v0[41], &unk_101698C30, &unk_101392630);
    v4 = v0[62];
    v5 = sub_10023B544;
  }

  else
  {
    v6 = v0[62];
    v7 = v0[34];
    v8 = v0[32];
    sub_1002437B0(v0[41], v7, type metadata accessor for SharedBeaconRecord);
    v0[11] = v8;
    v0[12] = sub_10024375C(&qword_101698D80, type metadata accessor for SharedBeaconRecord, &unk_10140BB3C);
    v9 = sub_1000280DC(v0 + 8);
    sub_100243878(v7, v9, type metadata accessor for SharedBeaconRecord);
    v5 = sub_10023B214;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10023AD8C()
{
  v1 = *(v0 + 248);

  return _swift_task_switch(sub_10023ADF8, v1, 0);
}

uint64_t sub_10023ADF8()
{
  v17 = v0;
  v1 = *(v0 + 400);
  v2 = *(v0 + 312);
  v3 = *(v0 + 280);
  sub_10000B3A8(*(v0 + 336), &unk_101698C30, &unk_101392630);
  sub_100243818(v1, type metadata accessor for MemberSharingCircle);
  sub_10000B3A8(v3, &qword_1016975C8, &qword_10138C1F0);
  sub_10000B3A8(v2, &qword_10169A608, &unk_1013BCC20);
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177A560);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = Error.localizedDescription.getter();
    v11 = sub_1000136BC(v9, v10, &v16);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failure on share decline, iCloud Data update: %s", v7, 0xCu);
    sub_100007BAC(v8);
  }

  v12 = *(v0 + 488);
  if (*(v0 + 745))
  {
    sub_100243818(*(v0 + 488), type metadata accessor for MemberPeerTrust);
  }

  else
  {
    sub_1001118C8();
    swift_allocError();
    *v14 = 1;
    swift_willThrow();

    sub_100243818(v12, type metadata accessor for MemberPeerTrust);
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10023B214()
{
  v1 = *(v0 + 496);
  sub_10001F280(v0 + 64, v0 + 104);
  v2 = swift_allocObject();
  *(v0 + 688) = v2;
  *(v2 + 16) = v1;
  sub_100031694((v0 + 104), v2 + 24);

  v3 = swift_task_alloc();
  *(v0 + 696) = v3;
  *v3 = v0;
  v3[1] = sub_10023B330;

  return unsafeBlocking<A>(context:_:)(v3, 0xD000000000000010, 0x800000010134A8C0, sub_1002437A4, v2, &type metadata for () + 1);
}

uint64_t sub_10023B330()
{
  v1 = *(*v0 + 496);

  return _swift_task_switch(sub_10023B45C, v1, 0);
}

uint64_t sub_10023B45C()
{
  v1 = *(v0 + 248);
  sub_100007BAC((v0 + 64));

  return _swift_task_switch(sub_10023B4C8, v1, 0);
}

uint64_t sub_10023B4C8()
{
  sub_100243818(*(v0 + 272), type metadata accessor for SharedBeaconRecord);
  v1 = *(v0 + 496);

  return _swift_task_switch(sub_10023B544, v1, 0);
}

uint64_t sub_10023B544()
{

  v1 = swift_task_alloc();
  *(v0 + 704) = v1;
  *v1 = v0;
  v1[1] = sub_10023B61C;
  v2 = *(v0 + 496);

  return unsafeBlocking<A>(context:_:)(v1, 0xD000000000000010, 0x800000010134A8C0, sub_100202178, v2, &type metadata for () + 1);
}

uint64_t sub_10023B61C()
{
  v1 = *(*v0 + 496);

  return _swift_task_switch(sub_10023B734, v1, 0);
}

uint64_t sub_10023B750()
{
  v1 = v0[61];
  v2 = v0[50];
  v3 = v0[39];
  v4 = v0[35];
  sub_10000B3A8(v0[42], &unk_101698C30, &unk_101392630);
  sub_100243818(v2, type metadata accessor for MemberSharingCircle);
  sub_100243818(v1, type metadata accessor for MemberPeerTrust);
  sub_10000B3A8(v4, &qword_1016975C8, &qword_10138C1F0);
  sub_10000B3A8(v3, &qword_10169A608, &unk_1013BCC20);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10023B910()
{
  v13 = v0;
  sub_100007BAC((v0 + 16));
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v12 = v4;
    *v3 = 136315138;
    swift_getErrorValue();
    v5 = Error.localizedDescription.getter();
    v7 = sub_1000136BC(v5, v6, &v12);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failure on share decline, IDS message sending: %s", v3, 0xCu);
    sub_100007BAC(v4);
  }

  if (*(v0 + 745))
  {

    *(v0 + 584) = 0;
    v8 = *(v0 + 496);
    *(v0 + 720) = *(*(v0 + 360) + 20);

    return _swift_task_switch(sub_1002394A4, v8, 0);
  }

  else
  {
    v9 = *(v0 + 488);
    type metadata accessor for SPBeaconSharingError(0);
    *(v0 + 200) = 14;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_10024375C(&qword_101696340, type metadata accessor for SPBeaconSharingError, &unk_10138A4B4);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    sub_100243818(v9, type metadata accessor for MemberPeerTrust);

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_10023BC50(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 144) = a2;
  *(v4 + 152) = v3;
  *(v4 + 404) = a3;
  *(v4 + 136) = a1;
  v5 = type metadata accessor for UUID();
  *(v4 + 160) = v5;
  v6 = *(v5 - 8);
  *(v4 + 168) = v6;
  *(v4 + 176) = *(v6 + 64);
  *(v4 + 184) = swift_task_alloc();
  sub_1000BC4D4(&qword_1016975C8, &qword_10138C1F0);
  *(v4 + 192) = swift_task_alloc();
  *(v4 + 200) = swift_task_alloc();
  v7 = type metadata accessor for OwnerSharingCircle(0);
  *(v4 + 208) = v7;
  *(v4 + 216) = *(v7 - 8);
  *(v4 + 224) = swift_task_alloc();
  *(v4 + 232) = swift_task_alloc();
  *(v4 + 240) = swift_task_alloc();
  *(v4 + 248) = swift_task_alloc();

  return _swift_task_switch(sub_10023BDE4, v3, 0);
}

uint64_t sub_10023BDE4()
{
  v20 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[31];
  v2 = v0[17];
  v3 = type metadata accessor for Logger();
  v0[32] = sub_1000076D4(v3, qword_10177A560);
  sub_100243878(v2, v1, type metadata accessor for OwnerSharingCircle);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[31];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 141558275;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    sub_10024375C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    sub_100243818(v7, type metadata accessor for OwnerSharingCircle);
    v13 = sub_1000136BC(v10, v12, &v19);

    *(v8 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Data update on share request decline. Delete %{private,mask.hash}s", v8, 0x16u);
    sub_100007BAC(v9);
  }

  else
  {

    sub_100243818(v7, type metadata accessor for OwnerSharingCircle);
  }

  v14 = v0[25];
  v15 = v0[17];
  *(swift_task_alloc() + 16) = v15;
  sub_100EC0C48(sub_1002439CC, v14);
  v16 = v0[19];

  v17 = *(v16 + 112);
  v0[33] = v17;

  return _swift_task_switch(sub_10023C244, v17, 0);
}

uint64_t sub_10023C26C()
{
  v1 = v0[34];
  v2 = v0[25];
  v3 = swift_task_alloc();
  v0[35] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[36] = v4;
  *v4 = v0;
  v4[1] = sub_10023C364;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000011, 0x800000010134B790, sub_100111F54, v3, &type metadata for () + 1);
}

uint64_t sub_10023C364()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_10023C5CC;
  }

  else
  {

    v2 = sub_10023C480;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10023C49C()
{
  v1 = *(v0 + 404);
  sub_10000B3A8(*(v0 + 200), &qword_1016975C8, &qword_10138C1F0);
  if (v1)
  {

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = *(v0 + 264);
    *(v0 + 400) = *(*(v0 + 208) + 24);
    *(v0 + 304) = sub_100B08164(&off_101608498);

    return _swift_task_switch(sub_10023C82C, v4, 0);
  }
}

uint64_t sub_10023C5CC()
{
  v1 = *(v0 + 152);

  return _swift_task_switch(sub_10023C638, v1, 0);
}

uint64_t sub_10023C638()
{
  v12 = v0;
  sub_10000B3A8(*(v0 + 200), &qword_1016975C8, &qword_10138C1F0);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v11 = v4;
    *v3 = 136315138;
    swift_getErrorValue();
    v5 = Error.localizedDescription.getter();
    v7 = sub_1000136BC(v5, v6, &v11);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failure on share request decline, cloud data update error %s", v3, 0xCu);
    sub_100007BAC(v4);
  }

  sub_1001118C8();
  swift_allocError();
  *v8 = 1;
  swift_willThrow();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10023C82C()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 400);
  v3 = *(v0 + 264);
  v4 = *(v0 + 176);
  v5 = *(v0 + 184);
  v6 = *(v0 + 160);
  v7 = *(v0 + 168);
  v8 = *(v0 + 136);
  v9 = *(v7 + 16);
  *(v0 + 312) = v9;
  *(v0 + 320) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v5, v8 + v2, v6);
  v10 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v11 = (v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v0 + 328) = v12;
  *(v12 + 16) = v3;
  (*(v7 + 32))(v12 + v10, v5, v6);
  *(v12 + v11) = v1;

  v13 = swift_task_alloc();
  *(v0 + 336) = v13;
  v14 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v13 = v0;
  v13[1] = sub_10023C9D4;

  return unsafeBlocking<A>(context:_:)(v0 + 120, 0xD000000000000010, 0x800000010134A8C0, sub_1001BE4AC, v12, v14);
}

uint64_t sub_10023C9D4()
{
  v1 = *(*v0 + 264);

  return _swift_task_switch(sub_10023CB00, v1, 0);
}

uint64_t sub_10023CB00()
{
  v1 = v0[19];
  v0[43] = v0[15];
  return _swift_task_switch(sub_10023CB24, v1, 0);
}

uint64_t sub_10023CB24()
{
  v27 = v0;
  v1 = v0[43];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0[27] + 80);
    sub_100243878(v1 + ((v3 + 32) & ~v3), v0[30], type metadata accessor for OwnerSharingCircle);
    if (v2 == 1)
    {
    }

    else
    {
      sub_100243878(v0[17], v0[29], type metadata accessor for OwnerSharingCircle);

      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.error.getter();
      v8 = os_log_type_enabled(v6, v7);
      v9 = v0[29];
      if (v8)
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v26 = v11;
        *v10 = 141558531;
        *(v10 + 4) = 1752392040;
        *(v10 + 12) = 2081;
        sub_10024375C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v12 = dispatch thunk of CustomStringConvertible.description.getter();
        v14 = v13;
        sub_100243818(v9, type metadata accessor for OwnerSharingCircle);
        v15 = sub_1000136BC(v12, v14, &v26);

        *(v10 + 14) = v15;
        *(v10 + 22) = 2048;
        v16 = *(v1 + 16);

        *(v10 + 24) = v16;

        _os_log_impl(&_mh_execute_header, v6, v7, "Multiple UT owner circles found for beacon: %{private,mask.hash}s,\ncount: %ld.", v10, 0x20u);
        sub_100007BAC(v11);
      }

      else
      {
        swift_bridgeObjectRelease_n();

        sub_100243818(v9, type metadata accessor for OwnerSharingCircle);
      }
    }

    v17 = v0[39];
    v18 = v0[30];
    v20 = v0[19];
    v19 = v0[20];
    v21 = v0[18];
    v22 = *(v0[26] + 20);
    v0[5] = type metadata accessor for CircleTrustDeclineEnvelopeV1(0);
    v0[6] = sub_10024375C(&qword_10169A610, type metadata accessor for CircleTrustDeclineEnvelopeV1, &unk_1013AE228);
    v0[7] = sub_10024375C(&qword_10169A618, type metadata accessor for CircleTrustDeclineEnvelopeV1, &unk_1013AE2C8);
    v23 = sub_1000280DC(v0 + 2);
    v17(v23, v18 + v22, v19);
    v24 = *(type metadata accessor for OwnerPeerTrust(0) + 28);
    v25 = swift_task_alloc();
    v0[44] = v25;
    *v25 = v0;
    v25[1] = sub_10023CF50;

    return sub_10129B0F0(v20 + 120, (v0 + 2), 4, v21 + v24);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_10023CF50()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v3 = *(v2 + 152);
    v4 = sub_10023D144;
  }

  else
  {
    v5 = *(v2 + 152);
    sub_100007BAC((v2 + 16));
    v4 = sub_10023D078;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10023D078()
{
  sub_100243818(*(v0 + 240), type metadata accessor for OwnerSharingCircle);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10023D144()
{
  v21 = v0;
  sub_100007BAC((v0 + 16));
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v20 = v4;
    *v3 = 136315138;
    swift_getErrorValue();
    v5 = Error.localizedDescription.getter();
    v7 = sub_1000136BC(v5, v6, &v20);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failure on share request decline, message sending error %s", v3, 0xCu);
    sub_100007BAC(v4);
  }

  v8 = *(v0 + 312);
  v9 = *(v0 + 400);
  v10 = *(v0 + 224);
  v11 = *(v0 + 208);
  v12 = *(v0 + 192);
  v13 = *(v0 + 160);
  v14 = *(v0 + 136);
  v8(&v10[v11[5]], v14 + v11[5], v13);
  v8(&v10[v11[6]], v14 + v9, v13);
  v15 = *(v14 + v11[7]);
  v16 = *(v14 + v11[8]);
  v17 = *(v14 + v11[9]);
  *v10 = xmmword_10138C660;
  v10[v11[7]] = v15;
  *&v10[v11[8]] = v16;
  v10[v11[9]] = v17;
  *(swift_task_alloc() + 16) = v10;

  sub_100EC0C48(sub_10024399C, v12);
  v18 = *(v0 + 264);

  return _swift_task_switch(sub_10023D454, v18, 0);
}

uint64_t sub_10023D47C()
{
  v1 = v0[46];
  v2 = v0[24];
  v3 = swift_task_alloc();
  v0[47] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[48] = v4;
  *v4 = v0;
  v4[1] = sub_10023D574;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000011, 0x800000010134B790, sub_100111F54, v3, &type metadata for () + 1);
}

uint64_t sub_10023D574()
{
  *(*v1 + 392) = v0;

  if (v0)
  {
    v2 = sub_10023D7EC;
  }

  else
  {

    v2 = sub_10023D690;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10023D6AC()
{
  v1 = v0[30];
  v2 = v0[28];
  v3 = v0[24];
  sub_1001118C8();
  swift_allocError();
  *v4 = 3;
  swift_willThrow();

  sub_100243818(v1, type metadata accessor for OwnerSharingCircle);
  sub_10000B3A8(v3, &qword_1016975C8, &qword_10138C1F0);
  sub_100243818(v2, type metadata accessor for OwnerSharingCircle);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10023D7EC()
{
  v1 = *(v0 + 152);

  return _swift_task_switch(sub_10023D858, v1, 0);
}

uint64_t sub_10023D858()
{
  v1 = v0[30];
  v2 = v0[28];
  v3 = v0[24];

  sub_100243818(v1, type metadata accessor for OwnerSharingCircle);
  sub_10000B3A8(v3, &qword_1016975C8, &qword_10138C1F0);
  sub_100243818(v2, type metadata accessor for OwnerSharingCircle);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10023D968(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = sub_1000BC4D4(&unk_101698CA0, &unk_101393DB0);
  v2[8] = swift_task_alloc();
  v2[9] = sub_1000BC4D4(&qword_1016975B8, &unk_10138C1B0);
  v2[10] = swift_task_alloc();
  type metadata accessor for OwnerSharingCircle(0);
  v2[11] = swift_task_alloc();
  type metadata accessor for OwnerPeerTrust(0);
  v2[12] = swift_task_alloc();
  sub_1000BC4D4(&unk_101698BC0, &qword_10138C440);
  v2[13] = swift_task_alloc();
  v3 = type metadata accessor for MemberSharingCircle(0);
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[17] = v4;
  v5 = *(v4 - 8);
  v2[18] = v5;
  v2[19] = *(v5 + 64);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return _swift_task_switch(sub_10023DBA0, v1, 0);
}

uint64_t sub_10023DBA0()
{
  v22 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[5];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177A560);
  v6 = *(v3 + 16);
  v0[22] = v6;
  v0[23] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[21];
  v11 = v0[17];
  v12 = v0[18];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_10024375C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v12 + 8))(v10, v11);
    v18 = sub_1000136BC(v15, v17, &v21);

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Force decline %{private,mask.hash}s", v13, 0x16u);
    sub_100007BAC(v14);
  }

  else
  {

    (*(v12 + 8))(v10, v11);
  }

  v19 = *(v0[6] + 112);
  v0[24] = v19;

  return _swift_task_switch(sub_10023DE04, v19, 0);
}

uint64_t sub_10023DE04()
{

  v1 = swift_task_alloc();
  *(v0 + 200) = v1;
  v2 = sub_1000BC4D4(&unk_101698C40, &qword_10138C1C0);
  *v1 = v0;
  v1[1] = sub_10023DEF0;
  v3 = *(v0 + 192);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_10012B4B8, v3, v2);
}

uint64_t sub_10023DEF0()
{
  v1 = *(*v0 + 192);

  return _swift_task_switch(sub_10023E008, v1, 0);
}

uint64_t sub_10023E008()
{
  v1 = v0[6];
  v0[26] = v0[2];
  return _swift_task_switch(sub_10023E02C, v1, 0);
}

uint64_t sub_10023E02C()
{
  v1 = v0[26];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[13];
  v5 = v0[5];
  *(swift_task_alloc() + 16) = v5;
  sub_1012BBB68(sub_100243674, v1, v4);

  v6 = (*(v3 + 48))(v4, 1, v2);
  v7 = v0[13];
  if (v6 == 1)
  {
    v8 = v0[24];
    sub_10000B3A8(v7, &unk_101698BC0, &qword_10138C440);

    return _swift_task_switch(sub_10023E3EC, v8, 0);
  }

  else
  {
    sub_1002437B0(v7, v0[16], type metadata accessor for MemberSharingCircle);
    v9 = swift_task_alloc();
    v0[27] = v9;
    *v9 = v0;
    v9[1] = sub_10023E1E0;
    v10 = v0[16];

    return sub_100238420(v10, 0, 1);
  }
}

uint64_t sub_10023E1E0()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_10023EB24;
  }

  else
  {
    v4 = sub_10023E30C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10023E30C()
{
  sub_100243818(*(v0 + 128), type metadata accessor for MemberSharingCircle);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10023E3EC()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 160);
  v3 = *(v0 + 136);
  v4 = *(v0 + 144);
  (*(v0 + 176))(v2, *(v0 + 40), v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v0 + 232) = v6;
  *(v6 + 16) = v1;
  (*(v4 + 32))(v6 + v5, v2, v3);

  v7 = swift_task_alloc();
  *(v0 + 240) = v7;
  *v7 = v0;
  v7[1] = sub_10023E538;
  v9 = *(v0 + 56);
  v8 = *(v0 + 64);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_100243690, v6, v9);
}

uint64_t sub_10023E538()
{
  v1 = *(*v0 + 48);

  return _swift_task_switch(sub_10023E664, v1, 0);
}

uint64_t sub_10023E664()
{
  v1 = v0[8];
  v2 = sub_1000BC4D4(&qword_101698CB0, &qword_10138C1C8);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &unk_101698CA0, &unk_101393DB0);
    type metadata accessor for SPBeaconSharingError(0);
    v0[4] = 5;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_10024375C(&qword_101696340, type metadata accessor for SPBeaconSharingError, &unk_10138A4B4);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    v3 = v0[1];

    return v3();
  }

  else
  {
    v6 = v0[11];
    v5 = v0[12];
    v8 = v0[9];
    v7 = v0[10];
    v9 = *(v2 + 48);
    v10 = *(v8 + 48);
    sub_1002437B0(v1, v7, type metadata accessor for OwnerPeerTrust);
    sub_1002437B0(v1 + v9, v7 + v10, type metadata accessor for OwnerSharingCircle);
    v11 = *(v8 + 48);
    sub_1002437B0(v7, v5, type metadata accessor for OwnerPeerTrust);
    sub_1002437B0(v7 + v11, v6, type metadata accessor for OwnerSharingCircle);
    v12 = swift_task_alloc();
    v0[31] = v12;
    *v12 = v0;
    v12[1] = sub_10023E918;
    v14 = v0[11];
    v13 = v0[12];

    return sub_10023EC04(v14, v13);
  }
}

uint64_t sub_10023E918()
{
  v1 = *(*v0 + 48);

  return _swift_task_switch(sub_10023EA28, v1, 0);
}

uint64_t sub_10023EA28()
{
  v1 = v0[12];
  sub_100243818(v0[11], type metadata accessor for OwnerSharingCircle);
  sub_100243818(v1, type metadata accessor for OwnerPeerTrust);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10023EB24()
{
  sub_100243818(*(v0 + 128), type metadata accessor for MemberSharingCircle);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10023EC04(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  v4 = type metadata accessor for UUID();
  v3[16] = v4;
  v5 = *(v4 - 8);
  v3[17] = v5;
  v3[18] = *(v5 + 64);
  v3[19] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016975C8, &qword_10138C1F0);
  v3[20] = swift_task_alloc();
  v6 = type metadata accessor for OwnerSharingCircle(0);
  v3[21] = v6;
  v3[22] = *(v6 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();

  return _swift_task_switch(sub_10023ED7C, v2, 0);
}

uint64_t sub_10023ED7C()
{
  v20 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[25];
  v2 = v0[13];
  v3 = type metadata accessor for Logger();
  v0[26] = sub_1000076D4(v3, qword_10177A560);
  sub_100243878(v2, v1, type metadata accessor for OwnerSharingCircle);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[25];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 141558275;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    sub_10024375C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    sub_100243818(v7, type metadata accessor for OwnerSharingCircle);
    v13 = sub_1000136BC(v10, v12, &v19);

    *(v8 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Data update on share request force decline. Delete %{private,mask.hash}s", v8, 0x16u);
    sub_100007BAC(v9);
  }

  else
  {

    sub_100243818(v7, type metadata accessor for OwnerSharingCircle);
  }

  v14 = v0[20];
  v15 = v0[13];
  *(swift_task_alloc() + 16) = v15;
  sub_100EC0C48(sub_1002438E0, v14);
  v16 = v0[15];

  v17 = *(v16 + 112);
  v0[27] = v17;

  return _swift_task_switch(sub_10023F178, v17, 0);
}

uint64_t sub_10023F1A0()
{
  v1 = v0[28];
  v2 = v0[20];
  v3 = swift_task_alloc();
  v0[29] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[30] = v4;
  *v4 = v0;
  v4[1] = sub_10023F298;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000011, 0x800000010134B790, sub_100111F54, v3, &type metadata for () + 1);
}

uint64_t sub_10023F298()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_10023F470;
  }

  else
  {

    v2 = sub_10023F3B4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10023F3D0()
{
  sub_10000B3A8(*(v0 + 160), &qword_1016975C8, &qword_10138C1F0);
  v1 = *(v0 + 168);
  v2 = *(*(v0 + 120) + 112);
  *(v0 + 256) = v2;
  *(v0 + 320) = *(v1 + 24);
  *(v0 + 264) = sub_100B08164(&off_1016084C0);

  return _swift_task_switch(sub_10023F69C, v2, 0);
}

uint64_t sub_10023F470()
{
  v1 = *(v0 + 120);

  return _swift_task_switch(sub_10023F4DC, v1, 0);
}

uint64_t sub_10023F4DC()
{
  v12 = v0;
  sub_10000B3A8(*(v0 + 160), &qword_1016975C8, &qword_10138C1F0);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v11 = v4;
    *v3 = 136315138;
    swift_getErrorValue();
    v5 = Error.localizedDescription.getter();
    v7 = sub_1000136BC(v5, v6, &v11);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "Can't apply cloud changes %s", v3, 0xCu);
    sub_100007BAC(v4);
  }

  else
  {
  }

  v8 = *(v0 + 168);
  v9 = *(*(v0 + 120) + 112);
  *(v0 + 256) = v9;
  *(v0 + 320) = *(v8 + 24);
  *(v0 + 264) = sub_100B08164(&off_1016084C0);

  return _swift_task_switch(sub_10023F69C, v9, 0);
}

uint64_t sub_10023F69C()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 256);
  v3 = *(v0 + 264);
  v4 = *(v0 + 144);
  v5 = *(v0 + 152);
  v6 = *(v0 + 128);
  v7 = *(v0 + 136);
  v8 = *(v0 + 104);
  v9 = *(v7 + 16);
  *(v0 + 272) = v9;
  *(v0 + 280) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v5, v8 + v1, v6);
  v10 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v11 = (v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v0 + 288) = v12;
  *(v12 + 16) = v2;
  (*(v7 + 32))(v12 + v10, v5, v6);
  *(v12 + v11) = v3;

  v13 = swift_task_alloc();
  *(v0 + 296) = v13;
  v14 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v13 = v0;
  v13[1] = sub_10023F840;

  return unsafeBlocking<A>(context:_:)(v0 + 88, 0xD000000000000010, 0x800000010134A8C0, sub_1001B9920, v12, v14);
}

uint64_t sub_10023F840()
{
  v1 = *(*v0 + 256);

  return _swift_task_switch(sub_10023F96C, v1, 0);
}

uint64_t sub_10023F96C()
{
  v1 = v0[15];
  v0[38] = v0[11];
  return _swift_task_switch(sub_10023F990, v1, 0);
}

uint64_t sub_10023F990()
{
  v27 = v0;
  v1 = v0[38];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0[22] + 80);
    sub_100243878(v1 + ((v3 + 32) & ~v3), v0[24], type metadata accessor for OwnerSharingCircle);
    if (v2 == 1)
    {
    }

    else
    {
      sub_100243878(v0[13], v0[23], type metadata accessor for OwnerSharingCircle);

      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.error.getter();
      v8 = os_log_type_enabled(v6, v7);
      v9 = v0[23];
      if (v8)
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v26 = v11;
        *v10 = 141558531;
        *(v10 + 4) = 1752392040;
        *(v10 + 12) = 2081;
        sub_10024375C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v12 = dispatch thunk of CustomStringConvertible.description.getter();
        v14 = v13;
        sub_100243818(v9, type metadata accessor for OwnerSharingCircle);
        v15 = sub_1000136BC(v12, v14, &v26);

        *(v10 + 14) = v15;
        *(v10 + 22) = 2048;
        v16 = *(v1 + 16);

        *(v10 + 24) = v16;

        _os_log_impl(&_mh_execute_header, v6, v7, "Multiple UT owner circles found for beacon: %{private,mask.hash}s,\ncount: %ld.", v10, 0x20u);
        sub_100007BAC(v11);
      }

      else
      {
        swift_bridgeObjectRelease_n();

        sub_100243818(v9, type metadata accessor for OwnerSharingCircle);
      }
    }

    v17 = v0[34];
    v18 = v0[24];
    v20 = v0[15];
    v19 = v0[16];
    v21 = v0[14];
    v22 = *(v0[21] + 20);
    v0[5] = type metadata accessor for CircleTrustDeclineEnvelopeV1(0);
    v0[6] = sub_10024375C(&qword_10169A610, type metadata accessor for CircleTrustDeclineEnvelopeV1, &unk_1013AE228);
    v0[7] = sub_10024375C(&qword_10169A618, type metadata accessor for CircleTrustDeclineEnvelopeV1, &unk_1013AE2C8);
    v23 = sub_1000280DC(v0 + 2);
    v17(v23, v18 + v22, v19);
    v24 = *(type metadata accessor for OwnerPeerTrust(0) + 28);
    v25 = swift_task_alloc();
    v0[39] = v25;
    *v25 = v0;
    v25[1] = sub_10023FDA4;

    return sub_10129B0F0(v20 + 120, (v0 + 2), 4, v21 + v24);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_10023FDA4()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 120);

    v4 = sub_10023FF90;
    v5 = v3;
  }

  else
  {
    v6 = *(v2 + 120);
    sub_100007BAC((v2 + 16));
    v4 = sub_10023FEE4;
    v5 = v6;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_10023FEE4()
{
  sub_100243818(*(v0 + 192), type metadata accessor for OwnerSharingCircle);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10023FF90()
{
  sub_100243818(v0[24], type metadata accessor for OwnerSharingCircle);
  sub_100007BAC(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100240044()
{
  v1[4] = v0;
  v2 = type metadata accessor for Date();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v3 = type metadata accessor for MemberSharingCircle(0);
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[16] = v4;
  *v4 = v1;
  v4[1] = sub_100240220;

  return unsafeBlocking<A>(_:)(v1 + 2, sub_10024119C, 0, &type metadata for Double);
}

uint64_t sub_100240220()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_100240330, v1, 0);
}

uint64_t sub_100240330()
{
  v1 = v0[4];
  v0[17] = v0[2];
  v2 = *(v1 + 112);
  v0[18] = v2;
  return _swift_task_switch(sub_10024035C, v2, 0);
}

uint64_t sub_10024035C()
{

  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  v2 = sub_1000BC4D4(&unk_101698C40, &qword_10138C1C0);
  *v1 = v0;
  v1[1] = sub_100240448;
  v3 = *(v0 + 144);

  return unsafeBlocking<A>(context:_:)(v0 + 24, 0xD000000000000010, 0x800000010134A8C0, sub_10012B4B8, v3, v2);
}

uint64_t sub_100240448()
{
  v1 = *(*v0 + 144);

  return _swift_task_switch(sub_100240560, v1, 0);
}

uint64_t sub_100240560()
{
  v1 = v0[4];
  v0[20] = v0[3];
  return _swift_task_switch(sub_100240580, v1, 0);
}

uint64_t sub_100240580()
{
  v2 = *(v1 + 160);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = *(v1 + 80);
    v6 = *(v1 + 88);
    v7 = *(v1 + 48);
    v53 = (v7 + 48);
    v54 = (v7 + 56);
    v49 = (v7 + 8);
    v50 = (v7 + 16);
    v51 = _swiftEmptyArrayStorage;
    v52 = *(v1 + 160);
    v55 = v6;
    v56 = v5;
    while (1)
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
        goto LABEL_35;
      }

      v8 = *(v1 + 120);
      v0 = ((*(v6 + 80) + 32) & ~*(v6 + 80));
      v9 = *(v6 + 72);
      sub_100243878(v0 + *(v1 + 160) + v9 * v4, v8, type metadata accessor for MemberSharingCircle);
      v10 = *(v8 + *(v5 + 40));
      v11 = v10 > 4;
      v12 = (1 << v10) & 0x16;
      if (v11 || v12 == 0)
      {
        v14 = v3;
        v15 = *(v1 + 120);
        v16 = objc_autoreleasePoolPush();
        sub_1011224E4(v15);
        v18 = v17;
        objc_autoreleasePoolPop(v16);
        v19 = [v18 creationDate];
        if (v19)
        {
          v20 = v19;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v21 = 0;
        }

        else
        {
          v21 = 1;
        }

        v23 = *(v1 + 64);
        v22 = *(v1 + 72);
        v24 = *(v1 + 40);
        (*v54)(v23, v21, 1, v24);
        sub_1000D2AD8(v23, v22, &unk_101696900, &unk_10138B1E0);
        if ((*v53)(v22, 1, v24))
        {
          v25 = *(v1 + 72);

          sub_10000B3A8(v25, &unk_101696900, &unk_10138B1E0);
          v3 = v14;
          v2 = v52;
          v6 = v55;
          v5 = v56;
        }

        else
        {
          v26 = *(v1 + 136);
          v27 = *(v1 + 72);
          v28 = *(v1 + 56);
          v29 = *(v1 + 40);
          (*v50)(v28, v27, v29);
          sub_10000B3A8(v27, &unk_101696900, &unk_10138B1E0);
          Date.timeIntervalSinceNow.getter();
          v31 = v30;
          (*v49)(v28, v29);

          v3 = v14;
          v2 = v52;
          v6 = v55;
          v5 = v56;
          if (v26 <= fabs(v31))
          {
            sub_1002437B0(*(v1 + 120), *(v1 + 112), type metadata accessor for MemberSharingCircle);
            v32 = v51;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_101123FA0(0, v51[2] + 1, 1);
              v32 = v51;
            }

            v34 = v32[2];
            v33 = v32[3];
            if (v34 >= v33 >> 1)
            {
              sub_101123FA0((v33 > 1), v34 + 1, 1);
              v32 = v51;
            }

            v35 = *(v1 + 112);
            v32[2] = v34 + 1;
            v51 = v32;
            sub_1002437B0(v35, v0 + v32 + v34 * v9, type metadata accessor for MemberSharingCircle);
            v5 = v56;
            goto LABEL_9;
          }
        }
      }

      sub_100243818(*(v1 + 120), type metadata accessor for MemberSharingCircle);
LABEL_9:
      if (v3 == ++v4)
      {
        v0 = v51;
        goto LABEL_23;
      }
    }
  }

  v0 = _swiftEmptyArrayStorage;
LABEL_23:
  *(v1 + 168) = v0;

  if (qword_101694480 != -1)
  {
LABEL_35:
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  *(v1 + 176) = sub_1000076D4(v36, qword_10177A560);

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 134217984;
    *(v39 + 4) = v0[2];

    _os_log_impl(&_mh_execute_header, v37, v38, "Found %ld of expired member circles.", v39, 0xCu);
  }

  else
  {
  }

  v40 = v0[2];
  *(v1 + 184) = v40;
  if (v40)
  {
    v42 = *(v1 + 80);
    v41 = *(v1 + 88);
    v43 = *(v41 + 80);
    *(v1 + 224) = v43;
    *(v1 + 192) = *(v41 + 72);
    *(v1 + 200) = 0;
    v44 = *(v1 + 104);
    sub_100243878(*(v1 + 168) + ((v43 + 32) & ~v43), v44, type metadata accessor for MemberSharingCircle);
    v45 = *(v42 + 28);
    v46 = swift_task_alloc();
    *(v1 + 208) = v46;
    *v46 = v1;
    v46[1] = sub_100240B70;

    return sub_100237320(v44 + v45, 0);
  }

  else
  {

    v48 = *(v1 + 8);

    return v48();
  }
}

uint64_t sub_100240B70()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_100240E44;
  }

  else
  {
    v4 = sub_100240C9C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100240C9C()
{
  sub_100243818(*(v0 + 104), type metadata accessor for MemberSharingCircle);
  v1 = *(v0 + 200) + 1;
  if (v1 == *(v0 + 184))
  {

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    *(v0 + 200) = v1;
    v4 = *(v0 + 104);
    v5 = *(v0 + 80);
    sub_100243878(*(v0 + 168) + ((*(v0 + 224) + 32) & ~*(v0 + 224)) + *(v0 + 192) * v1, v4, type metadata accessor for MemberSharingCircle);
    v6 = *(v5 + 28);
    v7 = swift_task_alloc();
    *(v0 + 208) = v7;
    *v7 = v0;
    v7[1] = sub_100240B70;

    return sub_100237320(v4 + v6, 0);
  }
}

uint64_t sub_100240E44()
{
  v22 = v0;
  sub_100243878(*(v0 + 104), *(v0 + 96), type metadata accessor for MemberSharingCircle);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);
  if (v3)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v21 = v7;
    *v6 = 136315138;
    type metadata accessor for UUID();
    sub_10024375C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v4;
    v10 = v9;
    sub_100243818(v5, type metadata accessor for MemberSharingCircle);
    v11 = sub_1000136BC(v8, v10, &v21);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to decline expired share with identifier: %s", v6, 0xCu);
    sub_100007BAC(v7);

    v12 = v20;
  }

  else
  {

    sub_100243818(v5, type metadata accessor for MemberSharingCircle);
    v12 = v4;
  }

  sub_100243818(v12, type metadata accessor for MemberSharingCircle);
  v13 = *(v0 + 200) + 1;
  if (v13 == *(v0 + 184))
  {

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    *(v0 + 200) = v13;
    v16 = *(v0 + 104);
    v17 = *(v0 + 80);
    sub_100243878(*(v0 + 168) + ((*(v0 + 224) + 32) & ~*(v0 + 224)) + *(v0 + 192) * v13, v16, type metadata accessor for MemberSharingCircle);
    v18 = *(v17 + 28);
    v19 = swift_task_alloc();
    *(v0 + 208) = v19;
    *v19 = v0;
    v19[1] = sub_100240B70;

    return sub_100237320(v16 + v18, 0);
  }
}

uint64_t sub_10024119C@<X0>(double *a1@<X8>)
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  sub_101074BD0(v5);
  v3 = v2;

  *a1 = v3;
  return result;
}

uint64_t sub_100241254()
{
  v1[3] = v0;
  v2 = type metadata accessor for UUID();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v1[6] = *(v3 + 64);
  v1[7] = swift_task_alloc();
  v1[8] = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v1[9] = swift_task_alloc();
  v4 = type metadata accessor for MemberSharingCircle(0);
  v1[10] = v4;
  v1[11] = *(v4 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_1002413CC, v0, 0);
}

uint64_t sub_1002413CC()
{
  v1 = *(*(v0 + 24) + 112);
  *(v0 + 120) = v1;
  return _swift_task_switch(sub_1002413F0, v1, 0);
}

uint64_t sub_1002413F0()
{

  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  v2 = sub_1000BC4D4(&unk_101698C40, &qword_10138C1C0);
  *v1 = v0;
  v1[1] = sub_1002414DC;
  v3 = *(v0 + 120);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_10010EE68, v3, v2);
}

uint64_t sub_1002414DC()
{
  v1 = *(*v0 + 120);

  return _swift_task_switch(sub_1002415F4, v1, 0);
}

uint64_t sub_1002415F4()
{
  v1 = v0[3];
  v0[17] = v0[2];
  return _swift_task_switch(sub_100241614, v1, 0);
}

uint64_t sub_100241614()
{
  v1 = *(v0 + 136);
  v2 = *(v1 + 16);
  *(v0 + 144) = v2;
  if (v2)
  {
    v4 = *(v0 + 80);
    v3 = *(v0 + 88);
    v5 = *(v3 + 80);
    *(v0 + 216) = v5;
    *(v0 + 152) = *(v3 + 72);
    *(v0 + 160) = 0;
    v6 = *(v0 + 120);
    sub_100243878(v1 + ((v5 + 32) & ~v5), *(v0 + 112), type metadata accessor for MemberSharingCircle);
    *(v0 + 220) = *(v4 + 24);

    return _swift_task_switch(sub_100241740, v6, 0);
  }

  else
  {

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_100241740()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 56);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  (*(v4 + 16))(v2, *(v0 + 112) + *(v0 + 220), v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v0 + 168) = v6;
  *(v6 + 16) = v1;
  (*(v4 + 32))(v6 + v5, v2, v3);

  v7 = swift_task_alloc();
  *(v0 + 176) = v7;
  *v7 = v0;
  v7[1] = sub_10024189C;
  v9 = *(v0 + 64);
  v8 = *(v0 + 72);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_100242D58, v6, v9);
}

uint64_t sub_10024189C()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_1002419C8, v1, 0);
}

uint64_t sub_1002419C8()
{
  v1 = *(v0 + 72);
  v2 = type metadata accessor for SharedBeaconRecord(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_100243818(*(v0 + 112), type metadata accessor for MemberSharingCircle);
    sub_10000B3A8(v1, &unk_101698C30, &unk_101392630);
    goto LABEL_10;
  }

  v3 = *(v1 + *(v2 + 64));
  sub_100243818(v1, type metadata accessor for SharedBeaconRecord);
  if (v3 != 2)
  {
    sub_100243818(*(v0 + 112), type metadata accessor for MemberSharingCircle);
LABEL_10:
    v8 = *(v0 + 160) + 1;
    if (v8 == *(v0 + 144))
    {

      v9 = *(v0 + 8);

      return v9();
    }

    else
    {
      *(v0 + 160) = v8;
      v10 = *(v0 + 120);
      v11 = *(v0 + 80);
      sub_100243878(*(v0 + 136) + ((*(v0 + 216) + 32) & ~*(v0 + 216)) + *(v0 + 152) * v8, *(v0 + 112), type metadata accessor for MemberSharingCircle);
      *(v0 + 220) = *(v11 + 24);

      return _swift_task_switch(sub_100241740, v10, 0);
    }
  }

  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v4 = qword_10177B2E8;
  v5 = swift_task_alloc();
  *(v0 + 184) = v5;
  *v5 = v0;
  v5[1] = sub_100241C94;
  v6 = *(v0 + 112);

  return sub_100242D84(v6, v4);
}

uint64_t sub_100241C94(char a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 224) = a1;

  return _swift_task_switch(sub_100241DAC, v2, 0);
}

uint64_t sub_100241DAC()
{
  v23 = v0;
  if (*(v0 + 224))
  {
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 104);
    v2 = *(v0 + 112);
    v3 = type metadata accessor for Logger();
    *(v0 + 192) = sub_1000076D4(v3, qword_10177A560);
    sub_100243878(v2, v1, type metadata accessor for MemberSharingCircle);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 104);
    if (v6)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v22 = v9;
      *v8 = 141558275;
      *(v8 + 4) = 1752392040;
      *(v8 + 12) = 2081;
      sub_10024375C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v10 = dispatch thunk of CustomStringConvertible.description.getter();
      v12 = v11;
      sub_100243818(v7, type metadata accessor for MemberSharingCircle);
      v13 = sub_1000136BC(v10, v12, &v22);

      *(v8 + 14) = v13;
      _os_log_impl(&_mh_execute_header, v4, v5, "Found %{private,mask.hash}s, expired tentatively revoked member circle.", v8, 0x16u);
      sub_100007BAC(v9);
    }

    else
    {

      sub_100243818(v7, type metadata accessor for MemberSharingCircle);
    }

    v17 = *(v0 + 112);
    v18 = *(*(v0 + 80) + 28);
    v19 = swift_task_alloc();
    *(v0 + 200) = v19;
    *v19 = v0;
    v19[1] = sub_10024218C;

    return sub_100237320(v17 + v18, 0);
  }

  else
  {
    sub_100243818(*(v0 + 112), type metadata accessor for MemberSharingCircle);
    v14 = *(v0 + 160) + 1;
    if (v14 == *(v0 + 144))
    {

      v15 = *(v0 + 8);

      return v15();
    }

    else
    {
      *(v0 + 160) = v14;
      v20 = *(v0 + 120);
      v21 = *(v0 + 80);
      sub_100243878(*(v0 + 136) + ((*(v0 + 216) + 32) & ~*(v0 + 216)) + *(v0 + 152) * v14, *(v0 + 112), type metadata accessor for MemberSharingCircle);
      *(v0 + 220) = *(v21 + 24);

      return _swift_task_switch(sub_100241740, v20, 0);
    }
  }
}

uint64_t sub_10024218C()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_100242408;
  }

  else
  {
    v4 = sub_1002422B8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002422B8()
{
  sub_100243818(*(v0 + 112), type metadata accessor for MemberSharingCircle);
  v1 = *(v0 + 160) + 1;
  if (v1 == *(v0 + 144))
  {

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    *(v0 + 160) = v1;
    v4 = *(v0 + 120);
    v5 = *(v0 + 80);
    sub_100243878(*(v0 + 136) + ((*(v0 + 216) + 32) & ~*(v0 + 216)) + *(v0 + 152) * v1, *(v0 + 112), type metadata accessor for MemberSharingCircle);
    *(v0 + 220) = *(v5 + 24);

    return _swift_task_switch(sub_100241740, v4, 0);
  }
}

uint64_t sub_100242408()
{
  v20 = v0;
  sub_100243878(*(v0 + 112), *(v0 + 96), type metadata accessor for MemberSharingCircle);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 112);
  v5 = *(v0 + 96);
  if (v3)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315138;
    sub_10024375C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v4;
    v10 = v9;
    sub_100243818(v5, type metadata accessor for MemberSharingCircle);
    v11 = sub_1000136BC(v8, v10, &v19);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to decline expired tentatively revoked share with identifier: %s", v6, 0xCu);
    sub_100007BAC(v7);

    v12 = v18;
  }

  else
  {

    sub_100243818(v5, type metadata accessor for MemberSharingCircle);
    v12 = v4;
  }

  sub_100243818(v12, type metadata accessor for MemberSharingCircle);
  v13 = *(v0 + 160) + 1;
  if (v13 == *(v0 + 144))
  {

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    *(v0 + 160) = v13;
    v16 = *(v0 + 120);
    v17 = *(v0 + 80);
    sub_100243878(*(v0 + 136) + ((*(v0 + 216) + 32) & ~*(v0 + 216)) + *(v0 + 152) * v13, *(v0 + 112), type metadata accessor for MemberSharingCircle);
    *(v0 + 220) = *(v17 + 24);

    return _swift_task_switch(sub_100241740, v16, 0);
  }
}

uint64_t sub_100242714()
{

  sub_100007BAC((v0 + 120));
  sub_100007BAC((v0 + 160));
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

void sub_100242780(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v44 = a2;
  v5 = type metadata accessor for MemberPeerTrust(0);
  v43 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v42 = (&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for BeaconNamingRecord(0);
  v46 = *(v7 - 8);
  v47 = v7;
  __chkstk_darwin(v7);
  v9 = (&v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1000BC4D4(&qword_10169A608, &unk_1013BCC20);
  v11 = __chkstk_darwin(v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v38 - v14;
  v16 = type metadata accessor for SharedBeaconRecord(0);
  v45 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = (&v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = v48;
  sub_100D45CB0(a3);
  if (!v19)
  {
    v40 = v9;
    v41 = a1;
    v20 = v18;
    v38 = v13;
    v39 = a3;
    v48 = 0;
    sub_1000D2A70(a3, v15, &qword_10169A608, &unk_1013BCC20);
    v21 = *(v10 + 48);
    v22 = *(v10 + 64);

    v23 = v10;
    if ((*(v45 + 48))(&v15[v21], 1, v16) == 1)
    {
      sub_10000B3A8(&v15[v22], &unk_1016B29E0, &unk_1013B70E0);
      sub_10000B3A8(&v15[v21], &unk_101698C30, &unk_101392630);
      sub_100243818(v15, type metadata accessor for MemberSharingCircle);
      v24 = v40;
      v26 = v46;
      v25 = v47;
    }

    else
    {
      sub_1002437B0(&v15[v21], v20, type metadata accessor for SharedBeaconRecord);
      sub_10000B3A8(&v15[v22], &unk_1016B29E0, &unk_1013B70E0);
      sub_100243818(v15, type metadata accessor for MemberSharingCircle);
      v27 = v48;
      sub_100D458E8(v20);
      sub_100243818(v20, type metadata accessor for SharedBeaconRecord);
      v24 = v40;
      v26 = v46;
      v25 = v47;
      if (v27)
      {
        return;
      }

      v48 = 0;
    }

    v29 = v38;
    v28 = v39;
    sub_1000D2A70(v39, v38, &qword_10169A608, &unk_1013BCC20);
    v30 = *(v10 + 48);
    v31 = v23[16];

    if ((*(v26 + 48))(v29 + v31, 1, v25) == 1)
    {
      sub_10000B3A8(v29 + v31, &unk_1016B29E0, &unk_1013B70E0);
      sub_10000B3A8(v29 + v30, &unk_101698C30, &unk_101392630);
      sub_100243818(v29, type metadata accessor for MemberSharingCircle);
      v32 = v48;
    }

    else
    {
      sub_1002437B0(v29 + v31, v24, type metadata accessor for BeaconNamingRecord);
      sub_10000B3A8(v29 + v30, &unk_101698C30, &unk_101392630);
      sub_100243818(v29, type metadata accessor for MemberSharingCircle);
      v32 = v48;
      sub_100D4555C(v24);
      sub_100243818(v24, type metadata accessor for BeaconNamingRecord);
      if (v32)
      {
        return;
      }
    }

    sub_1001BA354(*(v28 + v23[20]));
    v34 = v42;
    v33 = v43;
    if (!v32)
    {
      v35 = *(v28 + v23[24]);
      v36 = *(v35 + 16);
      if (v36)
      {
        v37 = 0;
        while (v37 < *(v35 + 16))
        {
          sub_100243878(v35 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v37, v34, type metadata accessor for MemberPeerTrust);
          sub_100D46078(v34);
          ++v37;
          sub_100243818(v34, type metadata accessor for MemberPeerTrust);
          if (v36 == v37)
          {
            return;
          }
        }

        __break(1u);
      }
    }
  }
}

uint64_t sub_100242D84(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v2[8] = a1;
  v2[9] = v5;
  v2[10] = type metadata accessor for MemberSharingCircle(0);
  v2[11] = swift_task_alloc();
  v6 = type metadata accessor for BeaconObservation(0);
  v2[12] = v6;
  v2[13] = *(v6 - 8);
  v2[14] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v2[15] = v7;
  v2[16] = *(v7 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[5] = v5;
  v2[6] = &off_101613BE0;
  v2[2] = a2;

  v8 = swift_task_alloc();
  v2[22] = v8;
  *v8 = v2;
  v8[1] = sub_100242F84;

  return sub_101083CAC(a1);
}

uint64_t sub_100242F84(char a1)
{
  *(*v1 + 184) = a1;

  return _swift_task_switch(sub_100243084, 0, 0);
}

uint64_t sub_100243084()
{
  v51 = v0;
  if (*(v0 + 184))
  {
    v1 = 1;
    goto LABEL_11;
  }

  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  if (*(v3 + *(v2 + 40)) != 4)
  {
    goto LABEL_10;
  }

  sub_1000035D0((v0 + 16), *(v0 + 72));
  v4 = sub_100035730(v3 + *(v2 + 24), sub_1000BB4A4, 0);
  if (!v4[2])
  {

    goto LABEL_10;
  }

  v6 = *(v0 + 160);
  v5 = *(v0 + 168);
  v7 = *(v0 + 152);
  v8 = *(v0 + 120);
  v9 = *(v0 + 128);
  v10 = *(v0 + 112);
  v11 = *(v0 + 96);
  v12 = *(*(v0 + 104) + 80);
  sub_100243878(v4 + ((v12 + 32) & ~v12), v10, type metadata accessor for BeaconObservation);

  v13 = *(v9 + 16);
  v13(v6, v10 + *(v11 + 20), v8);
  sub_100243818(v10, type metadata accessor for BeaconObservation);
  (*(v9 + 32))(v5, v6, v8);
  static Date.trustedNow.getter(v7);
  Date.timeIntervalSince(_:)();
  v15 = v14;
  v16 = *(v9 + 8);
  v16(v7, v8);
  if (qword_1016951C8 != -1)
  {
    swift_once();
  }

  if (*&qword_1016C5380 > v15 || (v19 = *(v0 + 144), v20 = *(v0 + 64), v21 = objc_autoreleasePoolPush(), sub_100E7AB5C(v20, v19), objc_autoreleasePoolPop(v21), v22 = *(v0 + 144), v23 = *(v0 + 120), v24 = static Date.> infix(_:_:)(), v16(v22, v23), (v24 & 1) == 0))
  {
    v16(*(v0 + 168), *(v0 + 120));
LABEL_10:
    v1 = 0;
    goto LABEL_11;
  }

  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v48 = *(v0 + 168);
  v25 = *(v0 + 136);
  v26 = *(v0 + 120);
  v27 = *(v0 + 88);
  v28 = *(v0 + 64);
  v29 = type metadata accessor for Logger();
  sub_1000076D4(v29, qword_10177A560);
  sub_100243878(v28, v27, type metadata accessor for MemberSharingCircle);
  v13(v25, v48, v26);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  v32 = os_log_type_enabled(v30, v31);
  v33 = *(v0 + 168);
  v34 = *(v0 + 136);
  v35 = *(v0 + 120);
  v36 = *(v0 + 88);
  if (v32)
  {
    v49 = *(v0 + 168);
    v37 = swift_slowAlloc();
    v50[0] = swift_slowAlloc();
    *v37 = 141558531;
    *(v37 + 4) = 1752392040;
    *(v37 + 12) = 2081;
    type metadata accessor for UUID();
    v47 = v31;
    sub_10024375C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    v40 = v39;
    sub_100243818(v36, type metadata accessor for MemberSharingCircle);
    v41 = sub_1000136BC(v38, v40, v50);

    *(v37 + 14) = v41;
    *(v37 + 22) = 2082;
    sub_10024375C(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    v44 = v43;
    v16(v34, v35);
    v45 = sub_1000136BC(v42, v44, v50);

    *(v37 + 24) = v45;
    _os_log_impl(&_mh_execute_header, v30, v47, "    Delete share %{private,mask.hash}s,\n    tentativelyRevoked since %{public}s.", v37, 0x20u);
    swift_arrayDestroy();

    v46 = v49;
  }

  else
  {

    v16(v34, v35);
    sub_100243818(v36, type metadata accessor for MemberSharingCircle);
    v46 = v33;
  }

  v16(v46, v35);
  v1 = 1;
LABEL_11:
  sub_100007BAC((v0 + 16));

  v17 = *(v0 + 8);

  return v17(v1);
}

uint64_t sub_10024375C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002437B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100243818(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100243878(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10024390C(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a2(v4, v5);
}

uint64_t type metadata accessor for AccessoryUnpairEndpoint(uint64_t a1)
{
  result = qword_10169A678;
  if (!qword_10169A678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100243A84()
{
  sub_1000BC4D4(&qword_101696D88, &unk_10138B760);
  OS_dispatch_queue.sync<A>(execute:)();
  URLComponents.init()();
  URLComponents.scheme.setter();
  URLComponents.host.setter();
  URLComponents.path.setter();
  URLComponents.path.setter();
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v0 = qword_10177C218;
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 isInternalBuild];

  if (v2)
  {
    v3 = String._bridgeToObjectiveC()();
    v4 = [v0 stringForKey:v3];

    if (v4)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      URLComponents.host.setter();
    }
  }
}

uint64_t sub_100243C4C()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177A5F0);
  sub_1000076D4(v0, qword_10177A5F0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100243CCC(uint64_t a1)
{
  v11 = a1;
  v2 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v2);
  v3 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v5 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v4);
  static DispatchQoS.unspecified.getter();
  v12 = _swiftEmptyArrayStorage;
  sub_1002452E4(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v8 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v1 + 16) = v11;
  *(v1 + 24) = v8;
  return v1;
}

uint64_t sub_100243FF8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v23 = *(v15 - 8);
  v24 = v15;
  __chkstk_darwin(v15);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = *(a2 + 24);
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = a4;
  v18[5] = a5;
  v18[6] = a1;
  v18[7] = a6;
  aBlock[4] = sub_10024522C;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101614190;
  v19 = _Block_copy(aBlock);

  v20 = a3;
  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_1002452E4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v25 + 8))(v14, v12);
  (*(v23 + 8))(v17, v24);
}

uint64_t sub_1002442EC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v104 = a5;
  v99 = a3;
  v100 = a4;
  v98 = a2;
  v6 = type metadata accessor for PairingError(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for PairingErrorRecord(0);
  v97 = *(v105 - 8);
  v9 = __chkstk_darwin(v105);
  v11 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v90 - v13;
  __chkstk_darwin(v12);
  v16 = &v90 - v15;
  v17 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v17 - 8);
  v19 = &v90 - v18;
  v20 = type metadata accessor for DirectorySequence();
  v93 = *(v20 - 8);
  v94 = v20;
  __chkstk_darwin(v20);
  v22 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for URL();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin(v23);
  v27 = &v90 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v25);
  v30 = &v90 - v29;
  v31 = *(a1 + 16);
  v90 = *(v31 + 168);
  if (qword_101694E68 != -1)
  {
    v108 = v28;
    swift_once();
    v28 = v108;
  }

  v92 = v16;
  v106 = v31;
  v101 = v11;
  v102 = v14;
  v103 = v8;
  v32 = v28;
  v33 = sub_1000076D4(v28, qword_10177C048);
  v34 = v24[2];
  v91 = v33;
  v34(v30);
  v109 = _swiftEmptyArrayStorage;
  v110[0] = _swiftEmptyArrayStorage;
  v35 = [objc_opt_self() defaultManager];
  v95 = v30;
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

  DirectorySequence.next()();
  v37 = v24 + 6;
  v36 = v24[6];
  v38 = v32;
  v39 = v36(v19, 1, v32);
  v96 = v24;
  if (v39 != 1)
  {
    v107 = v24[4];
    v108 = v24 + 4;
    v40 = (v24 + 1);
    v41 = v90;
    do
    {
      v107(v27, v19, v38);
      v42 = v37;
      v43 = v36;
      v44 = objc_autoreleasePoolPush();
      sub_1005FD5CC(v27, v41, v110, &v109);
      objc_autoreleasePoolPop(v44);
      (*v40)(v27, v38);
      DirectorySequence.next()();
      v36 = v43;
      v37 = v42;
    }

    while (v36(v19, 1, v38) != 1);
  }

  (*(v93 + 8))(v22, v94);
  v45 = static os_log_type_t.debug.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v46 = static OS_os_log.default.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_10138BBE0;
  v48 = v110[0];
  v49 = *(v110[0] + 16);
  *(v47 + 56) = &type metadata for Int;
  *(v47 + 64) = &protocol witness table for Int;
  *(v47 + 32) = v49;
  sub_1002452E4(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);

  v50 = v95;
  v51 = dispatch thunk of CustomStringConvertible.description.getter();
  v53 = v52;
  *(v47 + 96) = &type metadata for String;
  *(v47 + 104) = sub_100008C00();
  *(v47 + 72) = v51;
  *(v47 + 80) = v53;
  os_log(_:dso:log:_:_:)(v45, &_mh_execute_header, v46, "Found %i records at %@", 22, 2, v47);

  (v96[1])(v50, v38);

  v110[0] = v48;

  sub_10024523C(v110);

  v54 = v110[0];
  v55 = *(v110[0] + 16);
  if (v55 >= 5)
  {
    v56 = *(v97 + 80);
    if (qword_1016944E0 != -1)
    {
      swift_once();
    }

    v57 = (v56 + 32) & ~v56;
    v58 = type metadata accessor for Logger();
    sub_1000076D4(v58, qword_10177A5F0);

    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v110[0] = v62;
      *v61 = 136315138;
      v63 = ArraySlice.description.getter();
      v65 = v57;
      v66 = sub_1000136BC(v63, v64, v110);

      *(v61 + 4) = v66;
      v57 = v65;
      _os_log_impl(&_mh_execute_header, v59, v60, "Pruning %s.", v61, 0xCu);
      sub_100007BAC(v62);
    }

    v67 = *(v97 + 72);
    v68 = v55 - 4;
    v108 = v54;
    v69 = v54 + v57 + 4 * v67;
    v70 = v92;
    v71 = v91;
    do
    {
      v72 = sub_10024534C(v69, v70, type metadata accessor for PairingErrorRecord);
      __chkstk_darwin(v72);
      *(&v90 - 4) = v73;
      *(&v90 - 3) = v70;
      *(&v90 - 2) = v71;
      OS_dispatch_queue.sync<A>(execute:)();
      sub_1002453BC(v70, type metadata accessor for PairingErrorRecord);
      v69 += v67;
      --v68;
    }

    while (v68);
  }

  v74 = v100;

  v75 = v98;
  v76 = v103;
  sub_100D573E4(v75, v99, v74, v103);
  v77 = v102;
  UUID.init()();
  sub_10024534C(v76, v77 + *(v105 + 20), type metadata accessor for PairingError);
  v78 = v101;
  if (qword_1016944E0 != -1)
  {
    swift_once();
  }

  v79 = type metadata accessor for Logger();
  sub_1000076D4(v79, qword_10177A5F0);
  sub_10024534C(v77, v78, type metadata accessor for PairingErrorRecord);
  v80 = Logger.logObject.getter();
  v81 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v110[0] = v83;
    *v82 = 136315138;
    v84 = sub_100D58C48();
    v86 = v85;
    sub_1002453BC(v78, type metadata accessor for PairingErrorRecord);
    v87 = sub_1000136BC(v84, v86, v110);

    *(v82 + 4) = v87;
    _os_log_impl(&_mh_execute_header, v80, v81, "Saving %s.", v82, 0xCu);
    sub_100007BAC(v83);
  }

  else
  {

    sub_1002453BC(v78, type metadata accessor for PairingErrorRecord);
  }

  v88 = v104;

  sub_100D76454(v77, sub_1002453B4, v88);

  sub_1002453BC(v77, type metadata accessor for PairingErrorRecord);
  return sub_1002453BC(v76, type metadata accessor for PairingError);
}

void sub_100244D80(uint64_t a1)
{
  v2 = type metadata accessor for PairingErrorRecord(0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v29 - v6;
  v8 = sub_1000BC4D4(&qword_10169A760, &unk_101393E60);
  __chkstk_darwin(v8);
  v10 = (&v29 - v9);
  Transaction.capture()();
  sub_10024541C(a1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *v10;
    if (qword_1016944E0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000076D4(v12, qword_10177A5F0);
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v29 = v11;
      v30 = v16;
      *v15 = 136315138;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v17 = String.init<A>(describing:)();
      v19 = sub_1000136BC(v17, v18, &v30);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "Failed to save PairingErrorRecord. Error %s.", v15, 0xCu);
      sub_100007BAC(v16);
    }

    else
    {
    }
  }

  else
  {
    sub_10024548C(v10, v7);
    if (qword_1016944E0 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000076D4(v20, qword_10177A5F0);
    sub_10024534C(v7, v5, type metadata accessor for PairingErrorRecord);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v30 = v24;
      *v23 = 136315138;
      v25 = sub_100D58C48();
      v27 = v26;
      sub_1002453BC(v5, type metadata accessor for PairingErrorRecord);
      v28 = sub_1000136BC(v25, v27, &v30);

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "Saved: %s.", v23, 0xCu);
      sub_100007BAC(v24);
    }

    else
    {

      sub_1002453BC(v5, type metadata accessor for PairingErrorRecord);
    }

    sub_1002453BC(v7, type metadata accessor for PairingErrorRecord);
  }
}

uint64_t sub_1002451A4()
{

  return swift_deallocClassInstance();
}

Swift::Int sub_10024523C(uint64_t *a1)
{
  v2 = *(type metadata accessor for PairingErrorRecord(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100B32048(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1002454F0(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1002452E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10024534C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002453BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10024541C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_10169A760, &unk_101393E60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10024548C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PairingErrorRecord(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

Swift::Int sub_1002454F0(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for PairingErrorRecord(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for PairingErrorRecord(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100245870(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_10024561C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10024561C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for PairingErrorRecord(0);
  v9 = __chkstk_darwin(v8);
  v36 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v27 - v12;
  result = __chkstk_darwin(v11);
  v17 = &v27 - v16;
  v29 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v34 = -v19;
    v35 = v18;
    v21 = a1 - a3;
    v28 = v19;
    v22 = v18 + v19 * a3;
LABEL_5:
    v32 = v20;
    v33 = a3;
    v30 = v22;
    v31 = v21;
    v23 = v20;
    while (1)
    {
      sub_10024534C(v22, v17, type metadata accessor for PairingErrorRecord);
      sub_10024534C(v23, v13, type metadata accessor for PairingErrorRecord);
      type metadata accessor for PairingError(0);
      v24 = Date.compare(_:)();
      sub_1002453BC(v13, type metadata accessor for PairingErrorRecord);
      result = sub_1002453BC(v17, type metadata accessor for PairingErrorRecord);
      if (v24 != 1)
      {
LABEL_4:
        a3 = v33 + 1;
        v20 = v32 + v28;
        v21 = v31 - 1;
        v22 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v35)
      {
        break;
      }

      v25 = v36;
      sub_10024548C(v22, v36);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_10024548C(v25, v23);
      v23 += v34;
      v22 += v34;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100245870(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v105 = a1;
  v7 = type metadata accessor for PairingErrorRecord(0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v109 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v116 = &v100 - v12;
  v13 = __chkstk_darwin(v11);
  v118 = &v100 - v14;
  result = __chkstk_darwin(v13);
  v117 = &v100 - v16;
  v17 = a3[1];
  if (v17 < 1)
  {
    v19 = _swiftEmptyArrayStorage;
LABEL_96:
    v4 = *v105;
    if (!*v105)
    {
      goto LABEL_134;
    }

    v18 = v8;
    result = swift_isUniquelyReferenced_nonNull_native();
    v8 = v113;
    if ((result & 1) == 0)
    {
LABEL_128:
      result = sub_100B31E68(v19);
      v19 = result;
    }

    v120 = v19;
    v96 = *(v19 + 2);
    if (v96 >= 2)
    {
      while (*a3)
      {
        v97 = *&v19[16 * v96];
        v98 = *&v19[16 * v96 + 24];
        sub_10024619C(*a3 + *(v18 + 72) * v97, *a3 + *(v18 + 72) * *&v19[16 * v96 + 16], *a3 + *(v18 + 72) * v98, v4);
        if (v8)
        {
        }

        if (v98 < v97)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_100B31E68(v19);
        }

        if (v96 - 2 >= *(v19 + 2))
        {
          goto LABEL_122;
        }

        v99 = &v19[16 * v96];
        *v99 = v97;
        *(v99 + 1) = v98;
        v120 = v19;
        result = sub_100B31DDC(v96 - 1);
        v19 = v120;
        v96 = *(v120 + 2);
        if (v96 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v102 = a4;
  v18 = 0;
  v19 = _swiftEmptyArrayStorage;
  v106 = v8;
  v119 = v7;
  v103 = a3;
  while (1)
  {
    v20 = v18;
    if (v18 + 1 >= v17)
    {
      v33 = v18 + 1;
    }

    else
    {
      v114 = v17;
      v21 = *(v8 + 72);
      v4 = *a3 + v21 * (v18 + 1);
      v110 = *a3;
      v22 = v110;
      v23 = v117;
      sub_10024534C(v4, v117, type metadata accessor for PairingErrorRecord);
      v24 = v22 + v21 * v18;
      v25 = v118;
      sub_10024534C(v24, v118, type metadata accessor for PairingErrorRecord);
      v111 = type metadata accessor for PairingError(0);
      v112 = Date.compare(_:)();
      sub_1002453BC(v25, type metadata accessor for PairingErrorRecord);
      result = sub_1002453BC(v23, type metadata accessor for PairingErrorRecord);
      v104 = v18;
      v26 = v18 + 2;
      v115 = v21;
      v27 = v110 + v21 * (v18 + 2);
      while (v114 != v26)
      {
        v28 = v19;
        v29 = v112 == 1;
        v18 = v117;
        sub_10024534C(v27, v117, type metadata accessor for PairingErrorRecord);
        v30 = v118;
        sub_10024534C(v4, v118, type metadata accessor for PairingErrorRecord);
        v31 = Date.compare(_:)();
        sub_1002453BC(v30, type metadata accessor for PairingErrorRecord);
        result = sub_1002453BC(v18, type metadata accessor for PairingErrorRecord);
        v32 = v29 ^ (v31 != 1);
        v19 = v28;
        ++v26;
        v27 += v115;
        v4 += v115;
        if ((v32 & 1) == 0)
        {
          v33 = v26 - 1;
          goto LABEL_11;
        }
      }

      v33 = v114;
LABEL_11:
      a3 = v103;
      v20 = v104;
      v8 = v106;
      if (v112 == 1)
      {
        if (v33 < v104)
        {
          goto LABEL_125;
        }

        if (v104 < v33)
        {
          v101 = v19;
          v34 = v115 * (v33 - 1);
          v4 = v33 * v115;
          v18 = v33;
          v35 = v104 * v115;
          do
          {
            if (v20 != --v33)
            {
              v36 = a3;
              v37 = *a3;
              if (!v37)
              {
                goto LABEL_131;
              }

              sub_10024548C(v37 + v35, v109);
              if (v35 < v34 || v37 + v35 >= (v37 + v4))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v35 != v34)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_10024548C(v109, v37 + v34);
              a3 = v36;
              v8 = v106;
            }

            ++v20;
            v34 -= v115;
            v4 -= v115;
            v35 += v115;
          }

          while (v20 < v33);
          v19 = v101;
          v20 = v104;
          v33 = v18;
        }
      }
    }

    v38 = a3[1];
    if (v33 < v38)
    {
      if (__OFSUB__(v33, v20))
      {
        goto LABEL_124;
      }

      if (v33 - v20 < v102)
      {
        if (__OFADD__(v20, v102))
        {
          goto LABEL_126;
        }

        if (v20 + v102 >= v38)
        {
          v18 = a3[1];
        }

        else
        {
          v18 = v20 + v102;
        }

        if (v18 < v20)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v33 != v18)
        {
          break;
        }
      }
    }

    v18 = v33;
    if (v33 < v20)
    {
      goto LABEL_123;
    }

LABEL_35:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100A5B430(0, *(v19 + 2) + 1, 1, v19);
      v19 = result;
    }

    v40 = *(v19 + 2);
    v39 = *(v19 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_100A5B430((v39 > 1), v40 + 1, 1, v19);
      v19 = result;
    }

    *(v19 + 2) = v41;
    v42 = &v19[16 * v40];
    *(v42 + 4) = v20;
    *(v42 + 5) = v18;
    v43 = *v105;
    if (!*v105)
    {
      goto LABEL_133;
    }

    if (v40)
    {
      while (1)
      {
        v4 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v44 = *(v19 + 4);
          v45 = *(v19 + 5);
          v54 = __OFSUB__(v45, v44);
          v46 = v45 - v44;
          v47 = v54;
LABEL_54:
          if (v47)
          {
            goto LABEL_112;
          }

          v60 = &v19[16 * v41];
          v62 = *v60;
          v61 = *(v60 + 1);
          v63 = __OFSUB__(v61, v62);
          v64 = v61 - v62;
          v65 = v63;
          if (v63)
          {
            goto LABEL_115;
          }

          v66 = &v19[16 * v4 + 32];
          v68 = *v66;
          v67 = *(v66 + 1);
          v54 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v54)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v64, v69))
          {
            goto LABEL_119;
          }

          if (v64 + v69 >= v46)
          {
            if (v46 < v69)
            {
              v4 = v41 - 2;
            }

            goto LABEL_75;
          }

          goto LABEL_68;
        }

        v70 = &v19[16 * v41];
        v72 = *v70;
        v71 = *(v70 + 1);
        v54 = __OFSUB__(v71, v72);
        v64 = v71 - v72;
        v65 = v54;
LABEL_68:
        if (v65)
        {
          goto LABEL_114;
        }

        v73 = &v19[16 * v4];
        v75 = *(v73 + 4);
        v74 = *(v73 + 5);
        v54 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v54)
        {
          goto LABEL_117;
        }

        if (v76 < v64)
        {
          goto LABEL_3;
        }

LABEL_75:
        v81 = v4 - 1;
        if (v4 - 1 >= v41)
        {
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
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*a3)
        {
          goto LABEL_130;
        }

        v82 = *&v19[16 * v81 + 32];
        v83 = *&v19[16 * v4 + 40];
        v84 = v113;
        sub_10024619C(*a3 + *(v8 + 72) * v82, *a3 + *(v8 + 72) * *&v19[16 * v4 + 32], *a3 + *(v8 + 72) * v83, v43);
        v113 = v84;
        if (v84)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_100B31E68(v19);
        }

        if (v81 >= *(v19 + 2))
        {
          goto LABEL_109;
        }

        v85 = &v19[16 * v81];
        *(v85 + 4) = v82;
        *(v85 + 5) = v83;
        v120 = v19;
        result = sub_100B31DDC(v4);
        v19 = v120;
        v41 = *(v120 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v48 = &v19[16 * v41 + 32];
      v49 = *(v48 - 64);
      v50 = *(v48 - 56);
      v54 = __OFSUB__(v50, v49);
      v51 = v50 - v49;
      if (v54)
      {
        goto LABEL_110;
      }

      v53 = *(v48 - 48);
      v52 = *(v48 - 40);
      v54 = __OFSUB__(v52, v53);
      v46 = v52 - v53;
      v47 = v54;
      if (v54)
      {
        goto LABEL_111;
      }

      v55 = &v19[16 * v41];
      v57 = *v55;
      v56 = *(v55 + 1);
      v54 = __OFSUB__(v56, v57);
      v58 = v56 - v57;
      if (v54)
      {
        goto LABEL_113;
      }

      v54 = __OFADD__(v46, v58);
      v59 = v46 + v58;
      if (v54)
      {
        goto LABEL_116;
      }

      if (v59 >= v51)
      {
        v77 = &v19[16 * v4 + 32];
        v79 = *v77;
        v78 = *(v77 + 1);
        v54 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v54)
        {
          goto LABEL_120;
        }

        if (v46 < v80)
        {
          v4 = v41 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_54;
    }

LABEL_3:
    v17 = a3[1];
    if (v18 >= v17)
    {
      goto LABEL_96;
    }
  }

  v101 = v19;
  v86 = *a3;
  v87 = *(v8 + 72);
  v4 = *a3 + v87 * (v33 - 1);
  v88 = -v87;
  v104 = v20;
  v89 = v20 - v33;
  v115 = v86;
  v107 = v87;
  v108 = v18;
  v90 = v86 + v33 * v87;
LABEL_86:
  v114 = v33;
  v110 = v90;
  v111 = v89;
  v112 = v4;
  while (1)
  {
    v91 = v117;
    sub_10024534C(v90, v117, type metadata accessor for PairingErrorRecord);
    v92 = v118;
    sub_10024534C(v4, v118, type metadata accessor for PairingErrorRecord);
    type metadata accessor for PairingError(0);
    v93 = Date.compare(_:)();
    sub_1002453BC(v92, type metadata accessor for PairingErrorRecord);
    result = sub_1002453BC(v91, type metadata accessor for PairingErrorRecord);
    if (v93 != 1)
    {
LABEL_85:
      v33 = v114 + 1;
      v18 = v108;
      v4 = v112 + v107;
      v89 = v111 - 1;
      v90 = v110 + v107;
      if (v114 + 1 != v108)
      {
        goto LABEL_86;
      }

      a3 = v103;
      v20 = v104;
      v8 = v106;
      v19 = v101;
      if (v108 < v104)
      {
        goto LABEL_123;
      }

      goto LABEL_35;
    }

    if (!v115)
    {
      break;
    }

    v94 = v116;
    sub_10024548C(v90, v116);
    swift_arrayInitWithTakeFrontToBack();
    sub_10024548C(v94, v4);
    v4 += v88;
    v90 += v88;
    if (__CFADD__(v89++, 1))
    {
      goto LABEL_85;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_10024619C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v51 = type metadata accessor for PairingErrorRecord(0);
  v8 = __chkstk_darwin(v51);
  v50 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v49 = &v41 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v13;
  v54 = a1;
  v53 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v28 = a4 + v17;
    if (v17 >= 1)
    {
      v29 = -v13;
      v30 = v28;
      v45 = a4;
      v46 = a1;
      v44 = v29;
      do
      {
        v42 = v28;
        v31 = a2;
        v32 = a2 + v29;
        v47 = a2;
        v48 = a2 + v29;
        while (1)
        {
          if (v31 <= a1)
          {
            v54 = v31;
            v52 = v42;
            goto LABEL_59;
          }

          v34 = a3;
          v43 = v28;
          a3 += v29;
          v35 = v30 + v29;
          v36 = v49;
          sub_10024534C(v35, v49, type metadata accessor for PairingErrorRecord);
          v37 = v50;
          sub_10024534C(v32, v50, type metadata accessor for PairingErrorRecord);
          type metadata accessor for PairingError(0);
          v38 = Date.compare(_:)();
          sub_1002453BC(v37, type metadata accessor for PairingErrorRecord);
          sub_1002453BC(v36, type metadata accessor for PairingErrorRecord);
          if (v38 == 1)
          {
            break;
          }

          v28 = v35;
          if (v34 < v30 || a3 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            v32 = v48;
          }

          else
          {
            v32 = v48;
            if (v34 != v30)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v30 = v35;
          a1 = v46;
          v33 = v35 > v45;
          v29 = v44;
          v31 = v47;
          if (!v33)
          {
            a2 = v47;
            goto LABEL_58;
          }
        }

        v39 = v45;
        if (v34 < v47 || a3 >= v47)
        {
          a2 = v48;
          swift_arrayInitWithTakeFrontToBack();
          v28 = v43;
          v29 = v44;
        }

        else
        {
          v40 = v34 == v47;
          a2 = v48;
          v28 = v43;
          v29 = v44;
          if (!v40)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v46;
      }

      while (v30 > v39);
    }

LABEL_58:
    v54 = a2;
    v52 = v28;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v48 = a4 + v16;
    v52 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      v47 = a3;
      v19 = v50;
      do
      {
        v20 = v13;
        v21 = v49;
        sub_10024534C(a2, v49, type metadata accessor for PairingErrorRecord);
        v22 = a2;
        sub_10024534C(a4, v19, type metadata accessor for PairingErrorRecord);
        v23 = a4;
        type metadata accessor for PairingError(0);
        v24 = Date.compare(_:)();
        sub_1002453BC(v19, type metadata accessor for PairingErrorRecord);
        sub_1002453BC(v21, type metadata accessor for PairingErrorRecord);
        v13 = v20;
        if (v24 == 1)
        {
          v25 = v22 + v20;
          a4 = v23;
          if (a1 < v22 || a1 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v22 + v20;
            v26 = v47;
          }

          else
          {
            v26 = v47;
            if (a1 != v22)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 = v25;
          }
        }

        else
        {
          a4 = v23 + v20;
          v27 = v23;
          if (a1 < v23 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            v26 = v47;
            a2 = v22;
          }

          else
          {
            v26 = v47;
            a2 = v22;
            if (a1 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v53 = a4;
        }

        a1 += v13;
        v54 = a1;
      }

      while (a4 < v48 && a2 < v26);
    }
  }

LABEL_59:
  sub_10060AAE4(&v54, &v53, &v52);
  return 1;
}

unint64_t sub_1002466DC()
{
  result = qword_10169A768;
  if (!qword_10169A768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A768);
  }

  return result;
}

uint64_t type metadata accessor for NFCTapResponse(uint64_t a1)
{
  result = qword_10169A7C8;
  if (!qword_10169A7C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002467A4(uint64_t a1)
{
  result = type metadata accessor for ServerStatusCode();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100246820@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v19 = type metadata accessor for ServerStatusCode();
  v16 = *(v19 - 8);
  __chkstk_darwin(v19);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000BC4D4(&qword_10169A800, &qword_101393F68);
  v18 = *(v20 - 8);
  __chkstk_darwin(v20);
  v7 = &v15 - v6;
  v8 = type metadata accessor for NFCTapResponse(0);
  __chkstk_darwin(v8);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000035D0(a1, a1[3]);
  sub_100246CDC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v15 = v8;
  v12 = v18;
  v11 = v19;
  v22 = 0;
  *v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v10[1] = v13;
  v21 = 1;
  sub_100246D30();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v12 + 8))(v7, v20);
  (*(v16 + 32))(v10 + *(v15 + 20), v5, v11);
  sub_100246D88(v10, v17);
  sub_100007BAC(a1);
  return sub_100246DEC(v10);
}

uint64_t sub_100246B14()
{
  if (*v0)
  {
    return 0x6F43737574617473;
  }

  else
  {
    return 0x4D6572756C696166;
  }
}

uint64_t sub_100246B60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4D6572756C696166 && a2 == 0xEE00656761737365;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F43737574617473 && a2 == 0xEA00000000006564)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100246C4C(uint64_t a1)
{
  v2 = sub_100246CDC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100246C88(uint64_t a1)
{
  v2 = sub_100246CDC();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100246CDC()
{
  result = qword_10169A808;
  if (!qword_10169A808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A808);
  }

  return result;
}

unint64_t sub_100246D30()
{
  result = qword_10169A810;
  if (!qword_10169A810)
  {
    type metadata accessor for ServerStatusCode();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A810);
  }

  return result;
}

uint64_t sub_100246D88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NFCTapResponse(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100246DEC(uint64_t a1)
{
  v2 = type metadata accessor for NFCTapResponse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100246E5C()
{
  result = qword_10169A818;
  if (!qword_10169A818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A818);
  }

  return result;
}

unint64_t sub_100246EB4()
{
  result = qword_10169A820;
  if (!qword_10169A820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A820);
  }

  return result;
}

unint64_t sub_100246F0C()
{
  result = qword_10169A828;
  if (!qword_10169A828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A828);
  }

  return result;
}

__n128 sub_100246F60(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100246F6C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 32))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 5;
  v5 = v3 - 5;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100246FB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 4;
    }
  }

  return result;
}

uint64_t sub_100247004@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1002475EC(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7;
  }

  return result;
}

unint64_t sub_10024705C(uint64_t a1)
{
  *(a1 + 8) = sub_10024708C();
  result = sub_1002470E0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10024708C()
{
  result = qword_10169A830;
  if (!qword_10169A830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A830);
  }

  return result;
}

unint64_t sub_1002470E0()
{
  result = qword_10169A838;
  if (!qword_10169A838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A838);
  }

  return result;
}

uint64_t sub_100247134(void *a1, uint64_t a2, unint64_t a3)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v10 = sub_100519EE8(a2, a3);
  v13 = v6;
  sub_10015049C(v16, v17);
  sub_100165078();
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  sub_100016590(v10, v13);
  if (!v3)
  {
    sub_1000198E8();
    v11 = FixedWidthInteger.data.getter();
    v14 = v7;
    sub_10015049C(v16, v17);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v11, v14);
    sub_100235658();
    v12 = FixedWidthInteger.data.getter();
    v15 = v8;
    sub_10015049C(v16, v17);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v12, v15);
  }

  return sub_100007BAC(v16);
}

uint64_t sub_1002472D4(unsigned __int8 a1)
{
  v1 = 0x73736563637573;
  v2 = 0x4964696C61766E69;
  v3 = 0x726F707075736E75;
  if (a1 != 3)
  {
    v3 = 0x6168636165726E75;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (!a1)
  {
    v1 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 1u)
  {
    v4 = v1;
  }

  else
  {
    v4 = v2;
  }

  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 41;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0x756C615677617228;
  v7._object = 0xEA00000000003A65;
  String.append(_:)(v7);

  return v4;
}

Swift::Int sub_100247454()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 - 1);
  return Hasher._finalize()();
}

Swift::Int sub_1002474CC(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2 - 1);
  return Hasher._finalize()();
}

unsigned __int8 *sub_100247510@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (v2 < 4)
  {
    v3 = v2 + 1;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1002475EC(void *a1)
{
  v3 = type metadata accessor for Endianness();
  __chkstk_darwin(v3 - 8);
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v30, v31);
  v4 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v1)
  {
    goto LABEL_10;
  }

  v6 = v4;
  v7 = v5;
  v28 = BYTE1(v4);
  v29 = v5;
  sub_100017D5C(v4, v5);
  sub_1000E0A3C();
  if (DataProtocol.isNull.getter())
  {
    sub_100016590(v6, v7);
    v8 = type metadata accessor for BinaryDecodingError();
    sub_100247A38();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, enum case for BinaryDecodingError.decodingError(_:), v8);
    swift_willThrow();
LABEL_9:
    sub_100016590(v6, v7);
LABEL_10:
    sub_100007BAC(v30);
    return sub_100007BAC(a1);
  }

  v10 = Data.trimmed.getter();
  v32 = v11;
  sub_100016590(v6, v7);
  sub_10015049C(v30, v31);
  v12 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v14 = v13;
  sub_100017D5C(v12, v13);
  static Endianness.current.getter();
  sub_1000198E8();
  FixedWidthInteger.init(data:ofEndianness:)();
  if (v28 == 1)
  {
    v15 = type metadata accessor for BinaryDecodingError();
    sub_100247A38();
    swift_allocError();
    (*(*(v15 - 8) + 104))(v16, enum case for BinaryDecodingError.decodingError(_:), v15);
    swift_willThrow();
    v17 = v12;
    v18 = v14;
LABEL_8:
    sub_100016590(v17, v18);
    sub_100016590(v10, v32);
    goto LABEL_9;
  }

  v27 = v14;
  sub_10015049C(v30, v31);
  v19 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v21 = v20;
  v22 = v19;
  sub_100017D5C(v19, v20);
  static Endianness.current.getter();
  sub_100235658();
  v26 = v22;
  FixedWidthInteger.init(data:ofEndianness:)();
  if (v29 == 1)
  {
    v23 = type metadata accessor for BinaryDecodingError();
    sub_100247A38();
    swift_allocError();
    (*(*(v23 - 8) + 104))(v24, enum case for BinaryDecodingError.decodingError(_:), v23);
    swift_willThrow();
    sub_100016590(v26, v21);
    v17 = v12;
    v18 = v27;
    goto LABEL_8;
  }

  sub_100016590(v6, v7);
  sub_100016590(v12, v27);
  sub_100016590(v22, v21);
  sub_100007BAC(v30);
  sub_100007BAC(a1);
  return v10;
}

unint64_t sub_100247A38()
{
  result = qword_101696E30;
  if (!qword_101696E30)
  {
    type metadata accessor for BinaryDecodingError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101696E30);
  }

  return result;
}

unint64_t sub_100247AA4()
{
  result = qword_10169A840;
  if (!qword_10169A840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A840);
  }

  return result;
}

unint64_t sub_100247AF8()
{
  result = qword_10169A848;
  if (!qword_10169A848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A848);
  }

  return result;
}

uint64_t sub_100247B68(uint64_t a1)
{
  v2 = sub_100247D1C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100247BA4(uint64_t a1)
{
  v2 = sub_100247D1C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100247C08(void *a1)
{
  v2 = sub_1000BC4D4(&qword_10169A850, &qword_101394388);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_1000035D0(a1, a1[3]);
  sub_100247D1C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_100247D1C()
{
  result = qword_10169A858;
  if (!qword_10169A858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A858);
  }

  return result;
}

unint64_t sub_100247D84()
{
  result = qword_10169A860;
  if (!qword_10169A860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A860);
  }

  return result;
}

unint64_t sub_100247DDC()
{
  result = qword_10169A868;
  if (!qword_10169A868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A868);
  }

  return result;
}

__n128 sub_100247E78(uint64_t a1, uint64_t a2)
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

uint64_t sub_100247E9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_100247EE4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_100247F58(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100247FE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_100248080(uint64_t a1)
{
  sub_100157BAC(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1002480EC(void *a1)
{
  v3 = sub_1000BC4D4(&qword_10169A9A0, &qword_1013945D0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000035D0(a1, a1[3]);
  sub_10024920C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[11] = 4;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1002482CC(void *a1)
{
  v3 = sub_1000BC4D4(&qword_10169A990, &qword_1013945C8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000035D0(a1, a1[3]);
  sub_1002491B8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for Date();
  sub_100249260(&unk_101697F60, &protocol conformance descriptor for Date);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for KeyDropLostItemDates(0);
    v8[14] = 1;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10024847C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v28 = &v21 - v8;
  v9 = sub_1000BC4D4(&qword_10169A9B0, &qword_1013945D8);
  v26 = *(v9 - 8);
  v27 = v9;
  __chkstk_darwin(v9);
  v11 = &v21 - v10;
  v12 = type metadata accessor for KeyDropLostItemDates(0);
  __chkstk_darwin(v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  sub_1002491B8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v22 = v12;
  v23 = v14;
  v15 = v26;
  v24 = v7;
  type metadata accessor for Date();
  v30 = 0;
  sub_100249260(&qword_101697F40, &protocol conformance descriptor for Date);
  v17 = v27;
  v16 = v28;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v18 = v23;
  sub_1001578A0(v16, v23);
  v29 = 1;
  v19 = v24;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v15 + 8))(v11, v17);
  sub_1001578A0(v19, v18 + *(v22 + 20));
  sub_100249874(v18, v25, type metadata accessor for KeyDropLostItemDates);
  sub_100007BAC(a1);
  return sub_1002498DC(v18, type metadata accessor for KeyDropLostItemDates);
}

uint64_t sub_1002487A8(void *a1)
{
  v3 = sub_1000BC4D4(&qword_10169A9D0, &qword_1013945F0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000035D0(a1, a1[3]);
  sub_100249820();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for Date();
  sub_100249260(&unk_101697F60, &protocol conformance descriptor for Date);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for DelegatedBeaconStartReunitedDates(0);
    v8[14] = 1;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100248958@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v28 = &v21 - v8;
  v9 = sub_1000BC4D4(&qword_10169A9C0, &qword_1013945E8);
  v26 = *(v9 - 8);
  v27 = v9;
  __chkstk_darwin(v9);
  v11 = &v21 - v10;
  started = type metadata accessor for DelegatedBeaconStartReunitedDates(0);
  __chkstk_darwin(started);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  sub_100249820();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v22 = started;
  v23 = v14;
  v15 = v26;
  v24 = v7;
  type metadata accessor for Date();
  v30 = 0;
  sub_100249260(&qword_101697F40, &protocol conformance descriptor for Date);
  v17 = v27;
  v16 = v28;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v18 = v23;
  sub_1001578A0(v16, v23);
  v29 = 1;
  v19 = v24;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v15 + 8))(v11, v17);
  sub_1001578A0(v19, v18 + *(v22 + 20));
  sub_100249874(v18, v25, type metadata accessor for DelegatedBeaconStartReunitedDates);
  sub_100007BAC(a1);
  return sub_1002498DC(v18, type metadata accessor for DelegatedBeaconStartReunitedDates);
}

uint64_t sub_100248C84()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x696A6F6D65;
  v4 = 0x65566D6574737973;
  if (v1 != 3)
  {
    v4 = 0x754E6C6169726573;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6449656C6F72;
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

uint64_t sub_100248D24@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1002492A4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100248D4C(uint64_t a1)
{
  v2 = sub_10024920C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100248D88(uint64_t a1)
{
  v2 = sub_10024920C();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_100248DC4@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100249458(a2, v6);
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

uint64_t sub_100248E60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x800000010134DA90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010134DAB0 == a2)
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
  return result;
}

uint64_t sub_100248F48(uint64_t a1)
{
  v2 = sub_1002491B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100248F84(uint64_t a1)
{
  v2 = sub_1002491B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100248FF0()
{
  if (*v0)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_10024902C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x800000010134DA90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000018 && 0x800000010134DAD0 == a2)
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
  return result;
}

uint64_t sub_100249110(uint64_t a1)
{
  v2 = sub_100249820();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10024914C(uint64_t a1)
{
  v2 = sub_100249820();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1002491B8()
{
  result = qword_10169A998;
  if (!qword_10169A998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A998);
  }

  return result;
}

unint64_t sub_10024920C()
{
  result = qword_10169A9A8;
  if (!qword_10169A9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A9A8);
  }

  return result;
}

uint64_t sub_100249260(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1002492A4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449656C6F72 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696A6F6D65 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65566D6574737973 && a2 == 0xED00006E6F697372 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL)
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

uint64_t sub_100249458@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_10169A9B8, &qword_1013945E0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_10024920C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  LOBYTE(v36[0]) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  LOBYTE(v36[0]) = 1;
  v28 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v36[0]) = 2;
  v27 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v30 = v12;
  LOBYTE(v36[0]) = 3;
  v26 = KeyedDecodingContainer.decode(_:forKey:)();
  v29 = v13;
  v37 = 4;
  v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v15 = *(v6 + 8);
  v16 = v14;
  v25 = v17;
  v15(v8, v5);
  *&v31 = v9;
  *(&v31 + 1) = v11;
  v19 = v28;
  v18 = v29;
  *&v32 = v28;
  *(&v32 + 1) = v27;
  *&v33 = v30;
  *(&v33 + 1) = v26;
  *&v34 = v29;
  *(&v34 + 1) = v16;
  v20 = v25;
  v35 = v25;
  sub_1002497B8(&v31, v36);
  sub_100007BAC(a1);
  v36[0] = v9;
  v36[1] = v11;
  v36[2] = v19;
  v36[3] = v27;
  v36[4] = v30;
  v36[5] = v26;
  v36[6] = v18;
  v36[7] = v16;
  v36[8] = v20;
  result = sub_1002497F0(v36);
  v22 = v34;
  *(a2 + 32) = v33;
  *(a2 + 48) = v22;
  *(a2 + 64) = v35;
  v23 = v32;
  *a2 = v31;
  *(a2 + 16) = v23;
  return result;
}

unint64_t sub_100249820()
{
  result = qword_10169A9C8;
  if (!qword_10169A9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A9C8);
  }

  return result;
}

uint64_t sub_100249874(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002498DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100249970()
{
  result = qword_10169A9D8;
  if (!qword_10169A9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A9D8);
  }

  return result;
}

unint64_t sub_1002499C8()
{
  result = qword_10169A9E0;
  if (!qword_10169A9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A9E0);
  }

  return result;
}

unint64_t sub_100249A20()
{
  result = qword_10169A9E8;
  if (!qword_10169A9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A9E8);
  }

  return result;
}

unint64_t sub_100249A78()
{
  result = qword_10169A9F0;
  if (!qword_10169A9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A9F0);
  }

  return result;
}

unint64_t sub_100249AD0()
{
  result = qword_10169A9F8;
  if (!qword_10169A9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A9F8);
  }

  return result;
}

unint64_t sub_100249B28()
{
  result = qword_10169AA00;
  if (!qword_10169AA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169AA00);
  }

  return result;
}

unint64_t sub_100249B80()
{
  result = qword_10169AA08;
  if (!qword_10169AA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169AA08);
  }

  return result;
}

unint64_t sub_100249BD8()
{
  result = qword_10169AA10;
  if (!qword_10169AA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169AA10);
  }

  return result;
}

unint64_t sub_100249C30()
{
  result = qword_10169AA18;
  if (!qword_10169AA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169AA18);
  }

  return result;
}

uint64_t sub_100249CB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x64496572616873 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100249D3C(uint64_t a1)
{
  v2 = sub_10024B8F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100249D78(uint64_t a1)
{
  v2 = sub_10024B8F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100249DB4(void *a1)
{
  v2 = sub_1000BC4D4(&qword_10169AB70, &qword_101394B30);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_1000035D0(a1, a1[3]);
  sub_10024B8F0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for UUID();
  sub_10024B840(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100249F2C(void *a1)
{
  v3 = sub_1000BC4D4(&qword_10169AB80, &qword_101394B38);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000035D0(a1, a1[3]);
  sub_10024B7EC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for UUID();
  sub_10024B840(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for KeyDropDelegatedShareMetadataResponse(0);
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[13] = 2;
    type metadata accessor for Date();
    sub_10024B840(&unk_101697F60, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v8[12] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10024A188@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v28 = type metadata accessor for Date();
  v26 = *(v28 - 8);
  __chkstk_darwin(v28);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  v27 = *(v5 - 8);
  __chkstk_darwin(v5);
  v30 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1000BC4D4(&qword_10169AB60, &qword_101394B28);
  v29 = *(v32 - 8);
  __chkstk_darwin(v32);
  v8 = &v24 - v7;
  v9 = type metadata accessor for KeyDropDelegatedShareMetadataResponse(0);
  __chkstk_darwin(v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  sub_10024B7EC();
  v31 = v8;
  v12 = v33;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v12)
  {
    return sub_100007BAC(a1);
  }

  v13 = v11;
  v15 = v27;
  v14 = v28;
  v37 = 0;
  sub_10024B840(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v16 = *(v15 + 32);
  v33 = v5;
  v16(v13, v30, v5);
  v36 = 1;
  v17 = KeyedDecodingContainer.decode(_:forKey:)();
  v30 = v9;
  *(v13 + *(v9 + 20)) = v17;
  v35 = 2;
  sub_10024B840(&qword_101697F40, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v18 = v4;
  v19 = v14;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20 = a1;
  v21 = v30;
  (*(v26 + 32))(v13 + *(v30 + 6), v18, v19);
  v34 = 3;
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v29 + 8))(v31, v32);
  *(v13 + *(v21 + 7)) = v22 & 1;
  sub_10024B888(v13, v25, type metadata accessor for KeyDropDelegatedShareMetadataResponse);
  sub_100007BAC(v20);
  return sub_10024B590(v13, type metadata accessor for KeyDropDelegatedShareMetadataResponse);
}

unint64_t sub_10024A6A4()
{
  v1 = 0x64496572616873;
  v2 = 0x6974617269707865;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0)
  {
    v1 = 0x43726F7469736976;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10024A730@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10024BB74(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10024A758(uint64_t a1)
{
  v2 = sub_10024B7EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10024A794(uint64_t a1)
{
  v2 = sub_10024B7EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10024A800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  type metadata accessor for KeyDropJoinToken(0);
  v4[11] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_10024A8F0, v3, 0);
}

uint64_t sub_10024A8F0()
{
  v23 = v0;
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[9];
  (*(v0[13] + 16))(v1, v0[8], v0[12]);
  sub_10024B888(v3, v2, type metadata accessor for KeyDropJoinToken);
  v4 = sub_10024AE50(v1, v2);
  v0[15] = v4;
  v0[16] = v5;
  v0[17] = v6;
  v7 = v4;
  v8 = v5;
  v9 = v6;
  if (qword_1016954C0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000076D4(v10, qword_10177CDD0);

  sub_100017D5C(v8, v9);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  sub_100016590(v8, v9);
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136315138;
    v15 = sub_100646BE8();
    if (v16)
    {
      v17 = v16;
    }

    else
    {
      v15 = 7104878;
      v17 = 0xE300000000000000;
    }

    v18 = sub_1000136BC(v15, v17, &v22);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "KeyDropShareMetaDataRequest: %s", v13, 0xCu);
    sub_100007BAC(v14);
  }

  v0[5] = &type metadata for KeyDropDelegatedShareMetadataRequest;
  v0[6] = sub_10024B51C();
  v0[2] = v7;
  v0[3] = v8;
  v0[4] = v9;

  sub_100017D5C(v8, v9);
  v19 = swift_task_alloc();
  v0[18] = v19;
  *v19 = v0;
  v19[1] = sub_10024AC08;
  v20 = v0[7];

  return sub_10103B89C(v20, (v0 + 2), 5);
}

uint64_t sub_10024AC08()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = sub_10024ADC0;
  }

  else
  {
    v5 = *(v2 + 80);
    sub_100007BAC((v2 + 16));
    v4 = sub_10024AD30;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10024AD30()
{
  v1 = v0[16];
  v2 = v0[17];

  sub_100016590(v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10024ADC0()
{
  v1 = v0[16];
  v2 = v0[17];

  sub_100016590(v1, v2);
  sub_100007BAC(v0 + 2);

  v3 = v0[1];

  return v3();
}

char *sub_10024AE50(uint64_t a1, uint64_t a2)
{
  v51 = a2;
  v3 = type metadata accessor for P256.Signing.PrivateKey();
  object = *(v3 - 8);
  countAndFlagsBits = v3;
  __chkstk_darwin(v3);
  v47 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for P256.Signing.ECDSASignature();
  v44 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for KeyDropDelegatedShareMetadataRequest.KeyDropMetaDataContent(0);
  __chkstk_darwin(v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  v15 = JSONEncoder.init()();
  *v14 = sub_100281AE0;
  v14[1] = 0;
  (*(v12 + 104))(v14, enum case for JSONEncoder.DateEncodingStrategy.custom(_:), v11);
  v16 = a1;
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v10, a1, v17);
  sub_10024B840(&qword_10169AA28, type metadata accessor for KeyDropDelegatedShareMetadataRequest.KeyDropMetaDataContent, &unk_101394AB8);
  v19 = v48;
  v20 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v19)
  {

    sub_10024B590(v51, type metadata accessor for KeyDropJoinToken);
    (*(v18 + 8))(a1, v17);
    sub_10024B590(v10, type metadata accessor for KeyDropDelegatedShareMetadataRequest.KeyDropMetaDataContent);
  }

  else
  {
    v22 = v20;
    v48 = v15;
    v23 = v21;
    v42 = v7;
    v43 = v10;
    v41 = v5;
    v24 = (v51 + *(type metadata accessor for KeyDropJoinToken(0) + 20));
    v25 = v24[1];
    v49 = *v24;
    v50 = v25;
    sub_100017D5C(v49, v25);
    v26 = v47;
    P256.Signing.PrivateKey.init<A>(rawRepresentation:)();
    v49 = v22;
    v50 = v23;
    sub_1000E0A3C();
    P256.Signing.PrivateKey.signature<A>(for:)();
    v39 = v23;
    v40 = v16;
    object[1](v26, countAndFlagsBits);
    v10 = sub_100646BE0();
    if (qword_101694F58 != -1)
    {
      swift_once();
    }

    v47 = qword_10177C218;
    v28 = [objc_opt_self() sharedInstance];
    v29 = [v28 isInternalBuild];

    v30 = v44;
    if (v29 && (v31 = String._bridgeToObjectiveC()(), v32 = [v47 BOOLForKey:v31], v31, (v32 & 1) != 0))
    {

      v33 = v42;
    }

    else
    {
      v47 = "DisableShareAuthorization";
      v33 = v42;
      v34 = P256.Signing.ECDSASignature.derRepresentation.getter();
      v36 = v35;
      v37 = Data.base64EncodedString(options:)(0);
      object = v37._object;
      countAndFlagsBits = v37._countAndFlagsBits;
      sub_100016590(v34, v36);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49 = v10;
      sub_100FFACA0(countAndFlagsBits, object, 0xD000000000000012, v47 | 0x8000000000000000, isUniquelyReferenced_nonNull_native);

      v10 = v49;
    }

    sub_10024B590(v51, type metadata accessor for KeyDropJoinToken);
    (*(v18 + 8))(v40, v17);
    (*(v30 + 8))(v33, v41);
    sub_10024B590(v43, type metadata accessor for KeyDropDelegatedShareMetadataRequest.KeyDropMetaDataContent);
  }

  return v10;
}

unint64_t sub_10024B51C()
{
  result = qword_10169AA20;
  if (!qword_10169AA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169AA20);
  }

  return result;
}

uint64_t sub_10024B590(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10024B618(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10024B6DC(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Date();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_10024B770(uint64_t a1)
{
  result = sub_10024B798();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10024B798()
{
  result = qword_10169AB58;
  if (!qword_10169AB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169AB58);
  }

  return result;
}

unint64_t sub_10024B7EC()
{
  result = qword_10169AB68;
  if (!qword_10169AB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169AB68);
  }

  return result;
}

uint64_t sub_10024B840(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10024B888(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_10024B8F0()
{
  result = qword_10169AB78;
  if (!qword_10169AB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169AB78);
  }

  return result;
}

unint64_t sub_10024B968()
{
  result = qword_10169AB88;
  if (!qword_10169AB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169AB88);
  }

  return result;
}

unint64_t sub_10024B9C0()
{
  result = qword_10169AB90;
  if (!qword_10169AB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169AB90);
  }

  return result;
}

unint64_t sub_10024BA18()
{
  result = qword_10169AB98;
  if (!qword_10169AB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169AB98);
  }

  return result;
}

unint64_t sub_10024BA70()
{
  result = qword_10169ABA0;
  if (!qword_10169ABA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169ABA0);
  }

  return result;
}

unint64_t sub_10024BAC8()
{
  result = qword_10169ABA8;
  if (!qword_10169ABA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169ABA8);
  }

  return result;
}

unint64_t sub_10024BB20()
{
  result = qword_10169ABB0;
  if (!qword_10169ABB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169ABB0);
  }

  return result;
}

uint64_t sub_10024BB74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496572616873 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x43726F7469736976 && a2 == 0xEC000000746E756FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6974617269707865 && a2 == 0xEA00000000006E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x800000010134DAF0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_10024BCEC()
{
  _StringGuts.grow(_:)(21);

  type metadata accessor for MACAddress();
  sub_10024EB90(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0x203A4B524920;
  v1._object = 0xE600000000000000;
  String.append(_:)(v1);
  type metadata accessor for PeripheralConnectionMaterial(0);
  v2._countAndFlagsBits = Data.hexString.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 62;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  return 0x737365726464613CLL;
}

uint64_t sub_10024BE10(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_10169B548, &qword_101394FD8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12[-v7];
  sub_1000035D0(a1, a1[3]);
  sub_10024EB3C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = 0;
  type metadata accessor for MACAddress();
  sub_10024EB90(&qword_10169B550, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = (v3 + *(type metadata accessor for PeripheralConnectionMaterial(0) + 20));
    v10 = v9[1];
    v13 = *v9;
    v14 = v10;
    v12[15] = 1;
    sub_100017D5C(v13, v10);
    sub_1000E3190();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, v14);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10024BFF0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v27 = type metadata accessor for MACAddress();
  v24 = *(v27 - 8);
  __chkstk_darwin(v27);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_10169B538, &qword_101394FD0);
  v7 = *(v6 - 8);
  v25 = v6;
  v26 = v7;
  __chkstk_darwin(v6);
  v9 = &v20 - v8;
  v10 = type metadata accessor for PeripheralConnectionMaterial(0);
  __chkstk_darwin(v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  sub_10024EB3C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v22 = v10;
  v13 = v12;
  v14 = v24;
  LOBYTE(v28) = 0;
  sub_10024EB90(&qword_1016A41D0, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
  v15 = v27;
  v16 = v25;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = *(v14 + 32);
  v21 = v13;
  v17(v13, v5, v15);
  v29 = 1;
  sub_1000E307C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v26 + 8))(v9, v16);
  v18 = v21;
  *(v21 + *(v22 + 20)) = v28;
  sub_10024EBD8(v18, v23);
  sub_100007BAC(a1);
  return sub_10024EC3C(v18);
}

uint64_t sub_10024C350()
{
  if (*v0)
  {
    return 7041641;
  }

  else
  {
    return 0x73736572646461;
  }
}

uint64_t sub_10024C384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73736572646461 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7041641 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10024C460(uint64_t a1)
{
  v2 = sub_10024EB3C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10024C49C(uint64_t a1)
{
  v2 = sub_10024EB3C();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_10024C508(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for MACAddress();
  sub_10024EB90(&unk_1016BC080, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
  dispatch thunk of Hashable.hash(into:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10024C5B0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MACAddress();
  sub_10024EB90(&unk_1016BC080, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
  dispatch thunk of Hashable.hash(into:)();

  return Data.hash(into:)();
}

Swift::Int sub_10024C64C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for MACAddress();
  sub_10024EB90(&unk_1016BC080, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
  dispatch thunk of Hashable.hash(into:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

BOOL sub_10024C6F4(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  if ((static MACAddress.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 20);
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = *v10;
  v12 = v10[1];

  return _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v8, v9, v11, v12);
}

void sub_10024C7C4()
{
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v1 = qword_10177C218;
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 isInternalBuild];

  if (v3)
  {
    v4 = String._bridgeToObjectiveC()();
    v5 = [v1 BOOLForKey:v4];

    if (v5)
    {
      v6 = *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_scrtAttestation + 8);
      if (v6 >> 60 != 15)
      {
        v7 = *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_scrtAttestation);
        v8 = v6 >> 62;
        if ((v6 >> 62) > 1)
        {
          if (v8 != 2)
          {
            goto LABEL_20;
          }

          v10 = *(v7 + 16);
          v9 = *(v7 + 24);
          v11 = v9 - v10;
          if (!__OFSUB__(v9, v10))
          {
            goto LABEL_17;
          }

          __break(1u);
        }

        else if (!v8)
        {
          if (BYTE6(v6) < 0x20uLL)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

        if (__OFSUB__(HIDWORD(v7), v7))
        {
          __break(1u);
          return;
        }

        v11 = HIDWORD(v7) - v7;
LABEL_17:
        sub_100017D5C(v7, v6);
        if (v11 < 32)
        {
          goto LABEL_20;
        }

LABEL_19:
        v12 = sub_100503ED4(0, 31, v7, v6);
        v14 = v13;
        v15 = *(v0 + 16);
        v16 = *(v0 + 24);
        sub_100017D5C(v15, v16);
        _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v12, v14, v15, v16);
        sub_100016590(v15, v16);
        sub_100016590(v12, v14);
LABEL_20:
        sub_100006654(v7, v6);
      }
    }
  }
}

uint64_t sub_10024C9A8()
{
  result = Data.init(base64Encoded:options:)();
  qword_10169ABB8 = result;
  qword_10169ABC0 = v1;
  return result;
}

void *sub_10024C9E8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = xmmword_101394D60;
  *(v2 + 64) = xmmword_101394D60;
  *(v2 + 80) = 0xF000000000000000;
  *(v2 + 88) = 0;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 128) = 0;
  v6 = v2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_fmnaId;
  v3[14] = 0xF000000000000000;
  v3[15] = 0;
  v7 = type metadata accessor for UUID();
  v49 = v6;
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = (v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_status);
  *v8 = xmmword_10138BBF0;
  v47 = v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_encryptionKeyK1;
  v48 = v8;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_encryptionKeyK1) = xmmword_10138BBF0;
  v50 = v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1) = xmmword_10138BBF0;
  v9 = v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC2;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0;
  v10 = v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC3;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0;
  v51 = v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS2;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS2) = xmmword_10138BBF0;
  v52 = v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serverSeed;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serverSeed) = xmmword_10138BBF0;
  v11 = (v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_initialPairingInfo);
  v11[3] = 0u;
  v11[4] = 0u;
  v11[1] = 0u;
  v11[2] = 0u;
  *v11 = xmmword_10138BBF0;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_keyGenerationStatus) = 4;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccLeafCert) = xmmword_10138BBF0;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccIntCA1) = xmmword_10138BBF0;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaCerts) = xmmword_10138BBF0;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS1) = xmmword_10138BBF0;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaSignatureS2) = xmmword_10138BBF0;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serverSignatureS3) = xmmword_10138BBF0;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS4) = xmmword_10138BBF0;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryEcid) = xmmword_10138BBF0;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryChipId) = xmmword_10138BBF0;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryPartId) = 256;
  v12 = (v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryDisplayName);
  *v12 = 0;
  v12[1] = 0;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_numBeacons) = 1;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbers) = _swiftEmptyArrayStorage;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_pairingSessionToken) = xmmword_10138BBF0;
  v13 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_macAddress;
  v14 = type metadata accessor for MACAddress();
  v15 = *(*(v14 - 8) + 56);
  v16 = v3 + v13;
  v17 = a2;
  v15(v16, 1, 1, v14);
  v15(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_classicMacAddress, 1, 1, v14);
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_standalonePairing) = 0;
  v18 = (v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_maskedAppleId);
  *v18 = 0;
  v18[1] = 0;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_authNonce) = xmmword_10138BBF0;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_alternateSerialNumber) = xmmword_10138BBF0;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryCerts) = xmmword_10138BBF0;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_attestation) = xmmword_10138BBF0;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_csr) = xmmword_10138BBF0;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySignature) = xmmword_10138BBF0;
  v19 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_peripheralConnectionMaterial;
  v20 = type metadata accessor for PeripheralConnectionMaterial(0);
  (*(*(v20 - 8) + 56))(v3 + v19, 1, 1, v20);
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber) = xmmword_10138BBF0;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_seedK1) = xmmword_10138BBF0;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_productID) = 3;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbersAndMACAddresses) = _swiftEmptyDictionarySingleton;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbersAndPartIds) = _swiftEmptyDictionarySingleton;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_allSerialNumbersAndPartIds) = _swiftEmptyDictionarySingleton;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_findMyNetworkId) = xmmword_10138BBF0;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_isPairingEligibilityDataComplete) = 0;
  v21 = v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_firmwareVersion;
  *v21 = 0;
  v21[4] = 1;
  v22 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_productInfo;
  v23 = type metadata accessor for AccessoryProductInfo(0);
  (*(*(v23 - 8) + 56))(v3 + v22, 1, 1, v23);
  v24 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryMetadata;
  v25 = type metadata accessor for AccessoryMetadata(0);
  (*(*(v25 - 8) + 56))(v3 + v24, 1, 1, v25);
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_skippedClassic) = 0;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_acrtCerts) = xmmword_10138BBF0;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_scrtAttestation) = xmmword_10138BBF0;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_systemPublicKey) = xmmword_10138BBF0;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_refPublicKey) = xmmword_10138BBF0;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_isSharedUnit) = 0;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_isManagedPeripheral) = 0;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_forcePair) = 0;
  *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_forcePairSNs) = _swiftEmptyArrayStorage;
  v3[2] = a1;
  v3[3] = a2;
  sub_100017D5C(a1, a2);
  v26 = sub_100EF9784();
  v27 = (v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serialNumber);
  *v27 = v26;
  v27[1] = v28;
  v29 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v29 = v26 & 0xFFFFFFFFFFFFLL;
  }

  if (!v29)
  {
    v42 = v47;
    v43 = v48;
    v44 = static os_log_type_t.error.getter();
    if (qword_1016950C8 != -1)
    {
      v53 = v44;
      swift_once();
      v44 = v53;
    }

    os_log(_:dso:log:_:_:)(v44, &_mh_execute_header, qword_10177C410, "serialNumber is not available.", 30, 2, _swiftEmptyArrayStorage, v47, v48);
    sub_100016590(a1, a2);
    sub_100016590(v3[2], v3[3]);
    sub_100006654(v3[5], v3[6]);
    sub_100006654(v3[7], v3[8]);
    sub_100006654(v3[9], v3[10]);

    sub_100006654(v3[13], v3[14]);

    sub_10000B3A8(v49, &qword_1016980D0, &unk_10138F3B0);
    sub_100006654(*v43, *(v43 + 1));
    sub_100006654(*v42, *(v42 + 1));
    sub_100006654(*v50, *(v50 + 1));
    sub_10000B3A8(v9, &qword_101697378, &unk_101391940);
    sub_10000B3A8(v10, &qword_101697320, &qword_10138BE90);
    sub_100006654(*v51, *(v51 + 1));
    sub_100006654(*v52, *(v52 + 1));
    v45 = v11[3];
    v54[2] = v11[2];
    v54[3] = v45;
    v54[4] = v11[4];
    v46 = v11[1];
    v54[0] = *v11;
    v54[1] = v46;
    sub_10000B3A8(v54, &qword_101697328, &unk_10138BEA0);

    sub_100006654(*(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccLeafCert), *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccLeafCert + 8));
    sub_100006654(*(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccIntCA1), *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccIntCA1 + 8));
    sub_100006654(*(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaCerts), *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaCerts + 8));
    sub_100006654(*(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS1), *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS1 + 8));
    sub_100006654(*(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaSignatureS2), *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaSignatureS2 + 8));
    sub_100006654(*(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serverSignatureS3), *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serverSignatureS3 + 8));
    sub_100006654(*(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS4), *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS4 + 8));
    sub_100006654(*(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryEcid), *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryEcid + 8));
    sub_100006654(*(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryChipId), *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryChipId + 8));

    sub_100006654(*(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_pairingSessionToken), *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_pairingSessionToken + 8));
    sub_10000B3A8(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_macAddress, &qword_1016A40D0, &unk_10138BE70);
    sub_10000B3A8(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_classicMacAddress, &qword_1016A40D0, &unk_10138BE70);

    sub_100006654(*(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_authNonce), *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_authNonce + 8));
    sub_100006654(*(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_alternateSerialNumber), *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_alternateSerialNumber + 8));
    sub_100006654(*(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryCerts), *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryCerts + 8));
    sub_100006654(*(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_attestation), *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_attestation + 8));
    sub_100006654(*(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_csr), *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_csr + 8));
    sub_100006654(*(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySignature), *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySignature + 8));
    sub_10000B3A8(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_peripheralConnectionMaterial, &qword_10169B558, &qword_1013E8940);
    sub_100006654(*(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber), *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber + 8));
    sub_100006654(*(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_seedK1), *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_seedK1 + 8));

    sub_100006654(*(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_findMyNetworkId), *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_findMyNetworkId + 8));
    sub_10000B3A8(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_productInfo, &qword_101697268, &qword_101394FE0);
    sub_10000B3A8(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryMetadata, &qword_1016A62A0, &unk_101396E10);
    sub_100006654(*(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_acrtCerts), *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_acrtCerts + 8));
    sub_100006654(*(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_scrtAttestation), *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_scrtAttestation + 8));
    sub_100006654(*(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_systemPublicKey), *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_systemPublicKey + 8));
    sub_100006654(*(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_refPublicKey), *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_refPublicKey + 8));

    type metadata accessor for AccessoryPairingInfo(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v31 = result;
    uniqueChipID = MobileGestalt_get_uniqueChipID();

    *&v54[0] = uniqueChipID;
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = (v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_ecid);
    *v34 = v33;
    v34[1] = v35;
    result = MobileGestalt_get_current_device();
    if (result)
    {
      v36 = result;
      chipID = MobileGestalt_get_chipID();

      *&v54[0] = chipID;
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;
      sub_100016590(a1, v17);
      v41 = (v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_chipId);
      *v41 = v38;
      v41[1] = v40;
      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10024D46C(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for HashAlgorithm();
  v55 = *(v4 - 8);
  v56 = v4;
  __chkstk_darwin(v4);
  v54 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for String.Encoding();
  v58 = *(v6 - 8);
  v59 = v6;
  __chkstk_darwin(v6);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = static os_log_type_t.info.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  v60 = qword_10177C410;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v10 = swift_allocObject();
  v57 = xmmword_101385D80;
  *(v10 + 16) = xmmword_101385D80;
  if (a2 >> 60 == 15)
  {
    v11 = 0;
    v12 = 0;
  }

  else
  {
    v11 = Data.hexString.getter();
    v12 = v13;
  }

  *(v10 + 56) = &type metadata for String;
  v14 = sub_100008C00();
  *(v10 + 64) = v14;
  if (v12)
  {
    v15 = v11;
  }

  else
  {
    v15 = 0;
  }

  v16 = 0xE000000000000000;
  if (v12)
  {
    v16 = v12;
  }

  *(v10 + 32) = v15;
  *(v10 + 40) = v16;
  v17 = v60;
  os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v60, "E1 encryption key from server: %@.", 34, 2, v10);

  v18 = [objc_opt_self() defaultStore];
  if (v18)
  {
    v19 = v18;
    v20 = a1;
    v21 = a2;
    if (a2 >> 60 == 15)
    {
      if (qword_1016944E8 != -1)
      {
        swift_once();
      }

      v21 = qword_10169ABC0;
      if (qword_10169ABC0 >> 60 == 15)
      {
        v22 = static os_log_type_t.error.getter();
        os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, v17, "Invalid server public key.", 26, 2, _swiftEmptyArrayStorage);
LABEL_26:

        return 0;
      }

      v20 = qword_10169ABB8;
      sub_100017D5C(qword_10169ABB8, qword_10169ABC0);
    }

    sub_10002E98C(a1, a2);
    v23 = [v19 aa_primaryAppleAccount];
    if (v23)
    {
      v24 = v23;
      v25 = [v23 aa_personID];
      if (v25)
      {
        v26 = v25;
        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;

        v30 = static os_log_type_t.debug.getter();
        v31 = swift_allocObject();
        *(v31 + 16) = v57;
        *(v31 + 56) = &type metadata for String;
        *(v31 + 64) = v14;
        *(v31 + 32) = v27;
        *(v31 + 40) = v29;

        os_log(_:dso:log:_:_:)(v30, &_mh_execute_header, v60, "DSID: %@.", 9, 2, v31);

        static String.Encoding.utf8.getter();
        v32 = String.data(using:allowLossyConversion:)();
        v34 = v33;

        (*(v58 + 8))(v8, v59);
        if (v34 >> 60 != 15)
        {
          v36 = v54;
          v35 = v55;
          v37 = v32;
          v38 = v56;
          (*(v55 + 104))(v54, enum case for HashAlgorithm.sha256(_:), v56);
          v39 = v34;
          v40 = Data.hash(algorithm:)();
          v59 = v41;
          (*(v35 + 8))(v36, v38);
          sub_100017D5C(v20, v21);
          v42 = sub_10049C290(v20, v21);
          v44 = v43;
          v56 = v39;
          v58 = v37;
          v45 = objc_autoreleasePoolPush();
          *&v57 = v40;
          sub_100A79398(&v61, &v62);
          objc_autoreleasePoolPop(v45);
          sub_100495F0C(v62, v63, &v62);

          sub_100016590(v20, v21);
          sub_100016590(v42, v44);
          sub_100016590(v57, v59);
          sub_100006654(v58, v56);

          v47 = v62;
          v48 = v63;
          v49 = v53;
          v50 = *(v53 + 40);
          v51 = *(v53 + 48);
          *(v53 + 40) = v62;
          *(v49 + 48) = v48;
          sub_100017D5C(v47, v48);
          sub_100006654(v50, v51);
          return v47;
        }

        goto LABEL_25;
      }
    }

    v46 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v46, &_mh_execute_header, v17, "Failed to obtain DSID from account.", 35, 2, _swiftEmptyArrayStorage);
LABEL_25:
    sub_100016590(v20, v21);
    goto LABEL_26;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

double sub_10024DAE0@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a4@<X8>)
{
  v6 = v4[8];
  if (v6 >> 60 == 15 || (v7 = v4[6], v7 >> 60 == 15))
  {
    v8 = static os_log_type_t.error.getter();
    if (qword_1016950C8 != -1)
    {
      v30 = v8;
      swift_once();
      v8 = v30;
    }

    os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, qword_10177C410, "encryptedBlobE2 is not available.", 33, 2, _swiftEmptyArrayStorage);
LABEL_6:
    sub_10024ECB0(&v53);
    goto LABEL_7;
  }

  v15 = v4[7];
  v16 = v4[5];
  v17 = *(v4 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_chipId + 8);
  if (!v17 || (v18 = *(v4 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_ecid + 8)) == 0)
  {
    sub_10002E98C(v4[7], v4[8]);
    sub_10002E98C(v16, v7);
    v29 = static os_log_type_t.error.getter();
    if (qword_1016950C8 != -1)
    {
      v31 = v29;
      swift_once();
      v29 = v31;
    }

    os_log(_:dso:log:_:_:)(v29, &_mh_execute_header, qword_10177C410, "Owner device info is not available.", 35, 2, _swiftEmptyArrayStorage);
    sub_100006654(v16, v7);
    sub_100006654(v15, v6);
    goto LABEL_6;
  }

  v41 = *(v4 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_chipId);
  v40 = *(v4 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_ecid);
  sub_10002E98C(v15, v6);
  sub_10002E98C(v16, v7);

  v19 = static os_log_type_t.debug.getter();
  v38 = v17;
  v39 = v16;
  v37 = v18;
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  v20 = qword_10177C410;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_101385D80;
  sub_100017D5C(v15, v6);
  v22 = Data.base64EncodedString(options:)(0);
  sub_100006654(v15, v6);
  *(v21 + 56) = &type metadata for String;
  *(v21 + 64) = sub_100008C00();
  *(v21 + 32) = v22;
  os_log(_:dso:log:_:_:)(v19, &_mh_execute_header, v20, "E2: %@", 6, 2, v21);

  v23 = *(v4 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serialNumber + 8);
  v24 = v4[2];
  v25 = v4[3];
  v26 = v4[12];
  v34 = *(v4 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serialNumber);
  v35 = v4[11];
  v33 = v15;
  v27 = v4[13];
  v32 = v4[14];

  sub_100017D5C(v24, v25);

  sub_10002E98C(v27, v32);
  *&v43 = a1;
  *(&v43 + 1) = a2;
  *&v44 = v33;
  *(&v44 + 1) = v6;
  *&v45 = v40;
  *(&v45 + 1) = v37;
  *&v46 = v41;
  *(&v46 + 1) = v38;
  *&v47 = v34;
  *(&v47 + 1) = v23;
  *&v48 = v24;
  *(&v48 + 1) = v25;
  *&v49 = v39;
  *(&v49 + 1) = v7;
  *&v50 = v35;
  *(&v50 + 1) = v26;
  *&v51 = v27;
  *(&v51 + 1) = v32;
  *&v52 = sub_10098E010();
  *(&v52 + 1) = v28;
  SharingCircleWildAdvertisementKey.init(key:)();
  sub_100017D5C(a1, a2);
  v59 = v49;
  v60 = v50;
  v61 = v51;
  v62 = v52;
  v55 = v45;
  v56 = v46;
  v57 = v47;
  v58 = v48;
  v53 = v43;
  v54 = v44;
LABEL_7:
  v9 = v60;
  a4[6] = v59;
  a4[7] = v9;
  v10 = v62;
  a4[8] = v61;
  a4[9] = v10;
  v11 = v56;
  a4[2] = v55;
  a4[3] = v11;
  v12 = v58;
  a4[4] = v57;
  a4[5] = v12;
  result = *&v53;
  v14 = v54;
  *a4 = v53;
  a4[1] = v14;
  return result;
}

double sub_10024DED0@<D0>(_OWORD *a2@<X8>)
{
  v4 = v2[10];
  if (v4 >> 60 == 15)
  {
    v5 = static os_log_type_t.error.getter();
    if (qword_1016950C8 != -1)
    {
      v21 = v5;
      swift_once();
      v5 = v21;
    }

    os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, qword_10177C410, "encryptedBlobE4 is not available.", 33, 2, _swiftEmptyArrayStorage);
  }

  else
  {
    v6 = v2[9];
    v7 = *(v2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_chipId + 8);
    if (v7 && (v8 = *(v2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_ecid + 8)) != 0)
    {
      v9 = *(v2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_status + 8);
      if (v9 >> 60 != 15)
      {
        v28 = *(v2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_ecid);
        v29 = *(v2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_chipId);
        v17 = *(v2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_status);
        v18 = *(v2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serialNumber + 8);
        v19 = v2[12];
        v26 = *(v2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serialNumber);
        v27 = v2[11];
        v25 = v2[13];
        v24 = v2[14];
        sub_10002E98C(v6, v4);

        sub_10002E98C(v17, v9);

        sub_10002E98C(v25, v24);
        *&v30 = v28;
        *(&v30 + 1) = v8;
        *&v31 = v29;
        *(&v31 + 1) = v7;
        *&v32 = v26;
        *(&v32 + 1) = v18;
        *&v33 = v17;
        *(&v33 + 1) = v9;
        *&v34 = v6;
        *(&v34 + 1) = v4;
        *&v35 = v27;
        *(&v35 + 1) = v19;
        *&v36 = v25;
        *(&v36 + 1) = v24;
        *&v37 = sub_10098E010();
        *(&v37 + 1) = v20;
        SharingCircleWildAdvertisementKey.init(key:)();
        v42 = v34;
        v43 = v35;
        v44 = v36;
        v45 = v37;
        v38 = v30;
        v39 = v31;
        v40 = v32;
        v41 = v33;
        goto LABEL_16;
      }

      sub_10002E98C(v2[9], v2[10]);
      v10 = static os_log_type_t.error.getter();
      if (qword_1016950C8 != -1)
      {
        v23 = v10;
        swift_once();
        v10 = v23;
      }

      os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, qword_10177C410, "Missing pairing status!", 23, 2, _swiftEmptyArrayStorage);
    }

    else
    {
      sub_10002E98C(v2[9], v2[10]);
      v11 = static os_log_type_t.error.getter();
      if (qword_1016950C8 != -1)
      {
        v22 = v11;
        swift_once();
        v11 = v22;
      }

      os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, qword_10177C410, "Owner device info is not available.", 35, 2, _swiftEmptyArrayStorage);
    }

    sub_100006654(v6, v4);
  }

  sub_10024EC98(&v38);
LABEL_16:
  v12 = v43;
  a2[4] = v42;
  a2[5] = v12;
  v13 = v45;
  a2[6] = v44;
  a2[7] = v13;
  v14 = v39;
  *a2 = v38;
  a2[1] = v14;
  result = *&v40;
  v16 = v41;
  a2[2] = v40;
  a2[3] = v16;
  return result;
}

void *sub_10024E1E8()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100006654(*(v0 + 40), *(v0 + 48));
  sub_100006654(*(v0 + 56), *(v0 + 64));
  sub_100006654(*(v0 + 72), *(v0 + 80));

  sub_100006654(*(v0 + 104), *(v0 + 112));

  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_fmnaId, &qword_1016980D0, &unk_10138F3B0);
  sub_100006654(*(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_status), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_status + 8));
  sub_100006654(*(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_encryptionKeyK1), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_encryptionKeyK1 + 8));
  sub_100006654(*(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1 + 8));
  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC2, &qword_101697378, &unk_101391940);
  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC3, &qword_101697320, &qword_10138BE90);
  sub_100006654(*(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS2), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS2 + 8));
  sub_100006654(*(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serverSeed), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serverSeed + 8));
  sub_10024ECCC(*(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_initialPairingInfo), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_initialPairingInfo + 8), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_initialPairingInfo + 16), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_initialPairingInfo + 24), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_initialPairingInfo + 32), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_initialPairingInfo + 40), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_initialPairingInfo + 48), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_initialPairingInfo + 56), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_initialPairingInfo + 64), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_initialPairingInfo + 72));

  sub_100006654(*(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccLeafCert), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccLeafCert + 8));
  sub_100006654(*(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccIntCA1), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccIntCA1 + 8));
  sub_100006654(*(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaCerts), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaCerts + 8));
  sub_100006654(*(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS1), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS1 + 8));
  sub_100006654(*(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaSignatureS2), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaSignatureS2 + 8));
  sub_100006654(*(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serverSignatureS3), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serverSignatureS3 + 8));
  sub_100006654(*(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS4), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS4 + 8));
  sub_100006654(*(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryEcid), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryEcid + 8));
  sub_100006654(*(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryChipId), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryChipId + 8));

  sub_100006654(*(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_pairingSessionToken), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_pairingSessionToken + 8));
  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_macAddress, &qword_1016A40D0, &unk_10138BE70);
  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_classicMacAddress, &qword_1016A40D0, &unk_10138BE70);

  sub_100006654(*(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_authNonce), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_authNonce + 8));
  sub_100006654(*(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_alternateSerialNumber), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_alternateSerialNumber + 8));
  sub_100006654(*(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryCerts), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryCerts + 8));
  sub_100006654(*(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_attestation), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_attestation + 8));
  sub_100006654(*(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_csr), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_csr + 8));
  sub_100006654(*(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySignature), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySignature + 8));
  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_peripheralConnectionMaterial, &qword_10169B558, &qword_1013E8940);
  sub_100006654(*(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber + 8));
  sub_100006654(*(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_seedK1), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_seedK1 + 8));

  sub_100006654(*(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_findMyNetworkId), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_findMyNetworkId + 8));
  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_productInfo, &qword_101697268, &qword_101394FE0);
  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryMetadata, &qword_1016A62A0, &unk_101396E10);
  sub_100006654(*(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_acrtCerts), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_acrtCerts + 8));
  sub_100006654(*(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_scrtAttestation), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_scrtAttestation + 8));
  sub_100006654(*(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_systemPublicKey), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_systemPublicKey + 8));
  sub_100006654(*(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_refPublicKey), *(v0 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_refPublicKey + 8));

  return v0;
}

uint64_t sub_10024E65C()
{
  sub_10024E1E8();

  return swift_deallocClassInstance();
}

void sub_10024E6DC(uint64_t a1)
{
  sub_10024E9E4(319, &qword_1016B1C20, &type metadata accessor for UUID);
  if (v1 <= 0x3F)
  {
    sub_10024E9E4(319, &qword_10169AC00, &type metadata accessor for MACAddress);
    if (v2 <= 0x3F)
    {
      sub_10024E9E4(319, &qword_10169AC08, type metadata accessor for PeripheralConnectionMaterial);
      if (v3 <= 0x3F)
      {
        sub_10024E9E4(319, &qword_10169AC10, type metadata accessor for AccessoryProductInfo);
        if (v4 <= 0x3F)
        {
          sub_10024E9E4(319, &unk_1016C10F0, type metadata accessor for AccessoryMetadata);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_10024E9E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10024EA80(uint64_t a1)
{
  result = type metadata accessor for MACAddress();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_10024EB3C()
{
  result = qword_10169B540;
  if (!qword_10169B540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169B540);
  }

  return result;
}

uint64_t sub_10024EB90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10024EBD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeripheralConnectionMaterial(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10024EC3C(uint64_t a1)
{
  v2 = type metadata accessor for PeripheralConnectionMaterial(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_10024EC98(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double sub_10024ECB0(_OWORD *a1)
{
  result = 0.0;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_10024ECCC(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10)
{
  if (a2 >> 60 != 15)
  {
    sub_100016590(result, a2);
    sub_100016590(a3, a4);
    sub_100016590(a5, a6);
    sub_100006654(a7, a8);

    return sub_100006654(a9, a10);
  }

  return result;
}

unint64_t sub_10024ED80()
{
  result = qword_10169B560;
  if (!qword_10169B560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169B560);
  }

  return result;
}

unint64_t sub_10024EDD8()
{
  result = qword_10169B568;
  if (!qword_10169B568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169B568);
  }

  return result;
}

unint64_t sub_10024EE30()
{
  result = qword_10169B570;
  if (!qword_10169B570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169B570);
  }

  return result;
}

unint64_t sub_10024EE84(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x656E6E6F63736964;
    v6 = 0x656369766544656DLL;
    if (a1 != 8)
    {
      v6 = 0xD000000000000019;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000014;
    if (a1 != 5)
    {
      v7 = 0x6465687361656CLL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x646563726F66;
    v2 = 0x656C756465686373;
    v3 = 0x6F43657461647075;
    if (a1 != 3)
    {
      v3 = 0x6552746E65696C63;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x646572696170;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

BOOL sub_10024EFF4()
{
  if (qword_101695510 != -1)
  {
    swift_once();
  }

  AnyCurrentValuePublisher.value.getter();

  v1 = *(v0 + 176);
  v2 = static os_log_type_t.default.getter();
  if (qword_1016950B8 != -1)
  {
    swift_once();
  }

  v3 = qword_10177C400;
  if (os_log_type_enabled(qword_10177C400, v2))
  {

    v4 = swift_slowAlloc();
    *v4 = 67109632;
    if (qword_101694F58 != -1)
    {
      swift_once();
    }

    v5 = qword_10177C218;
    v6 = [objc_opt_self() sharedInstance];
    v7 = [v6 isInternalBuild];

    v10 = 0;
    if (v7)
    {
      v8 = String._bridgeToObjectiveC()();
      v9 = [v5 BOOLForKey:v8];

      if (v9)
      {
        v10 = 1;
      }
    }

    *(v4 + 4) = v10;

    *(v4 + 8) = 1024;
    *(v4 + 10) = v18 == 1;
    *(v4 + 14) = 1024;
    *(v4 + 16) = v1 == 1;
    _os_log_impl(&_mh_execute_header, v3, v2, "isFirmwareUpdateAllowed: firmwareUpdateOverride: %{BOOL}d, isThisMeDevice: %{BOOL}d, singleDevice: %{BOOL}d.", v4, 0x14u);
  }

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v11 = qword_10177C218;
  v12 = [objc_opt_self() sharedInstance];
  v13 = [v12 isInternalBuild];

  if (v13)
  {
    v14 = String._bridgeToObjectiveC()();
    v15 = [v11 BOOLForKey:v14];

    if (v15)
    {
      return 1;
    }
  }

  return v18 == 1 || v1 == 1;
}

uint64_t sub_10024F2F8(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  sub_1000BC4D4(&qword_101696CA8, &qword_10138B5E0);
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_10024F394, v1, 0);
}

uint64_t sub_10024F394()
{
  v1 = v0[12];
  swift_beginAccess();
  v2 = *(v1 + 144);
  if (*(v2 + 16))
  {
    v3 = v0[11];

    v4 = sub_1000210EC(v3);
    if (v5)
    {
      v6 = v0[11];
      v7 = *(*(v2 + 56) + 8 * v4);
      v0[14] = v7;

      swift_beginAccess();
      sub_1007A9FC0(v6);
      swift_endAccess();

      return _swift_task_switch(sub_10024F4D0, v7, 0);
    }
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_10024F4D0(uint64_t a1)
{
  v3 = v1[13];
  v2 = v1[14];
  static DispatchTime.now()();
  v4 = type metadata accessor for DispatchTime();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime;
  swift_beginAccess();
  sub_1000DFA14(v3, v2 + v5);
  swift_endAccess();
  type metadata accessor for AnalyticsPublisher();
  v1[15] = swift_allocObject();
  swift_defaultActor_initialize();
  v6 = swift_task_alloc();
  v1[16] = v6;
  *v6 = v1;
  v6[1] = sub_10024F60C;
  v7 = v1[14];

  return sub_101163F78(v7);
}

uint64_t sub_10024F60C()
{
  v1 = *(*v0 + 96);

  return _swift_task_switch(sub_10024F738, v1, 0);
}

uint64_t sub_10024F738()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10024F7A0(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(*(v1 + 152) + 16))
  {

    sub_1000210EC(a1);
    if (v4)
    {

      swift_beginAccess();
      sub_1007A9FC0(a1);
      swift_endAccess();

      type metadata accessor for Transaction();

      static Transaction.asyncTask(name:block:)();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_10024F8AC(uint64_t a1)
{
  *(v1 + 40) = a1;
  sub_1000BC4D4(&qword_101696CA8, &qword_10138B5E0);
  *(v1 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_10024F94C, a1, 0);
}

uint64_t sub_10024F94C(uint64_t a1)
{
  v2 = v1[5];
  v3 = v1[6];
  static DispatchTime.now()();
  v4 = type metadata accessor for DispatchTime();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime;
  swift_beginAccess();
  sub_1000DFA14(v3, v2 + v5);
  swift_endAccess();
  type metadata accessor for AnalyticsPublisher();
  v1[7] = swift_allocObject();
  swift_defaultActor_initialize();
  v6 = swift_task_alloc();
  v1[8] = v6;
  *v6 = v1;
  v6[1] = sub_10024FA88;
  v7 = v1[5];

  return sub_101163F78(v7);
}

uint64_t sub_10024FA88()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_10024FBB4(uint64_t a1)
{
  v2 = v1;
  v28 = a1;
  v3 = sub_1000BC4D4(&unk_1016B1E80, &qword_10138CDE0);
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v25 = &v23 - v4;
  v24 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v24);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  __chkstk_darwin(v10 - 8);
  v11 = sub_1000BC4D4(&qword_101698E38, &unk_101395BA0);
  __chkstk_darwin(v11 - 8);
  v13 = &v23 - v12;
  swift_defaultActor_initialize();
  type metadata accessor for WorkItemQueue();
  v14 = type metadata accessor for WorkItemQueue.WarningOptions();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  UUID.init()();
  v1[14] = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v1[15] = qword_10177B2E8;
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v7 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v6);

  static DispatchQoS.unspecified.getter();
  v29[0] = _swiftEmptyArrayStorage;
  sub_10025B5E8(&qword_10169BB60, 255, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v15 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v1[18] = _swiftEmptyDictionarySingleton;
  v1[19] = _swiftEmptyDictionarySingleton;
  v1[21] = 0;
  v1[22] = 0;
  v1[20] = 0;
  v16 = v28;
  v1[16] = v15;
  v1[17] = v16;
  v17 = v1[15];
  updated = type metadata accessor for FirmwareUpdateService();
  v31 = &off_1016148F0;
  v29[0] = v1;
  __chkstk_darwin(updated);
  *(&v23 - 2) = v29;
  *(&v23 - 1) = v17;

  v18 = v25;
  v19 = v27;
  OS_dispatch_queue.sync<A>(execute:)();
  (*(v26 + 8))(v18, v19);
  sub_100007BAC(v29);
  if (qword_101695510 != -1)
  {
    swift_once();
  }

  v20 = AnyCurrentValuePublisher.publisher.getter();

  v29[0] = v20;
  swift_allocObject();
  swift_weakInit();
  sub_1000BC4D4(&unk_1016B2A90, &unk_10138CBC0);
  sub_1000041A4(&qword_101697B80, &unk_1016B2A90, &unk_10138CBC0, &protocol conformance descriptor for AnyPublisher<A, B>);
  v21 = Publisher<>.sink(receiveValue:)();

  v2[21] = v21;

  return v2;
}

uint64_t sub_100250200(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v2 == 1)
    {
      type metadata accessor for Transaction();

      static Transaction.asyncTask(name:block:)();
    }
  }

  return result;
}

uint64_t sub_1002502A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_100250338();
}

uint64_t sub_100250338()
{
  v1[6] = v0;
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v1[7] = swift_task_alloc();
  v2 = sub_1000BC4D4(&qword_10169B780, &unk_101395260);
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v3 = sub_1000BC4D4(&qword_10169B788, &qword_1013A3770);
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[14] = v4;
  *v4 = v1;
  v4[1] = sub_1002504D4;

  return daemon.getter();
}

uint64_t sub_1002504D4(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[15] = a1;

  v3 = swift_task_alloc();
  v2[16] = v3;
  v4 = type metadata accessor for Daemon();
  v2[17] = v4;
  v5 = type metadata accessor for LegacyServiceContainer();
  v6 = sub_10025B5E8(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10025B5E8(&unk_101698D70, 255, type metadata accessor for LegacyServiceContainer, &unk_1014015E0);
  *v3 = v9;
  v3[1] = sub_1002506BC;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1002506BC(uint64_t a1)
{
  v4 = *v2;
  v4[18] = a1;
  v4[19] = v1;

  if (v1)
  {

    v5 = v4[6];
    v6 = sub_100250C04;
  }

  else
  {
    v6 = sub_100250800;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100250800()
{
  v1 = *(v0 + 152);
  sub_10001B108();
  *(v0 + 160) = v2;
  if (v1)
  {

    sub_10025B5E8(&qword_1016969E0, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v5 = v4;
    v6 = sub_100250B90;
  }

  else
  {
    sub_10025B5E8(&qword_1016969E0, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v5 = v7;
    v6 = sub_100250930;
  }

  return _swift_task_switch(v6, v3, v5);
}

uint64_t sub_100250930()
{
  v1 = *(v0 + 48);

  return _swift_task_switch(sub_1002509A8, v1, 0);
}

uint64_t sub_1002509A8(uint64_t a1)
{
  v3 = v1[9];
  v2 = v1[10];
  v4 = v1[8];
  v1[4] = AnyCurrentValuePublisher.publisher.getter();
  sub_1000BC4D4(&qword_10169B790, &unk_101395270);
  sub_1000041A4(&qword_10169B798, &qword_10169B790, &unk_101395270, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher<>.values.getter();

  AsyncPublisher.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v1[21] = sub_10025B5E8(&qword_10169B7A0, v5, type metadata accessor for FirmwareUpdateService, &unk_1013951B8);
  v6 = sub_1000041A4(&qword_10169B7A8, &qword_10169B788, &qword_1013A3770, &protocol conformance descriptor for AsyncPublisher<A>.Iterator);
  v7 = swift_task_alloc();
  v1[22] = v7;
  *v7 = v1;
  v7[1] = sub_100250CE8;
  v8 = v1[11];

  return dispatch thunk of AsyncIteratorProtocol.next()(v1 + 2, v8, v6);
}

uint64_t sub_100250B90()
{

  v1 = *(v0 + 48);

  return _swift_task_switch(sub_100250C04, v1, 0);
}

uint64_t sub_100250C04(uint64_t a1)
{
  v2 = static os_log_type_t.error.getter();
  if (qword_1016950B8 != -1)
  {
    v5 = v2;
    swift_once();
    v2 = v5;
  }

  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, qword_10177C400, "Missing BeaconManagerService.", 29, 2, _swiftEmptyArrayStorage);

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_100250CE8()
{
  v2 = *v1;
  *(v2 + 184) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_100251160;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_100250E80;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_100250E80()
{
  v1 = *(v0 + 48);
  *(v0 + 192) = *(v0 + 16);
  *(v0 + 25) = *(v0 + 24);
  return _swift_task_switch(sub_100250EAC, v1, 0);
}

uint64_t sub_100250EAC(uint64_t a1)
{
  if ((*(v1 + 25) & 1) != 0 || *(v1 + 192) == *(*(v1 + 48) + 176))
  {
    (*(*(v1 + 96) + 8))(*(v1 + 104), *(v1 + 88));

    v2 = *(v1 + 8);

    return v2();
  }

  else
  {
    v4 = static os_log_type_t.default.getter();
    if (qword_1016950B8 != -1)
    {
      swift_once();
    }

    v5 = *(v1 + 192);
    v6 = *(v1 + 48);
    v7 = qword_10177C400;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_101385D80;
    *(v8 + 56) = &type metadata for Int;
    *(v8 + 64) = &protocol witness table for Int;
    *(v8 + 32) = v5;
    os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v7, "connectableDevicesChanged: %d", v14);

    *(v6 + 176) = v5;
    if (v5 == 1)
    {
      v9 = *(v1 + 56);
      v10 = type metadata accessor for UUID();
      (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
      sub_100251FF8(9, v9);
      sub_10000B3A8(v9, &qword_1016980D0, &unk_10138F3B0);
    }

    v11 = sub_1000041A4(&qword_10169B7A8, &qword_10169B788, &qword_1013A3770, &protocol conformance descriptor for AsyncPublisher<A>.Iterator);
    v12 = swift_task_alloc();
    *(v1 + 176) = v12;
    *v12 = v1;
    v12[1] = sub_100250CE8;
    v13 = *(v1 + 88);

    return dispatch thunk of AsyncIteratorProtocol.next()(v1 + 16, v13, v11);
  }
}

uint64_t sub_100251160()
{
  *(v0 + 40) = *(v0 + 184);
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1002511EC(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100251288, 0, 0);
}

uint64_t sub_100251288()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);

  return _swift_task_switch(sub_10025132C, v1, 0);
}

uint64_t sub_10025132C()
{
  v1 = *(v0 + 24);
  sub_100251FF8(8, v1);
  sub_10000B3A8(v1, &qword_1016980D0, &unk_10138F3B0);

  v2 = *(v0 + 8);

  return v2();
}

void *sub_1002513B4()
{
  v1 = *v0;
  v10 = _swiftEmptyArrayStorage;
  v2 = v0[16];
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = &v10;
  v4[4] = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_10025B54C;
  *(v5 + 24) = v4;
  aBlock[4] = sub_1000D2FB0;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013FE14;
  aBlock[3] = &unk_101614B08;
  v6 = _Block_copy(aBlock);

  dispatch_sync(v2, v6);
  _Block_release(v6);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t sub_100251568(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = qword_101694940;

    if (v4 != -1)
    {
      swift_once();
    }

    OS_dispatch_queue.sync<A>(execute:)();
    v5 = sub_1010746B4(v9);

    OS_dispatch_queue.sync<A>(execute:)();
    v6 = sub_1010746B4(v9);

    OS_dispatch_queue.sync<A>(execute:)();
    v7 = sub_101074698(v9);

    if ((v7 * 60) >> 64 == (60 * v7) >> 63)
    {
      v8 = sub_1010C1E70(v5 * 60.0, v6 * 60.0, (60 * v7));

      *a2 = v8;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100251748(char a1, uint64_t a2)
{
  *(v3 + 24) = a2;
  *(v3 + 32) = v2;
  *(v3 + 120) = a1;
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  *(v3 + 40) = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  *(v3 + 48) = v4;
  *(v3 + 56) = *(v4 - 8);
  *(v3 + 64) = swift_task_alloc();
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();

  return _swift_task_switch(sub_10025185C, v2, 0);
}

uint64_t sub_10025185C()
{
  *(v0 + 16) = &_swiftEmptySetSingleton;
  if (sub_10024EE84(*(v0 + 120)) == 0x646563726F66 && v1 == 0xE600000000000000)
  {
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v3 & 1) == 0)
    {
      v4 = swift_task_alloc();
      *(v0 + 88) = v4;
      *v4 = v0;
      v4[1] = sub_100251BA4;

      return sub_100257418();
    }
  }

  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v0 + 40);
  sub_1000D2A70(*(v0 + 24), v8, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v7 + 48))(v8, 1, v6) == 1)
  {
    sub_10000B3A8(*(v0 + 40), &qword_1016980D0, &unk_10138F3B0);
    v9 = &_swiftEmptySetSingleton;
  }

  else
  {
    v11 = *(v0 + 72);
    v10 = *(v0 + 80);
    v13 = *(v0 + 56);
    v12 = *(v0 + 64);
    v14 = *(v0 + 48);
    (*(v13 + 32))(v10, *(v0 + 40), v14);
    (*(v13 + 16))(v12, v10, v14);
    sub_100DE8BCC(v11, v12);
    v15 = *(v13 + 8);
    v15(v11, v14);
    v15(v10, v14);
    v9 = *(v0 + 16);
  }

  *(v0 + 104) = v9;
  if (v9[2])
  {
    v16 = swift_task_alloc();
    *(v0 + 112) = v16;
    *v16 = v0;
    v16[1] = sub_100251E44;
    v17 = *(v0 + 120);

    return sub_100255014(v9, v17);
  }

  else
  {

    v18 = static os_log_type_t.default.getter();
    if (qword_1016950B8 != -1)
    {
      v20 = v18;
      swift_once();
      v18 = v20;
    }

    os_log(_:dso:log:_:_:)(v18, &_mh_execute_header, qword_10177C400, "No beacons eligible for firmware update. Not posting notification.", 66, 2, _swiftEmptyArrayStorage);

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_100251BA4(uint64_t a1)
{
  v2 = *(*v1 + 32);
  *(*v1 + 96) = a1;

  return _swift_task_switch(sub_100251CBC, v2, 0);
}

uint64_t sub_100251CBC()
{
  v1 = *(v0 + 96);
  *(v0 + 16) = v1;
  *(v0 + 104) = v1;
  if (*(v1 + 16))
  {
    v2 = swift_task_alloc();
    *(v0 + 112) = v2;
    *v2 = v0;
    v2[1] = sub_100251E44;
    v3 = *(v0 + 120);

    return sub_100255014(v1, v3);
  }

  else
  {

    v5 = static os_log_type_t.default.getter();
    if (qword_1016950B8 != -1)
    {
      v7 = v5;
      swift_once();
      v5 = v7;
    }

    os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, qword_10177C400, "No beacons eligible for firmware update. Not posting notification.", 66, 2, _swiftEmptyArrayStorage);

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_100251E44()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_100251F70, v1, 0);
}

uint64_t sub_100251F70()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_100251FF8(int a1, uint64_t a2)
{
  v64 = a2;
  v70 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v66 = *(v7 - 8);
  __chkstk_darwin(v7);
  v65 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v61 = *(v9 - 8);
  v10 = *(v61 + 64);
  __chkstk_darwin(v9 - 8);
  v62 = &v52 - v11;
  v12 = type metadata accessor for DispatchTimeInterval();
  v60 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = (&v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for DispatchTime();
  v67 = *(v15 - 8);
  v68 = v15;
  v16 = __chkstk_darwin(v15);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v52 - v20;
  __chkstk_darwin(v19);
  v69 = &v52 - v22;
  v63 = v2;
  if (sub_10024EFF4())
  {
    if (qword_101694FA8 != -1)
    {
      swift_once();
    }

    aBlock = 0x7365547265646E75;
    v73 = 0xE900000000000074;
    result = SynchronousCache.cachedValue<A>(key:computeBlock:)();
    if ((v71 & 1) == 0)
    {
      v59 = v7;
      static DispatchTime.now()();
      v24 = sub_10024EE84(v70);
      v58 = v6;
      if (v24 == 0x646572696170 && v25 == 0xE600000000000000)
      {
      }

      else
      {
        v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v28 & 1) == 0)
        {
LABEL_19:
          v43 = swift_allocObject();
          swift_weakInit();
          v44 = v62;
          sub_1000D2A70(v64, v62, &qword_1016980D0, &unk_10138F3B0);
          v45 = (*(v61 + 80) + 17) & ~*(v61 + 80);
          v46 = swift_allocObject();
          *(v46 + 16) = v70;
          sub_10012C154(v44, v46 + v45);
          *(v46 + ((v10 + v45 + 7) & 0xFFFFFFFFFFFFFFF8)) = v43;
          v76 = sub_10025B3C4;
          v77 = v46;
          aBlock = _NSConcreteStackBlock;
          v73 = 1107296256;
          v74 = sub_100006684;
          v75 = &unk_101614A68;
          v47 = _Block_copy(&aBlock);

          v48 = v65;
          static DispatchQoS.unspecified.getter();
          v71 = _swiftEmptyArrayStorage;
          sub_10025B5E8(&qword_1016A30B0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
          sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
          sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
          v49 = v58;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v50 = v69;
          OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
          _Block_release(v47);
          (*(v4 + 8))(v49, v3);
          (*(v66 + 8))(v48, v59);
          (*(v67 + 8))(v50, v68);
        }
      }

      if (qword_101694940 != -1)
      {
        swift_once();
      }

      OS_dispatch_queue.sync<A>(execute:)();
      v29 = sub_101074698(aBlock);

      v30 = 60 * v29;
      if ((v29 * 60) >> 64 == (60 * v29) >> 63)
      {
        v56 = v4;
        v57 = v3;
        v55 = static os_log_type_t.default.getter();
        if (qword_1016950B8 == -1)
        {
LABEL_18:
          v54 = qword_10177C400;
          sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
          v31 = swift_allocObject();
          *(v31 + 16) = xmmword_10138BBE0;
          aBlock = v30;
          v53 = v30;
          v32 = dispatch thunk of CustomStringConvertible.description.getter();
          v34 = v33;
          *(v31 + 56) = &type metadata for String;
          v35 = sub_100008C00();
          *(v31 + 64) = v35;
          *(v31 + 32) = v32;
          *(v31 + 40) = v34;
          v36 = sub_10024EE84(v70);
          *(v31 + 96) = &type metadata for String;
          *(v31 + 104) = v35;
          *(v31 + 72) = v36;
          *(v31 + 80) = v37;
          os_log(_:dso:log:_:_:)(v55, &_mh_execute_header, v54, "Schedule a firmware update check %@ seconds later (reason: %@)", 62, 2, v31);

          static DispatchTime.now()();
          *v14 = v53;
          v38 = v60;
          (*(v60 + 104))(v14, enum case for DispatchTimeInterval.seconds(_:), v12);
          + infix(_:_:)();
          (*(v38 + 8))(v14, v12);
          v40 = v67;
          v39 = v68;
          v41 = *(v67 + 8);
          v41(v18, v68);
          v42 = v69;
          v41(v69, v39);
          (*(v40 + 32))(v42, v21, v39);
          v3 = v57;
          v4 = v56;
          goto LABEL_19;
        }
      }

      else
      {
        __break(1u);
      }

      swift_once();
      goto LABEL_18;
    }
  }

  else
  {
    v26 = static os_log_type_t.default.getter();
    if (qword_1016950B8 != -1)
    {
      v51 = v26;
      swift_once();
      v26 = v51;
    }

    v27 = qword_10177C400;

    return os_log(_:dso:log:_:_:)(v26, &_mh_execute_header, v27, "initiateFirmwareUpdate: neither Me nor only iOS device. Firmware update is not allowed.", 87, 2, _swiftEmptyArrayStorage);
  }

  return result;
}

uint64_t sub_100252948(int a1, uint64_t a2, uint64_t a3)
{
  v37 = a3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v33 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v31 = *(v8 - 8);
  v9 = *(v31 + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v32 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v30 - v11;
  v35 = static os_log_type_t.default.getter();
  if (qword_1016950B8 != -1)
  {
    swift_once();
  }

  v36 = qword_10177C400;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10138BBE0;
  v34 = a1;
  v14 = sub_10024EE84(a1);
  v16 = v15;
  *(v13 + 56) = &type metadata for String;
  v17 = sub_100008C00();
  *(v13 + 64) = v17;
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  sub_1000D2A70(a2, v12, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v6 + 48))(v12, 1, v5) == 1)
  {
    sub_10000B3A8(v12, &qword_1016980D0, &unk_10138F3B0);
    v18 = (v13 + 72);
    *(v13 + 96) = &type metadata for String;
    *(v13 + 104) = v17;
  }

  else
  {
    v19 = UUID.uuidString.getter();
    v21 = v20;
    (*(v6 + 8))(v12, v5);
    v18 = (v13 + 72);
    *(v13 + 96) = &type metadata for String;
    *(v13 + 104) = v17;
    if (v21)
    {
      *v18 = v19;
      v22 = v36;
      goto LABEL_8;
    }
  }

  v22 = v36;
  *v18 = 1701736302;
  v21 = 0xE400000000000000;
LABEL_8:
  *(v13 + 80) = v21;
  os_log(_:dso:log:_:_:)(v35, &_mh_execute_header, v22, "Initiate firmware update check (reason: %{public}@, forced beacons: %@)", 71, 2, v13);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    type metadata accessor for WorkItemQueue.WorkItem();
    v25 = v32;
    sub_1000D2A70(a2, v32, &qword_1016980D0, &unk_10138F3B0);
    v26 = (*(v31 + 80) + 25) & ~*(v31 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = v24;
    *(v27 + 24) = v34;
    sub_10012C154(v25, v27 + v26);

    UUID.init()();
    WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
    dispatch thunk of WorkItemQueue.enqueue(_:)();
  }

  else
  {
    v29 = static os_log_type_t.default.getter();
    return os_log(_:dso:log:_:_:)(v29, &_mh_execute_header, v22, "Not inititating firmware check. Not posting notification.", 57, 2, _swiftEmptyArrayStorage);
  }
}

uint64_t sub_100252D98(uint64_t a1, char a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10003633C;

  return sub_100251748(a2, a3);
}

uint64_t sub_100252E44(uint64_t a1)
{
  v24 = a1;
  v3 = type metadata accessor for BeaconObservation(0);
  v5 = v3 - 8;
  v4 = *(v3 - 8);
  v6 = __chkstk_darwin(v3);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v18 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v23 = *(v12 + 16);
  v25 = v12 + 16;
  v23(v10, a1, v11);
  static Date.trustedNow.getter(&v10[*(v5 + 28)]);
  v10[*(v5 + 32)] = 1;
  v18 = *(v1 + 120);
  v13 = v18;
  v22 = sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
  v21 = *(v4 + 72);
  v14 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v15 = swift_allocObject();
  v20 = xmmword_101385D80;
  *(v15 + 16) = xmmword_101385D80;
  v19 = type metadata accessor for BeaconObservation;
  sub_10025B334(v10, v15 + v14, type metadata accessor for BeaconObservation);
  type metadata accessor for Transaction();
  v30 = v13;
  v31 = v15;
  v32 = 0;
  v33 = 0;
  static Transaction.named<A>(_:with:)();

  v23(v8, v24, v11);
  static Date.trustedNow.getter(&v8[*(v5 + 28)]);
  v8[*(v5 + 32)] = 12;
  v16 = swift_allocObject();
  *(v16 + 16) = v20;
  sub_10025B334(v8, v16 + v14, v19);
  v26 = v18;
  v27 = v16;
  v28 = 0;
  v29 = 0;
  static Transaction.named<A>(_:with:)();

  sub_1000326A4(v8, type metadata accessor for BeaconObservation);
  return sub_1000326A4(v10, type metadata accessor for BeaconObservation);
}

uint64_t sub_10025314C(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  v4 = type metadata accessor for OwnedBeaconGroup(0);
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();
  v5 = type metadata accessor for OwnedBeaconRecord(0);
  v2[19] = v5;
  v2[20] = *(v5 - 8);
  v2[21] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v2[22] = v6;
  v2[23] = *(v6 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return _swift_task_switch(sub_100253368, v1, 0);
}

uint64_t sub_100253368()
{
  v1 = sub_10000954C(_swiftEmptyArrayStorage);
  v0[7] = v1;
  v0[31] = v1;
  if (!sub_10024EFF4())
  {
    v21 = v1;
    v14 = static os_log_type_t.default.getter();
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v15 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v15, "enabledFirmwareUpdateIdentifiers: neither Me nor only iOS device. Firmware update is not allowed.", 97, 2, _swiftEmptyArrayStorage);

LABEL_8:

    v16 = v0[1];

    return v16(v21);
  }

  v2 = [objc_opt_self() standardUserDefaults];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 BOOLForKey:v3];

  if (v4)
  {
    v5 = *(v0[12] + 120);

    v7 = sub_10025A67C(v6, v5);

    if (*(v7 + 16))
    {

      v8 = static os_log_type_t.default.getter();
      if (qword_1016950B8 != -1)
      {
        swift_once();
      }

      v9 = qword_10177C400;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_101385D80;
      sub_10025B5E8(&qword_1016967B0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v11 = Set.description.getter();
      v13 = v12;
      *(v10 + 56) = &type metadata for String;
      *(v10 + 64) = sub_100008C00();
      *(v10 + 32) = v11;
      *(v10 + 40) = v13;
      os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v9, "Bypassing disableFirmwareUpdate user default because of a forced firmware update for beacon/s %@", 96, 2, v10);

      v21 = v7;
    }

    else
    {

      v19 = static os_log_type_t.default.getter();
      if (qword_1016950B8 != -1)
      {
        v20 = v19;
        swift_once();
        v19 = v20;
      }

      v21 = v1;
      os_log(_:dso:log:_:_:)(v19, &_mh_execute_header, qword_10177C400, "Firmware updates are disabled and no eligible forced updates found.", 67, 2, _swiftEmptyArrayStorage);
    }

    goto LABEL_8;
  }

  v18 = swift_task_alloc();
  v0[32] = v18;
  *v18 = v0;
  v18[1] = sub_100253784;

  return daemon.getter();
}

uint64_t sub_100253784(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 264) = a1;

  v3 = swift_task_alloc();
  *(v2 + 272) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_10025B5E8(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10025B5E8(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_100253968;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}