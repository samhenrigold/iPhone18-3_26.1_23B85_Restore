uint64_t sub_10004C7A0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 9))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  if (*(a2 + 9))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return static VPNDiagnosticsData.== infix(_:_:)(*a1, v2 | *(a1 + 8), *a2, v3 | *(a2 + 8));
}

uint64_t static VPNDiagnosticsDataProvider.provideData()()
{
  sub_100025A94();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10004C864;

  return sub_10004CB44();
}

uint64_t sub_10004C864()
{
  sub_100025A94();
  sub_10004622C();
  sub_1000461C8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 24) = v3;

  v4 = sub_10004F4D4();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10004C950()
{
  sub_100025A94();
  *(v0 + 48) = sub_10004CEC8();
  type metadata accessor for NetworkMonitor();
  *(v0 + 32) = static NetworkMonitor.shared.getter();
  v1 = sub_10004F530();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_10004CA00;

  return v3();
}

uint64_t sub_10004CA00()
{
  sub_10004F4F8();
  v2 = v1;
  v3 = *v0;
  sub_1000461C8();
  *v5 = v4;
  v6 = *(v4 + 48);
  v7 = *v0;
  sub_10000870C();
  *v8 = v7;

  if (v2)
  {
    v9 = 256;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v7 + 8);
  v11 = *(v3 + 24);

  return v10(v11, v9 | v6);
}

uint64_t sub_10004CB44()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  v2 = sub_100003768(&qword_10018B790, &unk_100126718);
  *v1 = v0;
  v1[1] = sub_10004CC2C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000017, 0x8000000100136240, sub_10004CF20, 0, v2);
}

uint64_t sub_10004CC2C()
{
  sub_100025A94();
  sub_10004622C();
  sub_1000461C8();
  *v3 = v2;
  v4 = *v1;
  sub_10000870C();
  *v5 = v4;
  *(v6 + 32) = v0;

  sub_10004F504();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10004CD40()
{
  sub_10004F4F8();
  if (qword_1001881E0 != -1)
  {
    sub_10004F43C(&qword_1001881E0);
  }

  v1 = type metadata accessor for Logger();
  sub_10000C2D4(v1, qword_1001A5760);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Couldn't load network configurations: %@", v4, 0xCu);
    sub_100044F98(v5, &qword_100189390, &qword_1001241D0);
    sub_100008744(v5);
    sub_100008744(v4);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7(_swiftEmptyArrayStorage);
}

BOOL sub_10004CEC8()
{
  v0 = [objc_allocWithZone(NEVPNConnectivityManager) init];
  v1 = [v0 connectivityState];

  return (v1 - 1) < 2;
}

void sub_10004CF20(uint64_t a1)
{
  v2 = sub_100003768(&qword_10018B798, &qword_100126728);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - v4;
  v6 = type metadata accessor for DispatchQoS.QoSClass();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() sharedManagerForAllUsers];
  if (v10)
  {
    v11 = v10;
    sub_100025778(0, &qword_10018AA70, OS_dispatch_queue_ptr);
    (*(v7 + 104))(v9, enum case for DispatchQoS.QoSClass.background(_:), v6);
    v12 = static OS_dispatch_queue.global(qos:)();
    (*(v7 + 8))(v9, v6);
    (*(v3 + 16))(v5, a1, v2);
    v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v14 = swift_allocObject();
    (*(v3 + 32))(v14 + v13, v5, v2);
    aBlock[4] = sub_10004F20C;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10004D694;
    aBlock[3] = &unk_10017A500;
    v15 = _Block_copy(aBlock);

    [v11 loadConfigurationsWithCompletionQueue:v12 handler:v15];
    _Block_release(v15);
  }

  else
  {
    __break(1u);
  }
}

void sub_10004D1EC(uint64_t a1, id *a2, uint64_t a3)
{
  v6 = type metadata accessor for VPNConfiguration(0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v27 - v11;
  if (a2)
  {
    v31 = a2;
    swift_errorRetain();
    sub_100003768(&qword_10018B798, &qword_100126728);
    CheckedContinuation.resume(throwing:)();
  }

  else if (a1 && (v13 = sub_100109AB8(a1)) != 0)
  {
    v14 = v13;
    v28 = v10;
    v29 = v7;
    v27[1] = a3;
    v15 = sub_100114850(v13);
    v16 = 0;
    v30 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v15 == v16)
      {

        v31 = v30;
        sub_100003768(&qword_10018B798, &qword_100126728);
        goto LABEL_22;
      }

      if ((v14 & 0xC000000000000001) != 0)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v17 = v14[v16 + 4];
      }

      v18 = v17;
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      v20 = [v17 VPN];
      if (v20 || (v20 = [v18 appVPN]) != 0)
      {

        v21 = v28;
        sub_10004D4D8(v18, v28);
        sub_10004F2B0(v21, v12);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1000D0838();
          v30 = v25;
        }

        v22 = v30[2];
        if (v22 >= v30[3] >> 1)
        {
          sub_1000D0838();
          v30 = v26;
        }

        v23 = v29;
        v24 = v30;
        v30[2] = (v22 + 1);
        sub_10004F2B0(v12, v24 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v22);
        v16 = v19;
      }

      else
      {

        ++v16;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
    v31 = _swiftEmptyArrayStorage;
    sub_100003768(&qword_10018B798, &qword_100126728);
LABEL_22:
    CheckedContinuation.resume(returning:)();
  }
}

void sub_10004D4D8(void *a1@<X0>, uint64_t a2@<X8>)
{
  UUID.init()();
  v3 = type metadata accessor for VPNConfiguration(0);
  v4 = (a2 + v3[6]);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = v3[7];
  *(a2 + v5) = 4;
  v6 = sub_10004F314(a1);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  v8 = (a2 + v3[5]);
  *v8 = v6;
  v8[1] = v7;
  v9 = [a1 payloadInfo];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 payloadOrganization];
    if (v11)
    {
      v12 = v11;
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      *v4 = v13;
      v4[1] = v15;
    }

    else
    {
    }
  }

  v16 = [a1 VPN];
  if (!v16)
  {
    goto LABEL_20;
  }

  v17 = v16;
  v18 = [v16 protocol];

  if (v18)
  {
    v19 = v18;
    v20 = [v19 type];

    if (v20 == 5)
    {
      v21 = 2;
    }

    else
    {
      if (v20 == 2)
      {
        *(a2 + v5) = 0;
        return;
      }

      if (v20 == 1)
      {
        v21 = 1;
      }

      else
      {
        v21 = 3;
      }
    }

    *(a2 + v5) = v21;
  }

  else
  {
  }
}

uint64_t sub_10004D694(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t static VPNDiagnosticsDataProvider.awaitNetworkReachability(timeout:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_10004F4A4(sub_10004D748);
}

uint64_t sub_10004D748()
{
  sub_10003DCD8();
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  swift_task_alloc();
  sub_10004F4B0();
  v0[5] = v4;
  *v4 = v5;
  v4[1] = sub_10004D830;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 6, &type metadata for Bool, &type metadata for Bool, 0, 0, &unk_100126510, v3, &type metadata for Bool);
}

uint64_t sub_10004D830()
{
  sub_100025A94();
  sub_10004622C();
  v1 = *v0;
  sub_10000870C();
  *v2 = v1;

  v3 = sub_10004F4D4();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10004D948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  sub_100003768(&qword_1001888B0, &qword_1001228F0);
  v4[6] = swift_task_alloc();

  return _swift_task_switch(sub_10004D9E8, 0, 0);
}

uint64_t sub_10004D9E8()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  type metadata accessor for TaskPriority();
  sub_10004F510();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  sub_100109EF4(v1, &unk_1001266E8, v4);
  sub_100044F98(v1, &qword_1001888B0, &qword_1001228F0);
  sub_10004F510();
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v3;
  v5[5] = v2;
  sub_100109EF4(v1, &unk_1001266F8, v5);
  sub_100044F98(v1, &qword_1001888B0, &qword_1001228F0);
  v6 = swift_task_alloc();
  v0[7] = v6;
  sub_100003768(&qword_10018B778, &qword_100126700);
  *v6 = v0;
  v6[1] = sub_10004DB78;
  sub_10004F504();

  return TaskGroup.next(isolation:)(v7);
}

uint64_t sub_10004DB78()
{
  sub_100025A94();
  sub_10004622C();
  v1 = *v0;
  sub_10000870C();
  *v2 = v1;

  v3 = sub_10004F4D4();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10004DC5C()
{
  sub_10003DCD8();
  v1 = *(v0 + 16);
  v2 = *(v0 + 64);
  TaskGroup.cancelAll()();
  *v1 = v2 & 1;

  sub_10000875C();

  return v3();
}

uint64_t sub_10004DCE0()
{
  sub_10003DCD8();
  v3 = v2;
  v5 = v4;
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);
  swift_task_alloc();
  sub_10004F4B0();
  *(v1 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_100046160;

  return sub_10004D948(v5, v3, v7, v6);
}

uint64_t sub_10004DD8C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 10))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_10004DDCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10004DE40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_10000E5F0(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_10004DF04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_100003CE8(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for VPNConfiguration(uint64_t a1)
{
  result = qword_10018B710;
  if (!qword_10018B710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10004DFFC(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_10004E090();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10004E090()
{
  if (!qword_10018B720)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10018B720);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for VPNType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10004E1ACLL);
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

uint64_t sub_10004E1E4(uint64_t a1)
{
  v1[3] = a1;
  v2 = type metadata accessor for NWPath.Status();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v3 = type metadata accessor for NWPath();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  sub_100003768(&qword_10018B780, &unk_100126708);
  v1[11] = swift_task_alloc();
  v4 = type metadata accessor for NWPathMonitor.Iterator();
  v1[12] = v4;
  v1[13] = *(v4 - 8);
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_10004E3A0, 0, 0);
}

uint64_t sub_10004E3A0()
{
  sub_100025A94();
  type metadata accessor for NWPathMonitor();
  swift_allocObject();
  NWPathMonitor.init()();
  NWPathMonitor.makeAsyncIterator()();
  *(v0 + 136) = enum case for NWPath.Status.satisfied(_:);
  sub_10004F48C();
  sub_10004F13C(v1, v2, &protocol conformance descriptor for NWPathMonitor.Iterator);
  swift_task_alloc();
  sub_10004F4B0();
  *(v0 + 120) = v3;
  *v3 = v4;
  v5 = sub_10004F45C(v3);

  return dispatch thunk of AsyncIteratorProtocol.next()(v5);
}

uint64_t sub_10004E474()
{
  sub_100025A94();
  sub_10004622C();
  sub_1000461C8();
  *v3 = v2;
  v4 = *v1;
  sub_10000870C();
  *v5 = v4;
  *(v6 + 128) = v0;

  sub_10004F504();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10004E584()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  if (sub_10000E5F0(v1, 1, v2) == 1)
  {
    v3 = 0;
LABEL_17:
    v23 = *(v0 + 24);
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
    *v23 = v3;

    sub_10000875C();

    return v24();
  }

  v4 = *(v0 + 128);
  (*(*(v0 + 72) + 32))(*(v0 + 80), v1, v2);
  static Task<>.checkCancellation()();
  if (v4)
  {
  }

  v5 = *(v0 + 136);
  v7 = *(v0 + 48);
  v6 = *(v0 + 56);
  v8 = *(v0 + 32);
  v9 = *(v0 + 40);
  NWPath.status.getter();
  (*(v9 + 104))(v7, v5, v8);
  v10 = static NWPath.Status.== infix(_:_:)();
  v11 = *(v9 + 8);
  v11(v7, v8);
  v11(v6, v8);
  if (v10)
  {
    if (static Task<>.isCancelled.getter())
    {
      v3 = 0;
    }

    else
    {
      if (qword_1001881E0 != -1)
      {
        sub_10004F43C(&qword_1001881E0);
      }

      v17 = type metadata accessor for Logger();
      sub_10000C2D4(v17, qword_1001A5760);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        sub_10004F550(&_mh_execute_header, v21, v22, "network is now reachable");
        sub_100008744(v20);
      }

      v3 = 1;
    }

    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
    goto LABEL_17;
  }

  (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
  sub_10004F48C();
  sub_10004F13C(v12, v13, &protocol conformance descriptor for NWPathMonitor.Iterator);
  swift_task_alloc();
  sub_10004F4B0();
  *(v0 + 120) = v14;
  *v14 = v15;
  v16 = sub_10004F45C(v14);

  return dispatch thunk of AsyncIteratorProtocol.next()(v16);
}

uint64_t sub_10004E868()
{
  sub_100025A94();
  *(v0 + 16) = *(v0 + 128);
  sub_100003768(&qword_100189398, &unk_100122910);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_10004E8F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = type metadata accessor for ContinuousClock();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();

  return _swift_task_switch(sub_10004E9B4, 0, 0);
}

uint64_t sub_10004E9B4()
{
  sub_100025A94();
  static Clock<>.continuous.getter();
  v1 = sub_10004F530();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_10004EA60;
  v3 = v0[3];
  v2 = v0[4];

  return v5(v3, v2, 0, 0, 1);
}

uint64_t sub_10004EA60()
{
  sub_10004F4F8();
  v2 = *v1;
  v3 = *v1;
  sub_10000870C();
  *v4 = v3;

  v5 = v2[7];
  v6 = v2[6];
  v7 = v2[5];
  if (v0)
  {
  }

  (*(v6 + 8))(v5, v7);
  sub_10004F504();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_10004EBE8()
{
  sub_10003DCD8();
  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
    if (qword_1001881E0 != -1)
    {
      sub_10004F43C(&qword_1001881E0);
    }

    v1 = type metadata accessor for Logger();
    sub_10000C2D4(v1, qword_1001A5760);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      sub_10004F550(&_mh_execute_header, v5, v6, "network connection timed out");
      sub_100008744(v4);
    }
  }

  **(v0 + 16) = 0;

  sub_10000875C();

  return v7();
}

uint64_t sub_10004ECE4(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for VPNConfiguration(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v10 = v4[6];
  v11 = *(a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v11 == *v13 && v12 == v13[1];
  if (!v14 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v15 = v4[7];
  v16 = *(a1 + v15);
  v17 = *(a2 + v15);
  if (v16 == 4)
  {
    if (v17 != 4)
    {
      return 0;
    }
  }

  else if (v16 != v17)
  {
    return 0;
  }

  return 1;
}

Swift::Int sub_10004EDF4(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

_UNKNOWN **sub_10004EE4C@<X0>(void *a1@<X8>)
{
  result = sub_10004EDC0();
  *a1 = result;
  return result;
}

unint64_t sub_10004EE84()
{
  result = qword_10018B758;
  if (!qword_10018B758)
  {
    sub_100004D48(&qword_10018B760, qword_1001265F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018B758);
  }

  return result;
}

unint64_t sub_10004EEEC()
{
  result = qword_10018B768;
  if (!qword_10018B768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018B768);
  }

  return result;
}

uint64_t sub_10004EF88()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004EFC0()
{
  sub_10003DCD8();
  swift_task_alloc();
  sub_10004F4B0();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = sub_10004F4E4(v1);

  return sub_10004E1E4(v3);
}

uint64_t sub_10004F058()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10004F090()
{
  sub_10004F4F8();
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  swift_task_alloc();
  sub_10004F4B0();
  *(v1 + 16) = v5;
  *v5 = v6;
  v7 = sub_10004F4E4(v5);

  return sub_10004E8F0(v7, v8, v2, v4, v3);
}

uint64_t sub_10004F13C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10004F184()
{
  sub_100003768(&qword_10018B798, &qword_100126728);
  sub_10000C31C();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_10004F20C(uint64_t a1, id *a2)
{
  v5 = *(sub_100003768(&qword_10018B798, &qword_100126728) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_10004D1EC(a1, a2, v6);
}

uint64_t sub_10004F298(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10004F2B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VPNConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004F314(void *a1)
{
  v1 = [a1 name];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10004F378(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VPNConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004F3DC(uint64_t a1)
{
  v2 = type metadata accessor for VPNConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004F43C(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_10004F510()
{

  return sub_100003CE8(v0, 1, 1, v1);
}

uint64_t sub_10004F530()
{

  return swift_task_alloc();
}

void sub_10004F550(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t sub_10004F578(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_10004F5B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10004F644@<X0>(void *a1@<X8>)
{
  v4 = v1[2];
  v3 = v1[3];

  v5 = sub_10004F6A4();
  v7 = v1[4];
  v6 = v1[5];
  *a1 = v4;
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v7;
  a1[5] = 0;
  a1[6] = 0;
  a1[4] = v6;
}

uint64_t sub_10004F6A4()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003768(&qword_1001889F0, &qword_100121D20);
  __chkstk_darwin(v6 - 8);
  v8 = &v40 - v7;
  sub_100003768(&qword_10018B570, &qword_100125E78);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_100126730;
  v9 = type metadata accessor for FlowImage(0);
  v48 = v8;
  v46 = v9;
  sub_100003CE8(v8, 1, 1, v9);
  if (qword_100188178 != -1)
  {
    swift_once();
  }

  v10 = *algn_10018B7A8;
  v42 = qword_10018B7A0;
  sub_10004FC38(v1 + 48, v49);

  UUID.init()();
  v11 = UUID.uuidString.getter();
  v44 = v1;
  v13 = v12;
  v14 = *(v3 + 8);
  v43 = v3 + 8;
  v45 = v14;
  v14(v5, v2);
  type metadata accessor for OptionInfoItem(0);
  v15 = swift_allocObject();
  v17 = v50;
  v16 = v51;
  v18 = sub_10004FDA4(v49, v50);
  __chkstk_darwin(v18);
  v41 = v2;
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20);
  v39 = v15;
  v22 = v48;
  v23 = sub_1000EC824(v11, v13, v48, v42, v10, 0, 0, v20, 0, 0, v39, v17, v16);
  sub_1000086BC(v49);
  v24 = v46;
  *(v47 + 32) = v23;
  sub_100003CE8(v22, 1, 1, v24);
  if (qword_100188180 != -1)
  {
    swift_once();
  }

  v26 = qword_10018B7B0;
  v25 = *algn_10018B7B8;
  sub_10004FC38(v44 + 88, v49);

  UUID.init()();
  v27 = UUID.uuidString.getter();
  v29 = v28;
  v45(v5, v41);
  v30 = swift_allocObject();
  v32 = v50;
  v31 = v51;
  v33 = sub_10004FDA4(v49, v50);
  __chkstk_darwin(v33);
  v35 = &v40 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v36 + 16))(v35);
  v37 = sub_1000EC824(v27, v29, v48, v26, v25, 0, 0, v35, 0, 0, v30, v32, v31);
  sub_1000086BC(v49);
  result = v47;
  *(v47 + 40) = v37;
  return result;
}

uint64_t sub_10004FB30()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_10018B7A0 = result;
  *algn_10018B7A8 = v3;
  return result;
}

uint64_t sub_10004FC38(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10004FC9C()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_10018B7B0 = result;
  *algn_10018B7B8 = v3;
  return result;
}

uint64_t sub_10004FDA4(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_10004FDF8()
{
  result = qword_10018B7C0;
  if (!qword_10018B7C0)
  {
    sub_100004D48(&qword_10018B7C8, &unk_100126840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018B7C0);
  }

  return result;
}

Swift::Int sub_10004FE84()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_10004FED8(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_10004FF18()
{
  sub_100025A94();
  v1[11] = v0;
  v2 = type metadata accessor for SupportSymptomInfo();
  v1[12] = v2;
  sub_100052F6C(v2);
  v1[13] = v3;
  v1[14] = sub_100052FA4();
  v4 = sub_100003768(&qword_10018B9F8, &unk_1001268E0);
  sub_10000ED84(v4);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v5 = sub_100003768(&qword_10018BA10, &qword_100126900);
  v1[17] = v5;
  sub_10000ED84(v5);
  v1[18] = sub_100052FA4();
  v6 = type metadata accessor for HMTSolution();
  v1[19] = v6;
  sub_100052F6C(v6);
  v1[20] = v7;
  v1[21] = sub_100052FA4();
  type metadata accessor for MainActor();
  v1[22] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[23] = v9;
  v1[24] = v8;

  return _swift_task_switch(sub_1000500B4, v9, v8);
}

uint64_t sub_1000500B4()
{
  sub_100025A94();
  v1 = swift_task_alloc();
  *(v0 + 200) = v1;
  *v1 = v0;
  v1[1] = sub_10005015C;
  sub_100052F98();

  return HelpMeTroubleshootCoordinator.fetchHMTSolution(languageID:regionID:)(v2);
}

uint64_t sub_10005015C()
{
  v2 = *v1;
  sub_100052FD4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 208) = v0;

  sub_100052FF8();
  v6 = *(v5 + 192);
  v7 = *(v2 + 184);
  if (v0)
  {
    v8 = sub_1000509A4;
  }

  else
  {
    v8 = sub_10005028C;
  }

  return _swift_task_switch(v8, v7, v6);
}

void sub_10005028C()
{
  v91 = v0;
  v84 = v0[17];
  v85 = v0[18];
  v1 = v0[13];
  v2 = v0[11];

  v3 = HMTSolution.stepsDictionary.getter();
  v4 = v3 + 64;
  v5 = -1;
  v6 = -1 << *(v3 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v3 + 64);
  v8 = (63 - v6) >> 6;
  v83 = (v1 + 32);
  v79 = v1;
  v86 = v3;

  v9 = 0;
  v87 = v0;
  v88 = v2;
  v80 = v8;
  v81 = v4;
  if (v7)
  {
    while (1)
    {
LABEL_8:
      v11 = v0[18];
      v12 = __clz(__rbit64(v7)) | (v9 << 6);
      v13 = *(v86 + 56);
      v14 = (*(v86 + 48) + 16 * v12);
      v15 = *v14;
      v16 = v14[1];
      type metadata accessor for HMTSolution.Step();
      sub_10000AF7C();
      (*(v17 + 16))(v11 + *(v84 + 48), v13 + *(v17 + 72) * v12);
      *v11 = v15;
      *(v85 + 8) = v16;

      v18 = *(HMTSolution.Step.articles.getter() + 16);

      if (v18)
      {
        v82 = HMTSolution.Step.articles.getter();
        sub_100052FBC(v2 + 24, (v0 + 2));
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v20 = v2;
        v21 = isUniquelyReferenced_nonNull_native;
        v90 = *(v20 + 24);
        *(v20 + 24) = 0x8000000000000000;
        v22 = v15;
        v23 = v15;
        v24 = v16;
        sub_100083754(v23, v16);
        sub_100052F7C();
        v29 = v27 + v28;
        if (__OFADD__(v27, v28))
        {
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
          return;
        }

        v30 = v25;
        v31 = v26;
        sub_100003768(&qword_10018BA18, &qword_100126908);
        v32 = _NativeDictionary.ensureUnique(isUnique:capacity:)(v21, v29);
        v33 = v90;
        if (v32)
        {
          v34 = sub_100083754(v22, v24);
          v2 = v88;
          if ((v31 & 1) != (v35 & 1))
          {
            goto LABEL_41;
          }

          v30 = v34;
        }

        else
        {
          v2 = v88;
        }

        v16 = v24;
        v0 = v87;
        v15 = v22;
        if (v31)
        {
          *(*(v33 + 56) + 8 * v30) = v82;
        }

        else
        {
          sub_100052FE4(v33 + 8 * (v30 >> 6));
          v37 = (v36 + 16 * v30);
          *v37 = v22;
          v37[1] = v16;
          *(*(v33 + 56) + 8 * v30) = v82;
          v38 = *(v33 + 16);
          v39 = __OFADD__(v38, 1);
          v40 = v38 + 1;
          if (v39)
          {
            goto LABEL_47;
          }

          *(v33 + 16) = v40;
        }

        *(v2 + 24) = v33;
        swift_endAccess();
      }

      v89 = v15;
      if (HMTSolution.Step.shouldShowContactOptions.getter())
      {
        sub_100052FBC(v2 + 40, (v0 + 8));

        sub_1000E0B24(&v90, v15, v16);
        swift_endAccess();
      }

      v41 = v0[16];
      v42 = v0[12];

      HMTSolution.Step.alternativeSymptomInfo.getter();
      sub_100052FBC(v2 + 56, (v0 + 5));
      if (sub_10000E5F0(v41, 1, v42) == 1)
      {
        sub_10000ABCC(v0[16], &qword_10018B9F8, &unk_1001268E0);
        v43 = sub_100083754(v15, v16);
        if (v44)
        {
          v45 = v43;
          v46 = v0[15];
          v47 = v0[12];
          v48 = swift_isUniquelyReferenced_nonNull_native();
          v90 = *(v88 + 56);
          v49 = v90;
          *(v88 + 56) = 0x8000000000000000;
          v50 = *(v49 + 24);
          sub_100003768(&qword_10018BA20, &qword_100126910);
          v0 = v87;
          _NativeDictionary.ensureUnique(isUnique:capacity:)(v48, v50);
          v51 = v90;

          (*(v79 + 32))(v46, *(v51 + 56) + *(v79 + 72) * v45, v47);
          v2 = v88;
          _NativeDictionary._delete(at:)();
          *(v88 + 56) = v51;

          v52 = 0;
        }

        else
        {
          v52 = 1;
        }

        v8 = v80;
        v4 = v81;
        v68 = v0[15];
        sub_100003CE8(v68, v52, 1, v0[12]);

        sub_10000ABCC(v68, &qword_10018B9F8, &unk_1001268E0);
      }

      else
      {
        v53 = v16;
        v54 = *v83;
        (*v83)(v0[14], v0[16], v0[12]);
        v55 = swift_isUniquelyReferenced_nonNull_native();
        v90 = *(v2 + 56);
        *(v2 + 56) = 0x8000000000000000;
        v56 = v53;
        sub_100083754(v15, v53);
        sub_100052F7C();
        v61 = v59 + v60;
        if (__OFADD__(v59, v60))
        {
          goto LABEL_46;
        }

        v62 = v57;
        v63 = v58;
        sub_100003768(&qword_10018BA20, &qword_100126910);
        v64 = _NativeDictionary.ensureUnique(isUnique:capacity:)(v55, v61);
        v65 = v90;
        if (v64)
        {
          v66 = sub_100083754(v89, v56);
          v2 = v88;
          if ((v63 & 1) != (v67 & 1))
          {
LABEL_41:

            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            return;
          }

          v62 = v66;
        }

        else
        {
          v2 = v88;
        }

        if (v63)
        {
          (*(v79 + 40))(*(v65 + 56) + *(v79 + 72) * v62, v87[14], v87[12]);
        }

        else
        {
          sub_100052FE4(v65 + 8 * (v62 >> 6));
          v70 = (v69 + 16 * v62);
          *v70 = v89;
          v70[1] = v56;
          v54(*(v65 + 56) + *(v79 + 72) * v62);
          v71 = *(v65 + 16);
          v39 = __OFADD__(v71, 1);
          v72 = v71 + 1;
          if (v39)
          {
            goto LABEL_48;
          }

          *(v65 + 16) = v72;
        }

        *(v2 + 56) = v65;

        v8 = v80;
        v4 = v81;
        v0 = v87;
      }

      v7 &= v7 - 1;
      v73 = v0[18];
      swift_endAccess();
      sub_10000ABCC(v73, &qword_10018BA10, &qword_100126900);
      if (!v7)
      {
        goto LABEL_4;
      }
    }
  }

  while (1)
  {
LABEL_4:
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_45;
    }

    if (v10 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_8;
    }
  }

  v74 = v0[11];

  v75 = HMTSolution.articleDictionary.getter();
  v76 = sub_100052F8C();
  v77(v76);
  *(v74 + 32) = v75;

  sub_10000875C();

  v78();
}

uint64_t sub_1000509A4()
{
  sub_10004F4F8();

  sub_10000875C();

  return v0();
}

uint64_t sub_100050A44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_100003768(&qword_100189258, &qword_1001268F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for ContactSupportOptions();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10000E5F0(a1, 1, v11) == 1)
  {
    sub_10000ABCC(a1, &qword_100189258, &qword_1001268F0);
    sub_100052818(a2, a3, v10);

    return sub_10000ABCC(v10, &qword_100189258, &qword_1001268F0);
  }

  else
  {
    (*(v12 + 32))(v14, a1, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v4;
    sub_100052960(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v4 = v18;
  }

  return result;
}

void sub_100050C10()
{
  v1 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  sub_10000ED84(v1);
  sub_10000ED78();
  __chkstk_darwin(v2);
  v4 = &v22[-v3 - 8];
  v5 = sub_100025A88();
  v7 = sub_100003768(v5, v6);
  sub_10000ED84(v7);
  sub_10000ED78();
  __chkstk_darwin(v8);
  v10 = &v22[-v9 - 8];
  type metadata accessor for SupportSymptomInfo();
  sub_100053004();
  sub_100003CE8(v11, v12, v13, v14);
  v15 = OBJC_IVAR____TtC11SupportFlow25SupportContentCoordinator_currentSupportSymptomInfo;
  sub_100052FBC(v0 + OBJC_IVAR____TtC11SupportFlow25SupportContentCoordinator_currentSupportSymptomInfo, v22);
  sub_100052D68(v10, v0 + v15, &qword_10018B9F8, &unk_1001268E0);
  swift_endAccess();
  type metadata accessor for URL();
  sub_100053004();
  sub_100003CE8(v16, v17, v18, v19);
  v20 = OBJC_IVAR____TtC11SupportFlow25SupportContentCoordinator_currentDeepDiveURL;
  sub_100052FBC(v0 + OBJC_IVAR____TtC11SupportFlow25SupportContentCoordinator_currentDeepDiveURL, v22);
  sub_100052D68(v4, v0 + v20, &qword_100188EE0, &unk_100122AE0);
  swift_endAccess();
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;

  sub_100053050();
}

uint64_t sub_100050D78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v41 = a2;
  v5 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  sub_10000ED84(v5);
  sub_10000ED78();
  __chkstk_darwin(v6);
  v8 = v42 - v7 + 40;
  v9 = sub_100003768(&qword_100189258, &qword_1001268F0);
  v10 = sub_10000ED84(v9);
  v11 = __chkstk_darwin(v10);
  v13 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  __chkstk_darwin(v11);
  v15 = v42 - v14 + 40;
  v16 = sub_100003768(&qword_10018B9F8, &unk_1001268E0);
  sub_10000ED84(v16);
  sub_10000ED78();
  __chkstk_darwin(v17);
  v19 = v42 - v18 + 40;
  v20 = type metadata accessor for SupportSymptomInfo();
  sub_10000AF7C();
  (*(v21 + 16))(v19, a1, v20);
  v22 = 1;
  sub_100003CE8(v19, 0, 1, v20);
  v23 = OBJC_IVAR____TtC11SupportFlow25SupportContentCoordinator_currentSupportSymptomInfo;
  sub_100052FBC(v3 + OBJC_IVAR____TtC11SupportFlow25SupportContentCoordinator_currentSupportSymptomInfo, v42);
  sub_100052D68(v19, v3 + v23, &qword_10018B9F8, &unk_1001268E0);
  swift_endAccess();
  v24 = SupportSymptomInfo.symptomId.getter();
  v26 = v25;
  sub_100052F98();
  swift_beginAccess();
  v27 = *(v3 + 48);

  sub_100082D4C(v24, v26, v27, v15);

  sub_100052F98();
  swift_beginAccess();
  v28 = *(v3 + 64);

  v29 = SupportSymptomInfo.symptomId.getter();
  v31 = sub_1000DCE38(v29, v30, v28);
  v32 = v41;

  v33 = type metadata accessor for ContactSupportOptions();
  if (sub_10000E5F0(v15, 1, v33) != 1 || v31)
  {
    v34 = sub_100025A88();
    sub_10002BE60(v34, v35, v36, v37);
    v38 = OBJC_IVAR____TtC11SupportFlow25SupportContentCoordinator_currentDeepDiveURL;
    sub_100052F98();
    swift_beginAccess();
    sub_10002BE60(v3 + v38, v8, &qword_100188EE0, &unk_100122AE0);
    sub_100011B50(v13, v31, v8, v32);
    v22 = 0;
  }

  sub_10000ABCC(v15, &qword_100189258, &qword_1001268F0);
  v39 = type metadata accessor for SupportSolutions(0);
  return sub_100003CE8(v32, v22, 1, v39);
}

uint64_t sub_100051090()
{
  sub_100025A94();
  v1[12] = v2;
  v1[13] = v0;
  v1[11] = v3;
  v4 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  sub_10000ED84(v4);
  v1[14] = sub_100052FA4();
  v5 = sub_100003768(&qword_100189258, &qword_1001268F0);
  sub_10000ED84(v5);
  v1[15] = sub_100052FA4();
  v6 = type metadata accessor for ContactSupportOptions();
  v1[16] = v6;
  sub_100052F6C(v6);
  v1[17] = v7;
  v1[18] = sub_100052FA4();
  v8 = type metadata accessor for SupportProductType();
  v1[19] = v8;
  sub_100052F6C(v8);
  v1[20] = v9;
  v1[21] = sub_100052FA4();
  v10 = type metadata accessor for AllSolutionsResponse();
  v1[22] = v10;
  sub_100052F6C(v10);
  v1[23] = v11;
  v1[24] = sub_100052FA4();
  type metadata accessor for MainActor();
  v1[25] = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[26] = v13;
  v1[27] = v12;

  return _swift_task_switch(sub_100051264, v13, v12);
}

uint64_t sub_100051264()
{
  sub_10004F4F8();
  SupportSymptomInfo.productId.getter();

  SupportProductType.init(productId:serialNumber:)();
  v1 = swift_task_alloc();
  v0[28] = v1;
  *v1 = v0;
  v1[1] = sub_100051360;
  v2 = v0[24];
  v3 = v0[21];
  v4 = v0[12];

  return HelpMeTroubleshootCoordinator.fetchSolutions(for:supportSymptomInfo:languageID:regionID:)(v2, v3, v4, 0, 0, 0, 0);
}

uint64_t sub_100051360()
{
  sub_10004F4F8();
  v2 = *v1;
  sub_100052FD4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 232) = v0;

  v5 = sub_100025A88();
  v6(v5);
  sub_100052FF8();
  v8 = *(v7 + 216);
  v9 = *(v2 + 208);
  if (v0)
  {
    v10 = sub_100051760;
  }

  else
  {
    v10 = sub_1000514E4;
  }

  return _swift_task_switch(v10, v9, v8);
}

uint64_t sub_1000514E4()
{
  v30 = v0;
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[13];

  AllSolutionsResponse.contactSupportOptions.getter();
  v6 = SupportSymptomInfo.symptomId.getter();
  v8 = v7;
  v28 = *(v2 + 16);
  v28(v4, v1, v3);
  sub_100003CE8(v4, 0, 1, v3);
  sub_100052FBC(v5 + 48, (v0 + 2));
  sub_100050A44(v4, v6, v8);
  swift_endAccess();
  v27 = AllSolutionsResponse.hasRepairSolutions.getter();
  if (v27)
  {
    v9 = v0[13];
    v10 = SupportSymptomInfo.symptomId.getter();
    v12 = v11;
    sub_100052FBC(v9 + 64, (v0 + 8));
    sub_1000E0B24(&v29, v10, v12);
    swift_endAccess();
  }

  v13 = v0[23];
  v14 = v0[24];
  v26 = v0[22];
  v16 = v0[17];
  v15 = v0[18];
  v17 = v0[15];
  v18 = v0[16];
  v20 = v0[13];
  v19 = v0[14];
  v25 = v0[11];
  AllSolutionsResponse.deepDiveURL.getter();
  URL.init(string:)();

  v21 = OBJC_IVAR____TtC11SupportFlow25SupportContentCoordinator_currentDeepDiveURL;
  sub_100052FBC(v20 + OBJC_IVAR____TtC11SupportFlow25SupportContentCoordinator_currentDeepDiveURL, (v0 + 5));
  sub_100052D68(v19, v20 + v21, &qword_100188EE0, &unk_100122AE0);
  swift_endAccess();
  v22 = sub_100025A88();
  (v28)(v22);
  sub_100003CE8(v17, 0, 1, v18);
  sub_10002BE60(v20 + v21, v19, &qword_100188EE0, &unk_100122AE0);
  sub_100011B50(v17, v27 & 1, v19, v25);
  (*(v16 + 8))(v15, v18);
  (*(v13 + 8))(v14, v26);

  sub_10000875C();

  return v23();
}

uint64_t sub_100051760()
{
  sub_10004F4F8();

  sub_10000875C();

  return v0();
}

uint64_t sub_100051800()
{
  sub_100025A94();
  v1[6] = v2;
  v1[7] = v0;
  v1[5] = v3;
  v4 = type metadata accessor for SupportProductType();
  v1[8] = v4;
  sub_100052F6C(v4);
  v1[9] = v5;
  v1[10] = sub_100052FA4();
  v6 = type metadata accessor for TriageRequest.HMTContext();
  v1[11] = v6;
  sub_100052F6C(v6);
  v1[12] = v7;
  v1[13] = sub_100052FA4();
  v8 = type metadata accessor for Logger();
  v1[14] = v8;
  sub_100052F6C(v8);
  v1[15] = v9;
  v1[16] = sub_100052FA4();
  v10 = sub_100003768(&qword_10018B9F8, &unk_1001268E0);
  sub_10000ED84(v10);
  v1[17] = sub_100052FA4();
  v11 = type metadata accessor for SupportSymptomInfo();
  v1[18] = v11;
  sub_100052F6C(v11);
  v1[19] = v12;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[22] = static MainActor.shared.getter();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[23] = v14;
  v1[24] = v13;

  return _swift_task_switch(sub_100051A08, v14, v13);
}

uint64_t sub_100051A08()
{
  v41 = v0;
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[7];
  v4 = OBJC_IVAR____TtC11SupportFlow25SupportContentCoordinator_currentSupportSymptomInfo;
  sub_100052F98();
  swift_beginAccess();
  sub_10002BE60(v3 + v4, v1, &qword_10018B9F8, &unk_1001268E0);
  if (sub_10000E5F0(v1, 1, v2) == 1)
  {
    v5 = v0[17];

    sub_10000ABCC(v5, &qword_10018B9F8, &unk_1001268E0);
    sub_1000527C4();
    swift_allocError();
    swift_willThrow();
    sub_100053010();

    sub_10000875C();

    return v6();
  }

  else
  {
    v8 = v0[20];
    v9 = v0[21];
    v10 = v0[18];
    v11 = v0[19];
    (*(v11 + 32))(v9, v0[17], v10);
    static Logger.supportFlowApp.getter();
    (*(v11 + 16))(v8, v9, v10);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    v14 = os_log_type_enabled(v12, v13);
    v16 = v0[19];
    v15 = v0[20];
    v17 = v0[18];
    v19 = v0[15];
    v18 = v0[16];
    v20 = v0[14];
    if (v14)
    {
      v39 = v0[14];
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v40 = v22;
      *v21 = 136315138;
      v36 = SupportSymptomInfo.debugDescription.getter();
      v38 = v18;
      v24 = v23;
      v37 = v13;
      v25 = *(v16 + 8);
      v25(v15, v17);
      v26 = sub_10009CACC(v36, v24, &v40);

      *(v21 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v12, v37, "Creating a case with: %s", v21, 0xCu);
      sub_1000086BC(v22);

      (*(v19 + 8))(v38, v39);
    }

    else
    {

      v25 = *(v16 + 8);
      v25(v15, v17);
      (*(v19 + 8))(v18, v20);
    }

    v0[25] = v25;
    v27 = v0[13];
    v29 = v0[6];
    v28 = v0[7];

    sub_100070548(v29, v28, v27);
    SupportSymptomInfo.productId.getter();

    SupportProductType.init(productId:serialNumber:)();
    v30 = swift_task_alloc();
    v0[26] = v30;
    *v30 = v0;
    v30[1] = sub_100051DE0;
    v31 = v0[21];
    v32 = v0[13];
    v33 = v0[10];
    v34 = v0[5];
    v35 = v0[6];
    v43 = 0;

    return HelpMeTroubleshootCoordinator.createCase(for:contactType:supportSymptomInfo:context:languageID:regionID:)(v34, v33, v35, v31, v32, 0, 0, 0);
  }
}

uint64_t sub_100051DE0()
{
  v2 = *v1;
  sub_100052FD4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 216) = v0;

  sub_100052FF8();
  (*(v2[9] + 8))(*(v5 + 80), v2[8]);
  sub_100052FF8();
  v7 = *(v6 + 192);
  v8 = v2[23];
  if (v0)
  {
    v9 = sub_100052050;
  }

  else
  {
    v9 = sub_100051F58;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_100051F58()
{
  v1 = v0[25];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[11];

  (*(v2 + 8))(v3, v4);
  v5 = sub_100052F8C();
  v1(v5);

  sub_10000875C();

  return v6();
}

uint64_t sub_100052050()
{
  v1 = v0[25];
  v2 = v0[21];
  v3 = v0[18];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[11];

  (*(v5 + 8))(v4, v6);
  v1(v2, v3);
  sub_100053010();

  sub_10000875C();

  return v7();
}

uint64_t sub_100052134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  type metadata accessor for FlowViewDataProvider(0);
  v10 = sub_1000877E8(a1, a2, a3, a4);
  v12 = v11;
  sub_100052F98();
  swift_beginAccess();
  v13 = *(v5 + 24);
  if (*(v13 + 16) && (, v14 = sub_100083754(v10, v12), v16 = v15, , (v16 & 1) != 0))
  {
    v17 = *(*(v13 + 56) + 8 * v14);
  }

  else
  {

    return 0;
  }

  return v17;
}

uint64_t sub_100052220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  type metadata accessor for FlowViewDataProvider(0);
  sub_1000877E8(a1, a2, a3, a4);
  sub_100052F98();
  swift_beginAccess();
  v10 = *(v5 + 40);

  v11 = sub_100052F8C();
  LOBYTE(a4) = sub_1000DCE38(v11, v12, v10);

  return a4 & 1;
}

void *sub_1000522D4()
{

  sub_10000ABCC(v0 + OBJC_IVAR____TtC11SupportFlow25SupportContentCoordinator_currentSupportSymptomInfo, &qword_10018B9F8, &unk_1001268E0);
  sub_10000ABCC(v0 + OBJC_IVAR____TtC11SupportFlow25SupportContentCoordinator_currentDeepDiveURL, &qword_100188EE0, &unk_100122AE0);
  return v0;
}

uint64_t sub_10005236C()
{
  sub_1000522D4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for SupportContentCoordinator(uint64_t a1)
{
  result = qword_10018B800;
  if (!qword_10018B800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100052418(uint64_t a1)
{
  sub_100052548(319, &unk_10018B810, &type metadata accessor for SupportSymptomInfo);
  if (v1 <= 0x3F)
  {
    sub_100052548(319, &unk_100189188, &type metadata accessor for URL);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100052548(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_10005259C()
{
  v1 = v0;
  v2 = type metadata accessor for HelpMeTroubleshootCoordinator.ServerEnvironment();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UserAgent();
  v7 = sub_10000ED84(v6);
  __chkstk_darwin(v7);
  type metadata accessor for HelpMeTroubleshootCoordinator();
  static Bool.allowOverrides.getter();
  static UserAgent.hmt.getter();
  (*(v3 + 104))(v5, enum case for HelpMeTroubleshootCoordinator.ServerEnvironment.prod(_:), v2);
  v1[2] = HelpMeTroubleshootCoordinator.__allocating_init(with:environment:allowOverrides:)();
  sub_100003768(&qword_10018BA28, &qword_100126918);
  sub_100052F8C();
  v1[3] = Dictionary.init(dictionaryLiteral:)();
  type metadata accessor for HMTSolution.Article();
  sub_100052F8C();
  v1[4] = Dictionary.init(dictionaryLiteral:)();
  v1[5] = &_swiftEmptySetSingleton;
  type metadata accessor for ContactSupportOptions();
  sub_100052F8C();
  v1[6] = Dictionary.init(dictionaryLiteral:)();
  v8 = type metadata accessor for SupportSymptomInfo();
  sub_100052F8C();
  v1[7] = Dictionary.init(dictionaryLiteral:)();
  v1[8] = &_swiftEmptySetSingleton;
  v1[9] = 0;
  v1[10] = 0;
  sub_100053004();
  sub_100003CE8(v9, v10, v11, v8);
  type metadata accessor for URL();
  sub_100053004();
  sub_100003CE8(v12, v13, v14, v15);
  sub_100053050();
}

unint64_t sub_1000527C4()
{
  result = qword_10018BA00;
  if (!qword_10018BA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018BA00);
  }

  return result;
}

uint64_t sub_100052818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_100083754(a1, a2);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    v9 = *(*v3 + 24);
    sub_100003768(&qword_10018BA08, &qword_1001268F8);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v9);

    v10 = *(v16 + 56);
    v11 = type metadata accessor for ContactSupportOptions();
    (*(*(v11 - 8) + 32))(a3, v10 + *(*(v11 - 8) + 72) * v7, v11);
    _NativeDictionary._delete(at:)();
    *v3 = v16;
    v12 = a3;
    v13 = 0;
    v14 = v11;
  }

  else
  {
    v14 = type metadata accessor for ContactSupportOptions();
    v12 = a3;
    v13 = 1;
  }

  return sub_100003CE8(v12, v13, 1, v14);
}

uint64_t sub_100052960(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100083754(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  sub_100003768(&qword_10018BA08, &qword_1001268F8);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = sub_100083754(a2, a3);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v18;
LABEL_5:
  v20 = *v5;
  if (v17)
  {
    v21 = v20[7];
    v22 = type metadata accessor for ContactSupportOptions();
    v23 = *(v22 - 8);
    v24 = *(v23 + 40);
    v25 = v22;
    v26 = v21 + *(v23 + 72) * v16;

    return v24(v26, a1, v25);
  }

  else
  {
    sub_100052CB8(v16, a2, a3, a1, v20);
  }
}

void sub_100052AD4(uint64_t a1, uint64_t a2)
{
  sub_100083810(a2);
  sub_100052F7C();
  if (__OFADD__(v7, v8))
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = v5;
  v10 = v6;
  sub_100003768(&qword_10018BA40, &unk_1001269F0);
  if (!sub_100053030())
  {
    goto LABEL_5;
  }

  v11 = sub_100083810(a2);
  if ((v10 & 1) != (v12 & 1))
  {
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v9 = v11;
LABEL_5:
  if (v10)
  {
    *(*(*v2 + 56) + 8 * v9) = a1;
    sub_100053050();
  }

  else
  {
    sub_100053050();

    sub_100052EE4(v13, v14, v15, v16);
  }
}

void sub_100052BC4(char a1, uint64_t a2)
{
  sub_10008387C(a2);
  sub_100052F7C();
  if (__OFADD__(v7, v8))
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = v5;
  v10 = v6;
  sub_100003768(&qword_10018BA38, &qword_1001269E8);
  if (!sub_100053030())
  {
    goto LABEL_5;
  }

  v11 = sub_10008387C(a2);
  if ((v10 & 1) != (v12 & 1))
  {
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v9 = v11;
LABEL_5:
  if (v10)
  {
    *(*(*v2 + 56) + v9) = a1 & 1;
    sub_100053050();
  }

  else
  {
    sub_100053050();

    sub_100052F28(v13, v14, v15, v16);
  }
}

uint64_t sub_100052CB8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for ContactSupportOptions();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_100052D68(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_10000AF8C(a1, a2, a3, a4);
  sub_10000AF7C();
  (*(v6 + 40))(v4, v5);
  return v4;
}

_BYTE *storeEnumTagSinglePayload for SupportContentCoordinatorError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x100052E54);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100052E90()
{
  result = qword_10018BA30;
  if (!qword_10018BA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018BA30);
  }

  return result;
}

unint64_t sub_100052EE4(unint64_t result, char a2, uint64_t a3, void *a4)
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

unint64_t sub_100052F28(unint64_t result, int a2, char a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 4 * result) = a2;
  *(a4[7] + result) = a3;
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

uint64_t sub_100052FA4()
{

  return swift_task_alloc();
}

uint64_t sub_100052FBC(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_100053010()
{
}

BOOL sub_100053030()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1 & 1, v0);
}

_BYTE *storeEnumTagSinglePayload for SoftwareUpdatePlacardInfoItemType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        JUMPOUT(0x100053130);
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_100053168(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100176170, v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000531BC(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x616470556F747561;
  }
}

uint64_t sub_100053224@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100053168(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100053254@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000531BC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100053280@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000E7A8C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000532AC(uint64_t a1)
{
  result = sub_1000532D4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000532D4()
{
  result = qword_10018BAC0;
  if (!qword_10018BAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018BAC0);
  }

  return result;
}

unint64_t sub_100053328(uint64_t a1)
{
  result = sub_100053350();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100053350()
{
  result = qword_10018BAC8;
  if (!qword_10018BAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018BAC8);
  }

  return result;
}

unint64_t sub_1000533A8()
{
  result = qword_10018BAD0;
  if (!qword_10018BAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018BAD0);
  }

  return result;
}

uint64_t sub_1000533FC(char a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = sub_100003768(&qword_1001889F0, &qword_100121D20);
  __chkstk_darwin(v6 - 8);
  v8 = &v27[-v7 - 8];
  if (a1)
  {
    if (qword_1001881A0 != -1)
    {
      swift_once();
    }

    v9 = unk_10018BA80;
    v26 = qword_10018BA78;
    v10 = qword_1001881A8;

    if (v10 != -1)
    {
      swift_once();
    }

    v11 = qword_10018BA88;
    v12 = unk_10018BA90;
    v13 = qword_1001881B8;

    if (v13 != -1)
    {
      swift_once();
    }

    v14 = &qword_10018BAA0;
  }

  else
  {
    if (qword_100188188 != -1)
    {
      swift_once();
    }

    v9 = unk_10018BA50;
    v26 = qword_10018BA48;
    v15 = qword_100188190;

    if (v15 != -1)
    {
      swift_once();
    }

    v11 = qword_10018BA58;
    v12 = unk_10018BA60;
    v16 = qword_1001881B0;

    if (v16 != -1)
    {
      swift_once();
    }

    v14 = &qword_10018BA98;
  }

  v17 = *v14;
  v18 = qword_1001881C0;
  swift_retain_n();
  if (v18 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for FlowImage(0);
  v20 = sub_10000C2D4(v19, qword_10018BAA8);
  sub_100053ED8(v20, v8);
  sub_100003CE8(v8, 0, 1, v19);
  v28 = &type metadata for SoftwareUpdatePlacardInfoItemType;
  v29 = sub_100053350();
  v27[0] = a1 & 1;
  UUID.init()();
  v21 = UUID.uuidString.getter();
  v23 = v22;
  (*(v3 + 8))(v5, v2);
  type metadata accessor for PlacardInfoItem(0);
  swift_allocObject();
  v24 = sub_1000F04E8(0, v21, v23, v8, v26, v9, v11, v12, v17, v27);

  return v24;
}

uint64_t sub_1000537B4()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_10018BA48 = result;
  unk_10018BA50 = v3;
  return result;
}

uint64_t sub_1000538BC()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_10018BA58 = result;
  unk_10018BA60 = v3;
  return result;
}

uint64_t sub_1000539C4()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_10018BA68 = result;
  unk_10018BA70 = v3;
  return result;
}

uint64_t sub_100053ACC()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_10018BA78 = result;
  unk_10018BA80 = v3;
  return result;
}

uint64_t sub_100053BD4()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_10018BA88 = result;
  unk_10018BA90 = v3;
  return result;
}

uint64_t sub_100053CDC()
{
  type metadata accessor for ActionInfo(0);
  if (qword_100188198 != -1)
  {
    swift_once();
  }

  v0 = qword_10018BA68;
  v1 = unk_10018BA70;

  v2 = sub_1000EDA28(v0, v1, 0xD00000000000005DLL, 0x8000000100136400);

  qword_10018BA98 = v2;
  return result;
}

uint64_t sub_100053D88()
{
  type metadata accessor for ActionInfo(0);
  if (qword_100188198 != -1)
  {
    swift_once();
  }

  v0 = qword_10018BA68;
  v1 = unk_10018BA70;

  v2 = sub_1000EDA28(v0, v1, 0xD000000000000045, 0x80000001001365B0);

  qword_10018BAA0 = v2;
  return result;
}

uint64_t sub_100053E34()
{
  v0 = type metadata accessor for FlowImage(0);
  sub_10000C270(v0, qword_10018BAA8);
  v1 = sub_10000C2D4(v0, qword_10018BAA8);
  v1->i64[0] = 0xD000000000000026;
  v1->i64[1] = 0x8000000100136580;
  v1[1].i8[0] = 0;
  v1[1].i64[1] = 0;
  v1[2].i64[0] = 0;
  v1[2].i8[8] = 1;
  v1[3] = vdupq_n_s64(0x4046000000000000uLL);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100053ED8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowImage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100053F68(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    return v10[1];
  }

  return a1;
}

uint64_t sub_1000540A8@<X0>(uint64_t a1@<X0>, char a2@<W1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a2 & 1;
  sub_100053F68(a1, a2 & 1);
  v8 = sub_1000DEC54(a3, 0);

  *(a4 + 72) = &type metadata for MessagesStepProvider;
  *(a4 + 80) = sub_10001362C();
  *(a4 + 48) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = v7;
  *(v9 + 32) = a3;
  type metadata accessor for FlowViewDataProvider(0);

  sub_1000136E0(a3);
  sub_10000B550();
  result = Environment.init<A>(_:)();
  *a4 = result;
  *(a4 + 8) = v11 & 1;
  *(a4 + 32) = 0xD000000000000016;
  *(a4 + 40) = 0x8000000100135C30;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 88) = sub_10005426C;
  *(a4 + 96) = v9;
  return result;
}

uint64_t sub_1000541BC(uint64_t a1, char a2, unint64_t a3)
{
  sub_100053F68(a1, a2 & 1);
  sub_1000DF334(a3);
}

uint64_t sub_100054224()
{

  if (*(v0 + 32) >= 0xAuLL)
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100054284()
{
  type metadata accessor for SoftwareUpdateManager();
  sub_100056A04();
  v0 = swift_allocObject();
  result = sub_1000561C0();
  qword_1001A5738 = v0;
  return result;
}

uint64_t sub_1000542BC()
{
  v1 = *(v0 + 24);
  if (v1 == 2)
  {
    if (sub_100025AAC(6) == 1635018050 && v2 == 0xE400000000000000)
    {

      LOBYTE(v1) = 1;
    }

    else
    {
      LOBYTE(v1) = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    *(v0 + 24) = v1 & 1;
  }

  return v1 & 1;
}

uint64_t sub_100054350()
{
  sub_100025A94();
  *(v1 + 1384) = v0;
  *(v1 + 1449) = v2;
  type metadata accessor for MainActor();
  *(v1 + 1392) = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v1 + 1400) = v4;
  *(v1 + 1408) = v3;

  return _swift_task_switch(sub_1000543EC, v4, v3);
}

uint64_t sub_1000543EC()
{
  sub_10003DCD8();
  v1 = *(v0 + 1384);
  v2 = *(v0 + 1449);
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v4 = swift_allocObject();
  *(v0 + 1416) = v4;
  *(v4 + 16) = &unk_100126CB8;
  *(v4 + 24) = v3;
  sub_100003768(&qword_10018BBD0, &qword_100126CD0);
  swift_asyncLet_begin();
  sub_100056A04();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v2;
  v6 = swift_allocObject();
  *(v0 + 1424) = v6;
  *(v6 + 16) = &unk_100126CE0;
  *(v6 + 24) = v5;

  sub_100003768(&qword_10018BBC0, &qword_100126C98);
  swift_asyncLet_begin();

  return _swift_asyncLet_get(v0 + 16, v0 + 1448, sub_10005457C, v0 + 1296);
}

uint64_t sub_1000545B8()
{
  v1 = *(v0 + 1360);
  if (*(v0 + 1368) && (swift_getErrorValue(), v2 = *(v0 + 1344), v3 = *(v0 + 1352), swift_errorRetain(), v4 = sub_1000551C0(v2, v3), (v5 & 1) == 0))
  {
    *(v0 + 1432) = v4;

    v7 = sub_1000546B8;
  }

  else
  {
    if (v1)
    {
      v6 = 2;
    }

    else
    {
      v6 = [*(*(v0 + 1384) + 16) isAutomaticUpdateV2Enabled] ^ 1;
    }

    *(v0 + 1440) = v6;

    v7 = sub_100054788;
  }

  return _swift_asyncLet_finish(v0 + 656, v0 + 1360, v7, v0 + 1296);
}

uint64_t sub_100054704()
{
  sub_10003DCD8();
  v1 = *(v0 + 1432);

  sub_1000569F8();

  return v2(v1, 0);
}

uint64_t sub_1000547D4()
{
  sub_10003DCD8();
  v1 = *(v0 + 1440);

  sub_1000569F8();

  return v2(v1, 1);
}

uint64_t sub_100054858(char a1)
{
  *(v1 + 56) = a1;
  v2 = type metadata accessor for ContinuousClock();
  *(v1 + 16) = v2;
  *(v1 + 24) = *(v2 - 8);
  *(v1 + 32) = swift_task_alloc();

  return _swift_task_switch(sub_100054918, 0, 0);
}

uint64_t sub_100054918()
{
  sub_10003DCD8();
  if ((*(v0 + 56) & 1) == 0)
  {
    static Bool.disableMinimumLoadTime.getter();
  }

  static Duration.seconds(_:)();
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_100054A0C;

  return sub_100111FB4();
}

uint64_t sub_100054A0C()
{
  v2 = *v1;
  v3 = *v1;
  sub_10000870C();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  v3[6] = v0;

  v6 = v2[4];
  v7 = v2[3];
  v8 = v2[2];
  if (v0)
  {

    (*(v7 + 8))(v6, v8);

    return _swift_task_switch(sub_100054BE0, 0, 0);
  }

  else
  {
    (*(v7 + 8))(v6, v8);
    v9 = v3[6] != 0;

    v10 = v5[1];

    return v10(v9);
  }
}

uint64_t sub_100054BE0()
{
  sub_100025A94();
  v1 = *(v0 + 48) != 0;

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100054C4C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_100054D38;

  return v5();
}

uint64_t sub_100054D38()
{
  sub_100025A94();
  v2 = v1;
  v3 = *(*v0 + 16);
  v4 = *v0;
  sub_10000870C();
  *v5 = v4;

  *v3 = v2 & 1;
  v6 = *(v4 + 8);

  return v6();
}

uint64_t sub_100054E44(uint64_t a1, uint64_t a2)
{
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_100054EE0;

  return sub_1000552E4();
}

uint64_t sub_100054EE0()
{
  sub_100025A94();
  sub_1000569C4();
  v3 = *v2;
  sub_10000870C();
  *v4 = v3;

  sub_1000569F8();

  return v5(v0, v1);
}

uint64_t sub_100054FC8(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1000550B4;

  return v5();
}

uint64_t sub_1000550B4()
{
  sub_10003DCD8();
  sub_1000569C4();
  v4 = *(v3 + 16);
  v5 = *v2;
  sub_10000870C();
  *v6 = v5;

  *v4 = v0;
  *(v4 + 8) = v1;
  v7 = *(v5 + 8);

  return v7();
}

id sub_1000551C0(uint64_t a1, uint64_t a2)
{
  v2 = sub_100021B58(a1, a2);
  if (v3)
  {
    return 0;
  }

  v4 = v2;
  if (sub_10010A0FC(v2, &off_1001761C0))
  {
    return 0;
  }

  return v4;
}

uint64_t sub_10005520C(char a1)
{
  if (a1)
  {
    return 2;
  }

  else
  {
    return [*(v1 + 16) isAutomaticUpdateV2Enabled] ^ 1;
  }
}

void sub_100055240(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = *(a1 + 32);

  v10 = a4;
  v11 = a5;
  v9(a2, a3, a4, a5);
}

uint64_t sub_1000552E4()
{
  sub_100025A94();
  *(v1 + 32) = v0;
  *(v1 + 104) = v2;
  *(v1 + 40) = type metadata accessor for MainActor();
  *(v1 + 48) = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v1 + 56) = v4;
  *(v1 + 64) = v3;

  return _swift_task_switch(sub_100055380, v4, v3);
}

uint64_t sub_100055380()
{
  if ((static Bool.allowOverrides.getter() & 1) == 0)
  {
    goto LABEL_8;
  }

  if (qword_100188360 != -1)
  {
    swift_once();
  }

  if (qword_1001A5950)
  {
    v1 = sub_1000FB6E8();
    switch(v1)
    {
      case 1:

        goto LABEL_8;
      default:
        v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v2)
        {
          goto LABEL_8;
        }

        switch(v1)
        {
          case 0:
          case 1:
          case 3:
            v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
            break;
          case 2:
            v10 = 1;
            break;
          default:
            JUMPOUT(0);
        }

        sub_1000569F8();

        result = v11(v10 & 1, 0);
        break;
    }
  }

  else
  {
LABEL_8:
    v3 = *(v0 + 32);
    v4 = *(v0 + 104);
    v5 = [objc_allocWithZone(SUScanOptions) init];
    *(v0 + 72) = v5;
    [v5 setForced:1];
    v6 = static MainActor.shared.getter();
    *(v0 + 80) = v6;
    v7 = swift_task_alloc();
    *(v0 + 88) = v7;
    *(v7 + 16) = v3;
    *(v7 + 24) = v5;
    *(v7 + 32) = v4;
    v8 = swift_task_alloc();
    *(v0 + 96) = v8;
    v9 = sub_100003768(&qword_10018BBC0, &qword_100126C98);
    *v8 = v0;
    v8[1] = sub_1000556BC;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 16, v6, &protocol witness table for MainActor, 0xD000000000000032, 0x8000000100136740, sub_1000561FC, v7, v9);
  }

  return result;
}

uint64_t sub_1000556BC()
{
  sub_10003DCD8();
  v1 = *v0;
  v2 = *v0;
  sub_10000870C();
  *v3 = v2;

  v4 = *(v1 + 64);
  v5 = *(v1 + 56);

  return _swift_task_switch(sub_100055810, v5, v4);
}

uint64_t sub_100055810()
{
  sub_100025A94();

  sub_1000569F8();

  return v1();
}

void sub_10005587C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = sub_100003768(&qword_10018BBC8, &unk_100126CA0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = aBlock - v10;
  v12 = *(a2 + 16);
  (*(v9 + 16))(aBlock - v10, a1, v8);
  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  *(v14 + 24) = a2;
  (*(v9 + 32))(v14 + v13, v11, v8);
  aBlock[4] = sub_1000562D8;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000560DC;
  aBlock[3] = &unk_10017A7E0;
  v15 = _Block_copy(aBlock);

  [v12 scanForUpdates:a3 withScanResults:v15];
  _Block_release(v15);
}

void sub_100055A58(void *a1, uint64_t a2, char a3, void *a4, uint64_t a5)
{
  v35 = a4;
  v9 = sub_100003768(&qword_10018BBC8, &unk_100126CA0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v34 - v12;
  v14 = [a1 preferredDescriptor];
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = [a1 alternateDescriptor];
    if (!v15)
    {
      v16 = 0;
      if ((a3 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  v16 = 1;
  if ((a3 & 1) == 0)
  {
LABEL_6:
    if (qword_1001881D0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000C2D4(v17, qword_1001A5740);
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 67109378;
      *(v20 + 4) = v16;
      *(v20 + 8) = 2112;
      if (a2)
      {
        swift_errorRetain();
        v22 = _swift_stdlib_bridgeErrorToNSError();
        v23 = v22;
      }

      else
      {
        v22 = 0;
        v23 = 0;
      }

      *(v20 + 10) = v22;
      *v21 = v23;
      _os_log_impl(&_mh_execute_header, v18, v19, "Software updates found: %{BOOL}d, error: %@.", v20, 0x12u);
      sub_1000083A0(v21);
    }

    LOBYTE(aBlock) = v16;
    v37 = a2;
    swift_errorRetain();
    CheckedContinuation.resume(returning:)();
    goto LABEL_20;
  }

LABEL_5:
  if (a2)
  {
    goto LABEL_6;
  }

  if (qword_1001881D0 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_10000C2D4(v24, qword_1001A5740);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "Check downloadable error.", v27, 2u);
  }

  if (v15)
  {
    v28 = [objc_allocWithZone(SUDownloadOptions) initWithDescriptor:v15];
    v29 = v15;
  }

  else
  {
    v28 = [objc_allocWithZone(SUDownloadOptions) init];
    v29 = 0;
  }

  v35 = v35[2];
  (*(v10 + 16))(v13, a5, v9);
  v30 = (*(v10 + 80) + 17) & ~*(v10 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = v16;
  (*(v10 + 32))(v31 + v30, v13, v9);
  *(v31 + ((v11 + v30 + 7) & 0xFFFFFFFFFFFFFFF8)) = v15;
  v40 = sub_10005642C;
  v41 = v31;
  aBlock = _NSConcreteStackBlock;
  v37 = 1107296256;
  v38 = sub_100055240;
  v39 = &unk_10017A830;
  v32 = _Block_copy(&aBlock);
  v15 = v28;
  v33 = v29;

  [v35 updatesDownloadableWithOptions:v15 alternateDownloadOptions:v15 replyHandler:v32];

  _Block_release(v32);
LABEL_20:
}

uint64_t sub_100055F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v8 = a3;
  if (!a3)
  {
    swift_errorRetain();
    v8 = a4;
  }

  swift_errorRetain();
  if (qword_1001881D0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000C2D4(v10, qword_1001A5740);
  swift_errorRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 67109378;
    *(v13 + 4) = a5 & 1;
    *(v13 + 8) = 2112;
    if (v8)
    {
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      v16 = v15;
    }

    else
    {
      v15 = 0;
      v16 = 0;
    }

    *(v13 + 10) = v15;
    *v14 = v16;
    _os_log_impl(&_mh_execute_header, v11, v12, "Software updates found: %{BOOL}d, error: %@.", v13, 0x12u);
    sub_1000083A0(v14);
  }

  sub_100003768(&qword_10018BBC8, &unk_100126CA0);
  return CheckedContinuation.resume(returning:)();
}

void sub_1000560DC(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_100056168()
{
  sub_100056A04();

  return _swift_deallocClassInstance(v1, v2, v3);
}

uint64_t sub_1000561C0()
{
  *(v0 + 16) = [objc_allocWithZone(SUManagerClient) init];
  *(v0 + 24) = 2;
  return v0;
}

uint64_t sub_100056208()
{
  v1 = sub_100003768(&qword_10018BBC8, &unk_100126CA0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_1000562D8(void *a1, uint64_t a2)
{
  v5 = *(sub_100003768(&qword_10018BBC8, &unk_100126CA0) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  sub_100055A58(a1, a2, v6, v7, v8);
}

uint64_t sub_10005636C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100056384()
{
  v1 = sub_100003768(&qword_10018BBC8, &unk_100126CA0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 17) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10005642C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_100003768(&qword_10018BBC8, &unk_100126CA0) - 8);
  v10 = (*(v9 + 80) + 17) & ~*(v9 + 80);
  v11 = *(v4 + 16);
  v12 = *(v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100055F0C(a1, a2, a3, a4, v11, v4 + v10, v12);
}

uint64_t sub_100056510()
{
  sub_100025A94();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = sub_100056A10(v2);
  *v3 = v4;
  v3[1] = sub_10005659C;

  return sub_100054858(v1);
}

uint64_t sub_10005659C()
{
  sub_100025A94();
  v2 = v1;
  v3 = *v0;
  sub_10000870C();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_10005668C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000566C4()
{
  sub_10003DCD8();
  v0 = swift_task_alloc();
  v1 = sub_100056A10(v0);
  *v1 = v2;
  v3 = sub_1000569D8(v1);

  return v4(v3);
}

uint64_t sub_10005675C()
{

  sub_100056A04();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100056790()
{
  sub_100025A94();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100056A10(v3);
  *v4 = v5;
  v4[1] = sub_100054EE0;

  return sub_100054E44(v1, v2);
}

uint64_t sub_100056824()
{
  sub_10003DCD8();
  v0 = swift_task_alloc();
  v1 = sub_100056A10(v0);
  *v1 = v2;
  v3 = sub_1000569D8(v1);

  return v4(v3);
}

uint64_t sub_1000568BC()
{
  sub_100025A94();
  v1 = *v0;
  sub_10000870C();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_100056A1C(uint64_t a1)
{
  sub_100003768(&qword_10018BFC0, &unk_100126E20);
  sub_100057DB0();
  sub_100057E04();
  swift_getKeyPath();
  sub_1001090F0();
}

uint64_t sub_100056AC8(uint64_t a1)
{
  v3 = type metadata accessor for SupportFlowIdentifier();
  sub_100008780();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = qword_10018BBD8;
  if (qword_1001881C8 != -1)
  {
    swift_once();
  }

  *(v1 + v9) = qword_1001A5738;
  *(v1 + qword_10018BBE0) = 0;
  v10 = v1 + qword_10018BBE8;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = v1 + qword_10018BBF0;
  *v11 = 0;
  *(v11 + 8) = -1;
  (*(v5 + 104))(v8, enum case for SupportFlowIdentifier.softwareUpdate(_:), v3);

  sub_100105700(v8, &type metadata for SoftwareUpdateStepOverrideProvider, a1, 0, 0, v12);
  v14 = v13;
  sub_100057D3C();

  v15 = AnyView.init<A>(_:)();
  sub_100056A1C(v15);

  return v14;
}

uint64_t sub_100056C7C()
{
  v1[2] = v0;
  type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_100056D14, v3, v2);
}

uint64_t sub_100056D50()
{
  updated = DeviceEventCoordinator.recentSoftwareUpdateErrorCode()();
  *(v0 + 56) = updated.value;
  *(v0 + 88) = updated.is_nil;
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return _swift_task_switch(sub_100056DC8, v1, v2);
}

uint64_t sub_100056DC8()
{
  if ((*(v0 + 88) & 1) == 0)
  {
    v3 = *(v0 + 56);
    v4 = *(v0 + 16);

    v5 = v4 + qword_10018BBE8;
    *v5 = v3;
    *(v5 + 8) = 0;
    if (qword_1001881D0 != -1)
    {
      sub_100057EC8(&qword_1001881D0);
    }

    v6 = type metadata accessor for Logger();
    sub_10000C2D4(v6, qword_1001A5740);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_17;
    }

    v9 = *(v0 + 56);
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = v9;
    v11 = "Recent update error code found: %ld";
    v12 = v8;
    v13 = v7;
    v14 = v10;
    v15 = 12;
    goto LABEL_16;
  }

  if (qword_100188360 != -1)
  {
    swift_once();
  }

  if (qword_1001A5950)
  {
    KeyPath = swift_getKeyPath();
    v2 = sub_1000FBFA4(KeyPath);

    if (v2)
    {
      *(*(v0 + 16) + qword_10018BBE0) = 1;
LABEL_12:

      if (qword_1001881D0 != -1)
      {
        sub_100057EC8(&qword_1001881D0);
      }

      v18 = type metadata accessor for Logger();
      sub_10000C2D4(v18, qword_1001A5740);
      v7 = Logger.logObject.getter();
      v19 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v7, v19))
      {
        goto LABEL_17;
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      v11 = "Has beta installed. Skipping scan for updates.";
      v12 = v19;
      v13 = v7;
      v14 = v20;
      v15 = 2;
LABEL_16:
      _os_log_impl(&_mh_execute_header, v13, v12, v11, v14, v15);

LABEL_17:

      v21 = *(v0 + 8);

      return v21();
    }
  }

  v16 = *(v0 + 16);

  v17 = sub_1000542BC();

  *(v16 + qword_10018BBE0) = v17 & 1;
  if (v17)
  {
    goto LABEL_12;
  }

  *(v0 + 64) = *(*(v0 + 16) + qword_10018BBD8);

  v23 = swift_task_alloc();
  *(v0 + 72) = v23;
  *v23 = v0;
  v23[1] = sub_1000570F0;

  return sub_100054350();
}

uint64_t sub_1000570F0(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 80) = a1;
  *(v4 + 89) = a2;

  v5 = *(v3 + 40);
  v6 = *(v3 + 32);

  return _swift_task_switch(sub_100057240, v6, v5);
}

uint64_t sub_100057240()
{
  v1 = *(v0 + 89);
  v2 = *(v0 + 80);
  v3 = *(v0 + 16);

  v4 = v3 + qword_10018BBF0;
  *v4 = v2;
  *(v4 + 8) = v1 & 1;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000572C8()
{
  sub_100057508();
  sub_100006578(v3, v2, &qword_10018BF78, &qword_100126D98);
  sub_100003768(&qword_10018BF78, &qword_100126D98);
  sub_1000579F8();
  v0 = AnyView.init<A>(_:)();
  sub_10001D724(v3, &qword_10018BF78, &qword_100126D98);
  return sub_100108610(v0);
}

uint64_t sub_100057360()
{
  *(v1 + 16) = v0;
  type metadata accessor for MainActor();
  *(v1 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000573F8, v3, v2);
}

uint64_t sub_1000573F8()
{
  v1 = *(v0 + 16);

  v2 = qword_10018BBD8;

  sub_1000542BC();

  sub_100085FE4();
  [*(*(v1 + v2) + 16) isAutomaticUpdateV2Enabled];
  sub_100085FE4();
  v3 = *(v1 + qword_10018BBF0 + 8);
  if (v3 != 255 && (v3 & 1) != 0)
  {
    sub_100085FE4();
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100057508()
{
  if ((*(v0 + qword_10018BBE8 + 8) & 1) == 0)
  {
    *&v55[0] = *(v0 + qword_10018BBE8);
    *(v55 + 8) = xmmword_100126D00;
    *(&v55[1] + 1) = 0x8000000100132C50;
    v56 = xmmword_100126D10;
    v57 = 0;
    goto LABEL_5;
  }

  if (*(v0 + qword_10018BBE0) == 1)
  {
    v56 = 0u;
    memset(v55, 0, sizeof(v55));
    v57 = 1;
LABEL_5:
    sub_10000B604();
    sub_10002D58C();
    _ConditionalContent<>.init(storage:)();
    v54 = 0;
    sub_10001D980();
    sub_100003768(&qword_10018BFA0, &qword_100126DA8);
    sub_100057E84();
    sub_100057B68(v1, &qword_10018BF90, &qword_100126DA0, v2);
    v3 = sub_100057AB0();
    sub_100057EE8(v3, v4, v5, v6, v7, v8, v9, v10, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51[0]);
    return _ConditionalContent<>.init(storage:)();
  }

  v12 = *(v0 + qword_10018BBF0 + 8);
  if (v12 == 255)
  {
    v53 = 1;
    sub_10001D980();
    sub_100057E9C(&qword_10018BFA8);
    _ConditionalContent<>.init(storage:)();
    v14 = &qword_10018BFA0;
    v15 = &qword_100126DA8;
    sub_100006578(v55, v51, &qword_10018BFA0, &qword_100126DA8);
    v54 = 1;
    sub_100003768(&qword_10018BF90, &qword_100126DA0);
    sub_10001D980();
    sub_100057E84();
    sub_100057B68(v27, &qword_10018BF90, &qword_100126DA0, v28);
    v29 = sub_100057AB0();
    sub_100057EE8(v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51[0]);
    _ConditionalContent<>.init(storage:)();
    v26 = v55;
  }

  else
  {
    v13 = *(v0 + qword_10018BBF0);
    *&v52 = 0;
    memset(v51, 0, sizeof(v51));
    sub_10000B2C0(0, 0, v51, 0, 0, v13, v12 & 1);
    sub_10001D724(v51, &qword_100189310, &qword_1001221A0);
    v14 = &qword_10018BFB0;
    v15 = &qword_100126DB0;
    sub_100006578(&v37, v51, &qword_10018BFB0, &qword_100126DB0);
    v53 = 0;
    sub_10001D980();
    sub_100057E9C(&qword_10018BFA8);
    _ConditionalContent<>.init(storage:)();
    sub_100006578(v55, v51, &qword_10018BFA0, &qword_100126DA8);
    v54 = 1;
    sub_100003768(&qword_10018BF90, &qword_100126DA0);
    sub_100003768(&qword_10018BFA0, &qword_100126DA8);
    sub_100057E84();
    sub_100057B68(v16, &qword_10018BF90, &qword_100126DA0, v17);
    v18 = sub_100057AB0();
    sub_100057EE8(v18, v19, v20, v21, v22, v23, v24, v25, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51[0]);
    _ConditionalContent<>.init(storage:)();
    sub_10001D724(v55, &qword_10018BFA0, &qword_100126DA8);
    v26 = &v37;
  }

  return sub_10001D724(v26, v14, v15);
}

uint64_t sub_1000578D4()
{
  v0 = sub_10011484C();

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for SoftwareUpdateFlowViewModel(uint64_t a1)
{
  result = qword_10018BC20;
  if (!qword_10018BC20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000579F8()
{
  result = qword_10018BF80;
  if (!qword_10018BF80)
  {
    sub_100004D48(&qword_10018BF78, &qword_100126D98);
    sub_100057B68(&qword_10018BF88, &qword_10018BF90, &qword_100126DA0, sub_10002D58C);
    sub_100057AB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018BF80);
  }

  return result;
}

unint64_t sub_100057AB0()
{
  result = qword_10018BF98;
  if (!qword_10018BF98)
  {
    sub_100004D48(&qword_10018BFA0, &qword_100126DA8);
    sub_100057B68(&qword_10018BFA8, &qword_10018BFB0, &qword_100126DB0, sub_10000B658);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018BF98);
  }

  return result;
}

uint64_t sub_100057B68(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100004D48(a2, a3);
    sub_10000B604();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100057BEC()
{
  v0 = type metadata accessor for SupportFlowIdentifier();
  sub_100008780();
  v2 = v1;
  __chkstk_darwin(v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  sub_10000C270(v6, qword_1001A5740);
  sub_10000C2D4(v6, qword_1001A5740);
  (*(v2 + 104))(v5, enum case for SupportFlowIdentifier.softwareUpdate(_:), v0);
  return Logger.init(flowId:)();
}

uint64_t sub_100057CE4(uint64_t a1, uint64_t a2)
{
  *(a1 + *(*a1 + 176)) = a2;
}

unint64_t sub_100057D3C()
{
  result = qword_10018BFB8;
  if (!qword_10018BFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018BFB8);
  }

  return result;
}

__n128 sub_100057DA4(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

unint64_t sub_100057DB0()
{
  result = qword_10018BFC8;
  if (!qword_10018BFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018BFC8);
  }

  return result;
}

unint64_t sub_100057E04()
{
  result = qword_10018BFD0;
  if (!qword_10018BFD0)
  {
    sub_100004D48(&qword_10018BFC0, &unk_100126E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018BFD0);
  }

  return result;
}

uint64_t sub_100057E9C(unint64_t *a1)
{

  return sub_100057B68(a1, v1, v2, sub_10000B658);
}

uint64_t sub_100057EC8(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100057F04(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF5 && *(a1 + 8))
  {
    return (*a1 + 2147483638);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 9;
  if (v4 >= 0xB)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100057F5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF6)
  {
    *result = 0;
    *result = a2 - 2147483638;
    if (a3 >= 0x7FFFFFF6)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF6)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 9;
    }
  }

  return result;
}

void *sub_100057FAC(void *result, int a2)
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

uint64_t sub_100057FDC(unint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a1)
  {
    case 0uLL:
      v6 = 0xD000000000000023;
      break;
    case 1uLL:
      v6 = 0xD000000000000019;
      break;
    case 2uLL:
    case 3uLL:
    case 8uLL:
      UUID.init()();
      v6 = UUID.uuidString.getter();
      sub_10003F67C(a1);
      (*(v3 + 8))(v5, v2);
      break;
    case 4uLL:
      v6 = 0xD000000000000018;
      break;
    case 5uLL:
      v6 = 0xD000000000000018;
      break;
    case 6uLL:
      v6 = 0xD000000000000017;
      break;
    case 7uLL:
      v6 = 0xD000000000000020;
      break;
    case 9uLL:
      v6 = 0xD000000000000018;
      break;
    default:
      sub_10003F67C(a1);
      v6 = 0xD000000000000015;
      break;
  }

  return v6;
}

uint64_t sub_100058208(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a1)
  {
    case 0:
      sub_1000599E8();
      v6 = v7 + 11;
      break;
    case 1:
      sub_1000599E8();
      v6 = v8 | 1;
      break;
    case 2:
    case 3:
    case 8:
      UUID.init()();
      v6 = UUID.uuidString.getter();
      (*(v3 + 8))(v5, v2);
      break;
    case 4:
      v6 = 0xD000000000000018;
      break;
    case 5:
      v6 = 0xD000000000000018;
      break;
    case 6:
      sub_1000599E8();
      v6 = v9 - 1;
      break;
    case 7:
      sub_1000599E8();
      v6 = v11 + 8;
      break;
    case 9:
      v6 = 0xD000000000000018;
      break;
    default:
      sub_1000599E8();
      v6 = v10 - 3;
      break;
  }

  return v6;
}

__n128 sub_1000583E8@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  switch(a1)
  {
    case 0:
      type metadata accessor for MessagesFlowViewModel(0);
      v3 = sub_10005907C();
      sub_100005914(v3);
      sub_10001B3E4();
      v285 = 0;
      LOBYTE(v291) = 0;
      goto LABEL_9;
    case 1:
      type metadata accessor for MessagesFlowViewModel(0);
      v92 = sub_10005907C();
      sub_100005914(v92);
      sub_10001B3E4();
      v285 = 1;
      LOBYTE(v291) = 1;
LABEL_9:
      sub_1000593AC();
      sub_100059400();
      v93 = sub_10001B448();
      v99 = sub_1000599FC(v93, &type metadata for MessagesStepSettingsDisabledView, &type metadata for MessagesStepWeakWiFiSignalView, v94, v95, v96, v97, v98, v251);
      sub_100059998(v99, v100, v101, v102, v103, v104, v105, v106, v262, v276, v285, v291, v297);
      LOWORD(v294) = v107;
      goto LABEL_10;
    case 2:
      type metadata accessor for MessagesFlowViewModel(0);
      v44 = sub_10005907C();
      sub_100005914(v44);
      sub_10001B3E4();
      LOBYTE(v291) = 0;
      sub_1000594E0();
      sub_100059534();
      v45 = sub_10001B448();
      v51 = sub_1000599FC(v45, &type metadata for MessagesStepNetworkFailureView, &type metadata for MessagesStepVPNInstalledView, v46, v47, v48, v49, v50, v251);
      sub_100059998(v51, v52, v53, v54, v55, v56, v57, v58, v257, v276, 2, v291, v297);
      LOBYTE(v294) = v59;
      BYTE1(v294) = 1;
      goto LABEL_10;
    case 3:
      type metadata accessor for MessagesFlowViewModel(0);
      v60 = sub_10005907C();
      sub_100005914(v60);
      sub_10001B3E4();
      LOBYTE(v291) = 1;
      sub_1000594E0();
      sub_100059534();
      v61 = sub_10001B448();
      v67 = sub_1000599FC(v61, &type metadata for MessagesStepNetworkFailureView, &type metadata for MessagesStepVPNInstalledView, v62, v63, v64, v65, v66, v251);
      sub_100059998(v67, v68, v69, v70, v71, v72, v73, v74, v259, v276, 3, v291, v297);
      LOBYTE(v294) = v75;
      BYTE1(v294) = 1;
LABEL_10:
      sub_100003768(&qword_10018C058, &qword_100126FD0);
      sub_100003768(&qword_10018C078, &qword_100126FD8);
      sub_100059320();
      v108 = sub_100059454();
      sub_1000599C0(v108, v109, v110, v111, v112, v113, v114, v115, v258);
      sub_100059A1C();
      sub_1000599B0(v116, v117, v118, v119, v120, v121, v122, v123, v263, v280, v288, v294, v300);
      LOWORD(v293) = v124;
      BYTE2(v293) = 0;
      goto LABEL_15;
    case 4:
      type metadata accessor for MessagesFlowViewModel(0);
      v4 = sub_10005907C();
      sub_100005914(v4);
      sub_10001B3E4();
      LOBYTE(v291) = 0;
      sub_1000596A0();
      sub_1000596F4();
      v5 = sub_10001B448();
      v11 = sub_1000599FC(v5, &type metadata for MessagesStepSoftwareUpdateView, &type metadata for MessagesStepUpdateTimezoneView, v6, v7, v8, v9, v10, v251);
      sub_100059998(v11, v12, v13, v14, v15, v16, v17, v18, v252, v276, 4, v291, v297);
      LOWORD(v292) = v19;
      sub_100003768(&qword_10018C0A8, &qword_100126FE8);
      sub_100003768(&qword_10018C0C8, &qword_100126FF0);
      sub_100059614();
      v20 = sub_100059748();
      sub_1000599C0(v20, v21, v22, v23, v24, v25, v26, v27, v253);
      sub_100059A1C();
      sub_1000599B0(v28, v29, v30, v31, v32, v33, v34, v35, v254, v277, v286, v292, v298);
      LOWORD(v293) = v36;
      BYTE2(v293) = 1;
      goto LABEL_15;
    case 5:
      type metadata accessor for MessagesFlowViewModel(0);
      v125 = sub_10005907C();
      sub_100005914(v125);
      sub_10001B3E4();
      LOBYTE(v291) = 1;
      sub_1000596A0();
      sub_1000596F4();
      v126 = sub_10001B448();
      v132 = sub_1000599FC(v126, &type metadata for MessagesStepSoftwareUpdateView, &type metadata for MessagesStepUpdateTimezoneView, v127, v128, v129, v130, v131, v251);
      sub_100059998(v132, v133, v134, v135, v136, v137, v138, v139, v264, v276, 5, v291, v297);
      LOWORD(v295) = v140;
      goto LABEL_14;
    case 6:
      type metadata accessor for MessagesFlowViewModel(0);
      v141 = sub_10005907C();
      sub_100005914(v141);
      sub_10001B3E4();
      LOBYTE(v291) = 0;
      sub_1000597D4();
      sub_100059828();
      v142 = sub_10001B448();
      v148 = sub_1000599FC(v142, &type metadata for MessagesStepRestartDeviceView, &type metadata for MessagesStepResetMessagesSettingsView, v143, v144, v145, v146, v147, v251);
      sub_100059998(v148, v149, v150, v151, v152, v153, v154, v155, v265, v276, 6, v291, v297);
      LOBYTE(v295) = v156;
      goto LABEL_13;
    case 7:
      type metadata accessor for MessagesFlowViewModel(0);
      v76 = sub_10005907C();
      sub_100005914(v76);
      sub_10001B3E4();
      LOBYTE(v291) = 1;
      sub_1000597D4();
      sub_100059828();
      v77 = sub_10001B448();
      v83 = sub_1000599FC(v77, &type metadata for MessagesStepRestartDeviceView, &type metadata for MessagesStepResetMessagesSettingsView, v78, v79, v80, v81, v82, v251);
      sub_100059998(v83, v84, v85, v86, v87, v88, v89, v90, v260, v276, 7, v291, v297);
      LOBYTE(v295) = v91;
LABEL_13:
      BYTE1(v295) = 1;
LABEL_14:
      sub_100003768(&qword_10018C0A8, &qword_100126FE8);
      sub_100003768(&qword_10018C0C8, &qword_100126FF0);
      sub_100059614();
      v157 = sub_100059748();
      sub_1000599C0(v157, v158, v159, v160, v161, v162, v163, v164, v261);
      sub_100059A1C();
      sub_1000599B0(v165, v166, v167, v168, v169, v170, v171, v172, v266, v281, v289, v295, v301);
      LOWORD(v293) = v173;
      BYTE2(v293) = 1;
LABEL_15:
      sub_100003768(&qword_10018C048, &qword_100126FC8);
      sub_100003768(&qword_10018C098, &qword_100126FE0);
      sub_100059294();
      v174 = sub_100059588();
      v182 = sub_1000599C0(v174, v175, v176, v177, v178, v179, v180, v181, v255);
      sub_1000599B0(v182, v183, v184, v185, v186, v187, v188, v189, v267, v278, v287, v293, v299);
      sub_100003768(&qword_10018C028, &qword_100126FB8);
      sub_100003768(&qword_10018C030, &qword_100126FC0);
      sub_100059208();
      v190 = sub_10005987C();
      sub_1000599C0(v190, v191, v192, v193, v194, v195, v196, v197, v268);

      break;
    case 8:
      sub_100059160();
      v38 = sub_10001B21C();
      v43 = v38;
      v256 = 0;
      v279 = 0;
      LOBYTE(v284) = 0;
      goto LABEL_19;
    case 9:
      v256 = sub_100057FDC(9uLL);
      v279 = v37;
      LOBYTE(v284) = 1;
      sub_100059160();
      v38 = sub_10001B21C();
      v43 = v38;
LABEL_19:
      sub_100026818(v38, &type metadata for MessagesStepResetNetworkSettingsView, &_s18ContactSupportViewVN, v39, v43, v40, v41, v42, v256);
      v222 = _ConditionalContent<>.init(storage:)();
      sub_1000599B0(v222, v223, v224, v225, v226, v227, v228, v229, v272, v279, v284, v291, v297);
      LOBYTE(v296) = 0;
      sub_100003768(&qword_10018C008, &qword_100126FB0);
      sub_1000590D4();
      v230 = sub_1000591B4();
      sub_100026818(v230, v231, &type metadata for MessagesStepCheckAppStatusView, v232, v230, v233, v234, v235, v273);
      v236 = _ConditionalContent<>.init(storage:)();
      sub_100059998(v236, v237, v238, v239, v240, v241, v242, v243, v274, v283, v290, v296, v303);
      sub_100003768(&qword_10018C028, &qword_100126FB8);
      sub_100003768(&qword_10018C030, &qword_100126FC0);
      sub_100059208();
      v244 = sub_10005987C();
      sub_100026818(v244, v245, v246, v247, v244, v248, v249, v250, v275);
      _ConditionalContent<>.init(storage:)();
      break;
    default:
      v199 = *(a1 + 16);
      type metadata accessor for MessagesFlowViewModel(0);
      sub_1000136E0(v199);
      sub_10005907C();
      v269 = Environment.init<A>(_:)();
      v282 = v200 & 1;
      LOBYTE(v291) = 1;
      sub_1000136E0(v199);

      sub_100003768(&qword_10018C008, &qword_100126FB0);
      sub_1000590D4();
      v201 = sub_1000591B4();
      sub_100026818(v201, v202, &type metadata for MessagesStepCheckAppStatusView, v203, v201, v204, v205, v206, v269);
      v207 = _ConditionalContent<>.init(storage:)();
      sub_100059998(v207, v208, v209, v210, v211, v212, v213, v214, v270, v282, v199, v291, v297);
      sub_100003768(&qword_10018C028, &qword_100126FB8);
      sub_100003768(&qword_10018C030, &qword_100126FC0);
      sub_100059208();
      v215 = sub_10005987C();
      sub_100026818(v215, v216, v217, v218, v215, v219, v220, v221, v271);
      _ConditionalContent<>.init(storage:)();

      sub_10003F67C(v199);
      break;
  }

  result = v302;
  *a2 = v302;
  a2[1].n128_u64[0] = v304;
  a2[1].n128_u16[4] = v305;
  a2[1].n128_u8[10] = v306;
  a2[1].n128_u8[11] = v307;
  return result;
}

uint64_t sub_100058B18(uint64_t a1, unint64_t a2)
{
  switch(a1)
  {
    case 0:
      if (a2)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    case 1:
      if (a2 != 1)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    case 2:
      if (a2 != 2)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    case 3:
      if (a2 != 3)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    case 4:
      if (a2 != 4)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    case 5:
      if (a2 != 5)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    case 6:
      if (a2 != 6)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    case 7:
      if (a2 != 7)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    case 8:
      if (a2 == 8)
      {
        goto LABEL_23;
      }

      goto LABEL_24;
    case 9:
      if (a2 != 9)
      {
        goto LABEL_24;
      }

LABEL_23:
      result = 1;
      break;
    default:
      if (a2 < 0xA)
      {
LABEL_24:
        result = 0;
      }

      else
      {
        v2 = *(a1 + 16);
        v3 = *(a2 + 16);
        sub_1000136E0(v3);
        LOBYTE(v2) = sub_100058B18(v2, v3);
        sub_10003F67C(v3);
        result = v2 & 1;
      }

      break;
  }

  return result;
}

void sub_100058C3C(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 0:
      v3 = 0;
      goto LABEL_15;
    case 1:
      v3 = 1;
      goto LABEL_15;
    case 2:
      v3 = 2;
      goto LABEL_15;
    case 3:
      v3 = 3;
      goto LABEL_15;
    case 4:
      v3 = 4;
      goto LABEL_15;
    case 5:
      v3 = 5;
      goto LABEL_15;
    case 6:
      v3 = 6;
      goto LABEL_15;
    case 7:
      v3 = 7;
      goto LABEL_15;
    case 8:
      v3 = 8;
      goto LABEL_15;
    case 9:
      v3 = 9;
LABEL_15:
      Hasher._combine(_:)(v3);
      break;
    default:
      v4 = *(a2 + 16);
      Hasher._combine(_:)(0xAuLL);
      sub_1000136E0(v4);
      sub_100058C3C(a1, v4);

      sub_10003F67C(v4);
      break;
  }
}

Swift::Int sub_100058D40(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_100058C3C(v3, a1);
  return Hasher._finalize()();
}

uint64_t sub_100058D90@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100058208(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int sub_100058DD4(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_100058C3C(v4, v2);
  return Hasher._finalize()();
}

unint64_t sub_100058E28()
{
  result = qword_10018BFD8;
  if (!qword_10018BFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018BFD8);
  }

  return result;
}

unint64_t sub_100058EC4()
{
  result = qword_10018BFE0;
  if (!qword_10018BFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018BFE0);
  }

  return result;
}

unint64_t sub_100058F18()
{
  result = qword_10018BFE8;
  if (!qword_10018BFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018BFE8);
  }

  return result;
}

uint64_t sub_100058F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100058FD4()
{
  result = qword_10018BFF0;
  if (!qword_10018BFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018BFF0);
  }

  return result;
}

unint64_t sub_100059028()
{
  result = qword_10018BFF8;
  if (!qword_10018BFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018BFF8);
  }

  return result;
}

unint64_t sub_10005907C()
{
  result = qword_10018C000;
  if (!qword_10018C000)
  {
    type metadata accessor for MessagesFlowViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C000);
  }

  return result;
}

unint64_t sub_1000590D4()
{
  result = qword_10018C010;
  if (!qword_10018C010)
  {
    sub_100004D48(&qword_10018C008, &qword_100126FB0);
    sub_100059160();
    sub_10001B21C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C010);
  }

  return result;
}

unint64_t sub_100059160()
{
  result = qword_10018C018;
  if (!qword_10018C018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C018);
  }

  return result;
}

unint64_t sub_1000591B4()
{
  result = qword_10018C020;
  if (!qword_10018C020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C020);
  }

  return result;
}

unint64_t sub_100059208()
{
  result = qword_10018C038;
  if (!qword_10018C038)
  {
    sub_100004D48(&qword_10018C028, &qword_100126FB8);
    sub_100059294();
    sub_100059588();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C038);
  }

  return result;
}

unint64_t sub_100059294()
{
  result = qword_10018C040;
  if (!qword_10018C040)
  {
    sub_100004D48(&qword_10018C048, &qword_100126FC8);
    sub_100059320();
    sub_100059454();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C040);
  }

  return result;
}

unint64_t sub_100059320()
{
  result = qword_10018C050;
  if (!qword_10018C050)
  {
    sub_100004D48(&qword_10018C058, &qword_100126FD0);
    sub_1000593AC();
    sub_100059400();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C050);
  }

  return result;
}

unint64_t sub_1000593AC()
{
  result = qword_10018C060;
  if (!qword_10018C060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C060);
  }

  return result;
}

unint64_t sub_100059400()
{
  result = qword_10018C068;
  if (!qword_10018C068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C068);
  }

  return result;
}

unint64_t sub_100059454()
{
  result = qword_10018C070;
  if (!qword_10018C070)
  {
    sub_100004D48(&qword_10018C078, &qword_100126FD8);
    sub_1000594E0();
    sub_100059534();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C070);
  }

  return result;
}

unint64_t sub_1000594E0()
{
  result = qword_10018C080;
  if (!qword_10018C080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C080);
  }

  return result;
}

unint64_t sub_100059534()
{
  result = qword_10018C088;
  if (!qword_10018C088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C088);
  }

  return result;
}

unint64_t sub_100059588()
{
  result = qword_10018C090;
  if (!qword_10018C090)
  {
    sub_100004D48(&qword_10018C098, &qword_100126FE0);
    sub_100059614();
    sub_100059748();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C090);
  }

  return result;
}

unint64_t sub_100059614()
{
  result = qword_10018C0A0;
  if (!qword_10018C0A0)
  {
    sub_100004D48(&qword_10018C0A8, &qword_100126FE8);
    sub_1000596A0();
    sub_1000596F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C0A0);
  }

  return result;
}

unint64_t sub_1000596A0()
{
  result = qword_10018C0B0;
  if (!qword_10018C0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C0B0);
  }

  return result;
}

unint64_t sub_1000596F4()
{
  result = qword_10018C0B8;
  if (!qword_10018C0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C0B8);
  }

  return result;
}

unint64_t sub_100059748()
{
  result = qword_10018C0C0;
  if (!qword_10018C0C0)
  {
    sub_100004D48(&qword_10018C0C8, &qword_100126FF0);
    sub_1000597D4();
    sub_100059828();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C0C0);
  }

  return result;
}

unint64_t sub_1000597D4()
{
  result = qword_10018C0D0;
  if (!qword_10018C0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C0D0);
  }

  return result;
}

unint64_t sub_100059828()
{
  result = qword_10018C0D8;
  if (!qword_10018C0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C0D8);
  }

  return result;
}

unint64_t sub_10005987C()
{
  result = qword_10018C0E0;
  if (!qword_10018C0E0)
  {
    sub_100004D48(&qword_10018C030, &qword_100126FC0);
    sub_1000590D4();
    sub_1000591B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C0E0);
  }

  return result;
}

unint64_t sub_10005990C()
{
  result = qword_10018C0E8;
  if (!qword_10018C0E8)
  {
    sub_100004D48(&qword_10018C0F0, &qword_100126FF8);
    sub_100059208();
    sub_10005987C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C0E8);
  }

  return result;
}

uint64_t sub_1000599C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_1000599FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_100059A60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = qword_100188380;

  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_1001A5980;
  v9 = *algn_1001A5988;
  *(a4 + 40) = &type metadata for AirPodsStepProvider;
  v11 = sub_100004C8C();
  *(a4 + 16) = a3;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 48) = v11;
  *(a4 + 56) = v10;
  *(a4 + 64) = v9;
  *(a4 + 72) = 0;
  *(a4 + 80) = 0;
  *(a4 + 88) = 0;
}

uint64_t sub_100059B50(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    return v10[1];
  }

  return a1;
}

unint64_t sub_100059C90@<X0>(uint64_t a1@<X0>, char a2@<W1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_100058208(a3);
  v10 = v9;
  sub_100059B50(a1, a2 & 1);
  v11 = sub_1000DEC54(a3, 0);

  a4[5] = &type metadata for MessagesStepProvider;
  a4[6] = sub_10001362C();
  a4[2] = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2 & 1;
  *(v12 + 32) = a3;
  *a4 = v8;
  a4[1] = v10;
  a4[8] = 0;
  a4[9] = 0;
  a4[7] = 0;
  a4[10] = sub_100059EA4;
  a4[11] = v12;

  return sub_1000136E0(a3);
}

void *sub_100059D8C@<X0>(uint64_t a1@<X0>, char a2@<W1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2 & 1;
  *(v8 + 32) = a3;

  sub_1000136E0(a3);
  sub_1001019B0(sub_100059F04, v8, v10);
  return memcpy(a4, v10, 0x50uLL);
}

uint64_t sub_100059E38(uint64_t a1, char a2, unint64_t a3)
{
  sub_100059B50(a1, a2 & 1);
  sub_1000DF334(a3);
}

uint64_t sub_100059EBC()
{

  if (*(v0 + 32) >= 0xAuLL)
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_100059F20()
{
  result = qword_10018C0F8;
  if (!qword_10018C0F8)
  {
    sub_100004D48(&qword_10018C100, &unk_1001271A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C0F8);
  }

  return result;
}

uint64_t sub_100059FB4(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    return v10[1];
  }

  return a1;
}

uint64_t sub_10005A0F4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a3;
  v9 = type metadata accessor for ActionInfoType(0);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v30 - v15;
  __chkstk_darwin(v14);
  v18 = &v30 - v17;

  v19 = sub_100059FB4(a1, a2 & 1);
  sub_10008E36C(v19, v20, v21, v22);

  v35 = 0;
  memset(v34, 0, sizeof(v34));
  sub_100003768(&qword_10018C108, &unk_10012AB40);
  v23 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100121620;
  sub_10003F5BC(v18, v24 + v23);
  sub_10000B4E0(v34, v33);
  sub_10000B4E0(v33, v32);
  v31 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  type metadata accessor for ActionInfo(0);
  sub_10003F5BC(v24 + v23, v16);
  swift_setDeallocating();
  sub_10006EB94();
  sub_10003F5BC(v16, v13);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  sub_1000ED69C(v13, 1, sub_10005A438, v25);
  sub_10003F620(v16);
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v26 = v31;
  sub_10000B4E0(v32, a5 + 56);
  type metadata accessor for FlowViewDataProvider(0);
  sub_10000B550();
  v27 = Environment.init<A>(_:)();
  LOBYTE(v24) = v28;
  sub_10001035C(v32);
  sub_10001035C(v33);
  sub_10001035C(v34);
  result = sub_10003F620(v18);
  *a5 = v27;
  *(a5 + 8) = v24 & 1;
  *(a5 + 16) = v30;
  *(a5 + 24) = a4;
  *(a5 + 40) = 0;
  *(a5 + 48) = 0;
  *(a5 + 32) = v26;
  *(a5 + 96) = 0;
  *(a5 + 104) = 0;
  return result;
}

uint64_t sub_10005A3F8()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10005A444()
{
  result = qword_10018C110;
  if (!qword_10018C110)
  {
    sub_100004D48(&qword_10018C118, &qword_10012AB50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C110);
  }

  return result;
}

uint64_t sub_10005A4A8()
{
  result = Color.init(_:bundle:)();
  qword_1001A5758 = result;
  return result;
}

uint64_t sub_10005A4EC(int a1, double a2)
{
  v2 = type metadata accessor for Color.RGBColorSpace();
  __chkstk_darwin(v2);
  (*(v4 + 104))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Color.RGBColorSpace.sRGB(_:));
  return Color.init(_:red:green:blue:opacity:)();
}

void sub_10005A5EC(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v49 = type metadata accessor for FlowStepContentOption(0);
  sub_10000AF7C();
  __chkstk_darwin(v8);
  v50 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100003768(&qword_10018AB50, &qword_100125290);
  sub_10000ED84(v10);
  sub_10000ED78();
  __chkstk_darwin(v11);
  v13 = &v47 - v12;
  v14 = type metadata accessor for ImageResource();
  sub_100008780();
  v16 = v15;
  v18 = __chkstk_darwin(v17);
  *&v48 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v47 - v20;
  *a4 = swift_getKeyPath();
  *(a4 + 8) = 0;
  v22 = type metadata accessor for FlowStepMainContentView(0);
  v23 = v22[5];
  *(a4 + v23) = swift_getKeyPath();
  sub_100003768(&qword_10018C120, &qword_100127308);
  swift_storeEnumTagMultiPayload();
  v24 = (a4 + v22[12]);
  v52 = sub_10005AC64();
  sub_100025778(0, &qword_10018B488, UIFont_ptr);
  State.init(wrappedValue:)();
  v25 = v54;
  *v24 = v53;
  v24[1] = v25;
  v26 = (a4 + v22[13]);
  v52 = 0;
  State.init(wrappedValue:)();
  v27 = v54;
  *v26 = v53;
  v26[1] = v27;
  AccessibilityFocusState.init<>()();
  *(a4 + v22[6]) = a1;
  v28 = (a4 + v22[7]);
  *v28 = a2;
  v28[1] = a3;
  v29 = a1;

  v51 = a2;
  sub_1000FE780();
  v30 = sub_10000E5F0(v13, 1, v14);
  if (v30 == 1)
  {
    sub_10000ABCC(v13, &qword_10018AB50, &qword_100125290);
    v31 = 0uLL;
  }

  else
  {
    (*(v16 + 32))(v21, v13, v14);
    sub_100025778(0, &qword_10018C128, UIImage_ptr);
    (*(v16 + 16))(v48, v21, v14);
    v32 = UIImage.init(resource:)();
    [v32 size];
    v47 = v33;
    v48 = v34;

    (*(v16 + 8))(v21, v14);
    *&v31 = v47;
    *(&v31 + 1) = v48;
  }

  v35 = a4 + v22[8];
  *v35 = v31;
  *(v35 + 16) = v30 == 1;
  *(a4 + v22[9]) = v30 != 1;
  v36 = sub_10005CD84(v29, &selRef_title);
  v38 = v37;
  v39 = sub_10005CDE0(v29, &selRef_titleContent);
  LOBYTE(v36) = sub_10005AD3C(v36, v38, v39);

  *(a4 + v22[10]) = v36 & 1;
  v40 = v50;
  swift_storeEnumTagMultiPayload();
  sub_1000FF9FC();
  LOBYTE(v36) = v41;

  sub_10005DF00(v40, type metadata accessor for FlowStepContentOption);
  if (v36)
  {

    v42 = 0;
  }

  else
  {
    v43 = sub_10005CD84(v29, &selRef_bodyText);
    v45 = v44;
    v46 = sub_10005CDE0(v29, &selRef_bodyContent);

    v42 = sub_10005AD3C(v43, v45, v46);
  }

  *(a4 + v22[11]) = v42;
}

uint64_t sub_10005AA7C@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  sub_100008780();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003768(&qword_10018C120, &qword_100127308);
  sub_10000AF7C();
  sub_10000ED78();
  __chkstk_darwin(v9);
  v11 = &v16 - v10;
  v12 = type metadata accessor for FlowStepMainContentView(0);
  sub_10000AB80(v1 + *(v12 + 20), v11, &qword_10018C120, &qword_100127308);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ContentSizeCategory();
    sub_10000AF7C();
    return (*(v13 + 32))(a1, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v3);
  }
}

id sub_10005AC64()
{
  v0 = objc_opt_self();
  v1 = [v0 preferredFontForTextStyle:UIFontTextStyleTitle3];
  v2 = [v1 fontDescriptor];
  v3 = [v2 fontDescriptorWithSymbolicTraits:2];

  if (!v3)
  {
    return v1;
  }

  [v1 pointSize];
  v4 = [v0 fontWithDescriptor:v3 size:?];

  return v4;
}

BOOL sub_10005AD3C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v4 = v3 != 0;
  if (!a2)
  {
    v4 = 0;
  }

  return a3 || v4;
}

uint64_t sub_10005AD6C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100003768(&qword_10018C230, &qword_100127398);
  sub_10000AF7C();
  sub_10000ED78();
  __chkstk_darwin(v4);
  v6 = v21 - v5;
  v7 = sub_100003768(&qword_10018C238, &qword_1001273A0);
  sub_10000AF7C();
  sub_10000ED78();
  __chkstk_darwin(v8);
  v10 = v21 - v9;
  v11 = sub_100003768(&qword_10018C240, &qword_1001273A8);
  sub_100008780();
  v13 = v12;
  sub_10000ED78();
  __chkstk_darwin(v14);
  v16 = v21 - v15;
  v17 = *(v1 + *(type metadata accessor for FlowStepMainContentView(0) + 36));
  sub_10005AFBC(v10);
  if (v17 == 1)
  {
    static Axis.Set.horizontal.getter();
    static Alignment.center.getter();
    v21[0] = v3;
    v21[1] = a1;
    v18 = sub_10005D3EC();
    View.containerRelativeFrame(_:alignment:)();
    sub_10005D720(v10);
    (*(v13 + 16))(v6, v16, v11);
    swift_storeEnumTagMultiPayload();
    v22 = v7;
    v23 = v18;
    sub_10005E27C();
    sub_10005E2A8();
    return (*(v13 + 8))(v16, v11);
  }

  else
  {
    sub_10005D388(v10, v6);
    swift_storeEnumTagMultiPayload();
    v20 = sub_10005D3EC();
    v22 = v7;
    v23 = v20;
    sub_10005E27C();
    sub_10005E2A8();
    return sub_10005D720(v10);
  }
}

uint64_t sub_10005AFBC@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v2 = type metadata accessor for FlowStepMainContentView(0);
  v43 = *(v2 - 8);
  v49 = *(v43 + 64);
  __chkstk_darwin(v2);
  v42 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ContentSizeCategory();
  v5 = *(v4 - 8);
  v44 = v4;
  v45 = v5;
  __chkstk_darwin(v4);
  v41 = (&v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = type metadata accessor for AccessibilityChildBehavior();
  v7 = *(v36 - 8);
  __chkstk_darwin(v36);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100003768(&qword_10018C260, &qword_1001273C0);
  __chkstk_darwin(v10);
  v12 = &v36 - v11;
  v13 = sub_100003768(&qword_10018C258, &qword_1001273B8);
  v14 = *(v13 - 8);
  v37 = v13;
  v38 = v14;
  __chkstk_darwin(v13);
  v16 = &v36 - v15;
  v17 = sub_100003768(&qword_10018C250, &qword_1001273B0);
  v18 = *(v17 - 8);
  v39 = v17;
  v40 = v18;
  __chkstk_darwin(v17);
  v48 = &v36 - v19;
  v50 = v1;
  sub_100003768(&qword_10018C288, &qword_1001273D0);
  sub_10000AAEC(&qword_10018C280, &qword_10018C288, &qword_1001273D0, &protocol conformance descriptor for VStack<A>);
  Section<>.init(content:)();
  static AccessibilityChildBehavior.combine.getter();
  v20 = sub_10005D584();
  View.accessibilityElement(children:)();
  (*(v7 + 8))(v9, v36);
  sub_10000ABCC(v12, &qword_10018C260, &qword_1001273C0);
  sub_100003768(&qword_10018C140, &unk_100127320);
  v21 = v47;
  AccessibilityFocusState.projectedValue.getter();
  v51 = v10;
  v52 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = v37;
  View.accessibilityFocused(_:)();

  (*(v38 + 8))(v16, v23);
  v24 = v41;
  sub_10005AA7C(v41);
  v25 = v21;
  v26 = v42;
  sub_10005D788(v25, v42);
  v27 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v28 = swift_allocObject();
  sub_10003CF1C(v26, v28 + v27);
  v51 = v23;
  v52 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_10005DEB8(&qword_10018C298, &type metadata accessor for ContentSizeCategory, &protocol conformance descriptor for ContentSizeCategory);
  v29 = v46;
  v30 = v39;
  v31 = v44;
  v32 = v48;
  View.onChange<A>(of:initial:_:)();

  (*(v45 + 8))(v24, v31);
  (*(v40 + 8))(v32, v30);
  sub_10005D788(v47, v26);
  v33 = swift_allocObject();
  sub_10003CF1C(v26, v33 + v27);
  result = sub_100003768(&qword_10018C238, &qword_1001273A0);
  v35 = (v29 + *(result + 36));
  *v35 = sub_10005D86C;
  v35[1] = v33;
  v35[2] = 0;
  v35[3] = 0;
  return result;
}

uint64_t sub_10005B5D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0x4028000000000000;
  *(a2 + 16) = 0;
  v4 = sub_100003768(&qword_10018C2A8, &qword_1001273E0);
  return sub_10005B630(a1, a2 + *(v4 + 44));
}

uint64_t sub_10005B630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v65 = sub_100003768(&qword_10018C2B0, &qword_1001273E8);
  __chkstk_darwin(v65);
  v64 = &v60 - v3;
  v4 = sub_100003768(&qword_10018C2B8, &qword_1001273F0);
  v5 = __chkstk_darwin(v4 - 8);
  v70 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v74 = &v60 - v7;
  v8 = sub_100003768(&qword_10018AB50, &qword_100125290);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v60 - v12;
  v14 = sub_100003768(&qword_10018C2C0, &qword_1001273F8);
  v15 = __chkstk_darwin(v14 - 8);
  v63 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v60 - v17;
  v62 = sub_100003768(&qword_10018C2C8, &qword_100127400);
  v19 = __chkstk_darwin(v62);
  v68 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v69 = &v60 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v60 - v24;
  v26 = __chkstk_darwin(v23);
  v66 = &v60 - v27;
  v28 = __chkstk_darwin(v26);
  v30 = &v60 - v29;
  __chkstk_darwin(v28);
  v73 = &v60 - v31;
  sub_10005BC90(v18);
  v32 = static Edge.Set.horizontal.getter();
  type metadata accessor for FlowStepMainContentView(0);
  *&v67 = a1;
  sub_1000FE780();
  v33 = type metadata accessor for ImageResource();
  v34 = sub_10000E5F0(v13, 1, v33);
  sub_10000ABCC(v13, &qword_10018AB50, &qword_100125290);
  v35 = 0uLL;
  v72 = 0u;
  v36 = 0uLL;
  if (v34 == 1)
  {
    EdgeInsets.init(_all:)();
    *(&v36 + 1) = v37;
    *(&v35 + 1) = v38;
  }

  v60 = v36;
  v61 = v35;
  sub_10000AB34(v18, v30, &qword_10018C2C0, &qword_1001273F8);
  v39 = v62;
  v40 = &v30[*(v62 + 36)];
  *v40 = v32;
  v41 = v61;
  *(v40 + 24) = v60;
  *(v40 + 8) = v41;
  v40[40] = v34 != 1;
  sub_10000AB34(v30, v73, &qword_10018C2C8, &qword_100127400);
  v42 = v64;
  sub_10005C000(v64);
  sub_10005D8C8();
  View.accessibilityHidden(_:)();
  sub_10000ABCC(v42, &qword_10018C2B0, &qword_1001273E8);
  v43 = v63;
  sub_10005C544(v63);
  v44 = static Edge.Set.horizontal.getter();
  sub_1000FE780();
  v45 = sub_10000E5F0(v11, 1, v33);
  sub_10000ABCC(v11, &qword_10018AB50, &qword_100125290);
  v46 = 0uLL;
  if (v45 == 1)
  {
    EdgeInsets.init(_all:)();
    *(&v46 + 1) = v47;
    *(&v49 + 1) = v48;
    v72 = v49;
  }

  v67 = v46;
  sub_10000AB34(v43, v25, &qword_10018C2C0, &qword_1001273F8);
  v50 = &v25[*(v39 + 36)];
  *v50 = v44;
  *(v50 + 24) = v67;
  *(v50 + 8) = v72;
  v50[40] = v45 != 1;
  v51 = v66;
  sub_10000AB34(v25, v66, &qword_10018C2C8, &qword_100127400);
  v52 = v73;
  v53 = v69;
  sub_10000AB80(v73, v69, &qword_10018C2C8, &qword_100127400);
  v54 = v74;
  v55 = v70;
  sub_10000AB80(v74, v70, &qword_10018C2B8, &qword_1001273F0);
  v56 = v68;
  sub_10000AB80(v51, v68, &qword_10018C2C8, &qword_100127400);
  v57 = v71;
  sub_10000AB80(v53, v71, &qword_10018C2C8, &qword_100127400);
  v58 = sub_100003768(&qword_10018C378, &qword_100127468);
  sub_10000AB80(v55, v57 + *(v58 + 48), &qword_10018C2B8, &qword_1001273F0);
  sub_10000AB80(v56, v57 + *(v58 + 64), &qword_10018C2C8, &qword_100127400);
  sub_10000ABCC(v51, &qword_10018C2C8, &qword_100127400);
  sub_10000ABCC(v54, &qword_10018C2B8, &qword_1001273F0);
  sub_10000ABCC(v52, &qword_10018C2C8, &qword_100127400);
  sub_10000ABCC(v56, &qword_10018C2C8, &qword_100127400);
  sub_10000ABCC(v55, &qword_10018C2B8, &qword_1001273F0);
  return sub_10000ABCC(v53, &qword_10018C2C8, &qword_100127400);
}

uint64_t sub_10005BC90@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FlowStepTextView(0);
  __chkstk_darwin(v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003768(&qword_10018C380, &unk_100127470);
  __chkstk_darwin(v6);
  v8 = &v32 - v7;
  v9 = type metadata accessor for FlowStepMainContentView(0);
  if (*(v1 + *(v9 + 40)) == 1)
  {
    v10 = v9;
    v11 = *(v1 + *(v9 + 24));
    v12 = [v11 title];
    if (v12)
    {
      v13 = v12;
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v15;
      v33 = v14;
    }

    else
    {
      v32 = 0;
      v33 = 0;
    }

    v17 = [v11 titleContent];
    if (v17)
    {
      v18 = v17;
      sub_100003768(&qword_10018C130, &unk_100127310);
      v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v19 = 0;
    }

    v20 = (v1 + *(v10 + 48));
    v22 = *v20;
    v21 = v20[1];
    *&v36 = v22;
    *(&v36 + 1) = v21;
    sub_100003768(&qword_10018C2A0, &qword_1001273D8);
    State.wrappedValue.getter();
    v23 = v34;
    type metadata accessor for FlowViewDataProvider(0);
    sub_10005DEB8(&qword_1001886D0, type metadata accessor for FlowViewDataProvider, &unk_100129E68);
    v24 = Environment.init<A>(_:)();
    v26 = v25;
    v27 = *(v3 + 40);
    v28 = type metadata accessor for ConstellationContentParagraphStyle();
    sub_100003CE8(&v5[v27], 1, 1, v28);
    *v5 = v24;
    v5[8] = v26 & 1;
    type metadata accessor for CGSize(0);
    v34 = 0;
    v35 = 0;
    State.init(wrappedValue:)();
    v29 = v37;
    *(v5 + 1) = v36;
    v30 = v32;
    v31 = v33;
    *(v5 + 4) = v29;
    *(v5 + 5) = v31;
    *(v5 + 6) = v30;
    *(v5 + 7) = v19;
    *(v5 + 8) = v23;
    *(v5 + 9) = 0;
    static String.stepContentTitle.getter();
    sub_10005DEB8(&qword_10018C388, type metadata accessor for FlowStepTextView, &unk_100125CF0);
    View.accessibilityIdentifier(_:)();

    sub_10005DF00(v5, type metadata accessor for FlowStepTextView);
    sub_10000AB34(v8, a1, &qword_10018C380, &unk_100127470);
    return sub_100003CE8(a1, 0, 1, v6);
  }

  else
  {

    return sub_100003CE8(a1, 1, 1, v6);
  }
}

uint64_t sub_10005C000@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FlowStepMainContentView(0);
  v58 = *(v4 - 8);
  v5 = *(v58 + 64);
  __chkstk_darwin(v4);
  v59 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003768(&qword_10018C2E0, &qword_100127408);
  __chkstk_darwin(v6);
  v8 = &v55 - v7;
  v9 = sub_100003768(&qword_10018AB50, &qword_100125290);
  __chkstk_darwin(v9 - 8);
  v11 = &v55 - v10;
  v12 = type metadata accessor for ImageResource();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000FE780();
  if (sub_10000E5F0(v11, 1, v12) == 1)
  {
    sub_10000ABCC(v11, &qword_10018AB50, &qword_100125290);
    v16 = 1;
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    sub_10005C9FC(v15);
    v17 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    v18 = Color.init(_:)();
    v19 = static Edge.Set.all.getter();
    v57 = a1;
    v20 = v19;
    v21 = &v8[*(sub_100003768(&qword_10018C330, &qword_100127430) + 36)];
    *v21 = v18;
    v21[8] = v20;
    v22 = &v8[*(sub_100003768(&qword_10018C320, &qword_100127428) + 36)];
    v23 = type metadata accessor for RoundedRectangle();
    v56 = v13;
    v24 = v6;
    v25 = *(v23 + 20);
    v26 = enum case for RoundedCornerStyle.continuous(_:);
    v27 = type metadata accessor for RoundedCornerStyle();
    v28 = &v22[v25];
    v6 = v24;
    (*(*(v27 - 8) + 104))(v28, v26, v27);
    __asm { FMOV            V0.2D, #26.0 }

    *v22 = _Q0;
    *&v22[*(sub_100003768(&qword_10018C370, &qword_100127460) + 36)] = 256;
    v34 = (v2 + *(v4 + 52));
    v35 = *v34;
    v36 = v34[1];
    *&v61 = v35;
    *(&v61 + 1) = v36;
    sub_100003768(&qword_100189560, &qword_1001251F0);
    State.wrappedValue.getter();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v37 = &v8[*(sub_100003768(&qword_10018C310, &qword_100127420) + 36)];
    v38 = v62;
    *v37 = v61;
    *(v37 + 1) = v38;
    *(v37 + 2) = v63;
    v39 = v2;
    v40 = v59;
    sub_10005D788(v39, v59);
    v41 = (*(v58 + 80) + 16) & ~*(v58 + 80);
    v42 = swift_allocObject();
    sub_10003CF1C(v40, v42 + v41);
    v43 = &v8[*(sub_100003768(&qword_10018C300, &qword_100127418) + 36)];
    *v43 = sub_100015898;
    v43[1] = 0;
    v43[2] = sub_10005E138;
    v43[3] = v42;
    v60 = static Color.clear.getter();
    v44 = AnyView.init<A>(_:)();
    *&v8[*(sub_100003768(&qword_10018C2F0, &qword_100127410) + 36)] = v44;
    LOBYTE(v44) = static Edge.Set.vertical.getter();
    EdgeInsets.init(_all:)();
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v52 = v51;
    (*(v56 + 8))(v15, v12);
    v53 = &v8[*(v24 + 36)];
    *v53 = v44;
    a1 = v57;
    *(v53 + 1) = v46;
    *(v53 + 2) = v48;
    *(v53 + 3) = v50;
    *(v53 + 4) = v52;
    v53[40] = 0;
    sub_10000AB34(v8, a1, &qword_10018C2E0, &qword_100127408);
    v16 = 0;
  }

  return sub_100003CE8(a1, v16, 1, v6);
}

uint64_t sub_10005C544@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FlowStepTextView(0);
  __chkstk_darwin(v3);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003768(&qword_10018C380, &unk_100127470);
  __chkstk_darwin(v6);
  v8 = &v33 - v7;
  v9 = type metadata accessor for FlowStepContentOption(0);
  __chkstk_darwin(v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FlowStepMainContentView(0);
  if (*(v1 + *(v12 + 44)) == 1)
  {
    v13 = v12;
    v34 = a1;
    swift_storeEnumTagMultiPayload();
    sub_1000FF9FC();
    v15 = v14;
    sub_10005DF00(v11, type metadata accessor for FlowStepContentOption);
    if (v15)
    {
      v16 = 1;
      a1 = v34;
    }

    else
    {
      v17 = *(v1 + *(v13 + 24));
      v18 = [v17 bodyText];
      if (v18)
      {
        v19 = v18;
        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;
      }

      else
      {
        v33 = 0;
        v21 = 0;
      }

      v22 = [v17 bodyContent];
      if (v22)
      {
        v23 = v22;
        sub_100003768(&qword_10018C130, &unk_100127310);
        v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v24 = 0;
      }

      v25 = static Color.secondary.getter();
      sub_1000FEA14();
      type metadata accessor for FlowViewDataProvider(0);
      sub_10005DEB8(&qword_1001886D0, type metadata accessor for FlowViewDataProvider, &unk_100129E68);
      v26 = Environment.init<A>(_:)();
      v28 = v27;
      v29 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
      *v5 = v26;
      v5[8] = v28 & 1;
      type metadata accessor for CGSize(0);
      v35 = 0;
      v36 = 0;
      State.init(wrappedValue:)();
      v30 = v38;
      *(v5 + 1) = v37;
      v31 = v33;
      *(v5 + 4) = v30;
      *(v5 + 5) = v31;
      *(v5 + 6) = v21;
      *(v5 + 7) = v24;
      *(v5 + 8) = v29;
      *(v5 + 9) = v25;
      static String.stepContentDescription.getter();
      sub_10005DEB8(&qword_10018C388, type metadata accessor for FlowStepTextView, &unk_100125CF0);
      View.accessibilityIdentifier(_:)();

      sub_10005DF00(v5, type metadata accessor for FlowStepTextView);
      a1 = v34;
      sub_10000AB34(v8, v34, &qword_10018C380, &unk_100127470);
      v16 = 0;
    }
  }

  else
  {
    v16 = 1;
  }

  return sub_100003CE8(a1, v16, 1, v6);
}

uint64_t sub_10005C92C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10005AC64();
  type metadata accessor for FlowStepMainContentView(0);
  sub_100003768(&qword_10018C2A0, &qword_1001273D8);
  return State.wrappedValue.setter();
}

uint64_t sub_10005C99C()
{
  type metadata accessor for FlowStepMainContentView(0);
  sub_100003768(&qword_10018C140, &unk_100127320);
  return AccessibilityFocusState.wrappedValue.setter();
}

uint64_t sub_10005C9FC(uint64_t a1)
{
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ImageResource();
  __chkstk_darwin(v6);
  (*(v8 + 16))(&v12[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  Image.init(_:)();
  (*(v3 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v2);
  v9 = Image.resizable(capInsets:resizingMode:)();

  (*(v3 + 8))(v5, v2);
  v14 = 1;
  v13 = 0;
  v11 = v9;
  LOWORD(v12[0]) = 257;
  memset(v12 + 8, 0, 33);
  static String.stepContentImage.getter();
  sub_100003768(&qword_10018C350, &unk_100127440);
  sub_10005DE00();
  View.accessibilityIdentifier(_:)();

  v15[0] = v11;
  v15[1] = v12[0];
  v16[0] = v12[1];
  *(v16 + 9) = *(&v12[1] + 9);
  return sub_10000ABCC(v15, &qword_10018C350, &unk_100127440);
}

uint64_t sub_10005CC60(double *a1, uint64_t a2)
{
  result = type metadata accessor for FlowStepMainContentView(0);
  if ((*(a2 + *(result + 32) + 16) & 1) == 0)
  {
    sub_100003768(&qword_100189560, &qword_1001251F0);
    return State.wrappedValue.setter();
  }

  return result;
}

uint64_t type metadata accessor for FlowStepMainContentView(uint64_t a1)
{
  result = qword_10018C1A0;
  if (!qword_10018C1A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005CD84(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return sub_10000AFAC();
}

uint64_t sub_10005CDE0(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  sub_100003768(&qword_10018C130, &unk_100127310);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t sub_10005CE5C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100003768(&qword_10018C138, &unk_10012BE90);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a3[5];
LABEL_8:

    return sub_10000E5F0(a1 + v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = sub_100003768(&qword_10018C140, &unk_100127320);
    v8 = a3[14];
    goto LABEL_8;
  }

  v9 = *(a1 + a3[6]);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_10005CF58(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_100003768(&qword_10018C138, &unk_10012BE90);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a4[5];
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[6]) = (a2 - 1);
      return result;
    }

    v9 = sub_100003768(&qword_10018C140, &unk_100127320);
    v10 = a4[14];
  }

  return sub_100003CE8(a1 + v10, a2, a2, v9);
}

void sub_10005D03C(uint64_t a1)
{
  sub_10005D2C0(319, &qword_10018C1B0, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_10005D1F4(319, &qword_10018C1B8, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_100025778(319, &qword_10018C1C0, TPSContent_ptr);
      if (v3 <= 0x3F)
      {
        sub_10005D1F4(319, &qword_10018C1C8, type metadata accessor for CGSize, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_10005D258(319);
          if (v5 <= 0x3F)
          {
            sub_10005D2C0(319, &qword_100189478, &type metadata accessor for State);
            if (v6 <= 0x3F)
            {
              sub_10005D314();
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

void sub_10005D1F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_10005D258(uint64_t a1)
{
  if (!qword_10018C1D0)
  {
    sub_100025778(255, &qword_10018B488, UIFont_ptr);
    v1 = type metadata accessor for State();
    if (!v2)
    {
      atomic_store(v1, &qword_10018C1D0);
    }
  }
}

void sub_10005D2C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for CGFloat);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10005D314()
{
  if (!qword_10018C1D8)
  {
    v0 = type metadata accessor for AccessibilityFocusState();
    if (!v1)
    {
      atomic_store(v0, &qword_10018C1D8);
    }
  }
}

uint64_t sub_10005D388(uint64_t a1, uint64_t a2)
{
  sub_100003768(&qword_10018C238, &qword_1001273A0);
  sub_10000AF7C();
  v3 = sub_10000AFAC();
  v4(v3);
  return a2;
}

unint64_t sub_10005D3EC()
{
  result = qword_10018C248;
  if (!qword_10018C248)
  {
    sub_100004D48(&qword_10018C238, &qword_1001273A0);
    sub_100004D48(&qword_10018C250, &qword_1001273B0);
    type metadata accessor for ContentSizeCategory();
    sub_100004D48(&qword_10018C258, &qword_1001273B8);
    sub_100004D48(&qword_10018C260, &qword_1001273C0);
    sub_10005D584();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10005DEB8(&qword_10018C298, &type metadata accessor for ContentSizeCategory, &protocol conformance descriptor for ContentSizeCategory);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C248);
  }

  return result;
}

unint64_t sub_10005D584()
{
  result = qword_10018C268;
  if (!qword_10018C268)
  {
    sub_100004D48(&qword_10018C260, &qword_1001273C0);
    sub_10005D610();
    sub_10005D6CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C268);
  }

  return result;
}

unint64_t sub_10005D610()
{
  result = qword_10018C270;
  if (!qword_10018C270)
  {
    sub_100004D48(&qword_10018C278, &qword_1001273C8);
    sub_10000AAEC(&qword_10018C280, &qword_10018C288, &qword_1001273D0, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C270);
  }

  return result;
}

unint64_t sub_10005D6CC()
{
  result = qword_10018C290;
  if (!qword_10018C290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C290);
  }

  return result;
}

uint64_t sub_10005D720(uint64_t a1)
{
  sub_100003768(&qword_10018C238, &qword_1001273A0);
  sub_10000AF7C();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_10005D788(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowStepMainContentView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005D7F0(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for FlowStepMainContentView(0);
  sub_10000ED84(v5);
  v7 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return sub_10005C92C(a1, a2, v7);
}

uint64_t sub_10005D86C()
{
  v0 = type metadata accessor for FlowStepMainContentView(0);
  sub_10000ED84(v0);

  return sub_10005C99C();
}

unint64_t sub_10005D8C8()
{
  result = qword_10018C2D0;
  if (!qword_10018C2D0)
  {
    sub_100004D48(&qword_10018C2B0, &qword_1001273E8);
    sub_10005D94C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C2D0);
  }

  return result;
}

unint64_t sub_10005D94C()
{
  result = qword_10018C2D8;
  if (!qword_10018C2D8)
  {
    sub_100004D48(&qword_10018C2E0, &qword_100127408);
    sub_10005D9D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C2D8);
  }

  return result;
}

unint64_t sub_10005D9D8()
{
  result = qword_10018C2E8;
  if (!qword_10018C2E8)
  {
    sub_100004D48(&qword_10018C2F0, &qword_100127410);
    sub_10005DA90();
    sub_10000AAEC(&qword_10018ABE0, &qword_10018ABE8, &qword_1001252B0, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C2E8);
  }

  return result;
}

unint64_t sub_10005DA90()
{
  result = qword_10018C2F8;
  if (!qword_10018C2F8)
  {
    sub_100004D48(&qword_10018C300, &qword_100127418);
    sub_10005DB48();
    sub_10000AAEC(&qword_100189548, &qword_100189550, &unk_100122B50, &protocol conformance descriptor for _GeometryActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C2F8);
  }

  return result;
}

unint64_t sub_10005DB48()
{
  result = qword_10018C308;
  if (!qword_10018C308)
  {
    sub_100004D48(&qword_10018C310, &qword_100127420);
    sub_10005DBD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C308);
  }

  return result;
}

unint64_t sub_10005DBD4()
{
  result = qword_10018C318;
  if (!qword_10018C318)
  {
    sub_100004D48(&qword_10018C320, &qword_100127428);
    sub_10005DC8C();
    sub_10000AAEC(&qword_10018C368, &qword_10018C370, &qword_100127460, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C318);
  }

  return result;
}

unint64_t sub_10005DC8C()
{
  result = qword_10018C328;
  if (!qword_10018C328)
  {
    sub_100004D48(&qword_10018C330, &qword_100127430);
    sub_10005DD44();
    sub_10000AAEC(&qword_10018C358, &qword_10018C360, &unk_10012F720, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C328);
  }

  return result;
}

unint64_t sub_10005DD44()
{
  result = qword_10018C338;
  if (!qword_10018C338)
  {
    sub_100004D48(&qword_10018C340, &qword_100127438);
    sub_10005DE00();
    sub_10005DEB8(&qword_1001887F8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C338);
  }

  return result;
}

unint64_t sub_10005DE00()
{
  result = qword_10018C348;
  if (!qword_10018C348)
  {
    sub_100004D48(&qword_10018C350, &unk_100127440);
    sub_100010DA8();
    sub_10000AAEC(&qword_100188910, &qword_100188918, &unk_100127450, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C348);
  }

  return result;
}

uint64_t sub_10005DEB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10005DF00(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_10000AF7C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10005DF58()
{
  v1 = type metadata accessor for FlowStepMainContentView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_100010CC8(*(v0 + v4), *(v0 + v4 + 8));
  v6 = v1[5];
  sub_100003768(&qword_10018C120, &qword_100127308);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ContentSizeCategory();
    sub_10000AF7C();
    (*(v7 + 8))(v5 + v6);
  }

  else
  {
  }

  v8 = v5 + v1[14];
  v9 = type metadata accessor for AccessibilityTechnologies();
  if (!sub_10000E5F0(v8, 1, v9))
  {
    (*(*(v9 - 8) + 8))(v8, v9);
  }

  sub_100003768(&qword_10018C140, &unk_100127320);

  return _swift_deallocObject(v0, v4 + v3, v2 | 7);
}

uint64_t sub_10005E138(double *a1)
{
  v3 = type metadata accessor for FlowStepMainContentView(0);
  sub_10000ED84(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_10005CC60(a1, v5);
}

unint64_t sub_10005E1A8()
{
  result = qword_10018C390;
  if (!qword_10018C390)
  {
    sub_100004D48(&qword_10018C398, &unk_100127480);
    sub_100004D48(&qword_10018C238, &qword_1001273A0);
    sub_10005D3EC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C390);
  }

  return result;
}

uint64_t sub_10005E27C()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10005E2A8()
{

  return _ConditionalContent<>.init(storage:)();
}

double sub_10005E2F4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v26 = a1;
  v27 = a2;
  v6 = type metadata accessor for ActionInfoType(0);
  sub_10000AF7C();
  v8 = __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v26 - v11;
  v13 = sub_100003768(&qword_10018ADD0, &unk_1001256A0);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v26 - v18;
  __chkstk_darwin(v17);
  v21 = &v26 - v20;
  *(&v26 - v20) = 1;
  swift_storeEnumTagMultiPayload();
  sub_100003CE8(v21, 0, 1, v6);
  v31 = &type metadata for MailStepProvider;
  v32 = sub_1000257D8();
  v30[0] = a3;
  sub_10000EC9C(v21, v19, &qword_10018ADD0, &unk_1001256A0);
  sub_10000EC9C(v30, v28, &qword_100189310, &qword_1001221A0);
  sub_10000EC9C(v19, v16, &qword_10018ADD0, &unk_1001256A0);
  if (sub_10000E5F0(v16, 1, v6) == 1)
  {
    v22 = v27;

    sub_10000ABCC(v19, &qword_10018ADD0, &unk_1001256A0);
    sub_10000ABCC(v21, &qword_10018ADD0, &unk_1001256A0);
    sub_10000ABCC(v30, &qword_100189310, &qword_1001221A0);
    v23 = 0;
  }

  else
  {
    sub_10003F558(v16, v12);
    type metadata accessor for ActionInfo(0);
    sub_10003F5BC(v12, v10);
    v22 = v27;

    v23 = sub_1000ED69C(v10, 1, 0, 0);
    sub_10003F620(v12);
    sub_10000ABCC(v19, &qword_10018ADD0, &unk_1001256A0);
    sub_10000ABCC(v21, &qword_10018ADD0, &unk_1001256A0);
    sub_10000ABCC(v30, &qword_100189310, &qword_1001221A0);
  }

  *a4 = v26;
  *(a4 + 8) = v22;
  *(a4 + 64) = 0;
  *(a4 + 72) = v23;
  result = *v28;
  v25 = v28[1];
  *(a4 + 16) = v28[0];
  *(a4 + 32) = v25;
  *(a4 + 48) = v29;
  *(a4 + 56) = 0;
  *(a4 + 80) = 0;
  *(a4 + 88) = 0;
  return result;
}

double sub_10005E628@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v32 = a1;
  v7 = type metadata accessor for ActionInfoType(0);
  sub_10000AF7C();
  v9 = __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v30 - v12;
  v14 = sub_100003768(&qword_10018ADD0, &unk_1001256A0);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v30 - v19;
  __chkstk_darwin(v18);
  v22 = &v30 - v21;
  v23 = qword_100188380;
  v33 = a2;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = *algn_1001A5988;
  v31 = qword_1001A5980;
  *v22 = 0;
  swift_storeEnumTagMultiPayload();
  sub_100003CE8(v22, 0, 1, v7);
  v37 = &type metadata for MailStepProvider;
  v38 = sub_1000257D8();
  v36[0] = a3;
  sub_10000EC9C(v22, v20, &qword_10018ADD0, &unk_1001256A0);
  sub_10000EC9C(v36, v34, &qword_100189310, &qword_1001221A0);
  sub_10000EC9C(v20, v17, &qword_10018ADD0, &unk_1001256A0);
  if (sub_10000E5F0(v17, 1, v7) == 1)
  {

    sub_10000ABCC(v20, &qword_10018ADD0, &unk_1001256A0);
    sub_10000ABCC(v22, &qword_10018ADD0, &unk_1001256A0);
    sub_10000ABCC(v36, &qword_100189310, &qword_1001221A0);
    v25 = 0;
  }

  else
  {
    sub_10003F558(v17, v13);
    type metadata accessor for ActionInfo(0);
    sub_10003F5BC(v13, v11);

    v25 = sub_1000ED69C(v11, 1, 0, 0);
    sub_10003F620(v13);
    sub_10000ABCC(v20, &qword_10018ADD0, &unk_1001256A0);
    sub_10000ABCC(v22, &qword_10018ADD0, &unk_1001256A0);
    sub_10000ABCC(v36, &qword_100189310, &qword_1001221A0);
  }

  v26 = v33;
  *a4 = v32;
  *(a4 + 8) = v26;
  *(a4 + 64) = v24;
  *(a4 + 72) = v25;
  result = *v34;
  v28 = v34[1];
  *(a4 + 16) = v34[0];
  *(a4 + 32) = v28;
  v29 = v31;
  *(a4 + 48) = v35;
  *(a4 + 56) = v29;
  *(a4 + 80) = 0;
  *(a4 + 88) = 0;
  return result;
}

uint64_t sub_10005E980(uint64_t result)
{
  v2 = *(*v1 + 144);
  if (*(v1 + v2) == (result & 1))
  {
    *(v1 + v2) = result & 1;
  }

  else
  {
    __chkstk_darwin(result);
    sub_100003768(&qword_10018A170, &unk_100127780);
    sub_10000737C();
    sub_100062878();
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100114874();
  }

  return result;
}

uint64_t sub_10005EAA4()
{
  v1[167] = v0;
  type metadata accessor for MainActor();
  v1[173] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[179] = v3;
  v1[185] = v2;

  return _swift_task_switch(sub_10005EB40, v3, v2);
}

uint64_t sub_10005EB40()
{
  sub_10003DCD8();
  v1 = *(v0 + 1336);
  v2 = *(v1 + *(*v1 + 136));
  sub_1000925F0(v1 + qword_1001A57E0);
  *(v2 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_delegate + 8) = &off_10017D108;
  swift_unknownObjectWeakAssign();
  swift_asyncLet_begin();
  v3 = swift_task_alloc();
  *(v0 + 1488) = v3;
  *(v3 + 16) = &unk_100127738;
  *(v3 + 24) = v1;

  swift_asyncLet_begin();
  v4 = sub_100062FF0();

  return _swift_asyncLet_get_throwing(v4);
}

uint64_t sub_10005EC78()
{
  sub_10003DCD8();
  if (v0)
  {

    v3 = *(**(v1 + 1336) + 608);
    v15 = **(v1 + 1336) + 608;
    v16 = v3 + *v3;
    v4 = swift_task_alloc();
    *(v1 + 1496) = v4;
    *v4 = v1;
    v12 = sub_100062EB4(v4, v5, v6, v7, v8, v9, v10, v11, v14, v15, v16);

    return v12();
  }

  else
  {

    return _swift_asyncLet_get(v1 + 656, v2, sub_10005EDB4, v1 + 1440);
  }
}

uint64_t sub_10005EDB4()
{
  sub_10003DCD8();
  v1 = *(**(v0 + 1336) + 608);
  v13 = **(v0 + 1336) + 608;
  v14 = v1 + *v1;
  v2 = swift_task_alloc();
  *(v0 + 1496) = v2;
  *v2 = v0;
  v10 = sub_100062EB4(v2, v3, v4, v5, v6, v7, v8, v9, v12, v13, v14);

  return v10();
}

uint64_t sub_10005EEAC()
{
  sub_100025A94();
  v1 = *v0;
  v2 = *v0;
  sub_10000870C();
  *v3 = v2;

  v4 = *(v1 + 1480);
  v5 = *(v1 + 1432);

  return _swift_task_switch(sub_10005EFC0, v5, v4);
}

uint64_t sub_10005EFC0()
{
  sub_100025A94();
  sub_10005E980(1);

  return _swift_asyncLet_finish(v0 + 656, v1, sub_10005F028, v0 + 1344);
}

uint64_t sub_10005F044()
{
  sub_100025A94();

  v1 = sub_100062FF0();

  return _swift_asyncLet_finish(v1, v2, v3, v0 + 1392);
}

uint64_t sub_10005F0CC()
{
  sub_100025A94();

  sub_10000875C();

  return v0();
}

BOOL sub_10005F124(uint64_t a1)
{
  sub_1000619E8(v3);
  if (!v4)
  {
    return 0;
  }

  v1 = v3[2];
  sub_100044F98(v3, &qword_10018B388, &qword_100125C38);
  return (v1 - 3) < 0xFFFFFFFE;
}

uint64_t sub_10005F188(int8x16_t *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v7 = a1[5].i64[0];
  v6 = a1[5].i64[1];
  v8 = a1[6].i64[0];
  v9 = a1[6].u16[4];
  if (!(v9 >> 14))
  {
    v21 = *(a2 + 104);
    if ((v21 & 0xC000) == 0)
    {
      v22 = *(a2 + 96);
      v23 = *(a2 + 88);
      v24 = *(a2 + 80);
      v50[0] = *a1;
      v50[1] = v2;
      v50[2] = v3;
      v50[3] = v4;
      v50[4] = v5;
      v51 = v7;
      v52 = v6;
      v53 = BYTE2(v6);
      v25 = *(a2 + 16);
      v54[0] = *a2;
      v54[1] = v25;
      v26 = *(a2 + 48);
      v54[2] = *(a2 + 32);
      v54[3] = v26;
      v54[4] = *(a2 + 64);
      v55 = v24;
      v57 = BYTE2(v23);
      v56 = v23;
      if ((static WiFiDiagnosticsData.__derived_struct_equals(_:_:)(v50, v54) & 1) != 0 && (sub_10004C210(v8, v22) & 1) != 0 && ((v9 ^ v21) & 1) == 0 && ((v9 >> 8) & 1) == (v21 & 0x100) >> 8)
      {
        goto LABEL_31;
      }
    }

    goto LABEL_28;
  }

  if (v9 >> 14 != 1)
  {
    v27 = vorrq_s8(vorrq_s8(v5, v3), vorrq_s8(v4, v2));
    if (v7 | *&vorr_s8(*v27.i8, *&vextq_s8(v27, v27, 8uLL)) | v6 | v8 | a1->i64[0] | a1->i64[1] || v9 != 0x8000)
    {
      v37 = *(a2 + 104);
      if ((v37 & 0xC000) == 0x8000 && v37 == 0x8000 && *a2 == 1)
      {
        v39 = sub_100062F74(a1, a2);
        if (!*&sub_100062F54(v39, v40, v41, v42, v43, v44))
        {
          goto LABEL_31;
        }
      }
    }

    else
    {
      v28 = *(a2 + 104);
      if ((v28 & 0xC000) == 0x8000 && v28 == 0x8000)
      {
        v29 = sub_100062F74(a1, a2);
        v35 = sub_100062F54(v29, v30, v31, v32, v33, v34);
        if (!(*&v35 | v36))
        {
          goto LABEL_31;
        }
      }
    }

LABEL_28:
    v20 = 0;
    return v20 & 1;
  }

  if ((*(a2 + 104) & 0xC000) != 0x4000)
  {
    goto LABEL_28;
  }

  swift_getErrorValue();
  v10 = Error.localizedDescription.getter();
  sub_100062FA4(v10, v11, v12, v13, v14, v15, v16, v17, v46, v47, v48, v49);
  if (v9 == Error.localizedDescription.getter() && v8 == v18)
  {

LABEL_31:
    v20 = 1;
    return v20 & 1;
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  return v20 & 1;
}

void *sub_10005F3C4@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  sub_10001ABA4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  memcpy(__dst, (v1 + qword_10018C3A0), 0x6AuLL);
  sub_100062DB4(__dst, &v4);
  return memcpy(a1, __dst, 0x6AuLL);
}

uint64_t sub_10005F4B4(void *__src)
{
  memcpy(__dst, __src, 0x6AuLL);
  sub_100062DB4(__dst, &v2);
  return sub_10005F50C(__dst);
}

uint64_t sub_10005F50C(uint64_t *a1)
{
  v3 = qword_10018C3A0;
  memcpy(__dst, (v1 + qword_10018C3A0), 0x6AuLL);
  sub_100062DB4(__dst, v9);
  v4 = sub_100061C34(__dst, a1);
  sub_1000628FC(__dst);
  if (v4)
  {
    KeyPath = swift_getKeyPath();
    v6 = __chkstk_darwin(KeyPath);
    v8[2] = v1;
    v8[3] = a1;
    sub_100061BAC(v6, sub_100062DF4, v8);
    sub_1000628FC(a1);
  }

  else
  {
    memcpy(v9, (v1 + v3), 0x6AuLL);
    memcpy((v1 + v3), a1, 0x6AuLL);
    return sub_1000628FC(v9);
  }
}

uint64_t sub_10005F618(uint64_t a1, const void *a2)
{
  v3 = (a1 + qword_10018C3A0);
  v4 = *(v3 + 1);
  v5 = *(v3 + 2);
  v6 = *(v3 + 3);
  v7 = *(v3 + 4);
  v8 = *(v3 + 5);
  v9 = *(v3 + 6);
  v15 = *(v3 + 7);
  v16 = *v3;
  v13 = *(v3 + 5);
  v14 = *(v3 + 4);
  v10 = *(v3 + 12);
  v11 = *(v3 + 52);
  memcpy(v3, a2, 0x6AuLL);
  sub_100062DB4(a2, v17);
  return sub_1000626C4(v16, v4, v5, v6, v7, v8, v9, v15, v14, *(&v14 + 1), v13, *(&v13 + 1), v10, v11);
}

uint64_t sub_10005F718(uint64_t a1)
{
  v3 = type metadata accessor for SupportFlowIdentifier();
  sub_100008780();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v1 + qword_10018C3A0;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0u;
  *(v9 + 64) = 0u;
  *(v9 + 80) = 0u;
  *(v9 + 96) = 0;
  *(v9 + 104) = 0x8000;
  *(v1 + qword_10018C3A8) = 0;
  *(v1 + qword_10018C3B0) = xmmword_1001275B0;
  *(v1 + qword_10018C3B8) = xmmword_1001275C0;
  *(v1 + qword_10018C3C0) = 0;
  *(v1 + qword_10018C3C8) = 0;
  ObservationRegistrar.init()();
  (*(v5 + 104))(v8, enum case for SupportFlowIdentifier.wifi(_:), v3);

  sub_10010570C(v8, &type metadata for WiFiStepOverrideProvider, a1, 0, 0);
  v11 = v10;

  sub_100021124();
  sub_10002402C();

  return v11;
}

uint64_t sub_10005F8D0(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result & 1;
  if (*(v4 + *a2) == (result & 1))
  {
    *(v4 + *a2) = v5;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v8 = __chkstk_darwin(KeyPath);
    v9[2] = v4;
    v10 = v5;
    sub_100061BAC(v8, a4, v9);
  }

  return result;
}

uint64_t sub_10005F9C4(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_10001ABA4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2);
}

uint64_t sub_10005FA34()
{
  v0 = sub_100003768(&qword_10018C850, &qword_1001277D0);
  __chkstk_darwin(v0 - 8);
  v2 = &v16 - v1;
  v3 = type metadata accessor for Date();
  sub_100008780();
  v5 = v4;
  v7 = __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v16 - v10;
  if (qword_100188368 != -1)
  {
    swift_once();
  }

  Defaults.lastNotifiedAboutVPN.getter(v2);
  if (sub_10000E5F0(v2, 1, v3) == 1)
  {
    sub_100044F98(v2, &qword_10018C850, &qword_1001277D0);
    v12 = 0;
  }

  else
  {
    (*(v5 + 32))(v11, v2, v3);
    Date.init()();
    Date.timeIntervalSince(_:)();
    v13 = *(v5 + 8);
    v13(v9, v3);
    static Duration.seconds(_:)();
    sub_100062F98();
    v14 = static Duration.< infix(_:_:)();
    v13(v11, v3);
    v12 = v14 ^ 1;
  }

  return v12 & 1;
}

uint64_t sub_10005FC50()
{
  sub_100025A94();
  v0[3] = sub_100062FC8();
  v0[4] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  sub_100062F48(v1);

  return sub_100060734();
}

uint64_t sub_10005FCEC()
{
  sub_10003DCD8();
  sub_10004622C();
  v2 = v1;
  sub_1000461C8();
  *v3 = v2;
  v4 = *v0;
  sub_10000870C();
  *v5 = v4;

  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 48) = v7;
  *(v2 + 56) = v6;

  return _swift_task_switch(sub_10005FE1C, v7, v6);
}

uint64_t sub_10005FE1C()
{
  sub_100025A94();
  v1 = sub_100064BAC();
  sub_100107E70(v1);
  sub_10005F6F0(1);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_10005FED0;

  return sub_10005EAA4();
}

uint64_t sub_10005FED0()
{
  sub_100025A94();
  v1 = *v0;
  v2 = *v0;
  sub_10000870C();
  *v3 = v2;

  v4 = *(v1 + 56);
  v5 = *(v1 + 48);

  return _swift_task_switch(sub_10005FFE4, v5, v4);
}

uint64_t sub_10005FFE4()
{
  sub_100025A94();

  sub_10005F6F0(0);
  sub_10000875C();

  return v0();
}

uint64_t sub_100060048()
{
  sub_100025A94();
  v0[3] = sub_100062FC8();
  v0[4] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  sub_100062F48(v1);

  return sub_100060734();
}

uint64_t sub_1000600E4()
{
  sub_10003DCD8();
  sub_10004622C();
  v2 = v1;
  sub_1000461C8();
  *v3 = v2;
  v4 = *v0;
  sub_10000870C();
  *v5 = v4;

  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 48) = v7;
  *(v2 + 56) = v6;

  return _swift_task_switch(sub_100060214, v7, v6);
}

uint64_t sub_100060214()
{
  sub_100025A94();
  v1 = sub_100064BAC();
  sub_100107E70(v1);
  *(v0 + 64) = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100062F98();
  v2 = sub_100062F00();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_100060298()
{
  sub_100025A94();

  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return _swift_task_switch(sub_1000602F8, v1, v2);
}

uint64_t sub_1000602F8()
{
  sub_100025A94();

  sub_10000875C();

  return v0();
}

uint64_t sub_100060350()
{
  sub_100025A94();
  v0[3] = sub_100062FC8();
  v0[4] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  sub_100062F48(v1);

  return sub_100060734();
}

uint64_t sub_1000603EC()
{
  sub_100025A94();
  sub_10004622C();
  v1 = *v0;
  sub_10000870C();
  *v2 = v1;

  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100062F98();
  v3 = sub_100062F00();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10006050C()
{
  sub_10003DCD8();

  sub_1000605E8(v0);
  sub_100085FE4();
  sub_10005F124(v1);
  sub_100085FE4();
  sub_100060648();
  sub_100085FE4();
  sub_1000606C0();
  sub_100085FE4();
  sub_10000875C();

  return v2();
}

BOOL sub_1000605E8(uint64_t a1)
{
  sub_1000619E8(v3);
  if (!v4)
  {
    return 0;
  }

  v1 = v3[2];
  sub_100044F98(v3, &qword_10018B388, &qword_100125C38);
  return v1 != 1;
}

BOOL sub_100060648()
{
  static Bool.simulateHasConfiguredVPN.getter();
  sub_100062FE4();
  if (!v1 && (v0 & 1) != 0)
  {
    return 1;
  }

  sub_1000619E8(v4);
  if (!v5)
  {
    return 0;
  }

  v3 = *(v5 + 16);
  sub_100044F98(v4, &qword_10018B388, &qword_100125C38);
  return v3 != 0;
}

uint64_t sub_1000606C0()
{
  static Bool.simulateConnectedVPN.getter();
  sub_100062FE4();
  if (v1 || (v0 & 1) == 0)
  {
    sub_1000619E8(v4);
    if (v4[12])
    {
      v2 = v5;
      sub_100044F98(v4, &qword_10018B388, &qword_100125C38);
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

uint64_t sub_100060734()
{
  sub_100025A94();
  v1[345] = v0;
  type metadata accessor for MainActor();
  v1[346] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[347] = v3;
  v1[348] = v2;

  return _swift_task_switch(sub_1000607CC, v3, v2);
}

uint64_t sub_1000607CC()
{
  sub_10003DCD8();
  sub_10005F3C4((v0 + 2312));
  sub_1000628FC(v0 + 2312);
  *(v0 + 1976) = 1;
  *(v0 + 1984) = 0u;
  *(v0 + 2000) = 0u;
  *(v0 + 2016) = 0u;
  *(v0 + 2032) = 0u;
  *(v0 + 2048) = 0u;
  *(v0 + 2064) = 0u;
  *(v0 + 2080) = 0x8000;
  v1 = *(v0 + 2416);
  if (v1 & 0xC000) == 0x8000 && (v1 == 0x8000 ? (v2 = *(v0 + 2312) == 1) : (v2 = 0), v2 && (v3 = vorrq_s8(vorrq_s8(*(v0 + 2352), *(v0 + 2384)), vorrq_s8(*(v0 + 2368), *(v0 + 2400))), !(*&vorr_s8(*v3.i8, *&vextq_s8(v3, v3, 8uLL)) | *(v0 + 2344) | *(v0 + 2336) | *(v0 + 2328) | *(v0 + 2320)))) || (sub_10005F6DC())
  {

    sub_10000875C();

    return v4();
  }

  else
  {
    v6 = *(v0 + 2760);
    sub_10005F50C((v0 + 1976));
    v7 = swift_task_alloc();
    *(v0 + 2792) = v7;
    *(v7 + 16) = &unk_100127798;
    *(v7 + 24) = v6;

    swift_asyncLet_begin();
    v8 = swift_task_alloc();
    *(v0 + 2800) = v8;
    *(v8 + 16) = &unk_1001277B0;
    *(v8 + 24) = v6;

    swift_asyncLet_begin();
    swift_asyncLet_begin();
    v9 = sub_100062FF0();

    return _swift_asyncLet_get(v9, v0 + 2082, v10, v0 + 1936);
  }
}

uint64_t sub_100060A30()
{
  sub_100025A94();
  sub_10005F8A8(*(v0 + 2082));

  return _swift_asyncLet_get(v0 + 656, v0 + 2083, sub_100060A9C, v0 + 1936);
}

uint64_t sub_100060AB8()
{
  sub_100025A94();
  sub_10005F974(*(v0 + 2083));

  return _swift_asyncLet_get_throwing(v0 + 1296);
}

uint64_t sub_100060B24()
{
  v1[351] = v0;
  if (v0)
  {
    return _swift_task_switch(sub_100060DB4, v1[347], v1[348]);
  }

  else
  {
    return _swift_task_switch(sub_100060B64, v1[347], v1[348]);
  }
}

uint64_t sub_100060B64()
{
  sub_100025A94();
  memcpy((v0 + 2536), (v0 + 2424), 0x6AuLL);
  v1 = *(v0 + 2544);
  v2 = *(v0 + 2560);
  v3 = *(v0 + 2576);
  v4 = *(v0 + 2592);
  v5 = *(v0 + 2632);
  v6 = *(v0 + 2552) & 1;
  v7 = *(v0 + 2568) & 1;
  v8 = *(v0 + 2584) & 1;
  v9 = *(v0 + 2600) & 1;
  v10 = *(v0 + 2624) & 0x10101;
  v11 = *(v0 + 2640) & 0x101;
  *(v0 + 2200) = *(v0 + 2536) & 0xFFFFFFFFFFFFFFFLL;
  *(v0 + 2208) = v1;
  *(v0 + 2216) = v6;
  *(v0 + 2224) = v2;
  *(v0 + 2232) = v7;
  *(v0 + 2240) = v3;
  *(v0 + 2248) = v8;
  *(v0 + 2256) = v4;
  *(v0 + 2264) = v9;
  *(v0 + 2272) = *(v0 + 2608);
  *(v0 + 2288) = v10;
  *(v0 + 2296) = v5;
  *(v0 + 2304) = v11;
  sub_100062C14(v0 + 2536, v0 + 2648);
  sub_10005F50C((v0 + 2200));
  v12 = sub_100062EE0();

  return _swift_asyncLet_finish(v12, v13, v14, v15);
}

uint64_t sub_100060CB8()
{
  sub_100025A94();

  v1 = sub_100062FF0();

  return _swift_asyncLet_finish(v1, v0 + 2082, v2, v0 + 656);
}

uint64_t sub_100060D44()
{
  sub_100025A94();

  sub_10000875C();

  return v0();
}

uint64_t sub_100060DB4()
{
  sub_100025A94();
  *(v0 + 2088) = *(v0 + 2808) & 0xFFFFFFFFFFFFFFFLL;
  *(v0 + 2104) = 0;
  *(v0 + 2120) = 0;
  *(v0 + 2136) = 0;
  *(v0 + 2152) = 0;
  *(v0 + 2176) = 0;
  *(v0 + 2192) = 0x4000;
  swift_errorRetain();
  sub_10005F50C((v0 + 2088));

  v1 = sub_100062EE0();

  return _swift_asyncLet_finish(v1, v2, v3, v4);
}

uint64_t sub_100060E60()
{
  sub_100025A94();
  v1 = DeviceEventCoordinator.hasRecentDeviceRestart()();
  v2 = *(v0 + 8);
  v3 = v1;

  return v2(v3);
}

uint64_t sub_100060F04()
{
  sub_100025A94();
  v1 = DeviceEventCoordinator.hasRecentNetworkSettingsReset()();
  v2 = *(v0 + 8);
  v3 = v1;

  return v2(v3);
}

uint64_t sub_100060F88(uint64_t a1)
{
  *(v1 + 128) = a1;
  v2 = swift_task_alloc();
  *(v1 + 136) = v2;
  *v2 = v1;
  v2[1] = sub_100061024;

  return static WiFiDiagnosticsReport.runReport()(v1 + 16);
}

uint64_t sub_100061024()
{
  sub_10003DCD8();
  sub_10004622C();
  v3 = v2;
  sub_1000461C8();
  *v4 = v3;
  v5 = *v1;
  sub_10000870C();
  *v6 = v5;

  if (!v0)
  {
    memcpy(*(v3 + 128), (v3 + 16), 0x6AuLL);
  }

  v7 = *(v5 + 8);

  return v7();
}

uint64_t sub_100061124(uint64_t a1)
{
  *(v1 + 128) = a1;
  v2 = swift_task_alloc();
  *(v1 + 136) = v2;
  *v2 = v1;
  v2[1] = sub_100062EB0;

  return sub_100060F88(v1 + 16);
}

uint64_t sub_1000611BC()
{
  sub_100025A94();
  v1[16] = v0;
  v1[17] = type metadata accessor for MainActor();
  v1[18] = static MainActor.shared.getter();
  v2 = swift_task_alloc();
  v1[19] = v2;
  *v2 = v1;
  sub_100062F48(v2);

  return static WiFiDiagnosticsDataProvider.turnOnWiFi()();
}

uint64_t sub_100061260()
{
  sub_100025A94();
  sub_10004622C();
  v3 = v2;
  sub_1000461C8();
  *v4 = v3;
  v5 = *v1;
  sub_10000870C();
  *v6 = v5;
  *(v3 + 160) = v0;

  if (v0)
  {
    dispatch thunk of Actor.unownedExecutor.getter();
    sub_100062F98();
    v7 = sub_100062F00();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {
    v10 = swift_task_alloc();
    *(v3 + 168) = v10;
    *v10 = v5;
    v10[1] = sub_1000613D8;

    return static VPNDiagnosticsDataProvider.awaitNetworkReachability(timeout:)(0x8AC7230489E80000, 0);
  }
}

uint64_t sub_1000613D8()
{
  sub_10003DCD8();
  v1 = *v0;
  sub_10000870C();
  *v2 = v1;
  v3 = *v0;
  *v2 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 176) = v4;
  *v4 = v3;
  v4[1] = sub_10006150C;

  return sub_100060734();
}

uint64_t sub_10006150C()
{
  sub_100025A94();
  sub_10004622C();
  v1 = *v0;
  sub_10000870C();
  *v2 = v1;

  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100062F98();
  v3 = sub_100062F00();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10006162C()
{
  sub_10003DCD8();

  v0 = sub_100064BAC();
  sub_100107E70(v0);
  if (qword_1001881E0 != -1)
  {
    sub_10004F43C(&qword_1001881E0);
  }

  v1 = type metadata accessor for Logger();
  sub_10000C2D4(v1, qword_1001A5760);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109376;
    v5 = sub_1000605E8(v4);
    *(v4 + 10) = sub_10006301C(v5);

    sub_100062FFC(&_mh_execute_header, v6, v7, "Wi-Fi Power is now: %{BOOL}d joined: %{BOOL}d");
    sub_100008744(v4);
  }

  else
  {
  }

  sub_10000875C();

  return v8();
}

uint64_t sub_100061764()
{

  if (qword_1001881E0 != -1)
  {
    sub_10004F43C(&qword_1001881E0);
  }

  v1 = type metadata accessor for Logger();
  sub_10000C2D4(v1, qword_1001A5760);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Diagnostic error occured while turning on Wi-Fi: %@", v4, 0xCu);
    sub_100044F98(v5, &qword_100189390, &qword_1001241D0);
    sub_100008744(v5);
    sub_100008744(v4);
  }

  v7 = *(v0 + 160);

  *(v0 + 16) = v7 & 0xFFFFFFFFFFFFFFFLL;
  *(v0 + 32) = 0;
  *(v0 + 48) = 0;
  *(v0 + 64) = 0;
  *(v0 + 80) = 0;
  *(v0 + 104) = 0;
  *(v0 + 120) = 0x4000;
  swift_errorRetain();
  sub_10005F50C((v0 + 16));

  if (qword_1001881E0 != -1)
  {
    sub_10004F43C(&qword_1001881E0);
  }

  sub_10000C2D4(v1, qword_1001A5760);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109376;
    v11 = sub_1000605E8(v10);
    *(v10 + 10) = sub_10006301C(v11);

    sub_100062FFC(&_mh_execute_header, v12, v13, "Wi-Fi Power is now: %{BOOL}d joined: %{BOOL}d");
    sub_100008744(v10);
  }

  else
  {
  }

  sub_10000875C();

  return v14();
}

void *sub_1000619E8@<X0>(uint64_t a1@<X8>)
{
  result = sub_10005F3C4(v11);
  v3 = v13;
  if ((v13 & 0xC000) != 0)
  {
    result = sub_1000628FC(v11);
    v4 = 0;
    v3 = 0;
    v9 = 0uLL;
    v10 = 0uLL;
    v8 = 0uLL;
    v7 = 0uLL;
    v6 = 0uLL;
    v5 = 0uLL;
  }

  else
  {
    v4 = v12;
    v6 = v11[4];
    v5 = v11[5];
    v8 = v11[2];
    v7 = v11[3];
    v9 = v11[0];
    v10 = v11[1];
  }

  *a1 = v9;
  *(a1 + 16) = v10;
  *(a1 + 32) = v8;
  *(a1 + 48) = v7;
  *(a1 + 64) = v6;
  *(a1 + 80) = v5;
  *(a1 + 96) = v4;
  *(a1 + 104) = v3;
  return result;
}

uint64_t sub_100061A74()
{
  sub_1000619E8(v3);
  if (!v5)
  {
    return 0;
  }

  v0 = v4;
  v1 = v3[1];
  sub_100044F98(v3, &qword_10018B388, &qword_100125C38);
  if (v0)
  {
    return 0;
  }

  return v1;
}

uint64_t sub_100061AD4()
{
  sub_1000619E8(__src);
  if (!v5 || (memcpy(__dst, __src, 0x5BuLL), v0 = __dst[9], v1 = __dst[10], sub_10006292C(__dst, &v3), sub_100044F98(__src, &qword_10018B388, &qword_100125C38), !v1))
  {

    return 0;
  }

  return v0;
}

uint64_t sub_100061B64()
{
  sub_10005F3C4(v1);
  if ((v2 & 0xC000) == 0x4000)
  {
    return v1[0];
  }

  sub_1000628FC(v1);
  return 0;
}

uint64_t sub_100061C34(int8x16_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v7 = a1[5].i64[0];
  v6 = a1[5].i64[1];
  v8 = a1[6].i64[0];
  v9 = a1[6].u16[4];
  if (!(v9 >> 14))
  {
    v17 = *(a2 + 52);
    if (v17 < 0x4000)
    {
      v18 = a2[12];
      v19 = *(a2 + 22);
      v20 = a2[10];
      v30[0] = *a1;
      v30[1] = v2;
      v30[2] = v3;
      v30[3] = v4;
      v30[4] = v5;
      v31 = v7;
      v32 = v6;
      v33 = BYTE2(v6);
      v21 = *(a2 + 1);
      v34[0] = *a2;
      v34[1] = v21;
      v22 = *(a2 + 3);
      v34[2] = *(a2 + 2);
      v34[3] = v22;
      v34[4] = *(a2 + 4);
      v35 = v20;
      v37 = BYTE2(v19);
      v36 = v19;
      if ((static WiFiDiagnosticsData.__derived_struct_equals(_:_:)(v30, v34) & 1) != 0 && (sub_10004C210(v8, v18) & 1) != 0 && ((v9 ^ v17) & 1) == 0 && ((v9 >> 8) & 1) == (v17 & 0x100) >> 8)
      {
        goto LABEL_31;
      }
    }

    goto LABEL_28;
  }

  if (v9 >> 14 == 1)
  {
    if ((a2[13] & 0xC000) == 0x4000)
    {
      swift_getErrorValue();
      v10 = Error.localizedDescription.getter();
      v12 = v11;
      swift_getErrorValue();
      if (v10 != Error.localizedDescription.getter() || v12 != v13)
      {
        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

        LOBYTE(v16) = v15 ^ 1;
        return v16 & 1;
      }

LABEL_31:
      LOBYTE(v16) = 0;
      return v16 & 1;
    }

LABEL_28:
    LOBYTE(v16) = 1;
    return v16 & 1;
  }

  v23 = vorrq_s8(vorrq_s8(v5, v3), vorrq_s8(v4, v2));
  if (v7 | *&vorr_s8(*v23.i8, *&vextq_s8(v23, v23, 8uLL)) | v6 | v8 | a1->i64[0] | a1->i64[1] || v9 != 0x8000)
  {
    v26 = *(a2 + 52);
    if ((v26 & 0xC000) != 0x8000)
    {
      goto LABEL_28;
    }

    if (v26 != 0x8000 || *a2 != 1)
    {
      goto LABEL_28;
    }

    v28 = vorrq_s8(vorrq_s8(vorrq_s8(*(a2 + 5), *(a2 + 9)), vorrq_s8(*(a2 + 7), *(a2 + 11))), vorrq_s8(*(a2 + 1), *(a2 + 3)));
    *v28.i8 = vorr_s8(*v28.i8, *&vextq_s8(v28, v28, 8uLL));
    LOBYTE(v16) = v28.i8[0];
    if (v28.i64[0])
    {
      goto LABEL_28;
    }
  }

  else
  {
    v24 = *(a2 + 52);
    if ((v24 & 0xC000) != 0x8000)
    {
      goto LABEL_28;
    }

    if (v24 != 0x8000)
    {
      goto LABEL_28;
    }

    v25 = vorrq_s8(vorrq_s8(vorrq_s8(*(a2 + 5), *(a2 + 9)), vorrq_s8(*(a2 + 7), *(a2 + 11))), vorrq_s8(*(a2 + 1), *(a2 + 3)));
    v16 = *&vorr_s8(*v25.i8, *&vextq_s8(v25, v25, 8uLL)) | *a2;
    if (v16)
    {
      goto LABEL_28;
    }
  }

  return v16 & 1;
}

uint64_t sub_100061EDC()
{
  sub_100062F10(v0 + qword_10018C3A0);
  v1 = qword_10018C3D0;
  type metadata accessor for ObservationRegistrar();
  sub_10000C31C();
  v3 = *(v2 + 8);

  return v3(v0 + v1);
}

uint64_t sub_100061F50()
{
  v0 = sub_10011484C();
  sub_100062F10(v0 + qword_10018C3A0);
  v1 = qword_10018C3D0;
  type metadata accessor for ObservationRegistrar();
  sub_10000C31C();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_100061FC4()
{
  v0 = sub_100061F50();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for WiFiFlowViewModel(uint64_t a1)
{
  result = qword_10018C400;
  if (!qword_10018C400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100062064(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_100062118(uint64_t a1)
{
  v1 = *(a1 + 104);
  v2 = v1;
  v3 = v1 >> 14;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_100062140(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 106))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = (*a1 >> 60) & 0xF | (16 * (*(a1 + 16) >> 1));
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_100062194(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 104) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 106) = 1;
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
      v4 = -a2;
      *a1 = v4 << 60;
      *(a1 + 8) = 0;
      *(a1 + 16) = (v4 >> 3) & 0x1FFFFFFE;
      result = 0.0;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0;
      return result;
    }

    *(a1 + 106) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10006222C(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 16) & 1;
    v3 = *(result + 32) & 1;
    v4 = *(result + 48) & 1;
    v5 = *(result + 64) & 1;
    v6 = *(result + 88) & 0x10101;
    v7 = *(result + 104) & 0x101 | (a2 << 14);
    *result &= 0xFFFFFFFFFFFFFFFuLL;
    *(result + 16) = v2;
    *(result + 32) = v3;
    *(result + 48) = v4;
    *(result + 64) = v5;
    *(result + 88) = v6;
    *(result + 104) = v7;
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 104) = 0x8000;
  }

  return result;
}

BOOL sub_1000622D4()
{
  static Bool.simulateBadWiFiConnection.getter();
  sub_100062FE4();
  if (!v1 && (v0 & 1) != 0)
  {
    return 0;
  }

  sub_1000619E8(v4);
  if (!v5)
  {
    return 0;
  }

  v2 = v4[2];
  sub_100044F98(v4, &qword_10018B388, &qword_100125C38);
  return (v2 - 4) < 0xFFFFFFFD;
}

uint64_t sub_100062348()
{
  static Bool.simulateNoInternetConnectivity.getter();
  sub_100062FE4();
  if (!v1 && (v0 & 1) != 0)
  {
    return 0;
  }

  sub_1000619E8(v4);
  if (!v4[12])
  {
    return 0;
  }

  v2 = v5;
  sub_100044F98(v4, &qword_10018B388, &qword_100125C38);
  return (v2 >> 8) & 1;
}

uint64_t sub_1000623B4(uint64_t a1)
{
  swift_getErrorValue();
  v3 = Error.localizedDescription.getter();
  sub_100062FA4(v3, v4, v5, v6, v7, v8, v9, v10, v15, v16, v17, v18);
  if (v2 == Error.localizedDescription.getter() && v1 == v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

uint64_t sub_100062460()
{
  v0 = type metadata accessor for SupportFlowIdentifier();
  sub_100008780();
  v2 = v1;
  __chkstk_darwin(v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  sub_10000C270(v6, qword_1001A5760);
  sub_10000C2D4(v6, qword_1001A5760);
  (*(v2 + 104))(v5, enum case for SupportFlowIdentifier.wifi(_:), v0);
  return Logger.init(flowId:)();
}

uint64_t sub_100062558()
{
  sub_100025A94();
  v0 = swift_task_alloc();
  v1 = sub_100056A10(v0);
  *v1 = v2;
  sub_100062F48(v1);

  return sub_1000A2880();
}

uint64_t sub_1000625D8()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10006266C, v2, v1);
}

uint64_t sub_10006266C()
{
  sub_100025A94();

  sub_10000875C();

  return v0();
}

uint64_t sub_1000626C4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned __int16 a14)
{
  v14 = a14 >> 14;
  if (v14 == 1)
  {
  }

  else if (!v14)
  {
  }

  return v15;
}

uint64_t sub_10006273C()
{
  sub_100025A94();
  v0 = swift_task_alloc();
  v1 = sub_100056A10(v0);
  *v1 = v2;
  sub_100062F48(v1);

  return sub_1000625D8();
}

uint64_t sub_1000627C0()
{
  sub_10003DCD8();
  v0 = swift_task_alloc();
  v1 = sub_100056A10(v0);
  *v1 = v2;
  v3 = sub_1000569D8(v1);

  return v4(v3);
}

__n128 sub_10006286C(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

unint64_t sub_100062878()
{
  result = qword_10018A178;
  if (!qword_10018A178)
  {
    sub_100004D48(&qword_10018A170, &unk_100127780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018A178);
  }

  return result;
}

uint64_t sub_100062988()
{
  sub_100025A94();
  v1 = swift_task_alloc();
  v2 = sub_100056A10(v1);
  *v2 = v3;
  sub_100062F48(v2);

  return sub_100060E40(v0);
}

uint64_t sub_100062A0C()
{
  sub_10003DCD8();
  v0 = swift_task_alloc();
  v1 = sub_100056A10(v0);
  *v1 = v2;
  v3 = sub_1000569D8(v1);

  return v4(v3);
}

uint64_t sub_100062AA4()
{
  sub_100025A94();
  v1 = swift_task_alloc();
  v2 = sub_100056A10(v1);
  *v2 = v3;
  sub_100062F48(v2);

  return sub_100060EE4(v0);
}

uint64_t sub_100062B28()
{
  sub_100025A94();
  v2 = v1;
  sub_10004622C();
  v3 = *v0;
  sub_10000870C();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_100062C70@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10005F9B0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100062CDC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10005F99C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100062D48@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10005F6DC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100062E20(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_100062E60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100062F10@<X0>(uint64_t a1@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v14 = *(a1 + 104);
  v13 = *(a1 + 96);
  v11 = *(a1 + 64);
  v12 = *(a1 + 80);

  return sub_1000626C4(v2, v3, v4, v5, v6, v7, v8, v9, v11, *(&v11 + 1), v12, *(&v12 + 1), v13, v14);
}

uint64_t sub_100062FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{

  return swift_getErrorValue();
}

uint64_t sub_100062FC8()
{
  *(v1 + 16) = v0;

  return type metadata accessor for MainActor();
}

void sub_100062FFC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xEu);
}

BOOL sub_10006301C(uint64_t a1)
{
  *(v1 + 4) = a1 & 1;
  *(v1 + 8) = 1024;

  return sub_10005F124(a1);
}

uint64_t sub_10006303C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100176280, v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100063090(char a1)
{
  if (a1)
  {
    return 0x73746E756F636361;
  }

  else
  {
    return 0x53746E756F636361;
  }
}

uint64_t sub_1000630F8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10006303C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100063128@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100063090(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100063154(char a1)
{
  if (a1)
  {
    if (qword_1001881F0 != -1)
    {
      swift_once();
    }

    v2 = &qword_10018C868;
  }

  else
  {
    if (qword_1001881E8 != -1)
    {
      swift_once();
    }

    v2 = &qword_10018C858;
  }

  v3 = *v2;
  v4 = v2[1];

  v7 = &type metadata for MailActionInfoType;
  v8 = sub_100063464();
  v6[0] = a1 & 1;
  return sub_1000ED3F8(v3, v4, 0xD00000000000004BLL, 0x8000000100136A70, v6);
}

uint64_t sub_100063254()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_10018C858 = result;
  unk_10018C860 = v3;
  return result;
}

uint64_t sub_10006335C()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_10018C868 = result;
  unk_10018C870 = v3;
  return result;
}

unint64_t sub_100063464()
{
  result = qword_10018C878;
  if (!qword_10018C878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C878);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MailActionInfoType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        JUMPOUT(0x100063584);
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000635BC(uint64_t a1)
{
  result = sub_100063464();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000635E8()
{
  result = qword_10018C880;
  if (!qword_10018C880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C880);
  }

  return result;
}

unint64_t sub_10006363C(uint64_t a1)
{
  result = sub_100063664();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100063664()
{
  result = qword_10018C888;
  if (!qword_10018C888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C888);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MailStepOverrideProvider(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        JUMPOUT(0x100063784);
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000637D8(char a1)
{
  result = 0x20746E756F636341;
  switch(a1)
  {
    case 1:
      result = 0x412065766F6D6552;
      break;
    case 2:
      result = 0x20746361746E6F43;
      break;
    case 3:
      result = 0x6F63634120646441;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1000638B8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1001762D0, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100063904(char a1)
{
  result = 0x49746E756F636361;
  switch(a1)
  {
    case 1:
      result = 0x634165766F6D6572;
      break;
    case 2:
      result = 0x53746361746E6F63;
      break;
    case 3:
      result = 0x756F636341646461;
      break;
    case 4:
      result = 0x75516E6F6D6D6F63;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100063A0C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000638B8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100063A3C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100063904(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100063AAC()
{
  result = qword_10018C890;
  if (!qword_10018C890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C890);
  }

  return result;
}

unint64_t sub_100063B00()
{
  result = qword_10018C898;
  if (!qword_10018C898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C898);
  }

  return result;
}

uint64_t sub_100063BBC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_100004D48(&qword_10018C8A8, &qword_100127AD8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100063C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100063C74()
{
  result = qword_10018C8F0;
  if (!qword_10018C8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C8F0);
  }

  return result;
}

unint64_t sub_100063CC8()
{
  result = qword_10018C8F8;
  if (!qword_10018C8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C8F8);
  }

  return result;
}

unint64_t sub_100063D20()
{
  result = qword_10018C900;
  if (!qword_10018C900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C900);
  }

  return result;
}

uint64_t sub_100063DA4(char a1)
{
  result = 1701736270;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = sub_10006451C(0x206C6C41u);
      break;
    case 3:
      result = 0x726941206F6D6544;
      break;
    case 4:
      result = 0x4120656C676E6953;
      break;
    default:
      result = 0xD00000000000001ALL;
      break;
  }

  return result;
}

unint64_t sub_100063E64(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1001763B8, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100063EB0(char a1)
{
  result = 1701736302;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6F507269416C6C61;
      break;
    case 3:
      result = sub_10006451C(0x6F6D6564u);
      break;
    case 4:
      result = 0x6941656C676E6973;
      break;
    default:
      result = 0xD000000000000018;
      break;
  }

  return result;
}

unint64_t sub_100063F90@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100063E64(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100063FC0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100063EB0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

_BYTE *storeEnumTagSinglePayload for AirPodsOptionsOverride(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        JUMPOUT(0x1000640B8);
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10006417C()
{
  result = qword_10018C908;
  if (!qword_10018C908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C908);
  }

  return result;
}

unint64_t sub_1000641D0()
{
  result = qword_10018C910;
  if (!qword_10018C910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C910);
  }

  return result;
}

uint64_t sub_10006428C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_100004D48(&qword_10018C920, &qword_100127CE8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100064308()
{
  result = qword_10018C968;
  if (!qword_10018C968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C968);
  }

  return result;
}

unint64_t sub_10006435C()
{
  result = qword_10018C970;
  if (!qword_10018C970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C970);
  }

  return result;
}

uint64_t sub_1000643E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10006441C()
{
  result = qword_10018C978;
  if (!qword_10018C978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C978);
  }

  return result;
}

unint64_t sub_100064470()
{
  result = qword_10018C980;
  if (!qword_10018C980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C980);
  }

  return result;
}

unint64_t sub_1000644C8()
{
  result = qword_10018C988;
  if (!qword_10018C988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C988);
  }

  return result;
}

uint64_t sub_100064528(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_100064568(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1000645E0()
{
  v1 = type metadata accessor for ActionInfoType(0);
  sub_10000AF7C();
  v3 = __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v23 - v6;
  v8 = sub_100003768(&qword_10018ADD0, &unk_1001256A0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v23 - v13;
  __chkstk_darwin(v12);
  v16 = &v23 - v15;
  if ((*(v0 + 8) & 1) != 0 || *v0 != 6)
  {
    v20 = *(v0 + 32);
    v19 = *(v0 + 40);
    v21 = qword_100188388;

    if (v21 != -1)
    {
      swift_once();
    }

    v31 = 0u;
    v32 = 0u;
    v29 = v20;
    v30 = v19;
    v33 = 0;
    v34 = qword_1001A5990;
    v35 = *algn_1001A5998;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    sub_10000EC9C(&v29, v26, &unk_1001893B0, &unk_100121480);
    v28 = 1;

    sub_100003768(&unk_1001893B0, &unk_100121480);
    sub_100004CE4();
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v17 = *(v0 + 24);
    v23 = *(v0 + 16);
    *v16 = 2;
    swift_storeEnumTagMultiPayload();
    sub_100003CE8(v16, 0, 1, v1);
    v27 = 0;
    memset(v26, 0, sizeof(v26));
    sub_10000EC9C(v16, v14, &qword_10018ADD0, &unk_1001256A0);
    sub_10000EC9C(v26, v24, &qword_100189310, &qword_1001221A0);
    sub_10000EC9C(v14, v11, &qword_10018ADD0, &unk_1001256A0);
    if (sub_10000E5F0(v11, 1, v1) == 1)
    {

      sub_10000ABCC(v14, &qword_10018ADD0, &unk_1001256A0);
      sub_10000ABCC(v26, &qword_100189310, &qword_1001221A0);
      sub_10000ABCC(v16, &qword_10018ADD0, &unk_1001256A0);
      v18 = 0;
    }

    else
    {
      sub_10003F558(v11, v7);
      type metadata accessor for ActionInfo(0);
      sub_10003F5BC(v7, v5);

      v18 = sub_1000ED69C(v5, 1, 0, 0);
      sub_10003F620(v7);
      sub_10000ABCC(v14, &qword_10018ADD0, &unk_1001256A0);
      sub_10000ABCC(v26, &qword_100189310, &qword_1001221A0);
      sub_10000ABCC(v16, &qword_10018ADD0, &unk_1001256A0);
    }

    v31 = v24[0];
    v32 = v24[1];
    v29 = v23;
    v30 = v17;
    v33 = v25;
    v34 = 0;
    v35 = 0;
    v36 = v18;
    v37 = 0;
    v38 = 0;
    sub_10000EC9C(&v29, v26, &unk_1001893B0, &unk_100121480);
    v28 = 0;
    sub_100003768(&unk_1001893B0, &unk_100121480);
    sub_100004CE4();
    _ConditionalContent<>.init(storage:)();
  }

  return sub_10000ABCC(&v29, &unk_1001893B0, &unk_100121480);
}