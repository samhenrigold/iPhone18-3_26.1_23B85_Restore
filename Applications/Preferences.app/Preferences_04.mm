void sub_100065D04(uint64_t a1)
{
  v2 = *(v1 + 32);
  if (*(v1 + 48))
  {
    Hasher._combine(_:)(1uLL);
    String.hash(into:)();
    String.hash(into:)();
    Hasher._combine(_:)(v2);
  }

  else
  {
    Hasher._combine(_:)(0);
    String.hash(into:)();
    String.hash(into:)();

    String.hash(into:)();
  }
}

Swift::Int sub_100065DE8(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 48);
  Hasher.init(_seed:)();
  if (v3)
  {
    Hasher._combine(_:)(1uLL);
    String.hash(into:)();
    String.hash(into:)();
    Hasher._combine(_:)(v2);
  }

  else
  {
    Hasher._combine(_:)(0);
    String.hash(into:)();
    String.hash(into:)();
    String.hash(into:)();
  }

  return Hasher._finalize()();
}

uint64_t sub_100065EC0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v2 != v6 || v4 != v7) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

Swift::Int sub_100065FB8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10006603C(uint64_t a1)
{
  String.hash(into:)();
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int sub_1000660A8(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

BOOL sub_100066128(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
  {
    return v4 == v7;
  }

  else
  {
    return 0;
  }
}

Swift::Int sub_1000661C4()
{
  v1 = *(v0 + 32);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void sub_100066244(uint64_t a1)
{
  v2 = *(v1 + 32);
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(v2);
}

Swift::Int sub_100066298(uint64_t a1)
{
  v2 = *(v1 + 32);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

unint64_t sub_100066318()
{
  result = qword_10015C4A8;
  if (!qword_10015C4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015C4A8);
  }

  return result;
}

unint64_t sub_100066370()
{
  result = qword_10015C4B0;
  if (!qword_10015C4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015C4B0);
  }

  return result;
}

uint64_t sub_1000663C4(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v8 = a1[3];
  v7 = a1[4];
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  v12 = a2[3];
  v13 = a2[4];
  if (a1[6])
  {
    if ((a2[6] & 1) == 0 || (v4 != v9 || v5 != v10) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v6 != v11 || v8 != v12) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || v7 != v13)
    {
      return 0;
    }
  }

  else
  {
    if (a2[6])
    {
      return 0;
    }

    v15 = a1[5];
    v16 = a2[5];
    if ((v4 != v9 || v5 != v10) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

    if ((v6 != v11 || v8 != v12) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v7 != v13 || v15 != v16) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_10006650C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_100066554(uint64_t result, int a2, int a3)
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

uint64_t sub_1000665B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1000665F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10006665C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100066678(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000666C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

id sub_100066730()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - v5;
  (*(v4 + 16))(&v8 - v5, v1 + OBJC_IVAR____TtC11SettingsApp36MonitoredAccountStoreDelegateAdaptor_accountsStreamContinuation, v3);
  AsyncStream.Continuation.finish()();
  (*(v4 + 8))(v6, v3);
  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, "dealloc");
}

uint64_t sub_100066A40(void *a1)
{
  v2 = sub_10004DED0(&unk_10015C570, &qword_100112440);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  v6 = a1;
  AsyncStream.Continuation.yield<A>()();

  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_100066B3C()
{
  result = qword_10015C588;
  if (!qword_10015C588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015C588);
  }

  return result;
}

Swift::Int sub_100066B90(Swift::UInt a1, Swift::UInt a2, unsigned __int8 a3)
{
  Hasher.init(_seed:)();
  if ((a3 >> 6) > 1u)
  {
    if (a3 >> 6 == 2)
    {
      Hasher._combine(_:)(3uLL);
      Hasher._combine(_:)(a1);
      v6 = a2;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_8;
  }

  if (a3 >> 6)
  {
    Hasher._combine(_:)(2uLL);
    v6 = a1;
LABEL_8:
    Hasher._combine(_:)(v6);
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(1uLL);
  String.hash(into:)();
  Hasher._combine(_:)(a3 & 1);
  return Hasher._finalize()();
}

void sub_100066C84(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = v4 >> 6;
  if (v4 >> 6 > 1)
  {
    if (v5 == 2)
    {
      Hasher._combine(_:)(3uLL);
      Hasher._combine(_:)(v2);
      v6 = v3;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    if (!v5)
    {
      Hasher._combine(_:)(1uLL);
      String.hash(into:)();
      Hasher._combine(_:)(v4 & 1);
      return;
    }

    Hasher._combine(_:)(2uLL);
    v6 = v2;
  }

  Hasher._combine(_:)(v6);
}

Swift::Int sub_100066D24(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  Hasher.init(_seed:)();
  v5 = v4 >> 6;
  if (v4 >> 6 > 1)
  {
    if (v5 == 2)
    {
      Hasher._combine(_:)(3uLL);
      Hasher._combine(_:)(v2);
      v6 = v3;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_8;
  }

  if (v5)
  {
    Hasher._combine(_:)(2uLL);
    v6 = v2;
LABEL_8:
    Hasher._combine(_:)(v6);
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(1uLL);
  String.hash(into:)();
  Hasher._combine(_:)(v4 & 1);
  return Hasher._finalize()();
}

BOOL sub_100066DE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  if ((a3 >> 6) <= 1u)
  {
    if (!(a3 >> 6))
    {
      if (a6 < 0x40u)
      {
        if (a1 == a4 && a2 == a5)
        {
          return (a6 ^ a3 ^ 1) & 1;
        }

        v6 = a3;
        v7 = a6;
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
        a3 = v6;
        a6 = v7;
        if (v8)
        {
          return (a6 ^ a3 ^ 1) & 1;
        }
      }

      return 0;
    }

    if ((a6 & 0xC0) == 0x40)
    {
      v10 = a1 == a4;
      goto LABEL_15;
    }

    return 0;
  }

  if (a3 >> 6 != 2)
  {
    return a6 >= 0xC0u && !(a5 | a4) && a6 == 192;
  }

  if ((a6 & 0xC0) != 0x80)
  {
    return 0;
  }

  v10 = a1 == a4 && a2 == a5;
LABEL_15:
  v11 = v10;
  return v11 & 1;
}

uint64_t sub_100066EEC(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 16) = *(result + 16) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    *(result + 16) = -64;
  }

  return result;
}

unint64_t sub_100066F2C()
{
  result = qword_10015C590;
  if (!qword_10015C590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015C590);
  }

  return result;
}

Swift::Int sub_100066F8C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100067020(v3, v1);
  return Hasher._finalize()();
}

Swift::Int sub_100066FDC(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_100067020(v4, v2);
  return Hasher._finalize()();
}

void sub_100067020(__int128 *a1, uint64_t a2)
{
  Hasher._finalize()();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      Hasher._combine(_:)(v7);
      return;
    }

    v5 = *(a2 + 56 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        Hasher.init(_seed:)();

        String.hash(into:)();
        v10 = Hasher._finalize()();

        v7 ^= v10;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
}

uint64_t sub_10006717C()
{
  *(v0 + 32) = *(v0 + 120);
  sub_10004DED0(&unk_10015C800, &unk_100112BC0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_100067208()
{
  v1 = v0;
  v2 = sub_10004DED0(&qword_10015C7D0, &unk_100112AC0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v20 - v4;
  v6 = sub_10004DED0(&qword_10015FCD0, &qword_100117340);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v20 - v8;
  v20[1] = OBJC_IVAR____TtC11SettingsApp35SpringBoardApplicationStateProvider_invalidatable;
  v10 = *(v1 + OBJC_IVAR____TtC11SettingsApp35SpringBoardApplicationStateProvider_invalidatable);
  if (v10)
  {
    [v10 invalidate];
  }

  v11 = OBJC_IVAR____TtC11SettingsApp35SpringBoardApplicationStateProvider_onApplicationsDidChangeEventContinuation;
  (*(v7 + 16))(v9, v1 + OBJC_IVAR____TtC11SettingsApp35SpringBoardApplicationStateProvider_onApplicationsDidChangeEventContinuation, v6);
  AsyncStream.Continuation.finish()();
  v12 = *(v7 + 8);
  v12(v9, v6);
  v13 = OBJC_IVAR____TtC11SettingsApp35SpringBoardApplicationStateProvider_snapshotsContinuation;
  (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC11SettingsApp35SpringBoardApplicationStateProvider_snapshotsContinuation, v2);
  AsyncStream.Continuation.finish()();
  v14 = *(v3 + 8);
  v14(v5, v2);
  v15 = OBJC_IVAR____TtC11SettingsApp35SpringBoardApplicationStateProvider_snapshots;
  v16 = sub_10004DED0(&qword_10015C7D8, &unk_100113240);
  (*(*(v16 - 8) + 8))(v1 + v15, v16);
  v14((v1 + v13), v2);
  v17 = OBJC_IVAR____TtC11SettingsApp35SpringBoardApplicationStateProvider_onApplicationsDidChangeEvent;
  v18 = sub_10004DED0(&qword_10015C7C0, &qword_100112AB0);
  (*(*(v18 - 8) + 8))(v1 + v17, v18);
  v12((v1 + v11), v6);

  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1000674E4()
{
  sub_100067208();

  return swift_deallocClassInstance();
}

uint64_t sub_1000676A0()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_10006796C;
  }

  else
  {
    *(v2 + 145) = *(v2 + 144);
    v3 = sub_1000677BC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000677D8()
{
  if (*(v0 + 145) & 1) != 0 || (static Task<>.isCancelled.getter())
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v4 = *(v0 + 88);
    v3 = *(v0 + 96);
    v5 = *(v0 + 80);
    v6 = sub_100005430();
    *(v0 + 16) = v6 & 1;
    *(v0 + 17) = BYTE1(v6) & 1;
    *(v0 + 18) = BYTE2(v6) & 1;
    *(v0 + 24) = v7;
    *(v0 + 32) = v8;
    *(v0 + 40) = v9;
    sub_10004DED0(&qword_10015C910, &qword_100112B78);
    AsyncStream.Continuation.yield(_:)();
    (*(v4 + 8))(v3, v5);
    v10 = swift_task_alloc();
    *(v0 + 128) = v10;
    v11 = sub_10004DED0(&unk_10015F9F0, &qword_100112470);
    *v10 = v0;
    v10[1] = sub_1000676A0;

    return AsyncDebounceSequence.Iterator.next()(v0 + 144, v11);
  }
}

uint64_t sub_10006796C()
{
  *(v0 + 56) = *(v0 + 136);
  sub_10004DED0(&unk_10015C800, &unk_100112BC0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

id sub_1000679F8()
{
  v1 = v0;
  v2 = sub_10004DED0(&qword_10015C910, &qword_100112B78);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - v4;
  v6 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - v8;
  (*(v7 + 16))(&v13 - v8, v1 + OBJC_IVAR____TtC11SettingsApp33ManagedConfigurationStateProvider_onReceiveManagedConfigurationEventContinuation, v6);
  AsyncStream.Continuation.finish()();
  (*(v7 + 8))(v9, v6);
  (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC11SettingsApp33ManagedConfigurationStateProvider_snapshotsContinuation, v2);
  AsyncStream.Continuation.finish()();
  (*(v3 + 8))(v5, v2);
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v11 = result;
    [result unregisterObserver:v1];

    v12 = type metadata accessor for ManagedConfigurationStateProvider(0);
    v13.receiver = v1;
    v13.super_class = v12;
    return objc_msgSendSuper2(&v13, "dealloc");
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100067DB4(void *a1)
{
  if (qword_10015AA88 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000659C(v2, qword_100169610);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v5 = 136315394;
    swift_getObjectType();
    v6 = _typeName(_:qualified:)();
    v8 = sub_100025CF0(v6, v7, &v10);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_100025CF0(0xD000000000000046, 0x8000000100121E40, &v10);
    _os_log_impl(&_mh_execute_header, oslog, v4, "…Complete (%s.%s)", v5, 0x16u);
    swift_arrayDestroy();
  }
}

void sub_100067F70(void *a1)
{
  if (qword_10015AA88 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000659C(v2, qword_100169610);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v5 = 136315394;
    swift_getObjectType();
    v6 = _typeName(_:qualified:)();
    v8 = sub_100025CF0(v6, v7, &v10);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_100025CF0(0xD000000000000043, 0x8000000100121DB0, &v10);
    _os_log_impl(&_mh_execute_header, oslog, v4, "…Complete (%s.%s)", v5, 0x16u);
    swift_arrayDestroy();
  }
}

void sub_10006812C(void *a1)
{
  if (qword_10015AA88 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000659C(v2, qword_100169610);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v5 = 136315394;
    swift_getObjectType();
    v6 = _typeName(_:qualified:)();
    v8 = sub_100025CF0(v6, v7, &v10);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_100025CF0(0xD000000000000049, 0x8000000100121D30, &v10);
    _os_log_impl(&_mh_execute_header, oslog, v4, "…Complete (%s.%s)", v5, 0x16u);
    swift_arrayDestroy();
  }
}

void sub_1000682E8(void *a1)
{
  if (qword_10015AA88 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000659C(v2, qword_100169610);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v5 = 136315394;
    swift_getObjectType();
    v6 = _typeName(_:qualified:)();
    v8 = sub_100025CF0(v6, v7, &v10);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_100025CF0(0xD000000000000046, 0x8000000100121CE0, &v10);
    _os_log_impl(&_mh_execute_header, oslog, v4, "…Complete (%s.%s)", v5, 0x16u);
    swift_arrayDestroy();
  }
}

void sub_1000684A4(void *a1)
{
  if (qword_10015AA88 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000659C(v2, qword_100169610);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v5 = 136315394;
    swift_getObjectType();
    v6 = _typeName(_:qualified:)();
    v8 = sub_100025CF0(v6, v7, &v10);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_100025CF0(0xD00000000000004CLL, 0x8000000100121C90, &v10);
    _os_log_impl(&_mh_execute_header, oslog, v4, "…Complete (%s.%s)", v5, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_100068660(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t))
{
  if (a4)
  {
    v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v8 = 0;
  }

  v9 = a3;
  v10 = a1;
  a5(v8);
}

void sub_100068700(void *a1)
{
  if (qword_10015AA88 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000659C(v2, qword_100169610);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v5 = 136315394;
    swift_getObjectType();
    v6 = _typeName(_:qualified:)();
    v8 = sub_100025CF0(v6, v7, &v10);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_100025CF0(0xD000000000000043, 0x8000000100121C00, &v10);
    _os_log_impl(&_mh_execute_header, oslog, v4, "…Complete (%s.%s)", v5, 0x16u);
    swift_arrayDestroy();
  }
}

void sub_1000688BC(void *a1)
{
  if (qword_10015AA88 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000659C(v2, qword_100169610);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v5 = 136315394;
    swift_getObjectType();
    v6 = _typeName(_:qualified:)();
    v8 = sub_100025CF0(v6, v7, &v10);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_100025CF0(0xD000000000000047, 0x8000000100121BB0, &v10);
    _os_log_impl(&_mh_execute_header, oslog, v4, "…Complete (%s.%s)", v5, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_100068A78(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  if (a4)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = a3;
  v9 = a1;
  a5();
}

uint64_t sub_100068B14(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for NSKeyValueObservation();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_100068D2C(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      sub_100068F0C(v20 + 1);
    }

    v18 = v8;
    sub_100069134(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for NSKeyValueObservation();
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1000691B8(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

Swift::Int sub_100068D2C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10004DED0(&qword_10015C8F8, &unk_100112B60);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for NSKeyValueObservation();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_100068F0C(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_100068F0C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10004DED0(&qword_10015C8F8, &unk_100112B60);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v5 + 40));
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_100069134(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

void sub_1000691B8(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100068F0C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_100069474();
      goto LABEL_12;
    }

    sub_1000695C4(v6 + 1);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for NSKeyValueObservation();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void *sub_100069318()
{
  v1 = v0;
  sub_10004DED0(&qword_10015C8E0, &qword_100112488);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

id sub_100069474()
{
  v1 = v0;
  sub_10004DED0(&qword_10015C8F8, &unk_100112B60);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

Swift::Int sub_1000695C4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10004DED0(&qword_10015C8F8, &unk_100112B60);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(v5 + 40);
      v17 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = NSObject._rawHashValue(seed:)(v16);
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v17;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v25;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

Swift::Int sub_1000697D8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v7 = v5 + 56;
  v8 = -1 << *(v5 + 32);
  v9 = result & ~v8;
  v10 = v9 >> 6;
  v11 = *(v5 + 56 + 8 * (v9 >> 6));
  v12 = 1 << v9;
  if (((1 << v9) & v11) != 0)
  {
    v13 = ~v8;
    while (1)
    {
      v14 = (*(v5 + 48) + 16 * v9);
      if (*v14 == a1 && v14[1] == a2)
      {
        break;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        break;
      }

      v9 = (v9 + 1) & v13;
      v10 = v9 >> 6;
      v11 = *(v7 + 8 * (v9 >> 6));
      v12 = 1 << v9;
      if (((1 << v9) & v11) == 0)
      {
        goto LABEL_9;
      }
    }

    *v14 = a1;
    v14[1] = a2;
  }

  else
  {
LABEL_9:
    if (*(v5 + 16) >= *(v5 + 24))
    {
      __break(1u);
    }

    else
    {
      *(v7 + 8 * v10) = v12 | v11;
      v16 = (*(v5 + 48) + 16 * v9);
      *v16 = a1;
      v16[1] = a2;
      v17 = *(v5 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v5 + 16) = v19;
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t *sub_100069930(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_100005B08(result, a2, a3);

    return v6;
  }

  return result;
}

void sub_1000699A8(uint64_t a1)
{
  v3 = sub_10004DED0(&unk_10015C570, &qword_100112440);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - v5;
  if (qword_10015AA88 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000659C(v7, qword_100169610);
  v8 = v1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = a1;
    v20 = v12;
    *v11 = 136315394;
    swift_getObjectType();
    v13 = _typeName(_:qualified:)();
    v15 = sub_100025CF0(v13, v14, &v20);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_100025CF0(0xD000000000000046, 0x8000000100121E40, &v20);
    _os_log_impl(&_mh_execute_header, v9, v10, "Start (%s.%s)…", v11, 0x16u);
    swift_arrayDestroy();
    a1 = v19;
  }

  AsyncStream.Continuation.yield<A>()();
  (*(v4 + 8))(v6, v3);
  v16 = [objc_opt_self() defaultCenter];
  v17 = String._bridgeToObjectiveC()();
  if (a1)
  {
    v18.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v18.super.isa = 0;
  }

  [v16 postNotificationName:v17 object:v8 userInfo:v18.super.isa];

  sub_100067DB4(v8);
}

void sub_100069CAC()
{
  v1 = sub_10004DED0(&unk_10015C570, &qword_100112440);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - v3;
  if (qword_10015AA88 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000659C(v5, qword_100169610);
  v6 = v0;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v9 = 136315394;
    swift_getObjectType();
    v10 = _typeName(_:qualified:)();
    v12 = sub_100025CF0(v10, v11, &v16);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_100025CF0(0xD000000000000043, 0x8000000100121DB0, &v16);
    _os_log_impl(&_mh_execute_header, v7, v8, "Start (%s.%s)…", v9, 0x16u);
    swift_arrayDestroy();
  }

  AsyncStream.Continuation.yield<A>()();
  (*(v2 + 8))(v4, v1);
  v13 = [objc_opt_self() defaultCenter];
  v14 = String._bridgeToObjectiveC()();
  [v13 postNotificationName:v14 object:v6 userInfo:0];

  sub_100067F70(v6);
}

void sub_100069F70()
{
  v1 = sub_10004DED0(&unk_10015C570, &qword_100112440);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - v3;
  if (qword_10015AA88 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000659C(v5, qword_100169610);
  v6 = v0;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v9 = 136315394;
    swift_getObjectType();
    v10 = _typeName(_:qualified:)();
    v12 = sub_100025CF0(v10, v11, &v14);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_100025CF0(0xD000000000000049, 0x8000000100121D30, &v14);
    _os_log_impl(&_mh_execute_header, v7, v8, "Start (%s.%s)…", v9, 0x16u);
    swift_arrayDestroy();
  }

  AsyncStream.Continuation.yield<A>()();
  (*(v2 + 8))(v4, v1);
  sub_10006812C(v6);
}

void sub_10006A1C8()
{
  v1 = sub_10004DED0(&unk_10015C570, &qword_100112440);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - v3;
  if (qword_10015AA88 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000659C(v5, qword_100169610);
  v6 = v0;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v9 = 136315394;
    swift_getObjectType();
    v10 = _typeName(_:qualified:)();
    v12 = sub_100025CF0(v10, v11, &v14);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_100025CF0(0xD000000000000046, 0x8000000100121CE0, &v14);
    _os_log_impl(&_mh_execute_header, v7, v8, "Start (%s.%s)…", v9, 0x16u);
    swift_arrayDestroy();
  }

  AsyncStream.Continuation.yield<A>()();
  (*(v2 + 8))(v4, v1);
  sub_1000682E8(v6);
}

void sub_10006A420(uint64_t a1)
{
  v3 = sub_10004DED0(&unk_10015C570, &qword_100112440);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - v5;
  if (qword_10015AA88 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000659C(v7, qword_100169610);
  v8 = v1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = a1;
    v20 = v12;
    *v11 = 136315394;
    swift_getObjectType();
    v13 = _typeName(_:qualified:)();
    v15 = sub_100025CF0(v13, v14, &v20);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_100025CF0(0xD00000000000004CLL, 0x8000000100121C90, &v20);
    _os_log_impl(&_mh_execute_header, v9, v10, "Start (%s.%s)…", v11, 0x16u);
    swift_arrayDestroy();
    a1 = v19;
  }

  AsyncStream.Continuation.yield<A>()();
  (*(v4 + 8))(v6, v3);
  v16 = [objc_opt_self() defaultCenter];
  v17 = String._bridgeToObjectiveC()();
  if (a1)
  {
    v18.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v18.super.isa = 0;
  }

  [v16 postNotificationName:v17 object:v8 userInfo:v18.super.isa];

  sub_1000684A4(v8);
}

void sub_10006A724()
{
  v1 = sub_10004DED0(&unk_10015C570, &qword_100112440);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - v3;
  if (qword_10015AA88 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000659C(v5, qword_100169610);
  v6 = v0;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v9 = 136315394;
    swift_getObjectType();
    v10 = _typeName(_:qualified:)();
    v12 = sub_100025CF0(v10, v11, &v14);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_100025CF0(0xD000000000000043, 0x8000000100121C00, &v14);
    _os_log_impl(&_mh_execute_header, v7, v8, "Start (%s.%s)…", v9, 0x16u);
    swift_arrayDestroy();
  }

  AsyncStream.Continuation.yield<A>()();
  (*(v2 + 8))(v4, v1);
  sub_100068700(v6);
}

void sub_10006A97C()
{
  v1 = sub_10004DED0(&unk_10015C570, &qword_100112440);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - v3;
  if (qword_10015AA88 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000659C(v5, qword_100169610);
  v6 = v0;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v9 = 136315394;
    swift_getObjectType();
    v10 = _typeName(_:qualified:)();
    v12 = sub_100025CF0(v10, v11, &v14);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_100025CF0(0xD000000000000047, 0x8000000100121BB0, &v14);
    _os_log_impl(&_mh_execute_header, v7, v8, "Start (%s.%s)…", v9, 0x16u);
    swift_arrayDestroy();
  }

  AsyncStream.Continuation.yield<A>()();
  (*(v2 + 8))(v4, v1);
  sub_1000688BC(v6);
}

unint64_t sub_10006ABD8()
{
  result = qword_10015C938;
  if (!qword_10015C938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015C938);
  }

  return result;
}

Swift::Int sub_10006AC2C(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  Hasher._combine(_:)(BYTE1(a1) & 1);
  Hasher._combine(_:)(BYTE2(a1) & 1);
  sub_100067020(v9, a2);
  sub_100067020(v9, a3);
  sub_100067020(v9, a4);
  return Hasher._finalize()();
}

uint64_t sub_10006ACCC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | *a1;
  if (a1[2])
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  if (a2[1])
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5 | *a2;
  if (a2[2])
  {
    v7 = 0x10000;
  }

  else
  {
    v7 = 0;
  }

  return sub_10006AEA8(v3 | v4, *(a1 + 1), *(a1 + 2), *(a1 + 3), v6 | v7, *(a2 + 1), *(a2 + 2), *(a2 + 3));
}

Swift::Int sub_10006AD34()
{
  if (v0[1])
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  v2 = v1 | *v0;
  if (v0[2])
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  return sub_10006AC2C(v2 | v3, *(v0 + 1), *(v0 + 2), *(v0 + 3));
}

void sub_10006AD6C(__int128 *a1)
{
  v3 = *(v1 + 1);
  v4 = *(v1 + 2);
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  Hasher._combine(_:)(*v1);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  sub_100067020(a1, v5);
  sub_100067020(a1, v6);

  sub_100067020(a1, v7);
}

Swift::Int sub_10006AE00(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 1);
  v4 = *(v1 + 2);
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  sub_100067020(v9, v5);
  sub_100067020(v9, v6);
  sub_100067020(v9, v7);
  return Hasher._finalize()();
}

uint64_t sub_10006AEA8(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1 ^ a5;
  if (((a1 ^ a5) & 0x100) != 0 || (v8 & 1) != 0 || (v8 & 0x10000) != 0 || (sub_1000459A0(a2, a6) & 1) == 0 || (sub_1000459A0(a3, a7) & 1) == 0)
  {
    return 0;
  }

  return sub_1000459A0(a4, a8);
}

NSString sub_10006AF3C()
{
  result = String._bridgeToObjectiveC()();
  qword_100169568 = result;
  return result;
}

id sub_10006AF74()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10006B05C()
{
  *(v0 + 16) = *(v0 + 104);
  sub_10004DED0(&unk_10015C800, &unk_100112BC0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_10006B0E8()
{

  return _swift_task_switch(sub_10006B1E4, 0, 0);
}

uint64_t sub_10006B1E4(uint64_t a1)
{
  if (*(v1 + 88) == 1)
  {
    (*(*(v1 + 64) + 8))(*(v1 + 72), *(v1 + 56));

    v2 = *(v1 + 8);

    return v2();
  }

  else
  {
    v5 = *(v1 + 40);
    v4 = *(v1 + 48);
    v6 = *(v1 + 32);
    AsyncStream.Continuation.yield<A>()();
    (*(v5 + 8))(v4, v6);
    v7 = swift_task_alloc();
    *(v1 + 80) = v7;
    *v7 = v1;
    v7[1] = sub_10006B0E8;
    v8 = *(v1 + 56);

    return AsyncStream.Iterator.next(isolation:)(v1 + 88, 0, 0, v8);
  }
}

uint64_t sub_10006B328()
{
  v1 = v0;
  v2 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v26 = sub_10004DED0(&qword_10015CB48, &unk_100113070);
  v6 = *(v26 - 8);
  __chkstk_darwin(v26);
  v8 = &v21 - v7;
  v25 = OBJC_IVAR____TtC11SettingsApp30CellularTelephonyStateProvider_observationTasks;
  v9 = *(*(v1 + OBJC_IVAR____TtC11SettingsApp30CellularTelephonyStateProvider_observationTasks) + 16);
  if (v9)
  {
    v22 = v5;
    v23 = v3;
    v24 = v2;

    v10 = 32;
    do
    {

      Task.cancel()();

      v10 += 8;
      --v9;
    }

    while (v9);

    v3 = v23;
    v2 = v24;
    v5 = v22;
  }

  v11 = OBJC_IVAR____TtC11SettingsApp30CellularTelephonyStateProvider_snapshotsContinuation;
  v12 = v26;
  (*(v6 + 16))(v8, v1 + OBJC_IVAR____TtC11SettingsApp30CellularTelephonyStateProvider_snapshotsContinuation, v26);
  AsyncStream.Continuation.finish()();
  v13 = *(v6 + 8);
  v13(v8, v12);
  v14 = OBJC_IVAR____TtC11SettingsApp30CellularTelephonyStateProvider_onReceiveEventContinuation;
  (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC11SettingsApp30CellularTelephonyStateProvider_onReceiveEventContinuation, v2);
  AsyncStream.Continuation.finish()();
  v15 = *(v3 + 8);
  v15(v5, v2);
  v16 = OBJC_IVAR____TtC11SettingsApp30CellularTelephonyStateProvider_snapshots;
  v17 = sub_10004DED0(&qword_10015CB50, &unk_100112DA0);
  (*(*(v17 - 8) + 8))(v1 + v16, v17);
  v13((v1 + v11), v12);

  v18 = OBJC_IVAR____TtC11SettingsApp30CellularTelephonyStateProvider_onReceiveEvent;
  v19 = sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  (*(*(v19 - 8) + 8))(v1 + v18, v19);
  v15((v1 + v14), v2);

  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_10006B6A4()
{
  sub_10006B328();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10006B6D8()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_10006B748()
{
  v1 = v0[13];

  v9 = v0[14];
  v10 = v0[10];
  if (v9 != v0[11])
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v9 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v2 = *(v10 + 8 * v9 + 32);
    }

    v14 = v2;
    v0[13] = v2;
    v0[14] = v9 + 1;
    if (!__OFADD__(v9, 1))
    {
      v15 = v0[5];
      v16 = swift_task_alloc();
      v0[15] = v16;
      *(v16 + 16) = v15;
      *(v16 + 24) = v14;
      v17 = swift_task_alloc();
      v0[16] = v17;
      *v17 = v0;
      v17[1] = sub_10001E2A8;
      v8 = &type metadata for String;
      v6 = sub_10001E2A0;
      v2 = v0 + 2;
      v5 = 0x80000001001221F0;
      v10 = 0;
      v3 = 0;
      v4 = 0xD000000000000011;
      v7 = v16;

      return withCheckedThrowingContinuation<A>(isolation:function:_:)(v2, v10, v3, v4, v5, v6, v7, v8);
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v2, v10, v3, v4, v5, v6, v7, v8);
  }

  v11 = v0[9];

  v12 = v0[1];

  return v12(1);
}

uint64_t sub_10006B904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = v5(a2, a3);

  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_10006B97C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10006B9EC()
{
  result = qword_10015CB80;
  if (!qword_10015CB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015CB80);
  }

  return result;
}

unint64_t sub_10006BA54()
{
  result = qword_10015CBA8;
  if (!qword_10015CBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015CBA8);
  }

  return result;
}

void sub_10006BAA8(uint64_t a1, uint64_t a2)
{
  Hasher._combine(_:)(a2 & 1);
  Hasher._combine(_:)(BYTE1(a2) & 1);
  Hasher._combine(_:)(BYTE2(a2) & 1);
  Hasher._combine(_:)(BYTE3(a2) & 1);
  Hasher._combine(_:)(BYTE4(a2) & 1);
  Hasher._combine(_:)(BYTE5(a2) & 1);
  Hasher._combine(_:)(BYTE6(a2));
}

BOOL sub_10006BB04(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  v12 = a2[3];
  v13 = a2[4];
  v14 = a2[5];
  v15 = a2[6];
  v16 = v7 == 0;
  v17 = 0x10000000000;
  if (v16)
  {
    v18 = 0;
  }

  else
  {
    v18 = 0x10000000000;
  }

  v19 = v18 | (v8 << 48);
  v16 = v6 == 0;
  v20 = &_mh_execute_header;
  if (v16)
  {
    v21 = 0;
  }

  else
  {
    v21 = &_mh_execute_header;
  }

  v16 = v5 == 0;
  v22 = 0x1000000;
  if (v16)
  {
    v23 = 0;
  }

  else
  {
    v23 = 0x1000000;
  }

  v24 = v21 | v23;
  v16 = v4 == 0;
  v25 = 0x10000;
  if (v16)
  {
    v26 = 0;
  }

  else
  {
    v26 = 0x10000;
  }

  v27 = v19 | v24 | v26;
  v16 = v3 == 0;
  v28 = 256;
  if (v16)
  {
    v29 = 0;
  }

  else
  {
    v29 = 256;
  }

  v30 = v29 | v2;
  if (!v14)
  {
    v17 = 0;
  }

  v31 = v17 | (v15 << 48);
  if (!v13)
  {
    v20 = 0;
  }

  if (!v12)
  {
    v22 = 0;
  }

  v32 = v20 | v22;
  if (!v11)
  {
    v25 = 0;
  }

  v33 = v31 | v32 | v25;
  if (!v10)
  {
    v28 = 0;
  }

  return sub_10006BDD4(v27 | v30, v33 | v28 | v9);
}

Swift::Int sub_10006BBD4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  Hasher.init(_seed:)();
  v8 = 0x10000000000;
  if (!v6)
  {
    v8 = 0;
  }

  v9 = v8 | (v7 << 48);
  v10 = &_mh_execute_header;
  if (!v5)
  {
    v10 = 0;
  }

  v11 = 0x1000000;
  if (!v4)
  {
    v11 = 0;
  }

  v12 = v10 | v11;
  v13 = 0x10000;
  if (!v3)
  {
    v13 = 0;
  }

  v14 = v9 | v12 | v13;
  v15 = 256;
  if (!v2)
  {
    v15 = 0;
  }

  sub_10006BAA8(v17, v14 | v15 | v1);
  return Hasher._finalize()();
}

void sub_10006BC9C(uint64_t a1)
{
  v2 = 0x10000000000;
  if (!v1[5])
  {
    v2 = 0;
  }

  v3 = v2 | (v1[6] << 48);
  v4 = &_mh_execute_header;
  if (!v1[4])
  {
    v4 = 0;
  }

  v5 = 0x1000000;
  if (!v1[3])
  {
    v5 = 0;
  }

  v6 = v4 | v5;
  v7 = 0x10000;
  if (!v1[2])
  {
    v7 = 0;
  }

  v8 = v3 | v6 | v7;
  v9 = 256;
  if (!v1[1])
  {
    v9 = 0;
  }

  sub_10006BAA8(a1, v8 | v9 | *v1);
}

Swift::Int sub_10006BD10(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  Hasher.init(_seed:)();
  v9 = 0x10000000000;
  if (!v7)
  {
    v9 = 0;
  }

  v10 = v9 | (v8 << 48);
  v11 = &_mh_execute_header;
  if (!v6)
  {
    v11 = 0;
  }

  v12 = 0x1000000;
  if (!v5)
  {
    v12 = 0;
  }

  v13 = v11 | v12;
  v14 = 0x10000;
  if (!v4)
  {
    v14 = 0;
  }

  v15 = v10 | v13 | v14;
  v16 = 256;
  if (!v3)
  {
    v16 = 0;
  }

  sub_10006BAA8(v18, v15 | v16 | v2);
  return Hasher._finalize()();
}

BOOL sub_10006BDD4(unint64_t a1, unint64_t a2)
{
  if ((a1 ^ a2))
  {
    return 0;
  }

  v2 = ((a1 ^ a2) & 0xFF000000000000) == 0;
  if (((a1 >> 40) & 1) != ((a2 >> 40) & 1))
  {
    v2 = 0;
  }

  if ((BYTE4(a1) & 1) != (BYTE4(a2) & 1))
  {
    v2 = 0;
  }

  if (((a1 >> 24) & 1) != ((a2 >> 24) & 1))
  {
    v2 = 0;
  }

  if (((a1 >> 16) & 1) != ((a2 >> 16) & 1))
  {
    v2 = 0;
  }

  return ((a1 >> 8) & 1) == ((a2 >> 8) & 1) && v2;
}

unint64_t sub_10006BE7C()
{
  result = qword_10015CBB0;
  if (!qword_10015CBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015CBB0);
  }

  return result;
}

uint64_t sub_10006BED0()
{
  v1 = v0;
  v2 = sub_10004DED0(&qword_10015CB58, &qword_100112E00);
  v19 = *(v2 - 8);
  v20 = v2;
  __chkstk_darwin(v2);
  v18 = &v18 - v3;
  v4 = sub_10004DED0(&qword_10015CB40, &unk_100112D90);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v18 - v6);
  v8 = sub_10004DED0(&qword_10015CB48, &unk_100113070);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - v10;
  v12 = sub_10004DED0(&qword_10015CB50, &unk_100112DA0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v18 - v14;
  swift_defaultActor_initialize();
  *v7 = 1;
  (*(v5 + 104))(v7, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v4);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v5 + 8))(v7, v4);
  (*(v13 + 16))(v1 + OBJC_IVAR____TtC11SettingsApp40SingleItemCellularTelephonyStateProvider_snapshots, v15, v12);
  (*(v9 + 16))(v1 + OBJC_IVAR____TtC11SettingsApp40SingleItemCellularTelephonyStateProvider_snapshotsContinuation, v11, v8);
  v21 = 0;
  v22 = 1;
  v23 = 0;
  v16 = v18;
  AsyncStream.Continuation.yield(_:)();
  (*(v19 + 8))(v16, v20);
  (*(v9 + 8))(v11, v8);
  (*(v13 + 8))(v15, v12);
  return v1;
}

uint64_t sub_10006C244()
{
  v1 = OBJC_IVAR____TtC11SettingsApp40SingleItemCellularTelephonyStateProvider_snapshots;
  v2 = sub_10004DED0(&qword_10015CB50, &unk_100112DA0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11SettingsApp40SingleItemCellularTelephonyStateProvider_snapshotsContinuation;
  v4 = sub_10004DED0(&qword_10015CB48, &unk_100113070);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for SingleItemCellularTelephonyStateProvider(uint64_t a1)
{
  result = qword_10015CBE8;
  if (!qword_10015CBE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10006C368(uint64_t a1)
{
  sub_10001266C(319, &qword_10015CA60, &type metadata accessor for AsyncStream);
  if (v1 <= 0x3F)
  {
    sub_10001266C(319, &unk_10015CA68, &type metadata accessor for AsyncStream.Continuation);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_10006C474@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC11SettingsApp40SingleItemCellularTelephonyStateProvider_snapshots;
  v5 = sub_10004DED0(&qword_10015CB50, &unk_100112DA0);
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_10006C4FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_10006C544(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_10006C5A8(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_10006D57C(v8, v9);
}

uint64_t sub_10006C604(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 80);
    v4 = (a1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v7 = v4[1];
      v8 = v4[2];
      v9 = v4[3];
      v10 = *(v3 - 6);
      v11 = *(v3 - 5);
      v12 = *(v3 - 4);
      v13 = *(v3 - 3);
      v14 = *(v3 - 2);
      if (v4[5])
      {
        if ((*v3 & 1) == 0 || (v5 != v10 || v6 != v11) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }

        if (v7 == v12 && v8 == v13)
        {
          if (v9 != v14)
          {
            return 0;
          }
        }

        else
        {
          v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
          result = 0;
          if ((v15 & 1) == 0 || v9 != v14)
          {
            return result;
          }
        }
      }

      else
      {
        if (*v3)
        {
          return 0;
        }

        v18 = v4[4];
        v17 = *(v3 - 1);
        if ((v5 != v10 || v6 != v11) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }

        if ((v7 != v12 || v8 != v13) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v9 != v14 || v18 != v17) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }
      }

      v4 += 7;
      v3 += 56;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_10006C7EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrimarySettingsListItemModel(0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v67 - v9;
  v81 = type metadata accessor for LocalizedStringResource();
  v11 = *(v81 - 8);
  __chkstk_darwin(v81);
  v77 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10004DED0(&unk_10015FB70, &unk_100112010);
  __chkstk_darwin(v13 - 8);
  v78 = &v67 - v14;
  v80 = sub_10004DED0(&qword_10015E940, &unk_100113180);
  __chkstk_darwin(v80);
  v16 = &v67 - v15;
  v84 = type metadata accessor for PrimarySettingsListSectionModel(0);
  v17 = __chkstk_darwin(v84);
  v19 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v22 = &v67 - v21;
  v23 = *(a1 + 16);
  if (v23 == *(a2 + 16))
  {
    if (!v23 || a1 == a2)
    {
      return 1;
    }

    v82 = v4;
    v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v25 = a1 + v24;
    v74 = a2 + v24;
    v73 = (v11 + 48);
    v69 = (v11 + 32);
    v70 = (v11 + 8);
    v26 = *(v20 + 72);
    v68 = v5;
    v27 = 0;
    v83 = v8;
    v71 = v26;
    v76 = v23;
    v72 = a1 + v24;
    while (1)
    {
      v29 = v26 * v27;
      result = sub_10002EA10(v25 + v26 * v27, v22, type metadata accessor for PrimarySettingsListSectionModel);
      if (v27 == v76)
      {
        __break(1u);
        return result;
      }

      sub_10002EA10(v74 + v29, v19, type metadata accessor for PrimarySettingsListSectionModel);
      v30 = *v22;
      v31 = *(v22 + 1);
      v32 = v22[16];
      v33 = *v19;
      v34 = *(v19 + 1);
      v35 = v19[16];
      v75 = v27;
      if (v32 <= 1)
      {
        break;
      }

      if (v32 == 2)
      {
        if (v35 != 2)
        {
          goto LABEL_98;
        }

        goto LABEL_16;
      }

      switch(v30)
      {
        case 1:
          if (v35 != 3 || v33 != 1)
          {
            goto LABEL_98;
          }

          break;
        case 2:
          if (v35 != 3 || v33 != 2)
          {
            goto LABEL_98;
          }

          break;
        case 3:
          if (v35 != 3 || v33 != 3)
          {
            goto LABEL_98;
          }

          break;
        case 4:
          if (v35 != 3 || v33 != 4)
          {
            goto LABEL_98;
          }

          break;
        case 5:
          if (v35 != 3 || v33 != 5)
          {
            goto LABEL_98;
          }

          break;
        case 6:
          if (v35 != 3 || v33 != 6)
          {
            goto LABEL_98;
          }

          break;
        case 7:
          if (v35 != 3 || v33 != 7)
          {
            goto LABEL_98;
          }

          break;
        case 8:
          if (v35 != 3 || v33 != 8)
          {
            goto LABEL_98;
          }

          break;
        case 9:
          if (v35 != 3 || v33 != 9)
          {
            goto LABEL_98;
          }

          break;
        case 10:
          if (v35 != 3 || v33 != 10)
          {
            goto LABEL_98;
          }

          break;
        case 11:
          if (v35 != 3 || v33 != 11)
          {
            goto LABEL_98;
          }

          break;
        case 12:
          if (v35 != 3 || v33 != 12)
          {
            goto LABEL_98;
          }

          break;
        case 13:
          if (v35 != 3 || v33 != 13)
          {
            goto LABEL_98;
          }

          break;
        case 14:
          if (v35 != 3 || v33 != 14)
          {
            goto LABEL_98;
          }

          break;
        case 15:
          if (v35 != 3 || v33 != 15)
          {
            goto LABEL_98;
          }

          break;
        case 16:
          if (v35 != 3 || v33 != 16)
          {
            goto LABEL_98;
          }

          break;
        case 17:
          if (v35 != 3 || v33 != 17)
          {
            goto LABEL_98;
          }

          break;
        default:
          if (v35 != 3 || v34 | v33)
          {
            goto LABEL_98;
          }

          goto LABEL_75;
      }

      if (v34)
      {
        goto LABEL_98;
      }

LABEL_75:
      v36 = *(v22 + 4);
      v37 = *(v19 + 4);
      if (v36)
      {
        if (!v37 || (*(v22 + 3) != *(v19 + 3) || v36 != v37) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_98;
        }
      }

      else if (v37)
      {
        goto LABEL_98;
      }

      v38 = *(v84 + 24);
      v39 = *(v80 + 48);
      sub_10002C98C(&v22[v38], v16);
      sub_10002C98C(&v19[v38], &v16[v39]);
      v40 = *v73;
      v41 = v81;
      if ((*v73)(v16, 1, v81) == 1)
      {
        if (v40(&v16[v39], 1, v41) != 1)
        {
          goto LABEL_102;
        }

        sub_1000068B0(v16, &unk_10015FB70, &unk_100112010);
      }

      else
      {
        v42 = v78;
        sub_10002C98C(v16, v78);
        if (v40(&v16[v39], 1, v41) == 1)
        {
          (*v70)(v42, v41);
LABEL_102:
          sub_1000068B0(v16, &qword_10015E940, &unk_100113180);
LABEL_98:
          sub_10002E8E8(v19, type metadata accessor for PrimarySettingsListSectionModel);
          sub_10002E8E8(v22, type metadata accessor for PrimarySettingsListSectionModel);
          return 0;
        }

        v43 = v77;
        (*v69)(v77, &v16[v39], v41);
        sub_10006D784(&qword_10015BF48, &type metadata accessor for LocalizedStringResource, &protocol conformance descriptor for LocalizedStringResource);
        v44 = v42;
        v45 = dispatch thunk of static Equatable.== infix(_:_:)();
        v46 = *v70;
        (*v70)(v43, v41);
        v46(v44, v41);
        sub_1000068B0(v16, &unk_10015FB70, &unk_100112010);
        if ((v45 & 1) == 0)
        {
          goto LABEL_98;
        }
      }

      v47 = *(v84 + 28);
      v48 = *&v22[v47];
      v49 = *&v19[v47];
      v50 = *(v48 + 16);
      if (v50 != *(v49 + 16))
      {
        goto LABEL_98;
      }

      if (v50 && v48 != v49)
      {
        v51 = (*(v68 + 80) + 32) & ~*(v68 + 80);
        v52 = v48 + v51;
        v53 = v49 + v51;
        v79 = *(v68 + 72);
        while (1)
        {
          sub_10002EA10(v52, v10, type metadata accessor for PrimarySettingsListItemModel);
          v54 = v83;
          sub_10002EA10(v53, v83, type metadata accessor for PrimarySettingsListItemModel);
          v55 = *(v10 + 1);
          v85[0] = *v10;
          v85[1] = v55;
          v86 = v10[32];
          v56 = *(v54 + 16);
          v87[0] = *v54;
          v87[1] = v56;
          v88 = *(v54 + 32);
          v57 = sub_10002BB48(v85, v87);
          v58 = v82;
          if ((v57 & 1) == 0 || (sub_10003A2B4(&v10[*(v82 + 20)], v54 + *(v82 + 20)) & 1) == 0)
          {
            break;
          }

          v59 = *(v58 + 24);
          v60 = v16;
          v61 = *&v10[v59];
          v62 = v54;
          v63 = v22;
          v64 = v19;
          v65 = *(v62 + v59);
          sub_10002E8E8(v62, type metadata accessor for PrimarySettingsListItemModel);
          sub_10002E8E8(v10, type metadata accessor for PrimarySettingsListItemModel);
          v66 = v61 == v65;
          v19 = v64;
          v22 = v63;
          if (!v66)
          {
            goto LABEL_98;
          }

          v16 = v60;
          v53 += v79;
          v52 += v79;
          if (!--v50)
          {
            goto LABEL_6;
          }
        }

        sub_10002E8E8(v54, type metadata accessor for PrimarySettingsListItemModel);
        sub_10002E8E8(v10, type metadata accessor for PrimarySettingsListItemModel);
        goto LABEL_98;
      }

LABEL_6:
      v27 = v75 + 1;
      sub_10002E8E8(v19, type metadata accessor for PrimarySettingsListSectionModel);
      sub_10002E8E8(v22, type metadata accessor for PrimarySettingsListSectionModel);
      result = 1;
      v25 = v72;
      v26 = v71;
      if (v27 == v76)
      {
        return result;
      }
    }

    if (v32)
    {
      if (v35 != 1)
      {
        goto LABEL_98;
      }
    }

    else if (v35)
    {
      goto LABEL_98;
    }

LABEL_16:
    if ((v30 != v33 || v31 != v34) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_75;
  }

  return 0;
}

uint64_t sub_10006D1C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v32 = a5;
  v33 = a6;
  v31 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v28 - v13;
  v15 = *(a1 + 16);
  if (v15 != *(a2 + 16))
  {
    v25 = 0;
    return v25 & 1;
  }

  if (!v15 || a1 == a2)
  {
    v25 = 1;
    return v25 & 1;
  }

  v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v17 = a1 + v16;
  v18 = a2 + v16;
  v20 = *(v9 + 16);
  v19 = v9 + 16;
  v21 = (v19 - 8);
  v29 = *(v19 + 56);
  v30 = v20;
  while (1)
  {
    v22 = v30;
    result = (v30)(v14, v17, v8);
    if (!v15)
    {
      break;
    }

    v24 = v19;
    v22(v12, v18, v8);
    sub_10006D784(v31, v32, v33);
    v25 = dispatch thunk of static Equatable.== infix(_:_:)();
    v26 = *v21;
    (*v21)(v12, v8);
    v26(v14, v8);
    if (v25)
    {
      v18 += v29;
      v17 += v29;
      v27 = v15-- == 1;
      v19 = v24;
      if (!v27)
      {
        continue;
      }
    }

    return v25 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_10006D3B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = a1 + 32;
    v4 = a2 + 32;
    do
    {
      sub_10006D7CC(v3, v17);
      sub_10006D7CC(v4, v14);
      v5 = v17[0] == v14[0] && v17[1] == v14[1];
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v17[2] == v14[2] ? (v6 = v17[3] == v14[3]) : (v6 = 0), !v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
      {
LABEL_49:
        sub_10006D828(v14);
        sub_10006D828(v17);
        return 0;
      }

      if (v19 > 1u)
      {
        if (v19 != 2)
        {
          v9 = v16 == 3 && v15 == 0;
          v12 = v15 == 1 && *(&v15 + 1) == 0 && v16 == 3;
          if (v18 == 0)
          {
            v7 = v9;
          }

          else
          {
            v7 = v12;
          }

          goto LABEL_46;
        }

        if (v16 != 2)
        {
          goto LABEL_49;
        }
      }

      else
      {
        if (!v19)
        {
          if (v16)
          {
            goto LABEL_49;
          }

          sub_1000548F0();
          if ((static NSObject.== infix(_:_:)() & 1) == 0)
          {
            goto LABEL_49;
          }

LABEL_5:
          sub_10006D828(v14);
          sub_10006D828(v17);
          goto LABEL_6;
        }

        if (v16 != 1)
        {
          goto LABEL_49;
        }
      }

      if (v18 == v15)
      {
        goto LABEL_5;
      }

      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
LABEL_46:
      sub_10006D828(v14);
      sub_10006D828(v17);
      if ((v7 & 1) == 0)
      {
        return 0;
      }

LABEL_6:
      v3 += 96;
      v4 += 96;
      --v2;
    }

    while (v2);
  }

  return 1;
}

BOOL sub_10006D57C(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (((*a1 ^ *a2) & 1) != 0 || ((v2 >> 8) & 1) != ((v3 >> 8) & 1) || ((v2 >> 16) & 1) != ((v3 >> 16) & 1))
  {
    return 0;
  }

  v5 = a1[2];
  v7 = a1[3];
  v8 = a2[2];
  v10 = a2[3];
  if (sub_1000459A0(a1[1], a2[1]) & 1) == 0 || (sub_1000459A0(v5, v8) & 1) == 0 || (sub_1000459A0(v7, v10) & 1) == 0 || ((*(a1 + 32) ^ *(a2 + 32)) & 1) != 0 || ((*(a1 + 33) ^ *(a2 + 33)) & 1) != 0 || ((*(a1 + 34) ^ *(a2 + 34)) & 1) != 0 || ((*(a1 + 35) ^ *(a2 + 35)))
  {
    return 0;
  }

  result = 0;
  if (((*(a1 + 36) ^ *(a2 + 36)) & 1) == 0 && ((*(a1 + 37) ^ *(a2 + 37)) & 1) == 0 && *(a1 + 38) == *(a2 + 38))
  {
    if (sub_1000459A0(a1[5], a2[5]))
    {
      v11 = a1[6];
      v12 = a1[7];
      v13 = *(a1 + 64);
      v14 = a1[9];
      v15 = a2[6];
      v16 = a2[7];
      v17 = *(a2 + 64);
      v18 = a2[9];
      v19 = v13 >> 6;
      if (v13 >> 6 > 1)
      {
        if (v19 == 2)
        {
          if ((v17 & 0xC0) == 0x80 && v11 == v15 && v12 == v16)
          {
            return (sub_10006C604(v14, v18) & 1) != 0;
          }
        }

        else if (v17 >= 0xC0 && !(v16 | v15) && v17 == 192)
        {
          return (sub_10006C604(v14, v18) & 1) != 0;
        }
      }

      else
      {
        if (!v19)
        {
          if (v17 >= 0x40 || (v11 != v15 || v12 != v16) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || ((v13 ^ v17) & 1) != 0)
          {
            return 0;
          }

          return (sub_10006C604(v14, v18) & 1) != 0;
        }

        if ((v17 & 0xC0) == 0x40 && v11 == v15)
        {
          return (sub_10006C604(v14, v18) & 1) != 0;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_10006D784(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_10006D87C()
{
  v0 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  __chkstk_darwin(v0 - 8);
  v88 = &v64 - v1;
  v87 = sub_10004DED0(&qword_10015CDA0, &qword_1001131E8);
  __chkstk_darwin(v87);
  v86 = &v64 - v2;
  v77 = sub_10004DED0(&qword_10015CDA8, &unk_1001131F0);
  __chkstk_darwin(v77);
  v73 = &v64 - v3;
  v90 = sub_10004DED0(&qword_10015CB50, &unk_100112DA0);
  v68 = *(v90 - 1);
  __chkstk_darwin(v90);
  v67 = &v64 - v4;
  v70 = sub_10004DED0(&qword_10015CDB0, &qword_100113200);
  __chkstk_darwin(v70);
  v71 = &v64 - v5;
  v69 = sub_10004DED0(&qword_10015CDB8, &qword_100113208);
  __chkstk_darwin(v69);
  v92 = &v64 - v6;
  v75 = sub_10004DED0(&qword_10015CDC0, &qword_100113210);
  __chkstk_darwin(v75);
  v76 = &v64 - v7;
  v8 = sub_10004DED0(&qword_10015CDC8, &qword_100113218);
  v79 = *(v8 - 8);
  v9 = __chkstk_darwin(v8 - 8);
  v83 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v10;
  __chkstk_darwin(v9);
  v12 = &v64 - v11;
  v13 = sub_10004DED0(&qword_10015CDD0, &qword_100113220);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v64 - v15);
  v17 = sub_10004DED0(&qword_10015CDD8, &qword_100113228);
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v74 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v20;
  __chkstk_darwin(v19);
  v22 = &v64 - v21;
  v23 = sub_10004DED0(&qword_10015EAD0, &unk_100113230);
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v64 - v25;
  *v16 = 1;
  (*(v14 + 104))(v16, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v13);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  v27 = v16;
  v28 = v94;
  (*(v14 + 8))(v27, v13);
  v81 = v24;
  v29 = *(v24 + 16);
  v78 = v26;
  v82 = v23;
  v29(v28 + OBJC_IVAR____TtC11SettingsApp55PrimarySettingsListDataModelSystemStateSnapshotProvider_snapshots, v26, v23);
  v84 = v18;
  v85 = v17;
  v32 = *(v18 + 16);
  v31 = v18 + 16;
  v30 = v32;
  v93 = v22;
  v32((v28 + OBJC_IVAR____TtC11SettingsApp55PrimarySettingsListDataModelSystemStateSnapshotProvider_snapshotsContinuation), v22, v17);
  v33 = [objc_allocWithZone(type metadata accessor for ManagedConfigurationStateProvider(0)) init];
  result = [objc_opt_self() sharedManager];
  if (result)
  {
    v35 = result;
    v36 = [result isMultiUser];

    v91 = v12;
    v66 = v31;
    v65 = v30;
    if (v36)
    {
      goto LABEL_6;
    }

    result = MobileGestalt_get_current_device();
    if (result)
    {
      v37 = result;
      cellularDataCapability = MobileGestalt_get_cellularDataCapability();

      if (cellularDataCapability)
      {
        v39 = type metadata accessor for CellularTelephonyStateProvider(0);
        swift_allocObject();
        v40 = sub_10001358C();
        v41 = &off_10014E9F8;
LABEL_7:
        v96 = v39;
        v97 = v41;
        *&v95 = v40;
        sub_100046A2C(&v95, &v98);
        type metadata accessor for SpringBoardApplicationStateProvider(0);
        swift_allocObject();
        v64 = sub_100016628();
        type metadata accessor for AccountsStateProvider(0);
        swift_allocObject();
        v89 = sub_10001C570();
        sub_10004DED0(&qword_10015C918, &qword_100112B80);
        sub_1000525A0(&qword_10015CDE0, &qword_10015C918, &qword_100112B80, &protocol conformance descriptor for AsyncStream<A>);
        sub_10006ABD8();
        AsyncSequence<>.removeDuplicates()();
        v42 = v99;
        v43 = v100;
        sub_100018544(&v98, v99);
        v44 = v67;
        (*(v43 + 8))(v42, v43);
        sub_1000525A0(&qword_10015CDE8, &qword_10015CB50, &unk_100112DA0, &protocol conformance descriptor for AsyncStream<A>);
        sub_10006BA54();
        v45 = v71;
        v46 = v90;
        AsyncSequence<>.removeDuplicates()();
        (*(v68 + 8))(v44, v46);
        v90 = v33;
        sub_10004DED0(&qword_10015C7D8, &unk_100113240);
        sub_1000525A0(&qword_10015CDF0, &qword_10015C7D8, &unk_100113240, &protocol conformance descriptor for AsyncStream<A>);
        sub_100066F2C();
        v47 = v73;
        AsyncSequence<>.removeDuplicates()();
        sub_1000525A0(&qword_10015CDF8, &qword_10015CDB8, &qword_100113208, &protocol conformance descriptor for AsyncRemoveDuplicatesSequence<A>);
        sub_1000525A0(&qword_10015CE00, &qword_10015CDB0, &qword_100113200, &protocol conformance descriptor for AsyncRemoveDuplicatesSequence<A>);
        sub_1000525A0(&qword_10015CE08, &qword_10015CDA8, &unk_1001131F0, &protocol conformance descriptor for AsyncRemoveDuplicatesSequence<A>);
        v48 = v76;
        v49 = v92;
        combineLatest<A, B, C>(_:_:_:)();
        sub_1000068B0(v47, &qword_10015CDA8, &unk_1001131F0);
        sub_1000068B0(v45, &qword_10015CDB0, &qword_100113200);
        sub_1000068B0(v49, &qword_10015CDB8, &qword_100113208);
        sub_10004DED0(&qword_10015C448, qword_1001123D8);
        sub_1000525A0(&qword_10015CE10, &qword_10015C448, qword_1001123D8, &protocol conformance descriptor for AsyncStream<A>);
        sub_1000655A4();
        v50 = v89;
        v51 = v86;
        AsyncSequence<>.removeDuplicates()();
        sub_1000525A0(&qword_10015CE18, &qword_10015CDC0, &qword_100113210, &protocol conformance descriptor for AsyncCombineLatest3Sequence<A, B, C>);
        sub_1000525A0(&qword_10015CE20, &qword_10015CDA0, &qword_1001131E8, &protocol conformance descriptor for AsyncRemoveDuplicatesSequence<A>);
        v52 = v91;
        combineLatest<A, B>(_:_:)();
        sub_1000068B0(v51, &qword_10015CDA0, &qword_1001131E8);
        sub_1000068B0(v48, &qword_10015CDC0, &qword_100113210);
        v53 = v94;
        *(v94 + OBJC_IVAR____TtC11SettingsApp55PrimarySettingsListDataModelSystemStateSnapshotProvider_managedConfigurationStateProvider) = v90;
        sub_10000B270(&v98, v53 + OBJC_IVAR____TtC11SettingsApp55PrimarySettingsListDataModelSystemStateSnapshotProvider_cellularTelephonyStateProvider);
        *(v53 + OBJC_IVAR____TtC11SettingsApp55PrimarySettingsListDataModelSystemStateSnapshotProvider_launchableApplicationStateProvider) = v64;
        *(v53 + OBJC_IVAR____TtC11SettingsApp55PrimarySettingsListDataModelSystemStateSnapshotProvider_accountsStateProvider) = v50;
        v54 = type metadata accessor for TaskPriority();
        v55 = v88;
        (*(*(v54 - 8) + 56))(v88, 1, 1, v54);
        v56 = v83;
        sub_10006EE10(v52, v83);
        v57 = v74;
        v58 = v85;
        v65(v74, v93, v85);
        v59 = (*(v79 + 80) + 32) & ~*(v79 + 80);
        v60 = v84;
        v61 = (v80 + *(v84 + 80) + v59) & ~*(v84 + 80);
        v62 = swift_allocObject();
        *(v62 + 16) = 0;
        *(v62 + 24) = 0;
        sub_10006EE80(v56, v62 + v59);
        (*(v60 + 32))(v62 + v61, v57, v58);
        v63 = v90;

        sub_100094AF4(0, 0, v55, &unk_100113258, v62);

        sub_1000068B0(v91, &qword_10015CDC8, &qword_100113218);
        (*(v60 + 8))(v93, v58);
        (*(v81 + 8))(v78, v82);
        sub_10000665C(&v98);
        return v53;
      }

LABEL_6:
      v39 = type metadata accessor for SingleItemCellularTelephonyStateProvider(0);
      swift_allocObject();
      v40 = sub_10006BED0();
      v41 = &off_10014EE58;
      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10006E5CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[24] = a4;
  v5[25] = a5;
  v6 = sub_10004DED0(&qword_10015CE28, &qword_100113260);
  v5[26] = v6;
  v5[27] = *(v6 - 8);
  v5[28] = swift_task_alloc();

  return _swift_task_switch(sub_10006E698, 0, 0);
}

uint64_t sub_10006E698()
{
  sub_10004DED0(&qword_10015CDC8, &qword_100113218);
  v1 = AsyncCombineLatest2Sequence.makeAsyncIterator()();
  v0[29] = v1;
  v0[22] = v1;
  v2 = swift_task_alloc();
  v0[30] = v2;
  v3 = sub_10004DED0(&qword_10015CE30, qword_100113268);
  *v2 = v0;
  v2[1] = sub_10006E770;

  return AsyncCombineLatest2Sequence.Iterator.next()(v0 + 2, v3);
}

uint64_t sub_10006E770()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_10006EA80;
  }

  else
  {
    v2 = sub_10006E884;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10006E8A0()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v3 = *(v0 + 216);
    v2 = *(v0 + 224);
    v4 = *(v0 + 208);
    v5 = *(v0 + 88);
    v6 = *(v0 + 80);
    v7 = *(v0 + 56);
    v8 = *(v0 + 54);
    v9 = *(v0 + 17) & 1;
    v10 = *(v0 + 18) & 1;
    v11 = *(v0 + 52) & 1;
    v12 = *(v0 + 53) & 1;
    *(v0 + 96) = *(v0 + 16) & 1;
    *(v0 + 97) = v9;
    *(v0 + 98) = v10;
    *(v0 + 104) = v1;
    v13 = *(v0 + 32);
    *(v0 + 112) = v13;
    LODWORD(v13) = *(v0 + 48);
    *&v13 = vmovl_u8(*&v13).u64[0] & 0xFF01FF01FF01FF01;
    *(v0 + 128) = vuzp1_s8(*&v13, *&v13).u32[0];
    *(v0 + 132) = v11;
    *(v0 + 133) = v12;
    *(v0 + 134) = v8;
    *(v0 + 136) = v7;
    *(v0 + 144) = *(v0 + 64);
    *(v0 + 160) = v6;
    *(v0 + 168) = v5;
    sub_10004DED0(&qword_10015CDD8, &qword_100113228);
    AsyncStream.Continuation.yield(_:)();
    (*(v3 + 8))(v2, v4);
    v14 = swift_task_alloc();
    *(v0 + 240) = v14;
    v15 = sub_10004DED0(&qword_10015CE30, qword_100113268);
    *v14 = v0;
    v14[1] = sub_10006E770;

    return AsyncCombineLatest2Sequence.Iterator.next()(v0 + 16, v15);
  }

  else
  {

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_10006EA80()
{
  *(v0 + 184) = *(v0 + 248);
  sub_10004DED0(&unk_10015C800, &unk_100112BC0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_10006EB0C()
{
  v1 = OBJC_IVAR____TtC11SettingsApp55PrimarySettingsListDataModelSystemStateSnapshotProvider_snapshots;
  v2 = sub_10004DED0(&qword_10015EAD0, &unk_100113230);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11SettingsApp55PrimarySettingsListDataModelSystemStateSnapshotProvider_snapshotsContinuation;
  v4 = sub_10004DED0(&qword_10015CDD8, &qword_100113228);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_10000665C((v0 + OBJC_IVAR____TtC11SettingsApp55PrimarySettingsListDataModelSystemStateSnapshotProvider_cellularTelephonyStateProvider));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PrimarySettingsListDataModelSystemStateSnapshotProvider(uint64_t a1)
{
  result = qword_10015CCE0;
  if (!qword_10015CCE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10006EC94(uint64_t a1)
{
  sub_10006EDBC(319, &qword_10015CCF0, &type metadata accessor for AsyncStream);
  if (v1 <= 0x3F)
  {
    sub_10006EDBC(319, &unk_10015CCF8, &type metadata accessor for AsyncStream.Continuation);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10006EDBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for PrimarySettingsListDataModelSystemStateSnapshot);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10006EE10(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DED0(&qword_10015CDC8, &qword_100113218);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006EE80(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DED0(&qword_10015CDC8, &qword_100113218);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006EEF0(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10004DED0(&qword_10015CDC8, &qword_100113218) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_10004DED0(&qword_10015CDD8, &qword_100113228) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10000A924;

  return sub_10006E5CC(a1, v10, v11, v1 + v6, v1 + v9);
}

Swift::Int sub_10006F058(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  Hasher.init(_seed:)();
  if (a3 <= 1u)
  {
    if (!a3)
    {
      Hasher._combine(_:)(1uLL);
      NSObject.hash(into:)();
      return Hasher._finalize()();
    }

    v6 = 2;
LABEL_7:
    Hasher._combine(_:)(v6);
    String.hash(into:)();
    return Hasher._finalize()();
  }

  if (a3 == 2)
  {
    v6 = 3;
    goto LABEL_7;
  }

  if (a1 | a2)
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  Hasher._combine(_:)(v7);
  return Hasher._finalize()();
}

void sub_10006F13C(uint64_t a1)
{
  if (*(v1 + 16) <= 1u)
  {
    if (!*(v1 + 16))
    {
      Hasher._combine(_:)(1uLL);
      NSObject.hash(into:)();
      return;
    }

    v2 = 2;
    goto LABEL_7;
  }

  if (*(v1 + 16) == 2)
  {
    v2 = 3;
LABEL_7:
    Hasher._combine(_:)(v2);

    String.hash(into:)();
    return;
  }

  if (*v1 == 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = 4;
  }

  Hasher._combine(_:)(v3);
}

Swift::Int sub_10006F1F8(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  Hasher.init(_seed:)();
  if (v4 <= 1)
  {
    if (!v4)
    {
      Hasher._combine(_:)(1uLL);
      NSObject.hash(into:)();
      return Hasher._finalize()();
    }

    v5 = 2;
LABEL_7:
    Hasher._combine(_:)(v5);
    String.hash(into:)();
    return Hasher._finalize()();
  }

  if (v4 == 2)
  {
    v5 = 3;
    goto LABEL_7;
  }

  if (v2 | v3)
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  Hasher._combine(_:)(v6);
  return Hasher._finalize()();
}

uint64_t sub_10006F2B4()
{
  if (*(v0 + 16) - 1 > 1)
  {
    return 0;
  }

  v1 = *v0;

  return v1;
}

unint64_t sub_10006F304()
{
  result = qword_10015CE38;
  if (!qword_10015CE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015CE38);
  }

  return result;
}

uint64_t sub_10006F358(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 <= 1u)
  {
    if (!a3)
    {
      if (!a6)
      {
        sub_1000548F0();
        return static NSObject.== infix(_:_:)() & 1;
      }

      return 0;
    }

    if (a6 == 1)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      goto LABEL_19;
    }

    return 0;
  }

  if (a3 != 2)
  {
    if (a1 | a2)
    {
      if (a6 == 3 && a4 == 1 && !a5)
      {
        return 1;
      }
    }

    else if (a6 == 3 && !(a5 | a4))
    {
      return 1;
    }

    return 0;
  }

  if (a6 != 2)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

LABEL_19:

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10006F474()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_10006F5B8, v3, v2);
}

uint64_t sub_10006F5B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006F618()
{
  v1 = v0[29];
  v0[37] = v1;
  if (v1)
  {
    v2 = [objc_allocWithZone(AAUIProfilePictureStore) initWithAppleAccount:v1 store:v0[35]];
    v0[38] = v2;
    if (v2)
    {
      v3 = v2;
      v0[10] = v0;
      v0[15] = v0 + 29;
      v0[11] = sub_10006F938;
      v4 = swift_continuation_init();
      v0[25] = sub_10004DED0(&qword_10015CF90, &qword_100113620);
      v0[18] = _NSConcreteStackBlock;
      v0[19] = 1107296256;
      v0[20] = sub_10001F6FC;
      v0[21] = &unk_10014F130;
      v0[22] = v4;
      [v3 fetchProfilePictureFromCacheForAccountOwner:v0 + 18];

      return _swift_continuation_await(v0 + 10);
    }
  }

  else
  {
  }

  v5 = v0[31];
  v6 = [objc_opt_self() sharedInstance];
  v7 = [v6 shieldSignInOrCreateFlows];

  swift_getKeyPath();
  v8 = swift_task_alloc();
  *(v8 + 16) = v5;
  v9 = v0[35];
  v10 = v0[31];
  if (v7)
  {
    *(v8 + 24) = 0x8000000000000008;
  }

  else
  {
    *(v8 + 24) = 0x8000000000000000;
  }

  v0[18] = v10;
  sub_100042010(&qword_10015CF88, type metadata accessor for PrimaryAppleAccountAvatarState, &unk_100113594);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v11 = v0[1];

  return v11();
}

uint64_t sub_10006F938()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 312) = v2;
  v3 = *(v1 + 272);
  v4 = *(v1 + 264);
  if (v2)
  {
    v5 = sub_10006FF3C;
  }

  else
  {
    v5 = sub_10006FA68;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10006FA68()
{

  v1 = v0[29];
  v2 = v0[37];
  v3 = v0[38];
  if (v1)
  {
    v16 = v0[35];
    v4 = v0[31];
    v5 = v1;
    v6 = Image.init(uiImage:)() | 0x4000000000000000;
    swift_getKeyPath();
    v7 = swift_task_alloc();
    *(v7 + 16) = v4;
    *(v7 + 24) = v6;
    v0[18] = v4;
    sub_100042010(&qword_10015CF88, type metadata accessor for PrimaryAppleAccountAvatarState, &unk_100113594);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {

    v8 = v0[31];
    v9 = [objc_opt_self() sharedInstance];
    v10 = [v9 shieldSignInOrCreateFlows];

    swift_getKeyPath();
    v11 = swift_task_alloc();
    *(v11 + 16) = v8;
    v12 = v0[35];
    v13 = v0[31];
    if (v10)
    {
      *(v11 + 24) = 0x8000000000000008;
    }

    else
    {
      *(v11 + 24) = 0x8000000000000000;
    }

    v0[18] = v13;
    sub_100042010(&qword_10015CF88, type metadata accessor for PrimaryAppleAccountAvatarState, &unk_100113594);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_10006FD5C()
{
  v14 = v0;

  swift_willThrow();
  if (qword_10015AAD0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000659C(v1, qword_1001696E8);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 280);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = sub_100025CF0(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to load avatar image: %{public}s", v6, 0xCu);
    sub_10000665C(v7);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10006FF3C()
{
  v16 = v0;
  v1 = v0[38];
  v2 = v0[37];

  swift_willThrow();

  if (qword_10015AAD0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000659C(v3, qword_1001696E8);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[35];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136446210;
    swift_getErrorValue();
    v10 = Error.localizedDescription.getter();
    v12 = sub_100025CF0(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to load avatar image: %{public}s", v8, 0xCu);
    sub_10000665C(v9);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

unint64_t sub_100070128(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_100042010(&qword_10015CF88, type metadata accessor for PrimaryAppleAccountAvatarState, &unk_100113594);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v2 + 16);
  sub_100042AF8(v3);
  return v3;
}

double sub_1000701D4@<D0>(uint64_t *a1@<X0>, unint64_t *a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100042010(&qword_10015CF88, type metadata accessor for PrimaryAppleAccountAvatarState, &unk_100113594);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v4 + 16);
  *a3 = v5;
  return sub_100042AF8(v5);
}

uint64_t sub_100070280(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100042010(&qword_10015CF88, type metadata accessor for PrimaryAppleAccountAvatarState, &unk_100113594);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10007034C()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 136);
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

    v7 = sub_100070784;
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

    v7 = sub_1000704E4;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_1000704E4()
{

  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return _swift_task_switch(sub_100070548, v1, v2);
}

uint64_t sub_100070548()
{
  v1 = v0[9];
  v2 = type metadata accessor for Notification();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {

LABEL_12:

    v11 = v0[1];

    return v11();
  }

  Strong = swift_weakLoadStrong();
  v0[20] = Strong;
  if (!Strong)
  {
    v10 = v0[9];

    sub_1000068B0(v10, &unk_10015FCF0, &unk_100117B60);
    goto LABEL_12;
  }

  if (qword_10015AAD0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000659C(v4, qword_1001696E8);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Received notification to reload avatar image", v7, 2u);
  }

  v8 = swift_task_alloc();
  v0[21] = v8;
  *v8 = v0;
  v8[1] = sub_100070810;

  return sub_100045328();
}

uint64_t sub_100070784()
{
  *(v0 + 56) = *(v0 + 152);
  sub_10004DED0(&unk_10015C800, &unk_100112BC0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_100070810()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return _swift_task_switch(sub_100070930, v3, v2);
}

uint64_t sub_100070930()
{
  v1 = v0[9];

  sub_1000068B0(v1, &unk_10015FCF0, &unk_100117B60);
  v0[17] = static MainActor.shared.getter();
  v2 = swift_task_alloc();
  v0[18] = v2;
  v3 = sub_10004DED0(&qword_10015CF80, &unk_1001135D8);
  *v2 = v0;
  v2[1] = sub_10007034C;
  v4 = v0[9];

  return AsyncDebounceSequence.Iterator.next()(v4, v3);
}

uint64_t sub_100070A14()
{
  sub_100070BD0(*(v0 + 16));
  v1 = OBJC_IVAR____TtC11SettingsAppP33_38407CB6A1B54ACF24C74ACB13DB4A0030PrimaryAppleAccountAvatarState___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

unint64_t sub_100070AC0(unint64_t *a1)
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

uint64_t sub_100070AE8(uint64_t a1, unsigned int a2)
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

uint64_t sub_100070B44(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_100070BA4(void *result, uint64_t a2)
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

unint64_t sub_100070BD0(unint64_t result)
{
  if ((result >> 62) <= 1)
  {
  }

  return result;
}

unint64_t sub_100070C04()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 16);
  *(v2 + 16) = v1;
  sub_100042AF8(v1);
  return sub_100070BD0(v3);
}

double sub_100070C40(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {

    v4 = vars8;
  }

  return result;
}

uint64_t sub_100070C88(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{

  if (a4)
  {
  }

  return result;
}

double sub_100070CEC(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {

    v3 = vars8;
  }

  return result;
}

uint64_t sub_100070D28(uint64_t a1, uint64_t a2, char a3)
{

  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_100070D94@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v32 = a2;
  v31 = sub_10004DED0(&qword_10015D050, &qword_1001137E8);
  v3 = *(v31 - 8);
  v4 = __chkstk_darwin(v31);
  v30 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v25 - v6;
  v8 = sub_10004DED0(&qword_10015D058, &qword_1001137F0);
  v29 = *(v8 - 8);
  v9 = v29;
  v10 = __chkstk_darwin(v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v25 - v13;
  v34 = a1;
  v35 = xmmword_100113720;
  v36 = 0;
  v37 = _swiftEmptyArrayStorage;
  sub_10004DED0(&qword_10015D060, &qword_1001137F8);
  sub_1000525A0(&qword_10015D068, &qword_10015D060, &qword_1001137F8, &protocol conformance descriptor for Toggle<A>);
  v28 = v14;
  Section<>.init(header:content:)();
  v33 = a1;
  sub_10004DED0(&qword_10015D070, &qword_100113800);
  sub_1000525A0(&qword_10015D078, &qword_10015D070, &qword_100113800, &protocol conformance descriptor for TupleView<A>);
  v26 = v7;
  Section<>.init(content:)();
  v15 = *(v9 + 16);
  v27 = v12;
  v15(v12, v14, v8);
  v16 = *(v3 + 16);
  v17 = v30;
  v18 = v7;
  v19 = v31;
  v16(v30, v18, v31);
  v20 = v32;
  v15(v32, v12, v8);
  v21 = sub_10004DED0(&qword_10015D080, &qword_100113808);
  v16(&v20[*(v21 + 48)], v17, v19);
  v22 = *(v3 + 8);
  v22(v26, v19);
  v23 = *(v29 + 8);
  v23(v28, v8);
  v22(v17, v19);
  return (v23)(v27, v8);
}

uint64_t sub_100071144(uint64_t a1)
{
  AppStorage.projectedValue.getter();
  static Animation.default.getter();
  sub_10004DED0(&qword_10015D088, &qword_100113810);
  Binding.animation(_:)();

  return Toggle.init(isOn:label:)();
}

void sub_100071220(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000024;
  *(a1 + 8) = 0x80000001001225D0;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
}

uint64_t sub_100071250@<X0>(char *a2@<X8>)
{
  v38 = a2;
  v2 = sub_10004DED0(&qword_10015D060, &qword_1001137F8);
  v41 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v37 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v36 = &v32 - v6;
  v7 = __chkstk_darwin(v5);
  v35 = &v32 - v8;
  v9 = __chkstk_darwin(v7);
  v34 = &v32 - v10;
  v11 = __chkstk_darwin(v9);
  v33 = &v32 - v12;
  v13 = __chkstk_darwin(v11);
  v40 = &v32 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v32 - v16;
  __chkstk_darwin(v15);
  v39 = &v32 - v18;
  AppStorage.projectedValue.getter();
  v42 = v45;
  v43 = v46;
  v44 = v47;
  static Animation.default.getter();
  sub_10004DED0(&qword_10015D088, &qword_100113810);
  Binding.animation(_:)();

  Toggle.init(isOn:label:)();
  AppStorage.projectedValue.getter();
  v42 = v45;
  v43 = v46;
  v44 = v47;
  static Animation.default.getter();
  Binding.animation(_:)();

  v19 = v17;
  v32 = v17;
  Toggle.init(isOn:label:)();
  AppStorage.projectedValue.getter();
  v42 = v45;
  v43 = v46;
  v44 = v47;
  static Animation.default.getter();
  Binding.animation(_:)();

  v20 = v40;
  Toggle.init(isOn:label:)();
  AppStorage.projectedValue.getter();
  v42 = v45;
  v43 = v46;
  v44 = v47;
  static Animation.default.getter();
  Binding.animation(_:)();

  v21 = v33;
  Toggle.init(isOn:label:)();
  v22 = *(v41 + 16);
  v23 = v34;
  v22(v34, v39, v2);
  v24 = v35;
  v22(v35, v19, v2);
  v25 = v36;
  v22(v36, v20, v2);
  v26 = v37;
  v27 = v21;
  v22(v37, v21, v2);
  v28 = v38;
  v22(v38, v23, v2);
  v29 = sub_10004DED0(&qword_10015D090, &qword_100113818);
  v22(&v28[v29[12]], v24, v2);
  v22(&v28[v29[16]], v25, v2);
  v22(&v28[v29[20]], v26, v2);
  v30 = *(v41 + 8);
  v30(v27, v2);
  v30(v40, v2);
  v30(v32, v2);
  v30(v39, v2);
  v30(v26, v2);
  v30(v25, v2);
  v30(v24, v2);
  return (v30)(v23, v2);
}

void sub_10007180C(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000012;
  *(a1 + 8) = 0x800000010011F9E0;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
}

void sub_10007183C(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000013;
  *(a1 + 8) = 0x800000010011F9A0;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
}

uint64_t sub_10007186C()
{
  v1 = sub_10004DED0(&qword_10015D030, &qword_1001137D8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7[-v3];
  v5 = *(v0 + 16);
  v9[0] = *v0;
  v9[1] = v5;
  v10 = *(v0 + 32);
  v8 = v9;
  sub_10004DED0(&qword_10015D038, &qword_1001137E0);
  sub_1000525A0(&qword_10015D040, &qword_10015D038, &qword_1001137E0, &protocol conformance descriptor for TupleView<A>);
  List<>.init(content:)();
  sub_1000525A0(&qword_10015D048, &qword_10015D030, &qword_1001137D8, &protocol conformance descriptor for List<A, B>);
  View.navigationTitle(_:)();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_100071A44@<X0>(uint64_t *a1@<X8>)
{
  if (qword_10015AB10 != -1)
  {
    swift_once();
  }

  v2 = qword_100169798;
  v3 = AppStorage.init<A>(wrappedValue:_:store:)();
  v4 = AppStorage.init<A>(wrappedValue:_:store:)();
  v5 = AppStorage.init<A>(wrappedValue:_:store:)();
  v6 = AppStorage.init<A>(wrappedValue:_:store:)();
  result = AppStorage.init<A>(wrappedValue:_:store:)();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = result;
  return result;
}

uint64_t sub_100071B90(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_100071BD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100071CAC@<X0>(uint64_t a1@<X8>)
{
  v18[1] = a1;
  v2 = sub_10004DED0(&qword_10015D128, &qword_100113920);
  v19 = *(v2 - 8);
  v20 = v2;
  __chkstk_darwin(v2);
  v4 = v18 - v3;
  v21 = v1;
  sub_10004DED0(&qword_10015D130, &qword_100113928);
  v5 = sub_100052374(&qword_10015D138, &qword_100113930);
  v6 = sub_100052374(&qword_10015D140, &qword_100113938);
  v7 = sub_100052374(&qword_10015D148, &qword_100113940);
  v8 = sub_100052374(&qword_10015D150, &qword_100113948);
  v9 = sub_1000525A0(&qword_10015D158, &qword_10015D150, &qword_100113948, &protocol conformance descriptor for List<A, B>);
  v22 = v8;
  v23 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v11 = sub_1000525A0(&qword_10015D160, &qword_10015D148, &qword_100113940, &protocol conformance descriptor for TupleToolbarContent<A>);
  v22 = v6;
  v23 = v7;
  v24 = OpaqueTypeConformance2;
  v25 = v11;
  v12 = swift_getOpaqueTypeConformance2();
  v22 = v5;
  v23 = v12;
  swift_getOpaqueTypeConformance2();
  NavigationStack.init<>(root:)();
  v13 = [objc_opt_self() currentDevice];
  v14 = [v13 userInterfaceIdiom];

  if (!v14)
  {
    sub_10004DED0(&qword_10015D170, &qword_100113950);
    type metadata accessor for PresentationDetent();
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1001103D0;
    static PresentationDetent.medium.getter();
    static PresentationDetent.large.getter();
    sub_100065070(v15);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
  }

  sub_1000525A0(&qword_10015D168, &qword_10015D128, &qword_100113920, &protocol conformance descriptor for NavigationStack<A, B>);
  v16 = v20;
  View.presentationDetents(_:)();

  return (*(v19 + 8))(v4, v16);
}

uint64_t sub_10007207C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a1;
  v30 = a2;
  v26 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v3 = *(v26 - 8);
  __chkstk_darwin(v26);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004DED0(&qword_10015D150, &qword_100113948);
  v25 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v23 - v7;
  v9 = sub_10004DED0(&qword_10015D140, &qword_100113938);
  v27 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v23 - v10;
  v12 = sub_10004DED0(&qword_10015D138, &qword_100113930);
  v13 = *(v12 - 8);
  v28 = v12;
  v29 = v13;
  __chkstk_darwin(v12);
  v15 = &v23 - v14;
  v32 = a1;
  sub_10004DED0(&qword_10015D178, &qword_100113958);
  sub_1000525A0(&qword_10015D180, &qword_10015D178, &qword_100113958, &protocol conformance descriptor for TupleView<A>);
  List<>.init(content:)();
  v16 = v26;
  (*(v3 + 104))(v5, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v26);
  v17 = sub_1000525A0(&qword_10015D158, &qword_10015D150, &qword_100113948, &protocol conformance descriptor for List<A, B>);
  View.navigationBarTitleDisplayMode(_:)();
  (*(v3 + 8))(v5, v16);
  (*(v25 + 8))(v8, v6);
  v31 = v24;
  v18 = sub_10004DED0(&qword_10015D148, &qword_100113940);
  v33 = v6;
  v34 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = sub_1000525A0(&qword_10015D160, &qword_10015D148, &qword_100113940, &protocol conformance descriptor for TupleToolbarContent<A>);
  View.toolbar<A>(content:)();
  (*(v27 + 8))(v11, v9);
  v33 = v9;
  v34 = v18;
  v35 = OpaqueTypeConformance2;
  v36 = v20;
  swift_getOpaqueTypeConformance2();
  v21 = v28;
  View.settingsListAppearance()();
  return (*(v29 + 8))(v15, v21);
}

uint64_t sub_100072504@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v72 = a2;
  v89 = sub_10004DED0(&qword_10015D1B8, &qword_100113990);
  v73 = *(v89 - 8);
  v3 = __chkstk_darwin(v89);
  v88 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v83 = &v66 - v5;
  v87 = sub_10004DED0(&qword_10015D1C0, &qword_100113998);
  v71 = *(v87 - 8);
  v6 = __chkstk_darwin(v87);
  v86 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v80 = &v66 - v8;
  v9 = sub_10004DED0(&qword_10015D1C8, &qword_1001139A0);
  v81 = *(v9 - 8);
  v82 = v9;
  v10 = __chkstk_darwin(v9);
  v85 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v79 = &v66 - v12;
  v70 = type metadata accessor for NavigationPath();
  v69 = *(v70 - 1);
  __chkstk_darwin(v70);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for EnvironmentValues();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10004DED0(&qword_10015D1D0, &qword_1001139A8);
  v18 = __chkstk_darwin(v17 - 8);
  v84 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v78 = &v66 - v20;
  v21 = type metadata accessor for SettingsApplicationDebugRoot(0);
  v22 = v21 - 8;
  v23 = *(v21 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v21);
  v25 = sub_10004DED0(&qword_10015B028, &unk_100113980);
  v76 = *(v25 - 8);
  v77 = v25;
  v26 = __chkstk_darwin(v25);
  v75 = &v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = &v66 - v28;
  sub_100074D20(a1, &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v31 = swift_allocObject();
  sub_100074D84(&v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v30);
  v74 = v29;
  Button.init(action:label:)();
  v32 = *(v22 + 28);
  v68 = a1;
  v33 = &a1[v32];
  v34 = *v33;
  LOBYTE(v23) = v33[8];

  if ((v23 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v35 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v66 + 8))(v16, v67);
    v34 = v90;
  }

  v36 = *(v34 + 24);

  swift_getKeyPath();
  *&v90 = v36;
  sub_100074E18();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v37 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__navigationPath;
  swift_beginAccess();
  v38 = v69;
  v39 = v70;
  (*(v69 + 16))(v14, v36 + v37, v70);

  LOBYTE(v37) = NavigationPath.isEmpty.getter();
  (*(v38 + 8))(v14, v39);
  if (v37)
  {
    v40 = 1;
    v41 = v78;
  }

  else
  {
    v42 = v68;
    sub_100074D20(v68, &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
    v43 = swift_allocObject();
    v44 = sub_100074D84(&v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v43 + v30);
    __chkstk_darwin(v44);
    *(&v66 - 2) = v42;
    v41 = v78;
    Button.init(action:label:)();
    v40 = 0;
  }

  v45 = v77;
  v46 = v76;
  (*(v76 + 56))(v41, v40, 1, v77);
  sub_10004DED0(&qword_10015D1D8, &qword_1001139D8);
  sub_1000525A0(&qword_10015D1E0, &qword_10015D1D8, &qword_1001139D8, &protocol conformance descriptor for TupleView<A>);
  v47 = v79;
  Section<>.init(content:)();
  v90 = xmmword_100113820;
  v91 = 0;
  v92 = _swiftEmptyArrayStorage;
  sub_10004DED0(&qword_10015D1E8, &qword_1001139E0);
  sub_1000525A0(&qword_10015D1F0, &qword_10015D1E8, &qword_1001139E0, &protocol conformance descriptor for TupleView<A>);
  v48 = v80;
  Section<>.init(header:content:)();
  v90 = xmmword_100113830;
  v91 = 0;
  v92 = _swiftEmptyArrayStorage;
  sub_10004DED0(&qword_10015D1F8, &qword_1001139E8);
  sub_100074F04();
  v49 = v83;
  Section<>.init(header:content:)();
  v50 = *(v46 + 16);
  v51 = v75;
  v50(v75, v74, v45);
  sub_100059CA0(v41, v84, &qword_10015D1D0, &qword_1001139A8);
  v70 = *(v81 + 16);
  (v70)(v85, v47, v82);
  v52 = v71;
  v69 = *(v71 + 16);
  (v69)(v86, v48, v87);
  v53 = v73;
  v68 = *(v73 + 16);
  (v68)(v88, v49, v89);
  v54 = v72;
  v50(v72, v51, v45);
  v55 = sub_10004DED0(&qword_10015D218, qword_100113A00);
  sub_100059CA0(v84, &v54[v55[12]], &qword_10015D1D0, &qword_1001139A8);
  v56 = v82;
  (v70)(&v54[v55[16]], v85, v82);
  v57 = v87;
  (v69)(&v54[v55[20]], v86, v87);
  v58 = &v54[v55[24]];
  v59 = v89;
  (v68)(v58, v88, v89);
  v60 = *(v53 + 8);
  v60(v83, v59);
  v61 = *(v52 + 8);
  v61(v80, v57);
  v62 = *(v81 + 8);
  v62(v79, v56);
  sub_100075014(v78);
  v63 = v77;
  v64 = *(v76 + 8);
  v64(v74, v77);
  v60(v88, v89);
  v61(v86, v87);
  v62(v85, v56);
  sub_100075014(v84);
  return (v64)(v75, v63);
}

uint64_t sub_1000730C0(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + *(type metadata accessor for SettingsApplicationDebugRoot(0) + 20) + 8);

  if ((v6 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  memset(v9, 0, sizeof(v9));
  v10 = 6;
  sub_1000A57A4(v9);
}

void sub_100073244(uint64_t a1@<X8>)
{
  *a1 = 0xD00000000000001BLL;
  *(a1 + 8) = 0x80000001001226B0;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
}

uint64_t sub_100073274(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (a1 + *(type metadata accessor for SettingsApplicationDebugRoot(0) + 20));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
    v7 = v13;
  }

  v10 = *(v7 + 24);

  swift_getKeyPath();
  v13 = v10;
  sub_100074E18();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = v10;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  NavigationPath.removeLast(_:)(1);
  swift_endAccess();
  v13 = v10;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();
}

void sub_1000734AC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NavigationPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = 0;
  v25 = 0xE000000000000000;
  _StringGuts.grow(_:)(16);
  v23[1] = v25;
  v12 = (a1 + *(type metadata accessor for SettingsApplicationDebugRoot(0) + 20));
  v13 = *v12;
  LOBYTE(a1) = *(v12 + 8);

  if ((a1 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v9 + 8))(v11, v8);
    v13 = v24;
  }

  v15 = *(v13 + 24);

  swift_getKeyPath();
  v24 = v15;
  sub_100074E18();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel__navigationPath;
  swift_beginAccess();
  (*(v5 + 16))(v7, v15 + v16, v4);

  v17 = NavigationPath.count.getter();
  (*(v5 + 8))(v7, v4);
  v23[2] = v17;
  v18 = dispatch thunk of CustomStringConvertible.description.getter();
  v20 = v19;

  v26 = v18;
  v27 = v20;
  v21._countAndFlagsBits = 0x6F20736D65746920;
  v21._object = 0xEE0068746170206ELL;
  String.append(_:)(v21);
  v22 = v27;
  *a2 = v26;
  *(a2 + 8) = v22;
  *(a2 + 16) = 0;
  *(a2 + 24) = _swiftEmptyArrayStorage;
}

uint64_t sub_1000737D4@<X0>(char *a1@<X8>)
{
  v37 = a1;
  v36 = sub_10004DED0(&qword_10015D240, &qword_100113A58);
  v34 = *(v36 - 8);
  v1 = __chkstk_darwin(v36);
  v35 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v4 = &v29 - v3;
  v5 = sub_10004DED0(&qword_10015D248, &qword_100113A60);
  v33 = *(v5 - 8);
  v6 = v33;
  v7 = __chkstk_darwin(v5);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v29 - v10;
  v12 = AppStorage.init<A>(wrappedValue:_:store:)();
  v13 = AppStorage.init<A>(wrappedValue:_:store:)();
  v14 = AppStorage.init<A>(wrappedValue:_:store:)();
  v15 = AppStorage.init<A>(wrappedValue:_:store:)();
  v16 = AppStorage.init<A>(wrappedValue:_:store:)();
  v38[0] = v12;
  v38[1] = v13;
  v38[2] = v14;
  v38[3] = v15;
  v38[4] = v16;
  sub_100075098();
  v32 = v11;
  NavigationLink.init(destination:label:)();
  sub_100071A44(v38);
  sub_1000750EC();
  v30 = v4;
  NavigationLink.init(destination:label:)();
  v17 = *(v6 + 16);
  v31 = v9;
  v18 = v11;
  v19 = v5;
  v17(v9, v18, v5);
  v21 = v34;
  v20 = v35;
  v22 = *(v34 + 16);
  v23 = v36;
  v22(v35, v4, v36);
  v24 = v37;
  v17(v37, v9, v19);
  v25 = sub_10004DED0(&qword_10015D260, &qword_100113A68);
  v22(&v24[*(v25 + 48)], v20, v23);
  v26 = *(v21 + 8);
  v26(v30, v23);
  v27 = *(v33 + 8);
  v27(v32, v19);
  v26(v20, v23);
  return (v27)(v31, v19);
}

double sub_100073BC4@<D0>(uint64_t a1@<X8>)
{
  *&result = 0x686372616553;
  *a1 = xmmword_100113840;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  return result;
}

double sub_100073BE4@<D0>(uint64_t a1@<X8>)
{
  result = 1.24009431e180;
  *a1 = xmmword_100113850;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_100073C04@<X0>(char *a1@<X8>)
{
  v29 = a1;
  v28 = sub_10004DED0(&qword_10015D230, &qword_100113A48);
  v25 = *(v28 - 8);
  v1 = v25;
  v2 = __chkstk_darwin(v28);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v24 - v5;
  v7 = sub_10004DED0(&qword_10015D210, &unk_1001139F0);
  v27 = *(v7 - 8);
  v8 = v27;
  v9 = __chkstk_darwin(v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v24 - v12;
  sub_10004DED0(&qword_10015C098, &qword_100116660);
  sub_10000A5B0();
  LabeledContent<>.init(content:label:)();
  v24 = v6;
  LabeledContent<>.init(content:label:)();
  v14 = *(v8 + 16);
  v26 = v11;
  v14(v11, v13, v7);
  v15 = *(v1 + 16);
  v16 = v6;
  v17 = v28;
  v15(v4, v16, v28);
  v18 = v29;
  v14(v29, v11, v7);
  v19 = sub_10004DED0(&qword_10015D238, &qword_100113A50);
  v15(&v18[*(v19 + 48)], v4, v17);
  v20 = *(v25 + 8);
  v21 = v17;
  v20(v24, v17);
  v22 = *(v27 + 8);
  v22(v13, v7);
  v20(v4, v21);
  return (v22)(v26, v7);
}

void sub_100073F54(uint64_t *a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v4 = sub_100082F60();
  v6 = v5;

  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = [v2 mainBundle];
  v8 = sub_10008305C();
  v10 = v9;

  if (!v10)
  {

LABEL_5:
    v14 = 0;
    v15 = 0;
    v16 = 0;
    goto LABEL_6;
  }

  v11._countAndFlagsBits = 10272;
  v11._object = 0xE200000000000000;
  String.append(_:)(v11);
  v12._countAndFlagsBits = v8;
  v12._object = v10;
  String.append(_:)(v12);

  v13._countAndFlagsBits = 41;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  v14 = v4;
  v15 = v6;
  v16 = _swiftEmptyArrayStorage;
LABEL_6:
  *a1 = v14;
  a1[1] = v15;
  a1[2] = 0;
  a1[3] = v16;
}

double sub_10007405C@<D0>(uint64_t a1@<X8>)
{
  result = 1.35441148e-306;
  *a1 = xmmword_100113860;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  return result;
}

double sub_10007407C@<D0>(uint64_t a1@<X8>)
{
  *&result = 28494;
  *a1 = xmmword_100113870;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  return result;
}

void sub_10007409C(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000013;
  *(a1 + 8) = 0x8000000100122600;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
}

uint64_t sub_1000740CC(uint64_t a1, uint64_t a2)
{
  if (qword_10015AA78 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();

  sub_10004DED0(&qword_10015D220, &qword_100113A40);
  sub_10004DED0(&qword_10015D210, &unk_1001139F0);
  sub_1000525A0(&qword_10015D228, &qword_10015D220, &qword_100113A40, &protocol conformance descriptor for [A]);
  sub_100074F88();
  return ForEach<>.init(_:id:content:)();
}

void sub_100074200(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 bundlePath];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_100074258(uint64_t *a1)
{
  sub_10004DED0(&qword_10015C098, &qword_100116660);
  sub_10000A5B0();
  return LabeledContent<>.init(content:label:)();
}

void sub_1000742F8(void *a1@<X0>, void *a2@<X8>)
{
  v3 = [a1 infoDictionary];
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v5 + 16))
  {
    goto LABEL_7;
  }

  v6 = sub_1000B8930(0x656C646E75424643, 0xEF6E6F6973726556);
  if ((v7 & 1) == 0)
  {
    goto LABEL_7;
  }

  sub_10001EE30(*(v5 + 56) + 32 * v6, &v20);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v15 = 0;
    v16 = 0;
    v17 = 0;
    goto LABEL_9;
  }

  v8 = sub_10008305C();
  if (!v9)
  {
LABEL_7:

    goto LABEL_8;
  }

  v10 = v8;
  v11 = v9;
  v20 = v18;
  v21 = v19;
  v12._countAndFlagsBits = 10272;
  v12._object = 0xE200000000000000;
  String.append(_:)(v12);
  v13._countAndFlagsBits = v10;
  v13._object = v11;
  String.append(_:)(v13);

  v14._countAndFlagsBits = 41;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  v15 = v20;
  v16 = v21;
  v17 = _swiftEmptyArrayStorage;
LABEL_9:
  *a2 = v15;
  a2[1] = v16;
  a2[2] = 0;
  a2[3] = v17;
}

uint64_t sub_100074468@<X0>(uint64_t a1@<X8>)
{
  sub_100083150();
  sub_10002EAE0();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1000744C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a1;
  v19 = a2;
  v18 = sub_10004DED0(&qword_10015D188, &qword_100113960);
  __chkstk_darwin(v18);
  v3 = &v16 - v2;
  v17 = sub_10004DED0(&qword_10015D190, &qword_100113968);
  v4 = *(v17 - 8);
  __chkstk_darwin(v17);
  v6 = &v16 - v5;
  v7 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10004DED0(&qword_10015D198, &qword_100113970);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  static ToolbarItemPlacement.principal.getter();
  sub_10004DED0(&qword_10015D1A0, &qword_100113978);
  sub_1000525A0(&qword_10015D1A8, &qword_10015D1A0, &qword_100113978, &protocol conformance descriptor for HStack<A>);
  ToolbarItem<>.init(placement:content:)();
  static ToolbarItemPlacement.navigationBarTrailing.getter();
  v20 = v16;
  sub_10004DED0(&qword_10015B028, &unk_100113980);
  sub_1000525A0(&qword_10015B030, &qword_10015B028, &unk_100113980, &protocol conformance descriptor for Button<A>);
  ToolbarItem<>.init(placement:content:)();
  v12 = *(v18 + 48);
  (*(v9 + 16))(v3, v11, v8);
  v13 = &v3[v12];
  v14 = v17;
  (*(v4 + 16))(v13, v6, v17);
  TupleToolbarContent.init(_:)();
  (*(v4 + 8))(v6, v14);
  return (*(v9 + 8))(v11, v8);
}

double sub_100074834@<D0>(uint64_t a1@<X8>)
{
  v2 = static VerticalAlignment.center.getter();
  sub_100039F14(0xD000000000000015, 0x800000010011EB50, 1);
  sub_100009670(0x6775626544, 0xE500000000000000, 0);

  sub_100009680(0x6775626544, 0xE500000000000000, 0);

  sub_10002A748(0xD000000000000015, 0x800000010011EB50, 1);
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0xD000000000000015;
  *(a1 + 32) = 0x800000010011EB50;
  *(a1 + 40) = 1;
  *&result = 0x6775626544;
  *(a1 + 48) = xmmword_100113880;
  *(a1 + 64) = 0;
  *(a1 + 72) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_100074934(uint64_t a1)
{
  v2 = type metadata accessor for SettingsApplicationDebugRoot(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  sub_100074D20(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_100074D84(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  return Button.init(action:label:)();
}

uint64_t sub_100074A60(uint64_t a1)
{
  v15 = type metadata accessor for EnvironmentValues();
  v2 = *(v15 - 8);
  __chkstk_darwin(v15);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10004DED0(&qword_10015D1B0, &qword_100114420);
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  v8 = type metadata accessor for DismissAction();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100059CA0(a1, v7, &qword_10015D1B0, &qword_100114420);
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

    (*(v2 + 8))(v4, v15);
  }

  DismissAction.callAsFunction()();
  return (*(v9 + 8))(v11, v8);
}

double sub_100074CDC@<D0>(uint64_t a1@<X8>)
{
  result = 1.73118111e-306;
  *a1 = xmmword_100113890;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_100074D20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsApplicationDebugRoot(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100074D84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsApplicationDebugRoot(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100074E18()
{
  result = qword_10015B0E0;
  if (!qword_10015B0E0)
  {
    type metadata accessor for SettingsAppNavigationModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015B0E0);
  }

  return result;
}

uint64_t sub_100074E88(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SettingsApplicationDebugRoot(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_100074F04()
{
  result = qword_10015D200;
  if (!qword_10015D200)
  {
    sub_100052374(&qword_10015D1F8, &qword_1001139E8);
    sub_100074F88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015D200);
  }

  return result;
}

unint64_t sub_100074F88()
{
  result = qword_10015D208;
  if (!qword_10015D208)
  {
    sub_100052374(&qword_10015D210, &unk_1001139F0);
    sub_10000A5B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015D208);
  }

  return result;
}

uint64_t sub_100075014(uint64_t a1)
{
  v2 = sub_10004DED0(&qword_10015D1D0, &qword_1001139A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100075098()
{
  result = qword_10015D250;
  if (!qword_10015D250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015D250);
  }

  return result;
}

unint64_t sub_1000750EC()
{
  result = qword_10015D258;
  if (!qword_10015D258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015D258);
  }

  return result;
}

uint64_t sub_10007516C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v28 = a1;
  v3 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004DED0(&qword_10015D268, &qword_100113B68);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - v8;
  v10 = sub_10004DED0(&qword_10015D270, &qword_100113B70);
  v23 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v23 - v11;
  v13 = sub_10004DED0(&qword_10015D278, &qword_100113B78);
  v14 = *(v13 - 8);
  v24 = v13;
  v25 = v14;
  __chkstk_darwin(v13);
  v16 = &v23 - v15;
  v29 = v2;
  sub_10004DED0(&qword_10015D280, &qword_100113B80);
  sub_1000525A0(&qword_10015D288, &qword_10015D280, &qword_100113B80, &protocol conformance descriptor for TupleView<A>);
  List<>.init(content:)();
  v17 = sub_1000525A0(&qword_10015D290, &qword_10015D268, &qword_100113B68, &protocol conformance descriptor for List<A, B>);
  View.navigationTitle(_:)();
  (*(v7 + 8))(v9, v6);
  v19 = v26;
  v18 = v27;
  (*(v26 + 104))(v5, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v27);
  v30 = v6;
  v31 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.navigationBarTitleDisplayMode(_:)();
  (*(v19 + 8))(v5, v18);
  (*(v23 + 8))(v12, v10);
  v30 = v10;
  v31 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v21 = v24;
  View.settingsListAppearance()();
  return (*(v25 + 8))(v16, v21);
}

uint64_t sub_100075590@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v46 = a2;
  v56 = sub_10004DED0(&qword_10015D298, &unk_100113B88);
  v59 = *(v56 - 8);
  v3 = __chkstk_darwin(v56);
  v45 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v54 = &v38 - v5;
  v55 = sub_10004DED0(&qword_10015D058, &qword_1001137F0);
  v58 = *(v55 - 8);
  v6 = __chkstk_darwin(v55);
  v57 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v50 = &v38 - v8;
  v53 = sub_10004DED0(&qword_10015D2A0, &qword_100113B98);
  v51 = *(v53 - 8);
  v9 = __chkstk_darwin(v53);
  v52 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v47 = &v38 - v11;
  v49 = sub_10004DED0(&qword_10015D2A8, &qword_100113BA0);
  v44 = *(v49 - 8);
  v12 = v44;
  v13 = __chkstk_darwin(v49);
  v48 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v38 - v15;
  v62 = a1;
  v63 = xmmword_100113A70;
  v64 = 0;
  v65 = _swiftEmptyArrayStorage;
  sub_10004DED0(&qword_10015D2B0, &qword_100113BA8);
  sub_1000525A0(&qword_10015D2B8, &qword_10015D2B0, &qword_100113BA8, &protocol conformance descriptor for TupleView<A>);
  v43 = v16;
  Section<>.init(header:content:)();
  v61 = a1;
  *&v63 = 0xD000000000000010;
  *(&v63 + 1) = 0x80000001001226D0;
  v64 = 0;
  v65 = _swiftEmptyArrayStorage;
  sub_10004DED0(&qword_10015D2C0, &unk_100113BB0);
  sub_1000525A0(&qword_10015D2C8, &qword_10015D2C0, &unk_100113BB0, &protocol conformance descriptor for TupleView<A>);
  v17 = v47;
  Section<>.init(header:content:)();
  v60 = a1;
  v63 = xmmword_100113A80;
  v64 = 0;
  v65 = _swiftEmptyArrayStorage;
  sub_10004DED0(&qword_10015D060, &qword_1001137F8);
  sub_1000525A0(&qword_10015D068, &qword_10015D060, &qword_1001137F8, &protocol conformance descriptor for Toggle<A>);
  v18 = v50;
  Section<>.init(header:content:)();
  v19 = v54;
  Section<>.init(content:)();
  v39 = *(v12 + 16);
  v20 = v48;
  v21 = v49;
  v39(v48, v16, v49);
  v42 = *(v51 + 16);
  v22 = v52;
  v42(v52, v17, v53);
  v41 = *(v58 + 16);
  v41(v57, v18, v55);
  v40 = *(v59 + 16);
  v23 = v45;
  v24 = v19;
  v25 = v56;
  v40(v45, v24, v56);
  v26 = v46;
  v39(v46, v20, v21);
  v27 = sub_10004DED0(&qword_10015D2D0, &qword_100113BC0);
  v28 = v22;
  v29 = v53;
  v42(&v26[v27[12]], v28, v53);
  v30 = v55;
  v41(&v26[v27[16]], v57, v55);
  v31 = v23;
  v40(&v26[v27[20]], v23, v25);
  v32 = *(v59 + 8);
  v59 += 8;
  v32(v54, v25);
  v33 = *(v58 + 8);
  v58 += 8;
  v33(v50, v30);
  v34 = *(v51 + 8);
  v34(v47, v29);
  v35 = *(v44 + 8);
  v36 = v49;
  v35(v43, v49);
  v32(v31, v56);
  v33(v57, v30);
  v34(v52, v29);
  return (v35)(v48, v36);
}

uint64_t sub_100075D7C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v32 = a1;
  v33 = a2;
  v31 = sub_10004DED0(&qword_10015D060, &qword_1001137F8);
  v2 = *(v31 - 8);
  v3 = __chkstk_darwin(v31);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v27 - v6;
  v8 = sub_10004DED0(&qword_10015D2D8, &qword_100113BC8);
  v30 = *(v8 - 8);
  v9 = v30;
  v10 = __chkstk_darwin(v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v27 - v13;
  sub_10004DED0(&qword_10015B6F0, &qword_100113BD0);
  sub_100040F70();
  v29 = v14;
  LabeledContent<>.init(content:label:)();
  AppStorage.projectedValue.getter();
  v15 = v7;
  v27 = v7;
  Toggle.init(isOn:label:)();
  v16 = *(v9 + 16);
  v28 = v12;
  v16(v12, v14, v8);
  v17 = *(v2 + 16);
  v18 = v15;
  v19 = v31;
  v17(v5, v18, v31);
  v20 = v33;
  v21 = v12;
  v22 = v8;
  v16(v33, v21, v8);
  v23 = sub_10004DED0(&unk_10015D2F0, &unk_100113BF0);
  v17(&v20[*(v23 + 48)], v5, v19);
  v24 = *(v2 + 8);
  v24(v27, v19);
  v25 = *(v30 + 8);
  v25(v29, v22);
  v24(v5, v19);
  return (v25)(v28, v22);
}

double sub_1000760D8@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Date.FormatStyle.TimeStyle();
  v30 = *(v2 - 8);
  v31 = v2;
  __chkstk_darwin(v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date.FormatStyle.DateStyle();
  v28 = *(v5 - 8);
  v29 = v5;
  __chkstk_darwin(v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10004DED0(&qword_10015D2E8, &unk_100113BE0);
  __chkstk_darwin(v8 - 8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() standardUserDefaults];
  v16 = String._bridgeToObjectiveC()();
  v17 = [v15 objectForKey:v16];

  if (v17)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
  }

  v35 = v32;
  v36 = v33;
  if (!*(&v33 + 1))
  {
    sub_1000068B0(&v35, &qword_10015C8D0, &unk_100116750);
    (*(v12 + 56))(v10, 1, 1, v11);
    goto LABEL_8;
  }

  v18 = swift_dynamicCast();
  (*(v12 + 56))(v10, v18 ^ 1u, 1, v11);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
LABEL_8:
    sub_1000068B0(v10, &qword_10015D2E8, &unk_100113BE0);
    v32 = xmmword_100113A90;
    *&v33 = 0;
    *(&v33 + 1) = _swiftEmptyArrayStorage;
    v34 = 1;
    _ConditionalContent<>.init(storage:)();
    goto LABEL_9;
  }

  (*(v12 + 32))(v14, v10, v11);
  static Date.FormatStyle.DateStyle.abbreviated.getter();
  static Date.FormatStyle.TimeStyle.shortened.getter();
  v19 = Date.formatted(date:time:)();
  v21 = v20;
  (*(v30 + 8))(v4, v31);
  (*(v28 + 8))(v7, v29);
  *&v35 = v19;
  *(&v35 + 1) = v21;
  sub_10002EAE0();
  *&v32 = Text.init<A>(_:)();
  *(&v32 + 1) = v22;
  *&v33 = v23 & 1;
  *(&v33 + 1) = v24;
  v34 = 0;
  _ConditionalContent<>.init(storage:)();
  (*(v12 + 8))(v14, v11);
LABEL_9:
  result = *&v35;
  v26 = v36;
  v27 = v37;
  *a1 = v35;
  *(a1 + 16) = v26;
  *(a1 + 32) = v27;
  return result;
}

uint64_t sub_10007655C@<X0>(char *a2@<X8>)
{
  v42 = a2;
  v41 = sub_10004DED0(&qword_10015D060, &qword_1001137F8);
  v45 = *(v41 - 8);
  v2 = __chkstk_darwin(v41);
  v47 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v40 = &v35 - v5;
  v6 = __chkstk_darwin(v4);
  v46 = &v35 - v7;
  v8 = __chkstk_darwin(v6);
  v39 = &v35 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v35 - v11;
  __chkstk_darwin(v10);
  v14 = &v35 - v13;
  v43 = sub_10004DED0(&qword_10015D2D8, &qword_100113BC8);
  v38 = *(v43 - 8);
  v15 = v38;
  v16 = __chkstk_darwin(v43);
  v44 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v35 - v18;
  sub_10004DED0(&qword_10015B6F0, &qword_100113BD0);
  sub_100040F70();
  v37 = v19;
  LabeledContent<>.init(content:label:)();
  AppStorage.projectedValue.getter();
  v36 = v14;
  Toggle.init(isOn:label:)();
  AppStorage.projectedValue.getter();
  v35 = v12;
  Toggle.init(isOn:label:)();
  AppStorage.projectedValue.getter();
  v20 = v39;
  Toggle.init(isOn:label:)();
  v21 = *(v15 + 16);
  v22 = v44;
  v21(v44, v19, v43);
  v23 = v46;
  v24 = *(v45 + 16);
  v25 = v41;
  v24(v46, v14, v41);
  v26 = v40;
  v24(v40, v12, v25);
  v24(v47, v20, v25);
  v27 = v42;
  v28 = v22;
  v29 = v43;
  v21(v42, v28, v43);
  v30 = sub_10004DED0(&qword_10015D2E0, &qword_100113BD8);
  v24(&v27[v30[12]], v23, v25);
  v24(&v27[v30[16]], v26, v25);
  v31 = v47;
  v24(&v27[v30[20]], v47, v25);
  v32 = *(v45 + 8);
  v32(v20, v25);
  v32(v35, v25);
  v32(v36, v25);
  v33 = *(v38 + 8);
  v33(v37, v29);
  v32(v31, v25);
  v32(v26, v25);
  v32(v46, v25);
  return (v33)(v44, v29);
}

double sub_100076A90@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Date.FormatStyle.TimeStyle();
  v30 = *(v2 - 8);
  v31 = v2;
  __chkstk_darwin(v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date.FormatStyle.DateStyle();
  v28 = *(v5 - 8);
  v29 = v5;
  __chkstk_darwin(v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10004DED0(&qword_10015D2E8, &unk_100113BE0);
  __chkstk_darwin(v8 - 8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() standardUserDefaults];
  v16 = String._bridgeToObjectiveC()();
  v17 = [v15 objectForKey:v16];

  if (v17)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
  }

  v35 = v32;
  v36 = v33;
  if (!*(&v33 + 1))
  {
    sub_1000068B0(&v35, &qword_10015C8D0, &unk_100116750);
    (*(v12 + 56))(v10, 1, 1, v11);
    goto LABEL_8;
  }

  v18 = swift_dynamicCast();
  (*(v12 + 56))(v10, v18 ^ 1u, 1, v11);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
LABEL_8:
    sub_1000068B0(v10, &qword_10015D2E8, &unk_100113BE0);
    v32 = xmmword_100113A90;
    *&v33 = 0;
    *(&v33 + 1) = _swiftEmptyArrayStorage;
    v34 = 1;
    _ConditionalContent<>.init(storage:)();
    goto LABEL_9;
  }

  (*(v12 + 32))(v14, v10, v11);
  static Date.FormatStyle.DateStyle.abbreviated.getter();
  static Date.FormatStyle.TimeStyle.shortened.getter();
  v19 = Date.formatted(date:time:)();
  v21 = v20;
  (*(v30 + 8))(v4, v31);
  (*(v28 + 8))(v7, v29);
  *&v35 = v19;
  *(&v35 + 1) = v21;
  sub_10002EAE0();
  *&v32 = Text.init<A>(_:)();
  *(&v32 + 1) = v22;
  *&v33 = v23 & 1;
  *(&v33 + 1) = v24;
  v34 = 0;
  _ConditionalContent<>.init(storage:)();
  (*(v12 + 8))(v14, v11);
LABEL_9:
  result = *&v35;
  v26 = v36;
  v27 = v37;
  *a1 = v35;
  *(a1 + 16) = v26;
  *(a1 + 32) = v27;
  return result;
}

void sub_100076F14(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000016;
  *(a1 + 8) = 0x8000000100122710;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
}

double sub_100076F44@<D0>(uint64_t a1@<X8>)
{
  result = 1.81653197e223;
  *a1 = xmmword_100113AB0;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  return result;
}

void sub_100076FD8(uint64_t a1@<X8>)
{
  *a1 = 0xD00000000000001ALL;
  *(a1 + 8) = 0x80000001001226F0;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
}

id sub_10007706C()
{
  result = [objc_opt_self() sharedConnection];
  if (!result)
  {
    goto LABEL_15;
  }

  v2 = result;
  [result unregisterObserver:v0];

  v3 = OBJC_IVAR____TtC11SettingsApp27SettingsApplicationDelegate_observationTokens;
  swift_beginAccess();
  v4 = *&v0[v3];
  if (v4 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_11:
    *&v0[v3] = _swiftEmptyArrayStorage;

    v11.receiver = v0;
    v11.super_class = type metadata accessor for SettingsApplicationDelegate(0);
    return objc_msgSendSuper2(&v11, "dealloc");
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_4:
  result = objc_opt_self();
  if (v5 >= 1)
  {
    v6 = result;
    v10 = v3;

    v7 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v8 = *(v4 + 8 * v7 + 32);
        swift_unknownObjectRetain();
      }

      ++v7;
      v9 = [v6 defaultCenter];
      [v9 removeObserver:v8];
      swift_unknownObjectRelease();
    }

    while (v5 != v7);

    v3 = v10;
    goto LABEL_11;
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

void sub_1000772C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MobileGestalt_get_current_device();
  if (v3)
  {
    v4 = v3;
    cellularDataCapability = MobileGestalt_get_cellularDataCapability();

    v6 = [objc_opt_self() sharedApplication];
    sub_10004DED0(&qword_10015D3B8, &unk_1001186B0);
    if (cellularDataCapability)
    {
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_100113C10;
      if (qword_10015A9C0 != -1)
      {
        swift_once();
      }

      v8 = qword_100169508;
      *(v7 + 32) = qword_100169508;
      v9 = qword_10015A9C8;
      v10 = v8;
      if (v9 != -1)
      {
        swift_once();
      }

      v11 = qword_100169510;
      *(v7 + 40) = qword_100169510;
      v12 = qword_10015A9D0;
      v13 = v11;
      if (v12 != -1)
      {
        swift_once();
      }

      v14 = qword_100169518;
      *(v7 + 48) = qword_100169518;
      v15 = (v7 + 56);
    }

    else
    {
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_100113C00;
      if (qword_10015A9C0 != -1)
      {
        swift_once();
      }

      v17 = qword_100169508;
      *(v16 + 32) = qword_100169508;
      v18 = qword_10015A9C8;
      v19 = v17;
      if (v18 != -1)
      {
        swift_once();
      }

      v14 = qword_100169510;
      *(v16 + 40) = qword_100169510;
      v15 = (v16 + 48);
    }

    v20 = qword_10015A9D8;
    v21 = v14;
    if (v20 != -1)
    {
      swift_once();
    }

    v22 = qword_100169520;
    *v15 = qword_100169520;
    sub_100077A3C();
    v23 = v22;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v6 setShortcutItems:isa];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000775C4(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t))
{
  if (a4)
  {
    v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v8 = 0;
  }

  v9 = a3;
  v10 = a1;
  a5(v8);
}

void sub_100077664(uint64_t a1)
{
  v3 = [objc_opt_self() defaultCenter];
  v4 = String._bridgeToObjectiveC()();
  if (a1)
  {
    v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  isa = v5.super.isa;
  [v3 postNotificationName:v4 object:v1 userInfo:?];
}

void sub_100077744(uint64_t a1)
{
  v3 = [objc_opt_self() defaultCenter];
  v4 = String._bridgeToObjectiveC()();
  if (a1)
  {
    v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  isa = v5.super.isa;
  [v3 postNotificationName:v4 object:v1 userInfo:?];
}

void sub_100077824(uint64_t a1)
{
  v3 = [objc_opt_self() defaultCenter];
  v4 = String._bridgeToObjectiveC()();
  if (a1)
  {
    v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  isa = v5.super.isa;
  [v3 postNotificationName:v4 object:v1 userInfo:?];
}

void sub_100077904(uint64_t a1)
{
  v3 = [objc_opt_self() defaultCenter];
  v4 = String._bridgeToObjectiveC()();
  if (a1)
  {
    v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  isa = v5.super.isa;
  [v3 postNotificationName:v4 object:v1 userInfo:?];
}

unint64_t sub_1000779E4()
{
  result = qword_10015D3B0;
  if (!qword_10015D3B0)
  {
    type metadata accessor for LaunchOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015D3B0);
  }

  return result;
}

unint64_t sub_100077A3C()
{
  result = qword_10015D3C0;
  if (!qword_10015D3C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10015D3C0);
  }

  return result;
}

void *sub_100077A90(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_10004573C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v2 + OBJC_IVAR____TtC11SettingsApp24SettingsAppSceneDelegate__shortcutItemForInitialLaunch);
  v4 = v3;
  return v3;
}

id sub_100077B10@<X0>(uint64_t *a1@<X0>, void *a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10004573C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v4 + OBJC_IVAR____TtC11SettingsApp24SettingsAppSceneDelegate__shortcutItemForInitialLaunch);
  *a3 = v5;

  return v5;
}

uint64_t sub_100077D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100077DCC, v6, v5);
}

uint64_t sub_100077DCC()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];

  v0[7] = _Block_copy(v2);
  v5 = v4;
  v6 = v3;
  v7 = v1;
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_100077EB0;
  v9 = v0[3];

  return sub_100078A2C(v9);
}

uint64_t sub_100077EB0(char a1)
{
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v9 = *v1;

  v3[2](v3, a1 & 1);
  _Block_release(v3);
  v7 = *(v9 + 8);

  return v7();
}

id sub_100078030()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SettingsAppSceneDelegate(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000780FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC11SettingsApp24SettingsAppSceneDelegate__shortcutItemForInitialLaunch);
  *(v1 + OBJC_IVAR____TtC11SettingsApp24SettingsAppSceneDelegate__shortcutItemForInitialLaunch) = v2;
  v4 = v2;
}

uint64_t sub_10007813C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000A924;

  return sub_100077D30(v2, v3, v5, v4);
}

uint64_t sub_1000781FC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_10000ACE4;

  return v6();
}

uint64_t sub_1000782E4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000ACE4;

  return sub_1000781FC(v2, v3, v4);
}

uint64_t sub_1000783A4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_10000A924;

  return v7();
}

uint64_t sub_10007848C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000784CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000ACE4;

  return sub_1000783A4(a1, v4, v5, v6);
}

uint64_t sub_100078598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_10006B97C(a3, v23 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100078854(v11);
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

    sub_100078854(a3);

    return v21;
  }

LABEL_8:
  sub_100078854(a3);
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

uint64_t sub_100078854(uint64_t a1)
{
  v2 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000788BC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000ACE4;

  return sub_100015138(a1, v4);
}

uint64_t sub_100078974(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000A924;

  return sub_100015138(a1, v4);
}

uint64_t sub_100078A2C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  type metadata accessor for MainActor();
  v2[5] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100078AC4, v4, v3);
}

uint64_t sub_100078AC4()
{
  v1 = v0[3];

  v2 = [v1 type];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v14._countAndFlagsBits = v3;
  v14._object = v5;
  v6 = sub_10004DE84(v14);
  v7 = v6;
  if (v6 != 4)
  {
    v8 = v6;
    v9 = *(v0[4] + OBJC_IVAR____TtC11SettingsApp24SettingsAppSceneDelegate__selectedQuickActionSubject);
    v10 = qword_10015AB30;

    if (v10 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    sub_100020FC4(v9, v0[2]);

    *(v0 + 16) = v8;
    PassthroughSubject.send(_:)();
  }

  v11 = v0[1];

  return v11(v7 != 4);
}

uint64_t sub_100078C78@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SettingsSearchZeroKeywordListRecentItem(0);
  v47 = *(v3 - 8);
  __chkstk_darwin(v3);
  v48 = v4;
  v49 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LayoutDirection();
  v44 = *(v5 - 8);
  v45 = v5;
  __chkstk_darwin(v5);
  v43 = (&v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v9 = (&v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = type metadata accessor for LocalizedStringResource();
  v10 = *(v42 - 8);
  v11 = __chkstk_darwin(v42);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v39 - v14;
  v16 = type metadata accessor for SettingsEventImage();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = (&v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = v3;
  v50 = v1;
  SettingsNavigationEventRecord.icon.getter();
  v20 = (*(v17 + 88))(v19, v16);
  if (v20 == enum case for SettingsEventImage.graphicIcon(_:))
  {
    (*(v17 + 96))(v19, v16);
    v21 = *v19;
    v40 = v19[1];
    v41 = v21;
    v22 = 2;
  }

  else if (v20 == enum case for SettingsEventImage.applicationIcon(_:))
  {
    (*(v17 + 96))(v19, v16);
    v23 = *v19;
    v40 = v19[1];
    v41 = v23;
    v22 = 1;
  }

  else
  {
    (*(v17 + 8))(v19, v16);
    v40 = 0;
    v41 = 0;
    v22 = 3;
  }

  v24 = v50;
  SettingsNavigationEventRecord.title.getter();
  sub_1000C3538(v9);
  LocalizedStringResource.locale.setter();
  v25 = v42;
  (*(v10 + 16))(v13, v15, v42);
  v26 = String.init(localized:)();
  v28 = v27;
  (*(v10 + 8))(v15, v25);
  v29 = v43;
  sub_1000C3760(v43);
  v30 = SettingsNavigationEventRecord.resolveLocalizedPathComponents(layoutDirection:)();
  v32 = v31;
  (*(v44 + 8))(v29, v45);
  v33 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v33 = v30 & 0xFFFFFFFFFFFFLL;
  }

  if (!v33)
  {

    v30 = 0;
    v32 = 0;
  }

  v34 = v49;
  sub_100079334(v24, v49);
  v35 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v36 = swift_allocObject();
  result = sub_100079398(v34, v36 + v35);
  v38 = v40;
  *a1 = v41;
  *(a1 + 8) = v38;
  *(a1 + 16) = v22;
  *(a1 + 24) = v26;
  *(a1 + 32) = v28;
  *(a1 + 40) = v30;
  *(a1 + 48) = v32;
  *(a1 + 56) = sub_1000793FC;
  *(a1 + 64) = v36;
  return result;
}

uint64_t sub_100079124(uint64_t *a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 8);

  if ((v10 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
  }

  type metadata accessor for SettingsSearchZeroKeywordListRecentItem(0);
  SettingsNavigationEventRecord.navigationLink.getter();
  sub_10005294C(v5);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100079334(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsSearchZeroKeywordListRecentItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100079398(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsSearchZeroKeywordListRecentItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000793FC()
{
  v1 = *(type metadata accessor for SettingsSearchZeroKeywordListRecentItem(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_100079124(v2);
}

unint64_t sub_10007945C()
{
  result = qword_10015D5B8;
  if (!qword_10015D5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015D5B8);
  }

  return result;
}

id sub_1000794B0()
{
  v0 = sub_10004DED0(&qword_10015E910, &unk_10010FC70);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v1);
  v59 = &v51 - v5;
  v6 = __chkstk_darwin(v4);
  v68 = &v51 - v7;
  __chkstk_darwin(v6);
  v67 = &v51 - v8;
  v9 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v63 = *(v9 - 8);
  v64 = v9;
  __chkstk_darwin(v9);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v66 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for LocalizedStringResource();
  v16 = __chkstk_darwin(v15 - 8);
  v54 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v58 = &v51 - v19;
  v20 = __chkstk_darwin(v18);
  v60 = &v51 - v21;
  __chkstk_darwin(v20);
  v22 = type metadata accessor for SettingsEventImage();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v53 = (&v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = __chkstk_darwin(v24);
  v56 = (&v51 - v27);
  v28 = __chkstk_darwin(v26);
  v30 = (&v51 - v29);
  __chkstk_darwin(v28);
  v32 = (&v51 - v31);
  sub_10004DED0(&qword_10015D5C8, &unk_100116AA0);
  v33 = *(type metadata accessor for SettingsNavigationEventRecord() - 8);
  v34 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v57 = *(v33 + 72);
  v35 = v34;
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_1001103F0;
  *v32 = 0xD00000000000001CLL;
  v32[1] = 0x8000000100120130;
  v36 = *(v23 + 104);
  v71 = enum case for SettingsEventImage.graphicIcon(_:);
  v72 = v22;
  v61 = v23 + 104;
  v36(v32);
  v37 = v36;
  result = MobileGestalt_get_current_device();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v39 = result;
  v70 = v37;
  v52 = v3;
  MobileGestalt_get_deviceSupportsClosedLoopHaptics();

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v40 = *(v63 + 104);
  v55 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v69 = v40;
  (v40)(v11);
  v41 = v67;
  v42 = v68;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  URL.init(string:)();
  v43 = type metadata accessor for URL();
  v44 = *(v43 - 8);
  v67 = *(v44 + 48);
  v68 = v43;
  v66 = (v44 + 48);
  result = (v67)(v41, 1);
  if (result == 1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v65 = v62 + v35;
  SettingsNavigationEventRecord.init(icon:title:navigationPathComponents:navigationLink:associatedApplicationBundleIdentifier:)();
  *v30 = 0xD000000000000024;
  v30[1] = 0x8000000100120150;
  v70(v30, v71, v72);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v45 = v64;
  v46 = v55;
  v63 += 104;
  v69(v11, v55, v64);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  URL.init(string:)();
  result = (v67)(v42, 1, v68);
  if (result == 1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  SettingsNavigationEventRecord.init(icon:title:navigationPathComponents:navigationLink:associatedApplicationBundleIdentifier:)();
  v47 = v56;
  *v56 = 0xD00000000000001CLL;
  v47[1] = 0x8000000100120110;
  v70(v47, v71, v72);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v69(v11, v46, v45);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v48 = v59;
  URL.init(string:)();
  result = (v67)(v48, 1, v68);
  if (result == 1)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  SettingsNavigationEventRecord.init(icon:title:navigationPathComponents:navigationLink:associatedApplicationBundleIdentifier:)();
  v49 = v53;
  *v53 = 0xD000000000000022;
  v49[1] = 0x80000001001200E0;
  v70(v49, v71, v72);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v69(v11, v46, v45);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v50 = v52;
  URL.init(string:)();
  result = (v67)(v50, 1, v68);
  if (result != 1)
  {
    result = SettingsNavigationEventRecord.init(icon:title:navigationPathComponents:navigationLink:associatedApplicationBundleIdentifier:)();
    off_10015D5C0 = v62;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_100079E74()
{
  v0 = *(SettingsZeroKeywordNavigationItemsProvider.suggestions.getter() + 16);

  if (v0 != 4)
  {
    result = SettingsZeroKeywordNavigationItemsProvider.suggestions.getter();
    v8 = result;
    v2 = *(result + 16);
    if (qword_10015AA20 == -1)
    {
      if (v2 <= 4)
      {
        goto LABEL_7;
      }
    }

    else
    {
      result = swift_once();
      if (v2 <= 4)
      {
LABEL_7:
        v3 = 4 - v2;
        v4 = off_10015D5C0;
        if (*(off_10015D5C0 + 2) >= v3)
        {
          v5 = *(type metadata accessor for SettingsNavigationEventRecord() - 8);
          v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);

          sub_1000C4690(v7, v4 + v6, 0, (2 * v3) | 1);
          return v8;
        }

        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  return SettingsZeroKeywordNavigationItemsProvider.suggestions.getter();
}

__n128 sub_100079FA4(uint64_t a1, uint64_t a2)
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

uint64_t sub_100079FC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_10007A010(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_10007A08C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = sub_10004DED0(&qword_10015D658, &qword_100113FA8);
  sub_10007A0FC(a1, a2 + *(v4 + 44));
  result = sub_10004DED0(&qword_10015D5D8, &qword_100113F40);
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_10007A0FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10004DED0(&qword_10015D660, &qword_100113FB0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v26[-v8];
  v11 = *a1;
  v28 = *(a1 + 8);
  v10 = v28;
  v12 = *(a1 + 16);
  v27 = v12;
  v13 = static Edge.Set.all.getter();
  LOBYTE(v37[0]) = 0;
  sub_100039F14(v11, v10, v12);
  *v9 = static HorizontalAlignment.leading.getter();
  *(v9 + 1) = 0;
  v9[16] = 0;
  sub_10004DED0(&qword_10015D668, &qword_100113FB8);
  v31 = a1;
  sub_10004DED0(&qword_10015D670, &qword_100113FC0);
  sub_1000525A0(&qword_10015D678, &qword_10015D670, &qword_100113FC0, &protocol conformance descriptor for TupleView<A>);
  LabelGroup.init(content:)();
  v14 = v7;
  sub_100059CA0(v9, v7, &qword_10015D660, &qword_100113FB0);
  v15 = v28;
  *&v32 = v11;
  *(&v32 + 1) = v28;
  LOBYTE(v7) = v27;
  LOBYTE(v33) = v27;
  BYTE8(v33) = v13;
  __asm { FMOV            V0.2D, #16.0 }

  v30 = _Q0;
  v29 = xmmword_100113E20;
  v34 = _Q0;
  v35 = xmmword_100113E20;
  v36 = 0;
  *(a2 + 64) = 0;
  v21 = v35;
  *(a2 + 32) = v34;
  *(a2 + 48) = v21;
  v22 = v33;
  *a2 = v32;
  *(a2 + 16) = v22;
  v23 = sub_10004DED0(&qword_10015D680, &qword_100113FC8);
  sub_100059CA0(v14, a2 + *(v23 + 48), &qword_10015D660, &qword_100113FB0);
  v24 = a2 + *(v23 + 64);
  *v24 = 0;
  *(v24 + 8) = 1;
  *(v24 + 16) = 0xBFF0000000000000;
  sub_100059CA0(&v32, v37, &qword_10015D688, &unk_100113FD0);
  sub_1000068B0(v9, &qword_10015D660, &qword_100113FB0);
  sub_1000068B0(v14, &qword_10015D660, &qword_100113FB0);
  v37[0] = v11;
  v37[1] = v15;
  v38 = v7;
  v39 = v13;
  v40 = v30;
  v41 = v29;
  v42 = 0;
  return sub_1000068B0(v37, &qword_10015D688, &unk_100113FD0);
}

uint64_t sub_10007A3DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10002EAE0();

  v4 = Text.init<A>(_:)();
  v6 = v5;
  v8 = v7;
  static Font.body.getter();
  v9 = Text.font(_:)();
  v11 = v10;
  v30 = v12;
  v31 = v13;

  sub_100009680(v4, v6, v8 & 1);

  v14 = a1[6];
  if (!v14)
  {
    goto LABEL_6;
  }

  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = a1[5] & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {

    v16 = Text.init<A>(_:)();
    v18 = v17;
    v20 = v19;
    static Font.footnote.getter();
    v21 = Text.font(_:)();
    v23 = v22;
    v29 = v24;
    v26 = v25;

    sub_100009680(v16, v18, v20 & 1);

    v27 = v29 & 1;
  }

  else
  {
LABEL_6:
    v21 = 0;
    v23 = 0;
    v27 = 0;
    v26 = 0;
  }

  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v30 & 1;
  *(a2 + 24) = v31;
  *(a2 + 32) = v21;
  *(a2 + 40) = v23;
  *(a2 + 48) = v27;
  *(a2 + 56) = v26;
  sub_100009670(v9, v11, v30 & 1);

  sub_10007AAFC(v21, v23, v27, v26);
  sub_10007AB40(v21, v23, v27, v26);
  sub_100009680(v9, v11, v30 & 1);
}

uint64_t sub_10007A5E4()
{
  v1 = sub_10004DED0(&qword_10015D5D0, &qword_100113F38);
  __chkstk_darwin(v1);
  v3 = &v13[-v2];
  v4 = *(v0 + 48);
  v16[2] = *(v0 + 32);
  v16[3] = v4;
  v17 = *(v0 + 64);
  v5 = *(v0 + 16);
  v16[0] = *v0;
  v16[1] = v5;
  v6 = swift_allocObject();
  v7 = *(v0 + 48);
  *(v6 + 48) = *(v0 + 32);
  *(v6 + 64) = v7;
  *(v6 + 80) = *(v0 + 64);
  v8 = *(v0 + 16);
  *(v6 + 16) = *v0;
  *(v6 + 32) = v8;
  v14 = v16;
  sub_10007A7E8(v16, v15);
  sub_10004DED0(&qword_10015D5D8, &qword_100113F40);
  sub_10007A820();
  Button.init(action:label:)();
  v9 = &v3[*(sub_10004DED0(&qword_10015D608, &qword_100113F58) + 36)];
  v9[32] = 0;
  *v9 = 0u;
  *(v9 + 1) = 0u;
  KeyPath = swift_getKeyPath();
  v11 = &v3[*(v1 + 36)];
  *v11 = KeyPath;
  *(v11 + 1) = 0;
  v11[16] = 0;
  sub_10007A904();
  sub_10007AAA0();
  View.buttonStyle<A>(_:)();
  return sub_1000068B0(v3, &qword_10015D5D0, &qword_100113F38);
}

unint64_t sub_10007A820()
{
  result = qword_10015D5E0;
  if (!qword_10015D5E0)
  {
    sub_100052374(&qword_10015D5D8, &qword_100113F40);
    sub_1000525A0(&qword_10015D5E8, &qword_10015D5F0, &qword_100113F48, &protocol conformance descriptor for HStack<A>);
    sub_1000525A0(&qword_10015D5F8, &qword_10015D600, &qword_100113F50, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015D5E0);
  }

  return result;
}

unint64_t sub_10007A904()
{
  result = qword_10015D610;
  if (!qword_10015D610)
  {
    sub_100052374(&qword_10015D5D0, &qword_100113F38);
    sub_10007A9BC();
    sub_1000525A0(&qword_10015D640, &qword_10015D648, &qword_100113FA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015D610);
  }

  return result;
}

unint64_t sub_10007A9BC()
{
  result = qword_10015D618;
  if (!qword_10015D618)
  {
    sub_100052374(&qword_10015D608, &qword_100113F58);
    sub_1000525A0(&qword_10015D620, &qword_10015D628, &qword_100113F90, &protocol conformance descriptor for Button<A>);
    sub_1000525A0(&qword_10015D630, &qword_10015D638, &qword_100113F98, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015D618);
  }

  return result;
}

unint64_t sub_10007AAA0()
{
  result = qword_10015D650;
  if (!qword_10015D650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015D650);
  }

  return result;
}

uint64_t sub_10007AAFC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100009670(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10007AB40(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100009680(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10007ABB0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ButtonStyleConfiguration.Label();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  ButtonStyleConfiguration.label.getter();
  v6 = 0;
  if (ButtonStyleConfiguration.isPressed.getter())
  {
    v7 = [objc_opt_self() tableCellDefaultSelectionTintColor];
    v6 = Color.init(uiColor:)();
  }

  v8 = static Alignment.center.getter();
  v10 = v9;
  (*(v3 + 32))(a1, v5, v2);
  result = sub_10004DED0(&qword_10015D690, &qword_100114040);
  v12 = (a1 + *(result + 36));
  *v12 = v6;
  v12[1] = v8;
  v12[2] = v10;
  return result;
}

unint64_t sub_10007ACF0()
{
  result = qword_10015D698;
  if (!qword_10015D698)
  {
    sub_100052374(&qword_10015D690, &qword_100114040);
    sub_10007AD7C();
    sub_10007ADD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015D698);
  }

  return result;
}

unint64_t sub_10007AD7C()
{
  result = qword_10015D6A0;
  if (!qword_10015D6A0)
  {
    type metadata accessor for ButtonStyleConfiguration.Label();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015D6A0);
  }

  return result;
}

unint64_t sub_10007ADD4()
{
  result = qword_10015D6A8;
  if (!qword_10015D6A8)
  {
    sub_100052374(&qword_10015D6B0, &qword_100114048);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015D6A8);
  }

  return result;
}

__n128 sub_10007AE38(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_10007AE4C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10007AE94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_10007AEF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, char *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v50 = a4;
  v48 = a3;
  v47 = a2;
  v58 = a1;
  v64 = a6;
  v61 = type metadata accessor for ScrollViewProxy();
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v56 = v7;
  v57 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PPTTestCase.Name();
  v62 = *(v8 - 8);
  v63 = v8;
  __chkstk_darwin(v8);
  v60 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for SidebarListStyle();
  v55 = *(v54 - 8);
  __chkstk_darwin(v54);
  v51 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for ScrollDismissesKeyboardMode();
  v46 = *(v49 - 8);
  __chkstk_darwin(v49);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10004DED0(&qword_10015D6B8, &qword_100114190);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v44 - v15;
  v17 = sub_10004DED0(&qword_10015D6C0, &qword_100114198);
  __chkstk_darwin(v17);
  v19 = &v44 - v18;
  v44 = sub_10004DED0(&qword_10015D6C8, &qword_1001141A0);
  v45 = *(v44 - 8);
  __chkstk_darwin(v44);
  v21 = &v44 - v20;
  v65 = sub_10004DED0(&qword_10015D6D0, &qword_1001141A8);
  __chkstk_darwin(v65);
  v23 = &v44 - v22;
  v53 = sub_10004DED0(&qword_10015D6D8, &qword_1001141B0);
  v52 = *(v53 - 8);
  __chkstk_darwin(v53);
  v25 = &v44 - v24;
  v66 = v47;
  v67 = v48 & 1;
  v68 = v50;
  v69 = a5 & 1;
  sub_10004DED0(&qword_10015D6E0, &qword_1001141B8);
  sub_10007C810();
  List<>.init(content:)();
  sub_1000525A0(&qword_10015D700, &qword_10015D6B8, &qword_100114190, &protocol conformance descriptor for List<A, B>);
  sub_10007AAA0();
  View.buttonStyle<A>(_:)();
  (*(v14 + 8))(v16, v13);
  v26 = &v19[*(v17 + 36)];
  *v26 = sub_10005A7CC;
  v26[1] = 0;
  static ScrollDismissesKeyboardMode.immediately.getter();
  v27 = sub_10007C918();
  View.scrollDismissesKeyboard(_:)();
  (*(v46 + 8))(v12, v49);
  sub_1000068B0(v19, &qword_10015D6C0, &qword_100114198);
  v70 = v17;
  v71 = v27;
  swift_getOpaqueTypeConformance2();
  v28 = v44;
  View.accessibilityIdentifier(_:)();
  (*(v45 + 8))(v21, v28);
  v29 = v51;
  SidebarListStyle.init()();
  v30 = sub_10007CA28();
  v50 = v25;
  v31 = v54;
  View.listStyle<A>(_:)();
  (*(v55 + 8))(v29, v31);
  sub_1000068B0(v23, &qword_10015D6D0, &qword_1001141A8);
  if (qword_10015AB78 != -1)
  {
    swift_once();
  }

  v32 = v63;
  v33 = sub_10000659C(v63, qword_100169838);
  v34 = v62;
  v35 = v60;
  (*(v62 + 16))(v60, v33, v32);
  v36 = v59;
  v37 = v57;
  v38 = v61;
  (*(v59 + 16))(v57, v58, v61);
  v39 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v40 = swift_allocObject();
  (*(v36 + 32))(v40 + v39, v37, v38);
  v70 = v65;
  v71 = v31;
  v72 = v30;
  v73 = &protocol witness table for SidebarListStyle;
  swift_getOpaqueTypeConformance2();
  v41 = v53;
  v42 = v50;
  View.onTest(_:handler:)();

  (*(v34 + 8))(v35, v32);
  return (*(v52 + 8))(v42, v41);
}

uint64_t sub_10007B77C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  v12 = a1;
  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v9 + 8))(v11, v8);
    v12 = v25;
  }

  swift_getKeyPath();
  v25 = v12;
  sub_10007CC70(&qword_10015AFA0, type metadata accessor for SettingsOmniSearchViewModel, &unk_1001185A0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v14 = *(v12 + 40);
  v15 = *(v12 + 48);

  v24[0] = v14;
  v24[1] = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2 & 1;
  *(v16 + 32) = a3;
  *(v16 + 40) = a4 & 1;

  v17 = sub_10004DED0(&qword_10015D720, &qword_1001141F8);
  v18 = sub_10004DED0(&qword_10015D6F8, &qword_1001141C0);
  v19 = sub_1000525A0(&qword_10015D728, &qword_10015D720, &qword_1001141F8, &unk_100118F38);
  v20 = sub_10007C894();
  v21 = sub_10007CC70(&qword_10015D730, &type metadata accessor for SettingsSearchResultItem, &protocol conformance descriptor for SettingsSearchResultItem);
  return ForEach<>.init(_:content:)(v24, sub_10007CC50, v16, v17, &type metadata for String, v18, v19, v20, v21);
}

void sub_10007BA9C(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t *a6@<X8>)
{
  v48 = a5;
  v49 = a2;
  v50 = a4;
  v46 = a3;
  v47 = type metadata accessor for SettingsSearchResultItem();
  v8 = *(v47 - 8);
  __chkstk_darwin(v47);
  v44 = v9;
  v45 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SettingsSearchItemIcon.IconType();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SettingsSearchItemIcon();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  SettingsSearchResultItem.icon.getter();
  SettingsSearchItemIcon.iconType.getter();
  v18 = (*(v11 + 88))(v13, v10);
  if (v18 == enum case for SettingsSearchItemIcon.IconType.utTypeIdentifier(_:))
  {
    v19 = 2;
  }

  else
  {
    if (v18 != enum case for SettingsSearchItemIcon.IconType.bundleIdentifier(_:))
    {
      (*(v15 + 8))(v17, v14);
      (*(v11 + 8))(v13, v10);
      v35 = 0;
      v36 = 0;
      v34 = 0;
      v33 = 0;
      v24 = 0;
      v32 = 0;
      v37 = 0;
      v30 = 0;
      v38 = 0;
      goto LABEL_7;
    }

    v19 = 1;
  }

  v43 = v19;
  v20 = SettingsSearchItemIcon.iconIdentifier.getter();
  v41 = v21;
  v42 = v20;
  (*(v15 + 8))(v17, v14);
  v22 = SettingsSearchResultItem.localizedTitle.getter();
  v39 = v23;
  v40 = v22;
  v24 = SettingsSearchResultItem.localizedSubtitle.getter();
  v26 = v25;
  v27 = v45;
  v28 = v47;
  (*(v8 + 16))(v45, a1, v47);
  v29 = (*(v8 + 80) + 41) & ~*(v8 + 80);
  v30 = swift_allocObject();
  v31 = v50;
  *(v30 + 16) = v49;
  *(v30 + 24) = v46 & 1;
  *(v30 + 32) = v31;
  *(v30 + 40) = v48 & 1;
  (*(v8 + 32))(v30 + v29, v27, v28);

  v32 = v26;
  v33 = v39;
  v34 = v40;
  v36 = v41;
  v35 = v42;
  v37 = sub_10007CCB8;
  v38 = v43;
LABEL_7:
  *a6 = v35;
  a6[1] = v36;
  a6[2] = v38;
  a6[3] = v34;
  a6[4] = v33;
  a6[5] = v24;
  a6[6] = v32;
  a6[7] = v37;
  a6[8] = v30;
}

uint64_t sub_10007BE34(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for EnvironmentValues();
  v12 = *(v25 - 8);
  __chkstk_darwin(v25);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    v24 = v9;
    v16 = v12;
    v17 = a4;
    v18 = a5;
    v19 = v8;
    v20 = v15;
    os_log(_:dso:log:_:_:)();

    v8 = v19;
    a5 = v18;
    a4 = v17;
    v12 = v16;
    v9 = v24;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v12 + 8))(v14, v25);
  }

  sub_1000EED28(a5);

  if ((a4 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v21 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v12 + 8))(v14, v25);
  }

  SettingsSearchResultItem.url.getter();
  sub_10005294C(v11);

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_10007C108(uint64_t a1, uint64_t a2)
{
  v35 = a1;
  v36 = a2;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v2 - 8);
  v43 = v2;
  __chkstk_darwin(v2);
  v40 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for DispatchQoS();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v38 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for ScrollViewProxy();
  v5 = *(v33 - 8);
  __chkstk_darwin(v33);
  v34 = v6;
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PPTTestCase();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v45 = type metadata accessor for DispatchTime();
  v37 = *(v45 - 8);
  v11 = __chkstk_darwin(v45);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v44 = &v31 - v14;
  if (qword_10015AAD8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10000659C(v15, qword_100169700);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Running search scroll test", v18, 2u);
  }

  sub_100003CAC();
  v32 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v37 = *(v37 + 8);
  (v37)(v13, v45);
  v19 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v19, v35, v8);
  v20 = v33;
  (*(v5 + 16))(v7, v36, v33);
  v21 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v22 = (v10 + *(v5 + 80) + v21) & ~*(v5 + 80);
  v23 = swift_allocObject();
  (*(v9 + 32))(v23 + v21, v19, v8);
  (*(v5 + 32))(v23 + v22, v7, v20);
  aBlock[4] = sub_10007CB90;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000411C;
  aBlock[3] = &unk_10014F6C8;
  v24 = _Block_copy(aBlock);

  v25 = v38;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10007CC70(&unk_10015ED90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10004DED0(&qword_10015D718, &qword_1001141C8);
  sub_1000525A0(&qword_10015EDA0, &qword_10015D718, &qword_1001141C8, &protocol conformance descriptor for [A]);
  v26 = v40;
  v27 = v43;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v28 = v44;
  v29 = v32;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v24);

  (*(v42 + 8))(v26, v27);
  (*(v39 + 8))(v25, v41);
  return (v37)(v28, v45);
}

double sub_10007C73C@<D0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = v1[2];
  v6 = *(v1 + 24);
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = v4;
  *(v7 + 32) = v5;
  *(v7 + 40) = v6;
  *a1 = sub_10007C7D0;
  a1[1] = v7;

  return result;
}

unint64_t sub_10007C810()
{
  result = qword_10015D6E8;
  if (!qword_10015D6E8)
  {
    sub_100052374(&qword_10015D6E0, &qword_1001141B8);
    sub_10007C894();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015D6E8);
  }

  return result;
}

unint64_t sub_10007C894()
{
  result = qword_10015D6F0;
  if (!qword_10015D6F0)
  {
    sub_100052374(&qword_10015D6F8, &qword_1001141C0);
    sub_10007945C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015D6F0);
  }

  return result;
}

unint64_t sub_10007C918()
{
  result = qword_10015D708;
  if (!qword_10015D708)
  {
    sub_100052374(&qword_10015D6C0, &qword_100114198);
    sub_100052374(&qword_10015D6B8, &qword_100114190);
    sub_1000525A0(&qword_10015D700, &qword_10015D6B8, &qword_100114190, &protocol conformance descriptor for List<A, B>);
    sub_10007AAA0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015D708);
  }

  return result;
}

unint64_t sub_10007CA28()
{
  result = qword_10015D710;
  if (!qword_10015D710)
  {
    sub_100052374(&qword_10015D6D0, &qword_1001141A8);
    sub_100052374(&qword_10015D6C0, &qword_100114198);
    sub_10007C918();
    swift_getOpaqueTypeConformance2();
    sub_10007CC70(&qword_10015BB80, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015D710);
  }

  return result;
}

uint64_t sub_10007CB20(uint64_t a1)
{
  v3 = *(type metadata accessor for ScrollViewProxy() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10007C108(a1, v4);
}

uint64_t sub_10007CB90()
{
  type metadata accessor for PPTTestCase();
  type metadata accessor for ScrollViewProxy();
  return PPTTestCase.performScrollTest(_:)();
}

uint64_t sub_10007CC70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10007CCB8()
{
  v1 = *(type metadata accessor for SettingsSearchResultItem() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = v0 + ((*(v1 + 80) + 41) & ~*(v1 + 80));

  return sub_10007BE34(v2, v3, v4, v5, v6);
}

uint64_t sub_10007CD40()
{
  v1 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  __chkstk_darwin(v1 - 8);
  v3 = aBlock - v2;
  v4 = *(v0 + 112);
  v5 = String._bridgeToObjectiveC()();
  aBlock[4] = sub_10007D868;
  v13 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000411C;
  aBlock[3] = &unk_10014F740;
  v6 = _Block_copy(aBlock);

  v7 = [v4 beginBackgroundTaskWithName:v5 expirationHandler:v6];
  _Block_release(v6);

  *(v0 + 144) = v7;
  *(v0 + 152) = 0;
  static TaskPriority.high.getter();
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v3, 0, 1, v8);
  v9 = sub_10007D870();
  v10 = swift_allocObject();
  v10[2] = v0;
  v10[3] = v9;
  v10[4] = v0;
  swift_retain_n();
  sub_100094AF4(0, 0, v3, &unk_100114288, v10);
}

uint64_t sub_10007CF20(uint64_t a1)
{
  v2 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  type metadata accessor for MainActor();

  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = a1;
  sub_100094AF4(0, 0, v4, &unk_100114298, v7);
}

uint64_t sub_10007D044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_10007D0DC, v6, v5);
}

uint64_t sub_10007D0DC()
{
  v10 = v0;
  if (qword_10015AAB0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000659C(v1, qword_100169688);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 16);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100025CF0(*(v4 + 128), *(v4 + 136), &v9);
    _os_log_impl(&_mh_execute_header, v2, v3, "Expiring background task: %s", v5, 0xCu);
    sub_10000665C(v6);
  }

  v7 = *(v0 + 16);

  return _swift_task_switch(sub_10007D25C, v7, 0);
}

uint64_t sub_10007D25C()
{
  sub_10007D67C();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return _swift_task_switch(sub_10007D2C0, v1, v2);
}

uint64_t sub_10007D2C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10007D340()
{
  if (qword_10015AAB0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 24) = sub_10000659C(v1, qword_100169688);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Begin background indexing task", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_10007D494;

  return sub_10007DE9C();
}

uint64_t sub_10007D494()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_10007D5A4, v1, 0);
}

uint64_t sub_10007D5A4()
{
  sub_10007D67C();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "End background indexing task", v3, 2u);
  }

  v4 = *(v0 + 8);

  return v4();
}

void sub_10007D67C()
{
  if ((*(v0 + 152) & 1) == 0)
  {
    v1 = v0;
    v2 = *(v0 + 144);
    if (v2 != UIBackgroundTaskInvalid)
    {
      if (qword_10015AAB0 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_10000659C(v3, qword_100169688);

      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v8 = v7;
        *v6 = 136315138;
        *(v6 + 4) = sub_100025CF0(*(v1 + 128), *(v1 + 136), &v8);
        _os_log_impl(&_mh_execute_header, v4, v5, "Cleaning up background task: %s", v6, 0xCu);
        sub_10000665C(v7);
      }

      [*(v1 + 112) endBackgroundTask:v2];
      *(v1 + 144) = 0;
      *(v1 + 152) = 1;
    }
  }
}

uint64_t sub_10007D7FC()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

unint64_t sub_10007D870()
{
  result = qword_10015D830;
  if (!qword_10015D830)
  {
    type metadata accessor for BackgroundIndexingTaskManager();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015D830);
  }

  return result;
}

uint64_t sub_10007D8C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000A924;

  return sub_10007D320(a1, v4, v5, v6);
}

uint64_t sub_10007D978(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000ACE4;

  return sub_10007D044(a1, v4, v5, v6);
}

uint64_t sub_10007DA2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_100008294(0, &qword_10015D9D8, CSUserQuery_ptr);
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_10007DB10;

  return static CSUserQuery.settingsSearchResult(for:in:)(a1, a2, a3, &off_10014CFF0);
}

uint64_t sub_10007DB10()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10007DC44, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10007DC44()
{
  v15 = v0;
  if (qword_10015AAA8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000659C(v1, qword_100169670);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[3];
    v4 = v0[4];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_100025CF0(v5, v4, &v14);
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to retrive settings search result for %{public}s: %{public}@", v6, 0x16u);
    sub_1000068B0(v7, &unk_10015F9C0, &unk_100115230);

    sub_10000665C(v8);
  }

  else
  {
  }

  v10 = v0[2];
  v11 = type metadata accessor for SettingsSearchResultItem();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = v0[1];

  return v12();
}

uint64_t sub_10007DE9C()
{
  v1[2] = v0;
  v2 = type metadata accessor for OSSignpostID();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_10007DF68, 0, 0);
}

uint64_t sub_10007DF68()
{
  v1 = v0[2];
  if (*(v1 + 40))
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  *(v1 + 40) = 1;
  v0[7] = sub_10007F24C();
  v4 = (&async function pointer to dispatch thunk of SettingsSearchIndexer.indexContainsSearchableItems.getter + async function pointer to dispatch thunk of SettingsSearchIndexer.indexContainsSearchableItems.getter);
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_10007E080;

  return v4();
}

uint64_t sub_10007E080(char a1)
{
  *(*v1 + 128) = a1;

  return _swift_task_switch(sub_10007E1A0, 0, 0);
}

id sub_10007E1A0()
{
  v1 = objc_opt_self();
  *(v0 + 72) = v1;
  result = [v1 sharedInstance];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v3 = result;
  v4 = [result needsIndex];

  v5 = sub_100080DD8();
  if (!v5)
  {
    goto LABEL_16;
  }

  v7 = v5;
  v8 = v6;
  if (qword_10015AA28 != -1)
  {
    swift_once();
  }

  v9 = objc_opt_self();
  v10 = [v9 standardUserDefaults];
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 stringForKey:v11];

  if (v12)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = [v7 UUIDString];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  if (!v15)
  {

    goto LABEL_16;
  }

  if (v13 != v17 || v15 != v19)
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v20)
    {
      goto LABEL_14;
    }

LABEL_16:
    v26 = 1;
    goto LABEL_17;
  }

LABEL_14:
  v21 = [v9 standardUserDefaults];
  v22 = String._bridgeToObjectiveC()();
  v23 = [v21 integerForKey:v22];

  v24 = v8;
  v25 = [v24 integerValue];

  v26 = v23 != v25;
LABEL_17:
  if (qword_10015AAB0 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  *(v0 + 80) = sub_10000659C(v27, qword_100169688);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = *(v0 + 128);
    v31 = swift_slowAlloc();
    *v31 = 67240704;
    *(v31 + 4) = v30;
    *(v31 + 8) = 1026;
    *(v31 + 10) = v4;
    *(v31 + 14) = 1024;
    *(v31 + 16) = v26;
    _os_log_impl(&_mh_execute_header, v28, v29, "indexContainsSearchableItems: %{BOOL,public}d, needsIndexing: %{BOOL,public}d, appNeedsIndexing: %{BOOL}d.", v31, 0x14u);
  }

  v32 = *(v0 + 128);

  v33 = v4 | ~v32;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  v36 = os_log_type_enabled(v34, v35);
  if (v33)
  {
    if (v36)
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Performing Indexing.", v37, 2u);
    }

    if (qword_10015AAE8 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for OSSignposter();
    sub_10000659C(v38, qword_100169730);
    static OSSignpostID.exclusive.getter();
    v39 = OSSignposter.logHandle.getter();
    v40 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      v42 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v39, v40, v42, "Building Settings Index", "", v41, 2u);
    }

    v43 = *(v0 + 40);
    v44 = *(v0 + 48);
    v45 = *(v0 + 24);
    v46 = *(v0 + 32);
    v47 = *(v0 + 16);

    (*(v46 + 16))(v43, v44, v45);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    *(v0 + 88) = OSSignpostIntervalState.init(id:isOpen:)();
    (*(v46 + 8))(v44, v45);
    *(v0 + 96) = *(v47 + 48);
    v53 = (&async function pointer to dispatch thunk of SettingsSearchIndexer.indexSuggestedEligibleItems() + async function pointer to dispatch thunk of SettingsSearchIndexer.indexSuggestedEligibleItems());

    v48 = swift_task_alloc();
    *(v0 + 104) = v48;
    *v48 = v0;
    v48[1] = sub_10007E8D0;

    return v53();
  }

  else if (v26)
  {
    if (v36)
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Reindex Apps Only.", v49, 2u);
    }

    v50 = swift_task_alloc();
    *(v0 + 120) = v50;
    *v50 = v0;
    v50[1] = sub_10007EB24;

    return sub_10007FC08();
  }

  else
  {
    if (v36)
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Indexing not needed.", v51, 2u);
    }

    *(*(v0 + 16) + 40) = 0;

    v52 = *(v0 + 8);

    return v52();
  }
}

uint64_t sub_10007E8D0()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_10007EC90;
  }

  else
  {

    v2 = sub_10007E9EC;
  }

  return _swift_task_switch(v2, 0, 0);
}

id sub_10007E9EC(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Settings Search Indexing completed, setting markers.", v4, 2u);
  }

  v5 = v1[9];

  result = [v5 sharedInstance];
  if (result)
  {
    v7 = result;
    [result setHasIndexed];

    sub_100080FDC();
    sub_1000804E4(v1[11]);

    *(v1[2] + 40) = 0;

    v8 = v1[1];

    return v8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10007EB24()
{

  return _swift_task_switch(sub_10007EC20, 0, 0);
}

uint64_t sub_10007EC20()
{
  *(*(v0 + 16) + 40) = 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10007EC90()
{

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Indexing failed with error: %{public}@", v3, 0xCu);
    sub_1000068B0(v4, &unk_10015F9C0, &unk_100115230);
  }

  else
  {
  }

  sub_1000804E4(v0[11]);

  *(v0[2] + 40) = 0;

  v6 = v0[1];

  return v6();
}

uint64_t sub_10007EE24()
{
  type metadata accessor for SettingsIndexingDefaults();
  result = swift_initStaticObject();
  qword_10015D840 = result;
  return result;
}

uint64_t sub_10007EE54()
{
  v1 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  result = __chkstk_darwin(v1 - 8);
  v4 = &v7 - v3;
  if (*(v0 + 41) == 1)
  {
    static TaskPriority.high.getter();
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = v0;

    sub_100094AF4(0, 0, v4, &unk_100114348, v6);

    *(v0 + 41) = 0;
  }

  return result;
}

uint64_t sub_10007EF94()
{
  *(v0 + 24) = objc_opt_self();
  type metadata accessor for MainActor();
  *(v0 + 32) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10007F038, v2, v1);
}

uint64_t sub_10007F038()
{
  v1 = *(v0 + 24);

  *(v0 + 40) = [v1 sharedApplication];

  return _swift_task_switch(sub_10007F0BC, 0, 0);
}

uint64_t sub_10007F0BC()
{
  v1 = v0[5];
  v2 = v0[2];
  type metadata accessor for BackgroundIndexingTaskManager();
  v3 = swift_allocObject();
  v0[6] = v3;
  swift_defaultActor_initialize();
  *(v3 + 128) = 0xD00000000000001BLL;
  *(v3 + 136) = 0x8000000100122BA0;
  *(v3 + 144) = 0;
  *(v3 + 152) = 1;
  *(v3 + 112) = v1;
  *(v3 + 120) = v2;

  return _swift_task_switch(sub_10007F184, v3, 0);
}

uint64_t sub_10007F184()
{
  sub_10007CD40();

  return _swift_task_switch(sub_10007F1EC, 0, 0);
}

uint64_t sub_10007F1EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10007F24C()
{
  v1 = v0;
  v2 = sub_10004DED0(&qword_10015D9D0, &qword_100114360);
  __chkstk_darwin(v2 - 8);
  if (*(v0 + 48))
  {
    v3 = *(v0 + 48);
  }

  else
  {
    type metadata accessor for SettingsSearchIndexer();
    sub_10001DD0C(&off_10014D020);
    sub_10004322C(&unk_10014D040);
    static Transforming<>.toSettingsNavigation.getter();
    static Transforming<>.searchableItemWithAllLocalizations.getter();
    v3 = SettingsSearchIndexer.__allocating_init(searchableIndexBundleIdentifier:attributionBundleIdentifiers:itemURLTransformers:indexableItemTransforming:)();
    *(v1 + 48) = v3;
  }

  return v3;
}

uint64_t sub_10007F360()
{
  v1 = v0;
  v2 = sub_10004DED0(&qword_10015D9A0, &qword_100114318);
  __chkstk_darwin(v2 - 8);
  v36 = &v32 - v3;
  v33 = type metadata accessor for DispatchQoS.QoSClass();
  v4 = *(v33 - 8);
  __chkstk_darwin(v33);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v39 = *(v7 - 8);
  v40 = v7;
  __chkstk_darwin(v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NSNotificationCenter.Publisher();
  v11 = *(v10 - 8);
  v34 = v10;
  v35 = v11;
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10004DED0(&unk_10015D9A8, &qword_100114320);
  v15 = *(v14 - 8);
  v37 = v14;
  v38 = v15;
  __chkstk_darwin(v14);
  v32 = &v32 - v16;
  *(v0 + 16) = [objc_allocWithZone(LSObserver) init];
  v17 = [objc_allocWithZone(type metadata accessor for SettingsAppLSObserver()) init];
  *(v1 + 24) = v17;
  *(v1 + 32) = &_swiftEmptySetSingleton;
  *(v1 + 40) = 256;
  *(v1 + 48) = 0;
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = &v17[OBJC_IVAR____TtC11SettingsApp21SettingsAppLSObserver_callback];
  v21 = *&v17[OBJC_IVAR____TtC11SettingsApp21SettingsAppLSObserver_callback];
  v20 = *&v17[OBJC_IVAR____TtC11SettingsApp21SettingsAppLSObserver_callback + 8];
  *v19 = &unk_100114330;
  *(v19 + 1) = v18;
  v22 = v17;

  sub_100080CA4(v21, v20);

  [*(v1 + 16) setDelegate:*(v1 + 24)];
  [*(v1 + 16) startObserving];
  v23 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  static OS_dispatch_queue.SchedulerTimeType.Stride.milliseconds(_:)();
  sub_100008294(0, &qword_10015C9D0, OS_dispatch_queue_ptr);
  v24 = v33;
  (*(v4 + 104))(v6, enum case for DispatchQoS.QoSClass.userInitiated(_:), v33);
  v25 = static OS_dispatch_queue.global(qos:)();
  (*(v4 + 8))(v6, v24);
  v41 = v25;
  v26 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v27 = v36;
  (*(*(v26 - 8) + 56))(v36, 1, 1, v26);
  sub_100006868(&qword_10015D9B8, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);
  sub_100080CB4();
  v28 = v32;
  v29 = v34;
  Publisher.debounce<A>(for:scheduler:options:)();
  sub_1000068B0(v27, &qword_10015D9A0, &qword_100114318);

  (*(v39 + 8))(v9, v40);
  (*(v35 + 8))(v13, v29);
  swift_allocObject();
  swift_weakInit();

  sub_100006398();
  v30 = v37;
  Publisher<>.sink(receiveValue:)();

  (*(v38 + 8))(v28, v30);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v1;
}

uint64_t sub_10007F950()
{
  if (qword_10015AAB0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000659C(v1, qword_100169688);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "LSObserverDelegate callback. Calling reindexInstalledApps.", v4, 2u);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v6 = swift_task_alloc();
    v0[7] = v6;
    *v6 = v0;
    v6[1] = sub_10007FAF8;

    return sub_10007FC08();
  }

  else
  {
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_10007FAF8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10007FC28()
{
  v9 = v0;
  if (qword_10015AAB0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[3] = sub_10000659C(v1, qword_100169688);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v4 = 136446466;
    *(v4 + 4) = sub_100025CF0(0xD000000000000022, 0x8000000100122BC0, &v8);
    *(v4 + 12) = 2082;
    *(v4 + 14) = sub_100025CF0(0xD00000000000001ELL, 0x8000000100122BF0, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "reindexInstalledApps (appIntentIdentifier: %{public}s, appValueIdentifier: %{public}s).", v4, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v0[4] = sub_10007F24C();
  v7 = (&async function pointer to dispatch thunk of SettingsSearchIndexer.indexSingleOpenIntent(withIdentifier:appValueIdentifier:) + async function pointer to dispatch thunk of SettingsSearchIndexer.indexSingleOpenIntent(withIdentifier:appValueIdentifier:));
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_10007FE88;

  return v7(0xD000000000000022, 0x8000000100122BC0, 0xD00000000000001ELL, 0x8000000100122BF0);
}

uint64_t sub_10007FE88()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_100080078;
  }

  else
  {

    v2 = sub_10007FFA4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10007FFA4()
{
  sub_100080FDC();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "reindexInstalledApps reindexing done.", v3, 2u);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100080078()
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
    _os_log_impl(&_mh_execute_header, v1, v2, "reindexInstalledApps reindexing failed: %@", v3, 0xCu);
    sub_1000068B0(v4, &unk_10015F9C0, &unk_100115230);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000801DC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10007EE54();
  }

  return result;
}

void *sub_100080234()
{
  v1 = v0;
  [*(v0 + 16) stopObserving];
  swift_beginAccess();
  v2 = *(v0 + 32);
  if ((v2 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for AnyCancellable();
    sub_100006868(&unk_10015D9E0, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
    result = Set.Iterator.init(_cocoa:)();
    v2 = v17;
    v4 = v18;
    v5 = v19;
    v6 = v20;
    v7 = v21;
  }

  else
  {
    v8 = -1 << *(v2 + 32);
    v4 = v2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v2 + 56);

    v6 = 0;
  }

  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v6;
    v12 = v7;
    v13 = v6;
    if (!v7)
    {
      break;
    }

LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));

    if (!v15)
    {
LABEL_18:
      sub_1000813A0(v2);
      *(v1 + 32) = &_swiftEmptySetSingleton;

      return v1;
    }

    while (1)
    {
      AnyCancellable.cancel()();

      v6 = v13;
      v7 = v14;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for AnyCancellable();
        swift_dynamicCast();
        v13 = v6;
        v14 = v7;
        if (v16)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v5 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v12 = *(v4 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10008048C()
{
  sub_100080234();

  return swift_deallocClassInstance();
}

uint64_t sub_1000804E4(uint64_t a1)
{
  v1 = type metadata accessor for OSSignpostError();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10015AAE8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for OSSignposter();
  sub_10000659C(v9, qword_100169730);
  v10 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v11 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v2 + 88))(v4, v1) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2 + 8))(v4, v1);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, v11, v14, "Building Settings Index", v12, v13, 2u);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100080790()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = &Strong[OBJC_IVAR____TtC11SettingsApp21SettingsAppLSObserver_callback];
    v3 = *&Strong[OBJC_IVAR____TtC11SettingsApp21SettingsAppLSObserver_callback];
    v0[7] = v3;
    if (v3)
    {
      v0[8] = *(v2 + 1);

      v7 = (v3 + *v3);
      v4 = swift_task_alloc();
      v0[9] = v4;
      *v4 = v0;
      v4[1] = sub_100080904;

      return v7();
    }
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_100080904()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);

  sub_100080CA4(v2, v1);

  return _swift_task_switch(sub_100080A34, 0, 0);
}

uint64_t sub_100080A34()
{
  v1 = *(v0 + 8);

  return v1();
}

id sub_100080BCC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SettingsAppLSObserver();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100080C14()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10000ACE4;

  return sub_10007F930(v0);
}

uint64_t sub_100080CA4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_100080CB4()
{
  result = qword_10015D9C0;
  if (!qword_10015D9C0)
  {
    sub_100008294(255, &qword_10015C9D0, OS_dispatch_queue_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015D9C0);
  }

  return result;
}

uint64_t sub_100080D24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000ACE4;

  return sub_10007EF74(a1, v4, v5, v6);
}

void *sub_100080DD8()
{
  v0 = [objc_opt_self() defaultWorkspace];
  if (!v0)
  {
    __break(1u);
  }

  v1 = v0;
  v15 = 0;
  v16 = 0;
  [v0 getKnowledgeUUID:&v16 andSequenceNumber:&v15];

  v2 = v15;
  v3 = v16;
  v4 = qword_10015AAB0;
  v5 = v15;
  v6 = v3;
  if (v4 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000659C(v7, qword_100169688);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    *(v10 + 4) = v6;
    *(v10 + 12) = 2112;
    *(v10 + 14) = v5;
    *v11 = v3;
    v11[1] = v2;
    v12 = v6;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v8, v9, "LS knowledgeUUID: %@ sequenceNumber: %@", v10, 0x16u);
    sub_10004DED0(&unk_10015F9C0, &unk_100115230);
    swift_arrayDestroy();
  }

  if (!v6)
  {
    v6 = v5;
LABEL_10:

    return 0;
  }

  if (!v5)
  {
    goto LABEL_10;
  }

  return v3;
}

void sub_100080FDC()
{
  v0 = sub_100080DD8();
  if (v0)
  {
    v2 = v0;
    v3 = v1;
    if (qword_10015AAB0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000659C(v4, qword_100169688);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Updating Seed in User Defaults.", v7, 2u);
    }

    if (qword_10015AA28 != -1)
    {
      swift_once();
    }

    v8 = [v2 UUIDString];
    if (!v8)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = String._bridgeToObjectiveC()();
    }

    v9 = objc_opt_self();
    v10 = [v9 standardUserDefaults];
    v11 = String._bridgeToObjectiveC()();
    [v10 setObject:v8 forKey:v11];

    v12 = [v3 integerValue];
    v13 = [v9 standardUserDefaults];
    oslog = String._bridgeToObjectiveC()();
    [v13 setInteger:v12 forKey:?];
  }

  else
  {
    if (qword_10015AAB0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000659C(v14, qword_100169688);
    oslog = Logger.logObject.getter();
    v15 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v15, "Could not retrieve lsDatabaseSeed", v16, 2u);
    }
  }
}

uint64_t sub_1000812EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000A924;

  return sub_100080770(a1, v4, v5, v6);
}

uint64_t sub_100081410()
{
  v1 = v0;
  v2 = type metadata accessor for AMSEngagementSheet(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  v6 = objc_allocWithZone(AMSEngagementRequest);
  swift_unknownObjectRetain();
  v7 = [v6 init];
  URL._bridgeToObjectiveC()(*(v3 + 32));
  v9 = v8;
  [v7 setURL:v8];

  v10 = [objc_opt_self() ams_sharedAccountStore];
  v11 = [v10 ams_activeiCloudAccount];

  [v7 setAccount:v11];
  type metadata accessor for EngagementViewModel();
  swift_allocObject();
  v12 = EngagementViewModel.init(bag:request:clientInfo:)();
  sub_10008195C(v1, &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  sub_1000819C0(&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  dispatch thunk of EngagementViewModel.shouldDismiss.setter();
  return v12;
}

uint64_t sub_1000815FC(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004DED0(&qword_10015D1B0, &qword_100114420);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for DismissAction();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100081A84(a1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  DismissAction.callAsFunction()();
  return (*(v10 + 8))(v12, v9);
}