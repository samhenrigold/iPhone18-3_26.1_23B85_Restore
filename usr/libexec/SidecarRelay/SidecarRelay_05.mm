void sub_10006D2D0()
{
  v1 = *(v0 - 224);
  *(v0 - 120) = *(v0 - 232);
  *(v0 - 112) = v1;
  *(v0 - 152) = _NSConcreteStackBlock;
}

uint64_t sub_10006D334(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_10006D3A8()
{

  return type metadata accessor for DispatchQoS();
}

uint64_t sub_10006D484()
{

  return OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
}

uint64_t sub_10006D4A8(uint64_t a1, uint64_t a2)
{
  *(v3 - 240) = v2;
  *(v3 - 232) = a1;
  *(v3 - 224) = a2;

  return type metadata accessor for DispatchTimeInterval();
}

uint64_t sub_10006D550(uint64_t a1)
{
  v4 = *(v1 - 184);

  return static DispatchTimeInterval.seconds(_:)(v4, v3);
}

uint64_t sub_10006D570()
{

  return OS_dispatch_source.setEventHandler(qos:flags:handler:)();
}

uint64_t sub_10006D590()
{

  return OS_dispatch_source.setEventHandler(qos:flags:handler:)();
}

uint64_t sub_10006D5B0()
{

  return static OS_dispatch_source.makeTimerSource(flags:queue:)();
}

uint64_t sub_10006D5D0()
{

  return type metadata accessor for DispatchTime();
}

uint64_t sub_10006D5F0()
{

  return sub_10000FC6C(v0, v1);
}

uint64_t sub_10006D608(unint64_t *a1)
{

  return sub_100018B20(a1, v1, v2);
}

uint64_t sub_10006D6BC()
{
  v1 = *(v0 + 24);
  if (*(v0 + 1) != 30 || v1 == 0)
  {
    return 0;
  }

  v3 = swift_slowAlloc();
  if (!if_indextoname(v1, v3))
  {
    sub_10001B8B0();
    return 0;
  }

  v4 = String.init(cString:)();
  sub_10001B8B0();
  return v4;
}

const char *sub_10006D770()
{
  v12[0].sa_len = *v0;
  memcpy(&v12[0].sa_family, v0 + 1, 0x7FuLL);
  if (v12[0].sa_len)
  {
    sa_len = v12[0].sa_len;
  }

  else
  {
    sa_len = 128;
  }

  v2 = swift_slowAlloc();
  v3 = swift_slowAlloc();
  v4 = getnameinfo(v12, sa_len, v2, 0x401u, v3, 0x20u, 26);
  if (!v4)
  {
    v6 = String.init(cString:)();
    v7 = String.init(cString:)();
    v9 = v8;
    v10._countAndFlagsBits = 58;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);
    v11._countAndFlagsBits = v7;
    v11._object = v9;
    String.append(_:)(v11);

    goto LABEL_8;
  }

  result = gai_strerror(v4);
  if (result)
  {
    v6 = String.init(cString:)();
LABEL_8:
    sub_10001B8B0();

    return v6;
  }

  __break(1u);
  return result;
}

double sub_10006D914(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 1;
  return result;
}

id sub_10006D9A8()
{
  result = [objc_allocWithZone(type metadata accessor for TimeSyncManager()) init];
  qword_10009C1D0 = result;
  return result;
}

id sub_10006D9DC()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC15SidecarTimeSyncP33_52E478E0294A7D1A30B0593D640BE43C15TimeSyncManager_activation];
  *v2 = 0;
  v2[8] = -1;
  *&v0[OBJC_IVAR____TtC15SidecarTimeSyncP33_52E478E0294A7D1A30B0593D640BE43C15TimeSyncManager_clocks] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC15SidecarTimeSyncP33_52E478E0294A7D1A30B0593D640BE43C15TimeSyncManager_completions] = _swiftEmptyArrayStorage;
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "init");
}

uint64_t sub_10006DA70()
{
  v0 = type metadata accessor for Logger();
  sub_1000034A4(v0, qword_10009C1D8);
  sub_100003420(v0, qword_10009C1D8);
  return Logger.init(subsystem:category:)();
}

BOOL sub_10006DAE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = OBJC_IVAR____TtC15SidecarTimeSyncP33_52E478E0294A7D1A30B0593D640BE43C15TimeSyncManager_completions;
  swift_beginAccess();

  sub_10007120C(&qword_10009C428, &qword_100079388);
  v8 = *(*(v3 + v7) + 16);
  sub_100071270(v8, &qword_10009C428, &qword_100079388);
  v9 = *(v3 + v7);
  *(v9 + 16) = v8 + 1;
  v10 = v9 + 16 * v8;
  *(v10 + 32) = sub_100071784;
  *(v10 + 40) = v6;
  *(v3 + v7) = v9;
  swift_endAccess();
  return sub_10006DBE4();
}

BOOL sub_10006DBE4()
{
  v1 = *(v0 + OBJC_IVAR____TtC15SidecarTimeSyncP33_52E478E0294A7D1A30B0593D640BE43C15TimeSyncManager_activation + 8);
  if (v1 != 255)
  {
    v2 = *(v0 + OBJC_IVAR____TtC15SidecarTimeSyncP33_52E478E0294A7D1A30B0593D640BE43C15TimeSyncManager_activation);
    v3 = OBJC_IVAR____TtC15SidecarTimeSyncP33_52E478E0294A7D1A30B0593D640BE43C15TimeSyncManager_completions;
    swift_beginAccess();
    v4 = *(v0 + v3);
    *(v0 + v3) = _swiftEmptyArrayStorage;
    v5 = *(v4 + 16);
    if (v5)
    {
      sub_10007157C(v2, v1 & 1);
      v6 = v4 + 40;
      do
      {
        v7 = *(v6 - 8);
        v9 = v2;
        v10 = v1 & 1;

        v7(&v9);

        v6 += 16;
        --v5;
      }

      while (v5);
      sub_1000714F8(v2, v1);
    }
  }

  return v1 != 255;
}

void sub_10006DCD4(uint64_t a1, uint64_t a2)
{
  sub_10006DAE8(a1, a2);
  if (!sub_10006DBE4())
  {
    if (qword_10009C1C8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100003420(v2, qword_10009C1D8);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Activating TimeSync", v5, 2u);
    }

    sub_10006DDDC();
  }
}

void sub_10006DDDC()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v5[4] = sub_10007151C;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100052C90;
  v5[3] = &unk_1000914E0;
  v3 = _Block_copy(v5);
  v4 = v0;

  [v1 notifyWhenClockManagerIsAvailable:v3];
  _Block_release(v3);
}

void sub_10006DEC0(void *a1)
{
  if (qword_10009C1C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003420(v2, qword_10009C1D8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "TSClockManager is Available", v5, 2u);
  }

  v6 = [objc_opt_self() sharedClockManager];
  [v6 addClient:a1];
  aBlock[0] = 0;
  v7 = [v6 addgPTPServicesWithError:aBlock];
  v8 = aBlock[0];
  if (v7)
  {
    v9 = objc_opt_self();
    v10 = swift_allocObject();
    v10[2] = a1;
    aBlock[4] = sub_100071524;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100052C90;
    aBlock[3] = &unk_100091530;
    v11 = _Block_copy(aBlock);
    v12 = v8;
    v13 = a1;

    [v9 notifyWhengPTPManagerIsAvailable:v11];
    _Block_release(v11);
  }

  else
  {
    v14 = aBlock[0];
    v15 = _convertNSErrorToError(_:)();

    swift_willThrow();
    __chkstk_darwin(v16);
    sub_1000650F0(sub_10006E5D0, 0, sub_10001132C);
    swift_errorRetain();
    sub_10006E2D4(v15, 1);
  }
}

void sub_10006E198()
{
  if (qword_10009C1C8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003420(v0, qword_10009C1D8);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "gPTPManager is Available", v3, 2u);
  }

  v4 = [objc_opt_self() sharedgPTPManager];
  v5 = v4;
  sub_10006E2D4(v4, 0);
}

uint64_t sub_10006E2D4(void *a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v9 = *(v18 - 8);
  __chkstk_darwin(v18);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000033E0(0, &qword_1000991A0, OS_dispatch_queue_ptr);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  *(v13 + 24) = a1;
  v14 = a2 & 1;
  *(v13 + 32) = a2 & 1;
  aBlock[4] = sub_100071570;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100052C90;
  aBlock[3] = &unk_100091580;
  v15 = _Block_copy(aBlock);
  v16 = v3;
  sub_10007157C(a1, v14);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10006C2C0(&unk_10009A9A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000FC6C(&unk_100099AD0, &qword_100075D58);
  sub_100018B20(&qword_10009A9B0, &unk_100099AD0, &qword_100075D58);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v19 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v18);
}

BOOL sub_10006E5F4(uint64_t a1, void *a2, char a3)
{
  v4 = a1 + OBJC_IVAR____TtC15SidecarTimeSyncP33_52E478E0294A7D1A30B0593D640BE43C15TimeSyncManager_activation;
  v5 = *(a1 + OBJC_IVAR____TtC15SidecarTimeSyncP33_52E478E0294A7D1A30B0593D640BE43C15TimeSyncManager_activation);
  *v4 = a2;
  v6 = *(v4 + 8);
  v7 = a3 & 1;
  *(v4 + 8) = a3 & 1;
  sub_1000714F8(v5, v6);
  sub_10007157C(a2, v7);
  return sub_10006DBE4();
}

id sub_10006E654()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10006E6F0()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v5 = *(v17 - 8);
  __chkstk_darwin(v17);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10009C1C8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003420(v8, qword_10009C1D8);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "TimeSync Connection Interrupted", v11, 2u);
  }

  sub_1000033E0(0, &qword_1000991A0, OS_dispatch_queue_ptr);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  aBlock[4] = sub_1000714D8;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100052C90;
  aBlock[3] = &unk_100091490;
  v14 = _Block_copy(aBlock);
  v15 = v1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10006C2C0(&unk_10009A9A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000FC6C(&unk_100099AD0, &qword_100075D58);
  sub_100018B20(&qword_10009A9B0, &unk_100099AD0, &qword_100075D58);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v18 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v17);
}

void sub_10006EA84(uint64_t a1)
{
  v1 = a1 + OBJC_IVAR____TtC15SidecarTimeSyncP33_52E478E0294A7D1A30B0593D640BE43C15TimeSyncManager_activation;
  v2 = *(a1 + OBJC_IVAR____TtC15SidecarTimeSyncP33_52E478E0294A7D1A30B0593D640BE43C15TimeSyncManager_activation);
  *v1 = 0;
  v3 = *(v1 + 8);
  *(v1 + 8) = -1;
  sub_1000714F8(v2, v3);
  sub_10006DDDC();
}

uint64_t sub_10006EB34(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10009C1C8 != -1)
  {
    swift_once();
  }

  v8 = sub_100003420(v4, qword_10009C1D8);
  v9 = (*(v5 + 16))(v7, v8, v4);
  v10 = __chkstk_darwin(v9);
  *(&v15 - 2) = v11;
  __chkstk_darwin(v10);
  *(&v15 - 2) = a1;
  sub_1000650F0(sub_1000716B4, v12, sub_100011C20);
  (*(v5 + 8))(v7, v4);
  result = *(v2 + 16);
  v14 = *(v2 + 24);
  if (v14 == 255 || (v14 & 1) == 0)
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = 1;
    sub_10006F0F4(result, v14);
    swift_errorRetain();
    return sub_10006ED3C();
  }

  return result;
}

BOOL sub_10006ED3C()
{
  v1 = *(v0 + 24);
  if (v1 != 255)
  {
    v2 = *(v0 + 16);
    swift_beginAccess();
    v3 = *(v0 + 168);
    *(v0 + 168) = _swiftEmptyArrayStorage;
    v4 = *(v3 + 16);
    if (v4)
    {
      sub_100011304(v2, v1 & 1);
      v5 = v3 + 40;
      do
      {
        v6 = *(v5 - 8);
        v8 = v2;
        v9 = v1 & 1;

        v6(&v8);

        v5 += 16;
        --v4;
      }

      while (v4);
      sub_10006F0F4(v2, v1);
    }
  }

  return v1 != 255;
}

uint64_t Domain.__allocating_init()()
{
  v0 = swift_allocObject();
  Domain.init()();
  return v0;
}

uint64_t Domain.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = -1;
  sub_10006D914(__src);
  memcpy((v0 + 32), __src, 0x81uLL);
  *(v0 + 168) = _swiftEmptyArrayStorage;
  return v0;
}

uint64_t Domain.deinit()
{
  Domain.deallocate()();
  sub_10006F0F4(*(v0 + 16), *(v0 + 24));

  return v0;
}

Swift::Void __swiftcall Domain.deallocate()()
{
  v1 = v0;
  v2 = *(v0 + 24);
  if (v2 != 255 && (v2 & 1) == 0)
  {
    v3 = *(v0 + 16);
    v4 = *(v3 + 24);
    if (v4 != TSNullClockIdentifier)
    {
      sub_100011304(*(v0 + 16), 0);
      if (qword_10009C1C8 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_100003420(v5, qword_10009C1D8);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 134217984;
        *(v8 + 4) = v4;
        _os_log_impl(&_mh_execute_header, v6, v7, "%llx: Deallocating", v8, 0xCu);
      }

      if (qword_10009C1C0 != -1)
      {
        swift_once();
      }

      sub_100049E4C();
      v9 = swift_allocObject();
      *(v9 + 16) = v1;
      *(v9 + 24) = v4;

      sub_10006DCD4(sub_10006FC14, v9);

      sub_10006F0F4(v3, v2);
    }
  }

  sub_1000033E0(0, &qword_100099030, NSError_ptr);
  v10 = sub_100071794(3758097084, 0, 0, "SidecarTimeSync/SidecarTimeSync.swift", 37, 2, 207);
  v11 = *(v1 + 16);
  *(v1 + 16) = v10;
  v12 = *(v1 + 24);
  *(v1 + 24) = 1;

  sub_10006F0F4(v11, v12);
}

uint64_t sub_10006F0F4(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_100011310(result, a2 & 1);
  }

  return result;
}

uint64_t Domain.__deallocating_deinit()
{
  Domain.deinit();

  return _swift_deallocClassInstance(v0, 176, 7);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Domain.bind(peer:)(Swift::String peer)
{
  memset(v2, 0, sizeof(v2));
  sub_10006F1E4(v2, 0x80u, peer._countAndFlagsBits);
  if (!v1)
  {
    memcpy(__dst, v2, sizeof(__dst));
    sub_10006F2DC(__dst);
  }
}

uint64_t sub_10006F1E4(uint64_t a1, unsigned int a2, uint64_t a3)
{
  String.utf8CString.getter();
  v3 = StringToSockAddr();

  result = noErr.getter();
  if (v3 != result)
  {
    sub_1000033E0(0, &qword_100099030, NSError_ptr);
    sub_100071788(v3, 0, 0, "SidecarTimeSync/SidecarTimeSync.swift", 37, 2, 154);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10006F2DC(const void *a1)
{
  memcpy(__dst, (v1 + 32), 0x81uLL);
  if (sub_1000713E0(__dst) == 1)
  {
    memcpy(v4, a1, 0x80uLL);
    sub_100071710(v4);
    memcpy((v1 + 32), v4, 0x81uLL);
    return sub_10006F3F0();
  }

  else
  {
    sub_1000033E0(0, &qword_100099030, NSError_ptr);
    sub_100071794(3758097084, 0, 0, "SidecarTimeSync/SidecarTimeSync.swift", 37, 2, 166);
    return swift_willThrow();
  }
}

uint64_t sub_10006F3F0()
{
  v1 = v0;
  result = sub_10006ED3C();
  if ((result & 1) == 0)
  {
    memcpy(__dst, (v0 + 32), 0x81uLL);
    result = sub_1000713E0(__dst);
    if (result != 1)
    {
      memcpy(__src, __dst, sizeof(__src));
      if (qword_10009C1C8 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_100003420(v3, qword_10009C1D8);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v28 = v7;
        *v6 = 136446210;
        memcpy(v26, __dst, sizeof(v26));
        if (__dst[0])
        {
          v8 = __dst[0];
        }

        else
        {
          v8 = 128;
        }

        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v11 = getnameinfo(v26, v8, v9, 0x401u, v10, 0x20u, 26);
        if (v11)
        {
          result = gai_strerror(v11);
          if (!result)
          {
            __break(1u);
            return result;
          }

          v12 = String.init(cString:)();
          v14 = v13;
        }

        else
        {
          v15 = String.init(cString:)();
          v17 = v16;
          v24 = String.init(cString:)();
          v19 = v18;
          v25 = v17;
          v20._countAndFlagsBits = 58;
          v20._object = 0xE100000000000000;
          String.append(_:)(v20);
          v21._countAndFlagsBits = v24;
          v21._object = v19;
          String.append(_:)(v21);

          v12 = v15;
          v14 = v25;
        }

        v22 = sub_100014C58(v12, v14, &v28);

        *(v6 + 4) = v22;
        _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s: Allocating", v6, 0xCu);
        sub_100003458(v7);
      }

      if (qword_10009C1C0 != -1)
      {
        swift_once();
      }

      v23 = swift_allocObject();
      *(v23 + 16) = v1;
      memcpy((v23 + 24), __src, 0x80uLL);

      sub_10006DCD4(sub_10007165C, v23);
    }
  }

  return result;
}

uint64_t Domain.allocate(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_100049E4C();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  swift_beginAccess();

  sub_10007120C(&unk_10009C418, &qword_100079380);
  v7 = *(*(v3 + 168) + 16);
  sub_100071270(v7, &unk_10009C418, &qword_100079380);
  v8 = *(v3 + 168);
  *(v8 + 16) = v7 + 1;
  v9 = v8 + 16 * v7;
  *(v9 + 32) = sub_100071430;
  *(v9 + 40) = v6;
  *(v3 + 168) = v8;
  swift_endAccess();
  return sub_10006F3F0();
}

void sub_10006F80C(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2)
  {
    if (qword_10009C1C8 != -1)
    {
      swift_once();
    }

    v11 = sub_100003420(v7, qword_10009C1D8);
    v12 = (*(v8 + 16))(v10, v11, v7);
    v13 = __chkstk_darwin(v12);
    *&v26[-16] = a4;
    __chkstk_darwin(v13);
    *&v26[-16] = a1;
    sub_1000650F0(sub_100071780, v14, sub_100011C20);
LABEL_14:
    (*(v8 + 8))(v10, v7);
    return;
  }

  v27 = 0;
  if (([a1 removePTPInstanceWithIdentifier:a4 error:&v27] & 1) == 0)
  {
    v20 = v27;
    v21 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_10009C1C8 != -1)
    {
      swift_once();
    }

    v22 = sub_100003420(v7, qword_10009C1D8);
    v23 = (*(v8 + 16))(v10, v22, v7);
    v24 = __chkstk_darwin(v23);
    *&v26[-16] = a4;
    __chkstk_darwin(v24);
    *&v26[-16] = v21;
    sub_1000650F0(sub_100071780, v25, sub_100011C20);

    goto LABEL_14;
  }

  v15 = qword_10009C1C8;
  v16 = v27;
  if (v15 != -1)
  {
    swift_once();
  }

  sub_100003420(v7, qword_10009C1D8);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 134217984;
    *(v19 + 4) = a4;
    _os_log_impl(&_mh_execute_header, v17, v18, "%llx: Deallocated", v19, 0xCu);
  }
}

uint64_t sub_10006FBE0()
{

  sub_100049E4C();

  return _swift_deallocObject(v0);
}

const char *sub_10006FC20(void *a1, char a2, uint64_t a3, _DWORD *a4)
{
  if (a2)
  {
    return sub_10006EB34(a1);
  }

  v10 = 0;
  v11 = TSNullClockIdentifier;
  if ([a1 addPTPInstance:&v11 error:&v10])
  {
    v6 = v11;
    v7 = v10;
    return sub_10006FD04(v6, a4, 10);
  }

  else
  {
    v8 = v10;
    v9 = _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_10006EB34(v9);
  }
}

const char *sub_10006FD04(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v4 = v3;
  v82 = a3;
  v85 = a1;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v80 = *(v6 - 8);
  v81 = v6;
  __chkstk_darwin(v6);
  v78 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for DispatchQoS();
  v77 = *(v79 - 8);
  __chkstk_darwin(v79);
  v76 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTimeInterval();
  v73 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = (&v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v83 = type metadata accessor for DispatchTime();
  v75 = *(v83 - 1);
  v12 = __chkstk_darwin(v83);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v74 = &v69 - v15;
  v16 = *a2;
  LODWORD(v84) = a2[1];
  v17 = *(a2 + 1);
  v18 = *(a2 + 2);
  memcpy(__dst, a2 + 6, sizeof(__dst));
  v72 = v16;
  v71 = v17;
  v19 = v17;
  v20 = v18;
  if (BYTE1(v16) != 30)
  {
    if (BYTE1(v16) != 2)
    {
LABEL_17:
      sub_1000033E0(0, &qword_100099030, NSError_ptr);
      v44 = 261;
LABEL_18:
      v45 = sub_100071794(3758097084, 0, 0, "SidecarTimeSync/SidecarTimeSync.swift", 37, 2, v44);
      swift_willThrow();
LABEL_19:
      sub_10006EB34(v45);

      return sub_10006ED3C();
    }

    v19 = sub_10006D64C();
  }

  v93[0] = v19;
  v93[1] = v20;
  sub_10006D6BC();
  if (!v21)
  {
    goto LABEL_17;
  }

  v70 = v4;
  v22 = [objc_opt_self() sharedClockManager];
  v23 = [v22 clockWithClockIdentifier:v85];

  if (!v23)
  {

LABEL_23:
    v46 = v70;
    v47 = v82;
    if (v82)
    {
      sub_1000033E0(0, &qword_1000991A0, OS_dispatch_queue_ptr);
      v84 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      *v11 = 100;
      v48 = v73;
      (*(v73 + 104))(v11, enum case for DispatchTimeInterval.milliseconds(_:), v9);
      v49 = v74;
      + infix(_:_:)();
      (*(v48 + 8))(v11, v9);
      v75 = *(v75 + 8);
      (v75)(v14, v83);
      v50 = swift_allocObject();
      v51 = v85;
      v50[2] = v46;
      v50[3] = v51;
      memcpy(v50 + 4, a2, 0x80uLL);
      v50[20] = v47;
      v90[1] = sub_1000716A4;
      v90[2] = v50;
      *&v88.sa_len = _NSConcreteStackBlock;
      *&v88.sa_data[6] = 1107296256;
      v89 = sub_100052C90;
      v90[0] = &unk_100091670;
      v52 = _Block_copy(&v88);

      v53 = v76;
      static DispatchQoS.unspecified.getter();
      *&v88.sa_len = _swiftEmptyArrayStorage;
      sub_10006C2C0(&unk_10009A9A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10000FC6C(&unk_100099AD0, &qword_100075D58);
      sub_100018B20(&qword_10009A9B0, &unk_100099AD0, &qword_100075D58);
      v54 = v78;
      v55 = v81;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v56 = v84;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v52);

      (*(v80 + 8))(v54, v55);
      (*(v77 + 8))(v53, v79);
      return (v75)(v49, v83);
    }

    sub_1000033E0(0, &qword_100099030, NSError_ptr);
    v44 = 268;
    goto LABEL_18;
  }

  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (!v24)
  {

    goto LABEL_23;
  }

  v25 = v24;
  LOWORD(v86) = 0;
  v26 = String._bridgeToObjectiveC()();

  *&v88.sa_len = 0;
  v83 = v25;
  v27 = [v25 addUnicastUDPv6EtEPortOnInterfaceNamed:v26 withDestinationAddress:v93 allocatedPortNumber:&v86 error:&v88];

  v28 = v70;
  if (!v27)
  {
    v57 = *&v88.sa_len;
    v45 = _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_19;
  }

  v29 = qword_10009C1C8;
  v30 = *&v88.sa_len;
  if (v29 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_100003420(v31, qword_10009C1D8);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v32, v33))
  {

LABEL_30:
    type metadata accessor for Clock();
    swift_allocObject();
    v66 = sub_100070780(v83);
    v67 = *(v28 + 16);
    *(v28 + 16) = v66;
    v68 = *(v28 + 24);
    *(v28 + 24) = 0;
    sub_10006F0F4(v67, v68);
    return sub_10006ED3C();
  }

  v34 = swift_slowAlloc();
  v35 = swift_slowAlloc();
  v92 = v35;
  *v34 = 136446466;
  *&v88.sa_len = v72;
  *&v88.sa_data[2] = v84;
  *&v88.sa_data[6] = v71;
  v89 = v18;
  memcpy(v90, __dst, sizeof(v90));
  if (v72)
  {
    v36 = v72;
  }

  else
  {
    v36 = 128;
  }

  v37 = swift_slowAlloc();
  v38 = swift_slowAlloc();
  v39 = getnameinfo(&v88, v36, v37, 0x401u, v38, 0x20u, 26);
  if (!v39)
  {
    v58 = String.init(cString:)();
    v60 = v59;
    v84 = String.init(cString:)();
    v62 = v61;
    v86 = v58;
    v87 = v60;
    v63._countAndFlagsBits = 58;
    v63._object = 0xE100000000000000;
    String.append(_:)(v63);
    v64._countAndFlagsBits = v84;
    v64._object = v62;
    String.append(_:)(v64);

    v41 = v86;
    v43 = v87;
    goto LABEL_29;
  }

  result = gai_strerror(v39);
  if (result)
  {
    v41 = String.init(cString:)();
    v43 = v42;
LABEL_29:

    v65 = sub_100014C58(v41, v43, &v92);

    *(v34 + 4) = v65;
    *(v34 + 12) = 2048;
    *(v34 + 14) = v85;
    _os_log_impl(&_mh_execute_header, v32, v33, "%{public}s: Allocated %llx", v34, 0x16u);
    sub_100003458(v35);

    v28 = v70;
    goto LABEL_30;
  }

  __break(1u);
  return result;
}

const char *sub_100070690(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (!__OFSUB__(a4, 1))
  {
    return sub_10006FD04(a2, a3, a4 - 1);
  }

  __break(1u);
  return result;
}

uint64_t Clock.__allocating_init(clockIdentifier:)(uint64_t a1)
{
  v2 = swift_allocObject();
  Clock.init(clockIdentifier:)(a1);
  return v2;
}

uint64_t Clock.init(clockIdentifier:)(uint64_t a1)
{
  v2 = TSNullgPTPClockIdentity;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 24) = a1;
  *(v1 + 32) = v2;
  *(v1 + 16) = [objc_allocWithZone(TSgPTPClock) initWithClockIdentifier:a1];
  return v1;
}

uint64_t sub_100070780(void *a1)
{
  *(v1 + 32) = TSNullgPTPClockIdentity;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  v3 = [a1 clockIdentifier];
  *(v1 + 16) = a1;
  *(v1 + 24) = v3;
  return v1;
}

Swift::UInt64 __swiftcall Clock.domainTimeForMachAbsoluteTime(_:)(Swift::UInt64 a1)
{
  v3 = TSNullgPTPClockIdentity;
  result = [*(v1 + 16) convertFromMachAbsoluteToDomainTime:a1 grandmasterUsed:&v3];
  *(v1 + 32) = v3;
  return result;
}

Swift::UInt64 __swiftcall Clock.machAbsoluteTimeForDomainTime(_:)(Swift::UInt64 a1)
{
  v4 = TSNullgPTPClockIdentity;
  v3 = 0;
  result = [*(v1 + 16) convertFromDomainToMachAbsoluteTime:a1 grandmasterUsed:&v4 portNumber:&v3];
  *(v1 + 32) = v4;
  return result;
}

uint64_t sub_1000708C4()
{
  result = swift_beginAccess();
  if (*(v0 + 48))
  {
    if ((*(v0 + 40) & 1) == 0)
    {
      return sub_100070E58();
    }
  }

  else if (*(v0 + 40))
  {
    return sub_100070914();
  }

  return result;
}

uint64_t sub_100070914()
{
  v48 = type metadata accessor for DispatchTimeInterval();
  sub_100011C54();
  v46 = v0;
  v2 = __chkstk_darwin(v1);
  v45 = (&v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v2);
  v44 = (&v38 - v4);
  v49 = type metadata accessor for DispatchTime();
  sub_100011C54();
  v47 = v5;
  __chkstk_darwin(v6);
  sub_100011CD4();
  v43 = v8 - v7;
  type metadata accessor for DispatchWorkItemFlags();
  sub_100011C54();
  v41 = v10;
  v42 = v9;
  __chkstk_darwin(v9);
  sub_100011CD4();
  v13 = v12 - v11;
  type metadata accessor for DispatchQoS();
  sub_100011C54();
  v38 = v15;
  v39 = v14;
  __chkstk_darwin(v14);
  sub_100011CD4();
  v18 = v17 - v16;
  v19 = type metadata accessor for OS_dispatch_source.TimerFlags();
  sub_100011C54();
  v21 = v20;
  __chkstk_darwin(v22);
  sub_100011CD4();
  v25 = v24 - v23;
  sub_1000033E0(0, &unk_10009B750, OS_dispatch_source_ptr);
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10006C2C0(&unk_10009C1A0, &type metadata accessor for OS_dispatch_source.TimerFlags, &protocol conformance descriptor for OS_dispatch_source.TimerFlags);
  sub_10000FC6C(&unk_10009B760, &qword_100077628);
  sub_100018B20(&unk_10009C1B0, &unk_10009B760, &qword_100077628);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v26 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
  (*(v21 + 8))(v25, v19);
  swift_getObjectType();
  v27 = swift_allocObject();
  v28 = v40;
  swift_weakInit();
  sub_100049E4C();
  v29 = swift_allocObject();
  *(v29 + 16) = v27;
  *(v29 + 24) = v26;
  aBlock[4] = sub_1000715FC;
  aBlock[5] = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100052C90;
  aBlock[3] = &unk_1000915F8;
  v30 = _Block_copy(aBlock);

  swift_unknownObjectRetain();
  static DispatchQoS.unspecified.getter();
  sub_100056EFC();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v30);
  (*(v41 + 8))(v13, v42);
  (*(v38 + 8))(v18, v39);

  v31 = v43;
  static DispatchTime.now()();
  v32 = v44;
  *v44 = 5;
  v33 = v46;
  v34 = v48;
  (*(v46 + 104))(v32, enum case for DispatchTimeInterval.seconds(_:), v48);
  v35 = v45;
  sub_100057048(v45);
  OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
  v36 = *(v33 + 8);
  v36(v35, v34);
  v36(v32, v34);
  (*(v47 + 8))(v31, v49);
  OS_dispatch_source.activate()();
  *(v28 + 48) = v26;
  return swift_unknownObjectRelease();
}

uint64_t sub_100070E58()
{
  if (*(v0 + 48))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.cancel()();
    swift_unknownObjectRelease();
  }

  *(v0 + 48) = 0;

  return swift_unknownObjectRelease();
}

uint64_t Clock.heartbeat.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
  return sub_1000708C4();
}

uint64_t (*Clock.heartbeat.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_100070F98;
}

uint64_t sub_100070F98(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1000708C4();
  }

  return result;
}

void sub_100070FCC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = mach_absolute_time();
    v5 = Clock.domainTimeForMachAbsoluteTime(_:)(v4);
    sub_100071604(*(v3 + 32), v4, v5, [*(v3 + 16) lockState]);
    if (qword_10009C1C8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100003420(v6, qword_10009C1D8);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134218752;
      *(v9 + 4) = *(v3 + 24);
      *(v9 + 12) = 2048;
      *(v9 + 14) = *(v3 + 32);

      *(v9 + 22) = 2048;
      *(v9 + 24) = v4;
      *(v9 + 32) = 2048;
      *(v9 + 34) = v5;
      _os_log_impl(&_mh_execute_header, v7, v8, "%llx: (%llx) %llu -> %llu", v9, 0x2Au);
    }

    else
    {
    }

    if (v5 == TSInvalidTime)
    {
      swift_getObjectType();
      OS_dispatch_source.cancel()();
    }
  }

  else
  {
    swift_getObjectType();
    OS_dispatch_source.cancel()();
  }
}

uint64_t Clock.__deallocating_deinit()
{
  Clock.deinit();

  return _swift_deallocClassInstance(v0, 56, 7);
}

void *sub_10007120C(uint64_t *a1, uint64_t *a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result)
  {
    result = sub_1000712B8(result, v5[2] + 1, 1, v5, a1, a2);
    *v2 = result;
  }

  return result;
}

void *sub_100071270(void *result, uint64_t *a2, uint64_t *a3)
{
  v4 = (*v3)[3];
  if (result + 1 > (v4 >> 1))
  {
    result = sub_1000712B8((v4 > 1), result + 1, 1, *v3, a2, a3);
    *v3 = result;
  }

  return result;
}

void *sub_1000712B8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = a4[3];
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = a4[2];
  if (v9 <= v10)
  {
    v11 = a4[2];
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_10000FC6C(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v12[2] = v10;
    v12[3] = 2 * ((v13 - 32) / 16);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  if (v7)
  {
    if (v12 != a4 || &a4[2 * v10 + 4] <= v12 + 4)
    {
      memmove(v12 + 4, a4 + 4, 16 * v10);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000FC6C(&unk_100099A90, qword_100075D18);
    swift_arrayInitWithCopy();
  }

  return v12;
}

uint64_t sub_1000713E0(uint64_t a1)
{
  if (*(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000713FC()
{

  sub_100049E4C();

  return _swift_deallocObject(v0);
}

uint64_t sub_1000714A0()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_1000714E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000714F8(void *result, char a2)
{
  if (a2 != -1)
  {
    sub_100071510(result, a2 & 1);
  }
}

void sub_100071510(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_10007152C()
{
  sub_100071510(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0);
}

id sub_10007157C(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

uint64_t sub_100071588()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0);
}

uint64_t sub_1000715C0()
{

  swift_unknownObjectRelease();
  sub_100049E4C();

  return _swift_deallocObject(v0);
}

uint64_t sub_100071624()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10007166C()
{

  return _swift_deallocObject(v0);
}

unint64_t sub_1000716BC()
{
  result = qword_10009C410;
  if (!qword_10009C410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009C410);
  }

  return result;
}

void sub_100071B6C(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  v16 = 0;
  v3 = [NSPropertyListSerialization propertyListWithData:v2 options:0 format:0 error:&v16];
  v4 = v16;
  if (v3)
  {
    v5 = sub_100071D7C(v3);
    v15 = v4;
    v6 = [NSJSONSerialization dataWithJSONObject:v5 options:7 error:&v15];
    v7 = v15;

    v4 = v7;
    if (v6)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = 0;
  }

  if (v4)
  {
    v6 = [NSJSONSerialization dataWithJSONObject:v4 options:7 error:0];
  }

LABEL_7:
  v8 = objc_opt_new();
  [v8 setFormatOptions:2163];
  v9 = +[NSTimeZone systemTimeZone];
  [v8 setTimeZone:v9];

  v10 = +[NSDate date];
  v11 = [v8 stringFromDate:v10];
  v12 = [NSString stringWithFormat:@"%s-%@.json", *(*(a1 + 32) + 32), v11];
  v13 = +[_DiagnosticsHandler tmpDir];
  v14 = [NSURL fileURLWithPath:v12 isDirectory:0 relativeToURL:v13];

  [v6 writeToURL:v14 atomically:0];
}

id sub_100071D7C(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
    v3 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v2 count]);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100071FDC;
    v10[3] = &unk_100091718;
    v10[4] = v3;
    [v2 enumerateKeysAndObjectsUsingBlock:v10];
LABEL_5:

    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
    v3 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v2 count]);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100072068;
    v9[3] = &unk_100091740;
    v9[4] = v3;
    [v2 enumerateObjectsUsingBlock:v9];
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v1 base64EncodedStringWithOptions:0];
LABEL_11:
    v3 = v5;
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if ([NSJSONSerialization isValidJSONObject:v1])
    {
      v5 = v1;
    }

    else
    {
      v5 = [v1 description];
    }

    goto LABEL_11;
  }

  v6 = v1;
  v7 = objc_opt_new();
  [v7 setFormatOptions:2163];
  v8 = +[NSTimeZone systemTimeZone];
  [v7 setTimeZone:v8];

  v3 = [v7 stringFromDate:v6];

LABEL_6:

  return v3;
}

void sub_100071FDC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8 = sub_100071D7C(a3);
  v6 = *(a1 + 32);
  v7 = sub_100071D7C(v5);

  [v6 setObject:v8 forKeyedSubscript:v7];
}

void sub_100072068(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = sub_100071D7C(a2);
  [v2 addObject:v3];
}

char *sub_1000721C4()
{
  v0 = malloc_type_malloc(0x78uLL, 0x1000040EBE173EBuLL);
  pthread_mutex_init(v0, 0);
  pthread_cond_init((v0 + 64), 0);
  atomic_store(0, v0 + 112);
  return v0;
}

uint64_t sub_10007221C(uint64_t a1)
{
  pthread_mutex_lock(a1);
  atomic_store(1u, (a1 + 112));
  pthread_cond_signal((a1 + 64));

  return pthread_mutex_unlock(a1);
}

pthread_mutex_t *sub_100072268(pthread_mutex_t *result)
{
  v1 = &result[1].__opaque[40];
  v2 = atomic_load(&result[1].__opaque[40]);
  if ((v2 & 1) == 0)
  {
    v3 = result;
    pthread_mutex_lock(result);
    v4 = atomic_load(v1);
    if ((v4 & 1) == 0)
    {
      do
      {
        pthread_cond_wait(&v3[1], v3);
        v5 = atomic_load(&v3[1].__opaque[40]);
      }

      while ((v5 & 1) == 0);
    }

    return pthread_mutex_unlock(v3);
  }

  return result;
}

id sub_1000722E8(unint64_t a1, _BYTE *a2)
{
  v4 = objc_alloc_init(NSMutableString);
  v5 = *a2;
  do
  {
    v6 = a2 + 1;
    if (((1 << v5) & a1) != 0)
    {
      if ([v4 length])
      {
        v7 = " ";
      }

      else
      {
        v7 = "";
      }

      [v4 appendFormat:@"%s%s", v7, v6];
    }

    v8 = &v6[strlen(v6)];
    v9 = *(v8 + 1);
    a2 = v8 + 1;
    v5 = v9;
  }

  while (v9);

  return v4;
}

id RPDataLinkTypeCopyDescription(unsigned int a1)
{
  if (a1 > 0xB)
  {
    v1 = "?";
  }

  else
  {
    v1 = (&off_100091760)[a1];
  }

  return [NSString stringWithCString:v1 encoding:4];
}

id RPFlowControlStateCopyDescription(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = "?";
  }

  else
  {
    v1 = (&off_1000917C0)[a1];
  }

  return [NSString stringWithCString:v1 encoding:4];
}

id RPStreamQoSCopyDescription(int a1)
{
  if (a1 <= 9)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        return [NSString stringWithCString:"Video" encoding:4];
      }

      if (a1 == 3)
      {
        return [NSString stringWithCString:"Voice" encoding:4];
      }
    }

    else
    {
      if (!a1)
      {
        return [NSString stringWithCString:"Default" encoding:4];
      }

      if (a1 == 1)
      {
        return [NSString stringWithCString:"Background" encoding:4];
      }
    }

    return [NSString stringWithCString:"?" encoding:4];
  }

  if (a1 > 11)
  {
    if (a1 == 12)
    {
      return [NSString stringWithCString:"AirPlayScreenVideo" encoding:4];
    }

    if (a1 == 20)
    {
      return [NSString stringWithCString:"NTP" encoding:4];
    }

    return [NSString stringWithCString:"?" encoding:4];
  }

  if (a1 == 10)
  {
    return [NSString stringWithCString:"AirPlayAudio" encoding:4];
  }

  else
  {
    return [NSString stringWithCString:"AirPlayScreenAudio" encoding:4];
  }
}

id RPStreamTypeCopyDescription(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = "?";
  }

  else
  {
    v1 = (&off_1000917D8)[a1];
  }

  return [NSString stringWithCString:v1 encoding:4];
}

void RPStreamSessionSetDisconnectHandler(void *a1, void *a2)
{
  v5 = a1;
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4 = objc_retainBlock(v3);
    [v5 performSelector:"setDisconnectHandler:" withObject:v4];
  }
}

uint64_t + infix(_:_:)()
{
  return + infix(_:_:)();
}

{
  return + infix(_:_:)();
}

{
  return + infix(_:_:)();
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}