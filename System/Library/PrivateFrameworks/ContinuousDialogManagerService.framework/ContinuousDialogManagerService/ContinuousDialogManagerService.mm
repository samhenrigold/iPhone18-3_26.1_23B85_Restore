uint64_t sub_1000020B8(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = static os_log_type_t.debug.getter();
  sub_10000282C(0, &qword_100014F70, OS_os_log_ptr);
  v6 = sub_1000027D0();
  if (os_log_type_enabled(v6, v5))
  {
    v7 = a2;
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    aBlock = v9;
    *v8 = 136315650;
    v10 = sub_10000286C(v7);
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0xE000000000000000;
    }

    v13 = sub_1000028D0(v10, v12, &aBlock);

    *(v8 + 4) = v13;
    *(v8 + 12) = 1024;
    v14 = [v7 processIdentifier];

    *(v8 + 14) = v14;
    *(v8 + 18) = 2080;
    v15 = sub_100002B3C();
    if (v16)
    {
      v17 = v16;
    }

    else
    {
      v15 = 0;
      v17 = 0xE000000000000000;
    }

    v18 = sub_1000028D0(v15, v17, &aBlock);

    *(v8 + 20) = v18;
    _os_log_impl(&_mh_execute_header, v6, v5, "Incoming connection to service %s from %d and bundle %s", v8, 0x1Cu);
    swift_arrayDestroy();
    sub_100002C54(v9);
    sub_100002C54(v8);
  }

  v19 = sub_10000286C(a2);
  v21 = v20;
  type metadata accessor for CDMXPCDefines();
  v22 = dispatch thunk of static CDMXPCDefines.machServiceName()();
  if (v21)
  {
    if (v19 == v22 && v21 == v23)
    {
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v25 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    v26 = sub_100002C98();
    if (v26)
    {
      goto LABEL_25;
    }

    goto LABEL_19;
  }

LABEL_19:
  if (((*((swift_isaMask & *v3) + 0xC0))(v26) & 1) == 0)
  {
LABEL_22:
    v28 = static os_log_type_t.error.getter();
    v29 = sub_1000027D0();
    if (os_log_type_enabled(v29, v28))
    {
      v30 = a2;
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      aBlock = v32;
      *v31 = 67109378;
      *(v31 + 4) = [v30 processIdentifier];

      *(v31 + 8) = 2080;
      v33 = sub_100004C5C();
      v34 = *v33;
      v35 = v33[1];

      v36 = sub_1000028D0(v34, v35, &aBlock);

      *(v31 + 10) = v36;
      _os_log_impl(&_mh_execute_header, v29, v28, "Rejected connection from %d. Check if calling process has '%s' entitlement", v31, 0x12u);
      sub_100002AF0(v32);
      sub_100002C54(v32);
      sub_100002C54(v31);
    }

    v37 = 0;
    v38 = 0;
    goto LABEL_28;
  }

  sub_10000286C(a2);
  if (v27)
  {

    goto LABEL_22;
  }

LABEL_25:
  type metadata accessor for CDMXPCService();
  v39 = *(v3 + OBJC_IVAR____TtC14assistant_cdmd21CDMXPCServiceDelegate_clientType);
  v40 = sub_100002B3C();
  v42 = v41;
  sub_10000282C(0, &qword_100014F78, CDMClientInterface_ptr);
  v38 = sub_100002E54(v39, v40, v42);
  v43 = objc_opt_self();
  v44 = v38;
  v60 = [v43 interfaceWithProtocol:&OBJC_PROTOCOL___CDMXPCProtocol];
  [a2 setExportedInterface:?];
  [a2 setExportedObject:v44];

  v45 = swift_allocObject();
  *(v45 + 16) = v3;
  *(v45 + 24) = a2;
  v65 = sub_100002FB0;
  v66 = v45;
  aBlock = _NSConcreteStackBlock;
  v62 = 1107296256;
  v63 = sub_100002EA0;
  v64 = &unk_1000106B8;
  v46 = _Block_copy(&aBlock);
  v47 = a2;
  v48 = v3;

  [v47 setInvalidationHandler:v46];
  _Block_release(v46);
  v49 = swift_allocObject();
  *(v49 + 16) = v48;
  *(v49 + 24) = v47;
  v65 = sub_100004B5C;
  v66 = v49;
  aBlock = _NSConcreteStackBlock;
  v62 = 1107296256;
  v63 = sub_100002EA0;
  v64 = &unk_100010708;
  v50 = _Block_copy(&aBlock);
  v51 = v47;
  v48;

  [v51 setInterruptionHandler:v50];
  _Block_release(v50);
  v52 = static os_log_type_t.debug.getter();
  v53 = sub_1000027D0();
  if (os_log_type_enabled(v53, v52))
  {
    v54 = v51;
    v55 = swift_slowAlloc();
    *v55 = 67109120;
    *(v55 + 4) = [v54 processIdentifier];

    _os_log_impl(&_mh_execute_header, v53, v52, "Accepted connection from %d", v55, 8u);
    sub_100002C54(v55);
  }

  [v51 resume];
  v37 = 1;
LABEL_28:
  if ((*((swift_isaMask & *v3) + 0x78))())
  {
    v56 = sub_100003304();
    (v3)(v56, v37, v38);
    v57 = sub_100002F78();
    sub_10000277C(v57, v58);
  }

  return v37;
}

uint64_t sub_10000277C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000278C()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_1000027D0()
{
  if (qword_100015910 != -1)
  {
    swift_once();
  }

  v0 = qword_100015918;

  return v0;
}

uint64_t sub_10000282C(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_10000286C(void *a1)
{
  v1 = [a1 serviceName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t sub_1000028D0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000029F0(v11, 0, 0, 1, a1, a2);
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
    sub_100002994(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_100002AF0(v11);
  return v7;
}

uint64_t sub_100002994(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1000029F0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000047B0(a5, a6);
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

uint64_t sub_100002AF0(void *a1)
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

uint64_t sub_100002B3C()
{
  [v0 auditToken];
  if (!CPCopyBundleIdentifierAndTeamFromAuditToken())
  {
    v1 = static os_log_type_t.debug.getter();
    sub_10000282C(0, &qword_100014F70, OS_os_log_ptr);
    v2 = sub_1000027D0();
    os_log(_:dso:log:_:_:)(v1, &_mh_execute_header, v2, "CPCopyBundleIdentifierAndTeamFromAuditToken returned false.", 59, 2, &_swiftEmptyArrayStorage);
  }

  return 0;
}

uint64_t sub_100002C54(uint64_t a1)
{
}

uint64_t sub_100002C78()
{

  return String.utf8CString.getter();
}

uint64_t sub_100002C98()
{
  sub_10000282C(0, &unk_100015080, NSNumber_ptr);
  isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
  v1 = sub_100002D18(0xD00000000000001ELL, 0x800000010000BE80, isa);

  return v1 & 1;
}

uint64_t sub_100002D18(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = String._bridgeToObjectiveC()();
  v6 = [v3 valueForEntitlement:v5];

  if (v6)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  if (!*(&v12 + 1))
  {
    sub_100004C68(v13);
    goto LABEL_9;
  }

  sub_10000282C(0, &qword_100015078, NSObject_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v8 = 0;
    return v8 & 1;
  }

  if (a3)
  {
    v7 = a3;
    v8 = static NSObject.== infix(_:_:)();
  }

  else
  {

    v8 = 1;
  }

  return v8 & 1;
}

uint64_t sub_100002EA0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_100002EE4(void *a1, uint64_t (*a2)(uint64_t))
{
  swift_beginAccess();
  v3 = sub_100002F78();
  a2(v3);
  return sub_100002F78();
}

uint64_t sub_100002F68(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100002FB0()
{
  result = (*((swift_isaMask & **(v0 + 16)) + 0x90))();
  if (result)
  {
    v3 = sub_100003304();
    v1(v3);
    v4 = sub_100002F78();

    return sub_10000277C(v4, v5);
  }

  return result;
}

id sub_100003044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_100003420();
  v17 = v7;
  v18 = v6;
  __chkstk_darwin(v6);
  sub_100003330();
  v16 = v9 - v8;
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v10);
  sub_100003330();
  sub_1000032F8();
  v11 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v11 - 8);
  sub_100003330();
  *&v3[OBJC_IVAR____TtC14assistant_cdmd13CDMXPCService_sandboxExtension] = 0;
  *&v3[OBJC_IVAR____TtC14assistant_cdmd13CDMXPCService_transaction] = 0;
  *&v3[OBJC_IVAR____TtC14assistant_cdmd13CDMXPCService_setupConfig] = 0;
  *&v3[OBJC_IVAR____TtC14assistant_cdmd13CDMXPCService_idleTimer] = 0;
  if (a3)
  {
    v12 = sub_100003434(a2, a3);
  }

  else
  {
    v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  }

  *&v3[OBJC_IVAR____TtC14assistant_cdmd13CDMXPCService_client] = v12;
  sub_10000282C(0, &qword_1000152A0, OS_dispatch_queue_ptr);
  static DispatchQoS.background.getter();
  v20 = &_swiftEmptyArrayStorage;
  sub_100002F84();
  sub_1000034E8(v13, v14, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100004BF0(&qword_1000152B0, &qword_10000ACA0);
  sub_100003530(&unk_1000152B8, &qword_1000152B0, &qword_10000ACA0);
  sub_1000034D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v17 + 104))(v16, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v18);
  *&v3[OBJC_IVAR____TtC14assistant_cdmd13CDMXPCService_idleTimerQueue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v19.receiver = v3;
  v19.super_class = type metadata accessor for CDMXPCService();
  return objc_msgSendSuper2(&v19, "init");
}

uint64_t sub_100003314()
{
}

void sub_10000334C()
{
  v1 = v0;
  v2 = static os_log_type_t.debug.getter();
  sub_10000282C(0, &qword_100014F70, OS_os_log_ptr);
  v3 = sub_1000027D0();
  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, v3, "Connection invalidated.", 23, 2, &_swiftEmptyArrayStorage);

  v4 = *(v1 + 32);
  v5 = __OFSUB__(v4, 1);
  v6 = v4 - 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 32) = v6;
  }
}

uint64_t sub_1000033E4()
{

  return swift_beginAccess();
}

unint64_t sub_100003404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return sub_1000028D0(v9, v8, va);
}

id sub_100003434(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 initWithCallingBundleId:v3];

  return v4;
}

uint64_t sub_1000034E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100003530(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100006194(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1000035AC()
{
  v1 = v0;
  static os_log_type_t.debug.getter();
  sub_10000282C(0, &qword_100014F70, OS_os_log_ptr);
  v2 = sub_1000027D0();
  v3 = sub_10000364C();
  os_log(_:dso:log:_:_:)(v3, v4, v5, v6, 20, 2);

  v8.receiver = v1;
  v8.super_class = type metadata accessor for CDMXPCService();
  return objc_msgSendSuper2(&v8, "dealloc");
}

uint64_t sub_1000036DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000036EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000036FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000370C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000371C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100003750(uint64_t a1, char a2, uint64_t a3)
{
  if ((a2 & 1) != 0 && a1 && a3)
  {
    v4 = v3;
    v5 = static os_log_type_t.info.getter();
    sub_10000282C(0, &qword_100014F70, OS_os_log_ptr);
    v6 = sub_1000027D0();
    os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, v6, "Connection accepted", 19, 2, &_swiftEmptyArrayStorage);

    v7 = *(v4 + 32);
    v8 = __OFADD__(v7, 1);
    v9 = v7 + 1;
    if (v8)
    {
      __break(1u);
    }

    else
    {
      *(v4 + 32) = v9;
    }
  }
}

void sub_1000037F4()
{
  v0 = static os_log_type_t.debug.getter();
  sub_10000282C(0, &qword_100014F70, OS_os_log_ptr);
  v1 = sub_1000027D0();
  os_log(_:dso:log:_:_:)(v0, &_mh_execute_header, v1, "assistant_cdmd was woken up by initialization of a client", 57, 2, &_swiftEmptyArrayStorage);
}

void sub_100003944(void *a1, void *a2, const void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v7 = OBJC_IVAR____TtC14assistant_cdmd13CDMXPCService_transaction;
  v8 = *(a2 + OBJC_IVAR____TtC14assistant_cdmd13CDMXPCService_transaction);
  _Block_copy(a3);
  v9 = static os_log_type_t.debug.getter();
  sub_10000282C(0, &qword_100014F70, OS_os_log_ptr);
  v10 = sub_1000027D0();
  v11 = v10;
  if (v8)
  {
    os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v10, "Not creating cdm_xpc_service_setup transaction. It already exists.", 66, 2, &_swiftEmptyArrayStorage);
  }

  else
  {
    if (os_log_type_enabled(v10, v9))
    {
      v27 = v6;
      v12 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      aBlock = v26;
      *v12 = 136315138;
      v13 = sub_100003DA8(a1, &selRef_invocationSource);
      if (v14)
      {
        v15 = v14;
      }

      else
      {
        v13 = 0x74657320746F6E28;
        v15 = 0xE900000000000029;
      }

      v16 = sub_1000028D0(v13, v15, &aBlock);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v11, v9, "Creating cdm_xpc_service_setup transaction. invocationSource:%s", v12, 0xCu);
      sub_100002AF0(v26);

      v6 = v27;
    }

    String.utf8CString.getter();
    v17 = os_transaction_create();

    *(a2 + v7) = v17;
    swift_unknownObjectRelease();
  }

  v18 = static os_log_type_t.debug.getter();
  v19 = sub_1000027D0();
  os_log(_:dso:log:_:_:)(v18, &_mh_execute_header, v19, "Setup called by XPC client.", 27, 2, &_swiftEmptyArrayStorage);

  sub_100003E08(a1);
  v20 = *(a2 + OBJC_IVAR____TtC14assistant_cdmd13CDMXPCService_setupConfig);
  *(a2 + OBJC_IVAR____TtC14assistant_cdmd13CDMXPCService_setupConfig) = a1;
  v21 = a1;

  v22 = (*((swift_isaMask & *a2) + 0x80))();
  v32 = sub_10000401C;
  v33 = v6;
  aBlock = _NSConcreteStackBlock;
  v29 = 1107296256;
  v30 = sub_100003F4C;
  v31 = &unk_100010B10;
  v23 = _Block_copy(&aBlock);

  [v22 setup:v21 completionHandler:v23];
  _Block_release(v23);

  v24 = [v21 deallocationTimeout];
  if (v24)
  {
    v25 = v24;
    aBlock = 0;
    LOBYTE(v29) = 1;
    static Double._conditionallyBridgeFromObjectiveC(_:result:)();

    if ((v29 & 1) == 0)
    {
      sub_1000079AC(*&aBlock);
    }
  }

  _Block_release(a3);
}

uint64_t sub_100003D70()
{
  _Block_release(*(v0 + 16));
  sub_10000407C();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100003DA8(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t sub_100003E08(void *a1)
{
  v3 = v1;
  v4 = sub_100003DA8(a1, &selRef_serviceStateDirectorySandboxExtension);
  if (!v5)
  {
    *(v1 + OBJC_IVAR____TtC14assistant_cdmd13CDMXPCService_sandboxExtension) = 0;
  }

  v6 = v4;
  v7 = v5;
  v8 = OBJC_IVAR____TtC14assistant_cdmd13CDMXPCService_sandboxExtension;
  v9 = *(v3 + OBJC_IVAR____TtC14assistant_cdmd13CDMXPCService_sandboxExtension);
  if (v9)
  {
    v10 = *(v9 + 16) == v4 && v5 == *(v9 + 24);
    if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
    }
  }

  type metadata accessor for CDMXPCSandboxExtension();
  result = sub_100009278(v6, v7);
  if (!v2)
  {
    *(v3 + v8) = result;
  }

  return result;
}

id sub_100003EE4(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC14assistant_cdmd13CDMXPCService_client;
  sub_100003F2C(v2 + OBJC_IVAR____TtC14assistant_cdmd13CDMXPCService_client, a2);
  v4 = *(v2 + v3);

  return v4;
}

uint64_t sub_100003F2C(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

void sub_100003F4C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_100003FB8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_100004040()
{

  return swift_slowAlloc();
}

void sub_10000405C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_100004088()
{

  swift_unknownObjectRelease();

  sub_100002C6C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1000040CC()
{

  swift_unknownObjectRelease();

  sub_100002C6C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100004120()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100004160()
{

  sub_100008D14();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100004194()
{

  sub_100002C6C();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_1000041D8()
{

  sub_100002C6C();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100004248()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100004288()
{
  swift_unknownObjectWeakDestroy();
  sub_10000407C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1000042BC()
{

  sub_100008D14();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100004444(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

uint64_t sub_1000044FC()
{
  v1 = OBJC_IVAR____TtC14assistant_cdmd21CDMXPCServiceDelegate_allowAnonymousConnections;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100004540(char a1)
{
  v3 = OBJC_IVAR____TtC14assistant_cdmd21CDMXPCServiceDelegate_allowAnonymousConnections;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_1000045C4(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v5 = objc_allocWithZone(v2);
  return sub_100004608(a1, v3);
}

id sub_100004608(uint64_t a1, char a2)
{
  v4 = &v2[OBJC_IVAR____TtC14assistant_cdmd21CDMXPCServiceDelegate_onConnect];
  *v4 = 0;
  v4[1] = 0;
  v5 = &v2[OBJC_IVAR____TtC14assistant_cdmd21CDMXPCServiceDelegate_onInvalidate];
  *v5 = 0;
  v5[1] = 0;
  v6 = &v2[OBJC_IVAR____TtC14assistant_cdmd21CDMXPCServiceDelegate_onInterrupt];
  *v6 = 0;
  v6[1] = 0;
  v7 = OBJC_IVAR____TtC14assistant_cdmd21CDMXPCServiceDelegate_allowAnonymousConnections;
  v2[OBJC_IVAR____TtC14assistant_cdmd21CDMXPCServiceDelegate_allowAnonymousConnections] = 0;
  *&v2[OBJC_IVAR____TtC14assistant_cdmd21CDMXPCServiceDelegate_clientType] = a1;
  swift_beginAccess();
  v2[v7] = a2;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for CDMXPCServiceDelegate();
  return objc_msgSendSuper2(&v9, "init");
}

id sub_100004714()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CDMXPCServiceDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_1000047B0(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000047FC(a1, a2);
  sub_100004914(&off_100010668);
  return v3;
}

char *sub_1000047FC(uint64_t a1, unint64_t a2)
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
    result = sub_1000049F8(v5, 0);
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

        v9 = result + 32;
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

        v9 = v7 + 32;
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

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_100004914(uint64_t result)
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

    result = sub_100004A68(result, v7, 1, v3);
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

void *sub_1000049F8(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100004BF0(&qword_100015008, &unk_10000AC80);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_100004A68(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004BF0(&qword_100015008, &unk_10000AC80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_100004B5C()
{
  result = (*((swift_isaMask & **(v0 + 16)) + 0xA8))();
  if (result)
  {
    v3 = sub_100003304();
    v1(v3);
    v4 = sub_100002F78();

    return sub_10000277C(v4, v5);
  }

  return result;
}

uint64_t sub_100004BF0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100004C68(uint64_t a1)
{
  v2 = sub_100004BF0(&qword_100015070, &qword_10000ABB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_100004CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  return result;
}

void sub_100004D2C()
{
  v1 = [*(v0 + 48) handleableXPCActivities];
  sub_100004BF0(&qword_1000150F0, &qword_10000ABD8);
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = 0;
  v4 = *(v2 + 64);
  v5 = 1 << *(v2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v4;
  v8 = (v5 + 63) >> 6;
  if ((v6 & v4) != 0)
  {
    do
    {
      v9 = v3;
LABEL_9:
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v11 = v10 | (v9 << 6);
      v12 = (*(v2 + 48) + 16 * v11);
      v14 = *v12;
      v13 = v12[1];
      v15 = *(*(v2 + 56) + 8 * v11);
      sub_100002C6C();
      v16 = swift_allocObject();
      v16[2] = v14;
      v16[3] = v13;
      v16[4] = v15;
      v16[5] = v19;
      v24 = sub_100004F50;
      v25 = v16;
      sub_1000057A4();
      v21 = 1107296256;
      v22 = sub_1000054E0;
      v23 = &unk_100010828;
      v17 = _Block_copy(aBlock);
      swift_bridgeObjectRetain_n();
      swift_unknownObjectRetain_n();

      v18 = String.utf8CString.getter();

      xpc_activity_register((v18 + 32), v15, v17);

      _Block_release(v17);
      swift_unknownObjectRelease();
    }

    while (v7);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      return;
    }

    v7 = *(v2 + 64 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_100004F50(_xpc_activity_s *a1)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  v81 = v1[5];
  v6 = static os_log_type_t.debug.getter();
  sub_1000055D8();
  v7 = sub_1000027D0();
  if (os_log_type_enabled(v7, v6))
  {
    v8 = sub_100004040();
    v9 = v4;
    v10 = swift_slowAlloc();
    aBlock[0] = v10;
    *v8 = 136315138;
    *(v8 + 4) = sub_1000028D0(v9, v3, aBlock);
    _os_log_impl(&_mh_execute_header, v7, v6, "Reached handler for XPC activity: %s", v8, 0xCu);
    sub_100002AF0(v10);
    v11 = v10;
    v4 = v9;
    sub_100002C54(v11);
    sub_100002C54(v8);
  }

  state = xpc_activity_get_state(a1);
  if (state == 2)
  {
    if (!xpc_activity_set_state(a1, 4))
    {
      v24 = static os_log_type_t.error.getter();
      v25 = sub_1000027D0();
      if (os_log_type_enabled(v25, v24))
      {
        sub_100004040();
        v26 = sub_1000057C4();
        aBlock[0] = v26;
        *v6 = 136315138;
        *(v6 + 4) = sub_100003404(v26, v27, v28, v29, v30, v31, v32, v33);
        sub_10000405C(&_mh_execute_header, v34, v35, "Failed to set XPC activity state to CONTINUE for %s");
        sub_100002AF0(v26);
        sub_100002C54(v26);
        sub_100003314();
      }
    }

    v36 = static os_log_type_t.debug.getter();
    v37 = sub_1000027D0();
    if (os_log_type_enabled(v37, v36))
    {
      sub_100004040();
      v38 = sub_1000057C4();
      aBlock[0] = v38;
      *v6 = 136315138;
      *(v6 + 4) = sub_100003404(v38, v39, v40, v41, v42, v43, v44, v45);
      sub_10000405C(&_mh_execute_header, v46, v47, "Handling XPC activity %s");
      sub_100002AF0(v38);
      sub_100002C54(v38);
      sub_100003314();
    }

    v48 = *(v81 + 32);
    sub_100002C6C();
    v49 = swift_allocObject();
    v49[2] = v81;
    v49[3] = a1;
    v49[4] = v4;
    v49[5] = v3;
    v50 = swift_allocObject();
    v51 = sub_10000561C;
    *(v50 + 16) = sub_10000561C;
    *(v50 + 24) = v49;
    aBlock[4] = sub_100005774;
    aBlock[5] = v50;
    sub_1000057A4();
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000054B8;
    aBlock[3] = &unk_1000108A0;
    v52 = _Block_copy(aBlock);

    swift_unknownObjectRetain();

    dispatch_sync(v48, v52);
    _Block_release(v52);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      return result;
    }
  }

  else
  {
    v13 = state;
    if (state)
    {
      v55 = static os_log_type_t.error.getter();
      v56 = sub_1000027D0();
      if (os_log_type_enabled(v56, v55))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        aBlock[0] = v58;
        *v57 = 136315394;
        *(v57 + 4) = sub_100003404(v58, v59, v60, v61, v62, v63, v64, v65);
        *(v57 + 12) = 2048;
        *(v57 + 14) = v13;
        _os_log_impl(&_mh_execute_header, v56, v55, "XPC activity %s in unexpected state: %ld", v57, 0x16u);
        sub_100002AF0(v58);
        sub_100003314();
        sub_100002C54(v57);
      }
    }

    else
    {
      v14 = static os_log_type_t.debug.getter();
      v15 = sub_1000027D0();
      if (os_log_type_enabled(v15, v14))
      {
        sub_100004040();
        v16 = sub_1000057C4();
        aBlock[0] = v16;
        *v6 = 136315138;
        *(v6 + 4) = sub_100003404(v16, v17, v18, v19, v20, v21, v22, v23);
        _os_log_impl(&_mh_execute_header, v15, v14, "Checking in XPC activity %s", v6, 0xCu);
        sub_100002AF0(v16);
        sub_100002C54(v16);
        sub_100003314();
      }

      xpc_activity_set_criteria(a1, v5);
    }

    v51 = 0;
    v49 = 0;
  }

  if (xpc_activity_should_defer(a1))
  {
    v66 = xpc_activity_set_state(a1, 3);
    v67 = static os_log_type_t.debug.getter();
    v68 = sub_1000027D0();
    if (os_log_type_enabled(v68, v67))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      aBlock[0] = v70;
      *v69 = 136315394;
      *(v69 + 4) = sub_100003404(v70, v71, v72, v73, v74, v75, v76, v77);
      *(v69 + 12) = 2080;
      if (v66)
      {
        v78 = 7562585;
      }

      else
      {
        v78 = 28494;
      }

      if (v66)
      {
        v79 = 0xE300000000000000;
      }

      else
      {
        v79 = 0xE200000000000000;
      }

      v80 = sub_1000028D0(v78, v79, aBlock);

      *(v69 + 14) = v80;
      _os_log_impl(&_mh_execute_header, v68, v67, "Deferring XPC activity %s: %s", v69, 0x16u);
      swift_arrayDestroy();
      sub_100003314();
      sub_100002C54(v69);
    }
  }

  return sub_10000277C(v51, v49);
}

uint64_t sub_1000054E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

id *sub_100005540()
{

  return v0;
}

uint64_t sub_100005580()
{
  sub_100005540();

  return _swift_deallocClassInstance(v0, 56, 7);
}

unint64_t sub_1000055D8()
{
  result = qword_100014F70;
  if (!qword_100014F70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100014F70);
  }

  return result;
}

void sub_10000561C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = *(v2 + 24);
  dispatch_group_enter(v5);
  [*(v2 + 16) signal];
  v6 = *(v2 + 48);
  v7 = String._bridgeToObjectiveC()();
  [v6 handleXPCActivity:v1 fromIdentifier:v7];

  if (!xpc_activity_set_state(v1, 5))
  {
    v8 = static os_log_type_t.error.getter();
    sub_1000055D8();
    v9 = sub_1000027D0();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = sub_100004040();
      v11 = swift_slowAlloc();
      v12 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_1000028D0(v3, v4, &v12);
      _os_log_impl(&_mh_execute_header, v9, v8, "Failed to set XPC activity state to DONE for %s", v10, 0xCu);
      sub_100002AF0(v11);
      sub_100002C54(v11);
      sub_100002C54(v10);
    }
  }

  dispatch_group_leave(v5);
}

uint64_t sub_1000057C4()
{

  return swift_slowAlloc();
}

void sub_1000057E0()
{
  v1 = [*(v0 + 48) handleableXPCEventStreams];
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = 0;
  v5 = v2 + 56;
  v4 = *(v2 + 56);
  v19 = v2;
  v6 = 1 << *(v2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v4;
  v9 = (v6 + 63) >> 6;
  if ((v7 & v4) != 0)
  {
    do
    {
      v10 = v3;
LABEL_9:
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v12 = (*(v19 + 48) + ((v10 << 10) | (16 * v11)));
      v13 = *v12;
      v14 = v12[1];
      v15 = *(v0 + 32);
      v16 = swift_allocObject();
      v16[2] = v0;
      v16[3] = v13;
      v16[4] = v14;
      aBlock[4] = sub_1000059EC;
      aBlock[5] = v16;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000054E0;
      aBlock[3] = &unk_1000108F0;
      v17 = _Block_copy(aBlock);
      swift_bridgeObjectRetain_n();

      v18 = String.utf8CString.getter();

      xpc_set_event_stream_handler((v18 + 32), v15, v17);

      _Block_release(v17);
    }

    while (v8);
  }

  while (1)
  {
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return;
    }

    v8 = *(v5 + 8 * v10);
    ++v3;
    if (v8)
    {
      v3 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1000059EC(uint64_t a1)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  os_transaction_create();
  v6 = *(v4 + 24);
  dispatch_group_enter(v6);
  [*(v4 + 16) signal];
  v7 = static os_log_type_t.debug.getter();
  sub_1000055D8();
  v8 = sub_1000027D0();
  if (os_log_type_enabled(v8, v7))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1000028D0(v3, v5, &v14);
    _os_log_impl(&_mh_execute_header, v8, v7, "Handling XPC event from stream %s", v9, 0xCu);
    sub_100002AF0(v10);
  }

  v11 = *(v4 + 48);
  v12 = String._bridgeToObjectiveC()();
  [v11 handleXPCEvent:a1 fromStream:v12];

  dispatch_group_leave(v6);

  return swift_unknownObjectRelease();
}

Swift::Int sub_100005BBC()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100005C10(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

void sub_100005CF0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14assistant_cdmd13CDMXPCService_client;
  sub_100008DA4(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_100005E58(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14assistant_cdmd13CDMXPCService_idleTimer;
  sub_100008DA4(a1);
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

id sub_100005EF0()
{
  type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_100003420();
  v14 = v2;
  v15 = v1;
  __chkstk_darwin(v1);
  sub_100003330();
  v5 = v4 - v3;
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v6);
  sub_100003330();
  sub_1000032F8();
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  sub_100003330();
  v8 = OBJC_IVAR____TtC14assistant_cdmd13CDMXPCService_sandboxExtension;
  *&v0[OBJC_IVAR____TtC14assistant_cdmd13CDMXPCService_sandboxExtension] = 0;
  v9 = OBJC_IVAR____TtC14assistant_cdmd13CDMXPCService_transaction;
  *&v0[OBJC_IVAR____TtC14assistant_cdmd13CDMXPCService_transaction] = 0;
  *&v0[OBJC_IVAR____TtC14assistant_cdmd13CDMXPCService_setupConfig] = 0;
  *&v0[OBJC_IVAR____TtC14assistant_cdmd13CDMXPCService_idleTimer] = 0;
  v10 = [objc_allocWithZone(CDMFoundationClient) init];
  *&v0[OBJC_IVAR____TtC14assistant_cdmd13CDMXPCService_client] = v10;
  *&v0[v9] = 0;
  swift_unknownObjectRelease();
  *&v0[v8] = 0;

  sub_10000282C(0, &qword_1000152A0, OS_dispatch_queue_ptr);
  static DispatchQoS.background.getter();
  v17 = &_swiftEmptyArrayStorage;
  sub_100002F84();
  sub_1000034E8(v11, v12, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100004BF0(&qword_1000152B0, &qword_10000ACA0);
  sub_100003530(&unk_1000152B8, &qword_1000152B0, &qword_10000ACA0);
  sub_1000034D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v14 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v15);
  *&v0[OBJC_IVAR____TtC14assistant_cdmd13CDMXPCService_idleTimerQueue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v16.receiver = v0;
  v16.super_class = type metadata accessor for CDMXPCService();
  return objc_msgSendSuper2(&v16, "init");
}

uint64_t sub_100006194(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

id sub_100006244(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC14assistant_cdmd13CDMXPCService_sandboxExtension] = 0;
  *&v2[OBJC_IVAR____TtC14assistant_cdmd13CDMXPCService_transaction] = 0;
  *&v2[OBJC_IVAR____TtC14assistant_cdmd13CDMXPCService_setupConfig] = 0;
  *&v2[OBJC_IVAR____TtC14assistant_cdmd13CDMXPCService_idleTimer] = 0;
  *&v2[OBJC_IVAR____TtC14assistant_cdmd13CDMXPCService_client] = a1;
  *&v2[OBJC_IVAR____TtC14assistant_cdmd13CDMXPCService_idleTimerQueue] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CDMXPCService();
  return objc_msgSendSuper2(&v4, "init");
}

uint64_t sub_1000062FC()
{
  v1 = *(v0 + OBJC_IVAR____TtC14assistant_cdmd13CDMXPCService_sandboxExtension);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 16);

  return v2;
}

void sub_1000063A0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtC14assistant_cdmd13CDMXPCService_transaction;
  v9 = *(v3 + OBJC_IVAR____TtC14assistant_cdmd13CDMXPCService_transaction);
  v10 = static os_log_type_t.debug.getter();
  sub_10000282C(0, &qword_100014F70, OS_os_log_ptr);
  v11 = sub_1000027D0();
  v12 = v11;
  if (v9)
  {
    os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v11, "Not creating cdm_xpc_service_setup transaction. It already exists.", 66, 2, &_swiftEmptyArrayStorage);
  }

  else
  {
    if (os_log_type_enabled(v11, v10))
    {
      v35 = a3;
      v13 = swift_slowAlloc();
      v34 = a2;
      v14 = swift_slowAlloc();
      aBlock = v14;
      *v13 = 136315138;
      v15 = sub_100003DA8(a1, &selRef_invocationSource);
      if (v16)
      {
        v17 = v16;
      }

      else
      {
        v15 = 0x74657320746F6E28;
        v17 = 0xE900000000000029;
      }

      v18 = sub_1000028D0(v15, v17, &aBlock);

      *(v13 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v12, v10, "Creating cdm_xpc_service_setup transaction. invocationSource:%s", v13, 0xCu);
      sub_100002AF0(v14);
      v19 = v14;
      a2 = v34;
      sub_100002C54(v19);
      v20 = v13;
      a3 = v35;
      sub_100002C54(v20);
    }

    sub_100002C78();
    v21 = os_transaction_create();

    *(v3 + v8) = v21;
    swift_unknownObjectRelease();
  }

  static os_log_type_t.debug.getter();
  v22 = sub_1000027D0();
  v23 = sub_10000364C();
  os_log(_:dso:log:_:_:)(v23, v24, v25, v26, 27, 2);

  sub_100003E08(a1);
  v27 = *(v4 + OBJC_IVAR____TtC14assistant_cdmd13CDMXPCService_setupConfig);
  *(v4 + OBJC_IVAR____TtC14assistant_cdmd13CDMXPCService_setupConfig) = a1;
  v28 = a1;

  v29 = (*((swift_isaMask & *v4) + 0x80))();
  v40 = a2;
  v41 = a3;
  aBlock = _NSConcreteStackBlock;
  v37 = 1107296256;
  sub_100008D00();
  v38 = v30;
  v39 = &unk_100010918;
  v31 = _Block_copy(&aBlock);

  [v29 setup:v28 completionHandler:v31];
  _Block_release(v31);

  v32 = [v28 deallocationTimeout];
  if (v32)
  {
    v33 = v32;
    aBlock = 0;
    LOBYTE(v37) = 1;
    static Double._conditionallyBridgeFromObjectiveC(_:result:)();

    if ((v37 & 1) == 0)
    {
      sub_1000079AC(*&aBlock);
    }
  }
}

uint64_t sub_10000673C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  static os_log_type_t.debug.getter();
  sub_10000282C(0, &qword_100014F70, OS_os_log_ptr);
  v6 = sub_1000027D0();
  v7 = sub_10000364C();
  os_log(_:dso:log:_:_:)(v7, v8, v9, v10, 28, 2);

  v11 = swift_allocObject();
  v11[2] = v3;
  v11[3] = a1;
  v11[4] = a2;
  v12 = *&v3[OBJC_IVAR____TtC14assistant_cdmd13CDMXPCService_setupConfig];
  v13 = v3;

  if (!v12)
  {
    v24 = v13;

    goto LABEL_6;
  }

  v14 = v13;

  v15 = v12;
  v16 = [v15 deallocationTimeout];
  if (!v16 || (sub_100008D30(v16, v17, v18, v19, v20, v21, v22, v23, v43, v45, v47, v49, v51, v52), v12, (v52 & 1) != 0))
  {

LABEL_6:
    sub_100006AE8(v13, a1, a2);
    goto LABEL_7;
  }

  v50 = v15;
  sub_1000079AC(*&v51);
  v27 = OBJC_IVAR____TtC14assistant_cdmd13CDMXPCService_transaction;
  v28 = *&v14[OBJC_IVAR____TtC14assistant_cdmd13CDMXPCService_transaction];
  v29 = v14;
  v30 = static os_log_type_t.debug.getter();
  v31 = sub_1000027D0();
  v33 = v31;
  if (v28)
  {
    sub_100008D84(v31, &_mh_execute_header, v32, "Transaction still active, re-using the client to process request");

    sub_100006AE8(v29, a1, a2);
  }

  else
  {
    v46 = v27;
    v48 = v29;
    if (os_log_type_enabled(v31, v30))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v51 = v35;
      *v34 = 136315138;
      v36 = v50;
      v37 = sub_100003DA8(v50, &selRef_invocationSource);
      if (v38)
      {
        v39 = v38;
      }

      else
      {
        v37 = 0x74657320746F6E28;
        v39 = 0xE900000000000029;
      }

      v44 = sub_1000028D0(v37, v39, &v51);

      *(v34 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v33, v30, "Transaction was terminated due to client inactive. Re-setting up client and transaction. invocationSource:%s", v34, 0xCu);
      sub_100002AF0(v35);
      sub_100002C54(v35);
      sub_100002C54(v34);

      v27 = v46;
    }

    else
    {

      v36 = v50;
    }

    sub_100002C78();
    v40 = os_transaction_create();

    *(v48 + v27) = v40;
    swift_unknownObjectRelease();
    sub_100002C6C();
    v41 = swift_allocObject();
    v41[2] = a1;
    v41[3] = a2;
    v41[4] = sub_100008C14;
    v41[5] = v11;
    v42 = *((swift_isaMask & *v48) + 0x120);

    v42(v36, sub_100008CC0, v41);
  }

LABEL_7:

  sub_100008D68();
}

void sub_100006AE8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = (*((swift_isaMask & *a1) + 0x80))();
  v8[4] = a2;
  v8[5] = a3;
  sub_100008CE0();
  v8[1] = 1107296256;
  sub_100008D00();
  v8[2] = v6;
  v8[3] = &unk_100010C50;
  v7 = _Block_copy(v8);

  [v5 warmupWithCompletionHandler:v7];
  _Block_release(v7);
}

uint64_t sub_100006C44(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = static os_log_type_t.debug.getter();
  sub_10000282C(0, &qword_100014F70, OS_os_log_ptr);
  v9 = sub_1000027D0();
  os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v9, "Process CDM Nlu request called by XPC client.", 45, 2, &_swiftEmptyArrayStorage);

  sub_100008D14();
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  sub_100002C6C();
  v11 = swift_allocObject();
  v11[2] = v4;
  v11[3] = a1;
  v11[4] = a2;
  v11[5] = a3;
  swift_retain_n();
  v12 = v4;
  v13 = a1;
  sub_100007650(sub_100008CDC, v10, sub_1000085AC, v11);
}

void sub_100006D80(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_100006E40(uint64_t a1, void *a2, void (**a3)(void, void))
{
  v4 = (*((swift_isaMask & *a2) + 0x80))();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  v6 = [v4 areAssetsAvailable:isa];

  (a3)[2](a3, v6);

  _Block_release(a3);
}

uint64_t sub_100006EFC(uint64_t a1, uint64_t (*a2)(id))
{
  v4 = (*((swift_isaMask & *v2) + 0x80))();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  v6 = [v4 areAssetsAvailable:isa];

  return a2(v6);
}

uint64_t sub_1000070A0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = static os_log_type_t.debug.getter();
  sub_10000282C(0, &qword_100014F70, OS_os_log_ptr);
  v9 = sub_1000027D0();
  sub_100004BF0(&qword_1000152C8, &qword_10000ACA8);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10000AC90;
  *(v10 + 56) = sub_10000282C(0, &qword_1000152D0, CDMServiceGraphCommand_ptr);
  *(v10 + 64) = sub_1000086DC();
  *(v10 + 32) = a1;
  v11 = a1;
  os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v9, "Process CDMServiceGraphCommand=%@ called by XPC client.", 55, 2, v10);

  sub_100008D14();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  sub_100002C6C();
  v13 = swift_allocObject();
  v13[2] = v4;
  v13[3] = a2;
  v13[4] = a3;
  v13[5] = v11;
  swift_retain_n();
  v14 = v11;
  v15 = v4;
  sub_100007650(sub_100008744, v12, sub_100008774, v13);
}

uint64_t sub_100007240(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1000072F4(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(id, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  sub_10000407C();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = a1;
  a7(v13, a6, v12);
}

void sub_100007398(uint64_t a1, uint64_t a2, uint64_t a3)
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

void sub_100007408(void *a1, void (**a2)(void))
{
  v4 = static os_log_type_t.debug.getter();
  sub_10000282C(0, &qword_100014F70, OS_os_log_ptr);
  v5 = sub_1000027D0();
  os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v5, "waitForDataDispatcherCompletion called by XPC client.", 53, 2, &_swiftEmptyArrayStorage);

  v6 = (*((swift_isaMask & *a1) + 0x80))();
  [v6 waitForDataDispatcherCompletion];

  a2[2](a2);

  _Block_release(a2);
}

uint64_t sub_100007500(uint64_t (*a1)(void))
{
  v2 = v1;
  v4 = static os_log_type_t.debug.getter();
  sub_10000282C(0, &qword_100014F70, OS_os_log_ptr);
  v5 = sub_1000027D0();
  os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v5, "waitForDataDispatcherCompletion called by XPC client.", 53, 2, &_swiftEmptyArrayStorage);

  v6 = (*((swift_isaMask & *v2) + 0x80))();
  [v6 waitForDataDispatcherCompletion];

  return a1();
}

void sub_100007650(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v7 = *(v4 + OBJC_IVAR____TtC14assistant_cdmd13CDMXPCService_setupConfig);
  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = v4;
  v39 = v7;
  v11 = [v39 deallocationTimeout];
  if (!v11 || (sub_100008D30(v11, v12, v13, v14, v15, v16, v17, v18, v34, buf, v37, v39, v40, v41), v4, (v41 & 1) != 0))
  {

LABEL_5:
    a3(a1, a2);
    sub_100008D68();
    return;
  }

  sub_1000079AC(*&v40);
  v19 = OBJC_IVAR____TtC14assistant_cdmd13CDMXPCService_transaction;
  v20 = *(v4 + OBJC_IVAR____TtC14assistant_cdmd13CDMXPCService_transaction);
  v21 = static os_log_type_t.debug.getter();
  sub_10000282C(0, &qword_100014F70, OS_os_log_ptr);
  v22 = sub_1000027D0();
  v24 = v22;
  if (v20)
  {
    sub_100008D84(v22, &_mh_execute_header, v23, "Transaction still active, re-using the client to process request");

    (a3)();
  }

  else
  {
    if (os_log_type_enabled(v22, v21))
    {
      bufa = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v40 = v38;
      *bufa = 136315138;
      v25 = sub_100003DA8(v39, &selRef_invocationSource);
      if (v26)
      {
        v27 = v26;
      }

      else
      {
        v25 = 0x74657320746F6E28;
        v27 = 0xE900000000000029;
      }

      v28 = sub_1000028D0(v25, v27, &v40);

      *(bufa + 4) = v28;
      _os_log_impl(&_mh_execute_header, v24, v21, "Transaction was terminated due to client inactive. Re-setting up client and transaction. invocationSource:%s", bufa, 0xCu);
      sub_100002AF0(v38);
      sub_100002C54(v38);
      sub_100002C54(bufa);
    }

    sub_100002C78();
    v29 = os_transaction_create();

    *(v8 + v19) = v29;
    swift_unknownObjectRelease();
    sub_100002C6C();
    v30 = swift_allocObject();
    v30[2] = a1;
    v30[3] = a2;
    v30[4] = a3;
    v30[5] = a4;
    v31 = *((swift_isaMask & *v8) + 0x120);

    v31(v39, sub_100008B30, v30);
  }

  sub_100008D68();
}

uint64_t sub_100007938(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t (*a4)(void))
{
  if (!a1)
  {
    return (a4)(0, a2, a3);
  }

  swift_errorRetain();
  a2(a1);
}

uint64_t sub_1000079AC(double a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC14assistant_cdmd13CDMXPCService_idleTimerQueue);
  sub_10000407C();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100008D14();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a1;
  sub_100008D14();
  v6 = swift_allocObject();
  *(v6 + 16) = sub_100008C5C;
  *(v6 + 24) = v5;
  v9[4] = sub_100005774;
  v9[5] = v6;
  sub_100008CE0();
  v9[1] = 1107296256;
  v9[2] = sub_1000054B8;
  v9[3] = &unk_100010CF0;
  v7 = _Block_copy(v9);

  dispatch_sync(v3, v7);
  _Block_release(v7);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

void sub_100007B0C(uint64_t a1, double a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  sub_100003420();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100003330();
  v10 = v9 - v8;
  v11 = type metadata accessor for DispatchQoS();
  sub_100003420();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_100003330();
  v17 = v16 - v15;
  *&v18 = COERCE_DOUBLE(type metadata accessor for DispatchTimeInterval());
  sub_100003420();
  v71 = v19;
  __chkstk_darwin(v20);
  sub_100008D54();
  v70 = v21;
  __chkstk_darwin(v22);
  v69 = &v58 - v23;
  type metadata accessor for DispatchTime();
  sub_100003420();
  v67 = v25;
  v68 = v24;
  __chkstk_darwin(v24);
  sub_100008D54();
  v65 = v26;
  __chkstk_darwin(v27);
  v66 = &v58 - v28;
  type metadata accessor for OS_dispatch_source.TimerFlags();
  sub_100003420();
  v72 = v30;
  v73 = v29;
  __chkstk_darwin(v29);
  sub_100003330();
  sub_1000032F8();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v32 = Strong;
    v58 = *&v18;
    v62 = v17;
    v63 = v13;
    v64 = v10;
    v59 = v11;
    v60 = v6;
    v61 = v4;
    v33 = static os_log_type_t.debug.getter();
    sub_10000282C(0, &qword_100014F70, OS_os_log_ptr);
    v34 = sub_1000027D0();
    sub_100004BF0(&qword_1000152C8, &qword_10000ACA8);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_10000AC90;
    *(v35 + 56) = &type metadata for Double;
    *(v35 + 64) = &protocol witness table for Double;
    *(v35 + 32) = a2;
    os_log(_:dso:log:_:_:)(v33, &_mh_execute_header, v34, "Starting idle timer with interval: %f seconds", v58);

    v37 = *((swift_isaMask & *v32) + 0xE0);
    v74 = (swift_isaMask & *v32) + 224;
    v75 = v37;
    if ((v37)(v36))
    {
      swift_getObjectType();
      OS_dispatch_source.cancel()();
      swift_unknownObjectRelease();
    }

    v38 = *((swift_isaMask & *v32) + 0xE8);
    v38(0);
    sub_10000282C(0, &qword_1000153E0, OS_dispatch_source_ptr);
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_1000034E8(&qword_1000153E8, &type metadata accessor for OS_dispatch_source.TimerFlags, &protocol conformance descriptor for OS_dispatch_source.TimerFlags);
    sub_100004BF0(&qword_1000153F0, &qword_10000ADB0);
    sub_100003530(&qword_1000153F8, &qword_1000153F0, &qword_10000ADB0);
    v39 = v73;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v40 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
    (*(v72 + 8))(v2, v39);
    v41 = v38(v40);
    v42 = v75;
    if ((v75)(v41))
    {
      swift_getObjectType();
      v43 = v65;
      static DispatchTime.now()();
      v44 = v66;
      + infix(_:_:)();
      v45 = v68;
      v46 = *(v67 + 8);
      v46(v43, v68);
      v47 = v69;
      sub_10000829C(v69);
      v48 = v70;
      sub_100008310(v70);
      OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
      swift_unknownObjectRelease();
      v49 = *(v71 + 8);
      v50 = v58;
      v49(v48, *&v58);
      v49(v47, *&v50);
      v51 = v44;
      v42 = v75;
      v46(v51, v45);
    }

    v52 = v42();
    v53 = v64;
    v54 = v63;
    v55 = v62;
    if (v52)
    {
      swift_getObjectType();
      sub_10000407C();
      v56 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_100008C68;
      aBlock[5] = v56;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100002EA0;
      aBlock[3] = &unk_100010D18;
      v57 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      sub_100008388();
      OS_dispatch_source.setEventHandler(qos:flags:handler:)();
      _Block_release(v57);
      swift_unknownObjectRelease();
      (*(v60 + 8))(v53, v61);
      (*(v54 + 8))(v55, v59);
    }

    if ((v42)(v52))
    {
      swift_getObjectType();
      OS_dispatch_source.resume()();

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_10000829C@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for DispatchTimeInterval.never(_:);
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_100008310@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = enum case for DispatchTimeInterval.nanoseconds(_:);
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_100008388()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_1000034E8(&qword_100015400, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100004BF0(&qword_100015408, &qword_10000ADB8);
  sub_100003530(&unk_100015410, &qword_100015408, &qword_10000ADB8);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_100008460(uint64_t a1)
{
  v2 = v1;
  static os_log_type_t.debug.getter();
  sub_10000282C(0, &qword_100014F70, OS_os_log_ptr);
  v3 = sub_1000027D0();
  v4 = sub_10000364C();
  os_log(_:dso:log:_:_:)(v4, v5, v6, v7, 86, 2);

  *(v2 + OBJC_IVAR____TtC14assistant_cdmd13CDMXPCService_transaction) = 0;
  swift_unknownObjectRelease();
  [objc_allocWithZone(CDMFoundationClient) init];
  sub_100008D20();
  (*(v8 + 136))();
  sub_100008D20();
  if ((*(v9 + 224))())
  {
    swift_getObjectType();
    OS_dispatch_source.cancel()();
    swift_unknownObjectRelease();
  }

  sub_100008D20();
  v11 = *(v10 + 232);

  return v11(0);
}

void sub_1000085AC()
{
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = (*((swift_isaMask & **(v0 + 16)) + 0x80))();
  v5 = objc_allocWithZone(type metadata accessor for CDMNluRequest());
  v6 = v1;
  v7 = CDMNluRequest.init(objcProto:)();
  sub_100008D14();
  v8 = swift_allocObject();
  *(v8 + 16) = v3;
  *(v8 + 24) = v2;
  v10[4] = sub_100008B3C;
  v10[5] = v8;
  sub_100008CE0();
  v10[1] = 1107296256;
  v10[2] = sub_100006D80;
  v10[3] = &unk_100010BD8;
  v9 = _Block_copy(v10);

  [v4 processCDMNluRequest:v7 completionHandler:v9];
  _Block_release(v9);
}

unint64_t sub_1000086DC()
{
  result = qword_1000152D8;
  if (!qword_1000152D8)
  {
    sub_10000282C(255, &qword_1000152D0, CDMServiceGraphCommand_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000152D8);
  }

  return result;
}

void sub_100008774()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = (*((swift_isaMask & **(v0 + 16)) + 0x80))();
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    sub_100008D14();
    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    *(v7 + 24) = v2;
    v10[4] = sub_100008AD8;
    v10[5] = v7;
    sub_100008CE0();
    v10[1] = 1107296256;
    v10[2] = sub_100007240;
    v10[3] = &unk_100010B60;
    v8 = _Block_copy(v10);

    [v6 doHandleCommand:v3 forCallback:v8];
    _Block_release(v8);
  }

  else
  {

    sub_100008A84();
    v9 = swift_allocError();
    v1(0, v9);
  }
}

unint64_t sub_10000890C()
{
  result = qword_1000152E0;
  if (!qword_1000152E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000152E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CDMXPCService.CDMXPCServiceError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for CDMXPCService.CDMXPCServiceError(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_100008A84()
{
  result = qword_1000153D0;
  if (!qword_1000153D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000153D0);
  }

  return result;
}

uint64_t sub_100008AD8(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  if (a1)
  {
    objc_opt_self();
    a1 = swift_dynamicCastObjCClass();
  }

  return v4(a1, a2);
}

void sub_100008B3C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = static os_log_type_t.debug.getter();
  sub_10000282C(0, &qword_100014F70, OS_os_log_ptr);
  v7 = sub_1000027D0();
  os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, v7, "Process CDM Nlu request response is ready. Sending to client.", 61, 2, &_swiftEmptyArrayStorage);

  if (a1)
  {
    v8 = dispatch thunk of CDMNluResponse.objcProto.getter();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v5(v8, a2);
}

uint64_t sub_100008C20()
{

  sub_100002C6C();

  return _swift_deallocObject(v0, v1, v2);
}

void sub_100008C68(uint64_t a1, uint64_t a2)
{
  sub_100003F2C(v2 + 16, a2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_100008460(Strong);
  }
}

uint64_t sub_100008D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{

  return static Double._conditionallyBridgeFromObjectiveC(_:result:)();
}

uint64_t sub_100008D84(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{

  return os_log(_:dso:log:_:_:)(v5, a2, v4, a4, 64, 2);
}

uint64_t sub_100008DA4(uint64_t a1, ...)
{

  return swift_beginAccess();
}

id sub_100008DC4()
{
  sub_10000282C(0, &qword_1000154A0, NSXPCListener_ptr);
  type metadata accessor for CDMXPCDefines();
  v0 = dispatch thunk of static CDMXPCDefines.machServiceName()();
  return sub_100008E14(v0, v1);
}

id sub_100008E14(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 initWithMachServiceName:v3];

  return v4;
}

id sub_100008E88()
{
  type metadata accessor for CDMXPCServiceDelegate();
  sub_10000282C(0, &qword_100014F68, CDMFoundationClient_ptr);
  v0 = sub_100004590();
  v1 = sub_1000045BC();
  return sub_1000045C4(v0, v1 & 1);
}

uint64_t sub_100008EF4(void *a1, void *a2)
{
  v4 = swift_allocObject();
  sub_100008F44(a1, a2);
  return v4;
}

void *sub_100008F44(void *a1, void *a2)
{
  v3 = v2;
  v3[3] = a2;
  v3[4] = 0;
  v3[2] = a1;
  v5 = *((swift_isaMask & *a2) + 0x80);
  v6 = a1;
  v7 = a2;

  v5(sub_100003750, v3);
  v8 = v3[3];
  v9 = *((swift_isaMask & *v8) + 0xB0);
  v10 = v8;
  v9(sub_1000090C0, 0);

  v11 = v3[3];
  v12 = *((swift_isaMask & *v11) + 0x98);

  v13 = v11;
  v12(sub_10000334C, v3);

  [v6 setDelegate:v3[3]];
  return v3;
}

void sub_1000090C0(uint64_t a1)
{
  v1 = static os_log_type_t.error.getter();
  sub_10000282C(0, &qword_100014F70, OS_os_log_ptr);
  v2 = sub_1000027D0();
  os_log(_:dso:log:_:_:)(v1, &_mh_execute_header, v2, "Connection interrupted.", 23, 2, &_swiftEmptyArrayStorage);
}

id sub_100009158(uint64_t a1)
{
  v2 = v1;
  v3 = static os_log_type_t.debug.getter();
  sub_10000282C(0, &qword_100014F70, OS_os_log_ptr);
  v4 = sub_1000027D0();
  os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v4, "Starting CDM Service.", 21, 2, &_swiftEmptyArrayStorage);

  v5 = *(v2 + 16);

  return [v5 resume];
}

uint64_t sub_100009220()
{
  sub_1000091F8();

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t sub_100009278(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1000092D0(a1, a2);
  return v4;
}

void *sub_1000092D0(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = static os_log_type_t.debug.getter();
  sub_1000055D8();
  v8 = sub_1000027D0();
  os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, v8, "Consuming sandbox extension token.", 34, 2, &_swiftEmptyArrayStorage);

  v9 = sub_100009414(a1, a2);
  if (v3)
  {

    v14 = type metadata accessor for CDMXPCSandboxExtension();
    result = sub_100009648(v14);
    __break(1u);
  }

  else
  {
    if (v9 == -1)
    {

      v10 = errno.getter();
      sub_1000094D4();
      swift_allocError();
      *v11 = v10;
      swift_willThrow();
      v12 = type metadata accessor for CDMXPCSandboxExtension();
      sub_100009648(v12);
    }

    else
    {
      v4[2] = a1;
      v4[3] = a2;
      v4[4] = v9;
    }

    return v4;
  }

  return result;
}

uint64_t sub_1000093E4@<X0>(uint64_t *a1@<X8>)
{
  result = sandbox_extension_consume();
  *a1 = result;
  return result;
}

void *sub_100009414(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0 && ((a2 & 0x2000000000000000) != 0 || (a1 & 0x1000000000000000) != 0))
  {
    return sandbox_extension_consume();
  }

  result = _StringGuts._slowWithCString<A>(_:)();
  if (!v2)
  {
    return v4;
  }

  return result;
}

unint64_t sub_1000094D4()
{
  result = qword_100015580;
  if (!qword_100015580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100015580);
  }

  return result;
}

uint64_t sub_100009528(uint64_t a1)
{
  v2 = v1;
  v3 = static os_log_type_t.debug.getter();
  sub_1000055D8();
  v4 = sub_1000027D0();
  os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v4, "Releasing sandbox extension token.", 34, 2, &_swiftEmptyArrayStorage);

  sandbox_extension_release();

  return v2;
}

uint64_t sub_1000095B0(uint64_t a1)
{
  sub_100009528(a1);

  return _swift_deallocClassInstance(v1, 40, 7);
}

uint64_t getEnumTagSinglePayload for CDMXPCSandboxExtension.SandboxExtensionError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CDMXPCSandboxExtension.SandboxExtensionError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_100009648(uint64_t a1)
{

  return _swift_deallocPartialClassInstance(v1, a1, 40, 7);
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for CDMDaemon();
  qword_100015928 = sub_100009B48();
  (*(*qword_100015928 + 144))();
  return 0;
}

uint64_t sub_1000096C8()
{
  sub_1000055D8();
  sub_100009B2C();

  result = OS_os_log.init(subsystem:category:)();
  qword_100015918 = result;
  return result;
}

void sub_100009728()
{
  sub_10000282C(0, &qword_1000153E0, OS_dispatch_source_ptr);
  sub_10000282C(0, &qword_1000152A0, OS_dispatch_queue_ptr);
  v0 = static OS_dispatch_queue.main.getter();
  v1 = static OS_dispatch_source.makeSignalSource(signal:queue:)();

  qword_100015930 = v1;
}

void static CDMSignalHandler.registerHandlers()()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  sub_100003420();
  v2 = v1;
  __chkstk_darwin(v3);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  sub_100003420();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = &aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100015920 != -1)
  {
    sub_100009B0C(&qword_100015920);
  }

  swift_beginAccess();
  swift_getObjectType();
  aBlock[4] = sub_100009A6C;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002EA0;
  aBlock[3] = &unk_100010DD0;
  v12 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  static DispatchQoS.unspecified.getter();
  sub_100008388();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v12);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v5, v0);
  (*(v8 + 8))(v11, v6);
  swift_getObjectType();
  swift_unknownObjectRetain();
  OS_dispatch_source.activate()();
  swift_unknownObjectRelease();
  v13 = static os_log_type_t.debug.getter();
  sub_10000282C(0, &qword_100014F70, OS_os_log_ptr);
  v14 = sub_1000027D0();
  os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, v14, "Finished registering signal handlers.", 37, 2, &_swiftEmptyArrayStorage);
}

void sub_100009A6C()
{
  v0 = static os_log_type_t.fault.getter();
  sub_10000282C(0, &qword_100014F70, OS_os_log_ptr);
  v1 = sub_1000027D0();
  os_log(_:dso:log:_:_:)(v0, &_mh_execute_header, v1, "Received SIGTERM. CDMD is shutting down.", 40, 2, &_swiftEmptyArrayStorage);
}

uint64_t sub_100009B0C(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100009B48()
{
  v0 = swift_allocObject();
  sub_100009B80();
  return v0;
}

void *sub_100009B80()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_100003420();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100003330();
  v8 = v7 - v6;
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  v10 = sub_100003340(v9);
  __chkstk_darwin(v10);
  sub_100003330();
  v11 = type metadata accessor for DispatchQoS();
  v12 = sub_100003340(v11);
  __chkstk_darwin(v12);
  sub_100003330();
  sub_10000282C(0, &qword_100014F68, CDMFoundationClient_ptr);
  v0[2] = sub_100003434(0xD00000000000001ELL, 0x800000010000C690);
  v0[6] = [objc_allocWithZone(NSCondition) init];
  v0[7] = dispatch_group_create();
  sub_10000282C(0, &qword_1000152A0, OS_dispatch_queue_ptr);
  static DispatchQoS.background.getter();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  (*(v4 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v2);
  v0[8] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  type metadata accessor for CDMXPCListener();
  v13 = sub_100008DC4();
  v14 = sub_100008E88();
  v15 = sub_100008EF4(v13, v14);
  v1[3] = v15;
  type metadata accessor for CDMXPCStreamEventListener();
  v16 = v1[6];
  v17 = v1[7];
  v18 = v1[8];
  v19 = v1[2];

  v20 = v16;
  v21 = v17;
  v22 = v18;
  v23 = v19;
  v24 = sub_100002F9C();
  v1[4] = sub_100004CD0(v24, v25, v26, v15, v27);
  type metadata accessor for CDMXPCActivityListener();
  v28 = v1[7];
  v29 = v1[8];
  v31 = v1[2];
  v30 = v1[3];
  v32 = v1[6];
  v33 = v28;
  v34 = v29;

  v35 = v31;
  v36 = sub_100002F9C();
  v1[5] = sub_100004CD0(v36, v37, v38, v30, v39);
  return v1;
}

void sub_100009E40()
{
  static CDMSignalHandler.registerHandlers()();
  v1 = (*(*v0[3] + 144))();
  v2 = (*(*v0[4] + 128))(v1);
  (*(*v0[5] + 128))(v2);
  v3 = [objc_opt_self() mainRunLoop];
  [v3 run];
}

id *sub_100009F28()
{

  return v0;
}

uint64_t sub_100009F78()
{
  sub_100009F28();

  return _swift_deallocClassInstance(v0, 72, 7);
}