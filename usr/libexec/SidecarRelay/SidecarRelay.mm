int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_autoreleasePoolPush();
  if (qword_100098B98 != -1)
  {
    swift_once();
  }

  objc_autoreleasePoolPop(v4);
  dispatch_main();
}

uint64_t sub_100001B68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__n128 sub_100001C04(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100001C14(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100001C34(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_100001CA0(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_100001CC4(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

void sub_100001D04(uint64_t a1@<X8>)
{
  sub_100001B60();
  *a1 = v2;
  *(a1 + 8) = v3 & 1;
}

Swift::Int sub_100001DCC(Swift::UInt a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_100001E24(uint64_t a1, Swift::UInt a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

void *sub_100001E74@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100001E84@<X0>(uint64_t *a1@<X8>)
{
  result = j___s15SidecarTimeSync5ClockC14heartbeatTimer33_52E478E0294A7D1A30B0593D640BE43CLLSo24OS_dispatch_source_timer_pSgvpfi();
  *a1 = result;
  return result;
}

uint64_t sub_100001EB8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100001B58(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_100001EE8(uint64_t a1)
{
  v2 = sub_1000022F0(a1);
  result = sub_1000496A4(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_100001F10@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100010C6C(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_100001F48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100001CA0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_100001F7C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100001CC4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_100001FC8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100001C98(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_100002044@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100001B68(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000020F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100002218(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100002238(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 128) = v3;
  return result;
}

void sub_100002298(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_100002300()
{

  return _swift_deallocClassInstance(v0, 33, 7);
}

uint64_t sub_10000235C()
{
  v0 = type metadata accessor for Logger();
  sub_1000034A4(v0, qword_100098FE0);
  sub_100003420(v0, qword_100098FE0);
  return Logger.init(subsystem:category:)();
}

id sub_1000023DC(char a1)
{
  v3 = qword_100098B40;
  v4 = v1;
  if (v3 != -1)
  {
    sub_100003508(&qword_100098B40);
  }

  v5 = type metadata accessor for Logger();
  sub_100003420(v5, qword_100098FE0);
  v6 = v4;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315394;
    swift_getObjectType();

    v11 = _typeName(_:qualified:)();
    v13 = sub_100014C58(v11, v12, &v16);

    *(v9 + 4) = v13;
    *(v9 + 12) = 1024;
    *(v9 + 14) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v7, v8, "Loading %s. 'logErrorsWhenCalled' is set to: [%{BOOL}d]", v9, 0x12u);
    sub_100003458(v10);
    sub_100003534(v10);
    sub_100003534(v9);
  }

  else
  {
  }

  *(v6 + OBJC_IVAR____TtC12SidecarRelay24SidecarRelayNullDelegate_logErrorsWhenCalled) = a1 & 1;
  v14 = type metadata accessor for SidecarRelayNullDelegate();
  v17.receiver = v6;
  v17.super_class = v14;
  return objc_msgSendSuper2(&v17, "init");
}

id sub_100002578(uint64_t a1, void *a2)
{
  _StringGuts.grow(_:)(24);
  swift_getObjectType();
  v5 = _typeName(_:qualified:)();
  v7 = v6;

  v21[0] = v5;
  v21[1] = v7;
  v8._countAndFlagsBits = 46;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  v9._countAndFlagsBits = a1;
  v9._object = a2;
  String.append(_:)(v9);
  sub_100003528();
  v10._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v10);
  v11 = v5;
  v12 = v7;
  if (*(v2 + OBJC_IVAR____TtC12SidecarRelay24SidecarRelayNullDelegate_logErrorsWhenCalled) == 1)
  {
    if (qword_100098B40 != -1)
    {
      sub_100003508(&qword_100098B40);
    }

    v13 = type metadata accessor for Logger();
    sub_100003420(v13, qword_100098FE0);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v21[0] = v17;
      *v16 = 136380675;
      *(v16 + 4) = sub_100014C58(v11, v12, v21);
      _os_log_impl(&_mh_execute_header, v14, v15, "%{private}s", v16, 0xCu);
      sub_100003458(v17);
      sub_100003534(v17);
      sub_100003534(v16);
    }
  }

  sub_1000033E0(0, &qword_100099030, NSError_ptr);
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return sub_10001E468(v18, v19, -999, v11, v12, 0);
}

id sub_1000027D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SidecarRelayNullDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000282C()
{
  sub_100003528();
  sub_100002578(0xD000000000000017, v0);
}

uint64_t sub_1000028B8()
{
  sub_100003528();
  sub_100002578(0xD000000000000021, v0);
}

uint64_t sub_100002944()
{
  sub_100003528();
  sub_100002578(0xD000000000000011, v0);
}

uint64_t sub_1000029E0()
{
  sub_100003528();
  sub_100002578(0xD000000000000012, v0);
}

uint64_t sub_100002A64()
{
  sub_100003528();
  sub_100002578(0xD000000000000025, v0);
}

uint64_t sub_100002B84()
{
  sub_100003528();
  sub_100002578(0xD000000000000016, v0);

  return 0;
}

void sub_100002C00(uint64_t a1, void (**a2)(void, void, void))
{
  sub_100002578(0xD000000000000032, 0x8000000100079CD0);
  sub_1000033E0(0, &unk_1000991F0, SidecarDisplaySendingDeviceSessionState_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v4 = _convertErrorToNSError(_:)();
  (a2)[2](a2, isa, v4);

  _Block_release(a2);
}

void sub_100002D24(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  sub_100002578(0xD00000000000004ELL, 0x8000000100079C80);
  v4 = _convertErrorToNSError(_:)();
  (a3)[2](a3, v4);

  _Block_release(a3);
}

void sub_100002DC4(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  sub_100002578(0xD000000000000051, 0x8000000100079C20);
  v4 = _convertErrorToNSError(_:)();
  (a3)[2](a3, v4);

  _Block_release(a3);
}

void sub_100002E64(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  sub_100002578(0xD000000000000033, 0x8000000100079BE0);
  v4 = _convertErrorToNSError(_:)();
  (a3)[2](a3, v4);

  _Block_release(a3);
}

uint64_t sub_100002F04(void *a1, uint64_t a2, uint64_t a3, const void *a4, void (*a5)(char *, id, void *))
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v12);
  v13 = a1;
  a5(v11, v13, v12);
  _Block_release(v12);

  return (*(v9 + 8))(v11, v8);
}

void sub_100003024(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  sub_100002578(0xD000000000000039, 0x8000000100079BA0);
  v5 = _convertErrorToNSError(_:)();
  (a4)[2](a4, v5);

  _Block_release(a4);
}

void sub_100003138(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  sub_100002578(0xD00000000000001ELL, 0x8000000100079B80);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = _convertErrorToNSError(_:)();
  (a4)[2](a4, isa, v6);

  _Block_release(a4);
}

uint64_t sub_100003284(uint64_t a1)
{
  sub_100003528();
  sub_100002578(0xD000000000000022, v1);
}

void sub_100003388(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

uint64_t sub_1000033E0(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100003420(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100003458(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t *sub_1000034A4(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100003508(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100003534(uint64_t a1)
{
}

uint64_t sub_10000354C()
{
  if (qword_100098BB0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003420(v0, qword_1000A1AE8);
  v1 = sub_100011F70();

  return v2(v1);
}

id sub_1000035F0(void *a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC12SidecarRelay6Client_sessionMap] = 0;
  v4 = OBJC_IVAR____TtC12SidecarRelay6Client_sessionIdentities;
  type metadata accessor for UUID();
  _s7SessionC8IdentityVMa(0);
  sub_100010CD8(&unk_100099180, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  *&v2[v4] = Dictionary.init(dictionaryLiteral:)();
  v5 = OBJC_IVAR____TtC12SidecarRelay6Client_streams;
  type metadata accessor for Relay.Session(0);
  sub_10000FC6C(&qword_10009AAE0, &qword_100076C10);
  sub_100010CD8(&unk_100099190, type metadata accessor for Relay.Session, &unk_100076874);
  *&v2[v5] = Dictionary.init(dictionaryLiteral:)();
  v6 = OBJC_IVAR____TtC12SidecarRelay6Client_streamListeners;
  sub_100010D20();
  *&v2[v6] = Dictionary.init(dictionaryLiteral:)();
  *&v2[OBJC_IVAR____TtC12SidecarRelay6Client_connection] = a1;
  v7 = a1;
  v8 = [v7 processIdentifier];
  *&v2[OBJC_IVAR____TtC12SidecarRelay6Client_processIdentifier] = v8;
  v34.receiver = v2;
  v34.super_class = type metadata accessor for Client();
  v9 = objc_msgSendSuper2(&v34, "init");
  v10 = objc_opt_self();
  v11 = v9;
  v12 = sub_100011E38();
  v14 = [v12 v13];
  [v7 setExportedInterface:v14];

  [v7 setExportedObject:v11];
  sub_10001203C();
  v15 = swift_allocObject();
  *(v15 + 16) = v11;
  v32 = sub_100010DA8;
  v33 = v15;
  v28 = _NSConcreteStackBlock;
  v29 = 1107296256;
  v30 = sub_100052C90;
  v31 = &unk_10008DDF8;
  v16 = _Block_copy(&v28);
  v17 = v11;

  [v7 setInterruptionHandler:v16];
  _Block_release(v16);
  sub_10001203C();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  v32 = sub_100010DC8;
  v33 = v18;
  v28 = _NSConcreteStackBlock;
  v29 = 1107296256;
  v30 = sub_100052C90;
  v31 = &unk_10008DE48;
  v19 = _Block_copy(&v28);
  v20 = v17;

  [v7 setInvalidationHandler:v19];
  _Block_release(v19);
  v21 = [v10 interfaceWithProtocol:&OBJC_PROTOCOL___SidecarCore_Interface];
  v22 = sub_100011F70();
  [v22 v23];

  sub_1000033E0(0, &qword_1000991A0, OS_dispatch_queue_ptr);
  v24 = static OS_dispatch_queue.main.getter();
  v25 = sub_100011F70();
  [v25 v26];

  [v7 resume];
  return v20;
}

void sub_100003A84()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  sub_100011C54();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100011D10();
  v8 = (v6 - v7);
  __chkstk_darwin(v9);
  v11 = &v27 - v10;
  v12 = OBJC_IVAR____TtC12SidecarRelay6Client_sessionMap;
  sub_100011D50();
  swift_beginAccess();
  if (*&v1[v12] && SidecarMapTableGetCount())
  {
    sub_100011F64();
    (*(v13 + 176))();
    v14 = v1;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (sub_100011EEC(v16))
    {
      v17 = sub_100012048();
      *v17 = 67109120;
      v17[1] = *&v14[OBJC_IVAR____TtC12SidecarRelay6Client_processIdentifier];

      sub_100011FD4(&_mh_execute_header, v18, v19, "PID %d: Terminated with Active Sessions");
      sub_100011CF4();
    }

    else
    {

      v15 = v14;
    }
  }

  else
  {
    sub_100011F64();
    (*(v20 + 176))();
    v21 = v1;
    v15 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (sub_100011EEC(v22))
    {
      v23 = sub_100012048();
      *v23 = 67109120;
      v23[1] = *&v21[OBJC_IVAR____TtC12SidecarRelay6Client_processIdentifier];

      sub_100011FD4(&_mh_execute_header, v24, v25, "PID %d: Terminated");
      sub_100011CF4();
    }

    else
    {

      v15 = v21;
    }

    v11 = v8;
  }

  (*(v4 + 8))(v11, v2);
  v26 = *&v1[OBJC_IVAR____TtC12SidecarRelay6Client_connection];
  [v26 invalidate];
  [v26 setExportedObject:0];
  if (qword_100098B98 != -1)
  {
    sub_100011C88(&qword_100098B98);
  }

  sub_10002087C();
}

void sub_100003D64(const char *a1, ...)
{
  sub_100011EA4();
  type metadata accessor for Logger();
  sub_100011C54();
  __chkstk_darwin(v4);
  sub_100011CBC();
  sub_100011D5C();
  (*(v5 + 176))();
  v6 = v1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (sub_100011EEC(v8))
  {
    v9 = sub_100012048();
    *v9 = 67109120;
    *(v9 + 4) = *(&v6->isa + OBJC_IVAR____TtC12SidecarRelay6Client_processIdentifier);

    _os_log_impl(&_mh_execute_header, v7, v3, v2, v9, 8u);
    sub_100011CF4();
  }

  else
  {

    v7 = v6;
  }

  v10 = sub_100011E98();
  v11(v10);
  sub_100003A84();
}

void sub_100003ECC(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_100006980(a1);
  if ((v7 & 1) == 0)
  {
    v8 = v6;
    v9 = a2[4];
    sub_10000FCB4(a2, a2[3]);
    v10 = sub_100011EC8();
    v12 = v11(v10, v9);
    if (v13 >> 60 != 15)
    {
      v14 = v12;
      v15 = v13;
      isa = Data._bridgeToObjectiveC()().super.isa;
      [v3 relaySession:v8 receivedOPACKData:isa dataLink:*(a1 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_dataLink)];

      sub_100011358(v14, v15);
    }
  }
}

uint64_t sub_100003FBC(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtC12SidecarRelay6Client_streams;
  sub_100011D50();
  swift_beginAccess();
  v9 = *(v3 + v8);
  if (*(v9 + 16) && (v10 = sub_1000392A0(), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v13 = a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1000388A8(0, v12[2] + 1, 1, v12);
    v12 = v19;
  }

  v15 = v12[2];
  v14 = v12[3];
  if (v15 >= v14 >> 1)
  {
    v20 = sub_100011EBC(v14);
    sub_1000388A8(v20, v15 + 1, 1, v12);
    v12 = v21;
  }

  v12[2] = v15 + 1;
  v16 = &v12[2 * v15];
  v16[4] = a1;
  v16[5] = v13;
  sub_100011E50();
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *(v4 + v8);
  sub_10003D388(v12, a3, isUniquelyReferenced_nonNull_native);
  *(v4 + v8) = v22;
  return swift_endAccess();
}

void sub_10000410C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      sub_1000033E0(0, &qword_100099030, NSError_ptr);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100011CE4();
      sub_100011CA8();
      v26 = sub_10001E468(v20, v21, v22, v23, v24, v25);
      sub_100011ED4(v26);
      return;
    }

    v7 = v5 + 2;
    v8 = *(v5 - 1);
    v9 = *v5;
    type metadata accessor for RapportStreamSession();
    v10 = static RapportRemoteDisplayDevice.== infix(_:_:)(v8, a1);
    v5 = v7;
  }

  while (!v10);
  v11 = v9;
  sub_100006980(a2);
  if (v12)
  {
    sub_1000033E0(0, &qword_100099030, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100011CE4();
    sub_100011CA8();
    v19 = sub_10001E468(v13, v14, v15, v16, v17, v18);
    sub_100011ED4(v19);
  }
}

uint64_t sub_100004258@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v32[0] = a4;
  v32[1] = a2;
  v34 = a1;
  v35 = sub_10000FC6C(&qword_100099208, &qword_1000757A0);
  v7 = __chkstk_darwin(v35);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v33 = v32 - v10;
  v11 = a3 + 64;
  v12 = 1 << *(a3 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a3 + 64);
  v15 = (v12 + 63) >> 6;
  v36 = a3;

  v17 = 0;
  if (v14)
  {
    while (1)
    {
      v37 = v5;
      v18 = v9;
      v19 = v17;
LABEL_9:
      v20 = __clz(__rbit64(v14)) | (v19 << 6);
      v21 = v36;
      v22 = *(v36 + 48);
      v23 = type metadata accessor for UUID();
      v24 = v33;
      (*(*(v23 - 8) + 16))(v33, v22 + *(*(v23 - 8) + 72) * v20, v23);
      v25 = *(v21 + 56);
      v26 = _s7SessionC8IdentityVMa(0);
      sub_100011490(v25 + *(*(v26 - 8) + 72) * v20, v24 + *(v35 + 48), _s7SessionC8IdentityVMa);
      v9 = v18;
      sub_1000115F8(v24, v18);
      v27 = v37;
      v28 = v34(v18);
      v5 = v27;
      if (v27)
      {
        sub_100011668(v18, &qword_100099208, &qword_1000757A0);
      }

      if (v28)
      {
        break;
      }

      v14 &= v14 - 1;
      result = sub_100011668(v18, &qword_100099208, &qword_1000757A0);
      v17 = v19;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    v31 = v32[0];
    sub_1000115F8(v9, v32[0]);
    v29 = v31;
    v30 = 0;
    return sub_10001137C(v29, v30, 1, v35);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v15)
      {

        v29 = v32[0];
        v30 = 1;
        return sub_10001137C(v29, v30, 1, v35);
      }

      v14 = *(v11 + 8 * v19);
      ++v17;
      if (v14)
      {
        v37 = v5;
        v18 = v9;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10000450C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12SidecarRelay6Client_streams;
  sub_100011D50();
  swift_beginAccess();
  v4 = *(v1 + v3);
  v7 = *(v4 + 64);
  v6 = v4 + 64;
  v5 = v7;
  v8 = 1 << *(*(v1 + v3) + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v29 = *(v1 + v3);

  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = (v14 << 9) | (8 * __clz(__rbit64(v10)));
      v16 = *(*(v29 + 48) + v15);
      v17 = *(*(v29 + 56) + v15);

      sub_10000410C(a1, v16, v17);
      if (v30)
      {

        return v2;
      }

      v2 = v18;
      v20 = v19;

      if (v20)
      {
        break;
      }

      v10 &= v10 - 1;

      v13 = v14;
      if (!v10)
      {
        goto LABEL_5;
      }
    }

    return v2;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {

        sub_1000033E0(0, &qword_100099030, NSError_ptr);
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_100011CE4();
        sub_100011CA8();
        v27 = sub_10001E468(v21, v22, v23, v24, v25, v26);
        sub_100011ED4(v27);
        return v2;
      }

      v10 = *(v6 + 8 * v14);
      ++v13;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000046E8()
{
  v4 = v0;
  sub_100011D68();
  v5 = OBJC_IVAR____TtC12SidecarRelay6Client_streams;
  sub_100011D50();
  result = swift_beginAccess();
  v7 = *(v0 + v5);
  if (*(v7 + 16))
  {
    result = sub_1000392A0();
    if (v8)
    {
      v31 = v5;
      v32 = v1;
      v33 = v4;
      v9 = *(*(v7 + 56) + 8 * result);
      v10 = *(v9 + 16);

      v11 = 0;
      v34 = _swiftEmptyArrayStorage;
      while (1)
      {
        while (1)
        {
          if (v10 == v11)
          {

            if (v34[2])
            {
              sub_100011E50();
              swift_beginAccess();
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v36 = *(v33 + v31);
              sub_10003D388(v34, v32, isUniquelyReferenced_nonNull_native);
              *(v33 + v31) = v36;
              return swift_endAccess();
            }

            else
            {

              sub_100011E50();
              swift_beginAccess();
              sub_10003BC1C(v32, v24, v25, v26, v27, v28, v29, v30, v31, v32);
              swift_endAccess();
            }
          }

          if (v11 >= *(v9 + 16))
          {
            __break(1u);
            return result;
          }

          v35 = *(v9 + 16 * v11 + 32);

          v12 = *(&v35 + 1);
          v13 = [v12 identifier];
          v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v16 = v15;

          if (v14 != v3 || v16 != v2)
          {
            break;
          }

LABEL_13:
          ++v11;
        }

        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v18)
        {

          goto LABEL_13;
        }

        v19 = v34;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_10003EC5C(0, v34[2] + 1, 1);
          v19 = v34;
        }

        v21 = v19[2];
        v20 = v19[3];
        if (v21 >= v20 >> 1)
        {
          v22 = sub_100011EBC(v20);
          result = sub_10003EC5C(v22, v21 + 1, 1);
          v19 = v34;
        }

        ++v11;
        v19[2] = v21 + 1;
        v34 = v19;
        *&v19[2 * v21 + 4] = v35;
      }
    }
  }

  return result;
}

void sub_100004974(uint64_t a1, void *a2)
{
  sub_100011E50();
  swift_beginAccess();
  sub_10003BC1C(a1, v4, v5, v6, v7, v8, v9, v10, v14, v15);
  swift_endAccess();

  sub_100006980(a1);
  if ((v11 & 1) == 0)
  {
    if (a2)
    {
      a2 = _convertErrorToNSError(_:)();
    }

    v12 = sub_100011F70();
    [v12 v13];
  }
}

uint64_t sub_100004A20(uint64_t a1, uint64_t a2, void *a3)
{
  sub_100027DA0();
  v10 = v5;
  v6._countAndFlagsBits = 15392;
  v6._object = 0xE200000000000000;
  String.append(_:)(v6);
  v7._countAndFlagsBits = a2;
  v7._object = a3;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 62;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  return v10;
}

uint64_t sub_100004AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 != a4)
  {
    return 0;
  }

  if (a2 == a5 && a3 == a6)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_100004ADC(uint64_t a1, Swift::UInt a2, uint64_t a3, uint64_t a4)
{
  Hasher._combine(_:)(a2);

  return String.hash(into:)();
}

Swift::Int sub_100004B30(Swift::UInt a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100004BB0(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  String.hash(into:)();
  return Hasher._finalize()();
}

void sub_100004C38()
{
  if ((*v0 - 1) < 3)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  sub_10000FE40(v1);
  if ((*(v0 + 8) & 2) != 0)
  {
    v2 = *RapportStreamFlags.lowLatency.unsafeMutableAddressor();
  }

  else
  {
    v2 = 0;
  }

  _StringGuts.grow(_:)(32);
  v3._countAndFlagsBits = 0x694C6D6165727453;
  v3._object = 0xEF2072656E657473;
  String.append(_:)(v3);
  sub_10000FC6C(&qword_100099168, &unk_100075750);
  _print_unlocked<A, B>(_:_:)();
  v4._countAndFlagsBits = 541869600;
  v4._object = 0xE400000000000000;
  String.append(_:)(v4);
  if (HIDWORD(v2))
  {
    __break(1u);
  }

  else
  {
    v5 = RPStreamFlagsCopyDescription(v2);
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9._countAndFlagsBits = v6;
    v9._object = v8;
    String.append(_:)(v9);

    v10._countAndFlagsBits = 0x2044495550202CLL;
    v10._object = 0xE700000000000000;
    String.append(_:)(v10);
    v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v11);
  }
}

void sub_100004E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100011FF4();
  a19 = v22;
  a20 = v23;
  v24 = v20;
  v26 = v25;
  v28 = v27;
  v29 = type metadata accessor for Logger();
  sub_100011C54();
  v31 = v30;
  __chkstk_darwin(v32);
  sub_100011CD4();
  v35 = v34 - v33;
  v36 = sub_100006980(v26);
  if (v37)
  {
    sub_1000033E0(0, &qword_100099030, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100011CE4();
    sub_100011CA8();
    sub_10001E468(v38, v39, v40, v41, v42, v43);
    swift_willThrow();
  }

  else
  {
    v44 = v36;
    v80 = v31;
    sub_1000033E0(0, &qword_10009A7E0, SidecarStream_ptr);
    sub_100011EC8();

    v46 = sub_100021034(v45);
    if (!v21)
    {
      v77 = v29;
      v78 = v46;
      v47 = [v46 identifier];
      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;

      v51 = OBJC_IVAR____TtC12SidecarRelay6Client_streamListeners;
      sub_100011D50();
      swift_beginAccess();
      v52 = *(v24 + v51);

      v79 = v26;
      sub_100020A8C(v52, v81, v26, v48, v50);

      if (v83)
      {
        v54 = v81[8];
        v53 = v82;
        swift_beginAccess();
        *(v28 + 32) = &off_10008DD98;
        swift_unknownObjectWeakAssign();
        RapportStreamSession.delegatedProcessUPID.setter(v53);
        v55 = 0;
        if ((v54 & 2) != 0)
        {
          v55 = *RapportStreamFlags.lowLatency.unsafeMutableAddressor();
        }

        v56 = *RapportStreamFlags.handoff.unsafeMutableAddressor();
        v57 = RapportStreamSession.streamFlags.getter();
        RapportStreamSession.streamFlags.setter(v56 | v55 | v57);
        v58 = sub_1000052A4(v44);
        v60 = v59;
        (*((swift_isaMask & *v24) + 0xB0))();

        v61 = Logger.logObject.getter();
        v62 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v61, v62))
        {
          sub_100011DE8();
          v63 = v58;
          v64 = swift_slowAlloc();
          sub_100011D78();
          a10 = swift_slowAlloc();
          *v64 = 136446466;
          v65 = v63;
          v26 = v79;
          v76 = v62;
          v66 = sub_100014C58(v65, v60, &a10);

          *(v64 + 4) = v66;
          *(v64 + 12) = 2082;
          v67 = RapportStreamSession.description.getter();
          v69 = sub_100014C58(v67, v68, &a10);

          *(v64 + 14) = v69;
          _os_log_impl(&_mh_execute_header, v61, v76, "%{public}s: Prepare %{public}s", v64, 0x16u);
          swift_arrayDestroy();
          sub_100011CF4();

          sub_100011CF4();
        }

        else
        {
        }

        (*(v80 + 8))(v35, v77);
        sub_100003FBC(v28, v78, v26);

        sub_100011668(v81, &unk_1000991C0, &qword_100075770);
      }

      else
      {
        sub_1000033E0(0, &qword_100099030, NSError_ptr);
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_100011CE4();
        sub_100011CA8();
        sub_10001E468(v70, v71, v72, v73, v74, v75);
        swift_willThrow();
      }
    }
  }

  sub_100011FBC();
}

uint64_t sub_1000052A4(uint64_t a1)
{
  sub_100011F50();
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 47;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  sub_100010C84();
  sub_100011EB0();
  v3._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
  String.append(_:)(v3);

  return v5;
}

void sub_10000535C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100011FF4();
  v5 = v3;
  v7 = v6;
  v8 = sub_10000FC6C(&qword_100099200, &qword_100075798);
  __chkstk_darwin(v8 - 8);
  v10 = &v80 - v9;
  v11 = sub_10000FC6C(&qword_1000991D8, &qword_100075780);
  __chkstk_darwin(v11 - 8);
  sub_100011D10();
  v14 = v12 - v13;
  __chkstk_darwin(v15);
  v94 = &v80 - v16;
  v17 = _s7SessionC8IdentityVMa(0);
  __chkstk_darwin(v17 - 8);
  sub_100011CD4();
  v20 = v19 - v18;
  v21 = type metadata accessor for Logger();
  sub_100011C54();
  v23 = v22;
  __chkstk_darwin(v24);
  sub_100011CD4();
  v89 = v26 - v25;
  v27 = RapportStreamSession.trafficFlags.getter();
  RapportStreamSession.trafficFlags.setter(v27 & 0xFFFFBDFF);
  v28 = sub_10000450C(v7);
  if (!v4)
  {
    v83 = v21;
    v84 = v23;
    v80 = v10;
    v81 = v14;
    v87 = v30;
    v88 = 0;
    v85 = v29;
    v86 = v20;
    v31 = sub_1000052A4(v28);
    v33 = v32;
    v34 = v89;
    (*((swift_isaMask & *v3) + 0xB0))();

    v35 = Logger.logObject.getter();
    v36 = v7;
    v37 = static os_log_type_t.default.getter();

    v38 = os_log_type_enabled(v35, v37);
    v82 = v36;
    if (v38)
    {
      sub_100011DE8();
      v39 = swift_slowAlloc();
      sub_100011D78();
      v90[0] = swift_slowAlloc();
      *v39 = 136446466;
      v40 = sub_100014C58(v31, v33, v90);

      *(v39 + 4) = v40;
      *(v39 + 12) = 2082;
      v41 = RapportStreamSession.description.getter();
      v43 = sub_100014C58(v41, v42, v90);

      *(v39 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v35, v37, "%{public}s: Accept %{public}s", v39, 0x16u);
      swift_arrayDestroy();
      sub_100011CF4();

      sub_100011CF4();
    }

    else
    {
    }

    (*(v84 + 8))(v34, v83);
    v44 = v85;

    v45 = v87;
    v46 = [v87 identifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v47;

    sub_100011E50();
    swift_beginAccess();
    v49 = sub_100011F38();
    sub_10003BEE8(v49, v50, v48, v51);
    swift_endAccess();
    v52 = v92;
    v53 = v86;
    if (v92)
    {
      v89 = v93;
      sub_100011490(v44 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_identity, v86, _s7SessionC8IdentityVMa);

      v54 = OBJC_IVAR____TtC12SidecarRelay6Client_sessionIdentities;
      sub_100011D50();
      v55 = swift_beginAccess();
      v56 = *(v5 + v54);
      __chkstk_darwin(v55);
      v79 = v53;

      v57 = v80;
      v58 = v88;
      sub_100004258(sub_100011578, (&v80 - 4), v56, v80);
      v88 = v58;

      v59 = sub_10000FC6C(&qword_100099208, &qword_1000757A0);
      if (sub_1000113A4(v57, 1, v59) == 1)
      {
        sub_100011668(v57, &qword_100099200, &qword_100075798);
        v60 = type metadata accessor for UUID();
        sub_10001137C(v94, 1, 1, v60);
      }

      else
      {
        v68 = *(v59 + 48);
        v60 = type metadata accessor for UUID();
        sub_100011D00();
        v69 = sub_100011DFC();
        v70(v69);
        sub_10001137C(v94, 0, 1, v60);
        sub_100011D38();
        sub_1000113CC(v57 + v68, v71);
      }

      v72 = v81;
      sub_100011598(v94, v81, &qword_1000991D8, &qword_100075780);
      type metadata accessor for UUID();
      if (sub_1000113A4(v72, 1, v60) == 1)
      {
        sub_100011668(v72, &qword_1000991D8, &qword_100075780);
        v73 = 0;
        v74 = 0;
      }

      else
      {
        v73 = UUID.uuidString.getter();
        v74 = v75;
        (*(*(v60 - 8) + 8))(v72, v60);
      }

      RapportStreamSession.trafficSessionID.setter(v73, v74);
      sub_100011598(v91, v90, &unk_1000991C0, &qword_100075770);
      v76 = v87;
      v77 = v87;
      v52(v76, 0);

      sub_100011668(v91, &unk_1000991C0, &qword_100075770);

      sub_100011668(v91, &unk_1000991C0, &qword_100075770);
      sub_100011668(v94, &qword_1000991D8, &qword_100075780);
      sub_100011D38();
      sub_1000113CC(v53, v78);
    }

    else
    {
      sub_1000033E0(0, &qword_100099030, NSError_ptr);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100011CE4();
      sub_100011CA8();
      v67 = sub_10001E468(v61, v62, v63, v64, v65, v66);
      sub_100011ED4(v67);
    }
  }

  sub_100011FBC();
}

uint64_t sub_100005AA8(uint64_t a1, uint64_t a2)
{
  v3 = a1 + *(sub_10000FC6C(&qword_100099208, &qword_1000757A0) + 48);
  if ((static UUID.== infix(_:_:)() & 1) != 0 && (v4 = _s7SessionC8IdentityVMa(0), *(v3 + *(v4 + 20)) == *(a2 + *(v4 + 20))))
  {
    v5 = *(v3 + *(v4 + 24)) ^ *(a2 + *(v4 + 24)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_100005B44(uint64_t a1)
{
  v1 = sub_10000450C(a1);

  return sub_1000052A4(v1);
}

void sub_100005BCC(uint64_t a1, const char *a2, ...)
{
  sub_100011DD0();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for Logger();
  sub_100011C54();
  __chkstk_darwin(v7);
  sub_100011CBC();
  v8 = sub_100005B44(v5);
  v10 = v9;
  sub_100011D5C();
  (*(v11 + 176))();

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    sub_100011DE8();
    v21 = v3;
    v14 = swift_slowAlloc();
    sub_100011D78();
    v22 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = sub_100014C58(v8, v10, &v22);

    *(v14 + 4) = v15;
    *(v14 + 12) = 2082;
    v16 = RapportStreamSession.description.getter();
    v18 = sub_100014C58(v16, v17, &v22);

    *(v14 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, v21, v14, 0x16u);
    swift_arrayDestroy();
    sub_100011CF4();

    sub_100011CF4();

    v19 = sub_100011E44();
  }

  else
  {

    v19 = sub_100011E44();
  }

  v20(v19, v6);
  sub_100011DB8();
}

void sub_100005DE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100011DD0();
  sub_100011EA4();
  v4 = type metadata accessor for Logger();
  sub_100011C54();
  __chkstk_darwin(v5);
  sub_100011CBC();
  sub_100005B44(v3);
  sub_100011D5C();
  (*(v6 + 176))();

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    sub_100011DE8();
    v18 = v4;
    v9 = swift_slowAlloc();
    sub_100011D78();
    v19 = swift_slowAlloc();
    sub_100011F9C(4.8752e-34);
    sub_100011EC8();

    sub_100011E88();
    v10 = RapportStreamSession.description.getter();
    v12 = sub_100014C58(v10, v11, &v19);

    *(v9 + 14) = v12;
    sub_100011F7C(&_mh_execute_header, v13, v14, "%{public}s: Received Message %{public}s");
    sub_100011F08();
    sub_100011CF4();

    sub_100011CF4();

    v15 = sub_100011E44();
    v17 = v18;
  }

  else
  {

    v15 = sub_100011E44();
    v17 = v4;
  }

  v16(v15, v17);
  sub_100011DB8();
}

void sub_100005FC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100011DD0();
  sub_100011EA4();
  v4 = type metadata accessor for Logger();
  sub_100011C54();
  __chkstk_darwin(v5);
  sub_100011CBC();
  sub_100005B44(v3);
  sub_100011D5C();
  (*(v6 + 176))();

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    sub_100011DE8();
    v18 = v4;
    v9 = swift_slowAlloc();
    sub_100011D78();
    v19 = swift_slowAlloc();
    sub_100011F9C(4.8752e-34);
    sub_100011EC8();

    sub_100011E88();
    v10 = RapportStreamSession.description.getter();
    v12 = sub_100014C58(v10, v11, &v19);

    *(v9 + 14) = v12;
    sub_100011F7C(&_mh_execute_header, v13, v14, "%{public}s: Received Request %{public}s");
    sub_100011F08();
    sub_100011CF4();

    sub_100011CF4();

    v15 = sub_100011E44();
    v17 = v18;
  }

  else
  {

    v15 = sub_100011E44();
    v17 = v4;
  }

  v16(v15, v17);
  sub_100011DB8();
}

void sub_10000619C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100011DD0();
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for Logger();
  sub_100011C54();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_100011D10();
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  v14 = sub_10000450C(v6);
  v16 = v15;
  v35 = v7;

  v33 = sub_1000052A4(v14);
  v18 = v17;
  v34 = RapportStreamSession.statusFlags.getter();
  sub_100011F64();
  (*(v19 + 176))();

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    sub_100011DE8();
    v22 = swift_slowAlloc();
    v32 = v16;
    v23 = v22;
    sub_100011D78();
    v24 = swift_slowAlloc();
    v31 = v14;
    v36[0] = v24;
    *v23 = 136446466;
    v25 = sub_100014C58(v33, v18, v36);

    *(v23 + 4) = v25;
    *(v23 + 12) = 2082;
    v26 = RapportStreamSession.description.getter();
    v28 = sub_100014C58(v26, v27, v36);

    *(v23 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v20, v21, "%{public}s: Status Changed %{public}s", v23, 0x16u);
    swift_arrayDestroy();
    v14 = v31;
    sub_100011CF4();

    v16 = v32;
    sub_100011CF4();
  }

  else
  {
  }

  (*(v9 + 8))(v13, v35);
  v29 = [v16 identifier];
  if (!v29)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = String._bridgeToObjectiveC()();
  }

  [v4 relaySession:v14 stream:v29 status:v34];

  sub_100011DB8();
}

uint64_t sub_100006560(uint64_t a1, uint64_t a2)
{
  _StringGuts.grow(_:)(18);

  v3._object = 0x800000010007A240;
  v3._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v3);
  return a1;
}

void sub_1000065E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100011DD0();
  v4 = v3;
  v5 = type metadata accessor for Logger();
  sub_100011C54();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_100011D10();
  __chkstk_darwin(v9);
  v11 = v25 - v10;
  v12 = sub_10000450C(v4);

  v14 = sub_1000052A4(v12);
  v16 = v15;
  sub_100011D5C();
  (*(v17 + 176))();

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    sub_100011DE8();
    v20 = v14;
    v21 = swift_slowAlloc();
    sub_100011D78();
    v25[0] = swift_slowAlloc();
    *v21 = 136446466;
    sub_100014C58(v20, v16, v25);
    sub_100011EC8();

    sub_100011E88();
    v22 = RapportStreamSession.description.getter();
    v24 = sub_100014C58(v22, v23, v25);

    *(v21 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v18, v19, "%{public}s: Connection Ready %{public}s", v21, 0x16u);
    sub_100011F08();
    sub_100011CF4();

    sub_100011CF4();
  }

  else
  {
  }

  (*(v7 + 8))(v11, v5);
  sub_100011DB8();
}

uint64_t sub_1000068FC(uint64_t a1, uint64_t a2)
{
  _StringGuts.grow(_:)(20);

  v3._object = 0x800000010007A220;
  v3._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v3);
  return a1;
}

uint64_t sub_100006980(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC12SidecarRelay6Client_sessionMap;
  sub_100011D50();
  swift_beginAccess();
  result = *(v1 + v2);
  if (result)
  {
    return SidecarMapTableGetHandle();
  }

  return result;
}

void sub_1000069E8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (*v2)
  {
    v6 = *v2;
  }

  else
  {
    v4 = SidecarMapTableCreateStrong();
    *v2 = v4;
    v6 = v4;
    v3 = 0;
  }

  v5 = v3;
  SidecarMapTableReplaceObject();
}

id sub_100006A70(id a1)
{
  v3 = OBJC_IVAR____TtC12SidecarRelay6Client_sessionMap;
  sub_100011D50();
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v4;
  v6 = SidecarMapTableGetObject();
  if (v6)
  {
    a1 = v6;
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    sub_100011558(v16, v17);
  }

  else
  {

    memset(v17, 0, sizeof(v17));
  }

  sub_10000FC6C(&qword_10009B0C0, &qword_100075790);
  v7 = sub_100011EA4();
  type metadata accessor for Relay.Session(v7);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v18 = 0;

LABEL_9:
    sub_1000033E0(0, &qword_100099030, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100011CE4();
    sub_100011CA8();
    v14 = sub_10001E468(v8, v9, v10, v11, v12, v13);
    sub_100011ED4(v14);
    return a1;
  }

  a1 = v18;

  if (!a1)
  {
    goto LABEL_9;
  }

  return a1;
}

uint64_t sub_100006BBC(uint64_t a1)
{
  sub_100011E50();
  swift_beginAccess();
  v1 = sub_100006C78();
  swift_endAccess();
  if (!v1)
  {
    v1 = sub_1000033E0(0, &qword_100099030, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100011CE4();
    sub_100011CA8();
    v8 = sub_10001E468(v2, v3, v4, v5, v6, v7);
    sub_100011ED4(v8);
  }

  return v1;
}

uint64_t sub_100006C78()
{
  if (!*v0)
  {
    return 0;
  }

  v1 = *v0;
  if (SidecarMapTableRemoveObject())
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100011558(&v4, v5);
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  sub_10000FC6C(&qword_10009B0C0, &qword_100075790);
  type metadata accessor for Relay.Session(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *&v4 = 0;
  }

  Count = SidecarMapTableGetCount();

  if (!Count)
  {

    *v0 = 0;
  }

  return v4;
}

id sub_100006DA0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Client();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100006E8C()
{
  v1 = [*(v0 + OBJC_IVAR____TtC12SidecarRelay6Client_connection) remoteObjectProxy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10000FC6C(&qword_100099178, &unk_100075760);
  swift_dynamicCast();
  return v3;
}

void sub_100006F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100006E8C();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  sub_100011E98();
  v7 = String._bridgeToObjectiveC()();
  [v5 relaySession:isa openedByDevice:a2 dataLink:a3 service:v7];
  swift_unknownObjectRelease();
}

void sub_100007100(uint64_t a1, uint64_t a2)
{
  sub_100011DD0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for Logger();
  sub_100011C54();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100011D10();
  v14 = v12 - v13;
  __chkstk_darwin(v15);
  v17 = &v36 - v16;
  v38 = v7;
  v18 = sub_1000052A4(v7);
  v20 = v19;
  if (v5)
  {
    v21 = *((swift_isaMask & *v3) + 0xB0);
    v22 = swift_errorRetain();
    v23 = v21(v22);
    __chkstk_darwin(v23);
    sub_100011D98();
    *(v24 - 16) = v18;
    *(v24 - 8) = v20;
    __chkstk_darwin(v25);
    sub_100011DA8();
    *(v26 - 16) = v5;
    sub_100016F18(sub_100011550, v27, sub_100011C20);

    (*(v10 + 8))(v17, v8);
  }

  else
  {
    (*((swift_isaMask & *v3) + 0xB0))();

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = sub_100012024();
      v37 = v28;
      v32 = v31;
      v39 = v31;
      *v30 = 136446210;
      v33 = sub_100014C58(v18, v20, &v39);

      *(v30 + 4) = v33;
      v34 = v37;
      _os_log_impl(&_mh_execute_header, v37, v29, "%{public}s: Closing Session", v30, 0xCu);
      sub_100003458(v32);
      sub_100011CF4();

      sub_100011CF4();
    }

    else
    {
    }

    (*(v10 + 8))(v14, v8);
  }

  v35 = sub_100006E8C();
  if (v5)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  [v35 relaySession:v38 closedWithError:v5];
  swift_unknownObjectRelease();

  sub_100011DB8();
}

uint64_t sub_100007420(uint64_t a1, uint64_t a2)
{
  _StringGuts.grow(_:)(19);

  v3._object = 0x800000010007A200;
  v3._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v3);
  return a1;
}

void sub_100007510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100011DD0();
  v5 = v3;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sub_100011EA4();
  v12 = type metadata accessor for Logger();
  sub_100011C54();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_100011CD4();
  v18 = v17 - v16;
  v19 = sub_1000052A4(v4);
  if (v7 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v7 > 0x7FFFFFFF)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    JUMPOUT(0x100007878);
  }

  v21 = v20;
  v42 = v19;
  v43 = v14;
  v44 = v12;
  v22 = RPDataLinkTypeCopyDescription(v7);
  v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  (*((swift_isaMask & *v5) + 0xB0))();

  v25 = sub_100011F38();
  sub_100010E78(v25, v26);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = sub_100012024();
    sub_100011D78();
    v45 = swift_slowAlloc();
    *v29 = 136446722;
    v30 = sub_100014C58(v42, v21, &v45);

    *(v29 + 4) = v30;
    *(v29 + 12) = 2048;
    v31 = 0;
    switch(v9 >> 62)
    {
      case 1uLL:
        LODWORD(v31) = HIDWORD(v11) - v11;
        if (__OFSUB__(HIDWORD(v11), v11))
        {
          goto LABEL_14;
        }

        v31 = v31;
LABEL_10:
        *(v29 + 14) = v31;
        sub_100003388(v11, v9);
        *(v29 + 22) = 2082;
        v37 = sub_100014C58(v41, v24, &v45);

        *(v29 + 24) = v37;
        _os_log_impl(&_mh_execute_header, v27, v28, "%{public}s: Received %ld bytes [%{public}s]", v29, 0x20u);
        swift_arrayDestroy();
        sub_100011CF4();

        sub_100011CF4();

        (*(v43 + 8))(v18, v44);
        break;
      case 2uLL:
        v35 = *(v11 + 16);
        v34 = *(v11 + 24);
        v36 = __OFSUB__(v34, v35);
        v31 = v34 - v35;
        if (!v36)
        {
          goto LABEL_10;
        }

        goto LABEL_15;
      case 3uLL:
        goto LABEL_10;
      default:
        v31 = BYTE6(v9);
        goto LABEL_10;
    }
  }

  else
  {

    v32 = sub_100011F38();
    sub_100003388(v32, v33);

    (*(v43 + 8))(v18, v44);
  }

  sub_100006E8C();
  sub_100011F38();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v39 = sub_100011E38();
  [v39 v40];
  swift_unknownObjectRelease();

  sub_100011DB8();
}

void sub_100007928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100011D68();
  v6 = sub_100006E8C();
  v7 = String._bridgeToObjectiveC()();
  [v6 relaySession:v4 stream:v7 status:a4];
  swift_unknownObjectRelease();
}

void sub_100007A34(uint64_t a1, uint64_t a2)
{
  sub_100011DD0();
  type metadata accessor for Logger();
  sub_100011C54();
  __chkstk_darwin(v3);
  sub_100011CBC();
  sub_100011D5C();
  (*(v4 + 176))();
  v5 = v2;

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v14 = sub_100012024();
    *v8 = 67109378;
    *(v8 + 4) = *&v5[OBJC_IVAR____TtC12SidecarRelay6Client_processIdentifier];

    *(v8 + 8) = 2082;
    v9 = sub_100011DFC();
    *(v8 + 10) = sub_100014C58(v9, v10, v11);
    _os_log_impl(&_mh_execute_header, v6, v7, "PID %d: Starting Service Extension '%{public}s' - NOT A PRESENTER", v8, 0x12u);
    sub_100003458(v14);
    sub_100011CF4();

    sub_100011CF4();
  }

  else
  {
  }

  v12 = sub_100011E98();
  v13(v12);
  sub_100011DB8();
}

uint64_t sub_100007CA4()
{
  type metadata accessor for Logger();
  sub_100011C54();
  __chkstk_darwin(v1);
  sub_100011CBC();
  sub_100011D5C();
  (*(v2 + 176))();
  v3 = v0;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = sub_100012048();
    *v6 = 67109120;
    *(v6 + 4) = *(&v3->isa + OBJC_IVAR____TtC12SidecarRelay6Client_processIdentifier);

    _os_log_impl(&_mh_execute_header, v4, v5, "PID %d: Terminate Service", v6, 8u);
    sub_100011CF4();
  }

  else
  {

    v4 = v3;
  }

  v7 = sub_100011E98();
  v8(v7);
  [sub_100006E8C() relayTerminateService];
  return swift_unknownObjectRelease();
}

uint64_t sub_100007EAC(const void *a1, uint64_t a2)
{
  if (qword_100098B98 != -1)
  {
    sub_100011C88(&qword_100098B98);
  }

  v4 = *(qword_1000A1AE0 + 56);
  result = [v4 respondsToSelector:"fetchRemoteDisplaySendingDeviceStatesWithCompletion:"];
  if (result)
  {
    v6[4] = a1;
    v6[5] = a2;
    sub_100011C68();
    v6[1] = 1107296256;
    v6[2] = sub_100007F88;
    v6[3] = &unk_10008E1E0;
    _Block_copy(v6);
    sub_100011F44();

    [v4 fetchRemoteDisplaySendingDeviceStatesWithCompletion:a1];
    _Block_release(a1);
  }

  return result;
}

void sub_100007F88(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  sub_1000033E0(0, &unk_1000991F0, SidecarDisplaySendingDeviceSessionState_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = a3;
  v4(v5, a3);
}

void sub_1000080F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100011DD0();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = type metadata accessor for UUID();
  sub_100011C54();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_100011CD4();
  v19 = v18 - v17;
  v20 = _Block_copy(v10);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10001203C();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  v22 = v12;
  sub_100008214(v19, v8, v21, v6, v4);

  (*(v15 + 8))(v19, v13);
  sub_100011DB8();
}

uint64_t sub_100008214(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4, uint64_t a5)
{
  if (qword_100098B98 != -1)
  {
    sub_100011C88(&qword_100098B98);
  }

  v9 = *(qword_1000A1AE0 + 56);
  result = [v9 respondsToSelector:*a4];
  if (result)
  {
    swift_unknownObjectRetain();
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v14[4] = a2;
    v14[5] = a3;
    sub_100011C68();
    sub_100011D20();
    v14[2] = v12;
    v14[3] = a5;
    v13 = _Block_copy(v14);

    [v9 *a4];
    swift_unknownObjectRelease();
    _Block_release(v13);
  }

  return result;
}

uint64_t sub_10000833C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100011D68();
  if (qword_100098B98 != -1)
  {
    sub_100011C88(&qword_100098B98);
  }

  result = [*(qword_1000A1AE0 + 56) respondsToSelector:"fetchDeviceReadinessStatusWithIDSIdentifier:completion:"];
  if (result)
  {
    swift_unknownObjectRetain();
    sub_100011DFC();
    v7 = String._bridgeToObjectiveC()();
    v11[4] = v4;
    v11[5] = a4;
    sub_100011C68();
    sub_100011D20();
    v11[2] = v8;
    v11[3] = &unk_10008E0F0;
    _Block_copy(v11);
    sub_100011F44();

    v9 = sub_100011E38();
    [v9 v10];
    swift_unknownObjectRelease();
    _Block_release(v4);
  }

  return result;
}

uint64_t sub_1000084E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100011D68();
  if (qword_100098B98 != -1)
  {
    sub_100011C88(&qword_100098B98);
  }

  result = [*(qword_1000A1AE0 + 56) respondsToSelector:"sendDataRequest:completion:"];
  if (result)
  {
    swift_unknownObjectRetain();
    sub_100011DFC();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v10[4] = v4;
    v10[5] = a4;
    sub_100011C68();
    v10[1] = 1107296256;
    v10[2] = sub_10001C2F8;
    v10[3] = &unk_10008E0A0;
    _Block_copy(v10);
    sub_100011F44();

    v8 = sub_100011E38();
    [v8 v9];
    swift_unknownObjectRelease();
    _Block_release(v4);
  }

  return result;
}

void sub_1000086E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100011DD0();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = type metadata accessor for Logger();
  sub_100011C54();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_100011CD4();
  v17 = v16 - v15;
  sub_1000033E0(0, &qword_100099030, NSError_ptr);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100011CA8();
  v24 = sub_10001E468(v18, v19, v20, v21, v22, v23);
  (*((swift_isaMask & *v10) + 0xB0))();
  v27[2] = v10;
  sub_100016F18(v6, v27, v4);
  (*(v13 + 8))(v17, v11);
  v25 = v24;
  v26 = _convertErrorToNSError(_:)();
  (v8)[2](v8, v26);

  _Block_release(v8);
  sub_100011DB8();
}

uint64_t sub_10000889C()
{
  sub_100011F50();
  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  return v2;
}

void sub_100008934(void *a1, int a2, void *aBlock, uint64_t a4)
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  sub_1000086E8(v7, v6, a4);
  _Block_release(v6);
}

void sub_1000089C0(uint64_t a1, void *a2, void (**a3)(void, void))
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *a2) + 0xB0))(v8);
  v11 = a2;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67109376;
    *(v14 + 4) = *(&v11->isa + OBJC_IVAR____TtC12SidecarRelay6Client_processIdentifier);

    *(v14 + 8) = 2048;
    *(v14 + 10) = a1;
    _os_log_impl(&_mh_execute_header, v12, v13, "PID %d: Service Presenter Ready (%lx) - NOT A PRESENTER", v14, 0x12u);
  }

  else
  {

    v12 = v11;
  }

  (*(v7 + 8))(v10, v6);
  sub_1000033E0(0, &qword_100099030, NSError_ptr);
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = sub_10001E468(v15, v16, -1001, 0, 0, 0);
  v18 = _convertErrorToNSError(_:)();
  (a3)[2](a3, v18);

  _Block_release(a3);
}

void sub_100008C2C(uint64_t a1, uint64_t a2)
{
  sub_100011DD0();
  v32 = v3;
  v5 = v4;
  v6 = type metadata accessor for UUID();
  sub_100011C54();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_100011CD4();
  v12 = v11 - v10;
  v13 = type metadata accessor for Logger();
  sub_100011C54();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_100011CD4();
  v19 = v18 - v17;
  sub_100011D5C();
  (*(v20 + 176))();
  (*(v8 + 16))(v12, v5, v6);
  v21 = v2;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v31 = v13;
    v24 = swift_slowAlloc();
    v30 = v15;
    v25 = sub_100012024();
    v33 = v25;
    *v24 = 67109378;
    *(v24 + 4) = *&v21[OBJC_IVAR____TtC12SidecarRelay6Client_processIdentifier];

    *(v24 + 8) = 2082;
    v26 = UUID.uuidString.getter();
    v28 = v27;
    (*(v8 + 8))(v12, v6);
    v29 = sub_100014C58(v26, v28, &v33);

    *(v24 + 10) = v29;
    _os_log_impl(&_mh_execute_header, v22, v23, v32, v24, 0x12u);
    sub_100003458(v25);
    sub_100011CF4();

    sub_100011CF4();

    (*(v30 + 8))(v19, v31);
  }

  else
  {

    (*(v8 + 8))(v12, v6);
    (*(v15 + 8))(v19, v13);
  }

  sub_100011DB8();
}

uint64_t sub_100008EE8(void *a1, uint64_t a2, uint64_t a3, const char *a4, ...)
{
  type metadata accessor for UUID();
  sub_100011C54();
  __chkstk_darwin(v6);
  sub_100011CD4();
  v9 = v8 - v7;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a1;
  sub_100008C2C(v9, a4);

  v11 = sub_100011DFC();
  return v12(v11);
}

void sub_100008FC0(uint64_t a1, void (**a2)(void, void))
{
  a2[2](a2, 0);

  _Block_release(a2);
}

void sub_100009020(uint64_t a1, unint64_t a2, void *a3, void (**a4)(void, Class, void))
{
  v26 = a4;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *a3) + 0xB0))(v9);
  v12 = a3;

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v28 = v16;
    *v15 = 67109378;
    *(v15 + 4) = *(v12 + OBJC_IVAR____TtC12SidecarRelay6Client_processIdentifier);

    *(v15 + 8) = 2082;
    *(v15 + 10) = sub_100014C58(a1, a2, &v28);
    _os_log_impl(&_mh_execute_header, v13, v14, "PID %d: '%{public}s'", v15, 0x12u);
    sub_100003458(v16);
  }

  else
  {
  }

  (*(v8 + 8))(v11, v7);
  v17 = a1 == 42 && a2 == 0xE100000000000000;
  if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (qword_100098B98 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

  if (qword_100098B98 != -1)
  {
LABEL_26:
    swift_once();
  }

LABEL_12:
  v18 = sub_100021270();
  v27 = _swiftEmptyArrayStorage;
  v28 = _swiftEmptyArrayStorage;
  v19 = sub_1000388A4(v18);
  v20 = 0;
  while (v19 != v20)
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v21 = *(v18 + 8 * v20 + 32);
    }

    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    sub_1000033E0(0, &unk_100099AE0, SidecarDevice_ptr);
    ++v20;
    if (sub_100058458(v21))
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v27 = v28;
      v20 = v22;
    }
  }

  sub_1000033E0(0, &unk_100099AE0, SidecarDevice_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v24 = v26;
  v26[2](v26, isa, 0);

  _Block_release(v24);
}

void sub_1000094D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, uint64_t a8)
{
  v163 = a8;
  v153 = a6;
  v167 = a5;
  v156 = a4;
  v165 = a3;
  v162 = _s7SessionC8IdentityVMa(0);
  v11 = __chkstk_darwin(v162);
  v139 = &v138 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v141 = &v138 - v14;
  __chkstk_darwin(v13);
  v143 = &v138 - v15;
  v16 = sub_10000FC6C(&unk_1000991E0, &qword_100075788);
  v17 = __chkstk_darwin(v16 - 8);
  v144 = &v138 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v151 = &v138 - v20;
  v21 = __chkstk_darwin(v19);
  v146 = &v138 - v22;
  __chkstk_darwin(v21);
  v168 = &v138 - v23;
  v24 = type metadata accessor for Logger();
  v169 = *(v24 - 8);
  v170 = v24;
  v25 = __chkstk_darwin(v24);
  v152 = &v138 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v142 = &v138 - v28;
  v29 = __chkstk_darwin(v27);
  v155 = &v138 - v30;
  __chkstk_darwin(v29);
  v160 = (&v138 - v31);
  v32 = sub_10000FC6C(&qword_1000991D8, &qword_100075780);
  v33 = __chkstk_darwin(v32 - 8);
  v157 = &v138 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v36 = &v138 - v35;
  v37 = type metadata accessor for UUID();
  v38 = *(v37 - 8);
  v39 = __chkstk_darwin(v37);
  v149 = &v138 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v39);
  v158 = &v138 - v42;
  __chkstk_darwin(v41);
  v154 = &v138 - v43;
  v44 = type metadata accessor for SidecarIdentity(0);
  v45 = __chkstk_darwin(v44 - 8);
  v47 = &v138 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __chkstk_darwin(v45);
  v50 = &v138 - v49;
  __chkstk_darwin(v48);
  v52 = &v138 - v51;
  v150 = a1;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v54 = sub_100010F24(isa);

  v140 = v54;
  v55 = v38;
  v164 = sub_1000052A4(v54);
  v57 = v56;
  v58 = *(v55 + 16);
  v148 = v55 + 16;
  v147 = v58;
  v58(v52, v167, v37);
  v159 = a2;
  sub_100011598(a2, v36, &qword_1000991D8, &qword_100075780);
  v59 = sub_1000113A4(v36, 1, v37);
  v166 = v52;
  v167 = a7;
  v161 = v57;
  if (v59 == 1)
  {
    v145 = v55;
    v60 = sub_100011668(v36, &qword_1000991D8, &qword_100075780);
    (*((swift_isaMask & *a7) + 0xB0))(v60);
    sub_100011490(v52, v47, type metadata accessor for SidecarIdentity);

    v61 = v156;

    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v172 = swift_slowAlloc();
      *v64 = 136446722;
      *(v64 + 4) = sub_100014C58(v164, v57, &v172);
      *(v64 + 12) = 2082;
      v65 = sub_100052008();
      v67 = v66;
      sub_1000113CC(v47, type metadata accessor for SidecarIdentity);
      v68 = sub_100014C58(v65, v67, &v172);

      *(v64 + 14) = v68;
      *(v64 + 22) = 2082;
      *(v64 + 24) = sub_100014C58(v165, v61, &v172);
      _os_log_impl(&_mh_execute_header, v62, v63, "%{public}s: Connecting to %{public}s '%{public}s'", v64, 0x20u);
      swift_arrayDestroy();
      v52 = v166;
    }

    else
    {

      sub_1000113CC(v47, type metadata accessor for SidecarIdentity);
    }

    v160 = *(v169 + 8);
    v160(v155, v170);
    v80 = v162;
    v81 = v37;
    v55 = v145;
  }

  else
  {
    (*(v55 + 32))(v154, v36, v37);
    v69 = UUID._bridgeToObjectiveC()().super.isa;
    v155 = sub_100010F24(v69);

    (*((swift_isaMask & *a7) + 0xB0))();
    sub_100011490(v52, v50, type metadata accessor for SidecarIdentity);

    v61 = v156;

    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v145 = v55;
      v172 = v73;
      *v72 = 136446978;
      *(v72 + 4) = sub_100014C58(v164, v57, &v172);
      *(v72 + 12) = 2082;
      v74 = sub_100052008();
      v75 = v61;
      v77 = v76;
      sub_1000113CC(v50, type metadata accessor for SidecarIdentity);
      v78 = sub_100014C58(v74, v77, &v172);
      v61 = v75;

      *(v72 + 14) = v78;
      *(v72 + 22) = 2082;
      *(v72 + 24) = sub_100014C58(v165, v75, &v172);
      *(v72 + 32) = 2048;
      *(v72 + 34) = v155;
      _os_log_impl(&_mh_execute_header, v70, v71, "%{public}s: Reconnecting to %{public}s '%{public}s' (%lx)", v72, 0x2Au);
      swift_arrayDestroy();

      v52 = v166;

      v79 = v160;
      v160 = *(v169 + 8);
      v160(v79, v170);
      v55 = v145;
      (*(v145 + 8))(v154, v37);
    }

    else
    {

      sub_1000113CC(v50, type metadata accessor for SidecarIdentity);
      v82 = v160;
      v160 = *(v169 + 8);
      v160(v82, v170);
      (*(v55 + 8))(v154, v37);
    }

    v80 = v162;
    v81 = v37;
  }

  v83 = v158;
  v84 = v157;
  sub_100011598(v159, v157, &qword_1000991D8, &qword_100075780);
  if (sub_1000113A4(v84, 1, v81) == 1)
  {
    sub_100011668(v84, &qword_1000991D8, &qword_100075780);
    v85 = v168;
    sub_10001137C(v168, 1, 1, v80);
  }

  else
  {
    (*(v55 + 32))(v83, v84, v81);
    v88 = OBJC_IVAR____TtC12SidecarRelay6Client_sessionIdentities;
    v89 = v167;
    swift_beginAccess();
    v90 = *(v89 + v88);

    v85 = v168;
    sub_100020B28(v83, v90);

    v91 = v146;
    sub_100011598(v85, v146, &unk_1000991E0, &qword_100075788);
    if (sub_1000113A4(v91, 1, v80) == 1)
    {

      sub_100011668(v91, &unk_1000991E0, &qword_100075788);
      sub_1000033E0(0, &qword_100099030, NSError_ptr);
      v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10001E468(v92, v93, -1020, 0, 0, 0);
      swift_willThrow();
      (*(v55 + 8))(v83, v81);
      sub_100011668(v85, &unk_1000991E0, &qword_100075788);
      v94 = v152;
      v95 = v160;
      v96 = v170;
      v132 = *((swift_isaMask & *v89) + 0xB0);
      v133 = swift_errorRetain();
      v134 = v132(v133);
      __chkstk_darwin(v134);
      sub_100016F18(sub_10000AA1C, 0, sub_100011C20);
      v95(v94, v96);
      swift_errorRetain();
      v135 = _convertErrorToNSError(_:)();
      v136 = v163;
      (*(v163 + 16))(v163, v135);

      v137 = v166;
      goto LABEL_27;
    }

    (*(v55 + 8))(v83, v81);
    sub_100011668(v91, &unk_1000991E0, &qword_100075788);
  }

  if (qword_100098B98 != -1)
  {
    swift_once();
  }

  v97 = v167;
  sub_1000212CC(v167, v165, v61, v52, v153, v85, v86, v87, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149);
  v99 = v98;
  swift_beginAccess();
  sub_1000069E8(v140, v99);
  swift_endAccess();
  v100 = v143;
  sub_100011490(v99 + OBJC_IVAR____TtCC12SidecarRelay5Relay7Session_identity, v143, _s7SessionC8IdentityVMa);
  v101 = v149;
  v147(v149, v150, v81);
  v102 = v151;
  sub_100011490(v100, v151, _s7SessionC8IdentityVMa);
  sub_10001137C(v102, 0, 1, v80);
  swift_beginAccess();
  sub_10004FE44(v102, v101);
  v103 = swift_endAccess();
  v104 = v142;
  (*((swift_isaMask & *v97) + 0xB0))(v103);
  v105 = v141;
  sub_100011490(v100, v141, _s7SessionC8IdentityVMa);
  v106 = v161;

  v107 = Logger.logObject.getter();
  v108 = static os_log_type_t.default.getter();

  v109 = os_log_type_enabled(v107, v108);
  v110 = v170;
  if (v109)
  {
    v111 = swift_slowAlloc();
    v167 = swift_slowAlloc();
    v171 = v167;
    *v111 = 136446466;
    v112 = sub_100014C58(v164, v106, &v171);
    LODWORD(v165) = v108;
    v113 = v112;

    *(v111 + 4) = v113;
    *(v111 + 12) = 2082;
    v114 = sub_100052008();
    v116 = v115;
    v117 = *(v80 + 20);
    v118 = *(v105 + *(v80 + 24)) == 0;
    if (*(v105 + *(v80 + 24)))
    {
      v119 = 0x65746F6D6572;
    }

    else
    {
      v119 = 0x6C61636F6CLL;
    }

    v164 = v99;
    if (v118)
    {
      v120 = 0xE500000000000000;
    }

    else
    {
      v120 = 0xE600000000000000;
    }

    v172 = *(v105 + v117);
    sub_100010ED0();
    v121 = String.init<A>(_:radix:uppercase:)();
    v123 = v122;
    v172 = v114;
    v173 = v116;
    v124._countAndFlagsBits = 58;
    v124._object = 0xE100000000000000;
    String.append(_:)(v124);
    v125._countAndFlagsBits = v119;
    v125._object = v120;
    String.append(_:)(v125);

    v126._countAndFlagsBits = 58;
    v126._object = 0xE100000000000000;
    String.append(_:)(v126);
    v127._countAndFlagsBits = v121;
    v128 = v168;
    v127._object = v123;
    String.append(_:)(v127);

    v129 = v172;
    v130 = v173;
    sub_1000113CC(v105, _s7SessionC8IdentityVMa);
    v131 = sub_100014C58(v129, v130, &v171);

    *(v111 + 14) = v131;
    _os_log_impl(&_mh_execute_header, v107, v165, "%{public}s: Connected %{public}s", v111, 0x16u);
    swift_arrayDestroy();

    v160(v142, v170);
    sub_1000113CC(v143, _s7SessionC8IdentityVMa);
    v136 = v163;
    v137 = v166;
  }

  else
  {

    sub_1000113CC(v105, _s7SessionC8IdentityVMa);
    v160(v104, v110);
    sub_1000113CC(v100, _s7SessionC8IdentityVMa);
    v136 = v163;
    v137 = v166;
    v128 = v168;
  }

  v136[2](v136, 0);
  sub_100011668(v128, &unk_1000991E0, &qword_100075788);
LABEL_27:
  sub_1000113CC(v137, type metadata accessor for SidecarIdentity);
  _Block_release(v136);
}

uint64_t sub_10000A998(uint64_t a1, uint64_t a2)
{
  _StringGuts.grow(_:)(23);

  v3._object = 0x800000010007A180;
  v3._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v3);
  return a1;
}

void sub_10000AC64(uint64_t a1, uint64_t a2, void *a3, void (**a4)(void, void))
{
  v36 = a4;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v33 - v12;
  v14 = sub_1000052A4(a1);
  v16 = v15;
  v33[1] = a2;
  v33[2] = v8;
  v34 = v14;
  v35 = v15;
  if (a2)
  {
    v17 = v14;
    v18 = swift_isaMask & *a3;
    v33[0] = a1;
    v19 = v8;
    v20 = *(v18 + 176);
    v21 = swift_errorRetain();
    v22 = v20(v21);
    v23 = __chkstk_darwin(v22);
    v33[-2] = v17;
    v33[-1] = v16;
    __chkstk_darwin(v23);
    v33[-2] = a2;
    sub_100016F18(sub_100011374, v24, sub_100011C20);

    v25 = v19;
    a1 = v33[0];
    (*(v25 + 8))(v13, v7);
  }

  else
  {
    (*((swift_isaMask & *a3) + 0xB0))();

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = v8;
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v33[0] = v7;
      v31 = v30;
      v37 = v30;
      *v29 = 136446210;
      *(v29 + 4) = sub_100014C58(v34, v16, &v37);
      _os_log_impl(&_mh_execute_header, v26, v27, "%{public}s: Close Session", v29, 0xCu);
      sub_100003458(v31);
      v7 = v33[0];

      v32 = v28;
    }

    else
    {

      v32 = v8;
    }

    (*(v32 + 8))(v11, v7);
  }

  sub_100006BBC(a1);

  if (qword_100098B98 != -1)
  {
    swift_once();
  }

  sub_1000216C0();
  v36[2](v36, 0);

  _Block_release(v36);
}

uint64_t sub_10000B148(uint64_t a1, uint64_t a2)
{
  _StringGuts.grow(_:)(17);

  v3._countAndFlagsBits = 0x2065736F6C43203ALL;
  v3._object = 0xEF6E6F6973736553;
  String.append(_:)(v3);
  return a1;
}

uint64_t sub_10000B1D4(uint64_t a1, uint64_t a2)
{
  _StringGuts.grow(_:)(24);

  v3._object = 0x800000010007A160;
  v3._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v3);
  return a1;
}

void sub_10000B2E4(uint64_t a1, void *a2, void (**a3)(void, void))
{
  v56 = a3;
  v5 = _s7SessionC8IdentityVMa(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for UUID();
  v8 = *(v49 - 8);
  __chkstk_darwin(v49);
  v48 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v54 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v46 - v14;
  v50 = a1;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v17 = sub_100010F24(isa);

  v18 = sub_1000052A4(v17);
  v20 = v19;
  v21 = *((swift_isaMask & *a2) + 0xB0);
  v51 = (swift_isaMask & *a2) + 176;
  v52 = v21;
  v21();

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  v24 = os_log_type_enabled(v22, v23);
  v55 = v11;
  v53 = v18;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v46 = v8;
    v26 = v11;
    v27 = v25;
    v28 = swift_slowAlloc();
    v47 = v7;
    v29 = v28;
    v57[0] = v28;
    *v27 = 136446210;
    *(v27 + 4) = sub_100014C58(v18, v20, v57);
    _os_log_impl(&_mh_execute_header, v22, v23, "%{public}s: Deallocate Session", v27, 0xCu);
    sub_100003458(v29);
    v7 = v47;

    v30 = v26;
    v8 = v46;
  }

  else
  {

    v30 = v11;
  }

  v31 = *(v30 + 8);
  v31(v15, v10);
  v32 = OBJC_IVAR____TtC12SidecarRelay6Client_sessionIdentities;
  swift_beginAccess();
  if (!*(*(a2 + v32) + 16))
  {
    goto LABEL_8;
  }

  sub_100039668(v50, v33);
  if ((v34 & 1) == 0)
  {

LABEL_8:
    sub_1000033E0(0, &qword_100099030, NSError_ptr);
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = 559;
    v38 = sub_10001E468(v36, v37, -1020, 0, 0, 0);
    v39 = swift_willThrow();
    v40 = v54;
    v41 = (v52)(v39);
    __chkstk_darwin(v41);
    v44 = v38;

    sub_100016C54(sub_100011C20, (&v46 - 4), v40, v53, v20);

    v31(v40, v10);
    v42 = v38;
    v43 = _convertErrorToNSError(_:)();
    (v56)[2](v56, v43);

    goto LABEL_9;
  }

  swift_beginAccess();
  sub_10000FC6C(&qword_1000991D0, &qword_100075778);
  v35 = v48;
  Dictionary._Variant.remove(at:)();
  sub_1000113CC(v7, _s7SessionC8IdentityVMa);
  (*(v8 + 8))(v35, v49);
  swift_endAccess();
  v56[2](v56, 0);
LABEL_9:
  _Block_release(v56);
}

void sub_10000B958(void *a1, uint64_t a2, unint64_t a3, void *a4, const void *a5)
{
  v10 = type metadata accessor for Logger();
  v43 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v38 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v34 - v13;
  v42 = swift_allocObject();
  *(v42 + 16) = a5;
  _Block_copy(a5);
  v41 = a1;
  v15 = sub_1000052A4(a1);
  v17 = v16;
  v18 = *((swift_isaMask & *a4) + 0xB0);
  v36 = (swift_isaMask & *a4) + 176;
  v37 = v18;
  v18();

  sub_100010E78(a2, a3);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  v21 = os_log_type_enabled(v19, v20);
  v39 = a2;
  v40 = v15;
  if (v21)
  {
    v35 = a5;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v44 = v23;
    *v22 = 136446466;
    *(v22 + 4) = sub_100014C58(v15, v17, &v44);
    *(v22 + 12) = 2048;
    v24 = 0;
    v25 = v39;
    switch(a3 >> 62)
    {
      case 1uLL:
        LODWORD(v24) = HIDWORD(v39) - v39;
        if (__OFSUB__(HIDWORD(v39), v39))
        {
          __break(1u);
LABEL_11:
          __break(1u);
          JUMPOUT(0x10000BE58);
        }

        v24 = v24;
LABEL_8:
        *(v22 + 14) = v24;
        sub_100003388(v25, a3);
        _os_log_impl(&_mh_execute_header, v19, v20, "%{public}s: Send %ld Bytes", v22, 0x16u);
        sub_100003458(v23);

        (*(v43 + 8))(v14, v10);
        v26 = v35;
        break;
      case 2uLL:
        v28 = *(v39 + 16);
        v27 = *(v39 + 24);
        v29 = __OFSUB__(v27, v28);
        v24 = v27 - v28;
        if (!v29)
        {
          goto LABEL_8;
        }

        goto LABEL_11;
      case 3uLL:
        goto LABEL_8;
      default:
        v24 = BYTE6(a3);
        goto LABEL_8;
    }
  }

  else
  {
    sub_100003388(a2, a3);

    (*(v43 + 8))(v14, v10);
    v26 = a5;
  }

  sub_100006A70(v41);

  v30 = [objc_allocWithZone(NSMutableDictionary) initWithCapacity:8];
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  v32 = Int._bridgeToObjectiveC()().super.super.isa;
  [v30 setObject:isa forKeyedSubscript:v32];

  v33 = v39;
  sub_100010E78(v39, a3);
  sub_100011358(0, 0xF000000000000000);
  sub_100046464();

  sub_100011358(v33, a3);

  _Block_release(v26);
}

void sub_10000BE68(uint64_t a1, uint64_t a2)
{

  v2._countAndFlagsBits = 0x4620646E6553203ALL;
  v2._object = 0xED000064656C6961;
  String.append(_:)(v2);
}

void sub_10000BF7C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, void *a7, const void *a8)
{
  v69 = a6;
  v63 = a4;
  v14 = type metadata accessor for Logger();
  v71 = *(v14 - 8);
  v72 = v14;
  v15 = __chkstk_darwin(v14);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v54 - v18;
  v67 = swift_allocObject();
  *(v67 + 16) = a8;
  v70 = a8;
  _Block_copy(a8);
  v68 = sub_1000052A4(a1);
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (HIDWORD(a3))
  {
LABEL_18:
    __break(1u);
    return;
  }

  v21 = v20;
  v64 = a1;
  ProcessUniqueID = SidecarGetProcessUniqueID();
  v23 = *((swift_isaMask & *a7) + 0xB0);
  v61 = (swift_isaMask & *a7) + 176;
  v62 = v23;
  v23();

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  v59 = v25;
  v26 = os_log_type_enabled(v24, v25);
  v65 = ProcessUniqueID;
  v66 = v21;
  v57 = a3;
  v58 = a5;
  v56 = a2;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v73[0] = v55;
    *v27 = 136447234;
    *(v27 + 4) = sub_100014C58(v68, v21, v73);
    *(v27 + 12) = 2080;
    if (ProcessUniqueID == v69)
    {
      v28 = 7239503;
    }

    else
    {
      v28 = 0x66666F646E6148;
    }

    v29 = a2;
    if (ProcessUniqueID == v69)
    {
      v30 = 0xE300000000000000;
    }

    else
    {
      v30 = 0xE700000000000000;
    }

    v31 = sub_100014C58(v28, v30, v73);

    *(v27 + 14) = v31;
    v60 = v17;
    *(v27 + 22) = 2082;
    *(v27 + 24) = sub_100014C58(v63, a5, v73);
    *(v27 + 32) = 2082;
    v32 = RPStreamTypeCopyDescription(v29);
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = a3;
    v36 = v35;

    v37 = sub_100014C58(v33, v36, v73);

    *(v27 + 34) = v37;
    *(v27 + 42) = 2082;
    v17 = v60;
    v38 = RPStreamFlagsCopyDescription(v34);
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    v42 = v71;
    v43 = sub_100014C58(v39, v41, v73);

    *(v27 + 44) = v43;
    _os_log_impl(&_mh_execute_header, v24, v59, "%{public}s: Open(%s) Stream '%{public}s', %{public}s <%{public}s>", v27, 0x34u);
    swift_arrayDestroy();

    v44 = v42;
  }

  else
  {

    v44 = v71;
  }

  (*(v44 + 8))(v19, v72);
  v45 = sub_100006A70(v64);
  v60 = v17;
  v64 = sub_1000033E0(0, &qword_10009A7E0, SidecarStream_ptr);
  v46 = swift_allocObject();
  v47 = v68;
  v48 = v69;
  v46[2] = a7;
  v46[3] = v47;
  v49 = v65;
  v46[4] = v66;
  v46[5] = v49;
  v46[6] = v48;
  v46[7] = sub_100011C14;
  v50 = v63;
  v46[8] = v67;
  v46[9] = v50;
  v51 = v58;
  v46[10] = v58;
  v46[11] = v45;

  v52 = a7;

  sub_100021EBC(v53, v56, v57, v48, v50, v51, sub_1000112C4, v46);

  _Block_release(v70);
}

void sub_10000C59C(uint64_t a1, char a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void *, uint64_t), uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v58 = a9;
  v59 = a8;
  v19 = type metadata accessor for Logger();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v22 = __chkstk_darwin(v21);
  v25 = &v51 - v24;
  v26 = *((swift_isaMask & *a3) + 0xB0);
  if (a2)
  {
    v27 = v26(v22);
    v28 = __chkstk_darwin(v27);
    *(&v51 - 4) = a4;
    *(&v51 - 3) = a5;
    *(&v51 - 2) = a6;
    *(&v51 - 1) = a7;
    __chkstk_darwin(v28);
    *(&v51 - 2) = a1;
    sub_100016F18(sub_100011C4C, v29, sub_100011C20);
    (*(v20 + 8))(v25, v19);
    v59(0, a1);
  }

  else
  {
    v30 = a4;
    v54 = v20;
    v55 = v19;
    v31 = a12;
    v56 = a10;
    v57 = a11;
    v53 = a3;
    v32 = v23;
    v26(v22);

    sub_100011304(a1, 0);
    v33 = v32;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();

    sub_100011310(a1, 0);
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v52 = a12;
      v37 = v36;
      v60 = swift_slowAlloc();
      *v37 = 136446722;
      *(v37 + 4) = sub_100014C58(v30, a5, &v60);
      *(v37 + 12) = 2080;
      if (a6 == a7)
      {
        v38 = 7239503;
      }

      else
      {
        v38 = 0x66666F646E6148;
      }

      if (a6 == a7)
      {
        v39 = 0xE300000000000000;
      }

      else
      {
        v39 = 0xE700000000000000;
      }

      v40 = v35;
      v41 = sub_100014C58(v38, v39, &v60);

      *(v37 + 14) = v41;
      *(v37 + 22) = 2082;
      v42 = RapportStreamSession.description.getter();
      v44 = sub_100014C58(v42, v43, &v60);

      *(v37 + 24) = v44;
      _os_log_impl(&_mh_execute_header, v34, v40, "%{public}s: Opened(%s) %{public}s", v37, 0x20u);
      swift_arrayDestroy();

      v31 = v52;
    }

    (*(v54 + 8))(v33, v55);
    v45 = *(a1 + 16);
    v46 = objc_allocWithZone(SidecarStream);
    v47 = v57;

    v48 = v45;
    v49 = sub_100010C08(v56, v47, v48);
    sub_100003FBC(a1, v49, v31);
    v50 = v49;
    v59(v49, 0);
  }
}

void sub_10000C9F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_10000CA64(uint64_t a1, uint64_t a2)
{
  _StringGuts.grow(_:)(20);

  v3._object = 0x800000010007A140;
  v3._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v3);
  return a1;
}

void sub_10000CAE8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_10000CBC4(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, void *a7, void (**a8)(void, void, void))
{
  v74 = a3;
  v76 = type metadata accessor for Logger();
  v15 = *(v76 - 8);
  v16 = __chkstk_darwin(v76);
  v18 = &v60[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v20 = &v60[-v19];
  v72 = swift_allocObject();
  *(v72 + 16) = a8;
  v75 = a8;
  _Block_copy(a8);
  v71 = a1;
  v73 = sub_1000052A4(a1);
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((v74 & 0x8000000000000000) != 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (HIDWORD(v74))
  {
LABEL_20:
    __break(1u);
    return;
  }

  v64 = a2;
  v68 = a4;
  v22 = v21;
  ProcessUniqueID = SidecarGetProcessUniqueID();
  v24 = (swift_isaMask & *a7) + 176;
  v66 = *((swift_isaMask & *a7) + 0xB0);
  v65 = v24;
  v66();

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  v27 = os_log_type_enabled(v25, v26);
  v63 = a5;
  v70 = a6;
  v67 = v18;
  v69 = v22;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v80[0] = v62;
    *v28 = 136447234;
    *(v28 + 4) = sub_100014C58(v73, v22, v80);
    *(v28 + 12) = 2080;
    if (ProcessUniqueID == a6)
    {
      v29 = 7239503;
    }

    else
    {
      v29 = 0x66666F646E6148;
    }

    if (ProcessUniqueID == a6)
    {
      v30 = 0xE300000000000000;
    }

    else
    {
      v30 = 0xE700000000000000;
    }

    v31 = sub_100014C58(v29, v30, v80);
    v61 = v26;
    v32 = v31;

    *(v28 + 14) = v32;
    *(v28 + 22) = 2082;
    *(v28 + 24) = sub_100014C58(v68, a5, v80);
    *(v28 + 32) = 2082;
    v33 = RPStreamTypeCopyDescription(v64);
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    v37 = sub_100014C58(v34, v36, v80);

    *(v28 + 34) = v37;
    *(v28 + 42) = 2082;
    v38 = RPStreamFlagsCopyDescription(v74);
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    v42 = sub_100014C58(v39, v41, v80);

    *(v28 + 44) = v42;
    _os_log_impl(&_mh_execute_header, v25, v61, "%{public}s: Listen(%s) Stream '%{public}s', %{public}s <%{public}s>", v28, 0x34u);
    swift_arrayDestroy();
  }

  v43 = v15[1];
  v43(v20, v76);
  v44 = sub_100006A70(v71);
  v71 = v15;
  v45 = OBJC_IVAR____TtC12SidecarRelay6Client_streamListeners;
  swift_beginAccess();
  v46 = *(a7 + v45);
  v47 = v63;

  sub_100020A8C(v46, v78, v44, v68, v47);

  if (v79)
  {
    sub_100011668(v78, &unk_1000991C0, &qword_100075770);
    sub_1000033E0(0, &qword_100099030, NSError_ptr);
    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = sub_10001E468(v48, v49, -121, 0, 0, 0);
    swift_willThrow();

    v52 = v67;
    v53 = (v66)(v51);
    v54 = __chkstk_darwin(v53);
    v55 = v69;
    *&v60[-32] = v73;
    *&v60[-24] = v55;
    v59 = v70;
    __chkstk_darwin(v54);
    v58 = v50;
    sub_100016F18(sub_10001115C, v56, sub_100011C20);

    v43(v52, v76);
    swift_errorRetain();
    v57 = _convertErrorToNSError(_:)();
    (v75)[2](v75, 0, v57);
  }

  else
  {

    v80[0] = v64;
    v80[1] = v74;
    v80[2] = v70;
    v80[3] = sub_10001107C;
    v80[4] = v72;
    swift_beginAccess();

    swift_isUniquelyReferenced_nonNull_native();
    v77 = *(a7 + v45);
    sub_10003DB4C();
    *(a7 + v45) = v77;

    swift_endAccess();
  }

  _Block_release(v75);
}

uint64_t sub_10000D358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, Swift::Int a5)
{
  _StringGuts.grow(_:)(a5);

  v8._countAndFlagsBits = sub_100011E98();
  String.append(_:)(v8);
  if (a3 == a4)
  {
    v9 = 7239503;
  }

  else
  {
    v9 = 0x66666F646E6148;
  }

  if (a3 == a4)
  {
    v10 = 0xE300000000000000;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  v11 = v10;
  String.append(_:)(*&v9);

  v12._countAndFlagsBits = 0x64656C6961462029;
  v12._object = 0xE800000000000000;
  String.append(_:)(v12);
  return a1;
}

uint64_t sub_10000D478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(uint64_t))
{
  sub_100011DD0();
  v22 = v21;
  v24 = _Block_copy(v23);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v24);
  v25 = v22;
  v26 = sub_100011DFC();
  a21(v26);
  _Block_release(v24);

  sub_100011DB8();
}

void sub_10000D530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v15 = String._bridgeToObjectiveC()();
  SidecarGetProcessUniqueID();
  v16 = swift_allocObject();
  v16[2] = v9;
  v16[3] = a1;
  v16[4] = a4;
  v16[5] = a5;
  aBlock[4] = a7;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000CAE8;
  aBlock[3] = a8;
  v17 = _Block_copy(aBlock);
  v18 = v9;

  v19 = sub_100011E38();
  [v19 v20];
  _Block_release(v17);
}

void sub_10000D654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t (*a21)(void))
{
  sub_100011DD0();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v60 = v33;
  v58 = type metadata accessor for Logger();
  sub_100011C54();
  v35 = v34;
  __chkstk_darwin(v36);
  sub_100011CD4();
  v39 = v38 - v37;
  v59 = sub_1000052A4(v26);
  v41 = v40;
  if (v30)
  {
    swift_willThrow();
    v42 = v30;
LABEL_3:
    v43 = *((swift_isaMask & *v28) + 0xB0);
    v44 = swift_errorRetain();
    v45 = v43(v44);
    __chkstk_darwin(v45);
    sub_100011D98();
    *(v46 - 16) = v59;
    *(v46 - 8) = v41;
    __chkstk_darwin(v47);
    sub_100011DA8();
    *(v48 - 16) = v42;
    sub_100016F18(v60, v49, a21);

    (*(v35 + 8))(v39, v58);
    sub_100011DB8();
    return;
  }

  if (!v32)
  {
    sub_1000033E0(0, &qword_100099030, NSError_ptr);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100011CE4();
    sub_100011CA8();
    v42 = sub_10001E468(v51, v52, v53, v54, v55, v56);
    swift_willThrow();
    goto LABEL_3;
  }

  v50 = v32;
  sub_100006A70(v26);

  sub_10002991C(v24, v22, v50);

  sub_100011DB8();
}

uint64_t sub_10000D8CC(uint64_t a1, uint64_t a2)
{
  _StringGuts.grow(_:)(22);

  v3._object = 0x800000010007A120;
  v3._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v3);
  return a1;
}

uint64_t sub_10000D9A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  v17 = a1;
  v18 = sub_100011DFC();
  sub_10000D530(v18, v19, a5, v14, v16, a7, a8, a9, a10);
}

void sub_10000DA58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100011DD0();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v25 = type metadata accessor for Logger();
  sub_100011C54();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100011CD4();
  v14 = v13 - v12;
  v15 = sub_1000052A4(v8);
  v17 = v16;
  sub_100011D5C();
  (*(v18 + 176))();

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    sub_100011DE8();
    v24 = v4;
    v21 = v6;
    v22 = swift_slowAlloc();
    sub_100011D78();
    v26[0] = swift_slowAlloc();
    *v22 = 136315394;
    v23 = sub_100014C58(v15, v17, v26);

    *(v22 + 4) = v23;
    *(v22 + 12) = 2082;
    *(v22 + 14) = sub_100014C58(v21, v24, v26);
    _os_log_impl(&_mh_execute_header, v19, v20, "%s: Close Stream '%{public}s'", v22, 0x16u);
    swift_arrayDestroy();
    sub_100011CF4();

    sub_100011CF4();

    (*(v10 + 8))(v14, v25);
  }

  else
  {

    (*(v10 + 8))(v14, v25);
  }

  sub_100006A70(v8);
  sub_1000046E8();

  sub_100011DB8();
}

void sub_10000DD4C(void *a1, void *a2, const void *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v29 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v26 - v10;
  v32 = swift_allocObject();
  *(v32 + 16) = a3;
  _Block_copy(a3);
  v30 = a1;
  v12 = sub_1000052A4(a1);
  v14 = v13;
  v28 = *((swift_isaMask & *a2) + 0xB0);
  v28();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  v17 = os_log_type_enabled(v15, v16);
  v33 = a3;
  v31 = v12;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v27 = v7;
    v19 = v18;
    v20 = swift_slowAlloc();
    v34 = v20;
    *v19 = 136446210;
    *(v19 + 4) = sub_100014C58(v12, v14, &v34);
    _os_log_impl(&_mh_execute_header, v15, v16, "%{public}s: TimeSync Requested", v19, 0xCu);
    sub_100003458(v20);

    v7 = v27;
  }

  (*(v7 + 8))(v11, v6);
  v21 = sub_100006A70(v30);
  if (qword_100098B98 != -1)
  {
    swift_once();
  }

  v22 = swift_allocObject();
  v23 = v31;
  v24 = v32;
  v22[2] = a2;
  v22[3] = v23;
  v22[4] = v14;
  v22[5] = sub_10001107C;
  v22[6] = v24;
  v25 = a2;

  sub_100022124(v21, sub_1000110E8, v22);

  _Block_release(v33);
}

uint64_t sub_10000E1A4(uint64_t a1, char a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t), uint64_t a7)
{
  v34 = a7;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v32 - v19;
  v21 = *((swift_isaMask & *a3) + 0xB0);
  if (a2)
  {
    v22 = v21(v18);
    v23 = __chkstk_darwin(v22);
    *(&v32 - 2) = a4;
    *(&v32 - 1) = a5;
    __chkstk_darwin(v23);
    *(&v32 - 2) = a1;
    sub_100016F18(sub_100011C18, v24, sub_100011C20);
    (*(v14 + 8))(v17, v13);
    type metadata accessor for Clock();
    v25 = static Clock.nullClockIdentifier.getter();
    return a6(v25, a1);
  }

  else
  {
    v33 = v13;
    v21(v18);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v32 = a6;
      v31 = v30;
      v35 = v30;
      *v29 = 136446210;
      *(v29 + 4) = sub_100014C58(a4, a5, &v35);
      _os_log_impl(&_mh_execute_header, v27, v28, "%{public}s: TimeSync Enabled", v29, 0xCu);
      sub_100003458(v31);
      a6 = v32;
    }

    (*(v14 + 8))(v20, v33);
    return a6(*(a1 + 24), 0);
  }
}

uint64_t sub_10000E4AC(uint64_t a1, uint64_t a2)
{
  _StringGuts.grow(_:)(19);

  v3._object = 0x800000010007A0D0;
  v3._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v3);
  return a1;
}

void sub_10000E548(void *a1, int a2, int a3, void *aBlock, void (*a5)(uint64_t))
{
  v7 = _Block_copy(aBlock);
  _Block_copy(v7);
  v9 = a1;
  v8 = sub_100011E38();
  a5(v8);
  _Block_release(v7);
}

void sub_10000E5C4(void *a1, void (**a2)(void, void, void))
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*(a1 + OBJC_IVAR____TtC12SidecarRelay6Client_connection) auditToken];
  if (xpc_copy_entitlement_for_token())
  {
    v25[0] = v4;
    v8 = swift_unknownObjectRelease();
    if (qword_100098B98 != -1)
    {
      v8 = swift_once();
    }

    sub_1000222B8(v8, v9, v10, v11, v12, v13, v14, v15, v25[0], v25[1], v25[2], v25[3], v25[4], v25[5], v26[0], v26[1], v26[2], v26[3], v26[4], v26[5]);
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    dispatch thunk of PropertyListEncoder.outputFormat.setter();
    memcpy(v26, v27, sizeof(v26));
    sub_100010DD0();
    v21 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v23 = v22;
    sub_100010E24(v27);
    sub_100010E78(v21, v23);
    isa = Data._bridgeToObjectiveC()().super.isa;
    (a2)[2](a2, isa, 0);

    sub_100003388(v21, v23);
    sub_100003388(v21, v23);
  }

  else
  {
    sub_1000033E0(0, &qword_100099030, NSError_ptr);
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10001E468(v16, v17, -1000, 0, 0, 0);
    v18 = swift_willThrow();
    v19 = (*((swift_isaMask & *a1) + 0xB0))(v18);
    __chkstk_darwin(v19);
    sub_100016F18(sub_10000E978, 0, sub_100011C20);
    (*(v5 + 8))(v7, v4);
    swift_errorRetain();
    v20 = _convertErrorToNSError(_:)();
    (a2)[2](a2, 0, v20);
  }

  _Block_release(a2);
}

void sub_10000E9B4(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
}

void sub_10000EA28(void *a1, int a2, void *a3, void (**a4)(void, void))
{
  v62 = a2;
  v66 = type metadata accessor for Logger();
  v7 = *(v66 - 8);
  v8 = __chkstk_darwin(v66);
  v10 = v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = v58 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = v58 - v15;
  __chkstk_darwin(v14);
  v17 = sub_100006A70(a1);
  v18 = v7;
  v63 = v13;
  v64 = v10;
  v19 = OBJC_IVAR____TtC12SidecarRelay6Client_streams;
  swift_beginAccess();
  v20 = sub_100020A3C(v17, *(a3 + v19));
  if (v20)
  {
    v58[1] = v17;
    v59 = a4;
    v60 = v20;
    v22 = *(v20 + 16);
    v23 = v62;
    if (v22)
    {
      v24 = v60 + 32;
      v65 = (v7 + 8);
      *&v21 = 136315138;
      v61 = v21;
      do
      {
        v25 = *((swift_isaMask & *a3) + 0xB0);

        if (v23)
        {
          v27 = v63;
          v25(v26);
          v28 = v27;

          v29 = Logger.logObject.getter();
          v30 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            v32 = swift_slowAlloc();
            v67 = v32;
            *v31 = v61;

            v33 = RapportStreamSession.description.getter();
            v35 = v34;

            v36 = sub_100014C58(v33, v35, &v67);

            *(v31 + 4) = v36;
            _os_log_impl(&_mh_execute_header, v29, v30, "Stream is suspended, removing traffic flags from stream %s", v31, 0xCu);
            sub_100003458(v32);
            v23 = v62;

            (*v65)(v63, v66);
          }

          else
          {

            (*v65)(v28, v66);
          }

          v47 = 0;
        }

        else
        {
          v37 = v64;
          v25(v26);
          v38 = v37;

          v39 = Logger.logObject.getter();
          v40 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            v42 = swift_slowAlloc();
            v67 = v42;
            *v41 = v61;

            v43 = RapportStreamSession.description.getter();
            v45 = v44;

            v46 = sub_100014C58(v43, v45, &v67);

            *(v41 + 4) = v46;
            _os_log_impl(&_mh_execute_header, v39, v40, "Stream has resumed, setting regular traffic flags for stream %s", v41, 0xCu);
            sub_100003458(v42);
            v23 = v62;

            (*v65)(v64, v66);
          }

          else
          {

            (*v65)(v38, v66);
          }

          v47 = RapportStreamSession.trafficFlags.getter() & 0xFFFFBDFF;
        }

        RapportStreamSession.trafficFlags.setter(v47);

        v24 += 16;
        --v22;
      }

      while (v22);
    }

    a4 = v59;
    v59[2](v59, 0);
  }

  else
  {
    v48 = v16;
    (*((swift_isaMask & *a3) + 0xB0))();

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v67 = v52;
      *v51 = 136315138;

      sub_100027DA0();
      v54 = v53;
      v56 = v55;

      v57 = sub_100014C58(v54, v56, &v67);

      *(v51 + 4) = v57;
      _os_log_impl(&_mh_execute_header, v49, v50, "There is no stream for session %s to set the suspended state.", v51, 0xCu);
      sub_100003458(v52);
    }

    (*(v18 + 8))(v48, v66);
    a4[2](a4, 0);
  }

  _Block_release(a4);
}

__n128 sub_10000F1E4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10000F1F8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_10000F238(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

__n128 sub_10000F290(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10000F2A4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_10000F2E4(uint64_t result, int a2, int a3)
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

unint64_t sub_10000F338()
{
  result = qword_1000990F8;
  if (!qword_1000990F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000990F8);
  }

  return result;
}

unint64_t sub_10000F390()
{
  result = qword_100099100;
  if (!qword_100099100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099100);
  }

  return result;
}

uint64_t sub_10000F3E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72656E657473696CLL && a2 == 0xE900000000000073;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 6580592 && a2 == 0xE300000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x736E6F6973736573 && a2 == 0xE800000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x736D6165727473 && a2 == 0xE700000000000000)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

Swift::Int sub_10000F584(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t sub_10000F5D8(char a1)
{
  result = 0x72656E657473696CLL;
  switch(a1)
  {
    case 1:
      result = 6580592;
      break;
    case 2:
      result = 0x736E6F6973736573;
      break;
    case 3:
      result = 0x736D6165727473;
      break;
    default:
      return result;
  }

  return result;
}

Swift::Int sub_10000F684(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_10000F6D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10000F3E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10000F718@<X0>(_BYTE *a1@<X8>)
{
  result = static RapportControlFlags.infraWiFi.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10000F740(uint64_t a1)
{
  v2 = sub_10000FCF8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000F77C(uint64_t a1)
{
  v2 = sub_10000FCF8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10000F7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100011FF4();
  v31 = v21;
  v32 = v22;
  v24 = v23;
  v25 = sub_10000FC6C(&qword_100099128, &unk_100075730);
  sub_100011C54();
  v27 = v26;
  __chkstk_darwin(v28);
  v30 = &v31 - v29;
  sub_10000FCB4(v24, v24[3]);
  sub_10000FCF8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v33 = 0;
  sub_10000FC6C(&qword_100099138, &qword_100076A80);
  sub_100011A38(&qword_100099140, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
  sub_100011E5C();
  if (!v20)
  {
    KeyedEncodingContainer.encode(_:forKey:)();
    v33 = 2;
    sub_100011E5C();
    v33 = 3;
    sub_10000FC6C(&qword_100099148, &qword_100075740);
    sub_10000FD94();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  (*(v27 + 8))(v30, v25);
  sub_100011FBC();
}

void sub_10000F9B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100011FF4();
  v22 = v21;
  sub_10000FC6C(&qword_100099228, qword_100075928);
  sub_100011C54();
  __chkstk_darwin(v23);
  sub_10000FCB4(v22, v22[3]);
  sub_10000FCF8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v20)
  {
    sub_100003458(v22);
  }

  else
  {
    sub_10000FC6C(&qword_100099138, &qword_100076A80);
    sub_100011A38(&qword_100099230, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
    sub_100011E08();
    KeyedDecodingContainer.decode(_:forKey:)();
    sub_100011E08();
    sub_10000FC6C(&qword_100099148, &qword_100075740);
    sub_100011AA4();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v24 = sub_100011D84();
    v25(v24);
    sub_100003458(v22);
  }

  sub_100011FBC();
}

uint64_t sub_10000FC6C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *sub_10000FCB4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_10000FCF8()
{
  result = qword_100099130;
  if (!qword_100099130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099130);
  }

  return result;
}

uint64_t sub_10000FD4C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10000FD94()
{
  result = qword_100099150;
  if (!qword_100099150)
  {
    sub_10000FD4C(&qword_100099148, &qword_100075740);
    sub_100011B50(&qword_10009A8F0, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099150);
  }

  return result;
}

void *sub_10000FE50()
{
  sub_100011D50();
  swift_beginAccess();

  sub_10001052C(v1);
  sub_100011F44();

  v75 = sub_100024078(0);
  v2 = OBJC_IVAR____TtC12SidecarRelay6Client_sessionMap;
  sub_100011D50();
  swift_beginAccess();
  v76 = v0;
  v3 = *(v0 + v2);
  v4 = v3;
  sub_10003ED3C(0, 0, 0);
  v80 = v4;
  result = sub_100010950(v3);
  v7 = v6;
  v9 = v8 >> 1;
  v11 = v10 + 16 * v6 + 8;
  v82 = v8 >> 1;
  while (v9 != v7)
  {
    if (v7 >= v9)
    {
      __break(1u);
      goto LABEL_44;
    }

    sub_100010ED0();

    v12 = String.init<A>(_:radix:uppercase:)();
    v84 = v13;
    v86 = v12;
    isa = UUID._bridgeToObjectiveC()().super.isa;
    sub_100010F24(isa);

    sub_100010C84();
    sub_100011EB0();
    v15._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
    String.append(_:)(v15);

    _s7SessionC8IdentityVMa(0);
    sub_100011F24();
    v18 = v17 & 0xFFFF00000000FFFFLL | 0x65746F6D0000;
    if (v16)
    {
      v19 = 0x6C61636F6CLL;
    }

    else
    {
      v19 = v18;
    }

    if (v16)
    {
      v20 = 0xE500000000000000;
    }

    else
    {
      v20 = 0xE600000000000000;
    }

    sub_100011EB0();
    v21 = String.init<A>(_:radix:uppercase:)();
    v23 = v22;
    sub_10001200C();
    v24._countAndFlagsBits = v19;
    v24._object = v20;
    String.append(_:)(v24);

    sub_10001200C();
    v25._countAndFlagsBits = v21;
    v25._object = v23;
    String.append(_:)(v25);

    v27 = _swiftEmptyArrayStorage[2];
    v26 = _swiftEmptyArrayStorage[3];
    if (v27 >= v26 >> 1)
    {
      v29 = sub_100011EBC(v26);
      result = sub_10003ED3C(v29, v27 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v27 + 1;
    v28 = &_swiftEmptyArrayStorage[4 * v27];
    v28[4] = v86;
    v28[5] = v84;
    v28[6] = 542327881;
    v28[7] = 0xE400000000000000;
    v11 += 16;
    ++v7;
    v9 = v82;
  }

  swift_unknownObjectRelease();

  v30 = sub_100024078(_swiftEmptyArrayStorage);
  v31 = OBJC_IVAR____TtC12SidecarRelay6Client_streams;
  sub_100011D50();
  swift_beginAccess();
  v32 = *(v76 + v31);
  v33 = *(v32 + 16);
  v34 = _swiftEmptyArrayStorage;
  if (!v33)
  {
LABEL_36:
    v72 = sub_1000240A0(v34);
    v73 = v75;
    if (!v75[2])
    {

      v73 = 0;
    }

    if (!v30[2])
    {
    }

    if (!v72[2])
    {
    }

    return v73;
  }

  v74 = v30;

  sub_10003ED9C(0, v33, 0);
  v34 = _swiftEmptyArrayStorage;
  result = sub_1000496B4(v32);
  v36 = result;
  v87 = v37;
  v38 = 0;
  v78 = v33;
  v79 = v32 + 64;
  v77 = v32;
  while ((v36 & 0x8000000000000000) == 0 && v36 < 1 << *(v32 + 32))
  {
    if (((*(v79 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
    {
      goto LABEL_45;
    }

    if (*(v32 + 36) != v35)
    {
      goto LABEL_46;
    }

    v81 = v35;
    v83 = v38;
    v85 = v34;
    v39 = *(*(v32 + 56) + 8 * v36);

    v40 = UUID._bridgeToObjectiveC()().super.isa;
    sub_100010F24(v40);

    sub_100010C84();
    sub_100011EB0();
    v41._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
    String.append(_:)(v41);

    _s7SessionC8IdentityVMa(0);
    sub_100011F24();
    v44 = v43 & 0xFFFF00000000FFFFLL | 0x65746F6D0000;
    if (v42)
    {
      v45 = 0x6C61636F6CLL;
    }

    else
    {
      v45 = v44;
    }

    if (v42)
    {
      v46 = 0xE500000000000000;
    }

    else
    {
      v46 = 0xE600000000000000;
    }

    sub_100010ED0();
    sub_100011EB0();
    v47 = String.init<A>(_:radix:uppercase:)();
    v49 = v48;
    sub_10001200C();
    v50._countAndFlagsBits = v45;
    v50._object = v46;
    String.append(_:)(v50);

    sub_10001200C();
    v51._countAndFlagsBits = v47;
    v51._object = v49;
    String.append(_:)(v51);

    v52 = *(v39 + 16);
    if (v52)
    {
      sub_10003ED5C(0, v52, 0);
      v53 = (v39 + 40);
      do
      {
        v54 = *v53;

        v55 = v54;
        v56 = RapportStreamSession.description.getter();
        v58 = v57;

        v60 = _swiftEmptyArrayStorage[2];
        v59 = _swiftEmptyArrayStorage[3];
        if (v60 >= v59 >> 1)
        {
          v62 = sub_100011EBC(v59);
          sub_10003ED5C(v62, v60 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v60 + 1;
        v61 = &_swiftEmptyArrayStorage[2 * v60];
        v61[4] = v56;
        v61[5] = v58;
        v53 += 2;
        --v52;
      }

      while (v52);

      v32 = v77;
    }

    else
    {
    }

    v34 = v85;
    v64 = v85[2];
    v63 = v85[3];
    if (v64 >= v63 >> 1)
    {
      v71 = sub_100011EBC(v63);
      sub_10003ED9C(v71, v64 + 1, 1);
      v34 = v85;
    }

    v38 = v83 + 1;
    v34[2] = v64 + 1;
    v65 = &v34[3 * v64];
    v65[4] = 542327881;
    v65[5] = 0xE400000000000000;
    v65[6] = _swiftEmptyArrayStorage;
    v66 = sub_100046960(v36, v81, v87 & 1, v32);
    v68 = v67;
    v70 = v69;
    result = sub_100010FDC(v36, v81, v87 & 1);
    v36 = v66;
    v35 = v68;
    v87 = v70;
    if (v83 + 1 == v78)
    {

      sub_100010FDC(v66, v68, v70 & 1);
      v30 = v74;
      goto LABEL_36;
    }
  }

LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

void sub_10001052C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    sub_10003ED3C(0, v1, 0);
    v3 = _swiftEmptyArrayStorage;
    v6 = sub_1000496B4(v2);
    v7 = 0;
    v8 = v2 + 64;
    v46 = v4;
    v47 = v1;
    v45 = v2 + 72;
    v48 = v2 + 64;
    v49 = v2;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v2 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v8 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_29;
      }

      if (*(v2 + 36) != v4)
      {
        goto LABEL_30;
      }

      v52 = v4;
      v50 = v5;
      v51 = v7;
      v10 = v3;
      v11 = *(v2 + 56);
      v12 = *(v2 + 48) + 24 * v6;
      v13 = *(v12 + 8);
      v14 = *(v12 + 16);
      v15 = (v11 + 40 * v6);
      v17 = *v15;
      v16 = v15[1];

      sub_100027DA0();
      v53 = v18;
      v54 = v19;
      v20._countAndFlagsBits = 15392;
      v20._object = 0xE200000000000000;
      String.append(_:)(v20);
      v21._countAndFlagsBits = v13;
      v21._object = v14;
      String.append(_:)(v21);
      v22._countAndFlagsBits = 62;
      v22._object = 0xE100000000000000;
      String.append(_:)(v22);
      if ((v17 - 1) < 3)
      {
        v23 = v17;
      }

      else
      {
        v23 = 0;
      }

      sub_10000FE40(v23);
      if ((v16 & 2) != 0)
      {
        v24 = *RapportStreamFlags.lowLatency.unsafeMutableAddressor();
      }

      else
      {
        v24 = 0;
      }

      v3 = v10;
      _StringGuts.grow(_:)(32);
      v25._countAndFlagsBits = 0x694C6D6165727453;
      v25._object = 0xEF2072656E657473;
      String.append(_:)(v25);
      sub_10000FC6C(&qword_100099168, &unk_100075750);
      _print_unlocked<A, B>(_:_:)();
      v26._countAndFlagsBits = 541869600;
      v26._object = 0xE400000000000000;
      String.append(_:)(v26);
      if (HIDWORD(v24))
      {
        goto LABEL_31;
      }

      v27 = RPStreamFlagsCopyDescription(v24);
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      v31._countAndFlagsBits = v28;
      v31._object = v30;
      String.append(_:)(v31);

      v32._countAndFlagsBits = 0x2044495550202CLL;
      v32._object = 0xE700000000000000;
      String.append(_:)(v32);
      v33._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v33);

      v35 = v10[2];
      v34 = v10[3];
      if (v35 >= v34 >> 1)
      {
        sub_10003ED3C((v34 > 1), v35 + 1, 1);
        v3 = v10;
      }

      v3[2] = v35 + 1;
      v36 = &v3[4 * v35];
      v36[4] = v53;
      v36[5] = v54;
      v36[6] = 0;
      v36[7] = 0xE000000000000000;
      v2 = v49;
      v37 = 1 << *(v49 + 32);
      if (v6 >= v37)
      {
        goto LABEL_32;
      }

      v8 = v48;
      v38 = *(v48 + 8 * v9);
      if ((v38 & (1 << v6)) == 0)
      {
        goto LABEL_33;
      }

      if (*(v49 + 36) != v52)
      {
        goto LABEL_34;
      }

      v39 = v38 & (-2 << (v6 & 0x3F));
      if (v39)
      {
        v37 = __clz(__rbit64(v39)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v40 = v9 << 6;
        v41 = v9 + 1;
        v42 = (v45 + 8 * v9);
        while (v41 < (v37 + 63) >> 6)
        {
          v44 = *v42++;
          v43 = v44;
          v40 += 64;
          ++v41;
          if (v44)
          {
            sub_100010FDC(v6, v52, v50 & 1);
            v37 = __clz(__rbit64(v43)) + v40;
            goto LABEL_26;
          }
        }

        sub_100010FDC(v6, v52, v50 & 1);
      }

LABEL_26:
      v5 = 0;
      v7 = v51 + 1;
      v6 = v37;
      v4 = v46;
      if (v51 + 1 == v47)
      {
        return;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

uint64_t sub_100010950(void *a1)
{
  v2 = _swiftEmptyArrayStorage;
  v17 = _swiftEmptyArrayStorage;
  if (!a1)
  {
    v14 = 0;
    v9 = 0;
    goto LABEL_11;
  }

  v3 = a1;
  Count = SidecarMapTableGetCount();
  v5 = _swiftEmptyArrayStorage;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || Count > _swiftEmptyArrayStorage[3] >> 1)
  {
    if (_swiftEmptyArrayStorage[2] <= Count)
    {
      v7 = Count;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage[2];
    }

    sub_100038CE8(isUniquelyReferenced_nonNull_native, v7, 0, _swiftEmptyArrayStorage);
    v5 = v8;
  }

  v17 = v5;
  v9 = swift_allocObject();
  *(v9 + 16) = &v17;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_100011004;
  *(v10 + 24) = v9;
  aBlock[4] = sub_100011018;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001BD84;
  aBlock[3] = &unk_10008DEC0;
  v11 = _Block_copy(aBlock);

  SidecarMapTableIterateObjects();

  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v14 = sub_100011004;
    v2 = v17;
LABEL_11:
    v15 = sub_100010F94(v2, 0);

    sub_100010FE8(v14, v9);
    return v15;
  }

  __break(1u);
  return result;
}

uint64_t sub_100010B70(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_100011020(a2, v10);
  type metadata accessor for Relay.Session(0);
  swift_dynamicCast();
  sub_1000387D0();
  v5 = *(*a3 + 16);
  result = sub_100038844(v5);
  v7 = *a3;
  *(v7 + 16) = v5 + 1;
  v8 = v7 + 16 * v5;
  *(v8 + 32) = a1;
  *(v8 + 40) = v9;
  return result;
}

id sub_100010C08(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = String._bridgeToObjectiveC()();

  v6 = [v3 initWithIdentifier:v5 rapportStream:a3];

  return v6;
}

unint64_t sub_100010C84()
{
  result = qword_100099170;
  if (!qword_100099170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099170);
  }

  return result;
}

uint64_t sub_100010CD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100010D20()
{
  result = qword_10009AAD0;
  if (!qword_10009AAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009AAD0);
  }

  return result;
}

uint64_t sub_100010D74()
{
  sub_10001203C();

  return _swift_deallocObject(v1);
}

uint64_t sub_100010DB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100010DD0()
{
  result = qword_1000991B0;
  if (!qword_1000991B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000991B0);
  }

  return result;
}

uint64_t sub_100010E78(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

unint64_t sub_100010ED0()
{
  result = qword_10009A770;
  if (!qword_10009A770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009A770);
  }

  return result;
}

uint64_t sub_100010F24(void *a1)
{
  v1 = a1;
  v4[0] = 0;
  v4[1] = 0;
  [v1 getUUIDBytes:v4];
  v2 = v4[0];

  return bswap32(v2);
}

uint64_t sub_100010F94(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_100010FDC(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_100010FE8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100011020(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000110A0()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100011198()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10001126C()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100011304(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
  }
}

uint64_t sub_100011310(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_10001132C()
{
  v1 = *(v0 + 16);
  swift_errorRetain();
  return v1;
}

void sub_100011358(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    sub_100003388(a1, a2);
  }
}

uint64_t sub_1000113CC(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  sub_100011D00();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10001142C(uint64_t a1, uint64_t a2)
{
  v4 = _s7SessionC8IdentityVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100011490(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3(0);
  sub_100011D00();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_10001151C()
{
  _Block_release(*(v0 + 16));
  sub_10001203C();

  return _swift_deallocObject(v1);
}

_OWORD *sub_100011558(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100011598(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_10000FC6C(a3, a4);
  sub_100011D00();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1000115F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000FC6C(&qword_100099208, &qword_1000757A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100011668(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_10000FC6C(a2, a3);
  sub_100011D00();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t getEnumTagSinglePayload for Client.DiagnosticState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Client.DiagnosticState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100011820);
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

__n128 sub_10001186C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100011878(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000118CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_100011934()
{
  result = qword_100099210;
  if (!qword_100099210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099210);
  }

  return result;
}

unint64_t sub_10001198C()
{
  result = qword_100099218;
  if (!qword_100099218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099218);
  }

  return result;
}

unint64_t sub_1000119E4()
{
  result = qword_100099220;
  if (!qword_100099220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099220);
  }

  return result;
}

uint64_t sub_100011A38(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000FD4C(&qword_100099138, &qword_100076A80);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100011AA4()
{
  result = qword_100099238;
  if (!qword_100099238)
  {
    sub_10000FD4C(&qword_100099148, &qword_100075740);
    sub_100011B50(&unk_100099240, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099238);
  }

  return result;
}

uint64_t sub_100011B50(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000FD4C(&qword_100099160, &qword_100075748);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100011C88(uint64_t a1)
{

  return swift_once();
}

void *sub_100011E08()
{

  return KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
}

uint64_t sub_100011E5C()
{

  return KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
}

uint64_t sub_100011ED4(uint64_t a1)
{

  return swift_willThrow();
}

BOOL sub_100011EEC(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_100011F08()
{

  return swift_arrayDestroy();
}

void sub_100011F7C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

unint64_t sub_100011F9C(float a1)
{
  *v2 = a1;

  return sub_100014C58(v3, v1, (v4 - 88));
}

void sub_100011FD4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 8u);
}

void sub_10001200C()
{
  v1 = 58;
  v2 = 0xE100000000000000;

  String.append(_:)(*&v1);
}

uint64_t sub_100012024()
{

  return swift_slowAlloc();
}

uint64_t sub_100012048()
{

  return swift_slowAlloc();
}

uint64_t sub_100012060()
{
  v0 = type metadata accessor for Logger();
  sub_1000034A4(v0, qword_1000992B0);
  sub_100003420(v0, qword_1000992B0);
  return Logger.init(subsystem:category:)();
}

void *sub_1000120E0()
{
  v1 = v0;
  v2 = *v0;
  *(v1 + 24) = 0;
  v3 = [objc_allocWithZone(RPCompanionLinkClient) init];
  v1[2] = v3;
  v4 = v3;
  sub_100013090(0xD000000000000011, 0x8000000100079E40, v4);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  v17 = sub_100013104;
  v18 = v5;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_100052C90;
  v16 = &unk_10008E408;
  v6 = _Block_copy(&v13);

  [v4 setInterruptionHandler:v6];
  _Block_release(v6);
  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  v17 = sub_10001313C;
  v18 = v7;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_100052C90;
  v16 = &unk_10008E458;
  v8 = _Block_copy(&v13);

  [v4 setInvalidationHandler:v8];
  _Block_release(v8);
  type metadata accessor for RemoteDisplayReadinessRequestHandler();
  swift_allocObject();
  v1[4] = sub_100018690();
  type metadata accessor for RemoteDisplayInitiationRequestHandler();
  swift_allocObject();
  v9 = sub_10002021C(v4);
  v10 = v4;
  sub_100013174(v9, v1);

  sub_100013404(v11, v1);

  return v1;
}

void sub_100012344(uint64_t a1, uint64_t (*a2)(void), const char *a3)
{
  if (qword_100098B48 != -1)
  {
    sub_10001388C(&qword_100098B48);
  }

  v5 = type metadata accessor for Logger();
  sub_100003420(v5, qword_1000992B0);
  oslog = Logger.logObject.getter();
  v6 = a2();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v6, a3, v7, 2u);
    sub_100003534(v7);
  }
}

uint64_t sub_100012424()
{
  [*(v0 + 16) invalidate];

  return v0;
}

uint64_t sub_10001245C()
{
  sub_100012424();

  return _swift_deallocClassInstance(v0, 40, 7);
}

void sub_1000124B4()
{
  if (*(v0 + 24))
  {
    if (qword_100098B48 != -1)
    {
      sub_10001388C(&qword_100098B48);
    }

    v1 = type metadata accessor for Logger();
    sub_100003420(v1, qword_1000992B0);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v2, "Activation requested, but it's already activated.", v3, 2u);
      sub_100003534(v3);
    }
  }

  else
  {
    v4 = v0;
    *(v0 + 24) = 1;
    if (qword_100098B48 != -1)
    {
      sub_10001388C(&qword_100098B48);
    }

    v5 = type metadata accessor for Logger();
    sub_100003420(v5, qword_1000992B0);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v24 = v9;
      *v8 = 136315394;
      v10 = _typeName(_:qualified:)();
      v12 = sub_100014C58(v10, v11, &v24);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2080;
      v13 = [*(v4 + 16) serviceType];
      if (v13)
      {
        v14 = v13;
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;
      }

      else
      {
        v15 = 0;
        v17 = 0;
      }

      aBlock = v15;
      v26 = v17;
      sub_10000FC6C(&qword_1000993A8, &qword_100075A40);
      v18 = String.init<A>(describing:)();
      v20 = sub_100014C58(v18, v19, &v24);

      *(v8 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v6, v7, "Activating a [%s] that handles requests to the [%s] service.", v8, 0x16u);
      swift_arrayDestroy();
      sub_100003534(v9);
      sub_100003534(v8);
    }

    v21 = *(v4 + 16);
    v29 = sub_100013070;
    v30 = v4;
    aBlock = _NSConcreteStackBlock;
    v26 = 1107296256;
    v27 = sub_100025214;
    v28 = &unk_10008E3B8;
    v22 = _Block_copy(&aBlock);

    [v21 activateWithCompletion:v22];
    _Block_release(v22);
  }
}

void sub_10001281C(uint64_t a1)
{
  if (a1)
  {
    if (qword_100098B48 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100003420(v1, qword_1000992B0);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v12 = v4;
      *v3 = 136315138;
      swift_errorRetain();
      sub_10000FC6C(&qword_1000993B0, &qword_100075980);
      v5 = String.init<A>(describing:)();
      v7 = sub_100014C58(v5, v6, &v12);

      *(v3 + 4) = v7;
      _os_log_impl(&_mh_execute_header, oslog, v2, "Activation failed. Error: [%s]", v3, 0xCu);
      sub_100003458(v4);

      return;
    }
  }

  else
  {
    if (qword_100098B48 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100003420(v8, qword_1000992B0);
    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v9, "Activation successful.", v10, 2u);
    }
  }
}

uint64_t sub_100012A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, void *a7, uint64_t a8)
{
  v29 = a3;
  v30 = a8;
  v32 = a2;
  v33 = a5;
  v31 = a1;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100098B48 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100003420(v15, qword_1000992B0);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v34 = v19;
    *v18 = 136446210;
    *(v18 + 4) = sub_100014C58(v33, a6, &v34);
    _os_log_impl(&_mh_execute_header, v16, v17, "Received a [%{public}s] request", v18, 0xCu);
    sub_100003458(v19);
  }

  type metadata accessor for OSActivity();
  swift_initStackObject();
  v21 = sub_100016614("com.apple.sidecar.handle_companion_link_request", 2, v20);
  sub_100013764();
  *v14 = static OS_dispatch_queue.main.getter();
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v22 = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v14, v11);
  if ((v22 & 1) == 0)
  {
    __break(1u);
  }

  v23 = a7[3];
  v24 = a7[4];
  sub_10000FCB4(a7, v23);
  v25 = swift_allocObject();
  v25[2] = v33;
  v25[3] = a6;
  v26 = v30;
  v25[4] = v29;
  v25[5] = a4;
  v25[6] = v21;
  v25[7] = v26;
  v27 = *(v24 + 16);

  v27(v31, v32, sub_1000137F0, v25, v23, v24);
}

void sub_100012DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  if (qword_100098B48 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100003420(v12, qword_1000992B0);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v20 = a2;
    v15 = swift_slowAlloc();
    v16 = a1;
    v17 = a3;
    v18 = a6;
    v19 = swift_slowAlloc();
    v21 = v19;
    *v15 = 136446210;
    *(v15 + 4) = sub_100014C58(a4, a5, &v21);
    _os_log_impl(&_mh_execute_header, v13, v14, "Sending a response to a [%{public}s] request", v15, 0xCu);
    sub_100003458(v19);
    a6 = v18;
    a3 = v17;
    a1 = v16;

    a2 = v20;
  }

  a6(a1, a2, a3);
  OSActivity.close()();
}

uint64_t sub_100012F64(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v6 = *(a1 + 32);
  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (a3)
  {
    a3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = _Block_copy(a4);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;

  v6(v7, a3, sub_10001375C, v9);
}

uint64_t sub_100013078(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100013090(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setServiceType:v4];
}

uint64_t sub_100013174(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v18[3] = type metadata accessor for RemoteDisplayInitiationRequestHandler();
  v18[4] = &off_10008EEB0;
  v18[0] = a1;
  v5 = qword_100098B48;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003420(v6, qword_1000992B0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100014C58(0xD000000000000015, 0x800000010007A3B0, v16);
    _os_log_impl(&_mh_execute_header, v7, v8, "Registering CompanionLink request handler for requests with identifier [%s]", v9, 0xCu);
    sub_100003458(v10);
  }

  v11 = a2[2];
  v12 = String._bridgeToObjectiveC()();
  sub_100013694(v18, v17);
  v13 = swift_allocObject();
  v13[2] = 0xD000000000000015;
  v13[3] = 0x800000010007A3B0;
  sub_1000136FC(v17, (v13 + 4));
  v13[9] = v4;
  v16[4] = sub_100013870;
  v16[5] = v13;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_100012F64;
  v16[3] = &unk_10008E548;
  v14 = _Block_copy(v16);

  [v11 registerRequestID:v12 options:0 handler:v14];
  _Block_release(v14);

  return sub_100003458(v18);
}

uint64_t sub_100013404(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v18[3] = type metadata accessor for RemoteDisplayReadinessRequestHandler();
  v18[4] = &off_10008E788;
  v18[0] = a1;
  v5 = qword_100098B48;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003420(v6, qword_1000992B0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100014C58(0xD000000000000016, 0x800000010007A300, v16);
    _os_log_impl(&_mh_execute_header, v7, v8, "Registering CompanionLink request handler for requests with identifier [%s]", v9, 0xCu);
    sub_100003458(v10);
  }

  v11 = a2[2];
  v12 = String._bridgeToObjectiveC()();
  sub_100013694(v18, v17);
  v13 = swift_allocObject();
  v13[2] = 0xD000000000000016;
  v13[3] = 0x800000010007A300;
  sub_1000136FC(v17, (v13 + 4));
  v13[9] = v4;
  v16[4] = sub_100013714;
  v16[5] = v13;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_100012F64;
  v16[3] = &unk_10008E4A8;
  v14 = _Block_copy(v16);

  [v11 registerRequestID:v12 options:0 handler:v14];
  _Block_release(v14);

  return sub_100003458(v18);
}

uint64_t sub_100013694(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000136FC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100013724()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0);
}

unint64_t sub_100013764()
{
  result = qword_1000991A0;
  if (!qword_1000991A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000991A0);
  }

  return result;
}

uint64_t sub_1000137A8()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100013820()
{

  sub_100003458((v0 + 32));

  return _swift_deallocObject(v0);
}

uint64_t sub_10001388C(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1000138AC()
{
  v0 = type metadata accessor for Logger();
  sub_1000034A4(v0, qword_1000993B8);
  sub_100003420(v0, qword_1000993B8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10001393C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for CompanionLinkDevice(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  *(v4 + 24) = 0;
  type metadata accessor for CompanionLinkClient();
  sub_1000151CC(a3, v10);
  *(v4 + 16) = CompanionLinkClient.__allocating_init(destination:serviceType:)(v10, 0xD000000000000011, 0x8000000100079E40);

  v11 = *RapportControlFlags.AWDL.unsafeMutableAddressor();
  v12 = *RapportControlFlags.infraWiFi.unsafeMutableAddressor();
  v13 = *RapportControlFlags.BLE.unsafeMutableAddressor();
  if (!v11)
  {
    if (!v12)
    {
      v11 = 0;
      if (!v13)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if ((v12 & ~v11) != 0)
  {
LABEL_5:
    v11 |= v12;
  }

  if ((v13 & ~v11) != 0)
  {
LABEL_7:
    v11 |= v13;
  }

LABEL_8:
  CompanionLinkClient.controlFlags.setter(v11);

  sub_100015230(a3);
  return v4;
}

uint64_t sub_100013A70()
{

  CompanionLinkClient.cancel()();

  return v0;
}

uint64_t sub_100013ABC()
{
  sub_100013A70();

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t sub_100013B14(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_10000FC6C(&qword_1000994B8, &qword_100075A30);
  __chkstk_darwin(v7);
  v9 = &v44 - v8;
  if (v2[3])
  {
    if (qword_100098B50 != -1)
    {
      sub_1000154F8(&qword_100098B50);
    }

    v10 = type metadata accessor for Logger();
    sub_100003420(v10, qword_1000993B8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Already attempted to send the request.  Will not try again.", v13, 2u);
      sub_100003534(v13);
    }

    sub_1000152D8();
    swift_allocError();
    *v14 = 0;
    a1();
  }

  else
  {
    if (qword_100098B50 != -1)
    {
      sub_1000154F8(&qword_100098B50);
    }

    v16 = type metadata accessor for Logger();
    sub_100003420(v16, qword_1000993B8);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v47 = a1;
      v20 = v19;
      v21 = swift_slowAlloc();
      v46 = v21;
      *v20 = 136315906;
      v50 = v3[2];
      v51 = v21;
      v22 = type metadata accessor for CompanionLinkClient();
      v45 = v18;
      v48 = RapportMessageable.serviceType.getter(v22, &protocol witness table for CompanionLinkClient);
      v49 = v23;
      sub_10000FC6C(&qword_1000993A8, &qword_100075A40);
      v24 = String.init<A>(describing:)();
      v26 = v6;
      v27 = a2;
      v28 = sub_100014C58(v24, v25, &v51);

      *(v20 + 4) = v28;
      *(v20 + 12) = 2080;
      v29 = CompanionLinkClient.controlFlags.getter();
      v30 = RPControlFlagsCopyDescription(v29);
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v17;
      v33 = v32;

      v34 = v31;
      a2 = v27;
      v6 = v26;
      v35 = sub_100014C58(v34, v33, &v51);

      *(v20 + 14) = v35;
      *(v20 + 22) = 2080;
      CompanionLinkClient.destinationDevice.getter(v9);
      v36 = String.init<A>(describing:)();
      v38 = sub_100014C58(v36, v37, &v51);

      *(v20 + 24) = v38;
      *(v20 + 32) = 2080;
      *(v20 + 34) = sub_100014C58(v3[4], v3[5], &v51);
      v39 = v44;
      _os_log_impl(&_mh_execute_header, v44, v45, "Activating client.  serviceType: [%s].  controlFlags: [%s].  destinationDevice: [%s]. idsDeviceIdentifierOfLocalDevice: [%s].", v20, 0x2Au);
      v40 = v46;
      swift_arrayDestroy();
      sub_100003534(v40);
      v41 = v20;
      a1 = v47;
      sub_100003534(v41);
    }

    else
    {
    }

    v42 = swift_allocObject();
    swift_weakInit();
    v43 = swift_allocObject();
    v43[2] = v42;
    v43[3] = a1;
    v43[4] = a2;
    v43[5] = v6;

    CompanionLinkClient.activate(completion:)(sub_1000152CC, v43);
  }
}

uint64_t sub_100013F78(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  if (a1)
  {
    if (qword_100098B50 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100003420(v7, qword_1000993B8);
    swift_errorRetain();

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v46 = v12;
      *v10 = 138412546;
      v13 = _convertErrorToNSError(_:)();
      *(v10 + 4) = v13;
      *v11 = v13;
      *(v10 + 12) = 2080;
      swift_beginAccess();
      swift_weakLoadStrong();
      sub_10000FC6C(&qword_1000994D0, &unk_100075A50);
      v14 = String.init<A>(describing:)();
      v16 = sub_100014C58(v14, v15, &v46);

      *(v10 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v8, v9, "Client activation failed. Error: [%@].  Request: [%s]", v10, 0x16u);
      sub_10001538C(v11);

      sub_100003458(v12);
    }

    sub_1000152D8();
    v17 = swift_allocError();
    *v18 = a1;
    swift_errorRetain();
    a3(v17);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    if (qword_100098B50 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_100003420(v41, qword_1000993B8);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "The request object has been deallocated.  Will not try to send the request.", v44, 2u);
    }

    sub_1000152D8();
    swift_allocError();
    *v45 = 1;
    (a3)();
  }

  v21 = Strong;
  sub_10000FC6C(&qword_10009AA80, &qword_100075A48);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000759A0;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x800000010007A4D0;
  v23 = v21[5];
  *(inited + 48) = v21[4];
  *(inited + 56) = v23;

  v24 = Dictionary.init(dictionaryLiteral:)();
  if (qword_100098B50 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_100003420(v25, qword_1000993B8);

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v28 = 136315650;
    *(v28 + 4) = sub_100014C58(0xD000000000000015, 0x800000010007A3B0, &v46);
    *(v28 + 12) = 2080;
    v29 = Dictionary.description.getter();
    v31 = sub_100014C58(v29, v30, &v46);

    *(v28 + 14) = v31;
    *(v28 + 22) = 2080;
    type metadata accessor for RemoteDisplayInitiationRequest();

    v32 = String.init<A>(describing:)();
    v34 = sub_100014C58(v32, v33, &v46);

    *(v28 + 24) = v34;
    _os_log_impl(&_mh_execute_header, v26, v27, "The client has been activated.  Sending request with request ID: [%s].  requestBody: [%s].  Request: [%s]", v28, 0x20u);
    swift_arrayDestroy();
  }

  v46 = v21[2];

  sub_100024174(v24);
  v36 = v35;

  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;
  v40 = swift_allocObject();
  v40[2] = v21;
  v40[3] = a3;
  v40[4] = a4;
  type metadata accessor for CompanionLinkClient();

  RapportMessageable.sendRequest(id:request:destinationID:options:response:)(0xD000000000000015, 0x800000010007A3B0, v36, v37, v39, 0, sub_100015380, v40);
}

uint64_t sub_1000145F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  if (a3)
  {
    swift_errorRetain();
    if (qword_100098B50 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100003420(v7, qword_1000993B8);
    swift_errorRetain();

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v26 = v12;
      *v10 = 138412546;
      v13 = _convertErrorToNSError(_:)();
      *(v10 + 4) = v13;
      *v11 = v13;
      *(v10 + 12) = 2080;
      type metadata accessor for RemoteDisplayInitiationRequest();

      v14 = String.init<A>(describing:)();
      v16 = sub_100014C58(v14, v15, &v26);

      *(v10 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v8, v9, "Request failed with error: [%@].  Request: [%s]", v10, 0x16u);
      sub_10001538C(v11);

      sub_100003458(v12);
    }

    a5(a3);
  }

  else
  {
    if (qword_100098B50 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100003420(v18, qword_1000993B8);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v26 = v22;
      *v21 = 136315138;
      type metadata accessor for RemoteDisplayInitiationRequest();

      v23 = String.init<A>(describing:)();
      v25 = sub_100014C58(v23, v24, &v26);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v19, v20, "Remote display initiation request completed successfully.  Request: [%s]", v21, 0xCu);
      sub_100003458(v22);
    }

    return (a5)(0);
  }
}

void sub_100014938(uint64_t a1, const char *a2)
{
  v4 = v2;
  if (qword_100098B50 != -1)
  {
    sub_1000154F8(&qword_100098B50);
  }

  v5 = type metadata accessor for Logger();
  sub_100003420(v5, qword_1000993B8);

  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100014C58(*(v4 + 32), *(v4 + 40), &v10);
    _os_log_impl(&_mh_execute_header, oslog, v6, a2, v7, 0xCu);
    sub_100003458(v8);
    sub_100003534(v8);
    sub_100003534(v7);
  }
}

uint64_t sub_100014AA8()
{
  v1 = sub_10000FC6C(&qword_1000994B8, &qword_100075A30);
  __chkstk_darwin(v1);
  v3 = v11 - v2;
  v12 = 0;
  v13 = 0xE000000000000000;
  _StringGuts.grow(_:)(65);
  v4._countAndFlagsBits = 91;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  v11[1] = v0->_countAndFlagsBits;
  sub_10000FC6C(&qword_1000994C0, &qword_100075A38);
  v5._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 0xD000000000000025;
  v6._object = 0x800000010007A480;
  String.append(_:)(v6);
  String.append(_:)(v0[2]);
  v7._object = 0x800000010007A4B0;
  v7._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v7);
  CompanionLinkClient.destinationDevice.getter(v3);
  v8._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 93;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  return v12;
}

unint64_t sub_100014C58(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100014D1C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_100011020(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_100003458(v11);
  return v7;
}

unint64_t sub_100014D1C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100014E1C(a5, a6);
    *a1 = v9;
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
    result = _StringObject.sharedUTF8.getter();
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

void *sub_100014E1C(uint64_t a1, unint64_t a2)
{
  v3 = sub_100014E68(a1, a2);
  sub_100014F80(&off_10008D958);
  return v3;
}

void *sub_100014E68(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = sub_100015064(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 4;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 4;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100014F80(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_1000150D4(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100015064(uint64_t a1, uint64_t a2)
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

  sub_10000FC6C(&qword_1000994B0, &qword_100075A28);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_1000150D4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000FC6C(&qword_1000994B0, &qword_100075A28);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_1000151CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompanionLinkDevice(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100015230(uint64_t a1)
{
  v2 = type metadata accessor for CompanionLinkDevice(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001528C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0);
}

unint64_t sub_1000152D8()
{
  result = qword_1000994C8;
  if (!qword_1000994C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000994C8);
  }

  return result;
}

uint64_t sub_100015334()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10001538C(uint64_t a1)
{
  v2 = sub_10000FC6C(&unk_100099AF0, &qword_100075D60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000153F4(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100015418(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001546C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1000154C8(void *result, int a2)
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

uint64_t sub_1000154F8(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100015518()
{
  v0 = type metadata accessor for Logger();
  sub_1000034A4(v0, qword_1000994D8);
  sub_100003420(v0, qword_1000994D8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10001559C()
{
  if (*(v0 + 24) == 1)
  {

    CompanionLinkClient.cancel()();
  }

  return v0;
}

uint64_t sub_1000155F4()
{
  sub_10001559C();

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t sub_10001564C@<X0>(uint64_t a1@<X8>)
{

  CompanionLinkClient.localDevice.getter(a1);
}

void sub_100015694()
{
  if (*(v0 + 24) == 1)
  {

    CompanionLinkClient.cancel()();

    type metadata accessor for CompanionLinkClient();
    *(v0 + 16) = CompanionLinkClient.__allocating_init()();

    *(v0 + 24) = 0;
  }

  else
  {
    if (qword_100098B58 != -1)
    {
      sub_100016428(&qword_100098B58);
    }

    v1 = type metadata accessor for Logger();
    sub_100003420(v1, qword_1000994D8);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v2, "The network device detector has not been started.  Will not stop.", v3, 2u);
      sub_100003534(v3);
    }
  }
}

void sub_1000157C0(uint64_t a1, char a2)
{
  v4 = type metadata accessor for CompanionLinkDevice(0);
  __chkstk_darwin(v4);
  sub_100011CD4();
  v7 = v6 - v5;
  v8 = sub_10000FC6C(&qword_100099608, &unk_100075BC0);
  __chkstk_darwin(v8);
  v10 = &v28[-v9];
  v11 = RapportEndpoint.idsDeviceIdentifier.getter(v4, &protocol witness table for CompanionLinkDevice);
  v13 = v12;

  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    v15 = *(v8 + 48);
    sub_1000151CC(a1, v10);
    v10[v15] = a2;
    PassthroughSubject.send(_:)();
    sub_1000163C0(v10);
  }

  else
  {
    if (qword_100098B58 != -1)
    {
      sub_100016428(&qword_100098B58);
    }

    v16 = type metadata accessor for Logger();
    sub_100003420(v16, qword_1000994D8);
    sub_1000151CC(a1, v7);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v29 = v20;
      *v19 = 136446466;
      v28[7] = a2;
      v21 = String.init<A>(describing:)();
      v23 = sub_100014C58(v21, v22, &v29);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2082;
      v24 = CompanionLinkDevice.description.getter();
      v26 = v25;
      sub_100015230(v7);
      v27 = sub_100014C58(v24, v26, &v29);

      *(v19 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v17, v18, "A device with a nil 'idsDeviceIdentifier' device was [%{public}s]: [%{public}s].  Ignoring.", v19, 0x16u);
      swift_arrayDestroy();
      sub_100003534(v20);
      sub_100003534(v19);
    }

    else
    {

      sub_100015230(v7);
    }
  }
}

uint64_t getEnumTagSinglePayload for CompanionLinkDeviceDetector.DeviceObservationState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CompanionLinkDeviceDetector.DeviceObservationState(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x100015BC4);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100015C00()
{
  result = qword_100099600;
  if (!qword_100099600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099600);
  }

  return result;
}

void sub_100015C54(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for CompanionLinkDevice(0);
  __chkstk_darwin(v4 - 8);
  sub_100011CD4();
  v7 = v6 - v5;
  if (qword_100098B58 != -1)
  {
    sub_100016428(&qword_100098B58);
  }

  v8 = type metadata accessor for Logger();
  sub_100003420(v8, qword_1000994D8);
  sub_1000151CC(a1, v7);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v9, v10))
  {

    sub_100015230(v7);
    goto LABEL_7;
  }

  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v22 = v12;
  *v11 = 136446466;
  v13 = CompanionLinkDevice.description.getter();
  v15 = v14;
  sub_100015230(v7);
  v16 = sub_100014C58(v13, v15, &v22);

  *(v11 + 4) = v16;
  *(v11 + 12) = 2082;
  if (!HIDWORD(a2))
  {
    v17 = RPDeviceChangeFlagsCopyDescription(a2);
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = sub_100014C58(v18, v20, &v22);

    *(v11 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v9, v10, "CompanionLink device 'changed': [%{public}s].  Flags: [%{public}s]", v11, 0x16u);
    swift_arrayDestroy();
    sub_100003534(v12);
    sub_100003534(v11);

LABEL_7:
    sub_1000157C0(a1, 0);
    return;
  }

  __break(1u);
}

void sub_100015E74(uint64_t a1, const char *a2, char a3)
{
  v6 = type metadata accessor for CompanionLinkDevice(0);
  __chkstk_darwin(v6 - 8);
  sub_100011CD4();
  v9 = v8 - v7;
  if (qword_100098B58 != -1)
  {
    sub_100016428(&qword_100098B58);
  }

  v10 = type metadata accessor for Logger();
  sub_100003420(v10, qword_1000994D8);
  sub_1000151CC(a1, v9);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136446210;
    v15 = CompanionLinkDevice.description.getter();
    v16 = a3;
    v17 = a2;
    v19 = v18;
    sub_100015230(v9);
    v20 = sub_100014C58(v15, v19, &v22);

    *(v13 + 4) = v20;
    v21 = v17;
    a3 = v16;
    _os_log_impl(&_mh_execute_header, v11, v12, v21, v13, 0xCu);
    sub_100003458(v14);
    sub_100003534(v14);
    sub_100003534(v13);
  }

  else
  {

    sub_100015230(v9);
  }

  sub_1000157C0(a1, a3);
}

void sub_100016048(uint64_t a1, uint64_t (*a2)(void), const char *a3)
{
  if (qword_100098B58 != -1)
  {
    sub_100016428(&qword_100098B58);
  }

  v5 = type metadata accessor for Logger();
  sub_100003420(v5, qword_1000994D8);
  oslog = Logger.logObject.getter();
  v6 = a2();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v6, a3, v7, 2u);
    sub_100003534(v7);
  }
}

void sub_100016128(uint64_t a1)
{
  v2 = type metadata accessor for CompanionLinkDevice(0);
  __chkstk_darwin(v2 - 8);
  sub_100011CD4();
  v5 = v4 - v3;
  if (qword_100098B58 != -1)
  {
    sub_100016428(&qword_100098B58);
  }

  v6 = type metadata accessor for Logger();
  sub_100003420(v6, qword_1000994D8);
  sub_1000151CC(a1, v5);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136446210;
    v11 = CompanionLinkDevice.description.getter();
    v13 = v12;
    sub_100015230(v5);
    v14 = sub_100014C58(v11, v13, &v15);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "CompanionLink local device changed: [%{public}s]", v9, 0xCu);
    sub_100003458(v10);
    sub_100003534(v10);
    sub_100003534(v9);
  }

  else
  {

    sub_100015230(v5);
  }
}

uint64_t sub_1000163C0(uint64_t a1)
{
  v2 = sub_10000FC6C(&qword_100099608, &unk_100075BC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100016428(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100016448()
{
  v0 = type metadata accessor for Logger();
  sub_1000034A4(v0, qword_100099610);
  sub_100003420(v0, qword_100099610);
  return Logger.init(subsystem:category:)();
}

void *sub_1000164C8()
{

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1000164F8()
{
  sub_1000164C8();

  return _swift_deallocClassInstance(v0, 41, 7);
}

Swift::Void __swiftcall OSActivity.close()()
{
  if (*(v0 + 16))
  {
    sub_100016C04(v0 + 24);
    os_activity_scope_leave((v0 + 24));
    swift_endAccess();
    *(v0 + 16) = 0;
    swift_unknownObjectRelease();
  }
}

uint64_t sub_100016598()
{
  v0 = type metadata accessor for Logger();
  sub_1000034A4(v0, qword_100099740);
  sub_100003420(v0, qword_100099740);
  return Logger.init(subsystem:category:)();
}

void *sub_100016614@<X0>(char *a1@<X0>, uint64_t a3@<X2>, unint64_t x8_0@<X8>)
{
  v5 = v4;
  v4[3] = 0;
  v4[4] = 0;
  v4[2] = 0;
  v6 = sub_1000166C4(&_mh_execute_header, a1, a3, x8_0);
  v5[2] = v6;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (v6)
  {
    sub_100016C04((v5 + 3));
    os_activity_scope_enter(v6, (v5 + 3));
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  return v5;
}

os_activity_t sub_1000166C4@<X0>(void *dso@<X3>, char *a2@<X0>, uint64_t a4@<X2>, unint64_t a5@<X8>)
{
  if ((a4 & 1) == 0)
  {
    if (a2)
    {
      if (dso)
      {
        if (qword_100098B70 != -1)
        {
          swift_once();
        }

        v7 = qword_100099758;
        v8 = dso;
        v9 = a2;
        return _os_activity_create(v8, v9, v7, OS_ACTIVITY_FLAG_DEFAULT);
      }

      if (qword_100098B68 == -1)
      {
LABEL_18:
        v12 = type metadata accessor for Logger();
        sub_100003420(v12, qword_100099740);
        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          *description = v16;
          *v15 = 136315138;
          v17 = StaticString.description.getter();
          v19 = description;
LABEL_24:
          v21 = sub_100014C58(v17, v18, v19);

          *(v15 + 4) = v21;
          _os_log_impl(&_mh_execute_header, v13, v14, "Failed to create OS Activity [%s].", v15, 0xCu);
          sub_100003458(v16);

          goto LABEL_25;
        }

        goto LABEL_25;
      }

LABEL_32:
      swift_once();
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_27;
  }

  a5 = a2 >> 32;
  if (a2 >> 32)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if ((a2 & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
    goto LABEL_32;
  }

  a5 = a2 >> 16;
  if (a2 >> 16 > 0x10)
  {
    goto LABEL_28;
  }

  if (a2 <= 0x7F)
  {
    v10 = a2 + 1;
    goto LABEL_12;
  }

LABEL_29:
  v22 = (a2 & 0x3F) << 8;
  if (a2 >= 0x800)
  {
    v23 = (v22 | (a2 >> 6) & 0x3F) << 8;
    v24 = (a2 >> 18) + ((v23 | (a2 >> 12) & 0x3F) << 8) - 2122219023;
    v25 = (a2 >> 12) + v23 + 8487393;
    if (a5)
    {
      v10 = v24;
    }

    else
    {
      v10 = v25;
    }
  }

  else
  {
    v10 = (a2 >> 6) + v22 + 33217;
  }

LABEL_12:
  *description = (v10 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v10) & 0x18)));
  if (dso)
  {
    if (qword_100098B70 != -1)
    {
      swift_once();
    }

    v7 = qword_100099758;
    v9 = description;
    v8 = dso;
    return _os_activity_create(v8, v9, v7, OS_ACTIVITY_FLAG_DEFAULT);
  }

  if (qword_100098B68 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100003420(v20, qword_100099740);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v26 = v16;
    *v15 = 136315138;
    v17 = StaticString.description.getter();
    v19 = &v26;
    goto LABEL_24;
  }

LABEL_25:

  return 0;
}

uint64_t OSActivity.deinit()
{
  v1 = v0;
  if (*(v0 + 16))
  {
    if (qword_100098B68 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100003420(v2, qword_100099740);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
    }

    sub_100016C04(v1 + 24);
    os_activity_scope_leave((v1 + 24));
    swift_endAccess();
    *(v1 + 16) = 0;
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  return v1;
}

uint64_t OSActivity.__deallocating_deinit()
{
  OSActivity.deinit();

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t sub_100016BA4()
{
  qword_100099758 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");

  return swift_unknownObjectRetain();
}

uint64_t sub_100016C04(uint64_t a1)
{

  return swift_beginAccess();
}

void sub_100016C54(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  a1();
  v7 = _convertErrorToNSError(_:)();

  v8 = [v7 localizedDescription];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  _StringGuts.grow(_:)(29);

  v27[0] = a4;
  v27[1] = a5;
  v12._object = 0x800000010007A6D0;
  v12._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v12);
  v13 = a4;
  v26 = v7;

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v27[0] = v17;
    *v16 = 136446979;
    v18 = sub_100014C58(v13, a5, v27);

    *(v16 + 4) = v18;
    *(v16 + 12) = 2082;
    v19 = [v26 domain];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23 = sub_100014C58(v20, v22, v27);

    *(v16 + 14) = v23;
    *(v16 + 22) = 2048;
    v24 = [v26 code];

    *(v16 + 24) = v24;
    *(v16 + 32) = 2081;
    v25 = sub_100014C58(v9, v11, v27);

    *(v16 + 34) = v25;
    _os_log_impl(&_mh_execute_header, v14, v15, "%{public}s: %{public}s (%ld) %{private}s", v16, 0x2Au);
    swift_arrayDestroy();
    sub_100003534(v17);
    sub_100003534(v16);
  }

  else
  {
  }
}

void sub_100016F18(uint64_t (*a1)(void), uint64_t a2, uint64_t (*a3)(void))
{
  a3();
  v4 = _convertErrorToNSError(_:)();

  v5 = [v4 localizedDescription];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = a1();
  if (v10)
  {
    v11 = v9;
    v12 = v10;
    v33 = v4;

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v34 = v16;
      *v15 = 136446979;
      v17 = sub_100014C58(v11, v12, &v34);

      *(v15 + 4) = v17;
      *(v15 + 12) = 2082;
      v18 = [v33 domain];
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v22 = sub_100014C58(v19, v21, &v34);

      *(v15 + 14) = v22;
      *(v15 + 22) = 2048;
      v23 = [v33 code];

      *(v15 + 24) = v23;
      *(v15 + 32) = 2081;
      v24 = sub_100014C58(v6, v8, &v34);

      *(v15 + 34) = v24;
      _os_log_impl(&_mh_execute_header, v13, v14, "%{public}s: %{public}s (%ld) %{private}s", v15, 0x2Au);
LABEL_6:
      swift_arrayDestroy();
      sub_100003534(v16);
      sub_100003534(v15);

      return;
    }
  }

  else
  {
    v33 = v4;

    v13 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v25))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v34 = v16;
      *v15 = 136446723;
      v26 = [v33 domain];
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      v30 = sub_100014C58(v27, v29, &v34);

      *(v15 + 4) = v30;
      *(v15 + 12) = 2048;
      v31 = [v33 code];

      *(v15 + 14) = v31;
      *(v15 + 22) = 2081;
      v32 = sub_100014C58(v6, v8, &v34);

      *(v15 + 24) = v32;
      _os_log_impl(&_mh_execute_header, v13, v25, "%{public}s (%ld) %{private}s", v15, 0x20u);
      goto LABEL_6;
    }
  }
}

uint64_t sub_100017310()
{
  v0 = type metadata accessor for Logger();
  sub_1000034A4(v0, qword_1000998B0);
  sub_100003420(v0, qword_1000998B0);
  return Logger.init(subsystem:category:)();
}

void sub_100017398(uint64_t a1, uint64_t a2, void (*a3)(void, void, id))
{
  if (qword_100098B78 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003420(v4, qword_1000998B0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "This platform does not support readiness requests.", v7, 2u);
  }

  sub_1000033E0(0, &qword_100099030, NSError_ptr);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = sub_10001E468(v8, v9, -999, 0, 0, 0);
  a3(0, 0, v10);
}

uint64_t sub_100017514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v5;
  type metadata accessor for DispatchWorkItemFlags();
  sub_100011C54();
  __chkstk_darwin(v11);
  sub_100011CD4();
  sub_100018BF4();
  v26 = type metadata accessor for DispatchQoS();
  sub_100011C54();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_100011CD4();
  v17 = v16 - v15;
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = a3;
  v18[5] = a4;
  v18[6] = v10;
  v30 = sub_100018AC8;
  v31 = v18;
  sub_100018BA0();
  sub_100018B88(COERCE_DOUBLE(1107296256));
  v28 = v19;
  v29 = &unk_10008E890;
  v20 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  sub_100018BC0();
  sub_100018AD8(v21, v22, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000FC6C(&unk_100099AD0, &qword_100075D58);
  sub_100018B20(&qword_10009A9B0, &unk_100099AD0, &qword_100075D58);
  sub_100018BD8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  v23 = sub_100018C04();
  v24(v23);
  (*(v13 + 8))(v17, v26);
}

void sub_100017790(uint64_t a1, unint64_t a2, void (*a3)(void, void, id))
{
  if (qword_100098B98 != -1)
  {
LABEL_36:
    swift_once();
  }

  v5 = sub_100021270();
  v6 = sub_1000388A4(v5);
  for (i = 0; v6 != i; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_35;
      }

      v8 = *(v5 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v39 = v8;
    v9 = type metadata accessor for RapportRemoteDisplayDevice();
    if (RapportEndpoint.idsDeviceIdentifier.getter(v9, &protocol witness table for RapportRemoteDisplayDevice) == a1 && v10 == a2)
    {

LABEL_21:

      sub_1000033E0(0, &unk_100099AE0, SidecarDevice_ptr);

      v22 = sub_100058458(v21);
      if (v22)
      {
        v23 = v22;
        if (qword_100098B78 != -1)
        {
          swift_once();
        }

        v24 = type metadata accessor for Logger();
        sub_100003420(v24, qword_1000998B0);
        v20 = v23;
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          *v27 = 138477827;
          *(v27 + 4) = v20;
          *v28 = v23;
          v29 = v20;
          _os_log_impl(&_mh_execute_header, v25, v26, "Successfully received a readiness ping. We should be able to start Sidecar with: [%{private}@]", v27, 0xCu);
          sub_10001538C(v28);
        }

        v30 = 0;
      }

      else
      {
        if (qword_100098B78 != -1)
        {
          swift_once();
        }

        v31 = type metadata accessor for Logger();
        sub_100003420(v31, qword_1000998B0);

        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v39 = v35;
          *v34 = 136380675;
          *(v34 + 4) = sub_100014C58(a1, a2, &v39);
          _os_log_impl(&_mh_execute_header, v32, v33, "Could not convert device with an IDS identifier of [%{private}s]. Responding with Error.", v34, 0xCu);
          sub_100003458(v35);
        }

        sub_1000033E0(0, &qword_100099030, NSError_ptr);
        v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = sub_10001E468(v36, v37, -999, 0, 0, 0);
        v30 = v20;
      }

      a3(0, 0, v30);

      goto LABEL_33;
    }

    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v12)
    {
      goto LABEL_21;
    }
  }

  if (qword_100098B78 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100003420(v13, qword_1000998B0);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v39 = v17;
    *v16 = 136380675;
    *(v16 + 4) = sub_100014C58(a1, a2, &v39);
    _os_log_impl(&_mh_execute_header, v14, v15, "Could not find a device with an IDS identifier of [%{private}s]. Responding with Error.", v16, 0xCu);
    sub_100003458(v17);
  }

  sub_1000033E0(0, &qword_100099030, NSError_ptr);
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = sub_10001E468(v18, v19, -200, 0, 0, 0);
  a3(0, 0, v20);
LABEL_33:
}

uint64_t sub_100017D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a2;
  v23 = a3;
  v3 = type metadata accessor for RemoteDisplayReadinessRequestHandler.ExpiringResponse(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    swift_beginAccess();
    v9 = *(v8 + 24);

    if (!*(v9 + 16))
    {
    }

    v10 = sub_1000391EC();
    if ((v11 & 1) == 0)
    {
    }

    v12 = *(*(v9 + 56) + 8 * v10);

    v13 = *(v12 + 16);
    if (v13)
    {
      v14 = *(v3 + 20);
      v15 = &v6[*(v3 + 24)];
      v16 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v21 = v12;
      v17 = v12 + v16;
      swift_beginAccess();
      v18 = *(v4 + 72);
      do
      {
        sub_1000189C8(v17, v6);
        if (*&v6[v14])
        {
          swift_getObjectType();
          OS_dispatch_source.cancel()();
        }

        v19 = *v15;
        if (*v15)
        {
          v20 = v15[1];
          if (swift_weakLoadStrong())
          {

            sub_100017514(v22, v23, v19, v20);
            sub_100010FE8(v19, v20);
          }
        }

        sub_100018A2C(v6);
        v17 += v18;
        --v13;
      }

      while (v13);
    }

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      swift_beginAccess();
      sub_10003C15C(v22, v23);
      swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_100018014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_100011C54();
  __chkstk_darwin(v8);
  sub_100011CD4();
  sub_100018BF4();
  v25 = type metadata accessor for DispatchQoS();
  sub_100011C54();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100011CD4();
  v14 = v13 - v12;
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = a1;
  v16[4] = a2;
  v29 = a4;
  v30 = v16;
  sub_100018BA0();
  sub_100018B88(COERCE_DOUBLE(1107296256));
  v27 = v17;
  v28 = a5;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  sub_100018BC0();
  sub_100018AD8(v19, v20, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000FC6C(&unk_100099AD0, &qword_100075D58);
  sub_100018B20(&qword_10009A9B0, &unk_100099AD0, &qword_100075D58);
  sub_100018BD8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  v21 = sub_100018C04();
  v22(v21);
  (*(v10 + 8))(v14, v25);
}

uint64_t sub_100018280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    sub_10003C15C(a2, a3);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_100018344()
{
  sub_10001831C();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_1000183B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1000113A4(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_10001847C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_10001137C(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t type metadata accessor for RemoteDisplayReadinessRequestHandler.ExpiringResponse(uint64_t a1)
{
  result = qword_100099A08;
  if (!qword_100099A08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100018570(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    sub_10001863C(319, &qword_100099A18, &qword_100099A80, &qword_100075D10);
    if (v3 <= 0x3F)
    {
      sub_10001863C(319, &qword_100099A88, &unk_100099A90, qword_100075D18);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10001863C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_10000FD4C(a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_100018690()
{
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_100011C54();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_100011CD4();
  sub_100018BF4();
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  sub_100011CD4();
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  sub_100011CD4();
  sub_1000033E0(0, &qword_1000991A0, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  sub_100018AD8(&qword_100099B00, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10000FC6C(&qword_100099B08, &qword_100075D68);
  sub_100018B20(&qword_100099B10, &qword_100099B08, &qword_100075D68);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v0, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  *(v8 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  sub_10000FC6C(&qword_100099B18, &unk_100075D70);
  *(v8 + 24) = Dictionary.init(dictionaryLiteral:)();
  return v8;
}

uint64_t sub_10001891C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0);
}

uint64_t sub_100018960(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001897C()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_1000189C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteDisplayReadinessRequestHandler.ExpiringResponse(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100018A2C(uint64_t a1)
{
  v2 = type metadata accessor for RemoteDisplayReadinessRequestHandler.ExpiringResponse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100018A88()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100018AD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100018B20(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000FD4C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100018C18()
{
  v0 = type metadata accessor for Logger();
  sub_1000034A4(v0, qword_1000A1AC8);
  sub_100003420(v0, qword_1000A1AC8);
  return Logger.init(subsystem:category:)();
}

void *sub_100018C98(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = &_swiftEmptyDictionarySingleton;
  v2[4] = &_swiftEmptyDictionarySingleton;
  v2[5] = &_swiftEmptySetSingleton;
  v2[6] = a2;
  v2[7] = &_swiftEmptySetSingleton;
  return v2;
}

uint64_t sub_100018CBC(uint64_t a1)
{
  v3 = *(v1 + 56);

  LOBYTE(a1) = sub_10001AED4(a1, v3);

  if ((a1 & 1) == 0)
  {
    if (qword_100098B80 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100003420(v5, qword_1000A1AC8);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v8 = 136315138;
      type metadata accessor for UUID();
      sub_10001B6E0(&unk_100099180, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

      v10 = Set.description.getter();
      v12 = v11;

      v13 = sub_100014C58(v10, v12, &v14);

      *(v8 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v6, v7, "The set of connected remote display sessions has changed to [%s]", v8, 0xCu);
      sub_100003458(v9);
    }

    return sub_10001ADD8();
  }

  return result;
}

uint64_t sub_100018EB0(uint64_t a1)
{
  v2 = *(v1 + 56);
  *(v1 + 56) = a1;
  sub_100018CBC(v2);
}

void *sub_100018EF0()
{
  v1 = v0;
  v2 = type metadata accessor for CompanionLinkDevice(0);
  v3 = sub_10001B8E8(v2);
  v25 = v4;
  __chkstk_darwin(v3);
  sub_100011CD4();
  v7 = v6 - v5;
  v8 = type metadata accessor for DispatchPredicate();
  sub_100011C54();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100011CD4();
  v14 = (v13 - v12);
  sub_1000033E0(0, &qword_1000991A0, OS_dispatch_queue_ptr);
  *v14 = static OS_dispatch_queue.main.getter();
  (*(v10 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v8);
  v15 = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v14, v8);
  if (v15)
  {
    v16 = *(v1 + 24);
    v17 = _swiftEmptyArrayStorage;
    v27 = _swiftEmptyArrayStorage;
    v18 = 1 << *(v16 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v16 + 64);
    v21 = (v18 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v22 = 0;
    while (v20)
    {
LABEL_10:
      sub_1000151CC(*(v16 + 56) + *(v25 + 72) * (__clz(__rbit64(v20)) | (v22 << 6)), v7);
      sub_1000191C8(v7, v1, &v26);
      v20 &= v20 - 1;
      sub_100015230(v7);
      if (v26)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v17 = v27;
      }
    }

    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v23 >= v21)
      {

        return v17;
      }

      v20 = *(v16 + 64 + 8 * v23);
      ++v22;
      if (v20)
      {
        v22 = v23;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);

  sub_100015230(v7);

  __break(1u);
  return result;
}

void sub_1000191C8(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v35[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CompanionLinkDevice(0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v35[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v35[-1] - v14;
  v16 = sub_1000033E0(0, &unk_100099AE0, SidecarDevice_ptr);
  sub_1000151CC(a1, v15);
  v17 = sub_100058B30(v15, v16);
  if (v17)
  {
    v18 = v17;
    v19 = [v17 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100024F78();
    v21 = v20;

    if (v21)
    {
      v22 = 2;
    }

    else
    {
      swift_beginAccess();
      v32 = *(a2 + 32);

      v22 = sub_100020BC0(v9, v32);

      if (v22)
      {

        v22 = 1;
      }
    }

    v33 = [objc_allocWithZone(SidecarDisplaySendingDeviceSessionState) initWithDevice:v18 sessionState:v22 visualDetectability:0];

    (*(v7 + 8))(v9, v6);
  }

  else
  {
    if (qword_100098B80 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100003420(v23, qword_1000A1AC8);
    sub_1000151CC(a1, v13);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v35[0] = v27;
      *v26 = 136315138;
      v28 = CompanionLinkDevice.description.getter();
      v30 = v29;
      sub_100015230(v13);
      v31 = sub_100014C58(v28, v30, v35);

      *(v26 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v24, v25, "Could not create SidecarDevice for device: [%s].", v26, 0xCu);
      sub_100003458(v27);
    }

    else
    {

      sub_100015230(v13);
    }

    v33 = 0;
  }

  *a3 = v33;
}

uint64_t sub_100019560(uint64_t a1, void (*a2)(void), void (*a3)(void))
{
  v158 = a3;
  v160 = a1;
  v4 = sub_10000FC6C(&qword_1000994B8, &qword_100075A30);
  __chkstk_darwin(v4 - 8);
  sub_10001B850();
  sub_10001B864();
  __chkstk_darwin(v5);
  v151 = &v143 - v6;
  v152 = type metadata accessor for CompanionLinkDevice(0);
  __chkstk_darwin(v152);
  sub_10001B850();
  sub_10001B864();
  __chkstk_darwin(v7);
  sub_10001B864();
  __chkstk_darwin(v8);
  sub_10001B864();
  __chkstk_darwin(v9);
  v11 = &v143 - v10;
  v12 = type metadata accessor for UUID();
  sub_100011C54();
  v161 = v13;
  v15 = *(v14 + 64);
  v17 = __chkstk_darwin(v16);
  v153 = &v143 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = &v143 - v19;
  v21 = __chkstk_darwin(v18);
  v144 = &v143 - v22;
  v23 = __chkstk_darwin(v21);
  v145 = &v143 - v24;
  __chkstk_darwin(v23);
  v26 = &v143 - v25;
  v27 = type metadata accessor for DispatchPredicate();
  sub_100011C54();
  v29 = v28;
  __chkstk_darwin(v30);
  sub_100011CD4();
  v33 = (v32 - v31);
  sub_1000033E0(0, &qword_1000991A0, OS_dispatch_queue_ptr);
  *v33 = static OS_dispatch_queue.main.getter();
  (*(v29 + 104))(v33, enum case for DispatchPredicate.onQueue(_:), v27);
  v34 = _dispatchPreconditionTest(_:)();
  (*(v29 + 8))(v33, v27);
  if (v34)
  {
    v150 = v11;
    v157 = a2;
    if (qword_100098B80 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_10001B874(&qword_100098B80);
LABEL_3:
  v35 = type metadata accessor for Logger();
  v36 = sub_100003420(v35, qword_1000A1AC8);
  v37 = v160;
  v154 = *(v161 + 16);
  v155 = v161 + 16;
  v154(v26, v160, v12);
  v156 = v36;
  v38 = v12;
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  v41 = os_log_type_enabled(v39, v40);
  v149 = v20;
  if (v41)
  {
    v42 = sub_10001B910();
    v43 = swift_slowAlloc();
    v164[0] = v43;
    *v42 = 136315138;
    sub_10001B800();
    sub_10001B6E0(v44, v45, &protocol conformance descriptor for UUID);
    dispatch thunk of CustomStringConvertible.description.getter();
    sub_10001B950();
    v46 = sub_10001B95C();
    v47(v46);
    sub_100014C58(v26, v37, v164);
    sub_10001B944();
    v37 = v160;

    *(v42 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v39, v40, "Received a request to ask device with identifier [%s] to connect to this device and start a remote display session.", v42, 0xCu);
    sub_100003458(v43);
    sub_100003534(v43);
    sub_100003534(v42);
  }

  else
  {

    v48 = sub_10001B95C();
    v49(v48);
  }

  v50 = v38;
  v51 = v159;
  swift_beginAccess();
  v52 = *(v51 + 32);

  v53 = sub_100020BC0(v37, v52);

  if (v53)
  {

    v54 = v153;
    sub_10001B970();
    v55();
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    if (sub_10001B8CC(v57))
    {
      sub_10001B910();
      v58 = sub_10001B894();
      v163[0] = v58;
      *v38 = 136315138;
      sub_10001B800();
      sub_10001B6E0(v59, v60, &protocol conformance descriptor for UUID);
      dispatch thunk of CustomStringConvertible.description.getter();
      sub_10001B950();
      v61 = sub_10001B818();
      v62(v61);
      sub_10001B928();
      sub_10001B944();

      *(v38 + 4) = v54;
      sub_10001B830(&_mh_execute_header, v63, v64, "A connection request to device with identifier [%s] is already in-flight.  Will not issue another connection request.");
      sub_100003458(v58);
      sub_100003534(v58);
      sub_10001B8B0();
    }

    else
    {

      v78 = sub_10001B818();
      v79(v78);
    }

    v80 = v157;
    v81 = sub_10001B2C0();
    v82 = sub_10001B990(&type metadata for RemoteDisplaySendingDevicesManager.ConnectionError, v81);
    *v83 = 0;
LABEL_22:
    (v80)(v82);
  }

  v65 = v151;
  sub_10001564C(v151);
  v66 = v152;
  if (sub_1000113A4(v65, 1, v152) == 1)
  {
    sub_10001B258(v65);
    v67 = v149;
    sub_10001B970();
    v68();
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();
    if (sub_10001B8CC(v70))
    {
      sub_10001B910();
      v71 = sub_10001B894();
      v163[0] = v71;
      *v38 = 136315138;
      sub_10001B800();
      sub_10001B6E0(v72, v73, &protocol conformance descriptor for UUID);
      dispatch thunk of CustomStringConvertible.description.getter();
      sub_10001B950();
      v74 = sub_10001B818();
      v75(v74);
      sub_10001B928();
      sub_10001B944();

      *(v38 + 4) = v67;
      sub_10001B830(&_mh_execute_header, v76, v77, "Could not find local CompanionLink device.  Will not issue a connection request to device with identifier [%s].");
      sub_100003458(v71);
      sub_100003534(v71);
      sub_10001B8B0();
    }

    else
    {

      v108 = sub_10001B818();
      v109(v108);
    }

    v80 = v157;
    v110 = sub_10001B2C0();
    v82 = sub_10001B990(&type metadata for RemoteDisplaySendingDevicesManager.ConnectionError, v110);
    *v111 = 1;
    goto LABEL_22;
  }

  v84 = v150;
  sub_10001B314(v65, v150);
  v85 = RapportEndpoint.idsDeviceIdentifier.getter(v66, &protocol witness table for CompanionLinkDevice);
  v87 = v86;
  v88 = HIBYTE(v86) & 0xF;
  if ((v86 & 0x2000000000000000) == 0)
  {
    v88 = v85 & 0xFFFFFFFFFFFFLL;
  }

  if (v88)
  {
    v89 = v85;
    v90 = UUID.uuidString.getter();
    v91 = v37;
    v93 = v92;
    v94 = *(v51 + 24);

    v95 = v90;
    v96 = v148;
    sub_100020C2C(v95, v93, v94);

    if (sub_1000113A4(v96, 1, v66) == 1)
    {

      sub_10001B258(v96);
      v97 = v144;
      sub_10001B970();
      v98();
      v99 = Logger.logObject.getter();
      v100 = static os_log_type_t.error.getter();
      if (sub_10001B8CC(v100))
      {
        sub_10001B910();
        v101 = sub_10001B894();
        v163[0] = v101;
        *v91 = 136315138;
        sub_10001B800();
        sub_10001B6E0(v102, v103, &protocol conformance descriptor for UUID);
        dispatch thunk of CustomStringConvertible.description.getter();
        sub_10001B950();
        v104 = sub_10001B8F8();
        v105(v104);
        sub_10001B928();
        sub_10001B944();

        *(v91 + 4) = v97;
        sub_10001B830(&_mh_execute_header, v106, v107, "Could not find the remote CompanionLink device with identifier [%s].  Will not issue a connection request.");
        sub_100003458(v101);
        sub_100003534(v101);
        sub_10001B8B0();
      }

      else
      {

        v137 = sub_10001B8F8();
        v138(v137);
      }

      v139 = v157;
      v140 = v150;
      v141 = sub_10001B2C0();
      sub_10001B990(&type metadata for RemoteDisplaySendingDevicesManager.ConnectionError, v141);
      *v142 = 3;
      v139();

      v133 = v140;
    }

    else
    {
      v124 = v146;
      sub_10001B314(v96, v146);
      v125 = v143;
      sub_1000151CC(v124, v143);
      type metadata accessor for RemoteDisplayInitiationRequest();
      swift_allocObject();
      sub_10001393C(v89, v87, v125);
      swift_beginAccess();

      swift_isUniquelyReferenced_nonNull_native();
      v162 = *(v51 + 32);
      sub_10003DE08();
      *(v51 + 32) = v162;
      swift_endAccess();
      v126 = v145;
      sub_10001B970();
      v127();
      v128 = v161;
      v129 = (*(v161 + 80) + 24) & ~*(v161 + 80);
      v130 = swift_allocObject();
      *(v130 + 16) = v51;
      (*(v128 + 32))(v130 + v129, v126, v50);
      v131 = (v130 + ((v15 + v129 + 7) & 0xFFFFFFFFFFFFFFF8));
      v132 = v158;
      *v131 = v157;
      v131[1] = v132;

      sub_100013B14(sub_10001B448, v130);

      sub_10001ADD8();

      sub_100015230(v124);
      v133 = v150;
    }
  }

  else
  {

    v113 = v147;
    sub_1000151CC(v84, v147);
    v114 = Logger.logObject.getter();
    v115 = static os_log_type_t.error.getter();
    v116 = v84;
    if (sub_10001B8CC(v115))
    {
      sub_10001B910();
      v117 = sub_10001B894();
      v163[0] = v117;
      *v84 = 136315138;
      v118 = CompanionLinkDevice.description.getter();
      v120 = v119;
      sub_100015230(v113);
      v121 = sub_100014C58(v118, v120, v163);

      *(v84 + 4) = v121;
      sub_10001B830(&_mh_execute_header, v122, v123, "Could not gather the local device's IDS identifier.  Will not issue a connection request.  Local device: [%s]");
      sub_100003458(v117);
      sub_100003534(v117);
      sub_10001B8B0();
    }

    else
    {

      sub_100015230(v113);
    }

    v134 = v157;
    v135 = sub_10001B2C0();
    sub_10001B990(&type metadata for RemoteDisplaySendingDevicesManager.ConnectionError, v135);
    *v136 = 2;
    v134();

    v133 = v116;
  }

  return sub_100015230(v133);
}

uint64_t sub_10001A130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a4;
  v28 = a5;
  v26 = a1;
  v30 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v30 - 8);
  __chkstk_darwin(v30);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v31 = *(v9 - 8);
  v32 = v9;
  __chkstk_darwin(v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000033E0(0, &qword_1000991A0, OS_dispatch_queue_ptr);
  v29 = static OS_dispatch_queue.main.getter();
  (*(v13 + 16))(v15, a3, v12);
  v16 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v17 = (v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  (*(v13 + 32))(v18 + v16, v15, v12);
  v19 = v27;
  *(v18 + v17) = v26;
  v20 = (v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8));
  v21 = v28;
  *v20 = v19;
  v20[1] = v21;
  aBlock[4] = sub_10001B5CC;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100052C90;
  aBlock[3] = &unk_10008E908;
  v22 = _Block_copy(aBlock);

  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10001B6E0(&unk_10009A9A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000FC6C(&unk_100099AD0, &qword_100075D58);
  sub_10001B67C();
  v23 = v30;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v24 = v29;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);

  (*(v33 + 8))(v8, v23);
  return (*(v31 + 8))(v11, v32);
}