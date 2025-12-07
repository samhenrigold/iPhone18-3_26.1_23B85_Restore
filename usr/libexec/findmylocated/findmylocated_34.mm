uint64_t sub_1003C2DF0()
{
  v0 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v0 - 8);
  v2 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = 64;
  v3 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v3 + 16) = 64;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 32) = 0u;
  if (sysctlbyname("kern.osrelease", (v3 + 32), &v20, 0, 0))
  {
    v8 = errno.getter();
    if (!strerror(v8))
    {
      __break(1u);
    }

    goto LABEL_7;
  }

  static String.Encoding.ascii.getter();
  v4 = sub_1003C18B0(v3, v2);
  if (!v5)
  {
    while (1)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_7:
      v9 = String.init(utf8String:)();
      if (v10)
      {
        v11 = v9;
      }

      else
      {
        v11 = 0x6E776F6E6B6E55;
      }

      if (v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = 0xE700000000000000;
      }

      if (qword_1005A84E8 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_10000A6F0(v13, qword_1005E0B78);

      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v21 = v17;
        *v16 = 136446466;
        v18 = sub_10000D01C(v11, v12, &v21);

        *(v16 + 4) = v18;
        *(v16 + 12) = 1024;
        *(v16 + 14) = errno.getter();
        _os_log_impl(&_mh_execute_header, v14, v15, "Error from sysctlbyname: %{public}s (%d)", v16, 0x12u);
        sub_100004984(v17);
      }

      else
      {
      }
    }
  }

  v6 = v4;

  return v6;
}

uint64_t sub_1003C30F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65644979656BLL && a2 == 0xED00007265696669;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7630182 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEA00000000007354 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001004E9270 == a2)
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

uint64_t sub_1003C326C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003C32D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003C3334(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100003690;

  return sub_1003B85B0(a1, a2, v6);
}

uint64_t sub_1003C3404()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100002D40;

  return sub_1003B77A0(v2);
}

uint64_t sub_1003C3498(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003C3500()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1003B28D0();
}

uint64_t sub_1003C359C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000368C;

  return sub_1003B2960(a1, v1);
}

uint64_t sub_1003C3638(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000368C;

  return sub_1003B2B14(a1, v1);
}

uint64_t sub_1003C36D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1003B2D58();
}

uint64_t sub_1003C3770(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000368C;

  return sub_1003B2DE8(a1, v1);
}

uint64_t sub_1003C380C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1003B3554();
}

uint64_t sub_1003C38A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1003B35E4();
}

uint64_t sub_1003C3944()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1003B3674();
}

uint64_t sub_1003C39E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1003B3704();
}

uint64_t sub_1003C3A80()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005E0BA8);
  v1 = sub_10000A6F0(v0, qword_1005E0BA8);
  if (qword_1005A84F0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005E0B90);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003C3B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return _swift_task_switch(sub_1003C3B70, 0, 0);
}

uint64_t sub_1003C3B70()
{
  v1 = *(v0 + 64);
  swift_defaultActor_initialize();
  *(v1 + 120) = 0;
  sub_10004B564(&qword_1005B2FB0, &unk_1004D7DA0);
  swift_allocObject();
  *(v1 + 128) = AsyncStreamProvider.init()();
  if (qword_1005A8500 != -1)
  {
    swift_once();
  }

  v2 = qword_1005B2E30;
  v3 = objc_allocWithZone(APSConnection);
  v4 = v2;
  v5 = String._bridgeToObjectiveC()();
  v6 = String._bridgeToObjectiveC()();
  v7 = [v3 initWithEnvironmentName:v5 namedDelegatePort:v6 queue:v4];

  if (v7)
  {
    v11 = *(v0 + 64);

    *(v11 + 112) = v7;
    v8 = sub_1003C3CE0;
    v9 = v11;
    v10 = 0;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_1003C3CE0()
{
  receiver = v0[4].receiver;
  v2 = receiver[14];
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v2 _setEnabledTopics:isa];

  v4 = type metadata accessor for PushTokenMonitor.PushDelegate();
  v5 = objc_allocWithZone(v4);
  swift_weakInit();
  swift_weakAssign();
  v0[1].receiver = v5;
  v0[1].super_class = v4;
  v6 = objc_msgSendSuper2(v0 + 1, "init");
  v7 = receiver[15];
  receiver[15] = v6;
  v8 = v6;

  v9 = receiver[14];
  [v9 setDelegate:v8];

  super_class = v0->super_class;
  v11 = v0[4].receiver;

  return super_class(v11);
}

uint64_t sub_1003C3E0C()
{
  v1 = [*(v0 + 112) publicToken];
  if (!v1)
  {
    return AsyncStreamProvider.stream(initialEvents:)();
  }

  v2 = v1;
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  sub_10004B564(&qword_1005AB020, &qword_1004D7D90);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1004C1900;
  *(v6 + 32) = v3;
  *(v6 + 40) = v5;
  sub_100005F6C(v3, v5);
  AsyncStreamProvider.stream(initialEvents:)();

  return sub_1000049D0(v3, v5);
}

uint64_t sub_1003C3F04(uint64_t a1, unint64_t a2)
{
  if (qword_1005A84F8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000A6F0(v4, qword_1005E0BA8);
  sub_100005F6C(a1, a2);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  sub_1000049D0(a1, a2);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13[0] = v8;
    *v7 = 136315138;
    v9 = Data.hexString.getter();
    v11 = sub_10000D01C(v9, v10, v13);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "APNS public token: %s", v7, 0xCu);
    sub_100004984(v8);
  }

  v13[0] = a1;
  v13[1] = a2;
  return AsyncStreamProvider.yield(value:transaction:)();
}

uint64_t sub_1003C4090()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1003C40FC()
{
  v0 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v0);
  v1 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004B518();
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v2);
  static DispatchQoS.unspecified.getter();
  v7[1] = _swiftEmptyArrayStorage;
  sub_10014311C();
  sub_10004B564(&unk_1005AB400, &unk_1004C0BF0);
  sub_10004B5AC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_1005B2E30 = result;
  return result;
}

uint64_t sub_1003C4300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_1003C4324, a4, 0);
}

uint64_t sub_1003C4324()
{
  sub_1003C3F04(v0[3], v0[4]);
  v1 = v0[1];

  return v1();
}

void sub_1003C44A4(uint64_t a1, unint64_t a2)
{
  v4 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (a2 >> 60 == 15)
    {
      if (qword_1005A84F0 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_10000A6F0(v9, qword_1005E0B90);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "publicToken is nil!", v12, 2u);
      }
    }

    else
    {
      v17 = type metadata accessor for TaskPriority();
      (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
      v18 = swift_allocObject();
      v18[2] = 0;
      v18[3] = 0;
      v18[4] = v8;
      v18[5] = a1;
      v18[6] = a2;
      sub_100005F6C(a1, a2);
      sub_1001D7F30(0, 0, v6, &unk_1004D7D88, v18);
    }
  }

  else
  {
    if (qword_1005A84F0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000A6F0(v13, qword_1005E0B90);
    v20 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v20, v14, "target is nil!", v15, 2u);
    }

    v16 = v20;
  }
}

uint64_t sub_1003C47A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100003690;

  return sub_1003C4300(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1003C4890()
{
  v1 = v0[3];
  v0[2] = *(v1 + 16);
  swift_allocObject();
  swift_weakInit();

  sub_10004B564(&qword_1005A9F68, &unk_1004C46C0);
  sub_1003C6BB0();
  v2 = Publisher<>.sink(receiveValue:)();

  *(v1 + 32) = v2;

  v3 = v0[1];

  return v3();
}

uint64_t sub_1003C4994(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for PublicKey();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = *(sub_10004B564(&qword_1005B0608, &qword_1004D1F38) - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v4 = swift_task_alloc();
  v2[10] = v4;
  v5 = swift_task_alloc();
  v2[11] = v5;
  *v5 = v2;
  v5[1] = sub_1003C4B08;

  return sub_1003C4E84(v4);
}

uint64_t sub_1003C4B08()
{

  return _swift_task_switch(sub_1003C4C04, 0, 0);
}

uint64_t sub_1003C4C04()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[4];
  v6 = v0[5];
  sub_10004B564(&qword_1005B0600, &qword_1004D7E00);
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_1003C6B38(v1, v8 + v7);
  sub_1003C6B38(v8 + v7, v2);
  sub_100260160(v2, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100002CE0(v0[8], &qword_1005B0608, &qword_1004D1F38);
    v9 = _swiftEmptyArrayStorage;
  }

  else
  {
    v10 = *(v0[5] + 32);
    v10(v0[6], v0[8], v0[4]);
    v9 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1001FD504(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v12 = *(v9 + 2);
    v11 = *(v9 + 3);
    if (v12 >= v11 >> 1)
    {
      v9 = sub_1001FD504((v11 > 1), v12 + 1, 1, v9);
    }

    v14 = v0[5];
    v13 = v0[6];
    v15 = v0[4];
    *(v9 + 2) = v12 + 1;
    v10(&v9[((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v12], v13, v15);
  }

  v16 = v0[10];
  swift_setDeallocating();
  sub_100002CE0(v8 + v7, &qword_1005B0608, &qword_1004D1F38);
  swift_deallocClassInstance();
  sub_100258648(v9);

  AsyncStreamProvider.stream(initialEvents:)();

  sub_100002CE0(v16, &qword_1005B0608, &qword_1004D1F38);

  v17 = v0[1];

  return v17();
}

uint64_t sub_1003C4E84(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1003C4F18;

  return daemon.getter();
}

uint64_t sub_1003C4F18(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 32) = a1;

  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for LocationService(0);
  v6 = sub_100009638(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100009638(&qword_1005A9308, type metadata accessor for LocationService, &unk_1004D65B0);
  *v3 = v9;
  v3[1] = sub_1003C50F4;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1003C50F4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[6] = a1;
  v3[7] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1003C57E4, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[8] = v5;
    *v5 = v4;
    v5[1] = sub_1003C527C;

    return sub_10001CC28();
  }
}

uint64_t sub_1003C527C(uint64_t a1)
{
  *(*v1 + 72) = a1;

  return _swift_task_switch(sub_1003C537C, 0, 0);
}

uint64_t sub_1003C537C()
{
  v1 = swift_task_alloc();
  v0[10] = v1;
  v2 = sub_10004B564(&qword_1005B0608, &qword_1004D1F38);
  *v1 = v0;
  v1[1] = sub_1003C5464;
  v3 = v0[9];
  v4 = v0[2];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0x4B676E6972616873, 0xEA00000000007965, sub_1003C6B30, v3, v2);
}

uint64_t sub_1003C5464()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1003C55E0;
  }

  else
  {

    v2 = sub_1003C5580;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003C5580()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003C55E0()
{

  if (qword_1005A84F0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0B90);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "getSharingKey error: %{public}@", v4, 0xCu);
    sub_100002CE0(v5, &qword_1005A9670, &unk_1004C2480);
  }

  else
  {
  }

  v7 = *(v0 + 16);
  v8 = type metadata accessor for PublicKey();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1003C57E4()
{

  if (qword_1005A84F0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0B90);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing LocationService!", v4, 2u);
  }

  v5 = *(v0 + 16);

  v6 = type metadata accessor for PublicKey();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1003C594C()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return _swift_task_switch(sub_1003C5994, 0, 0);
}

uint64_t sub_1003C5994()
{
  v1 = *(v0 + 16);
  sub_10004B564(&qword_1005B3068, &qword_1004D7E28);
  swift_allocObject();
  *(v1 + 24) = AsyncStreamProvider.init()();
  *(v1 + 32) = 0;
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1003C5A54;

  return daemon.getter();
}

uint64_t sub_1003C5A54(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 40) = a1;

  v3 = swift_task_alloc();
  *(v2 + 48) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for LocationService(0);
  v6 = sub_100009638(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100009638(&qword_1005A9308, type metadata accessor for LocationService, &unk_1004D65B0);
  *v3 = v9;
  v3[1] = sub_1003C5C30;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1003C5C30(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1003C5F88, 0, 0);
  }

  else
  {

    *(v4 + 64) = a1;
    v6 = swift_task_alloc();
    *(v4 + 72) = v6;
    *v6 = v5;
    v6[1] = sub_1003C5DBC;

    return sub_10001CC28();
  }
}

uint64_t sub_1003C5DBC(uint64_t a1)
{
  *(*v1 + 80) = a1;

  return _swift_task_switch(sub_1003C5EBC, 0, 0);
}

uint64_t sub_1003C5EBC()
{
  v1 = v0[10];
  v2 = v0[2];

  v3 = *(v1 + 56);

  v4 = *(v3 + 24);

  v5 = *(v4 + 72);

  v6 = *(v5 + 24);

  *(v2 + 16) = v6;
  v7 = v0[1];
  v8 = v0[2];

  return v7(v8);
}

uint64_t sub_1003C5F88()
{

  swift_deallocPartialClassInstance();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003C6014(uint64_t a1, uint64_t a2)
{
  v3 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a2;

  sub_10020D620(0, 0, v5, &unk_1004D7E18, v7);
}

uint64_t sub_1003C6120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  sub_10004B564(&qword_1005B0608, &qword_1004D1F38);
  v4[9] = swift_task_alloc();
  v5 = type metadata accessor for ContinuousClock();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_1003C6218, 0, 0);
}

uint64_t sub_1003C6218(uint64_t a1)
{
  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  *(v1 + 104) = v2;
  *v2 = v1;
  v2[1] = sub_1003C62E4;

  return sub_100291918(3000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1003C62E4()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  *(*v1 + 112) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1003C66CC;
  }

  else
  {
    v5 = sub_1003C6454;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003C6454()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[16] = v2;
    *v2 = v0;
    v2[1] = sub_1003C673C;
    v3 = v0[9];

    return sub_1003C4E84(v3);
  }

  else
  {
    v5 = v0[9];
    v6 = type metadata accessor for PublicKey();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    if (qword_1005A84F0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000A6F0(v7, qword_1005E0B90);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "SharingKeyStreamProvider yielding nil", v10, 2u);
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {

      AsyncStreamProvider.yield(value:transaction:)();
    }

    sub_100002CE0(v0[9], &qword_1005B0608, &qword_1004D1F38);

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1003C66CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003C673C()
{

  return _swift_task_switch(sub_1003C6854, 0, 0);
}

uint64_t sub_1003C6854()
{
  v1 = *(v0 + 72);
  v2 = type metadata accessor for PublicKey();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    if (qword_1005A84F0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000A6F0(v3, qword_1005E0B90);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "SharingKeyStreamProvider yielding nil";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v4, v5, v7, v6, 2u);
    }
  }

  else
  {
    if (qword_1005A84F0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000A6F0(v8, qword_1005E0B90);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "SharingKeyStreamProvider yielding publicKey";
      goto LABEL_10;
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    AsyncStreamProvider.yield(value:transaction:)();
  }

  sub_100002CE0(*(v0 + 72), &qword_1005B0608, &qword_1004D1F38);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1003C6AC4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1003C6B38(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005B0608, &qword_1004D1F38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1003C6BB0()
{
  result = qword_1005A9F70;
  if (!qword_1005A9F70)
  {
    sub_10004B610(&qword_1005A9F68, &unk_1004C46C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9F70);
  }

  return result;
}

uint64_t sub_1003C6C14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100003690;

  return sub_1003C6120(a1, v4, v5, v6);
}

uint64_t sub_1003C6CC8(uint64_t a1)
{
  result = static Duration.seconds(_:)();
  qword_1005B3070 = result;
  *algn_1005B3078 = v2;
  return result;
}

uint64_t sub_1003C6CF0()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005E0BC0);
  sub_10000A6F0(v0, qword_1005E0BC0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1003C6D70()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005E0BD8);
  sub_10000A6F0(v0, qword_1005E0BD8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1003C6E48(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for Logger();
  sub_10004F154(v8, a2);
  v9 = sub_10000A6F0(v8, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v10 = sub_10000A6F0(v8, a4);
  v11 = *(*(v8 - 8) + 16);

  return v11(v9, v10, v8);
}

uint64_t sub_1003C6F30()
{
  if (qword_1005A8520 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0BF0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "NIRangingService startup()", v4, 2u);
  }

  v5 = *(v0 + 696);

  v6 = objc_allocWithZone(sub_10004B564(&qword_1005B3248, &qword_1004D8158));

  v8 = sub_1003D9350(v7);
  *(v0 + 704) = v8;

  v9 = *(v5 + 128);
  *(v5 + 128) = v8;
  v10 = v8;

  swift_asyncLet_begin();

  return _swift_asyncLet_get_throwing(v0 + 16);
}

uint64_t sub_1003C70D0(uint64_t a1, uint64_t a2)
{
  *(v3 + 712) = v2;
  if (v2)
  {
    v4 = sub_1003C7190;
  }

  else
  {
    v4 = sub_1003C7104;
  }

  return _swift_asyncLet_finish(v3 + 16, a2, v4, v3 + 656);
}

uint64_t sub_1003C7120()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003C71AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003C721C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1003C72AC();
}

uint64_t sub_1003C72AC()
{
  *(v1 + 56) = *v0;
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  *(v1 + 64) = swift_task_alloc();

  return _swift_task_switch(sub_1003C736C, v0, 0);
}

uint64_t sub_1003C736C()
{
  v19 = v0;
  My = type metadata accessor for Feature.FindMy();
  v0[5] = My;
  v0[6] = sub_1003DA8C4(&qword_1005A9EE8, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v2 = sub_10000331C(v0 + 2);
  (*(*(My - 8) + 104))(v2, enum case for Feature.FindMy.redStripe(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100004984(v0 + 2);
  if ((My & 1) == 0)
  {
    if (qword_1005A8520 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000A6F0(v9, qword_1005E0BF0);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_13;
    }

    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136446210;
    *(v12 + 4) = sub_10000D01C(0xD00000000000001CLL, 0x80000001004E9840, &v18);
    v14 = "%{public}s Feature.FindMy.redStripe FF disabled.";
    goto LABEL_12;
  }

  if (sub_1003F399C())
  {
    v4 = v0[7];
    v3 = v0[8];
    v5 = type metadata accessor for TaskPriority();
    v6 = *(*(v5 - 8) + 56);
    v6(v3, 1, 1, v5);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v4;
    sub_1001D7F30(0, 0, v3, &unk_1004D8138, v7);

    v6(v3, 1, 1, v5);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v4;
    sub_1001D7F30(0, 0, v3, &unk_1004D8148, v8);

    goto LABEL_14;
  }

  if (qword_1005A8520 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10000A6F0(v15, qword_1005E0BF0);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136446210;
    *(v12 + 4) = sub_10000D01C(0xD00000000000001CLL, 0x80000001004E9840, &v18);
    v14 = "%{public}s isFindingCapable == false.";
LABEL_12:
    _os_log_impl(&_mh_execute_header, v10, v11, v14, v12, 0xCu);
    sub_100004984(v13);
  }

LABEL_13:

LABEL_14:

  v16 = v0[1];

  return v16();
}

uint64_t sub_1003C775C()
{
  v1 = type metadata accessor for DarwinNotification();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_10004B564(&qword_1005AACD0, &unk_1004C4750);
  v0[5] = swift_task_alloc();
  v2 = sub_10004B564(&qword_1005AACD8, &qword_1004D8900);
  v0[6] = v2;
  v0[7] = *(v2 - 8);
  v0[8] = swift_task_alloc();
  v3 = sub_10004B564(&qword_1005AACE0, &qword_1004C4760);
  v0[9] = v3;
  v0[10] = *(v3 - 8);
  v0[11] = swift_task_alloc();

  return _swift_task_switch(sub_1003C7920, 0, 0);
}

uint64_t sub_1003C7920()
{
  if (qword_1005A8520 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 96) = sub_10000A6F0(v1, qword_1005E0BF0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Registering listener for Darwin notification: NILocalDeviceStartedInteractingWithTokenNotification", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  *v5 = v0;
  v5[1] = sub_1003C7A70;

  return daemon.getter();
}

uint64_t sub_1003C7A70(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 112) = a1;

  *(v2 + 120) = type metadata accessor for Daemon();
  sub_1003DA8C4(&qword_1005AB4E0, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003C7BD4, v4, v3);
}

uint64_t sub_1003C7BD4()
{
  *(v0 + 128) = Daemon.darwinNotificationHandler.getter();

  type metadata accessor for DarwinNotificationHandler();
  sub_1003DA8C4(&qword_1005AACE8, &type metadata accessor for DarwinNotificationHandler, &protocol conformance descriptor for DarwinNotificationHandler);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003C7CAC, v2, v1);
}

uint64_t sub_1003C7CAC()
{
  dispatch thunk of DarwinNotificationHandler.asyncStream(name:)();

  return _swift_task_switch(sub_1003C7D38, 0, 0);
}

uint64_t sub_1003C7D38()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_1003C7E14;
  v5 = v0[9];
  v6 = v0[5];

  return AsyncStream.Iterator.next(isolation:)(v6, 0, 0, v5);
}

uint64_t sub_1003C7E14()
{

  return _swift_task_switch(sub_1003C7F10, 0, 0);
}

uint64_t sub_1003C7F10()
{
  v20 = v0;
  v1 = v0[5];
  v2 = v0[2];
  v3 = v0[3];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[10] + 8))(v0[11], v0[9]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    (*(v3 + 32))(v0[4], v1, v2);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    v8 = os_log_type_enabled(v6, v7);
    v10 = v0[3];
    v9 = v0[4];
    v11 = v0[2];
    if (v8)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136315138;
      sub_1003DA8C4(&qword_1005B3240, &type metadata accessor for DarwinNotification, &protocol conformance descriptor for DarwinNotification);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      (*(v10 + 8))(v9, v11);
      v17 = sub_10000D01C(v14, v16, &v19);

      *(v12 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v6, v7, "Darwin NILocalDeviceStartedInteractingWithToken: %s", v12, 0xCu);
      sub_100004984(v13);
    }

    else
    {

      (*(v10 + 8))(v9, v11);
    }

    v18 = swift_task_alloc();
    v0[18] = v18;
    *v18 = v0;
    v18[1] = sub_1003C81D8;

    return daemon.getter();
  }
}

uint64_t sub_1003C81D8(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 152) = a1;

  v5 = swift_task_alloc();
  *(v3 + 160) = v5;
  v6 = type metadata accessor for NITokenService(0);
  v7 = sub_1003DA8C4(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v8 = sub_1003DA8C4(&qword_1005AD548, type metadata accessor for NITokenService, &unk_1004D8368);
  *v5 = v4;
  v5[1] = sub_1003C83B4;
  v9 = *(v2 + 120);

  return ActorServiceDaemon.getService<A>()(v9, v6, v7, v8);
}

uint64_t sub_1003C83B4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[21] = a1;
  v3[22] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1003C8700, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[23] = v5;
    *v5 = v4;
    v5[1] = sub_1003C853C;

    return sub_100430CDC();
  }
}

uint64_t sub_1003C853C()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1003C88B4;
  }

  else
  {
    v2 = sub_1003C8650;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003C8650()
{

  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_1003C7E14;
  v2 = v0[9];
  v3 = v0[5];

  return AsyncStream.Iterator.next(isolation:)(v3, 0, 0, v2);
}

uint64_t sub_1003C8700()
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
    _os_log_impl(&_mh_execute_header, v1, v2, "ERROR: %{public}@", v3, 0xCu);
    sub_100002CE0(v4, &qword_1005A9670, &unk_1004C2480);
  }

  else
  {
  }

  v6 = swift_task_alloc();
  v0[17] = v6;
  *v6 = v0;
  v6[1] = sub_1003C7E14;
  v7 = v0[9];
  v8 = v0[5];

  return AsyncStream.Iterator.next(isolation:)(v8, 0, 0, v7);
}

uint64_t sub_1003C88B4()
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
    _os_log_impl(&_mh_execute_header, v1, v2, "ERROR: %{public}@", v3, 0xCu);
    sub_100002CE0(v4, &qword_1005A9670, &unk_1004C2480);
  }

  else
  {
  }

  v6 = swift_task_alloc();
  v0[17] = v6;
  *v6 = v0;
  v6[1] = sub_1003C7E14;
  v7 = v0[9];
  v8 = v0[5];

  return AsyncStream.Iterator.next(isolation:)(v8, 0, 0, v7);
}

uint64_t sub_1003C8A68()
{
  v1 = type metadata accessor for DarwinNotification();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_10004B564(&qword_1005AACD0, &unk_1004C4750);
  v0[5] = swift_task_alloc();
  v2 = sub_10004B564(&qword_1005AACD8, &qword_1004D8900);
  v0[6] = v2;
  v0[7] = *(v2 - 8);
  v0[8] = swift_task_alloc();
  v3 = sub_10004B564(&qword_1005AACE0, &qword_1004C4760);
  v0[9] = v3;
  v0[10] = *(v3 - 8);
  v0[11] = swift_task_alloc();

  return _swift_task_switch(sub_1003C8C2C, 0, 0);
}

uint64_t sub_1003C8C2C()
{
  if (qword_1005A8520 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 96) = sub_10000A6F0(v1, qword_1005E0BF0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Registering listener for Darwin notification: NILocalDeviceStoppedInteractingWithTokenNotification", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  *v5 = v0;
  v5[1] = sub_1003C8D7C;

  return daemon.getter();
}

uint64_t sub_1003C8D7C(uint64_t a1)
{
  *(*v1 + 112) = a1;

  type metadata accessor for Daemon();
  sub_1003DA8C4(&qword_1005AB4E0, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003C8ED4, v3, v2);
}

uint64_t sub_1003C8ED4()
{
  *(v0 + 120) = Daemon.darwinNotificationHandler.getter();

  type metadata accessor for DarwinNotificationHandler();
  sub_1003DA8C4(&qword_1005AACE8, &type metadata accessor for DarwinNotificationHandler, &protocol conformance descriptor for DarwinNotificationHandler);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003C8FAC, v2, v1);
}

uint64_t sub_1003C8FAC()
{
  dispatch thunk of DarwinNotificationHandler.asyncStream(name:)();

  return _swift_task_switch(sub_1003C9038, 0, 0);
}

uint64_t sub_1003C9038()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_1003C9114;
  v5 = v0[9];
  v6 = v0[5];

  return AsyncStream.Iterator.next(isolation:)(v6, 0, 0, v5);
}

uint64_t sub_1003C9114()
{

  return _swift_task_switch(sub_1003C9210, 0, 0);
}

uint64_t sub_1003C9210()
{
  v22 = v0;
  v1 = v0[5];
  v2 = v0[2];
  v3 = v0[3];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[10] + 8))(v0[11], v0[9]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    (*(v3 + 32))(v0[4], v1, v2);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    v8 = os_log_type_enabled(v6, v7);
    v10 = v0[3];
    v9 = v0[4];
    v11 = v0[2];
    if (v8)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v21 = v13;
      *v12 = 136315138;
      sub_1003DA8C4(&qword_1005B3240, &type metadata accessor for DarwinNotification, &protocol conformance descriptor for DarwinNotification);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      (*(v10 + 8))(v9, v11);
      v17 = sub_10000D01C(v14, v16, &v21);

      *(v12 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v6, v7, "Darwin NILocalDeviceStoppedInteractingWithToken: %s", v12, 0xCu);
      sub_100004984(v13);
    }

    else
    {

      (*(v10 + 8))(v9, v11);
    }

    v18 = swift_task_alloc();
    v0[16] = v18;
    *v18 = v0;
    v18[1] = sub_1003C9114;
    v19 = v0[9];
    v20 = v0[5];

    return AsyncStream.Iterator.next(isolation:)(v20, 0, 0, v19);
  }
}

uint64_t sub_1003C94F0(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for Date();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  sub_10004B564(&qword_1005B0F30, &qword_1004D3308);
  v2[12] = swift_task_alloc();
  v4 = type metadata accessor for DiscoveryToken(0);
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v5 = type metadata accessor for Handle();
  v2[16] = v5;
  v2[17] = *(v5 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();

  return _swift_task_switch(sub_1003C96AC, v1, 0);
}

uint64_t sub_1003C96AC()
{
  v30 = v0;
  My = type metadata accessor for Feature.FindMy();
  v0[5] = My;
  v0[6] = sub_1003DA8C4(&qword_1005A9EE8, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v2 = sub_10000331C(v0 + 2);
  (*(*(My - 8) + 104))(v2, enum case for Feature.FindMy.redStripe(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100004984(v0 + 2);
  if (My)
  {
    if (qword_1005A8520 != -1)
    {
      swift_once();
    }

    v3 = v0[19];
    v4 = v0[16];
    v5 = v0[17];
    v6 = v0[7];
    v7 = type metadata accessor for Logger();
    v0[20] = sub_10000A6F0(v7, qword_1005E0BF0);
    v8 = *(v5 + 16);
    v0[21] = v8;
    v0[22] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v8(v3, v6, v4);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[19];
    v13 = v0[16];
    v14 = v0[17];
    if (v11)
    {
      v15 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v15 = 136446723;
      *(v15 + 4) = sub_10000D01C(0xD000000000000011, 0x80000001004E9820, &v29);
      *(v15 + 12) = 2160;
      *(v15 + 14) = 1752392040;
      *(v15 + 22) = 2081;
      sub_1003DA8C4(&qword_1005B02C8, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      v19 = *(v14 + 8);
      v19(v12, v13);
      v20 = sub_10000D01C(v16, v18, &v29);

      *(v15 + 24) = v20;
      _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s %{private,mask.hash}s", v15, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v19 = *(v14 + 8);
      v19(v12, v13);
    }

    v0[23] = v19;
    v28 = swift_task_alloc();
    v0[24] = v28;
    *v28 = v0;
    v28[1] = sub_1003C9B90;

    return daemon.getter();
  }

  else
  {
    if (qword_1005A8520 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000A6F0(v21, qword_1005E0BF0);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v29 = v25;
      *v24 = 136446210;
      *(v24 + 4) = sub_10000D01C(0xD000000000000011, 0x80000001004E9820, &v29);
      _os_log_impl(&_mh_execute_header, v22, v23, "%{public}s Feature.FindMy.redStripe FF disabled.", v24, 0xCu);
      sub_100004984(v25);
    }

    v26 = v0[1];

    return v26();
  }
}

uint64_t sub_1003C9B90(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 200) = a1;

  v3 = swift_task_alloc();
  *(v2 + 208) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for NITokenService(0);
  v6 = sub_1003DA8C4(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1003DA8C4(&qword_1005AD548, type metadata accessor for NITokenService, &unk_1004D8368);
  *v3 = v9;
  v3[1] = sub_1003C9D6C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1003C9D6C(uint64_t a1)
{
  v3 = *v2;
  v3[27] = a1;
  v3[28] = v1;

  if (v1)
  {
    v4 = v3[8];
    v5 = sub_1003CA628;
  }

  else
  {
    v6 = v3[8];

    v5 = sub_1003C9E94;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1003C9E94(uint64_t a1)
{
  static ReferenceClock.now.getter();
  v2 = swift_task_alloc();
  v1[29] = v2;
  *v2 = v1;
  v2[1] = sub_1003C9F38;
  v4 = v1[11];
  v3 = v1[12];
  v5 = v1[7];

  return sub_100403E38(v3, v5, v4);
}

uint64_t sub_1003C9F38()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = v2[11];
  v4 = v2[10];
  v5 = v2[9];
  v6 = v2[8];
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = sub_1003CA6CC;
  }

  else
  {
    v7 = sub_1003CA0B4;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1003CA0B4()
{
  v24 = v0;
  v1 = v0[12];
  if ((*(v0[14] + 48))(v1, 1, v0[13]) == 1)
  {
    v2 = v0[21];
    v3 = v0[18];
    v4 = v0[16];
    v5 = v0[7];
    sub_100002CE0(v1, &qword_1005B0F30, &qword_1004D3308);
    v2(v3, v5, v4);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[23];
    v10 = v0[18];
    v11 = v0[16];
    if (v8)
    {
      v12 = swift_slowAlloc();
      v23[0] = swift_slowAlloc();
      *v12 = 136446723;
      *(v12 + 4) = sub_10000D01C(0xD000000000000011, 0x80000001004E9820, v23);
      *(v12 + 12) = 2160;
      *(v12 + 14) = 1752392040;
      *(v12 + 22) = 2081;
      sub_1003DA8C4(&qword_1005B02C8, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v15 = v14;
      v9(v10, v11);
      v16 = sub_10000D01C(v13, v15, v23);

      *(v12 + 24) = v16;
      _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s cannot generate token for %{private,mask.hash}s!", v12, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v9(v10, v11);
    }

    sub_1003DA6A0();
    swift_allocError();
    *v21 = 18;
    swift_willThrow();

    v22 = v0[1];

    return v22();
  }

  else
  {
    v17 = v0[15];
    sub_1003DA6F4(v1, v17, type metadata accessor for DiscoveryToken);
    v18 = *v17;
    v19 = swift_task_alloc();
    v0[31] = v19;
    *v19 = v0;
    v19[1] = sub_1003CA440;

    return sub_1003CB690(v18);
  }
}

uint64_t sub_1003CA440()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = *(v2 + 64);
  if (v0)
  {
    v4 = sub_1003CA770;
  }

  else
  {
    v4 = sub_1003CA56C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1003CA56C()
{
  v1 = *(v0 + 120);

  sub_1003DA1C4(v1, type metadata accessor for DiscoveryToken);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1003CA628()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003CA6CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003CA770()
{
  v1 = *(v0 + 120);

  sub_1003DA1C4(v1, type metadata accessor for DiscoveryToken);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1003CA834()
{
  v1[7] = v0;
  v2 = type metadata accessor for Date();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_1003CA8F4, v0, 0);
}

uint64_t sub_1003CA8F4()
{
  v17 = v0;
  My = type metadata accessor for Feature.FindMy();
  v0[5] = My;
  v0[6] = sub_1003DA8C4(&qword_1005A9EE8, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v2 = sub_10000331C(v0 + 2);
  (*(*(My - 8) + 104))(v2, enum case for Feature.FindMy.redStripe(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100004984(v0 + 2);
  if (My)
  {
    if (qword_1005A8520 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    v0[11] = sub_10000A6F0(v3, qword_1005E0BF0);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v16 = v7;
      *v6 = 136446210;
      *(v6 + 4) = sub_10000D01C(0xD000000000000013, 0x80000001004E6CD0, &v16);
      _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s", v6, 0xCu);
      sub_100004984(v7);
    }

    v8 = swift_task_alloc();
    v0[12] = v8;
    *v8 = v0;
    v8[1] = sub_1003CAC88;

    return daemon.getter();
  }

  else
  {
    if (qword_1005A8520 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000A6F0(v9, qword_1005E0BF0);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v16 = v13;
      *v12 = 136446210;
      *(v12 + 4) = sub_10000D01C(0xD000000000000013, 0x80000001004E6CD0, &v16);
      _os_log_impl(&_mh_execute_header, v10, v11, "%{public}s Feature.FindMy.redStripe FF disabled.", v12, 0xCu);
      sub_100004984(v13);
    }

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_1003CAC88(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 104) = a1;

  v3 = swift_task_alloc();
  *(v2 + 112) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for NITokenService(0);
  v6 = sub_1003DA8C4(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1003DA8C4(&qword_1005AD548, type metadata accessor for NITokenService, &unk_1004D8368);
  *v3 = v9;
  v3[1] = sub_1003CAE64;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1003CAE64(uint64_t a1)
{
  v3 = *v2;
  v3[15] = a1;
  v3[16] = v1;

  if (v1)
  {
    v4 = v3[7];
    v5 = sub_1003CB544;
  }

  else
  {
    v6 = v3[7];

    v5 = sub_1003CAF8C;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1003CAF8C(uint64_t a1)
{
  static ReferenceClock.now.getter();
  v2 = swift_task_alloc();
  *(v1 + 136) = v2;
  *v2 = v1;
  v2[1] = sub_1003CB02C;

  return sub_100403F98();
}

uint64_t sub_1003CB02C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[18] = a1;
  v4[19] = v1;

  v5 = v3[10];
  v6 = v3[9];
  v7 = v3[8];
  v8 = v3[7];
  (*(v6 + 8))(v5, v7);
  if (v1)
  {
    v9 = sub_1003CB5B0;
  }

  else
  {
    v9 = sub_1003CB1B0;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1003CB1B0(uint64_t a1)
{
  v12 = v1;
  v2 = v1[18];
  if (v2)
  {
    v3 = swift_task_alloc();
    v1[20] = v3;
    *v3 = v1;
    v3[1] = sub_1003CB3A4;

    return sub_1003CB690(v2);
  }

  else
  {
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v11 = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_10000D01C(0xD000000000000013, 0x80000001004E6CD0, &v11);
      _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s cannot generate owner token!", v7, 0xCu);
      sub_100004984(v8);
    }

    sub_1003DA6A0();
    swift_allocError();
    *v9 = 18;
    swift_willThrow();

    v10 = v1[1];

    return v10();
  }
}

uint64_t sub_1003CB3A4()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_1003CB61C;
  }

  else
  {
    v4 = sub_1003CB4D0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1003CB4D0()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1003CB544()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003CB5B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003CB61C()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1003CB690(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v2[5] = swift_task_alloc();
  v3 = sub_10004B564(&qword_1005B3220, &qword_1004D80F8);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = sub_10004B564(&qword_1005B3228, &qword_1004D8100);
  v2[9] = v4;
  v5 = *(v4 - 8);
  v2[10] = v5;
  v2[11] = *(v5 + 64);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  sub_10004B564(&qword_1005B31F8, &qword_1004D8018);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_1003CB888, v1, 0);
}

uint64_t sub_1003CB888()
{
  v1 = *(v0 + 128);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = sub_10004B564(&qword_1005AD558, &qword_1004D7EE0);
  *(v0 + 136) = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 56);
  *(v0 + 144) = v6;
  *(v0 + 152) = (v5 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v6(v1, 1, 1, v4);
  *(v0 + 160) = sub_1000545A4(0, &qword_1005B31F0, NINearbyObject_ptr);
  *(swift_task_alloc() + 16) = v1;
  *(v0 + 224) = enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:);
  v7 = *(v3 + 104);
  *(v0 + 168) = v7;
  *(v0 + 176) = (v3 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v7(v2);
  AsyncStream.init(_:bufferingPolicy:_:)();

  v8 = swift_task_alloc();
  *(v0 + 184) = v8;
  *v8 = v0;
  v8[1] = sub_1003CBA34;

  return daemon.getter();
}

uint64_t sub_1003CBA34(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 192) = a1;

  v3 = swift_task_alloc();
  *(v2 + 200) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for FriendshipService(0);
  v6 = sub_1003DA8C4(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1003DA8C4(&qword_1005AA6E0, type metadata accessor for FriendshipService, &unk_1004D2BF8);
  *v3 = v9;
  v3[1] = sub_1003CBC10;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1003CBC10(uint64_t a1)
{
  v4 = *v2;
  v4[26] = v1;

  v5 = v4[3];
  if (v1)
  {
    v6 = sub_1003CC180;
  }

  else
  {
    v4[27] = a1;
    v6 = sub_1003CBD68;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1003CBD68()
{
  v28 = *(v0 + 216);
  v22 = *(v0 + 224);
  v23 = *(v0 + 168);
  v17 = *(v0 + 144);
  v16 = *(v0 + 136);
  v27 = *(v0 + 128);
  v1 = *(v0 + 112);
  v29 = *(v0 + 120);
  v25 = v1;
  v2 = *(v0 + 104);
  v24 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v5 = *(v0 + 72);
  v30 = *(v0 + 64);
  v6 = *(v0 + 40);
  v19 = *(v0 + 48);
  v14 = v6;
  v31 = *(v0 + 32);
  v26 = *(v0 + 16);
  v21 = type metadata accessor for TaskPriority();
  v20 = *(*(v21 - 8) + 56);
  v20(v6, 1, 1, v21);
  v18 = *(v3 + 16);
  v18(v2, v1, v5);
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v8 = (((v4 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  v15 = *(v3 + 32);
  v15(v9 + v7, v2, v5);
  *(v9 + ((v4 + v7 + 7) & 0xFFFFFFFFFFFFFFF8)) = v28;
  *(v9 + v8) = v31;

  sub_1001D7F30(0, 0, v6, &unk_1004D8110, v9);

  v17(v29, 1, 1, v16);
  *(swift_task_alloc() + 16) = v29;
  v23(v30, v22, v19);
  AsyncStream.init(_:bufferingPolicy:_:)();

  v20(v6, 1, 1, v21);
  v18(v24, v2, v5);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  v15(v10 + v7, v24, v5);
  *(v10 + ((v4 + v7 + 7) & 0xFFFFFFFFFFFFFFF8)) = v28;
  *(v10 + v8) = v31;

  sub_1001D7F30(0, 0, v14, &unk_1004D8120, v10);

  sub_1003DA9B0(v26, v27, v29);

  v11 = *(v3 + 8);
  v11(v2, v5);
  v11(v25, v5);
  sub_100002CE0(v29, &qword_1005B31F8, &qword_1004D8018);
  sub_100002CE0(v27, &qword_1005B31F8, &qword_1004D8018);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1003CC180()
{
  v1 = v0[16];
  (*(v0[10] + 8))(v0[14], v0[9]);
  sub_100002CE0(v1, &qword_1005B31F8, &qword_1004D8018);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1003CC270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v6 = sub_10004B564(&qword_1005B3230, &qword_1004D8128);
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();

  return _swift_task_switch(sub_1003CC33C, 0, 0);
}

uint64_t sub_1003CC33C()
{
  sub_10004B564(&qword_1005B3228, &qword_1004D8100);
  AsyncStream.makeAsyncIterator()();
  v0[9] = 0;
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_1003CC40C;
  v2 = v0[6];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, 0, 0, v2);
}

uint64_t sub_1003CC40C()
{

  return _swift_task_switch(sub_1003CC508, 0, 0);
}

uint64_t sub_1003CC508(uint64_t a1)
{
  v23 = v1;
  v2 = v1[2];
  v1[11] = v2;
  if (!v2)
  {
    (*(v1[7] + 8))(v1[8], v1[6]);
LABEL_16:

    v21 = v1[1];

    return v21();
  }

  v3 = v1[9];
  static Task<>.checkCancellation()();
  v1[12] = v3;
  if (v3)
  {
    (*(v1[7] + 8))(v1[8], v1[6]);

    if (qword_1005A8520 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000A6F0(v4, qword_1005E0BF0);
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v22 = v8;
      *v7 = 136446210;
      v1[3] = v3;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v9 = String.init<A>(describing:)();
      v11 = sub_10000D01C(v9, v10, &v22);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "Discover stream error: %{public}s", v7, 0xCu);
      sub_100004984(v8);
    }

    else
    {
    }

    goto LABEL_16;
  }

  if (qword_1005A8520 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000A6F0(v12, qword_1005E0BF0);
  v13 = v2;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 141558275;
    *(v16 + 4) = 1752392040;
    *(v16 + 12) = 2113;
    *(v16 + 14) = v13;
    *v17 = v2;
    v18 = v13;
    _os_log_impl(&_mh_execute_header, v14, v15, "discoverStream: %{private,mask.hash}@", v16, 0x16u);
    sub_100002CE0(v17, &qword_1005A9670, &unk_1004C2480);
  }

  v19 = swift_task_alloc();
  v1[13] = v19;
  *v19 = v1;
  v19[1] = sub_1003CC8C4;

  return sub_1002B9A14(v13);
}

uint64_t sub_1003CC8C4()
{

  return _swift_task_switch(sub_1003CC9C0, 0, 0);
}

uint64_t sub_1003CC9C0()
{
  *(v0 + 72) = *(v0 + 96);
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1003CC40C;
  v2 = *(v0 + 48);

  return AsyncStream.Iterator.next(isolation:)(v0 + 16, 0, 0, v2);
}

uint64_t sub_1003CCA78(uint64_t a1, uint64_t a2)
{
  sub_100002CE0(a2, &qword_1005B31F8, &qword_1004D8018);
  v4 = sub_10004B564(&qword_1005AD558, &qword_1004D7EE0);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t sub_1003CCB54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v6 = sub_10004B564(&qword_1005B3230, &qword_1004D8128);
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();

  return _swift_task_switch(sub_1003CCC20, 0, 0);
}

uint64_t sub_1003CCC20()
{
  sub_10004B564(&qword_1005B3228, &qword_1004D8100);
  AsyncStream.makeAsyncIterator()();
  v0[9] = 0;
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_1003CCCF0;
  v2 = v0[6];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, 0, 0, v2);
}

uint64_t sub_1003CCCF0()
{

  return _swift_task_switch(sub_1003CCDEC, 0, 0);
}

uint64_t sub_1003CCDEC(uint64_t a1)
{
  v23 = v1;
  v2 = v1[2];
  v1[11] = v2;
  if (!v2)
  {
    (*(v1[7] + 8))(v1[8], v1[6]);
LABEL_16:

    v21 = v1[1];

    return v21();
  }

  v3 = v1[9];
  static Task<>.checkCancellation()();
  v1[12] = v3;
  if (v3)
  {
    (*(v1[7] + 8))(v1[8], v1[6]);

    if (qword_1005A8520 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000A6F0(v4, qword_1005E0BF0);
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v22 = v8;
      *v7 = 136446210;
      v1[3] = v3;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v9 = String.init<A>(describing:)();
      v11 = sub_10000D01C(v9, v10, &v22);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "Update stream error: %{public}s", v7, 0xCu);
      sub_100004984(v8);
    }

    else
    {
    }

    goto LABEL_16;
  }

  if (qword_1005A8520 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000A6F0(v12, qword_1005E0BF0);
  v13 = v2;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 141558275;
    *(v16 + 4) = 1752392040;
    *(v16 + 12) = 2113;
    *(v16 + 14) = v13;
    *v17 = v2;
    v18 = v13;
    _os_log_impl(&_mh_execute_header, v14, v15, "updateStream: %{private,mask.hash}@", v16, 0x16u);
    sub_100002CE0(v17, &qword_1005A9670, &unk_1004C2480);
  }

  v19 = swift_task_alloc();
  v1[13] = v19;
  *v19 = v1;
  v19[1] = sub_1003CD1A8;

  return sub_1002BA904(v13);
}

uint64_t sub_1003CD1A8()
{

  return _swift_task_switch(sub_1003CD2A4, 0, 0);
}

uint64_t sub_1003CD2A4()
{
  *(v0 + 72) = *(v0 + 96);
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1003CCCF0;
  v2 = *(v0 + 48);

  return AsyncStream.Iterator.next(isolation:)(v0 + 16, 0, 0, v2);
}

uint64_t sub_1003CD37C()
{
  v16 = v0;
  My = type metadata accessor for Feature.FindMy();
  v0[5] = My;
  v0[6] = sub_1003DA8C4(&qword_1005A9EE8, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v2 = sub_10000331C(v0 + 2);
  (*(*(My - 8) + 104))(v2, enum case for Feature.FindMy.redStripe(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100004984(v0 + 2);
  if (My)
  {
    if (qword_1005A8520 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000A6F0(v3, qword_1005E0BF0);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v15 = v7;
      *v6 = 136446210;
      *(v6 + 4) = sub_10000D01C(0x676E6152706F7473, 0xED00002928676E69, &v15);
      _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s", v6, 0xCu);
      sub_100004984(v7);
    }

    sub_1003DAB8C();
  }

  else
  {
    if (qword_1005A8520 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000A6F0(v8, qword_1005E0BF0);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v15 = v12;
      *v11 = 136446210;
      *(v11 + 4) = sub_10000D01C(0x676E6152706F7473, 0xED00002928676E69, &v15);
      _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s Feature.FindMy.redStripe FF disabled.", v11, 0xCu);
      sub_100004984(v12);
    }
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1003CD6B0()
{

  sub_100002CE0(v0 + OBJC_IVAR____TtC13findmylocated16NIRangingService_discoverContinuation, &qword_1005B31F8, &qword_1004D8018);
  sub_100002CE0(v0 + OBJC_IVAR____TtC13findmylocated16NIRangingService_updateContinuation, &qword_1005B31F8, &qword_1004D8018);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for NIRangingService(uint64_t a1)
{
  result = qword_1005B30A8;
  if (!qword_1005B30A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003CD794(uint64_t a1)
{
  sub_1003CD844(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1003CD844(uint64_t a1)
{
  if (!qword_1005B30B8)
  {
    sub_10004B610(&qword_1005AD558, &qword_1004D7EE0);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1005B30B8);
    }
  }
}

uint64_t sub_1003CD8A8(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for NIRangingService(0);
  *v4 = v2;
  v4[1] = sub_10000368C;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v5, a2);
}

uint64_t sub_1003CD954(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for NIRangingService(0);
  *v4 = v2;
  v4[1] = sub_10000368C;

  return ActorServiceProtocol.startup()(v5, a2);
}

uint64_t sub_1003CDA00()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003690;

  return sub_1003C6F10();
}

uint64_t sub_1003CDA8C()
{
  type metadata accessor for NIRangingService(0);
  sub_1003DA8C4(&qword_1005AD560, type metadata accessor for NIRangingService, &unk_1004D7F50);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_1003CDAF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return _swift_task_switch(sub_1003CDB1C, v3, 0);
}

uint64_t sub_1003CDB1C()
{
  v26 = v0;
  My = type metadata accessor for Feature.FindMy();
  v0[5] = My;
  v0[6] = sub_1003DA8C4(&qword_1005A9EE8, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v2 = sub_10000331C(v0 + 2);
  (*(*(My - 8) + 104))(v2, enum case for Feature.FindMy.redStripe(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100004984(v0 + 2);
  if (My)
  {
    if (qword_1005A8520 != -1)
    {
      swift_once();
    }

    v3 = v0[7];
    v4 = type metadata accessor for Logger();
    sub_10000A6F0(v4, qword_1005E0BF0);
    v5 = v3;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = v0[7];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v25 = v11;
      *v9 = 136446723;
      *(v9 + 4) = sub_10000D01C(0xD00000000000003DLL, 0x80000001004E96C0, &v25);
      *(v9 + 12) = 2160;
      *(v9 + 14) = 1752392040;
      *(v9 + 22) = 2113;
      *(v9 + 24) = v8;
      *v10 = v8;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s token: %{private,mask.hash}@", v9, 0x20u);
      sub_100002CE0(v10, &qword_1005A9670, &unk_1004C2480);

      sub_100004984(v11);
    }

    v13 = *(v0[10] + 128);
    v0[11] = v13;
    if (v13)
    {
      v13;
      v14 = swift_task_alloc();
      v0[12] = v14;
      *v14 = v0;
      v14[1] = sub_1003CDF5C;
      v15 = v0[8];
      v16 = v0[9];
      v17 = v0[7];

      return sub_1003CE068(v17, v15, v16);
    }
  }

  else
  {
    if (qword_1005A8520 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000A6F0(v19, qword_1005E0BF0);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v25 = v23;
      *v22 = 136446210;
      *(v22 + 4) = sub_10000D01C(0xD00000000000003DLL, 0x80000001004E96C0, &v25);
      _os_log_impl(&_mh_execute_header, v20, v21, "%{public}s Feature.FindMy.redStripe FF disabled.", v22, 0xCu);
      sub_100004984(v23);
    }
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_1003CDF5C()
{
  v1 = *(*v0 + 88);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1003CE068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for Handle();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v4[8] = *(v6 + 64);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_1003CE140, 0, 0);
}

uint64_t sub_1003CE140()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[6];
  v6 = v0[3];
  v17 = v2;
  v18 = v0[4];
  v19 = v0[2];
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = *(v3 + 16);
  v8(v1, v6, v5);
  v8(v2, v18, v5);
  v9 = *(v3 + 80);
  v10 = (v9 + 32) & ~v9;
  v11 = (v4 + v9 + v10) & ~v9;
  v12 = swift_allocObject();
  *(v12 + 16) = v7;
  *(v12 + 24) = v19;
  v13 = *(v3 + 32);
  v13(v12 + v10, v1, v5);
  v13(v12 + v11, v17, v5);

  v14 = v19;
  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v15 = v0[1];

  return v15();
}

uint64_t sub_1003CE300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = type metadata accessor for Handle();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();

  return _swift_task_switch(sub_1003CE3C4, v3, 0);
}

uint64_t sub_1003CE3C4()
{
  v30 = v0;
  My = type metadata accessor for Feature.FindMy();
  v0[5] = My;
  v0[6] = sub_1003DA8C4(&qword_1005A9EE8, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v2 = sub_10000331C(v0 + 2);
  (*(*(My - 8) + 104))(v2, enum case for Feature.FindMy.redStripe(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100004984(v0 + 2);
  if (My)
  {
    if (qword_1005A8520 != -1)
    {
      swift_once();
    }

    v4 = v0[12];
    v3 = v0[13];
    v5 = v0[11];
    v6 = v0[7];
    v7 = type metadata accessor for Logger();
    sub_10000A6F0(v7, qword_1005E0BF0);
    (*(v4 + 16))(v3, v6, v5);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    v10 = os_log_type_enabled(v8, v9);
    v12 = v0[12];
    v11 = v0[13];
    v13 = v0[11];
    if (v10)
    {
      v14 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v14 = 136446723;
      *(v14 + 4) = sub_10000D01C(0xD000000000000032, 0x80000001004E97E0, &v29);
      *(v14 + 12) = 2160;
      *(v14 + 14) = 1752392040;
      *(v14 + 22) = 2081;
      v15 = Handle.identifier.getter();
      v17 = v16;
      (*(v12 + 8))(v11, v13);
      v18 = sub_10000D01C(v15, v17, &v29);

      *(v14 + 24) = v18;
      _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s with handle: %{private,mask.hash}s", v14, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v12 + 8))(v11, v13);
    }

    v24 = *(v0[10] + 128);
    if (v24)
    {
      v25 = v0[7];
      v26 = v24;
      sub_1003CE7EC(v25);
    }
  }

  else
  {
    if (qword_1005A8520 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000A6F0(v19, qword_1005E0BF0);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v29 = v23;
      *v22 = 136446210;
      *(v22 + 4) = sub_10000D01C(0xD000000000000032, 0x80000001004E97E0, &v29);
      _os_log_impl(&_mh_execute_header, v20, v21, "%{public}s Feature.FindMy.redStripe FF disabled.", v22, 0xCu);
      sub_100004984(v23);
    }
  }

  v27 = v0[1];

  return v27();
}

void sub_1003CE7EC(uint64_t a1)
{
  v2 = type metadata accessor for Handle();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = objc_allocWithZone(NIDiscoveryToken);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v7 = [v5 initWithBytes:isa];

  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v3 + 16))(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v7;
  (*(v3 + 32))(v10 + v9, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);

  v11 = v7;
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_1003CE9D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[13] = a5;
  v6[14] = v5;
  v6[11] = a3;
  v6[12] = a4;
  v6[9] = a1;
  v6[10] = a2;
  v6[15] = sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();

  return _swift_task_switch(sub_1003CEA84, v5, 0);
}

uint64_t sub_1003CEA84()
{
  v45 = v0;
  My = type metadata accessor for Feature.FindMy();
  v0[5] = My;
  v0[6] = sub_1003DA8C4(&qword_1005A9EE8, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v2 = sub_10000331C(v0 + 2);
  (*(*(My - 8) + 104))(v2, enum case for Feature.FindMy.redStripe(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100004984(v0 + 2);
  if (My)
  {
    v3 = objc_allocWithZone(NIDiscoveryToken);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v5 = [v3 initWithBytes:isa];
    v0[18] = v5;

    if (qword_1005A8520 != -1)
    {
      swift_once();
    }

    v6 = v0[17];
    v7 = v0[13];
    v9 = v0[9];
    v8 = v0[10];
    v10 = type metadata accessor for Logger();
    sub_10000A6F0(v10, qword_1005E0BF0);
    sub_100005F04(v7, v6, &qword_1005B3360, &unk_1004C6AA0);

    sub_100005F6C(v9, v8);
    v11 = v5;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    sub_1000049D0(v9, v8);

    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[17];
    if (v14)
    {
      v43 = v0[16];
      v16 = v0[14];
      v17 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v17 = 136448003;
      *(v17 + 4) = sub_10000D01C(0xD00000000000002CLL, 0x80000001004E9750, &v44);
      *(v17 + 12) = 2080;
      v18 = swift_allocObject();
      *(v18 + 16) = &unk_1004D8070;
      *(v18 + 24) = v16;
      v0[7] = &unk_1004D8080;
      v0[8] = v18;

      sub_10004B564(&qword_1005B3218, &qword_1004D8088);
      v19 = String.init<A>(describing:)();
      v21 = sub_10000D01C(v19, v20, &v44);

      *(v17 + 14) = v21;
      *(v17 + 22) = 2160;
      *(v17 + 24) = 1752392040;
      *(v17 + 32) = 2081;
      v22 = Data.description.getter();
      v24 = sub_10000D01C(v22, v23, &v44);

      *(v17 + 34) = v24;
      *(v17 + 42) = 2160;
      *(v17 + 44) = 1752392040;
      *(v17 + 52) = 2113;
      *(v17 + 54) = v11;
      *v42 = v11;
      *(v17 + 62) = 2160;
      *(v17 + 64) = 1752392040;
      *(v17 + 72) = 2081;
      sub_100005F04(v15, v43, &qword_1005B3360, &unk_1004C6AA0);
      v25 = v11;
      v26 = String.init<A>(describing:)();
      v28 = v27;
      sub_100002CE0(v15, &qword_1005B3360, &unk_1004C6AA0);
      v29 = sub_10000D01C(v26, v28, &v44);

      *(v17 + 74) = v29;
      _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s \n\ncached ConfigData: %s\nreceived configData:%{private,mask.hash}s\npeerToken: %{private,mask.hash}@\nreplyHandle: %{private,mask.hash}s", v17, 0x52u);
      sub_100002CE0(v42, &qword_1005A9670, &unk_1004C2480);

      swift_arrayDestroy();
    }

    else
    {

      sub_100002CE0(v15, &qword_1005B3360, &unk_1004C6AA0);
    }

    v35 = *(v0[14] + 128);
    v0[19] = v35;
    if (v35)
    {
      v35;
      v36 = swift_task_alloc();
      v0[20] = v36;
      *v36 = v0;
      v36[1] = sub_1003CF118;
      v37 = v0[13];
      v39 = v0[9];
      v38 = v0[10];

      return sub_1003CF494(v39, v38, v11, v37);
    }
  }

  else
  {
    if (qword_1005A8520 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_10000A6F0(v30, qword_1005E0BF0);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v44 = v34;
      *v33 = 136446210;
      *(v33 + 4) = sub_10000D01C(0xD00000000000002CLL, 0x80000001004E9750, &v44);
      _os_log_impl(&_mh_execute_header, v31, v32, "%{public}s Feature.FindMy.redStripe FF disabled.", v33, 0xCu);
      sub_100004984(v34);
    }
  }

  v41 = v0[1];

  return v41();
}

uint64_t sub_1003CF118()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 112);

  return _swift_task_switch(sub_1003CF240, v2, 0);
}

uint64_t sub_1003CF240()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003CF2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_10000368C;

  return sub_1003CE9D0(a1, a2, a3, a4, a5);
}

uint64_t sub_1003CF378(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, int *a5)
{
  v7 = *a2;
  v8 = a2[1];
  v9 = *a3;
  v10 = a3[1];
  v13 = (a5 + *a5);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_100003690;

  return v13(v7, v8, v9, v10, a4);
}

uint64_t sub_1003CF494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
  v5[7] = swift_task_alloc();
  v6 = type metadata accessor for Handle();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();

  return _swift_task_switch(sub_1003CF594, 0, 0);
}

uint64_t sub_1003CF594()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  sub_100005F04(v0[5], v3, &qword_1005B3360, &unk_1004C6AA0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[3];
    v5 = v0[4];
    v6 = v0[2];
    sub_100002CE0(v0[7], &qword_1005B3360, &unk_1004C6AA0);
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = v5;
    v8[4] = v6;
    v8[5] = v4;

    v9 = v5;
    sub_100005F6C(v6, v4);
    dispatch thunk of WorkItemQueue.enqueue(_:)();

    v10 = v0[1];

    return v10();
  }

  else
  {
    (*(v0[9] + 32))(v0[10], v0[7], v0[8]);
    v12 = swift_task_alloc();
    v0[11] = v12;
    *v12 = v0;
    v12[1] = sub_1003CF7CC;
    v13 = v0[10];
    v14 = v0[3];
    v15 = v0[4];
    v16 = v0[2];

    return sub_1003D6578(v15, v13, v16, v14);
  }
}

uint64_t sub_1003CF7CC()
{

  return _swift_task_switch(sub_1003CF8C8, 0, 0);
}

uint64_t sub_1003CF8C8()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1003CF94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v7 = type metadata accessor for UUID();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();
  sub_10004B564(&qword_1005A96E0, &qword_1004C2A80);
  v6[12] = swift_task_alloc();
  v8 = type metadata accessor for MessagingOptions();
  v6[13] = v8;
  v6[14] = *(v8 - 8);
  v6[15] = swift_task_alloc();
  v9 = sub_10004B564(&qword_1005A92B0, &qword_1004D8050);
  v6[16] = v9;
  v6[17] = *(v9 - 8);
  v6[18] = swift_task_alloc();
  v6[19] = type metadata accessor for FindingConfigEnvelopeV1(0);
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v10 = type metadata accessor for Handle();
  v6[23] = v10;
  v6[24] = *(v10 - 8);
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();

  return _swift_task_switch(sub_1003CFBC0, v5, 0);
}

uint64_t sub_1003CFBC0()
{
  v23 = v0;
  if (qword_1005A8520 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[24];
  v4 = v0[6];
  v5 = type metadata accessor for Logger();
  v0[27] = sub_10000A6F0(v5, qword_1005E0BF0);
  v6 = *(v3 + 16);
  v0[28] = v6;
  v0[29] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[26];
  v11 = v0[23];
  v12 = v0[24];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_1003DA8C4(&qword_1005B02C8, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_10000D01C(v14, v16, &v22);

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Sending config data to handle %{private,mask.hash}s over IDS.", v13, 0x16u);
    sub_100004984(v21);
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[30] = v17;
  v19 = swift_task_alloc();
  v0[31] = v19;
  *v19 = v0;
  v19[1] = sub_1003CFE54;

  return daemon.getter();
}

uint64_t sub_1003CFE54(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 256) = a1;

  v3 = swift_task_alloc();
  *(v2 + 264) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = sub_10004B564(&qword_1005A90E0, &qword_1004C2490);
  v6 = sub_1003DA8C4(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10005A3CC();
  *v3 = v9;
  v3[1] = sub_1003D000C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1003D000C(uint64_t a1)
{
  v3 = *v2;
  v3[34] = a1;
  v3[35] = v1;

  if (v1)
  {
    v4 = v3[8];
    v5 = sub_1003D0E80;
  }

  else
  {
    v6 = v3[8];

    v5 = sub_1003D0134;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1003D0134()
{
  v44 = v0;
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 152);
  v4 = *(v0 + 56);
  v5 = *(v0 + 32);
  v6 = *(v0 + 24);
  v7 = [*(v0 + 40) rawToken];
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  sub_100005F04(v4, v1 + *(v3 + 24), &qword_1005B3360, &unk_1004C6AA0);
  *v1 = v6;
  v1[1] = v5;
  v1[2] = v8;
  v1[3] = v10;
  sub_1003DA15C(v1, v2, type metadata accessor for FindingConfigEnvelopeV1);
  sub_100005F6C(v6, v5);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 168);
  if (v13)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v43[0] = v16;
    *v15 = 141558275;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2081;
    v17 = sub_1002E8304();
    v19 = v18;
    sub_1003DA1C4(v14, type metadata accessor for FindingConfigEnvelopeV1);
    v20 = sub_10000D01C(v17, v19, v43);

    *(v15 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "Sending config data envelope %{private,mask.hash}s over IDS.", v15, 0x16u);
    sub_100004984(v16);
  }

  else
  {

    sub_1003DA1C4(v14, type metadata accessor for FindingConfigEnvelopeV1);
  }

  v21 = *(v0 + 280);
  v22 = *(v0 + 176);
  v23 = *(v0 + 160);
  *(v0 + 304) = 4;
  sub_1003DA15C(v22, v23, type metadata accessor for FindingConfigEnvelopeV1);
  sub_10006DFA4();
  sub_1003DA8C4(&qword_1005B3208, type metadata accessor for FindingConfigEnvelopeV1, &unk_1004D4050);
  sub_1003DA8C4(&qword_1005B3210, type metadata accessor for FindingConfigEnvelopeV1, &unk_1004D4028);
  Message.init<A>(type:version:payload:)();
  if (v21)
  {
    sub_1003DA1C4(*(v0 + 176), type metadata accessor for FindingConfigEnvelopeV1);

    (*(v0 + 224))(*(v0 + 200), *(v0 + 48), *(v0 + 184));
    swift_errorRetain();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v0 + 240);
    v28 = *(v0 + 200);
    v29 = *(v0 + 184);
    if (v26)
    {
      v42 = v25;
      v30 = swift_slowAlloc();
      v43[0] = swift_slowAlloc();
      *v30 = 141558531;
      *(v30 + 4) = 1752392040;
      *(v30 + 12) = 2081;
      sub_1003DA8C4(&qword_1005B02C8, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v32;
      v27(v28, v29);
      v34 = sub_10000D01C(v31, v33, v43);

      *(v30 + 14) = v34;
      *(v30 + 22) = 2082;
      *(v0 + 16) = v21;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v35 = String.init<A>(describing:)();
      v37 = sub_10000D01C(v35, v36, v43);

      *(v30 + 24) = v37;
      _os_log_impl(&_mh_execute_header, v24, v42, "Sending configData to handle %{private,mask.hash}s\nfailed: %{public}s", v30, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v27(v28, v29);
    }

    v39 = *(v0 + 8);

    return v39();
  }

  else
  {
    sub_10004B564(&qword_1005A9270, &qword_1004C5810);
    type metadata accessor for Destination();
    *(swift_allocObject() + 16) = xmmword_1004C1900;
    v38 = Handle.isPhoneNumber.getter();
    Handle.identifier.getter();
    if (v38)
    {
      Destination.init(phoneNumber:)();
    }

    else
    {
      Destination.init(email:)();
    }

    v41 = *(v0 + 272);
    (*(*(v0 + 80) + 56))(*(v0 + 96), 1, 1, *(v0 + 72));
    sub_100293190(_swiftEmptyArrayStorage);
    sub_100293190(_swiftEmptyArrayStorage);
    MessagingOptions.init(destinations:expectsPeerResponse:responseIdentifier:timeToLive:fireAndForget:requiredCapabilities:lackingCapabilities:queueOneIdentifier:)();

    return _swift_task_switch(sub_1003D0828, v41, 0);
  }
}

uint64_t sub_1003D0828()
{
  v1 = swift_task_alloc();
  v0[36] = v1;
  *v1 = v0;
  v1[1] = sub_1003D08D0;
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[11];

  return InternetMessaging.send(message:messageOptions:)(v4, v2, v3);
}

uint64_t sub_1003D08D0()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = v2[8];
    v4 = sub_1003D0B34;
  }

  else
  {
    v5 = v2[8];
    (*(v2[10] + 8))(v2[11], v2[9]);
    v4 = sub_1003D0A04;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1003D0A04()
{
  v1 = v0[22];
  v3 = v0[17];
  v2 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[13];
  v7 = v0[14];

  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);
  sub_1003DA1C4(v1, type metadata accessor for FindingConfigEnvelopeV1);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1003D0B34()
{
  v28 = v0;
  v1 = *(v0 + 176);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v5 = *(v0 + 120);
  v4 = *(v0 + 128);
  v6 = *(v0 + 104);
  v7 = *(v0 + 112);

  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);
  sub_1003DA1C4(v1, type metadata accessor for FindingConfigEnvelopeV1);
  v8 = *(v0 + 296);
  (*(v0 + 224))(*(v0 + 200), *(v0 + 48), *(v0 + 184));
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 200);
    v26 = *(v0 + 240);
    v12 = *(v0 + 184);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 141558531;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_1003DA8C4(&qword_1005B02C8, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v26(v11, v12);
    v17 = sub_10000D01C(v14, v16, &v27);

    *(v13 + 14) = v17;
    *(v13 + 22) = 2082;
    *(v0 + 16) = v8;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v18 = String.init<A>(describing:)();
    v20 = sub_10000D01C(v18, v19, &v27);

    *(v13 + 24) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "Sending configData to handle %{private,mask.hash}s\nfailed: %{public}s", v13, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v21 = *(v0 + 240);
    v22 = *(v0 + 200);
    v23 = *(v0 + 184);

    v21(v22, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1003D0E80()
{
  v21 = v0;

  v1 = *(v0 + 280);
  (*(v0 + 224))(*(v0 + 200), *(v0 + 48), *(v0 + 184));
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 200);
    v19 = *(v0 + 240);
    v5 = *(v0 + 184);
    v6 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v6 = 141558531;
    *(v6 + 4) = 1752392040;
    *(v6 + 12) = 2081;
    sub_1003DA8C4(&qword_1005B02C8, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = v8;
    v19(v4, v5);
    v10 = sub_10000D01C(v7, v9, &v20);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2082;
    *(v0 + 16) = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v11 = String.init<A>(describing:)();
    v13 = sub_10000D01C(v11, v12, &v20);

    *(v6 + 24) = v13;
    _os_log_impl(&_mh_execute_header, v2, v3, "Sending configData to handle %{private,mask.hash}s\nfailed: %{public}s", v6, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v14 = *(v0 + 240);
    v15 = *(v0 + 200);
    v16 = *(v0 + 184);

    v14(v15, v16);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1003D1170(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v2[5] = sub_10004B564(&qword_1005B0F30, &qword_1004D3308);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v2[9] = swift_task_alloc();
  v3 = type metadata accessor for Date();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  sub_10004B564(&qword_1005AEB98, &unk_1004D07C0);
  v2[14] = swift_task_alloc();
  v4 = type metadata accessor for SharedSecretKey();
  v2[15] = v4;
  v2[16] = *(v4 - 8);
  v2[17] = swift_task_alloc();
  sub_10004B564(&unk_1005AECE8, &qword_1004D07A0);
  v2[18] = swift_task_alloc();
  v5 = type metadata accessor for FriendSharedSecretsRecord(0);
  v2[19] = v5;
  v2[20] = *(v5 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  sub_10004B564(&qword_1005A96E0, &qword_1004C2A80);
  v2[23] = swift_task_alloc();
  v6 = type metadata accessor for Handle();
  v2[24] = v6;
  v2[25] = *(v6 - 8);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v2[30] = v7;
  v2[31] = *(v7 - 8);
  v2[32] = swift_task_alloc();
  v8 = type metadata accessor for Friend();
  v2[33] = v8;
  v2[34] = *(v8 - 8);
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  sub_10004B564(&qword_1005A9188, &unk_1004D80D0);
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v9 = swift_task_alloc();
  v2[40] = v9;
  *v9 = v2;
  v9[1] = sub_1003D15F8;

  return daemon.getter();
}

uint64_t sub_1003D15F8(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[41] = a1;

  v3 = swift_task_alloc();
  v2[42] = v3;
  v4 = type metadata accessor for Daemon();
  v2[43] = v4;
  v5 = type metadata accessor for DataManager(0);
  v6 = sub_1003DA8C4(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[44] = v6;
  v7 = sub_1003DA8C4(&qword_1005A90D0, type metadata accessor for DataManager, &unk_1004D1410);
  *v3 = v9;
  v3[1] = sub_1003D17D8;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1003D17D8(uint64_t a1)
{
  v3 = *v2;
  v3[45] = a1;
  v3[46] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1003D40E0, 0, 0);
  }

  else
  {

    v4 = swift_task_alloc();
    v3[47] = v4;
    *v4 = v3;
    v4[1] = sub_1003D194C;

    return daemon.getter();
  }
}

uint64_t sub_1003D194C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 384) = a1;

  v5 = swift_task_alloc();
  *(v3 + 392) = v5;
  v6 = type metadata accessor for CloudStorageService();
  v7 = sub_1003DA8C4(&qword_1005AD568, type metadata accessor for CloudStorageService, &unk_1004D03B0);
  *v5 = v4;
  v5[1] = sub_1003D1B00;
  v8 = *(v2 + 352);
  v9 = *(v2 + 344);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_1003D1B00(uint64_t a1)
{
  v3 = *v2;
  v3[50] = a1;
  v3[51] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1003D44F4, 0, 0);
  }

  else
  {

    v4 = swift_task_alloc();
    v3[52] = v4;
    *v4 = v3;
    v4[1] = sub_1003D1C74;

    return daemon.getter();
  }
}

uint64_t sub_1003D1C74(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 424) = a1;

  v5 = swift_task_alloc();
  *(v3 + 432) = v5;
  v6 = type metadata accessor for NITokenService(0);
  v7 = sub_1003DA8C4(&qword_1005AD548, type metadata accessor for NITokenService, &unk_1004D8368);
  *v5 = v4;
  v5[1] = sub_1003D1E28;
  v8 = *(v2 + 352);
  v9 = *(v2 + 344);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_1003D1E28(uint64_t a1)
{
  v3 = *v2;
  v3[55] = a1;
  v3[56] = v1;

  if (v1)
  {
    v4 = sub_1003D4914;
    v5 = 0;
  }

  else
  {
    v6 = v3[45];

    v4 = sub_1003D1F50;
    v5 = v6;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1003D1F50()
{
  sub_10004B564(&qword_1005A92A8, &qword_1004C4330);
  v1 = type metadata accessor for HandleType();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v0 + 456) = v4;
  *(v4 + 16) = xmmword_1004C1900;
  (*(v2 + 104))(v4 + v3, enum case for HandleType.follower(_:), v1);
  v5 = swift_task_alloc();
  *(v0 + 464) = v5;
  *v5 = v0;
  v5[1] = sub_1003D20B4;

  return sub_10001C61C(v4, 1);
}

uint64_t sub_1003D20B4(uint64_t a1)
{
  *(*v1 + 472) = a1;

  return _swift_task_switch(sub_1003D21D4, 0, 0);
}

uint64_t sub_1003D21D4()
{
  v63 = v0;
  v1 = v0[59];
  v3 = v0[38];
  v2 = v0[39];
  v4 = v0[33];
  v5 = v0[34];
  v6 = v0[4];
  *(swift_task_alloc() + 16) = v6;
  sub_10044FE2C(sub_1003DA13C, v1, v2);

  sub_100005F04(v2, v3, &qword_1005A9188, &unk_1004D80D0);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_100002CE0(v0[38], &qword_1005A9188, &unk_1004D80D0);
    if (qword_1005A8520 != -1)
    {
      swift_once();
    }

    v7 = v0[27];
    v8 = v0[24];
    v9 = v0[25];
    v10 = v0[4];
    v11 = type metadata accessor for Logger();
    sub_10000A6F0(v11, qword_1005E0BF0);
    (*(v9 + 16))(v7, v10, v8);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[39];
    v16 = v0[27];
    v18 = v0[24];
    v17 = v0[25];
    if (!v14)
    {

      (*(v17 + 8))(v16, v18);
      v51 = v15;
      goto LABEL_17;
    }

    v19 = swift_slowAlloc();
    v61 = v15;
    v20 = swift_slowAlloc();
    v62[0] = v20;
    *v19 = 141558275;
    *(v19 + 4) = 1752392040;
    *(v19 + 12) = 2081;
    v21 = Handle.identifier.getter();
    v23 = v22;
    (*(v17 + 8))(v16, v18);
    v24 = sub_10000D01C(v21, v23, v62);

    *(v19 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v12, v13, "Findee has no such follower with peer %{private,mask.hash}s", v19, 0x16u);
    sub_100004984(v20);

LABEL_11:
    v51 = v61;
LABEL_17:
    sub_100002CE0(v51, &qword_1005A9188, &unk_1004D80D0);
    v57 = v0[3];
    v58 = type metadata accessor for DiscoveryToken(0);
    (*(*(v58 - 8) + 56))(v57, 1, 1, v58);

    v59 = v0[1];

    return v59();
  }

  v25 = v0[30];
  v26 = v0[31];
  v27 = v0[29];
  v28 = v0[24];
  v29 = v0[25];
  v30 = v0[23];
  (*(v0[34] + 32))(v0[37], v0[38], v0[33]);
  Friend.handle.getter();
  Handle.peerID.getter();
  v31 = *(v29 + 8);
  v0[60] = v31;
  v0[61] = (v29 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v31(v27, v28);
  if ((*(v26 + 48))(v30, 1, v25) == 1)
  {
    sub_100002CE0(v0[23], &qword_1005A96E0, &qword_1004C2A80);
    if (qword_1005A8520 != -1)
    {
      swift_once();
    }

    v32 = v0[37];
    v34 = v0[34];
    v33 = v0[35];
    v35 = v0[33];
    v36 = type metadata accessor for Logger();
    sub_10000A6F0(v36, qword_1005E0BF0);
    (*(v34 + 16))(v33, v32, v35);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    v39 = os_log_type_enabled(v37, v38);
    v40 = v0[39];
    v41 = v0[37];
    v43 = v0[34];
    v42 = v0[35];
    v44 = v0[33];
    if (!v39)
    {

      v56 = *(v43 + 8);
      v56(v42, v44);
      v56(v41, v44);
      v51 = v40;
      goto LABEL_17;
    }

    v45 = swift_slowAlloc();
    v61 = v40;
    v62[0] = swift_slowAlloc();
    *v45 = 136446723;
    *(v45 + 4) = sub_10000D01C(0xD000000000000014, 0x80000001004E97C0, v62);
    *(v45 + 12) = 2160;
    *(v45 + 14) = 1752392040;
    *(v45 + 22) = 2081;
    sub_1003DA8C4(&qword_1005AA720, &type metadata accessor for Friend, &protocol conformance descriptor for Friend);
    v60 = v41;
    v46 = dispatch thunk of CustomStringConvertible.description.getter();
    v48 = v47;
    v49 = *(v43 + 8);
    v49(v42, v44);
    v50 = sub_10000D01C(v46, v48, v62);

    *(v45 + 24) = v50;
    _os_log_impl(&_mh_execute_header, v37, v38, "%{public}s Missing friendSharedSecretsRecord for %{private,mask.hash}s", v45, 0x20u);
    swift_arrayDestroy();

    v49(v60, v44);
    goto LABEL_11;
  }

  (*(v0[31] + 32))(v0[32], v0[23], v0[30]);
  v52 = swift_task_alloc();
  v0[62] = v52;
  *v52 = v0;
  v52[1] = sub_1003D2A38;
  v53 = v0[32];
  v54 = v0[18];

  return sub_1001C4430(v54, v53);
}

uint64_t sub_1003D2A38()
{
  *(*v1 + 504) = v0;

  if (v0)
  {
    v2 = sub_1003D3C58;
  }

  else
  {
    v2 = sub_1003D2B4C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003D2B4C()
{
  v162 = v0;
  v1 = v0[19];
  v2 = v0[18];
  if ((*(v0[20] + 48))(v2, 1, v1) == 1)
  {
    (*(v0[31] + 8))(v0[32], v0[30]);
    sub_100002CE0(v2, &unk_1005AECE8, &qword_1004D07A0);
    if (qword_1005A8520 != -1)
    {
      swift_once();
    }

    v3 = v0[37];
    v5 = v0[34];
    v4 = v0[35];
    v6 = v0[33];
    v7 = type metadata accessor for Logger();
    sub_10000A6F0(v7, qword_1005E0BF0);
    (*(v5 + 16))(v4, v3, v6);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[39];
    v12 = v0[37];
    v14 = v0[34];
    v13 = v0[35];
    v15 = v0[33];
    if (!v10)
    {

      v29 = *(v14 + 8);
      v29(v13, v15);
      v29(v12, v15);
      v30 = v11;
LABEL_17:
      sub_100002CE0(v30, &qword_1005A9188, &unk_1004D80D0);
LABEL_18:
      v55 = v0[3];
      v56 = type metadata accessor for DiscoveryToken(0);
      (*(*(v56 - 8) + 56))(v55, 1, 1, v56);
      goto LABEL_19;
    }

    v16 = swift_slowAlloc();
    v159 = v11;
    v161[0] = swift_slowAlloc();
    *v16 = 136446723;
    *(v16 + 4) = sub_10000D01C(0xD000000000000014, 0x80000001004E97C0, v161);
    *(v16 + 12) = 2160;
    *(v16 + 14) = 1752392040;
    *(v16 + 22) = 2081;
    sub_1003DA8C4(&qword_1005AA720, &type metadata accessor for Friend, &protocol conformance descriptor for Friend);
    v151 = v12;
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v20 = *(v14 + 8);
    v20(v13, v15);
    v21 = sub_10000D01C(v17, v19, v161);

    *(v16 + 24) = v21;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s Missing friendSharedSecretsRecord for %{private,mask.hash}s", v16, 0x20u);
    swift_arrayDestroy();

    v20(v151, v15);
LABEL_16:
    v30 = v159;
    goto LABEL_17;
  }

  v22 = v0[22];
  v23 = v0[15];
  v24 = v0[16];
  v25 = v0[14];
  sub_1003DA6F4(v2, v22, type metadata accessor for FriendSharedSecretsRecord);
  sub_100005F04(v22 + *(v1 + 32), v25, &qword_1005AEB98, &unk_1004D07C0);
  if ((*(v24 + 48))(v25, 1, v23) == 1)
  {
    v26 = v0[14];
    v27 = &qword_1005AEB98;
    v28 = &unk_1004D07C0;
LABEL_11:
    sub_100002CE0(v26, v27, v28);
    if (qword_1005A8520 != -1)
    {
      swift_once();
    }

    v37 = v0[21];
    v38 = v0[22];
    v39 = type metadata accessor for Logger();
    sub_10000A6F0(v39, qword_1005E0BF0);
    sub_1003DA15C(v38, v37, type metadata accessor for FriendSharedSecretsRecord);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    v42 = os_log_type_enabled(v40, v41);
    v159 = v0[39];
    v43 = v0[37];
    v44 = v0[33];
    v45 = v0[34];
    v47 = v0[31];
    v46 = v0[32];
    v48 = v0[30];
    v49 = v0[21];
    v154 = v0[22];
    if (v42)
    {
      v147 = v0[33];
      v50 = swift_slowAlloc();
      v161[0] = swift_slowAlloc();
      *v50 = 136446466;
      *(v50 + 4) = sub_10000D01C(0xD000000000000014, 0x80000001004E97C0, v161);
      *(v50 + 12) = 2082;
      sub_1003DA8C4(&qword_1005A92C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v133 = v48;
      v137 = v43;
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      sub_1003DA1C4(v49, type metadata accessor for FriendSharedSecretsRecord);
      v54 = sub_10000D01C(v51, v53, v161);

      *(v50 + 14) = v54;
      _os_log_impl(&_mh_execute_header, v40, v41, "%{public}s  No incomingSharedSecret for %{public}s", v50, 0x16u);
      swift_arrayDestroy();

      sub_1003DA1C4(v154, type metadata accessor for FriendSharedSecretsRecord);
      (*(v47 + 8))(v46, v133);
      (*(v45 + 8))(v137, v147);
    }

    else
    {

      sub_1003DA1C4(v49, type metadata accessor for FriendSharedSecretsRecord);
      sub_1003DA1C4(v154, type metadata accessor for FriendSharedSecretsRecord);
      (*(v47 + 8))(v46, v48);
      (*(v45 + 8))(v43, v44);
    }

    goto LABEL_16;
  }

  v31 = v0[22];
  v32 = v0[19];
  v33 = v0[10];
  v34 = v0[11];
  v35 = v0[9];
  (*(v0[16] + 32))(v0[17], v0[14], v0[15]);
  sub_100005F04(v31 + *(v32 + 36), v35, &unk_1005AE5B0, &qword_1004C32F0);
  if ((*(v34 + 48))(v35, 1, v33) == 1)
  {
    v36 = v0[9];
    (*(v0[16] + 8))(v0[17], v0[15]);
    v27 = &unk_1005AE5B0;
    v28 = &qword_1004C32F0;
    v26 = v36;
    goto LABEL_11;
  }

  v59 = v0[63];
  v60 = v0[17];
  v62 = v0[12];
  v61 = v0[13];
  v63 = v0[8];
  (*(v0[11] + 32))(v61, v0[9], v0[10]);
  static Date.trustedNow.getter(v62);
  sub_10042E958(v60, v61, v62, v63);
  if (v59)
  {
    v157 = v0[39];
    v160 = v59;
    v64 = v0[34];
    v152 = v0[33];
    v155 = v0[37];
    v65 = v0[31];
    v148 = v0[32];
    v141 = v0[22];
    v144 = v0[30];
    v66 = v0[16];
    v134 = v0[15];
    v138 = v0[17];
    v68 = v0[12];
    v67 = v0[13];
    v70 = v0[10];
    v69 = v0[11];

    v71 = *(v69 + 8);
    v71(v68, v70);
    v71(v67, v70);
    (*(v66 + 8))(v138, v134);
    sub_1003DA1C4(v141, type metadata accessor for FriendSharedSecretsRecord);
    (*(v65 + 8))(v148, v144);
    (*(v64 + 8))(v155, v152);
    sub_100002CE0(v157, &qword_1005A9188, &unk_1004D80D0);
    if (qword_1005A8520 != -1)
    {
      swift_once();
    }

    v73 = v0[25];
    v72 = v0[26];
    v74 = v0[24];
    v75 = v0[4];
    v76 = type metadata accessor for Logger();
    sub_10000A6F0(v76, qword_1005E0BF0);
    (*(v73 + 16))(v72, v75, v74);
    swift_errorRetain();
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.error.getter();

    v79 = os_log_type_enabled(v77, v78);
    v81 = v0[25];
    v80 = v0[26];
    v82 = v0[24];
    if (v79)
    {
      v83 = swift_slowAlloc();
      v161[0] = swift_slowAlloc();
      *v83 = 141558531;
      *(v83 + 4) = 1752392040;
      *(v83 + 12) = 2081;
      sub_1003DA8C4(&qword_1005B02C8, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
      v84 = dispatch thunk of CustomStringConvertible.description.getter();
      v86 = v85;
      (*(v81 + 8))(v80, v82);
      v87 = sub_10000D01C(v84, v86, v161);

      *(v83 + 14) = v87;
      *(v83 + 22) = 2082;
      v0[2] = v160;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v88 = String.init<A>(describing:)();
      v90 = sub_10000D01C(v88, v89, v161);

      *(v83 + 24) = v90;
      _os_log_impl(&_mh_execute_header, v77, v78, "Unable to generate discovery token for %{private,mask.hash}s. Error: %{public}s.", v83, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v81 + 8))(v80, v82);
    }

    goto LABEL_18;
  }

  v158 = *(v0[11] + 8);
  v158(v0[12], v0[10]);
  if (qword_1005A8520 != -1)
  {
    swift_once();
  }

  v91 = v0[36];
  v92 = v0[37];
  v93 = v0[33];
  v94 = v0[34];
  v96 = v0[7];
  v95 = v0[8];
  v97 = type metadata accessor for Logger();
  sub_10000A6F0(v97, qword_1005E0BF0);
  sub_100005F04(v95, v96, &qword_1005B0F30, &qword_1004D3308);
  (*(v94 + 16))(v91, v92, v93);
  v98 = Logger.logObject.getter();
  v99 = static os_log_type_t.default.getter();
  v156 = v98;
  if (os_log_type_enabled(v98, v99))
  {
    v125 = v0[60];
    v149 = v0[37];
    v153 = v0[39];
    v123 = v0[34];
    v124 = v0[33];
    v142 = v0[30];
    v145 = v0[32];
    v100 = v0[28];
    v121 = v0[36];
    v122 = v0[24];
    v135 = v0[22];
    v139 = v0[31];
    v128 = v0[16];
    v129 = v0[15];
    v130 = v0[17];
    v126 = v0[10];
    v127 = v0[13];
    v102 = v0[6];
    v101 = v0[7];
    v103 = swift_slowAlloc();
    v161[0] = swift_slowAlloc();
    *v103 = 141558787;
    *(v103 + 4) = 1752392040;
    *(v103 + 12) = 2081;
    sub_100005F04(v101, v102, &qword_1005B0F30, &qword_1004D3308);
    v104 = String.init<A>(describing:)();
    v106 = v105;
    sub_100002CE0(v101, &qword_1005B0F30, &qword_1004D3308);
    v107 = sub_10000D01C(v104, v106, v161);

    *(v103 + 14) = v107;
    *(v103 + 22) = 2160;
    *(v103 + 24) = 1752392040;
    *(v103 + 32) = 2081;
    Friend.handle.getter();
    v108 = Handle.identifier.getter();
    v110 = v109;
    v125(v100, v122);
    v111 = *(v123 + 8);
    v111(v121, v124);
    v112 = sub_10000D01C(v108, v110, v161);

    *(v103 + 34) = v112;
    _os_log_impl(&_mh_execute_header, v156, v99, "Findee found Local discovery token: %{private,mask.hash}s for follower: %{private,mask.hash}s.", v103, 0x2Au);
    swift_arrayDestroy();

    v158(v127, v126);
    (*(v128 + 8))(v130, v129);
    sub_1003DA1C4(v135, type metadata accessor for FriendSharedSecretsRecord);
    (*(v139 + 8))(v145, v142);
    v111(v149, v124);
  }

  else
  {
    v113 = v0[36];
    v150 = v0[37];
    v153 = v0[39];
    v115 = v0[33];
    v114 = v0[34];
    v116 = v0[31];
    v143 = v0[30];
    v146 = v0[32];
    v117 = v0[16];
    v136 = v0[17];
    v140 = v0[22];
    v131 = v0[13];
    v132 = v0[15];
    v118 = v0[10];
    v119 = v0[7];

    v120 = *(v114 + 8);
    v120(v113, v115);
    sub_100002CE0(v119, &qword_1005B0F30, &qword_1004D3308);
    v158(v131, v118);
    (*(v117 + 8))(v136, v132);
    sub_1003DA1C4(v140, type metadata accessor for FriendSharedSecretsRecord);
    (*(v116 + 8))(v146, v143);
    v120(v150, v115);
  }

  sub_100002CE0(v153, &qword_1005A9188, &unk_1004D80D0);
  sub_1002CE81C(v0[8], v0[3]);
LABEL_19:

  v57 = v0[1];

  return v57();
}

uint64_t sub_1003D3C58()
{
  v33 = v0;
  v1 = v0[39];
  v2 = v0[37];
  v3 = v0[33];
  v4 = v0[34];
  v6 = v0[31];
  v5 = v0[32];
  v7 = v0[30];

  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v2, v3);
  sub_100002CE0(v1, &qword_1005A9188, &unk_1004D80D0);
  v8 = v0[63];
  if (qword_1005A8520 != -1)
  {
    swift_once();
  }

  v10 = v0[25];
  v9 = v0[26];
  v11 = v0[24];
  v12 = v0[4];
  v13 = type metadata accessor for Logger();
  sub_10000A6F0(v13, qword_1005E0BF0);
  (*(v10 + 16))(v9, v12, v11);
  swift_errorRetain();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  v16 = os_log_type_enabled(v14, v15);
  v18 = v0[25];
  v17 = v0[26];
  v19 = v0[24];
  if (v16)
  {
    v20 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v20 = 141558531;
    *(v20 + 4) = 1752392040;
    *(v20 + 12) = 2081;
    sub_1003DA8C4(&qword_1005B02C8, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    (*(v18 + 8))(v17, v19);
    v24 = sub_10000D01C(v21, v23, &v32);

    *(v20 + 14) = v24;
    *(v20 + 22) = 2082;
    v0[2] = v8;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v25 = String.init<A>(describing:)();
    v27 = sub_10000D01C(v25, v26, &v32);

    *(v20 + 24) = v27;
    _os_log_impl(&_mh_execute_header, v14, v15, "Unable to generate discovery token for %{private,mask.hash}s. Error: %{public}s.", v20, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v18 + 8))(v17, v19);
  }

  v28 = v0[3];
  v29 = type metadata accessor for DiscoveryToken(0);
  (*(*(v29 - 8) + 56))(v28, 1, 1, v29);

  v30 = v0[1];

  return v30();
}

uint64_t sub_1003D40E0()
{
  v26 = v0;

  v1 = v0[46];
  if (qword_1005A8520 != -1)
  {
    swift_once();
  }

  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[24];
  v5 = v0[4];
  v6 = type metadata accessor for Logger();
  sub_10000A6F0(v6, qword_1005E0BF0);
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[25];
  v10 = v0[26];
  v12 = v0[24];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v13 = 141558531;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_1003DA8C4(&qword_1005B02C8, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v11 + 8))(v10, v12);
    v17 = sub_10000D01C(v14, v16, &v25);

    *(v13 + 14) = v17;
    *(v13 + 22) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v18 = String.init<A>(describing:)();
    v20 = sub_10000D01C(v18, v19, &v25);

    *(v13 + 24) = v20;
    _os_log_impl(&_mh_execute_header, v7, v8, "Unable to generate discovery token for %{private,mask.hash}s. Error: %{public}s.", v13, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v21 = v0[3];
  v22 = type metadata accessor for DiscoveryToken(0);
  (*(*(v22 - 8) + 56))(v21, 1, 1, v22);

  v23 = v0[1];

  return v23();
}

uint64_t sub_1003D44F4()
{
  v26 = v0;

  v1 = v0[51];
  if (qword_1005A8520 != -1)
  {
    swift_once();
  }

  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[24];
  v5 = v0[4];
  v6 = type metadata accessor for Logger();
  sub_10000A6F0(v6, qword_1005E0BF0);
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[25];
  v10 = v0[26];
  v12 = v0[24];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v13 = 141558531;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_1003DA8C4(&qword_1005B02C8, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v11 + 8))(v10, v12);
    v17 = sub_10000D01C(v14, v16, &v25);

    *(v13 + 14) = v17;
    *(v13 + 22) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v18 = String.init<A>(describing:)();
    v20 = sub_10000D01C(v18, v19, &v25);

    *(v13 + 24) = v20;
    _os_log_impl(&_mh_execute_header, v7, v8, "Unable to generate discovery token for %{private,mask.hash}s. Error: %{public}s.", v13, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v21 = v0[3];
  v22 = type metadata accessor for DiscoveryToken(0);
  (*(*(v22 - 8) + 56))(v21, 1, 1, v22);

  v23 = v0[1];

  return v23();
}

uint64_t sub_1003D4914()
{
  v26 = v0;

  v1 = v0[56];
  if (qword_1005A8520 != -1)
  {
    swift_once();
  }

  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[24];
  v5 = v0[4];
  v6 = type metadata accessor for Logger();
  sub_10000A6F0(v6, qword_1005E0BF0);
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[25];
  v10 = v0[26];
  v12 = v0[24];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v13 = 141558531;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_1003DA8C4(&qword_1005B02C8, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v11 + 8))(v10, v12);
    v17 = sub_10000D01C(v14, v16, &v25);

    *(v13 + 14) = v17;
    *(v13 + 22) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v18 = String.init<A>(describing:)();
    v20 = sub_10000D01C(v18, v19, &v25);

    *(v13 + 24) = v20;
    _os_log_impl(&_mh_execute_header, v7, v8, "Unable to generate discovery token for %{private,mask.hash}s. Error: %{public}s.", v13, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v21 = v0[3];
  v22 = type metadata accessor for DiscoveryToken(0);
  (*(*(v22 - 8) + 56))(v21, 1, 1, v22);

  v23 = v0[1];

  return v23();
}

uint64_t sub_1003D4D40(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Handle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Friend.handle.getter();
  v6 = static Handle.== infix(_:_:)();
  (*(v3 + 8))(v5, v2);
  return v6 & 1;
}

uint64_t sub_1003D4E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[6] = a1;
  v7 = sub_10004B564(&qword_1005AD558, &qword_1004D7EE0);
  v5[9] = v7;
  v5[10] = *(v7 - 8);
  v5[11] = swift_task_alloc();
  sub_10004B564(&qword_1005B31F8, &qword_1004D8018);
  v5[12] = swift_task_alloc();

  return _swift_task_switch(sub_1003D4F38, a4, 0);
}

uint64_t sub_1003D4F38()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 56);
  v3 = OBJC_IVAR____TtC13findmylocated16NIRangingService_discoverContinuation;
  swift_beginAccess();
  sub_100005F04(v2 + v3, v1, &qword_1005B31F8, &qword_1004D8018);

  return _swift_task_switch(sub_1003DA9A8, 0, 0);
}

uint64_t sub_1003D4FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[6] = a1;
  v7 = sub_10004B564(&qword_1005AD558, &qword_1004D7EE0);
  v5[9] = v7;
  v5[10] = *(v7 - 8);
  v5[11] = swift_task_alloc();
  sub_10004B564(&qword_1005B31F8, &qword_1004D8018);
  v5[12] = swift_task_alloc();

  return _swift_task_switch(sub_1003D50EC, a4, 0);
}

uint64_t sub_1003D50EC()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 56);
  v3 = OBJC_IVAR____TtC13findmylocated16NIRangingService_updateContinuation;
  swift_beginAccess();
  sub_100005F04(v2 + v3, v1, &qword_1005B31F8, &qword_1004D8018);

  return _swift_task_switch(sub_1003D5194, 0, 0);
}

uint64_t sub_1003D5194()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  if ((*(v3 + 48))(v1, 1, v2))
  {
    sub_100002CE0(v1, &qword_1005B31F8, &qword_1004D8018);
    v4 = 1;
  }

  else
  {
    v5 = v0[11];
    v6 = v0[8];
    (*(v3 + 16))(v5, v1, v2);
    sub_100002CE0(v1, &qword_1005B31F8, &qword_1004D8018);
    v0[5] = v6;
    v7 = v6;
    AsyncStream.Continuation.yield(_:)();
    (*(v3 + 8))(v5, v2);
    v4 = 0;
  }

  v8 = v0[6];
  v9 = sub_10004B564(&qword_1005B3200, &qword_1004D8020);
  (*(*(v9 - 8) + 56))(v8, v4, 1, v9);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1003D532C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_10000368C;

  return sub_1003CF94C(a1, a2, a3, a4, a5);
}

void sub_1003D5498(unint64_t a1)
{
  v3 = sub_10004B564(&unk_1005B3430, &qword_1004D8210);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  if (a1 < 2)
  {
    return;
  }

  if (a1 == 3)
  {
    v6 = qword_1005B3268;
    goto LABEL_6;
  }

  if (a1 == 2)
  {
    v6 = qword_1005B3260;
LABEL_6:
    swift_beginAccess();
    v7 = type metadata accessor for RangingConfigDataSession(0);
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v1 + v6, 1, v7))
    {
      [*(v1 + v6) invalidate];
    }

    (*(v8 + 56))(v5, 1, 1, v7);
    swift_beginAccess();
    sub_1003D92E0(v5, v1 + v6);
    swift_endAccess();
    return;
  }

  if (qword_1005A8528 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000A6F0(v9, qword_1005E0C08);
  v14 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v14, v10, "Unknow NIFindingRole", v11, 2u);
  }

  v12 = v14;
}

uint64_t sub_1003D56E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
  v4[15] = swift_task_alloc();
  sub_10004B564(&unk_1005B3430, &qword_1004D8210);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v5 = type metadata accessor for RangingConfigDataSession(0);
  v4[19] = v5;
  v4[20] = *(v5 - 8);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();

  return _swift_task_switch(sub_1003D5840, 0, 0);
}

uint64_t sub_1003D5840()
{
  v59 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_22;
  }

  v2 = Strong;
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[18];
  v6 = qword_1005B3260;
  swift_beginAccess();
  sub_100005F04(v2 + v6, v5, &unk_1005B3430, &qword_1004D8210);
  v7 = *(v3 + 48);
  if (v7(v5, 1, v4) == 1)
  {
    sub_100002CE0(v0[18], &unk_1005B3430, &qword_1004D8210);
LABEL_11:
    v18 = v0[19];
    v19 = v0[17];
    v56 = v6;
    sub_100005F04(v2 + v6, v19, &unk_1005B3430, &qword_1004D8210);
    LODWORD(v18) = v7(v19, 1, v18);
    sub_100002CE0(v19, &unk_1005B3430, &qword_1004D8210);
    if (v18 != 1)
    {
      sub_1003D60A4();
      if (qword_1005A8528 != -1)
      {
        swift_once();
      }

      v20 = v0[12];
      v21 = type metadata accessor for Logger();
      sub_10000A6F0(v21, qword_1005E0C08);
      v22 = v20;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = v0[12];
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v58 = v28;
        *v26 = 141558531;
        *(v26 + 4) = 1752392040;
        *(v26 + 12) = 2081;
        *(v26 + 14) = sub_10000D01C(0xD00000000000003DLL, 0x80000001004E96C0, &v58);
        *(v26 + 22) = 2114;
        *(v26 + 24) = v25;
        *v27 = v25;
        v29 = v25;
        _os_log_impl(&_mh_execute_header, v23, v24, "%{private,mask.hash}s\nreceive finder trigger with new token: %{public}@\nshould stop the previous one", v26, 0x20u);
        sub_100002CE0(v27, &qword_1005A9670, &unk_1004C2480);

        sub_100004984(v28);
      }
    }

    v30 = v0[21];
    v57 = v2;
    v31 = v0[19];
    v32 = v0[15];
    v54 = v0[20];
    v55 = v0[16];
    v33 = v0[14];
    v53 = v0[13];
    v51 = v0[12];
    v52 = [objc_allocWithZone(NIFindingConfiguration) initWithRole:2 discoveryToken:v51 preferredUpdateRate:2];
    v34 = type metadata accessor for Handle();
    v35 = *(v34 - 8);
    v36 = *(v35 + 16);
    v36(v32, v33, v34);
    (*(v35 + 56))(v32, 0, 1, v34);
    v37 = [objc_allocWithZone(NISession) init];
    [v37 setDelegate:v57];
    v36(v30 + v31[5], v53, v34);
    v38 = v32;
    sub_100005F04(v32, v30 + v31[6], &qword_1005B3360, &unk_1004C6AA0);
    *v30 = v37;
    *(v30 + v31[7]) = v51;
    *(v30 + v31[8]) = 2;
    *(v30 + v31[9]) = v52;
    sub_1003DA15C(v30, v55, type metadata accessor for RangingConfigDataSession);
    (*(v54 + 56))(v55, 0, 1, v31);
    swift_beginAccess();
    v39 = v51;
    v40 = v37;
    v41 = v52;
    sub_1003D92E0(v55, v57 + v56);
    swift_endAccess();
    [v40 runWithConfiguration:v41];

    sub_1003DA1C4(v30, type metadata accessor for RangingConfigDataSession);
    sub_100002CE0(v38, &qword_1005B3360, &unk_1004C6AA0);
    if (qword_1005A8528 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_10000A6F0(v42, qword_1005E0C08);
    v43 = v41;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v46 = 141558275;
      *(v46 + 4) = 1752392040;
      *(v46 + 12) = 2113;
      *(v46 + 14) = v43;
      *v47 = v52;
      v48 = v43;
      _os_log_impl(&_mh_execute_header, v44, v45, "startFinderRangingSession with config %{private,mask.hash}@", v46, 0x16u);
      sub_100002CE0(v47, &qword_1005A9670, &unk_1004C2480);
    }

    else
    {
    }

    goto LABEL_22;
  }

  sub_1003DA6F4(v0[18], v0[22], type metadata accessor for RangingConfigDataSession);
  sub_1000545A4(0, &qword_1005B3440, NSObject_ptr);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    sub_1003DA1C4(v0[22], type metadata accessor for RangingConfigDataSession);
    goto LABEL_11;
  }

  if (qword_1005A8528 != -1)
  {
    swift_once();
  }

  v8 = v0[12];
  v9 = type metadata accessor for Logger();
  sub_10000A6F0(v9, qword_1005E0C08);
  v10 = v8;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = v0[12];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138543362;
    *(v14 + 4) = v13;
    *v15 = v13;
    v16 = v13;
    _os_log_impl(&_mh_execute_header, v11, v12, "Already has Finder additional configData session\nfor token: %{public}@ running", v14, 0xCu);
    sub_100002CE0(v15, &qword_1005A9670, &unk_1004C2480);
  }

  v17 = v0[22];

  sub_1003DA1C4(v17, type metadata accessor for RangingConfigDataSession);
LABEL_22:

  v49 = v0[1];

  return v49();
}

void sub_1003D60A4()
{
  v1 = sub_10004B564(&unk_1005B3430, &qword_1004D8210);
  __chkstk_darwin(v1 - 8);
  v3 = &v26 - v2;
  v4 = type metadata accessor for RangingConfigDataSession(0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v26 - v9;
  v11 = qword_1005B3260;
  swift_beginAccess();
  sub_100005F04(v0 + v11, v3, &unk_1005B3430, &qword_1004D8210);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_100002CE0(v3, &unk_1005B3430, &qword_1004D8210);
    if (qword_1005A8528 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000A6F0(v12, qword_1005E0C08);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v26 = v16;
      *v15 = 136446210;
      *(v15 + 4) = sub_10000D01C(0xD000000000000024, 0x80000001004E9700, &v26);
      _os_log_impl(&_mh_execute_header, v13, v14, "%{public}s no active finder session", v15, 0xCu);
      sub_100004984(v16);
    }
  }

  else
  {
    sub_1003DA6F4(v3, v10, type metadata accessor for RangingConfigDataSession);
    if (qword_1005A8528 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000A6F0(v17, qword_1005E0C08);
    sub_1003DA15C(v10, v8, type metadata accessor for RangingConfigDataSession);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v26 = v21;
      *v20 = 141558275;
      *(v20 + 4) = 1752392040;
      *(v20 + 12) = 2081;
      type metadata accessor for Handle();
      sub_1003DA8C4(&qword_1005B02C8, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      sub_1003DA1C4(v8, type metadata accessor for RangingConfigDataSession);
      v25 = sub_10000D01C(v22, v24, &v26);

      *(v20 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v18, v19, "Finder Stop and clear configData session\nwith peerHandle: %{private,mask.hash}s", v20, 0x16u);
      sub_100004984(v21);
    }

    else
    {

      sub_1003DA1C4(v8, type metadata accessor for RangingConfigDataSession);
    }

    sub_1003D5498(*&v10[*(v4 + 32)]);
    sub_1003DA1C4(v10, type metadata accessor for RangingConfigDataSession);
  }
}

uint64_t sub_1003D6578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = type metadata accessor for Handle();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v5[10] = *(v7 + 64);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  sub_10004B564(&qword_1005B0F30, &qword_1004D3308);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();

  return _swift_task_switch(sub_1003D66B0, 0, 0);
}

uint64_t sub_1003D66B0()
{
  v9 = v0;
  if (qword_1005A8528 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 136) = sub_10000A6F0(v1, qword_1005E0C08);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD00000000000003DLL, 0x80000001004E9780, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = swift_task_alloc();
  *(v0 + 144) = v6;
  *v6 = v0;
  v6[1] = sub_1003D6860;

  return daemon.getter();
}

uint64_t sub_1003D6860(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 152) = a1;

  v3 = swift_task_alloc();
  *(v2 + 160) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for NITokenService(0);
  v6 = sub_1003DA8C4(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1003DA8C4(&qword_1005AD548, type metadata accessor for NITokenService, &unk_1004D8368);
  *v3 = v9;
  v3[1] = sub_1003D6A3C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1003D6A3C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[21] = a1;
  v3[22] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1003D6F98, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[23] = v5;
    *v5 = v4;
    v5[1] = sub_1003D6BC4;

    return sub_100436154();
  }
}

uint64_t sub_1003D6BC4(char a1)
{
  *(*v1 + 200) = a1;

  return _swift_task_switch(sub_1003D6CC4, 0, 0);
}

uint64_t sub_1003D6CC4()
{
  v12 = v0;
  if (*(v0 + 200) > 2u || *(v0 + 200))
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v1 & 1) == 0)
    {
      v2 = Logger.logObject.getter();
      v3 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v2, v3))
      {
        v4 = swift_slowAlloc();
        v5 = swift_slowAlloc();
        v11 = v5;
        *v4 = 136446210;
        *(v4 + 4) = sub_10000D01C(0xD00000000000003DLL, 0x80000001004E9780, &v11);
        _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s should not start Findee configData session.", v4, 0xCu);
        sub_100004984(v5);
      }

      v6 = *(v0 + 8);

      return v6();
    }
  }

  else
  {
  }

  type metadata accessor for NIRangingService(0);
  v8 = swift_task_alloc();
  *(v0 + 192) = v8;
  *v8 = v0;
  v8[1] = sub_1003D71A8;
  v9 = *(v0 + 128);
  v10 = *(v0 + 32);

  return sub_1003D1170(v9, v10);
}

uint64_t sub_1003D6F98()
{
  v11 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[22];
    v4 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v4 = 136446466;
    *(v4 + 4) = sub_10000D01C(0xD00000000000003DLL, 0x80000001004E9780, &v10);
    *(v4 + 12) = 2082;
    v0[2] = v3;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v5 = String.init<A>(describing:)();
    v7 = sub_10000D01C(v5, v6, &v10);

    *(v4 + 14) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s\nchecking Findee device failed: %{public}s", v4, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_1003D71A8()
{

  return _swift_task_switch(sub_1003D72A4, 0, 0);
}

uint64_t sub_1003D72A4()
{
  v59 = v0;
  v1 = v0[15];
  sub_100005F04(v0[16], v1, &qword_1005B0F30, &qword_1004D3308);
  v2 = type metadata accessor for DiscoveryToken(0);
  v3 = *(*(v2 - 8) + 48);
  v4 = v3(v1, 1, v2);
  v5 = v0[15];
  if (v4 == 1)
  {
    sub_100002CE0(v0[15], &qword_1005B0F30, &qword_1004D3308);
  }

  else
  {
    v6 = v0[3];
    v7 = *v5;
    sub_1003DA1C4(v5, type metadata accessor for DiscoveryToken);
    sub_1000545A4(0, &qword_1005B33E0, NIDiscoveryToken_ptr);
    v8 = v6;
    v9 = static NSObject.== infix(_:_:)();

    if (v9)
    {
      v10 = v0[12];
      v11 = v0[9];
      v12 = v0[8];
      v14 = v0[5];
      v13 = v0[6];
      v15 = v0[3];
      v16 = v0[4];
      loga = v0[16];
      v17 = swift_allocObject();
      swift_unknownObjectWeakInit();
      (*(v11 + 16))(v10, v16, v12);
      v18 = (*(v11 + 80) + 48) & ~*(v11 + 80);
      v19 = swift_allocObject();
      *(v19 + 2) = v17;
      *(v19 + 3) = v15;
      *(v19 + 4) = v14;
      *(v19 + 5) = v13;
      (*(v11 + 32))(&v19[v18], v10, v12);
      v20 = v15;

      sub_100005F6C(v14, v13);
      dispatch thunk of WorkItemQueue.enqueue(_:)();

      sub_100002CE0(loga, &qword_1005B0F30, &qword_1004D3308);

      goto LABEL_12;
    }
  }

  v21 = v0[16];
  v22 = v0[14];
  v23 = v0[3];
  (*(v0[9] + 16))(v0[11], v0[4], v0[8]);
  sub_100005F04(v21, v22, &qword_1005B0F30, &qword_1004D3308);
  v24 = v23;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v55 = v26;
    log = v25;
    v52 = v0[13];
    v53 = v0[14];
    v27 = v0[11];
    v29 = v0[8];
    v28 = v0[9];
    v30 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *v30 = 136447235;
    *(v30 + 4) = sub_10000D01C(0xD00000000000003DLL, 0x80000001004E9780, &v58);
    *(v30 + 12) = 2160;
    *(v30 + 14) = 1752392040;
    *(v30 + 22) = 2081;
    sub_1003DA8C4(&qword_1005B02C8, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v32;
    (*(v28 + 8))(v27, v29);
    v34 = sub_10000D01C(v31, v33, &v58);

    *(v30 + 24) = v34;
    *(v30 + 32) = 2082;
    sub_100005F04(v53, v52, &qword_1005B0F30, &qword_1004D3308);
    v35 = v3(v52, 1, v2);
    v36 = v0[13];
    if (v35 == 1)
    {
      sub_100002CE0(v0[13], &qword_1005B0F30, &qword_1004D3308);
      v37 = 0;
      v38 = 0xE000000000000000;
    }

    else
    {
      v37 = sub_10042EABC();
      v38 = v45;
      sub_1003DA1C4(v36, type metadata accessor for DiscoveryToken);
    }

    v46 = v0[16];
    v47 = v0[3];
    sub_100002CE0(v0[14], &qword_1005B0F30, &qword_1004D3308);
    v48 = sub_10000D01C(v37, v38, &v58);

    *(v30 + 34) = v48;
    *(v30 + 42) = 2114;
    *(v30 + 44) = v47;
    *v54 = v47;
    v49 = v47;
    _os_log_impl(&_mh_execute_header, log, v55, "%{public}s from %{private,mask.hash}s\nlocal peerToken: %{public}s doesn't match with recieved peerToken: %{public}@, ignore it", v30, 0x34u);
    sub_100002CE0(v54, &qword_1005A9670, &unk_1004C2480);

    swift_arrayDestroy();

    v44 = v46;
  }

  else
  {
    v39 = v0[16];
    v40 = v0[14];
    v41 = v0[11];
    v42 = v0[8];
    v43 = v0[9];

    sub_100002CE0(v40, &qword_1005B0F30, &qword_1004D3308);
    (*(v43 + 8))(v41, v42);
    v44 = v39;
  }

  sub_100002CE0(v44, &qword_1005B0F30, &qword_1004D3308);
LABEL_12:

  v50 = v0[1];

  return v50();
}

uint64_t sub_1003D78E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[12] = a2;
  v5[13] = a3;
  v5[11] = a1;
  sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
  v5[16] = swift_task_alloc();
  sub_10004B564(&unk_1005B3430, &qword_1004D8210);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v6 = type metadata accessor for RangingConfigDataSession(0);
  v5[19] = v6;
  v5[20] = *(v6 - 8);
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();

  return _swift_task_switch(sub_1003D7A38, 0, 0);
}

uint64_t sub_1003D7A38()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_22;
  }

  v2 = Strong;
  v3 = v0[19];
  v4 = v0[20];
  v5 = v0[18];
  v6 = qword_1005B3268;
  swift_beginAccess();
  sub_100005F04(&v2[v6], v5, &unk_1005B3430, &qword_1004D8210);
  v7 = *(v4 + 48);
  if (v7(v5, 1, v3) == 1)
  {
    v58 = v7;
    v59 = v6;
    v8 = v2;
    sub_100002CE0(v0[18], &unk_1005B3430, &qword_1004D8210);
LABEL_13:
    v26 = v0[20];
    v27 = v0[21];
    v28 = v0[19];
    v29 = v0[16];
    v57 = v0[17];
    v54 = v0[12];
    v55 = v0[15];
    v30 = [objc_allocWithZone(NIFindingConfiguration) initWithRole:3 discoveryToken:v54 preferredUpdateRate:2];
    v31 = type metadata accessor for Handle();
    v32 = *(v31 - 8);
    (*(v32 + 56))(v29, 1, 1, v31);
    v33 = [objc_allocWithZone(NISession) init];
    [v33 setDelegate:v8];
    (*(v32 + 16))(&v27[v28[5]], v55, v31);
    sub_100005F04(v29, &v27[v28[6]], &qword_1005B3360, &unk_1004C6AA0);
    *v27 = v33;
    *&v27[v28[7]] = v54;
    *&v27[v28[8]] = 3;
    *&v27[v28[9]] = v30;
    sub_1003DA15C(v27, v57, type metadata accessor for RangingConfigDataSession);
    (*(v26 + 56))(v57, 0, 1, v28);
    swift_beginAccess();
    v34 = v54;
    v35 = v8;
    v36 = v33;
    v56 = v30;
    v37 = v30;
    sub_1003D92E0(v57, &v8[v59]);
    swift_endAccess();
    [v36 runWithConfiguration:v37];

    sub_1003DA1C4(v27, type metadata accessor for RangingConfigDataSession);
    sub_100002CE0(v29, &qword_1005B3360, &unk_1004C6AA0);
    if (qword_1005A8528 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_10000A6F0(v38, qword_1005E0C08);
    v39 = v37;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 141558275;
      *(v42 + 4) = 1752392040;
      *(v42 + 12) = 2113;
      *(v42 + 14) = v39;
      *v43 = v56;
      v44 = v39;
      _os_log_impl(&_mh_execute_header, v40, v41, "Findee session started and notifyDiscoveredNearbyObject\nwith config: %{private,mask.hash}@", v42, 0x16u);
      sub_100002CE0(v43, &qword_1005A9670, &unk_1004C2480);
    }

    v45 = v0[19];

    if (!v58(&v8[v59], 1, v45))
    {
      v46 = v0[12];
      v47 = [*&v8[v59] findingNotifier];
      isa = Data._bridgeToObjectiveC()().super.isa;
      [v47 notifyDiscoveredNearbyObjectWithToken:v46 sharedConfigurationData:isa];
    }

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "Findee addtional configData session notify end", v51, 2u);
    }

    goto LABEL_22;
  }

  sub_1003DA6F4(v0[18], v0[22], type metadata accessor for RangingConfigDataSession);
  sub_1000545A4(0, &qword_1005B3440, NSObject_ptr);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    v58 = v7;
    v59 = v6;
    v8 = v2;
    sub_1003DA1C4(v0[22], type metadata accessor for RangingConfigDataSession);
    goto LABEL_13;
  }

  if (qword_1005A8528 != -1)
  {
    swift_once();
  }

  v9 = v0[12];
  v10 = type metadata accessor for Logger();
  sub_10000A6F0(v10, qword_1005E0C08);
  v11 = v9;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = v0[12];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138543362;
    *(v15 + 4) = v14;
    *v16 = v14;
    v17 = v14;
    _os_log_impl(&_mh_execute_header, v12, v13, "Already has Findee addtional configData session\nfor token: %{public}@ running, just notifyDiscoveredNearbyObject", v15, 0xCu);
    sub_100002CE0(v16, &qword_1005A9670, &unk_1004C2480);
  }

  v18 = v0[22];
  v19 = v0[12];

  v20 = [*v18 findingNotifier];
  v21 = Data._bridgeToObjectiveC()().super.isa;
  [v20 notifyDiscoveredNearbyObjectWithToken:v19 sharedConfigurationData:v21];

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Findee addtional configData session notify end", v24, 2u);
  }

  v25 = v0[22];

  sub_1003DA1C4(v25, type metadata accessor for RangingConfigDataSession);
LABEL_22:

  v52 = v0[1];

  return v52();
}

uint64_t sub_1003D8238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v4 = type metadata accessor for Handle();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  sub_10004B564(&unk_1005B3430, &qword_1004D8210);
  v3[15] = swift_task_alloc();
  v5 = type metadata accessor for RangingConfigDataSession(0);
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();

  return _swift_task_switch(sub_1003D83B4, 0, 0);
}

uint64_t sub_1003D83B4()
{
  v75 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[16];
    v4 = v0[17];
    v5 = v0[15];
    v6 = qword_1005B3268;
    swift_beginAccess();
    sub_100005F04(v2 + v6, v5, &unk_1005B3430, &qword_1004D8210);
    if ((*(v4 + 48))(v5, 1, v3) == 1)
    {
      sub_100002CE0(v0[15], &unk_1005B3430, &qword_1004D8210);
      if (qword_1005A8528 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_10000A6F0(v7, qword_1005E0C08);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, v9, "no active findee config data session", v10, 2u);
      }
    }

    else
    {
      v11 = v0[16];
      sub_1003DA6F4(v0[15], v0[20], type metadata accessor for RangingConfigDataSession);
      sub_1000545A4(0, &qword_1005B3440, NSObject_ptr);
      if (static NSObject.== infix(_:_:)() & 1) != 0 || (static Handle.== infix(_:_:)())
      {
        if (qword_1005A8528 != -1)
        {
          swift_once();
        }

        v12 = v0[14];
        v13 = v0[11];
        v14 = v0[12];
        v15 = v0[10];
        v16 = type metadata accessor for Logger();
        sub_10000A6F0(v16, qword_1005E0C08);
        (*(v14 + 16))(v12, v15, v13);
        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.default.getter();
        v19 = os_log_type_enabled(v17, v18);
        v20 = v0[14];
        v22 = v0[11];
        v21 = v0[12];
        if (v19)
        {
          v23 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          v74 = v71;
          *v23 = 141558275;
          *(v23 + 4) = 1752392040;
          *(v23 + 12) = 2081;
          sub_1003DA8C4(&qword_1005B02C8, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
          v24 = dispatch thunk of CustomStringConvertible.description.getter();
          v26 = v25;
          (*(v21 + 8))(v20, v22);
          v27 = sub_10000D01C(v24, v26, &v74);

          *(v23 + 14) = v27;
          _os_log_impl(&_mh_execute_header, v17, v18, "Findee Stop and clear configData session ranging\nfor peerHandle: %{private,mask.hash}s", v23, 0x16u);
          sub_100004984(v71);
        }

        else
        {

          (*(v21 + 8))(v20, v22);
        }

        v28 = v0[20];
        sub_1003D5498(*(v28 + *(v0[16] + 32)));

        v29 = v28;
      }

      else
      {
        if (qword_1005A8528 != -1)
        {
          swift_once();
        }

        v31 = v0[19];
        v30 = v0[20];
        v32 = v0[18];
        v33 = v0[12];
        v34 = v0[10];
        v68 = v0[11];
        v70 = v0[13];
        v72 = v0[9];
        v35 = type metadata accessor for Logger();
        sub_10000A6F0(v35, qword_1005E0C08);
        sub_1003DA15C(v30, v31, type metadata accessor for RangingConfigDataSession);
        sub_1003DA15C(v30, v32, type metadata accessor for RangingConfigDataSession);
        (*(v33 + 16))(v70, v34, v68);
        v36 = v72;
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.default.getter();

        v39 = os_log_type_enabled(v37, v38);
        v41 = v0[18];
        v40 = v0[19];
        v43 = v0[12];
        v42 = v0[13];
        v44 = v0[11];
        if (v39)
        {
          v65 = v0[9];
          v69 = v0[13];
          v45 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          *v45 = 141559811;
          *(v45 + 4) = 1752392040;
          *(v45 + 12) = 2081;
          v46 = *(v40 + *(v11 + 28));
          v67 = v38;
          v47 = [v46 description];
          v64 = v44;
          v48 = v41;
          v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          log = v37;
          v51 = v50;

          sub_1003DA1C4(v40, type metadata accessor for RangingConfigDataSession);
          v52 = sub_10000D01C(v49, v51, &v74);

          *(v45 + 14) = v52;
          *(v45 + 22) = 2160;
          *(v45 + 24) = 1752392040;
          *(v45 + 32) = 2113;
          *(v45 + 34) = v65;
          *v73 = v65;
          *(v45 + 42) = 2160;
          *(v45 + 44) = 1752392040;
          *(v45 + 52) = 2081;
          sub_1003DA8C4(&qword_1005B02C8, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
          v53 = v65;
          v54 = dispatch thunk of CustomStringConvertible.description.getter();
          v56 = v55;
          sub_1003DA1C4(v48, type metadata accessor for RangingConfigDataSession);
          v57 = sub_10000D01C(v54, v56, &v74);

          *(v45 + 54) = v57;
          *(v45 + 62) = 2160;
          *(v45 + 64) = 1752392040;
          *(v45 + 72) = 2081;
          v58 = dispatch thunk of CustomStringConvertible.description.getter();
          v60 = v59;
          (*(v43 + 8))(v69, v64);
          v61 = sub_10000D01C(v58, v60, &v74);

          *(v45 + 74) = v61;
          _os_log_impl(&_mh_execute_header, log, v67, "Receivied unknown token, not stop configData session\npeerToken: %{private,mask.hash}s\ntoken: %{private,mask.hash}@\npeerHandle: %{private,mask.hash}s\nhandle: %{private,mask.hash}s", v45, 0x52u);
          sub_100002CE0(v73, &qword_1005A9670, &unk_1004C2480);

          swift_arrayDestroy();
        }

        else
        {

          (*(v43 + 8))(v42, v44);
          sub_1003DA1C4(v41, type metadata accessor for RangingConfigDataSession);
          sub_1003DA1C4(v40, type metadata accessor for RangingConfigDataSession);
        }

        v29 = v0[20];
      }

      sub_1003DA1C4(v29, type metadata accessor for RangingConfigDataSession);
    }
  }

  v62 = v0[1];

  return v62();
}

uint64_t sub_1003D8C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  sub_10004B564(&unk_1005B3430, &qword_1004D8210);
  v4[12] = swift_task_alloc();
  v5 = type metadata accessor for RangingConfigDataSession(0);
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();

  return _swift_task_switch(sub_1003D8D6C, 0, 0);
}

uint64_t sub_1003D8D6C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_21;
  }

  v2 = Strong;
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[12];
  v6 = qword_1005B3260;
  swift_beginAccess();
  sub_100005F04(v2 + v6, v5, &unk_1005B3430, &qword_1004D8210);
  if ((*(v4 + 48))(v5, 1, v3) != 1)
  {
    sub_1003DA6F4(v0[12], v0[15], type metadata accessor for RangingConfigDataSession);
    sub_1000545A4(0, &qword_1005B3440, NSObject_ptr);
    if (static NSObject.== infix(_:_:)())
    {
      if (qword_1005A8528 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_10000A6F0(v11, qword_1005E0C08);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "Finder recieved configData from Findee, trying notifyDiscoveredNearbyObject", v14, 2u);
      }

      v15 = v0[15];
      v16 = v0[9];

      v17 = [*v15 findingNotifier];
      isa = Data._bridgeToObjectiveC()().super.isa;
      [v17 notifyDiscoveredNearbyObjectWithToken:v16 sharedConfigurationData:isa];

      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v19, v20))
      {
        goto LABEL_20;
      }

      v21 = swift_slowAlloc();
      *v21 = 0;
      v22 = "Finder session notifyDiscoveredNearbyObject end";
    }

    else
    {
      if (qword_1005A8528 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_10000A6F0(v23, qword_1005E0C08);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v19, v20))
      {
        goto LABEL_20;
      }

      v21 = swift_slowAlloc();
      *v21 = 0;
      v22 = "Finder received different token than configSession is waiting for, ignore it";
    }

    _os_log_impl(&_mh_execute_header, v19, v20, v22, v21, 2u);

LABEL_20:
    v24 = v0[15];

    sub_1003DA1C4(v24, type metadata accessor for RangingConfigDataSession);
    goto LABEL_21;
  }

  sub_100002CE0(v0[12], &unk_1005B3430, &qword_1004D8210);
  if (qword_1005A8528 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000A6F0(v7, qword_1005E0C08);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "no active finder config data session", v10, 2u);
  }

LABEL_21:

  v25 = v0[1];

  return v25();
}

uint64_t sub_1003D91D0()
{
  v2 = *(type metadata accessor for Handle() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v3 + v4) & ~v3;
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_10000368C;

  return sub_1003D56E8(v6, v7, v0 + v4, v0 + v5);
}

uint64_t sub_1003D92E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&unk_1005B3430, &qword_1004D8210);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_1003D9350(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for UUID();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10004B564(&qword_1005B0370, &unk_1004D2410);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  *&v1[qword_1005B3250] = 0;
  v8 = qword_1005B3258;
  type metadata accessor for WorkItemQueue();
  v9 = type metadata accessor for WorkItemQueue.WarningOptions();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  UUID.init()();
  *&v1[v8] = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  v10 = qword_1005B3260;
  v11 = type metadata accessor for RangingConfigDataSession(0);
  v12 = *(*(v11 - 8) + 56);
  v12(&v2[v10], 1, 1, v11);
  v12(&v2[qword_1005B3268], 1, 1, v11);
  swift_weakInit();
  swift_weakAssign();
  v14.receiver = v2;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, "init");
}

void sub_1003D956C(uint64_t a1)
{
  if (qword_1005A8520 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0BF0);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136446210;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v5 = String.init<A>(describing:)();
    v7 = sub_10000D01C(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, oslog, v2, "didFailWithError: %{public}s", v3, 0xCu);
    sub_100004984(v4);
  }

  else
  {
  }
}

uint64_t sub_1003D9710(void *a1)
{
  v2 = v1;
  v4 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  if (qword_1005A8520 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000A6F0(v7, qword_1005E0BF0);
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 141558275;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2113;
    *(v11 + 14) = v8;
    *v12 = v8;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v9, v10, "didDiscover: %{private,mask.hash}@", v11, 0x16u);
    sub_100002CE0(v12, &qword_1005A9670, &unk_1004C2480);
  }

  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v2;
  v15[5] = v8;
  v16 = v8;

  sub_1001D8850(0, 0, v6, &unk_1004D8030, v15);
}

uint64_t sub_1003D9958(unint64_t a1)
{
  v2 = v1;
  v4 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  if (qword_1005A8520 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000A6F0(v7, qword_1005E0BF0);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 141558275;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    sub_1000545A4(0, &qword_1005B31F0, NINearbyObject_ptr);
    v12 = Array.description.getter();
    v14 = sub_10000D01C(v12, v13, &v21);

    *(v10 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "didUpdate: %{private,mask.hash}s", v10, 0x16u);
    sub_100004984(v11);
  }

  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v16 = *(a1 + 32);
  }

  v17 = v16;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v2;
  v19[5] = v17;

  sub_1001D8850(0, 0, v6, &unk_1004D8010, v19);
}

uint64_t sub_1003D9C30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000368C;

  return sub_1003D4FE0(a1, v4, v5, v7, v6);
}

uint64_t sub_1003D9CF0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1003D9D38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000368C;

  return sub_1003D4E2C(a1, v4, v5, v7, v6);
}

uint64_t sub_1003D9DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_10000368C;

  return sub_1003CF2B0(a1, a2, a3, a4, a5);
}

uint64_t sub_1003D9EC0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v10 = *(v4 + 16);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_100003690;

  return sub_1003CF378(a1, a2, a3, a4, v10);
}

uint64_t sub_1003D9FA0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100003690;

  return sub_1003D8C70(v2, v3, v5, v4);
}

uint64_t sub_1003DA04C()
{
  v2 = *(type metadata accessor for Handle() - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_10000368C;

  return sub_1003D78E8(v4, v5, v6, v7, v0 + v3);
}

uint64_t sub_1003DA15C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003DA1C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003DA224()
{
  v2 = *(type metadata accessor for Handle() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000368C;

  return sub_1003D8238(v4, v5, v0 + v3);
}

uint64_t sub_1003DA300(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10004B564(&qword_1005B3228, &qword_1004D8100) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_10000368C;

  return sub_1003CC270(a1, v7, v8, v1 + v6, v9);
}

uint64_t sub_1003DA464()
{
  v1 = sub_10004B564(&qword_1005B3228, &qword_1004D8100);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1003DA558(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10004B564(&qword_1005B3228, &qword_1004D8100) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_10000368C;

  return sub_1003CCB54(a1, v7, v8, v1 + v6, v9);
}

unint64_t sub_1003DA6A0()
{
  result = qword_1005B3238;
  if (!qword_1005B3238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B3238);
  }

  return result;
}

uint64_t sub_1003DA6F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003DA75C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1003C775C();
}

uint64_t sub_1003DA810()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1003C8A68();
}

uint64_t sub_1003DA8C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003DA90C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1003C721C();
}

void sub_1003DA9B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_1005A8520 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000A6F0(v8, qword_1005E0BF0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17[0] = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_10000D01C(0xD000000000000044, 0x80000001004E9930, v17);
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s", v11, 0xCu);
    sub_100004984(v12);
  }

  v13 = OBJC_IVAR____TtC13findmylocated16NIRangingService_discoverContinuation;
  swift_beginAccess();
  sub_1003DB408(a2, v4 + v13);
  swift_endAccess();
  v14 = OBJC_IVAR____TtC13findmylocated16NIRangingService_updateContinuation;
  swift_beginAccess();
  sub_1003DB408(a3, v4 + v14);
  swift_endAccess();
  v15 = *(v4 + 128);
  if (v15)
  {
    v16 = v15;
    sub_1003DB028(a1);
  }
}

uint64_t sub_1003DAB8C()
{
  v1 = v0;
  v2 = sub_10004B564(&qword_1005AD558, &qword_1004D7EE0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v28 = v29 - v4 + 40;
  v5 = sub_10004B564(&qword_1005B31F8, &qword_1004D8018);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  v9 = __chkstk_darwin(v6);
  v11 = v29 - v10 + 40;
  __chkstk_darwin(v9);
  v13 = v29 - v12 + 40;
  if (qword_1005A8520 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000A6F0(v14, qword_1005E0BF0);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v29[0] = v18;
    *v17 = 136446210;
    *(v17 + 4) = sub_10000D01C(0xD000000000000015, 0x80000001004E9910, v29);
    _os_log_impl(&_mh_execute_header, v15, v16, "%{public}s", v17, 0xCu);
    sub_100004984(v18);
  }

  v19 = *(v1 + 128);
  if (v19)
  {
    v20 = v19;
    sub_1003DB214();
  }

  v21 = OBJC_IVAR____TtC13findmylocated16NIRangingService_discoverContinuation;
  swift_beginAccess();
  sub_1003DB328(v1 + v21, v13);
  v22 = *(v3 + 48);
  if (v22(v13, 1, v2))
  {
    sub_100002CE0(v13, &qword_1005B31F8, &qword_1004D8018);
  }

  else
  {
    v23 = v28;
    (*(v3 + 16))(v28, v13, v2);
    sub_100002CE0(v13, &qword_1005B31F8, &qword_1004D8018);
    AsyncStream.Continuation.finish()();
    (*(v3 + 8))(v23, v2);
  }

  v24 = OBJC_IVAR____TtC13findmylocated16NIRangingService_updateContinuation;
  swift_beginAccess();
  sub_1003DB328(v1 + v24, v11);
  if (v22(v11, 1, v2))
  {
    sub_100002CE0(v11, &qword_1005B31F8, &qword_1004D8018);
  }

  else
  {
    v25 = v28;
    (*(v3 + 16))(v28, v11, v2);
    sub_100002CE0(v11, &qword_1005B31F8, &qword_1004D8018);
    AsyncStream.Continuation.finish()();
    (*(v3 + 8))(v25, v2);
  }

  v26 = *(v3 + 56);
  v26(v8, 1, 1, v2);
  swift_beginAccess();
  sub_1003DB398(v8, v1 + v21);
  swift_endAccess();
  v26(v8, 1, 1, v2);
  swift_beginAccess();
  sub_1003DB398(v8, v1 + v24);
  return swift_endAccess();
}

void sub_1003DB028(uint64_t a1)
{
  v2 = v1;
  v3 = [objc_allocWithZone(NIFindingConfiguration) initWithRole:0 discoveryToken:a1 preferredUpdateRate:2];
  if (qword_1005A8528 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000A6F0(v4, qword_1005E0C08);
  v12 = v3;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 141558275;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2113;
    *(v7 + 14) = v12;
    *v8 = v12;
    v9 = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "Start ranging with %{private,mask.hash}@", v7, 0x16u);
    sub_100002CE0(v8, &qword_1005A9670, &unk_1004C2480);
  }

  v10 = [objc_allocWithZone(NISession) init];
  v11 = *(v2 + qword_1005B3250);
  *(v2 + qword_1005B3250) = v10;

  [v10 runWithConfiguration:v12];
}

void sub_1003DB214()
{
  v1 = v0;
  if (qword_1005A8528 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0C08);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Stop ranging", v5, 2u);
  }

  v6 = qword_1005B3250;
  v7 = *(v1 + qword_1005B3250);
  if (v7)
  {
    [v7 invalidate];
    v7 = *(v1 + v6);
  }

  *(v1 + v6) = 0;
}

uint64_t sub_1003DB328(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005B31F8, &qword_1004D8018);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003DB398(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005B31F8, &qword_1004D8018);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003DB408(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005B31F8, &qword_1004D8018);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_1003DB478(uint64_t a1)
{
  sub_1003DECDC(319, &qword_1005B3358, type metadata accessor for RangingConfigDataSession);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_1003DB548(unint64_t a1)
{
  v3 = sub_10004B564(&unk_1005B3430, &qword_1004D8210);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  if (a1 < 2)
  {
    return;
  }

  if (a1 == 3)
  {
    v6 = qword_1005B3268;
    goto LABEL_6;
  }

  if (a1 == 2)
  {
    v6 = qword_1005B3260;
LABEL_6:
    swift_beginAccess();
    v7 = type metadata accessor for RangingConfigDataSession(0);
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v1 + v6, 1, v7))
    {
      [*(v1 + v6) invalidate];
    }

    (*(v8 + 56))(v5, 1, 1, v7);
    swift_beginAccess();
    sub_1003D92E0(v5, v1 + v6);
    swift_endAccess();
    return;
  }

  if (qword_1005A8528 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000A6F0(v9, qword_1005E0C08);
  v14 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v14, v10, "Unknow NIFindingRole", v11, 2u);
  }

  v12 = v14;
}

void sub_1003DB798()
{
  v1 = sub_10004B564(&unk_1005B3430, &qword_1004D8210);
  __chkstk_darwin(v1 - 8);
  v3 = &v26 - v2;
  v4 = type metadata accessor for RangingConfigDataSession(0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v26 - v9;
  v11 = qword_1005B3260;
  swift_beginAccess();
  sub_1003DED98(v0 + v11, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_100002CE0(v3, &unk_1005B3430, &qword_1004D8210);
    if (qword_1005A8528 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000A6F0(v12, qword_1005E0C08);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v26 = v16;
      *v15 = 136446210;
      *(v15 + 4) = sub_10000D01C(0xD000000000000024, 0x80000001004E9700, &v26);
      _os_log_impl(&_mh_execute_header, v13, v14, "%{public}s no active finder session", v15, 0xCu);
      sub_100004984(v16);
    }
  }

  else
  {
    sub_1003DEE08(v3, v10);
    if (qword_1005A8528 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000A6F0(v17, qword_1005E0C08);
    sub_1003DEE6C(v10, v8);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v26 = v21;
      *v20 = 141558275;
      *(v20 + 4) = 1752392040;
      *(v20 + 12) = 2081;
      type metadata accessor for Handle();
      sub_1003DEF2C();
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      sub_1003DEED0(v8);
      v25 = sub_10000D01C(v22, v24, &v26);

      *(v20 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v18, v19, "Finder Stop and clear configData session\nwith peerHandle: %{private,mask.hash}s", v20, 0x16u);
      sub_100004984(v21);
    }

    else
    {

      sub_1003DEED0(v8);
    }

    sub_1003DB548(*&v10[*(v4 + 32)]);
    sub_1003DEED0(v10);
  }
}

uint64_t sub_1003DBBC8(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  sub_10004B564(&unk_1005B3430, &qword_1004D8210);
  v2[10] = swift_task_alloc();
  v3 = type metadata accessor for RangingConfigDataSession(0);
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_1003DBCC0, 0, 0);
}

uint64_t sub_1003DBCC0()
{
  v17 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[11];
    v4 = v0[12];
    v5 = v0[10];
    v6 = qword_1005B3260;
    swift_beginAccess();
    sub_1003DED98(v2 + v6, v5);
    if ((*(v4 + 48))(v5, 1, v3) == 1)
    {
      sub_100002CE0(v0[10], &unk_1005B3430, &qword_1004D8210);
    }

    else
    {
      sub_1003DEE08(v0[10], v0[13]);
      sub_1000545A4(0, &qword_1005B3440, NSObject_ptr);
      v7 = static NSObject.== infix(_:_:)();
      v8 = v0[13];
      if (v7)
      {
        sub_1003DB798();

        sub_1003DEED0(v8);
        goto LABEL_12;
      }

      sub_1003DEED0(v0[13]);
    }

    if (qword_1005A8528 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000A6F0(v9, qword_1005E0C08);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v16 = v13;
      *v12 = 136446210;
      *(v12 + 4) = sub_10000D01C(0xD00000000000001CLL, 0x80000001004E9AB0, &v16);
      _os_log_impl(&_mh_execute_header, v10, v11, " %{public}s ignore, when its not Finder session", v12, 0xCu);
      sub_100004984(v13);
    }
  }

LABEL_12:

  v14 = v0[1];

  return v14();
}

void sub_1003DBF4C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1003DEF84(v4);
}

uint64_t sub_1003DBFB4(void *a1)
{
  v3 = swift_isaMask & *v1;
  if (qword_1005A8528 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000A6F0(v4, qword_1005E0C08);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_10000D01C(0xD00000000000001ALL, 0x80000001004E9A90, &v13);
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s", v7, 0xCu);
    sub_100004984(v8);
  }

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  v10[2] = *(v3 + 80);
  v10[3] = *(v3 + 88);
  v10[4] = v9;
  v10[5] = a1;

  v11 = a1;
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_1003DC1E0(uint64_t a1, uint64_t a2)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return _swift_task_switch(sub_1003DC200, 0, 0);
}

uint64_t sub_1003DC200()
{
  v32 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = (Strong + qword_1005B3260);
    swift_beginAccess();
    v4 = type metadata accessor for RangingConfigDataSession(0);
    v5 = *(*(v4 - 8) + 48);
    if (v5(v3, 1, v4) || (v6 = *(v0 + 96), v7 = *v3, sub_1000545A4(0, &unk_1005B33D0, NISession_ptr), v8 = v7, v9 = v6, v10 = static NSObject.== infix(_:_:)(), v9, v8, (v10 & 1) == 0) || v5(v3, 1, v4) || (v26 = *(v3 + *(v4 + 36))) == 0)
    {
      v11 = &v2[qword_1005B3268];
      swift_beginAccess();
      if (v5(v11, 1, v4))
      {
        goto LABEL_20;
      }

      v12 = *(v0 + 96);
      v13 = *v11;
      sub_1000545A4(0, &unk_1005B33D0, NISession_ptr);
      v14 = v12;
      v15 = v13;
      v16 = static NSObject.== infix(_:_:)();

      if ((v16 & 1) == 0)
      {
        goto LABEL_20;
      }

      if (v5(v11, 1, v4))
      {
        goto LABEL_20;
      }

      v17 = *(v11 + *(v4 + 36));
      if (!v17)
      {
        goto LABEL_20;
      }

      v18 = qword_1005A8528;
      v19 = v17;
      if (v18 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_10000A6F0(v20, qword_1005E0C08);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v21, v22))
      {
LABEL_19:

        [*(v0 + 96) runWithConfiguration:v19];
LABEL_20:

        goto LABEL_21;
      }

      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v31 = v24;
      *v23 = 136446210;
      *(v23 + 4) = sub_10000D01C(0xD00000000000001ALL, 0x80000001004E9A90, &v31);
      v25 = "%{public}s re-run Findee config session";
    }

    else
    {
      v27 = qword_1005A8528;
      v19 = v26;
      if (v27 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_10000A6F0(v28, qword_1005E0C08);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v21, v22))
      {
        goto LABEL_19;
      }

      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v31 = v24;
      *v23 = 136446210;
      *(v23 + 4) = sub_10000D01C(0xD00000000000001ALL, 0x80000001004E9A90, &v31);
      v25 = "%{public}s re-run Finder config session";
    }

    _os_log_impl(&_mh_execute_header, v21, v22, v25, v23, 0xCu);
    sub_100004984(v24);

    goto LABEL_19;
  }

LABEL_21:
  v29 = *(v0 + 8);

  return v29();
}

void sub_1003DC638(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1003DBFB4(v4);
}

uint64_t sub_1003DC6A0(uint64_t a1, uint64_t a2)
{
  v2[11] = a1;
  v2[12] = a2;
  sub_10004B564(&unk_1005B3430, &qword_1004D8210);
  v2[13] = swift_task_alloc();
  v3 = type metadata accessor for RangingConfigDataSession(0);
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_1003DC798, 0, 0);
}

uint64_t sub_1003DC798()
{
  v32 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[14];
    v4 = v0[15];
    v5 = qword_1005B3260;
    swift_beginAccess();
    v6 = *(v4 + 48);
    if (v6(&v2[v5], 1, v3) || (v7 = v0[12], v8 = *&v2[v5], sub_1000545A4(0, &unk_1005B33D0, NISession_ptr), v9 = v8, v10 = v7, v11 = static NSObject.== infix(_:_:)(), v10, v9, (v11 & 1) == 0))
    {
      v18 = v0[13];
      v17 = v0[14];
      v19 = qword_1005B3268;
      swift_beginAccess();
      sub_1003DED98(&v2[v19], v18);
      if (v6(v18, 1, v17) == 1)
      {
        v20 = v0[13];

        sub_100002CE0(v20, &unk_1005B3430, &qword_1004D8210);
      }

      else
      {
        sub_1003DEE08(v0[13], v0[16]);
        sub_1000545A4(0, &qword_1005B3440, NSObject_ptr);
        if (static NSObject.== infix(_:_:)())
        {
          if (qword_1005A8528 != -1)
          {
            swift_once();
          }

          v21 = type metadata accessor for Logger();
          sub_10000A6F0(v21, qword_1005E0C08);
          v22 = Logger.logObject.getter();
          v23 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v22, v23))
          {
            v24 = swift_slowAlloc();
            v25 = swift_slowAlloc();
            v31 = v25;
            *v24 = 136446210;
            *(v24 + 4) = sub_10000D01C(0xD00000000000001DLL, 0x80000001004E9A70, &v31);
            _os_log_impl(&_mh_execute_header, v22, v23, "%{public}s invalidate Findee config session", v24, 0xCu);
            sub_100004984(v25);
          }

          v26 = v0[16];
          sub_1003DB548(*(v26 + *(v0[14] + 32)));

          v27 = v26;
        }

        else
        {
          v28 = v0[16];

          v27 = v28;
        }

        sub_1003DEED0(v27);
      }
    }

    else
    {
      if (qword_1005A8528 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_10000A6F0(v12, qword_1005E0C08);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v31 = v16;
        *v15 = 136446210;
        *(v15 + 4) = sub_10000D01C(0xD00000000000001DLL, 0x80000001004E9A70, &v31);
        _os_log_impl(&_mh_execute_header, v13, v14, "%{public}s invalidate Finder config session", v15, 0xCu);
        sub_100004984(v16);
      }

      sub_1003DB798();
    }
  }

  v29 = v0[1];

  return v29();
}

void sub_1003DCBE0(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v8 = a4;
  v7 = a1;
  sub_1003DF1B0(v6);
}

uint64_t sub_1003DCC50(uint64_t a1, uint64_t a2)
{
  v5 = swift_isaMask & *v2;
  if (qword_1005A8528 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000A6F0(v6, qword_1005E0C08);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136446210;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v11 = String.init<A>(describing:)();
    v13 = sub_10000D01C(v11, v12, &v15);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "didFailWithError: %{public}s", v9, 0xCu);
    sub_100004984(v10);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    (*(*(v5 + 88) + 24))(a1, a2, *(v5 + 80));
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1003DCE54(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v8 = a4;
  v7 = a1;
  sub_1003DCC50(v6, v8);
}

uint64_t sub_1003DCEC8(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = swift_isaMask & *v3;
  if (qword_1005A8528 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000A6F0(v7, qword_1005E0C08);
  v8 = a2;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v9, v10, "didDiscover: %@", v11, 0xCu);
    sub_100002CE0(v12, &qword_1005A9670, &unk_1004C2480);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    (*(*(v6 + 88) + 32))(a1, v8, *(v6 + 80));

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1003DD0B4(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_1003DCEC8(v6, v7);
}

uint64_t sub_1003DD130(uint64_t a1, uint64_t a2)
{
  v5 = swift_isaMask & *v2;
  if (qword_1005A8528 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000A6F0(v6, qword_1005E0C08);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315138;
    sub_1000545A4(0, &qword_1005B31F0, NINearbyObject_ptr);
    v11 = Array.description.getter();
    v13 = sub_10000D01C(v11, v12, &v15);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "didUpdate: %s", v9, 0xCu);
    sub_100004984(v10);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    (*(*(v5 + 88) + 40))(a1, a2, *(v5 + 80));

    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_1003DD35C(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_1000545A4(0, &qword_1005B31F0, NINearbyObject_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = a1;
  sub_1003DD130(v7, v6);

  return result;
}

uint64_t sub_1003DD3EC(void *a1, uint64_t a2, unint64_t a3, void *a4)
{
  v9 = swift_isaMask & *v4;
  if (qword_1005A8528 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000A6F0(v10, qword_1005E0C08);
  v11 = a4;
  sub_100005F6C(a2, a3);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  sub_1000049D0(a2, a3);
  if (os_log_type_enabled(v12, v13))
  {
    v24 = a1;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v14 = 136447235;
    *(v14 + 4) = sub_10000D01C(0xD000000000000035, 0x80000001004E9A30, &v25);
    *(v14 + 12) = 2160;
    *(v14 + 14) = 1752392040;
    *(v14 + 22) = 2113;
    *(v14 + 24) = v11;
    *v15 = v11;
    *(v14 + 32) = 2160;
    *(v14 + 34) = 1752392040;
    *(v14 + 42) = 2081;
    v16 = v11;
    v17 = Data.description.getter();
    v19 = sub_10000D01C(v17, v18, &v25);

    *(v14 + 44) = v19;
    _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s\nfor object: %{private,mask.hash}@\nshareableConfigurationData: %{private,mask.hash}s", v14, 0x34u);
    sub_100002CE0(v15, &qword_1005A9670, &unk_1004C2480);

    swift_arrayDestroy();

    a1 = v24;
  }

  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  v21[2] = *(v9 + 80);
  v21[3] = *(v9 + 88);
  v21[4] = v20;
  v21[5] = a1;
  v21[6] = a2;
  v21[7] = a3;
  sub_100005F6C(a2, a3);

  v22 = a1;
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_1003DD718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[13] = a3;
  v6[14] = a4;
  v6[11] = a1;
  v6[12] = a2;
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v6[17] = swift_task_alloc();
  sub_10004B564(&unk_1005B3430, &qword_1004D8210);
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v7 = type metadata accessor for RangingConfigDataSession(0);
  v6[20] = v7;
  v8 = *(v7 - 8);
  v6[21] = v8;
  v6[22] = *(v8 + 64);
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();

  return _swift_task_switch(sub_1003DD8AC, 0, 0);
}

uint64_t sub_1003DD8AC()
{
  v77 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_28;
  }

  v2 = Strong;
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);
  v5 = *(v0 + 152);
  v6 = qword_1005B3260;
  swift_beginAccess();
  sub_1003DED98(v2 + v6, v5);
  v7 = *(v4 + 48);
  if (v7(v5, 1, v3) == 1)
  {
    sub_100002CE0(*(v0 + 152), &unk_1005B3430, &qword_1004D8210);
  }

  else
  {
    sub_1003DEE08(*(v0 + 152), *(v0 + 232));
    sub_1000545A4(0, &qword_1005B3440, NSObject_ptr);
    if (static NSObject.== infix(_:_:)())
    {
      if (qword_1005A8528 != -1)
      {
        swift_once();
      }

      v9 = *(v0 + 224);
      v8 = *(v0 + 232);
      v10 = *(v0 + 216);
      v11 = type metadata accessor for Logger();
      sub_10000A6F0(v11, qword_1005E0C08);
      sub_1003DEE6C(v8, v9);
      sub_1003DEE6C(v8, v10);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      v14 = os_log_type_enabled(v12, v13);
      v15 = *(v0 + 216);
      v16 = *(v0 + 224);
      if (v14)
      {
        v17 = *(v0 + 160);
        v18 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        *v18 = 136447235;
        *(v18 + 4) = sub_10000D01C(0xD000000000000035, 0x80000001004E9A30, &v76);
        *(v18 + 12) = 2160;
        *(v18 + 14) = 1752392040;
        *(v18 + 22) = 2081;
        type metadata accessor for Handle();
        sub_1003DEF2C();
        v19 = dispatch thunk of CustomStringConvertible.description.getter();
        v21 = v20;
        sub_1003DEED0(v16);
        v22 = sub_10000D01C(v19, v21, &v76);

        *(v18 + 24) = v22;
        *(v18 + 32) = 2160;
        *(v18 + 34) = 1752392040;
        *(v18 + 42) = 2113;
        v23 = *(v15 + *(v17 + 28));
        sub_1003DEED0(v15);
        *(v18 + 44) = v23;
        *v72 = v23;
        _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s,\nFinder trying send to peer: %{private,mask.hash}s\nwith token: %{private,mask.hash}@", v18, 0x34u);
        sub_100002CE0(v72, &qword_1005A9670, &unk_1004C2480);

        swift_arrayDestroy();
      }

      else
      {

        sub_1003DEED0(v15);
        sub_1003DEED0(v16);
      }

      v53 = *(v0 + 232);
      v54 = *(v0 + 208);
      v55 = *(v0 + 168);
      v56 = *(v0 + 136);
      v58 = *(v0 + 104);
      v57 = *(v0 + 112);
      v59 = type metadata accessor for TaskPriority();
      v74 = *(v0 + 120);
      (*(*(v59 - 8) + 56))(v56, 1, 1, v59);
      sub_1003DEE6C(v53, v54);
      v60 = (*(v55 + 80) + 72) & ~*(v55 + 80);
      v61 = swift_allocObject();
      *(v61 + 16) = 0;
      *(v61 + 24) = 0;
      *(v61 + 32) = v74;
      *(v61 + 48) = v2;
      *(v61 + 56) = v58;
      *(v61 + 64) = v57;
      sub_1003DEE08(v54, v61 + v60);
      v62 = v2;
      sub_100005F6C(v58, v57);
      v63 = &unk_1004D8240;
      goto LABEL_27;
    }

    sub_1003DEED0(*(v0 + 232));
  }

  v24 = *(v0 + 160);
  v25 = *(v0 + 144);
  v26 = qword_1005B3268;
  swift_beginAccess();
  sub_1003DED98(v2 + v26, v25);
  if (v7(v25, 1, v24) != 1)
  {
    sub_1003DEE08(*(v0 + 144), *(v0 + 200));
    sub_1000545A4(0, &qword_1005B3440, NSObject_ptr);
    if ((static NSObject.== infix(_:_:)() & 1) == 0)
    {
      sub_1003DEED0(*(v0 + 200));
      goto LABEL_18;
    }

    if (qword_1005A8528 != -1)
    {
      swift_once();
    }

    v28 = *(v0 + 192);
    v27 = *(v0 + 200);
    v29 = *(v0 + 184);
    v30 = type metadata accessor for Logger();
    sub_10000A6F0(v30, qword_1005E0C08);
    sub_1003DEE6C(v27, v28);
    sub_1003DEE6C(v27, v29);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    v33 = os_log_type_enabled(v31, v32);
    v34 = *(v0 + 184);
    v35 = *(v0 + 192);
    if (v33)
    {
      v36 = *(v0 + 160);
      v37 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      *v37 = 136447235;
      *(v37 + 4) = sub_10000D01C(0xD000000000000035, 0x80000001004E9A30, &v76);
      *(v37 + 12) = 2160;
      *(v37 + 14) = 1752392040;
      *(v37 + 22) = 2081;
      type metadata accessor for Handle();
      sub_1003DEF2C();
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;
      sub_1003DEED0(v35);
      v41 = sub_10000D01C(v38, v40, &v76);

      *(v37 + 24) = v41;
      *(v37 + 32) = 2160;
      *(v37 + 34) = 1752392040;
      *(v37 + 42) = 2113;
      v42 = *(v34 + *(v36 + 28));
      sub_1003DEED0(v34);
      *(v37 + 44) = v42;
      *v73 = v42;
      _os_log_impl(&_mh_execute_header, v31, v32, "%{public}s,\nFindee trying send to peer: %{private,mask.hash}s\nwith token: %{private,mask.hash}@", v37, 0x34u);
      sub_100002CE0(v73, &qword_1005A9670, &unk_1004C2480);

      swift_arrayDestroy();
    }

    else
    {

      sub_1003DEED0(v34);
      sub_1003DEED0(v35);
    }

    v53 = *(v0 + 200);
    v64 = *(v0 + 208);
    v65 = *(v0 + 168);
    v56 = *(v0 + 136);
    v67 = *(v0 + 104);
    v66 = *(v0 + 112);
    v68 = type metadata accessor for TaskPriority();
    v75 = *(v0 + 120);
    (*(*(v68 - 8) + 56))(v56, 1, 1, v68);
    sub_1003DEE6C(v53, v64);
    v69 = (*(v65 + 80) + 72) & ~*(v65 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = 0;
    *(v61 + 24) = 0;
    *(v61 + 32) = v75;
    *(v61 + 48) = v2;
    *(v61 + 56) = v67;
    *(v61 + 64) = v66;
    sub_1003DEE08(v64, v61 + v69);
    v62 = v2;
    sub_100005F6C(v67, v66);
    v63 = &unk_1004D8230;
LABEL_27:
    sub_1001D8B64(0, 0, v56, v63, v61);

    sub_1003DEED0(v53);
    goto LABEL_28;
  }

  sub_100002CE0(*(v0 + 144), &unk_1005B3430, &qword_1004D8210);
LABEL_18:
  if (qword_1005A8528 != -1)
  {
    swift_once();
  }

  v43 = *(v0 + 96);
  v44 = type metadata accessor for Logger();
  sub_10000A6F0(v44, qword_1005E0C08);
  v45 = v43;
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = *(v0 + 96);
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v76 = v51;
    *v49 = 136446723;
    *(v49 + 4) = sub_10000D01C(0xD000000000000035, 0x80000001004E9A30, &v76);
    *(v49 + 12) = 2160;
    *(v49 + 14) = 1752392040;
    *(v49 + 22) = 2113;
    *(v49 + 24) = v48;
    *v50 = v48;
    v52 = v48;
    _os_log_impl(&_mh_execute_header, v46, v47, "%{public}s current session %{private,mask.hash}@\nis not waiting for shareConfigation data, privacy: .public)", v49, 0x20u);
    sub_100002CE0(v50, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v51);
  }

LABEL_28:

  v70 = *(v0 + 8);

  return v70();
}

uint64_t sub_1003DE310(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  v7[7] = swift_isaMask & *a4;
  return _swift_task_switch(sub_1003DE370, 0, 0);
}

uint64_t sub_1003DE370()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 48);
    v2 = *(v0 + 56);
    v4 = type metadata accessor for RangingConfigDataSession(0);
    v5 = v4[6];
    v6 = *(v3 + v4[7]);
    v7 = v4[5];
    v10 = v2 + 80;
    v9 = *(v2 + 80);
    v8 = *(v10 + 8);
    v16 = (*(v8 + 8) + **(v8 + 8));
    v11 = swift_task_alloc();
    *(v0 + 72) = v11;
    *v11 = v0;
    v11[1] = sub_1003DE528;
    v12 = *(v0 + 40);
    v13 = *(v0 + 32);

    return v16(v13, v12, v6, v3 + v7, v3 + v5, v9, v8);
  }

  else
  {
    **(v0 + 16) = 1;
    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_1003DE528()
{

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_1003DFAB4, 0, 0);
}

uint64_t sub_1003DE640(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  v7[7] = swift_isaMask & *a4;
  return _swift_task_switch(sub_1003DE6A0, 0, 0);
}

uint64_t sub_1003DE6A0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 48);
    v2 = *(v0 + 56);
    v4 = type metadata accessor for RangingConfigDataSession(0);
    v5 = v4[6];
    v6 = *(v3 + v4[7]);
    v7 = v4[5];
    v10 = v2 + 80;
    v9 = *(v2 + 80);
    v8 = *(v10 + 8);
    v16 = (*(v8 + 8) + **(v8 + 8));
    v11 = swift_task_alloc();
    *(v0 + 72) = v11;
    *v11 = v0;
    v11[1] = sub_1003DE858;
    v12 = *(v0 + 40);
    v13 = *(v0 + 32);

    return v16(v13, v12, v6, v3 + v7, v3 + v5, v9, v8);
  }

  else
  {
    **(v0 + 16) = 1;
    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_1003DE858()
{

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_1003DE970, 0, 0);
}

void sub_1003DE998(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14 = a1;
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  sub_1003DD3EC(v8, v11, v13, v10);
  sub_1000049D0(v11, v13);
}

uint64_t sub_1003DEA8C(uint64_t a1)
{

  sub_100002CE0(a1 + qword_1005B3260, &unk_1005B3430, &qword_1004D8210);
  sub_100002CE0(a1 + qword_1005B3268, &unk_1005B3430, &qword_1004D8210);

  return swift_unknownObjectWeakDestroy();
}

uint64_t type metadata accessor for RangingConfigDataSession(uint64_t a1)
{
  result = qword_1005B33C0;
  if (!qword_1005B33C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003DEBBC(uint64_t a1)
{
  sub_1000545A4(319, &unk_1005B33D0, NISession_ptr);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Handle();
    if (v2 <= 0x3F)
    {
      sub_1003DECDC(319, &qword_1005AE910, &type metadata accessor for Handle);
      if (v3 <= 0x3F)
      {
        sub_1000545A4(319, &qword_1005B33E0, NIDiscoveryToken_ptr);
        if (v4 <= 0x3F)
        {
          type metadata accessor for NIFindingRole(319);
          if (v5 <= 0x3F)
          {
            sub_1003DED30(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1003DECDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_1003DED30(uint64_t a1)
{
  if (!qword_1005B33E8)
  {
    sub_1000545A4(255, &unk_1005B33F0, NIConfiguration_ptr);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1005B33E8);
    }
  }
}

uint64_t sub_1003DED98(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&unk_1005B3430, &qword_1004D8210);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003DEE08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RangingConfigDataSession(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003DEE6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RangingConfigDataSession(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003DEED0(uint64_t a1)
{
  v2 = type metadata accessor for RangingConfigDataSession(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1003DEF2C()
{
  result = qword_1005B02C8;
  if (!qword_1005B02C8)
  {
    type metadata accessor for Handle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B02C8);
  }

  return result;
}

uint64_t sub_1003DEF84(void *a1)
{
  v3 = swift_isaMask & *v1;
  if (qword_1005A8528 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000A6F0(v4, qword_1005E0C08);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_10000D01C(0xD00000000000001CLL, 0x80000001004E9AB0, &v13);
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s", v7, 0xCu);
    sub_100004984(v8);
  }

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  v10[2] = *(v3 + 80);
  v10[3] = *(v3 + 88);
  v10[4] = v9;
  v10[5] = a1;

  v11 = a1;
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_1003DF1B0(void *a1)
{
  v3 = swift_isaMask & *v1;
  if (qword_1005A8528 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000A6F0(v4, qword_1005E0C08);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_10000D01C(0xD00000000000001DLL, 0x80000001004E9A70, &v13);
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s", v7, 0xCu);
    sub_100004984(v8);
  }

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  v10[2] = *(v3 + 80);
  v10[3] = *(v3 + 88);
  v10[4] = v9;
  v10[5] = a1;

  v11 = a1;
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_1003DF40C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_10000368C;

  return sub_1003DD718(v4, v5, v7, v6, v2, v3);
}

uint64_t sub_1003DF4CC(uint64_t a1)
{
  v4 = *(type metadata accessor for RangingConfigDataSession(0) - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100003690;

  return sub_1003DE640(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_1003DF5D8()
{
  v1 = type metadata accessor for RangingConfigDataSession(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 72) & ~v2;
  v11 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();

  sub_1000049D0(*(v0 + 56), *(v0 + 64));
  v4 = v0 + v3;

  v5 = v1[5];
  v6 = type metadata accessor for Handle();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v3 + v5, v6);
  v9 = v1[6];
  if (!(*(v7 + 48))(v0 + v3 + v9, 1, v6))
  {
    v8(v4 + v9, v6);
  }

  return _swift_deallocObject(v0, v3 + v11, v2 | 7);
}

uint64_t sub_1003DF764(uint64_t a1)
{
  v4 = *(type metadata accessor for RangingConfigDataSession(0) - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000368C;

  return sub_1003DE310(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_1003DF870()
{
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000368C;

  return sub_1003DC6A0(v3, v2);
}

uint64_t sub_1003DF91C()
{
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100003690;

  return sub_1003DC1E0(v3, v2);
}

uint64_t sub_1003DF9C8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1003DFA08()
{
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000368C;

  return sub_1003DBBC8(v3, v2);
}

uint64_t sub_1003DFAB8()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005E0C30);
  v1 = sub_10000A6F0(v0, qword_1005E0C30);
  if (qword_1005A8558 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005E0C60);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003DFB80()
{
  v0 = type metadata accessor for PrefixedDefaults();
  sub_10004F154(v0, qword_1005B34B0);
  sub_10000A6F0(v0, qword_1005B34B0);
  return PrefixedDefaults.init(prefix:)();
}

uint64_t sub_1003DFBF0()
{
  v0 = type metadata accessor for PrefixedDefaults();
  sub_10004F154(v0, qword_1005E0C48);
  v1 = sub_10000A6F0(v0, qword_1005E0C48);
  if (qword_1005A8538 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005B34B0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003DFCB8()
{
  v0 = type metadata accessor for PrefixedDefaults();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10004B564(&qword_1005AFFF0, &qword_1004D1520);
  sub_10004F154(v4, qword_1005B34C8);
  sub_10000A6F0(v4, qword_1005B34C8);
  if (qword_1005A8540 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A6F0(v0, qword_1005E0C48);
  (*(v1 + 16))(v3, v5, v0);
  return ManagedDefault.init(prefixedDefaults:key:)();
}

uint64_t sub_1003DFE28()
{
  v0 = type metadata accessor for PrefixedDefaults();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10004B564(&qword_1005B02D8, &qword_1004D1868);
  sub_10004F154(v4, qword_1005B34E0);
  sub_10000A6F0(v4, qword_1005B34E0);
  if (qword_1005A8540 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A6F0(v0, qword_1005E0C48);
  (*(v1 + 16))(v3, v5, v0);
  type metadata accessor for Date();
  return ManagedDefault.init(prefixedDefaults:key:)();
}

uint64_t sub_1003DFF9C()
{
  v1[527] = v0;
  v2 = sub_10004B564(&qword_1005B0328, &unk_1004D6A60);
  v1[533] = v2;
  v1[539] = *(v2 - 8);
  v1[545] = swift_task_alloc();
  sub_10004B564(&qword_1005B02F8, &qword_1004D1870);
  v1[551] = swift_task_alloc();
  v3 = sub_10004B564(&qword_1005B3708, &qword_1004D83F0);
  v1[557] = v3;
  v1[563] = *(v3 - 8);
  v1[569] = swift_task_alloc();
  sub_10004B564(&qword_1005B3710, &qword_1004D83F8);
  v1[575] = swift_task_alloc();
  v4 = sub_10004B564(&qword_1005B3718, &qword_1004D8400);
  v1[581] = v4;
  v1[587] = *(v4 - 8);
  v1[593] = swift_task_alloc();
  sub_10004B564(&qword_1005B3720, &qword_1004D8408);
  v1[599] = swift_task_alloc();
  v5 = sub_10004B564(&qword_1005AA708, &unk_1004C4360);
  v1[605] = v5;
  v1[611] = *(v5 - 8);
  v1[617] = swift_task_alloc();
  sub_10004B564(&qword_1005B0F00, &qword_1004D2F00);
  v1[623] = swift_task_alloc();
  sub_10004B564(&qword_1005B3728, &qword_1004D8410);
  v1[629] = swift_task_alloc();
  sub_10004B564(&qword_1005B1C88, &qword_1004D5E68);
  v1[635] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v1[641] = v6;
  v1[647] = *(v6 - 8);
  v1[653] = swift_task_alloc();
  type metadata accessor for DispatchQoS();
  v1[659] = swift_task_alloc();
  v7 = swift_task_alloc();
  v1[665] = v7;
  *v7 = v1;
  v7[1] = sub_1003E03A8;

  return daemon.getter();
}

uint64_t sub_1003E03A8(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[671] = a1;

  v3 = swift_task_alloc();
  v2[677] = v3;
  v4 = type metadata accessor for Daemon();
  v2[683] = v4;
  v5 = sub_10004B564(&qword_1005A90E0, &qword_1004C2490);
  v6 = sub_1003F50C4(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[689] = v6;
  v7 = sub_10005A3CC();
  *v3 = v9;
  v3[1] = sub_1003E0564;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1003E0564(uint64_t a1)
{
  v3 = *v2;
  v3[695] = a1;
  v3[701] = v1;

  if (v1)
  {
    v4 = v3[527];
    v5 = sub_1003E2C3C;
  }

  else
  {
    v6 = v3[527];

    v5 = sub_1003E0690;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1003E0690(uint64_t a1)
{
  if (sub_1003F399C())
  {
    type metadata accessor for XPCActivity();
    static DispatchQoS.utility.getter();
    swift_retain_n();
    v2 = swift_task_alloc();
    v1[707] = v2;
    *v2 = v1;
    v2[1] = sub_1003E0824;
    v3 = v1[659];
    v4 = v1[527];

    return XPCActivity.__allocating_init(name:qos:criteriaBlock:handler:)(0xD00000000000002ALL, 0x80000001004E9C00, v3, &unk_1004D8478, v4, &unk_1004D8480, v4);
  }

  else
  {
    v5 = v1[695];
    v1[719] = sub_1003F50C4(&qword_1005B3730, type metadata accessor for NITokenService, &unk_1004D8A58);

    return _swift_task_switch(sub_1003E09F4, v5, 0);
  }
}

uint64_t sub_1003E0824(uint64_t a1)
{
  v2 = *(*v1 + 4216);
  *(*v1 + 5704) = a1;

  return _swift_task_switch(sub_1003E093C, v2, 0);
}

uint64_t sub_1003E093C()
{
  *(v0[527] + OBJC_IVAR____TtC13findmylocated14NITokenService_tokenRequestActivity) = v0[713];

  v1 = v0[695];
  v0[719] = sub_1003F50C4(&qword_1005B3730, type metadata accessor for NITokenService, &unk_1004D8A58);

  return _swift_task_switch(sub_1003E09F4, v1, 0);
}

uint64_t sub_1003E09F4()
{
  v1 = v0[653];
  v2 = v0[647];
  v3 = v0[641];
  v4 = v0[527];
  sub_100458A94(v0[719], v1);
  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_1003E0AA0, v4, 0);
}

uint64_t sub_1003E0AA0()
{
  v1 = swift_task_alloc();
  *(v0 + 5800) = v1;
  *v1 = v0;
  v1[1] = sub_1003E0B38;
  v2 = *(v0 + 5080);

  return sub_100437A14(v2);
}

uint64_t sub_1003E0B38()
{
  v1 = *(*v0 + 5080);
  v2 = *(*v0 + 4216);

  sub_100002CE0(v1, &qword_1005B1C88, &qword_1004D5E68);

  return _swift_task_switch(sub_1003E0C74, v2, 0);
}

uint64_t sub_1003E0C74()
{
  v1 = swift_task_alloc();
  *(v0 + 5848) = v1;
  *v1 = v0;
  v1[1] = sub_1003E0D04;

  return daemon.getter();
}

uint64_t sub_1003E0D04(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 5896) = a1;

  v5 = swift_task_alloc();
  *(v3 + 5944) = v5;
  v6 = type metadata accessor for CloudStorageService();
  v7 = sub_1003F50C4(&qword_1005AD568, type metadata accessor for CloudStorageService, &unk_1004D03B0);
  *v5 = v4;
  v5[1] = sub_1003E0EB8;
  v8 = *(v2 + 5512);
  v9 = *(v2 + 5464);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_1003E0EB8(uint64_t a1)
{
  v4 = *v2;
  v4[744] = a1;
  v4[745] = v1;

  if (v1)
  {
    v5 = v4[527];
    v6 = sub_1003E2D74;
  }

  else
  {

    v6 = sub_1003E0FF4;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1003E0FF4()
{
  *(v0 + 5968) = *(*(v0 + 5952) + 136);
  type metadata accessor for CloudKitStorage();
  sub_1003F50C4(&qword_1005B3738, &type metadata accessor for CloudKitStorage, &protocol conformance descriptor for CloudKitStorage);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003E10B4, v2, v1);
}

uint64_t sub_1003E10B4()
{
  v1 = *(v0 + 4216);
  dispatch thunk of CloudKitStorage.stateStream()();

  return _swift_task_switch(sub_1003E1124, v1, 0);
}

uint64_t sub_1003E1124()
{
  v1 = v0[629];
  v2 = v0[527];
  v3 = sub_10004B564(&qword_1005B3560, &qword_1004D82E8);
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  v4 = OBJC_IVAR____TtC13findmylocated14NITokenService_cloudKitAccountStateStream;
  swift_beginAccess();
  sub_100022364(v1, v2 + v4, &qword_1005B3728, &qword_1004D8410);
  swift_endAccess();
  v5 = swift_task_alloc();
  v0[747] = v5;
  *v5 = v0;
  v5[1] = sub_1003E1254;

  return daemon.getter();
}

uint64_t sub_1003E1254(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 5984) = a1;

  v5 = swift_task_alloc();
  *(v3 + 5992) = v5;
  v6 = type metadata accessor for DataManager(0);
  v7 = sub_1003F50C4(&qword_1005A90D0, type metadata accessor for DataManager, &unk_1004D1410);
  *v5 = v4;
  v5[1] = sub_1003E1408;
  v8 = *(v2 + 5512);
  v9 = *(v2 + 5464);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_1003E1408(uint64_t a1)
{
  v4 = *v2;
  v4[750] = a1;
  v4[751] = v1;

  if (v1)
  {
    v5 = v4[527];
    v6 = sub_1003E2EB8;
  }

  else
  {

    v6 = sub_1003E1544;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1003E1544()
{
  v1 = *(v0 + 4936);
  v2 = *(v0 + 4888);
  v3 = *(v0 + 4216);
  swift_allocObject();
  swift_weakInit();
  type metadata accessor for DataManager.State(0);
  *(v0 + 6176) = enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:);
  (*(v2 + 104))(v1);
  AsyncStream.init(_:bufferingPolicy:_:)();

  return _swift_task_switch(sub_1003E1660, v3, 0);
}

uint64_t sub_1003E1660()
{
  v1 = v0[623];
  v2 = v0[527];
  v3 = sub_10004B564(&qword_1005AA710, &qword_1004D2BA0);
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  v4 = OBJC_IVAR____TtC13findmylocated14NITokenService_dataManagerStateStream;
  swift_beginAccess();
  sub_100022364(v1, v2 + v4, &qword_1005B0F00, &qword_1004D2F00);
  swift_endAccess();
  v5 = swift_task_alloc();
  v0[752] = v5;
  *v5 = v0;
  v5[1] = sub_1003E178C;

  return daemon.getter();
}

uint64_t sub_1003E178C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 6024) = a1;

  v5 = swift_task_alloc();
  *(v3 + 6032) = v5;
  v6 = type metadata accessor for LocationMonitor();
  v7 = sub_1003F50C4(&qword_1005AD538, type metadata accessor for LocationMonitor, &unk_1004DD330);
  *v5 = v4;
  v5[1] = sub_1003E1940;
  v8 = *(v2 + 5512);
  v9 = *(v2 + 5464);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_1003E1940(uint64_t a1)
{
  v4 = *v2;
  v4[755] = a1;
  v4[756] = v1;

  if (v1)
  {
    v5 = v4[527];
    v6 = sub_1003E3008;
  }

  else
  {

    v6 = sub_1003E1A7C;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1003E1A7C()
{
  v1 = *(v0 + 6176);
  v2 = *(v0 + 4744);
  v3 = *(v0 + 4696);
  v4 = *(v0 + 4648);
  v5 = *(v0 + 4216);
  swift_allocObject();
  swift_weakInit();
  (*(v3 + 104))(v2, v1, v4);
  AsyncStream.init(_:bufferingPolicy:_:)();

  return _swift_task_switch(sub_1003E1B88, v5, 0);
}

uint64_t sub_1003E1B88()
{
  v1 = v0[599];
  v2 = v0[527];
  v3 = sub_10004B564(&qword_1005B3570, &qword_1004D82F0);
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  v4 = OBJC_IVAR____TtC13findmylocated14NITokenService_locationServicesToggleStream;
  swift_beginAccess();
  sub_100022364(v1, v2 + v4, &qword_1005B3720, &qword_1004D8408);
  swift_endAccess();
  v5 = swift_task_alloc();
  v0[757] = v5;
  *v5 = v0;
  v5[1] = sub_1003E1CB4;

  return daemon.getter();
}

uint64_t sub_1003E1CB4(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 6064) = a1;

  v5 = swift_task_alloc();
  *(v3 + 6072) = v5;
  v6 = type metadata accessor for AppDeletionService();
  v7 = sub_1003F50C4(&qword_1005AD540, type metadata accessor for AppDeletionService, &unk_1004DD0A8);
  *v5 = v4;
  v5[1] = sub_1003E1E68;
  v8 = *(v2 + 5512);
  v9 = *(v2 + 5464);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_1003E1E68(uint64_t a1)
{
  v4 = *v2;
  v4[760] = a1;
  v4[761] = v1;

  if (v1)
  {
    v5 = v4[527];
    v6 = sub_1003E3164;
  }

  else
  {

    v6 = sub_1003E1FA4;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1003E1FA4()
{
  v1 = *(v0 + 6176);
  v2 = *(v0 + 4552);
  v3 = *(v0 + 4504);
  v4 = *(v0 + 4456);
  v5 = *(v0 + 4216);
  swift_allocObject();
  swift_weakInit();
  (*(v3 + 104))(v2, v1, v4);
  AsyncStream.init(_:bufferingPolicy:_:)();

  return _swift_task_switch(sub_1003E20B0, v5, 0);
}

uint64_t sub_1003E20B0()
{
  v1 = v0[575];
  v2 = v0[527];
  v3 = sub_10004B564(&unk_1005B3580, &qword_1004D82F8);
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  v4 = OBJC_IVAR____TtC13findmylocated14NITokenService_appDeletionStream;
  swift_beginAccess();
  sub_100022364(v1, v2 + v4, &qword_1005B3710, &qword_1004D83F8);
  swift_endAccess();
  v5 = swift_task_alloc();
  v0[762] = v5;
  *v5 = v0;
  v5[1] = sub_1003E21DC;

  return daemon.getter();
}

uint64_t sub_1003E21DC(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 6104) = a1;

  v5 = swift_task_alloc();
  *(v3 + 6112) = v5;
  v6 = type metadata accessor for AccountService(0);
  v7 = sub_1003F50C4(&qword_1005A9118, type metadata accessor for AccountService, &unk_1004DCC10);
  *v5 = v4;
  v5[1] = sub_1003E2390;
  v8 = *(v2 + 5512);
  v9 = *(v2 + 5464);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_1003E2390(uint64_t a1)
{
  v4 = *v2;
  v4[765] = a1;
  v4[766] = v1;

  if (v1)
  {
    v5 = v4[527];
    v6 = sub_1003E32CC;
  }

  else
  {

    v6 = sub_1003E24CC;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1003E24CC()
{
  v1 = *(v0 + 6176);
  v2 = *(v0 + 4360);
  v3 = *(v0 + 4312);
  v4 = *(v0 + 4264);
  v5 = *(v0 + 4216);
  swift_allocObject();
  swift_weakInit();
  type metadata accessor for AccountService.State(0);
  (*(v3 + 104))(v2, v1, v4);
  AsyncStream.init(_:bufferingPolicy:_:)();

  return _swift_task_switch(sub_1003E25E0, v5, 0);
}

uint64_t sub_1003E25E0()
{
  v1 = *(v0 + 4408);
  v2 = *(v0 + 4216);
  v3 = sub_10004B564(&unk_1005AFB18, &qword_1004D12E8);
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  v4 = OBJC_IVAR____TtC13findmylocated14NITokenService_accountStateStream;
  swift_beginAccess();
  sub_100022364(v1, v2 + v4, &qword_1005B02F8, &qword_1004D1870);
  swift_endAccess();

  swift_asyncLet_begin();

  swift_asyncLet_begin();

  swift_asyncLet_begin();

  swift_asyncLet_begin();

  swift_asyncLet_begin();

  swift_asyncLet_begin();

  return _swift_asyncLet_get_throwing(v0 + 3216);
}

uint64_t sub_1003E2808(uint64_t a1, uint64_t a2)
{
  *(v3 + 6136) = v2;
  if (v2)
  {
    return _swift_asyncLet_finish(v3 + 656, a2, sub_1003E3440, v3 + 4224);
  }

  else
  {
    return _swift_asyncLet_get_throwing(v3 + 16);
  }
}

uint64_t sub_1003E2850(uint64_t a1, uint64_t a2)
{
  *(v3 + 6144) = v2;
  if (v2)
  {
    return _swift_asyncLet_finish(v3 + 656, a2, sub_1003E3734, v3 + 4560);
  }

  else
  {
    return _swift_asyncLet_get_throwing(v3 + 2576);
  }
}

uint64_t sub_1003E2898(uint64_t a1, uint64_t a2)
{
  *(v3 + 6152) = v2;
  if (v2)
  {
    return _swift_asyncLet_finish(v3 + 656, a2, sub_1003E3A28, v3 + 4896);
  }

  else
  {
    return _swift_asyncLet_get_throwing(v3 + 1936);
  }
}

uint64_t sub_1003E28E0(uint64_t a1, uint64_t a2)
{
  *(v3 + 6160) = v2;
  if (v2)
  {
    return _swift_asyncLet_finish(v3 + 656, a2, sub_1003E3D1C, v3 + 5232);
  }

  else
  {
    return _swift_asyncLet_get(v3 + 1296);
  }
}

uint64_t sub_1003E2948(uint64_t a1, uint64_t a2)
{
  *(v3 + 6168) = v2;
  if (v2)
  {
    v4 = sub_1003E4010;
    v5 = v3 + 656;
    v6 = v3 + 5616;
  }

  else
  {
    v4 = sub_1003E298C;
    v5 = v3 + 656;
    v6 = v3 + 3920;
  }

  return _swift_asyncLet_finish(v5, a2, v4, v6);
}

uint64_t sub_1003E2AC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003E2C3C()
{

  sub_100037FC8(0, 0);
  sub_100037FC8(0, 0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003E2D74()
{

  sub_100037FC8(0, 0);
  sub_100037FC8(0, 0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003E2EB8()
{

  sub_100037FC8(0, 0);
  sub_100037FC8(0, 0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003E3008()
{

  sub_100037FC8(0, 0);
  sub_100037FC8(0, 0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003E3164()
{

  sub_100037FC8(0, 0);
  sub_100037FC8(0, 0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003E32CC()
{

  sub_100037FC8(0, 0);
  sub_100037FC8(0, 0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003E3588()
{

  v1 = *(v0 + 4216);
  sub_100037FC8(&unk_1004D8460, v1);
  sub_100037FC8(&unk_1004D8470, v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1003E387C()
{

  v1 = *(v0 + 4216);
  sub_100037FC8(&unk_1004D8460, v1);
  sub_100037FC8(&unk_1004D8470, v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1003E3B70()
{

  v1 = *(v0 + 4216);
  sub_100037FC8(&unk_1004D8460, v1);
  sub_100037FC8(&unk_1004D8470, v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1003E3E64()
{

  v1 = *(v0 + 4216);
  sub_100037FC8(&unk_1004D8460, v1);
  sub_100037FC8(&unk_1004D8470, v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1003E4158()
{

  v1 = *(v0 + 4216);
  sub_100037FC8(&unk_1004D8460, v1);
  sub_100037FC8(&unk_1004D8470, v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1003E4304()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1003E4394();
}

uint64_t sub_1003E4394()
{
  v1[263] = v0;
  v2 = sub_10004B564(&qword_1005AFFF0, &qword_1004D1520);
  v1[269] = v2;
  v1[275] = *(v2 - 8);
  v1[281] = swift_task_alloc();
  v1[287] = sub_10004B564(&qword_1005B1C88, &qword_1004D5E68);
  v1[293] = swift_task_alloc();
  v3 = type metadata accessor for CloudKitStorage.State();
  v1[299] = v3;
  v1[300] = *(v3 - 8);
  v1[301] = swift_task_alloc();
  v1[302] = swift_task_alloc();
  v1[303] = swift_task_alloc();
  v1[304] = swift_task_alloc();
  sub_10004B564(&qword_1005B3758, &qword_1004D8580);
  v1[305] = swift_task_alloc();
  v4 = sub_10004B564(&qword_1005B3760, &qword_1004D8588);
  v1[306] = v4;
  v1[307] = *(v4 - 8);
  v1[308] = swift_task_alloc();
  sub_10004B564(&qword_1005B3728, &qword_1004D8410);
  v1[309] = swift_task_alloc();
  v5 = sub_10004B564(&qword_1005B3560, &qword_1004D82E8);
  v1[310] = v5;
  v1[311] = *(v5 - 8);
  v1[312] = swift_task_alloc();

  return _swift_task_switch(sub_1003E465C, v0, 0);
}

uint64_t sub_1003E465C(uint64_t a1)
{
  if (static SystemInfo.underTest.getter())
  {

    v2 = *(v1 + 8);
LABEL_11:

    return v2();
  }

  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  *(v1 + 2504) = sub_10000A6F0(v3, qword_1005E0C30);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Monitoring CloudKit AccountState stream", v6, 2u);
  }

  v7 = *(v1 + 2488);
  v8 = *(v1 + 2480);
  v9 = *(v1 + 2472);
  v10 = *(v1 + 2104);

  v11 = OBJC_IVAR____TtC13findmylocated14NITokenService_cloudKitAccountStateStream;
  swift_beginAccess();
  sub_100005F04(v10 + v11, v9, &qword_1005B3728, &qword_1004D8410);
  if ((*(v7 + 48))(v9, 1, v8) == 1)
  {
    sub_100002CE0(*(v1 + 2472), &qword_1005B3728, &qword_1004D8410);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "cloudKitAccountStateStream should be available by now!", v14, 2u);
    }

    sub_1003DA6A0();
    swift_allocError();
    *v15 = 5;
    swift_willThrow();

    v2 = *(v1 + 8);
    goto LABEL_11;
  }

  (*(*(v1 + 2488) + 32))(*(v1 + 2496), *(v1 + 2472), *(v1 + 2480));
  AsyncStream.makeAsyncIterator()();
  v17 = sub_1003F50C4(&qword_1005B3700, type metadata accessor for NITokenService, &unk_1004D83C8);
  *(v1 + 2512) = v17;
  *(v1 + 2600) = enum case for CloudKitStorage.State.unknown(_:);
  *(v1 + 2604) = enum case for CloudKitStorage.State.unavailable(_:);
  *(v1 + 2608) = enum case for CloudKitStorage.State.noAccount(_:);
  *(v1 + 2612) = enum case for CloudKitStorage.State.loading(_:);
  *(v1 + 2616) = enum case for CloudKitStorage.State.rebuilding(_:);
  *(v1 + 2620) = enum case for CloudKitStorage.State.available(_:);
  *(v1 + 2624) = enum case for CloudKitStorage.State.apnsConnected(_:);
  *(v1 + 2520) = 0u;
  *(v1 + 2536) = 0u;
  *(v1 + 2552) = 0u;
  *(v1 + 2568) = 0;
  v18 = *(v1 + 2104);
  v19 = swift_task_alloc();
  *(v1 + 2576) = v19;
  *v19 = v1;
  v19[1] = sub_1003E4B3C;
  v20 = *(v1 + 2448);
  v21 = *(v1 + 2440);

  return AsyncStream.Iterator.next(isolation:)(v21, v18, v17, v20);
}

uint64_t sub_1003E4B3C()
{
  v1 = *(*v0 + 2104);

  return _swift_task_switch(sub_1003E4C4C, v1, 0);
}

uint64_t sub_1003E4C4C()
{
  v84 = v0;
  v1 = *(v0 + 2440);
  v2 = *(v0 + 2400);
  v3 = *(v0 + 2392);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = *(v0 + 2568);
    v5 = *(v0 + 2560);
    v6 = *(v0 + 2552);
    v7 = *(v0 + 2544);
    v8 = *(v0 + 2536);
    v9 = *(v0 + 2528);
    v10 = *(v0 + 2496);
    v11 = *(v0 + 2488);
    v12 = *(v0 + 2480);
    (*(*(v0 + 2456) + 8))(*(v0 + 2464), *(v0 + 2448));
    (*(v11 + 8))(v10, v12);
    sub_100037FC8(v9, v8);
    sub_100037FC8(v7, v6);
    sub_100037FC8(v5, v4);

    v13 = *(v0 + 8);
LABEL_5:

    return v13();
  }

  v14 = *(v0 + 2520);
  (*(v2 + 32))(*(v0 + 2432), v1, v3);
  static Task<>.checkCancellation()();
  *(v0 + 2584) = v14;
  if (v14)
  {
    v76 = *(v0 + 2560);
    v79 = *(v0 + 2568);
    v73 = *(v0 + 2544);
    v74 = *(v0 + 2552);
    v15 = *(v0 + 2536);
    v16 = *(v0 + 2528);
    v17 = *(v0 + 2496);
    v18 = *(v0 + 2488);
    v19 = *(v0 + 2480);
    v20 = *(v0 + 2464);
    v21 = *(v0 + 2456);
    v22 = *(v0 + 2448);
    (*(*(v0 + 2400) + 8))(*(v0 + 2432), *(v0 + 2392));
    (*(v21 + 8))(v20, v22);
    (*(v18 + 8))(v17, v19);
    sub_100037FC8(v16, v15);
    sub_100037FC8(v73, v74);
    sub_100037FC8(v76, v79);

    v13 = *(v0 + 8);
    goto LABEL_5;
  }

  v24 = *(*(v0 + 2400) + 16);
  v24(*(v0 + 2424), *(v0 + 2432), *(v0 + 2392));
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  v27 = os_log_type_enabled(v25, v26);
  v28 = *(v0 + 2424);
  v29 = *(v0 + 2400);
  v30 = *(v0 + 2392);
  if (v27)
  {
    v31 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v83[0] = v77;
    *v31 = 136315138;
    sub_1003F50C4(&qword_1005B3768, &type metadata accessor for CloudKitStorage.State, &protocol conformance descriptor for CloudKitStorage.State);
    v75 = v26;
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v80 = v24;
    v34 = v33;
    v35 = *(v29 + 8);
    v35(v28, v30);
    v36 = sub_10000D01C(v32, v34, v83);
    v24 = v80;

    *(v31 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v25, v75, "cloudKitAccountStateStream event: %s", v31, 0xCu);
    sub_100004984(v77);
  }

  else
  {

    v35 = *(v29 + 8);
    v35(v28, v30);
  }

  *(v0 + 2592) = v35;
  v37 = *(v0 + 2616);
  v38 = *(v0 + 2416);
  v39 = *(v0 + 2400);
  v40 = *(v0 + 2392);
  v81 = *(v0 + 2600);
  v24(v38, *(v0 + 2432), v40);
  v41 = (*(v39 + 88))(v38, v40);
  if ((vmaxv_u16(vmovn_s32(vceqq_s32(vdupq_n_s32(v41), v81))) & 1) != 0 || v41 == v37)
  {
    goto LABEL_20;
  }

  if (v41 == *(v0 + 2620))
  {
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "CK account is available", v44, 2u);
    }

    v82 = *(v0 + 2568);
    v45 = *(v0 + 2560);
    v46 = *(v0 + 2552);
    v47 = *(v0 + 2544);
    v48 = *(v0 + 2536);
    v49 = *(v0 + 2528);

    sub_100037FC8(v49, v48);
    swift_asyncLet_begin();

    sub_100037FC8(v47, v46);
    swift_asyncLet_begin();

    sub_100037FC8(v45, v82);
    swift_asyncLet_begin();

    return _swift_asyncLet_get(v0 + 16);
  }

  if (v41 == *(v0 + 2624))
  {
LABEL_20:
    v24(*(v0 + 2408), *(v0 + 2432), *(v0 + 2392));
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.info.getter();
    v52 = os_log_type_enabled(v50, v51);
    v53 = *(v0 + 2432);
    v54 = *(v0 + 2408);
    v55 = *(v0 + 2392);
    if (v52)
    {
      v78 = *(v0 + 2432);
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v83[0] = v57;
      *v56 = 136315138;
      sub_1003F50C4(&qword_1005B3768, &type metadata accessor for CloudKitStorage.State, &protocol conformance descriptor for CloudKitStorage.State);
      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      v60 = v59;
      v35(v54, v55);
      v61 = sub_10000D01C(v58, v60, v83);

      *(v56 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v50, v51, "Ignoring %s", v56, 0xCu);
      sub_100004984(v57);

      v35(v78, v55);
    }

    else
    {

      v35(v54, v55);
      v35(v53, v55);
    }
  }

  else
  {
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&_mh_execute_header, v62, v63, "Unknown CloudKitStorage.State!", v64, 2u);
    }

    v65 = *(v0 + 2432);
    v66 = *(v0 + 2416);
    v67 = *(v0 + 2392);

    v35(v65, v67);
    v35(v66, v67);
  }

  *(v0 + 2520) = *(v0 + 2584);
  v68 = *(v0 + 2512);
  v69 = *(v0 + 2104);
  v70 = swift_task_alloc();
  *(v0 + 2576) = v70;
  *v70 = v0;
  v70[1] = sub_1003E4B3C;
  v71 = *(v0 + 2448);
  v72 = *(v0 + 2440);

  return AsyncStream.Iterator.next(isolation:)(v72, v69, v68, v71);
}

uint64_t sub_1003E5634()
{
  if (qword_1005A8548 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 2248);
  v2 = *(v0 + 2200);
  v3 = *(v0 + 2152);
  v4 = sub_10000A6F0(v3, qword_1005B34C8);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  ManagedDefault.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  v6 = *(v0 + 2628);
  if (v6 == 2 || (v6 & 1) != 0)
  {
    v7 = sub_1003E592C;
    v8 = v0 + 1296;
    v9 = v0 + 2112;
  }

  else
  {
    sub_100438FC0();
    v7 = sub_1003E5774;
    v8 = v0 + 1296;
    v9 = v0 + 2256;
  }

  return _swift_asyncLet_finish(v8, v5, v7, v9);
}

uint64_t sub_1003E5804()
{
  (*(v0 + 2592))(*(v0 + 2432), *(v0 + 2392));
  v1 = *(v0 + 2104);
  v2 = *(v0 + 2584);
  *(v0 + 2568) = v1;
  *(v0 + 2560) = &unk_1004D85B8;
  *(v0 + 2552) = v1;
  *(v0 + 2544) = &unk_1004D85A8;
  *(v0 + 2536) = v1;
  *(v0 + 2528) = &unk_1004D8598;
  *(v0 + 2520) = v2;
  v3 = *(v0 + 2512);
  v4 = swift_task_alloc();
  *(v0 + 2576) = v4;
  *v4 = v0;
  v4[1] = sub_1003E4B3C;
  v5 = *(v0 + 2448);
  v6 = *(v0 + 2440);

  return AsyncStream.Iterator.next(isolation:)(v6, v1, v3, v5);
}

uint64_t sub_1003E59BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1003E5A4C();
}

uint64_t sub_1003E5A4C()
{
  v1[12] = v0;
  v1[13] = *v0;
  sub_10004B564(&qword_1005B1C88, &qword_1004D5E68);
  v1[14] = swift_task_alloc();
  v2 = type metadata accessor for Handle();
  v1[15] = v2;
  v3 = *(v2 - 8);
  v1[16] = v3;
  v1[17] = *(v3 + 64);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  type metadata accessor for UUID();
  v1[21] = swift_task_alloc();
  v4 = type metadata accessor for HandleType();
  v1[22] = v4;
  v1[23] = *(v4 - 8);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v5 = type metadata accessor for Friend();
  v1[27] = v5;
  v6 = *(v5 - 8);
  v1[28] = v6;
  v1[29] = *(v6 + 64);
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  sub_10004B564(&qword_1005B3750, &qword_1004D84E8);
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  sub_10004B564(&qword_1005AA718, &qword_1004C4370);
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v7 = type metadata accessor for DataManager.State(0);
  v1[44] = v7;
  v1[45] = *(v7 - 8);
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  sub_10004B564(&qword_1005AA6F8, &unk_1004C4350);
  v1[50] = swift_task_alloc();
  v8 = sub_10004B564(&qword_1005AA700, &unk_1004D2F70);
  v1[51] = v8;
  v1[52] = *(v8 - 8);
  v1[53] = swift_task_alloc();
  sub_10004B564(&qword_1005B0F00, &qword_1004D2F00);
  v1[54] = swift_task_alloc();
  v9 = sub_10004B564(&qword_1005AA710, &qword_1004D2BA0);
  v1[55] = v9;
  v1[56] = *(v9 - 8);
  v1[57] = swift_task_alloc();

  return _swift_task_switch(sub_1003E5F44, v0, 0);
}

uint64_t sub_1003E5F44(uint64_t a1)
{
  if (static SystemInfo.underTest.getter())
  {

    v2 = *(v1 + 8);
LABEL_11:

    return v2();
  }

  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  *(v1 + 464) = sub_10000A6F0(v3, qword_1005E0C30);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Monitoring DataManager stream", v6, 2u);
  }

  v7 = *(v1 + 440);
  v8 = *(v1 + 448);
  v9 = *(v1 + 432);
  v10 = *(v1 + 96);

  v11 = OBJC_IVAR____TtC13findmylocated14NITokenService_dataManagerStateStream;
  swift_beginAccess();
  sub_100005F04(v10 + v11, v9, &qword_1005B0F00, &qword_1004D2F00);
  if ((*(v8 + 48))(v9, 1, v7) == 1)
  {
    sub_100002CE0(*(v1 + 432), &qword_1005B0F00, &qword_1004D2F00);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "dataManagerStateStream should be available by now!", v14, 2u);
    }

    sub_1003DA6A0();
    swift_allocError();
    *v15 = 7;
    swift_willThrow();

    v2 = *(v1 + 8);
    goto LABEL_11;
  }

  (*(*(v1 + 448) + 32))(*(v1 + 456), *(v1 + 432), *(v1 + 440));
  AsyncStream.makeAsyncIterator()();
  v17 = sub_1003F50C4(&qword_1005B3700, type metadata accessor for NITokenService, &unk_1004D83C8);
  v18 = OBJC_IVAR____TtC13findmylocated14NITokenService_tokenRequestActivity;
  *(v1 + 472) = v17;
  *(v1 + 480) = v18;
  *(v1 + 600) = enum case for HandleType.follower(_:);
  *(v1 + 604) = enum case for HandleType.following(_:);
  *(v1 + 488) = 0;
  v19 = *(v1 + 96);
  v20 = swift_task_alloc();
  *(v1 + 496) = v20;
  *v20 = v1;
  v20[1] = sub_1003E6588;
  v21 = *(v1 + 400);
  v22 = *(v1 + 408);

  return AsyncStream.Iterator.next(isolation:)(v21, v19, v17, v22);
}

uint64_t sub_1003E6588()
{
  v1 = *(*v0 + 96);

  return _swift_task_switch(sub_1003E6698, v1, 0);
}

uint64_t sub_1003E6698()
{
  v219 = v0;
  v1 = *(v0 + 400);
  if ((*(*(v0 + 360) + 48))(v1, 1, *(v0 + 352)) == 1)
  {
    v3 = *(v0 + 448);
    v2 = *(v0 + 456);
    v4 = *(v0 + 440);
    (*(*(v0 + 416) + 8))(*(v0 + 424), *(v0 + 408));
    (*(v3 + 8))(v2, v4);

    v5 = *(v0 + 8);
LABEL_5:

    return v5();
  }

  v6 = *(v0 + 488);
  sub_1003F4D30(v1, *(v0 + 392), type metadata accessor for DataManager.State);
  static Task<>.checkCancellation()();
  *(v0 + 504) = v6;
  if (v6)
  {
    v8 = *(v0 + 448);
    v7 = *(v0 + 456);
    v9 = *(v0 + 440);
    v11 = *(v0 + 416);
    v10 = *(v0 + 424);
    v12 = *(v0 + 408);
    sub_1003F4E48(*(v0 + 392), type metadata accessor for DataManager.State);
    (*(v11 + 8))(v10, v12);
    (*(v8 + 8))(v7, v9);

    v5 = *(v0 + 8);
    goto LABEL_5;
  }

  sub_1003F4254(*(v0 + 392), *(v0 + 384), type metadata accessor for DataManager.State);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 384);
  if (v16)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v218[0] = v19;
    *v18 = 136315138;
    v20 = sub_1001DA250();
    v22 = v21;
    sub_1003F4E48(v17, type metadata accessor for DataManager.State);
    v23 = sub_10000D01C(v20, v22, v218);

    *(v18 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v14, v15, "dataManagerStateStream event: %s", v18, 0xCu);
    sub_100004984(v19);
  }

  else
  {

    sub_1003F4E48(v17, type metadata accessor for DataManager.State);
  }

  sub_1003F4254(*(v0 + 392), *(v0 + 376), type metadata accessor for DataManager.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if ((EnumCaseMultiPayload - 4) < 4)
    {
      sub_1003F4254(*(v0 + 392), *(v0 + 368), type metadata accessor for DataManager.State);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.info.getter();
      v47 = os_log_type_enabled(v45, v46);
      v48 = *(v0 + 392);
      v49 = *(v0 + 368);
      if (v47)
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v218[0] = v51;
        *v50 = 136315138;
        v52 = sub_1001DA250();
        v54 = v53;
        sub_1003F4E48(v49, type metadata accessor for DataManager.State);
        v55 = sub_10000D01C(v52, v54, v218);

        *(v50 + 4) = v55;
        _os_log_impl(&_mh_execute_header, v45, v46, "Ignoring %s", v50, 0xCu);
        sub_100004984(v51);
      }

      else
      {

        sub_1003F4E48(v49, type metadata accessor for DataManager.State);
      }

      v56 = v48;
      goto LABEL_74;
    }

    v89 = **(v0 + 376);
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v218[0] = v93;
      *v92 = 136315138;
      if (v89)
      {
        v94 = 0x64656C62616E65;
      }

      else
      {
        v94 = 0x64656C6261736964;
      }

      if (v89)
      {
        v95 = 0xE700000000000000;
      }

      else
      {
        v95 = 0xE800000000000000;
      }

      v96 = sub_10000D01C(v94, v95, v218);

      *(v92 + 4) = v96;
      _os_log_impl(&_mh_execute_header, v90, v91, "Sharing my location is %s", v92, 0xCu);
      sub_100004984(v93);
    }

    if (v89)
    {
      if (qword_1005A8548 != -1)
      {
        swift_once();
      }

      v97 = sub_10004B564(&qword_1005AFFF0, &qword_1004D1520);
      sub_10000A6F0(v97, qword_1005B34C8);
      *(v0 + 608) = 0;
      swift_beginAccess();
      ManagedDefault.wrappedValue.setter();
      swift_endAccess();
      v98 = swift_task_alloc();
      *(v0 + 584) = v98;
      *v98 = v0;
      v98[1] = sub_1003E8D88;
      v99 = *(v0 + 112);

      return sub_100437A14(v99);
    }

    else
    {
      v116 = swift_task_alloc();
      *(v0 + 592) = v116;
      *v116 = v0;
      v116[1] = sub_1003E8FA4;

      return sub_1004383C4();
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v25 = *(v0 + 600);
        v27 = *(v0 + 200);
        v26 = *(v0 + 208);
        v28 = *(v0 + 176);
        v29 = *(v0 + 184);
        v30 = *(*(v0 + 224) + 32);
        v30(*(v0 + 296), *(v0 + 376), *(v0 + 216));
        Friend.type.getter();
        (*(v29 + 104))(v27, v25, v28);
        v31 = static HandleType.== infix(_:_:)();
        v32 = *(v29 + 8);
        v32(v27, v28);
        v32(v26, v28);
        if ((v31 & 1) == 0)
        {
          v100 = *(v0 + 392);
          (*(*(v0 + 224) + 8))(*(v0 + 296), *(v0 + 216));
LABEL_71:
          v56 = v100;
          goto LABEL_74;
        }

        v211 = v30;
        v205 = *(*(v0 + 224) + 16);
        v205(*(v0 + 288), *(v0 + 296), *(v0 + 216));
        v33 = Logger.logObject.getter();
        v34 = static os_log_type_t.default.getter();
        v35 = os_log_type_enabled(v33, v34);
        v36 = *(v0 + 288);
        v38 = *(v0 + 216);
        v37 = *(v0 + 224);
        if (v35)
        {
          v39 = swift_slowAlloc();
          v201 = swift_slowAlloc();
          v218[0] = v201;
          *v39 = 141558275;
          *(v39 + 4) = 1752392040;
          *(v39 + 12) = 2081;
          sub_1003F50C4(&qword_1005AA720, &type metadata accessor for Friend, &protocol conformance descriptor for Friend);
          v40 = dispatch thunk of CustomStringConvertible.description.getter();
          v42 = v41;
          v43 = *(v37 + 8);
          v43(v36, v38);
          v44 = sub_10000D01C(v40, v42, v218);

          *(v39 + 14) = v44;
          _os_log_impl(&_mh_execute_header, v33, v34, "Added a follower: %{private,mask.hash}s", v39, 0x16u);
          sub_100004984(v201);
        }

        else
        {

          v43 = *(v37 + 8);
          v43(v36, v38);
        }

        *(v0 + 536) = v43;
        v122 = *(v0 + 296);
        v123 = *(v0 + 280);
        v124 = *(v0 + 224);
        v125 = *(v0 + 216);
        v196 = *(v0 + 272);
        v127 = *(v0 + 96);
        v126 = *(v0 + 104);
        v128 = *(v0 + 232) + 7;
        v192 = v128;
        v194 = v122;
        v202 = *(v0 + 480);
        type metadata accessor for WorkItemQueue.WorkItem();
        v205(v123, v122, v125);
        v129 = *(v124 + 80);
        v130 = (v129 + 24) & ~v129;
        v131 = swift_allocObject();
        *(v131 + 16) = v127;
        v211(v131 + v130, v123, v125);
        *(v131 + ((v130 + v128) & 0xFFFFFFFFFFFFFFF8)) = v126;
        v205(v196, v194, v125);
        v132 = (v129 + 16) & ~v129;
        v133 = swift_allocObject();
        v211(v133 + v132, v196, v125);
        *(v133 + ((v132 + v192) & 0xFFFFFFFFFFFFFFF8)) = v126;

        UUID.init()();
        WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
        dispatch thunk of WorkItemQueue.enqueue(_:)();

        v134 = *(v127 + v202);
        *(v0 + 544) = v134;
        if (v134)
        {
          v216 = (&async function pointer to dispatch thunk of XPCActivity.updateCriteria() + async function pointer to dispatch thunk of XPCActivity.updateCriteria());

          v135 = swift_task_alloc();
          *(v0 + 552) = v135;
          *v135 = v0;
          v135[1] = sub_1003E8868;
          v136 = *(v0 + 312);
LABEL_63:

          return v216(v136);
        }

        v164 = *(v0 + 536);
        v100 = *(v0 + 392);
        v165 = *(v0 + 312);
        v166 = *(v0 + 296);
      }

      else
      {
        v72 = *(v0 + 600);
        v74 = *(v0 + 184);
        v73 = *(v0 + 192);
        v75 = *(v0 + 176);
        (*(*(v0 + 224) + 32))(*(v0 + 264), *(v0 + 376), *(v0 + 216));
        Friend.type.getter();
        v76 = (*(v74 + 88))(v73, v75);
        if (v76 != v72)
        {
          v101 = *(v0 + 216);
          v102 = *(*(v0 + 224) + 16);
          v103 = *(v0 + 264);
          if (v76 != *(v0 + 604))
          {
            v102(*(v0 + 240), v103, v101);
            v148 = Logger.logObject.getter();
            v149 = static os_log_type_t.default.getter();
            v150 = os_log_type_enabled(v148, v149);
            v217 = *(v0 + 392);
            v151 = *(v0 + 264);
            v152 = *(v0 + 240);
            v153 = *(v0 + 216);
            v154 = *(v0 + 224);
            if (v150)
            {
              v155 = *(v0 + 208);
              v206 = *(v0 + 216);
              v157 = *(v0 + 176);
              v156 = *(v0 + 184);
              buf = swift_slowAlloc();
              v213 = swift_slowAlloc();
              v218[0] = v213;
              *buf = 136315138;
              v203 = v149;
              Friend.type.getter();
              sub_1003F50C4(&qword_1005A9198, &type metadata accessor for HandleType, &protocol conformance descriptor for HandleType);
              v158 = dispatch thunk of CustomStringConvertible.description.getter();
              v210 = v151;
              v160 = v159;
              v161 = *(v156 + 8);
              v161(v155, v157);
              v162 = *(v154 + 8);
              v162(v152, v206);
              v163 = sub_10000D01C(v158, v160, v218);

              *(buf + 4) = v163;
              _os_log_impl(&_mh_execute_header, v148, v203, "Ignoring removal of type: %s", buf, 0xCu);
              sub_100004984(v213);

              v162(v210, v206);
              sub_1003F4E48(v217, type metadata accessor for DataManager.State);
            }

            else
            {
              v183 = *(v0 + 184);

              v184 = *(v154 + 8);
              v184(v152, v153);
              v184(v151, v153);
              sub_1003F4E48(v217, type metadata accessor for DataManager.State);
              v161 = *(v183 + 8);
            }

            v161(*(v0 + 192), *(v0 + 176));
            goto LABEL_75;
          }

          v102(*(v0 + 248), v103, v101);
          v104 = Logger.logObject.getter();
          v105 = static os_log_type_t.default.getter();
          v106 = os_log_type_enabled(v104, v105);
          v107 = *(v0 + 248);
          v108 = *(v0 + 216);
          v109 = *(v0 + 224);
          if (v106)
          {
            v110 = swift_slowAlloc();
            v111 = swift_slowAlloc();
            v218[0] = v111;
            *v110 = 141558275;
            *(v110 + 4) = 1752392040;
            *(v110 + 12) = 2081;
            sub_1003F50C4(&qword_1005AA720, &type metadata accessor for Friend, &protocol conformance descriptor for Friend);
            v112 = dispatch thunk of CustomStringConvertible.description.getter();
            v114 = v113;
            v208 = *(v109 + 8);
            v208(v107, v108);
            v115 = sub_10000D01C(v112, v114, v218);

            *(v110 + 14) = v115;
            _os_log_impl(&_mh_execute_header, v104, v105, "Removed a following: %{private,mask.hash}s", v110, 0x16u);
            sub_100004984(v111);
          }

          else
          {

            v208 = *(v109 + 8);
            v208(v107, v108);
          }

          v207 = *(v0 + 392);
          bufa = *(v0 + 264);
          v204 = *(v0 + 216);
          v169 = *(v0 + 160);
          v170 = *(v0 + 152);
          v171 = *(v0 + 128);
          v172 = *(v0 + 136);
          v173 = *(v0 + 120);
          v187 = v173;
          v191 = *(v0 + 104);
          v193 = *(v0 + 144);
          v214 = *(v0 + 96);
          Friend.handle.getter();
          type metadata accessor for WorkItemQueue.WorkItem();
          v189 = *(v171 + 16);
          v189(v170, v169, v173);
          v186 = (*(v171 + 80) + 16) & ~*(v171 + 80);
          v174 = (v172 + v186 + 7) & 0xFFFFFFFFFFFFFFF8;
          v175 = (v174 + 15) & 0xFFFFFFFFFFFFFFF8;
          v176 = swift_allocObject();
          v185 = *(v171 + 32);
          v185(v176 + v186, v170, v187);
          *(v176 + v174) = 2;
          *(v176 + v175) = v214;
          *(v176 + ((v175 + 15) & 0xFFFFFFFFFFFFFFF8)) = v191;
          v189(v193, v169, v187);
          v177 = swift_allocObject();
          v185(v177 + v186, v193, v187);
          *(v177 + v174) = v191;

          UUID.init()();
          WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
          dispatch thunk of WorkItemQueue.enqueue(_:)();

          (*(v171 + 8))(v169, v187);
          v208(bufa, v204);
          v56 = v207;
LABEL_74:
          sub_1003F4E48(v56, type metadata accessor for DataManager.State);
LABEL_75:
          *(v0 + 488) = *(v0 + 504);
          v178 = *(v0 + 472);
          v179 = *(v0 + 96);
          v180 = swift_task_alloc();
          *(v0 + 496) = v180;
          *v180 = v0;
          v180[1] = sub_1003E6588;
          v181 = *(v0 + 400);
          v182 = *(v0 + 408);

          return AsyncStream.Iterator.next(isolation:)(v181, v179, v178, v182);
        }

        (*(*(v0 + 224) + 16))(*(v0 + 256), *(v0 + 264), *(v0 + 216));
        v77 = Logger.logObject.getter();
        v78 = static os_log_type_t.default.getter();
        v79 = os_log_type_enabled(v77, v78);
        v80 = *(v0 + 256);
        v81 = *(v0 + 216);
        v82 = *(v0 + 224);
        if (v79)
        {
          v83 = swift_slowAlloc();
          v215 = swift_slowAlloc();
          v218[0] = v215;
          *v83 = 141558275;
          *(v83 + 4) = 1752392040;
          *(v83 + 12) = 2081;
          sub_1003F50C4(&qword_1005AA720, &type metadata accessor for Friend, &protocol conformance descriptor for Friend);
          v84 = dispatch thunk of CustomStringConvertible.description.getter();
          v86 = v85;
          v87 = *(v82 + 8);
          v87(v80, v81);
          v88 = sub_10000D01C(v84, v86, v218);

          *(v83 + 14) = v88;
          _os_log_impl(&_mh_execute_header, v77, v78, "Removed a follower: %{private,mask.hash}s", v83, 0x16u);
          sub_100004984(v215);
        }

        else
        {

          v87 = *(v82 + 8);
          v87(v80, v81);
        }

        *(v0 + 560) = v87;
        v209 = *(v0 + 480);
        v137 = *(v0 + 160);
        v138 = *(v0 + 152);
        v139 = *(v0 + 128);
        v140 = *(v0 + 136);
        v141 = *(v0 + 120);
        v197 = *(v0 + 104);
        v198 = *(v0 + 144);
        v212 = *(v0 + 96);
        Friend.handle.getter();
        type metadata accessor for WorkItemQueue.WorkItem();
        v195 = *(v139 + 16);
        v195(v138, v137, v141);
        v190 = (*(v139 + 80) + 16) & ~*(v139 + 80);
        v142 = (v140 + v190 + 7) & 0xFFFFFFFFFFFFFFF8;
        v143 = (v142 + 15) & 0xFFFFFFFFFFFFFFF8;
        v144 = swift_allocObject();
        v188 = *(v139 + 32);
        v188(v144 + v190, v138, v141);
        *(v144 + v142) = 1;
        *(v144 + v143) = v212;
        *(v144 + ((v143 + 15) & 0xFFFFFFFFFFFFFFF8)) = v197;
        v195(v198, v137, v141);
        v145 = swift_allocObject();
        v188(v145 + v190, v198, v141);
        *(v145 + v142) = v197;

        UUID.init()();
        WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
        dispatch thunk of WorkItemQueue.enqueue(_:)();

        (*(v139 + 8))(v137, v141);
        v146 = *(v212 + v209);
        *(v0 + 568) = v146;
        if (v146)
        {
          v216 = (&async function pointer to dispatch thunk of XPCActivity.updateCriteria() + async function pointer to dispatch thunk of XPCActivity.updateCriteria());

          v147 = swift_task_alloc();
          *(v0 + 576) = v147;
          *v147 = v0;
          v147[1] = sub_1003E8AF8;
          v136 = *(v0 + 304);
          goto LABEL_63;
        }

        v164 = *(v0 + 560);
        v100 = *(v0 + 392);
        v165 = *(v0 + 304);
        v166 = *(v0 + 264);
      }

      v167 = *(v0 + 216);
      v168 = type metadata accessor for XPCActivity.State();
      (*(*(v168 - 8) + 56))(v165, 1, 1, v168);
      sub_100002CE0(v165, &qword_1005B3750, &qword_1004D84E8);
      v164(v166, v167);
      goto LABEL_71;
    }

    v58 = *(v0 + 336);
    v57 = *(v0 + 344);
    sub_1000176A8(*(v0 + 376), v57, &qword_1005AA718, &qword_1004C4370);
    sub_100005F04(v57, v58, &qword_1005AA718, &qword_1004C4370);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.default.getter();
    v61 = os_log_type_enabled(v59, v60);
    v62 = *(v0 + 336);
    if (v61)
    {
      v63 = *(v0 + 328);
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *(v0 + 88) = v65;
      *v64 = 136315138;
      sub_100005F04(v62, v63, &qword_1005AA718, &qword_1004C4370);
      v66 = type metadata accessor for Device();
      v67 = *(v66 - 8);
      v68 = (*(v67 + 48))(v63, 1, v66);
      v69 = *(v0 + 328);
      if (v68 == 1)
      {
        sub_100002CE0(*(v0 + 328), &qword_1005AA718, &qword_1004C4370);
        v70 = 0xE300000000000000;
        v71 = 7104878;
      }

      else
      {
        v71 = Device.description.getter();
        v70 = v117;
        (*(v67 + 8))(v69, v66);
      }

      sub_100002CE0(*(v0 + 336), &qword_1005AA718, &qword_1004C4370);
      v118 = sub_10000D01C(v71, v70, (v0 + 88));

      *(v64 + 4) = v118;
      _os_log_impl(&_mh_execute_header, v59, v60, "Me Device change: %s", v64, 0xCu);
      sub_100004984(v65);
    }

    else
    {

      sub_100002CE0(v62, &qword_1005AA718, &qword_1004C4370);
    }

    if (qword_1005A8548 != -1)
    {
      swift_once();
    }

    v119 = sub_10004B564(&qword_1005AFFF0, &qword_1004D1520);
    sub_10000A6F0(v119, qword_1005B34C8);
    *(v0 + 609) = 0;
    swift_beginAccess();
    ManagedDefault.wrappedValue.setter();
    swift_endAccess();
    sub_100438FC0();
    v120 = swift_task_alloc();
    *(v0 + 512) = v120;
    *v120 = v0;
    v120[1] = sub_1003E82E0;
    v121 = *(v0 + 344);

    return sub_1003ED788(v121);
  }
}