uint64_t sub_100001790(void *a1)
{
  LODWORD(v37) = [a1 processIdentifier];
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  v4 = v3;
  if (qword_100021020 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100001CE8(v5, qword_100021E50);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v37 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100011D20(v2, v4, &v37);
    _os_log_impl(&_mh_execute_header, v6, v7, "Client %s has requested a connection to the API service", v8, 0xCu);
    sub_1000028C0(v9);
  }

  v10 = [objc_opt_self() currentEnvironment];
  v11 = [v10 entitlementVerifier];

  [a1 auditToken];
  v34 = v38;
  v35 = v37;
  v12 = String._bridgeToObjectiveC()();
  v36 = 0;
  v37 = v35;
  v38 = v34;
  v13 = [v11 auditToken:&v37 hasBooleanEntitlement:v12 error:&v36];
  swift_unknownObjectRelease();

  if (v36)
  {
    v14 = v36;

    swift_willThrow();
    v15 = v14;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = v15;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&_mh_execute_header, v16, v17, "Error checking entitlement: %@", v18, 0xCu);
      sub_1000050A0(v19, &unk_100021130, &unk_100015FD0);
    }

    else
    {
    }

    return 0;
  }

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();

  v24 = os_log_type_enabled(v22, v23);
  if (!v13)
  {
    if (v24)
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&v37 = v29;
      *v28 = 136315138;
      v30 = sub_100011D20(v2, v4, &v37);

      *(v28 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v22, v23, "Denying connection from %s", v28, 0xCu);
      sub_1000028C0(v29);
    }

    else
    {
    }

    return 0;
  }

  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&v37 = v26;
    *v25 = 136315138;
    v27 = sub_100011D20(v2, v4, &v37);

    *(v25 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v22, v23, "Accepting connection from %s", v25, 0xCu);
    sub_1000028C0(v26);
  }

  else
  {
  }

  v31 = static RemoteStickersAPI.xpcInterface.getter();
  [a1 setExportedInterface:v31];

  v32 = [objc_allocWithZone(type metadata accessor for StickersAPIService.Worker()) init];
  [a1 setExportedObject:v32];

  [a1 resume];
  return 1;
}

uint64_t sub_100001CE8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100001DCC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_100001E30(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = a3;
  v17 = a1;
  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = swift_allocObject();
  *(v16 + 16) = v11;
  a7(v13, v15, a6, v16);

  sub_10000286C(v13, v15);
}

void sub_100001F0C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v32 = a4;
  v33 = a3;
  v29 = sub_100005058(&qword_100021228, &qword_100015E98);
  __chkstk_darwin(v29);
  v5 = &v27 - v4;
  Request = type metadata accessor for Sticker.FetchRequest();
  v7 = *(Request - 8);
  __chkstk_darwin(Request);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for XPCCoder();
  v30 = *(v10 - 8);
  v31 = v10;
  __chkstk_darwin(v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100021030 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100001CE8(v13, qword_100021E98);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v27 = v5;
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "BEGIN count(for:)", v16, 2u);
    v5 = v27;
  }

  XPCCoder.init()();
  sub_100002548();
  XPCCoder.decode<A>(_:)();
  if ((*(v7 + 48))(v5, 1, Request) == 1)
  {
    sub_1000050A0(v5, &qword_100021228, &qword_100015E98);
    v17 = type metadata accessor for XPCDataMapperError();
    sub_1000031E0(&qword_100021218, &type metadata accessor for XPCDataMapperError, &protocol conformance descriptor for XPCDataMapperError);
    v18 = swift_allocError();
    *v19 = 0x74736575716572;
    v19[1] = 0xE700000000000000;
    (*(*(v17 - 8) + 104))(v19, enum case for XPCDataMapperError.parameterDecoding(_:), v17);
    swift_willThrow();
    (*(v30 + 8))(v12, v31);
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      swift_errorRetain();
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v24;
      *v23 = v24;
      _os_log_impl(&_mh_execute_header, v20, v21, "Error handling count(for:): %@", v22, 0xCu);
      sub_1000050A0(v23, &unk_100021130, &unk_100015FD0);
    }

    swift_errorRetain();
    v33(0, v18);
  }

  else
  {
    (*(v7 + 32))(v9, v5, Request);
    sub_1000025FC((v28 + OBJC_IVAR____TtCV9stickersd18StickersAPIService6Worker_store), *(v28 + OBJC_IVAR____TtCV9stickersd18StickersAPIService6Worker_store + 24));
    v25 = dispatch thunk of StickerStoreProtocol.count(for:)();
    v26 = (v30 + 8);
    v33(v25, 0);
    (*(v7 + 8))(v9, Request);
    (*v26)(v12, v31);
  }

  sub_1000026B8("END   count(for:)");
}

uint64_t sub_10000250C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100002548()
{
  result = qword_100021230;
  if (!qword_100021230)
  {
    sub_1000068B0(&qword_100021228, &qword_100015E98);
    sub_1000031E0(&qword_100021238, &type metadata accessor for Sticker.FetchRequest, &protocol conformance descriptor for Sticker.FetchRequest);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021230);
  }

  return result;
}

void *sub_1000025FC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_100002648(uint64_t a1, uint64_t a2, uint64_t a3)
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

void sub_1000026B8(const char *a1)
{
  if (qword_100021030 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100001CE8(v2, qword_100021E98);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v3, a1, v4, 2u);
  }
}

unint64_t sub_1000027A8()
{
  result = qword_100021250;
  if (!qword_100021250)
  {
    sub_1000068B0(&qword_100021248, &qword_100015EA0);
    sub_1000031E0(&qword_100021220, &type metadata accessor for Sticker, &protocol conformance descriptor for Sticker);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021250);
  }

  return result;
}

uint64_t sub_10000286C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1000028C0(void *a1)
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

void sub_100002968(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, unint64_t, uint64_t), uint64_t a4)
{
  v47 = a4;
  v48 = a3;
  v4 = type metadata accessor for StickerSequence();
  v41 = *(v4 - 8);
  v42 = v4;
  v5 = __chkstk_darwin(v4);
  v40 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v45 = &v38 - v7;
  v8 = sub_100005058(&qword_100021228, &qword_100015E98);
  __chkstk_darwin(v8);
  v10 = &v38 - v9;
  Request = type metadata accessor for Sticker.FetchRequest();
  v11 = *(Request - 8);
  __chkstk_darwin(Request);
  v44 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for XPCCoder();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100021030 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v46 = sub_100001CE8(v17, qword_100021E98);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v39 = v10;
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "BEGIN fetch(_:)", v20, 2u);
    v10 = v39;
  }

  XPCCoder.init()();
  sub_100002548();
  XPCCoder.decode<A>(_:)();
  v21 = Request;
  if ((*(v11 + 48))(v10, 1, Request) == 1)
  {
    sub_1000050A0(v10, &qword_100021228, &qword_100015E98);
    v22 = type metadata accessor for XPCDataMapperError();
    sub_1000031E0(&qword_100021218, &type metadata accessor for XPCDataMapperError, &protocol conformance descriptor for XPCDataMapperError);
    v23 = swift_allocError();
    *v24 = 0x74736575716572;
    v24[1] = 0xE700000000000000;
    (*(*(v22 - 8) + 104))(v24, enum case for XPCDataMapperError.parameterDecoding(_:), v22);
    swift_willThrow();
    (*(v14 + 8))(v16, v13);
    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      swift_errorRetain();
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v29;
      *v28 = v29;
      _os_log_impl(&_mh_execute_header, v25, v26, "Error handling fetch(_:): %@", v27, 0xCu);
      sub_1000050A0(v28, &unk_100021130, &unk_100015FD0);
    }

    swift_errorRetain();
    v48(0, 0xF000000000000000, v23);
  }

  else
  {
    v38 = v11;
    v39 = v13;
    (*(v11 + 32))(v44, v10, v21);
    sub_1000025FC((v43 + OBJC_IVAR____TtCV9stickersd18StickersAPIService6Worker_store), *(v43 + OBJC_IVAR____TtCV9stickersd18StickersAPIService6Worker_store + 24));
    v30 = v45;
    dispatch thunk of StickerStoreProtocol.stickers(_:)();
    v31 = v38;
    v32 = v41;
    v33 = v30;
    v34 = v42;
    (*(v41 + 16))(v40, v33, v42);
    sub_1000031E0(&qword_100021240, &type metadata accessor for StickerSequence, &protocol conformance descriptor for StickerSequence);
    v50 = dispatch thunk of Sequence._copyToContiguousArray()();
    sub_100005058(&qword_100021248, &qword_100015EA0);
    sub_1000027A8();
    v35 = XPCCoder.encode<A>(_:)();
    v37 = v36;

    sub_100003228(v35, v37);
    v48(v35, v37, 0);
    sub_10000286C(v35, v37);
    sub_10000286C(v35, v37);
    (*(v32 + 8))(v45, v34);
    (*(v31 + 8))(v44, Request);
    (*(v14 + 8))(v16, v39);
  }

  sub_1000026B8("END   fetch(_:)");
}

uint64_t sub_1000031E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100003228(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

void sub_10000327C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
    if (a3)
    {
LABEL_3:
      v7 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, isa);
}

uint64_t sub_10000332C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000336C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000033A8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000033E0()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000343C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100003474()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000034C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100003580(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Logger();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_100003720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_100003738(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_100021698)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_10000387C;
    v4[4] = &unk_10001CB80;
    v4[5] = v4;
    v5 = off_10001CB68;
    v6 = 0;
    qword_100021698 = _sl_dlopen();
    v2 = v4[0];
    if (qword_100021698)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("BYSetupStateNotifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100014884();
  }

  qword_100021690 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10000387C(uint64_t a1)
{
  result = _sl_dlopen();
  qword_100021698 = result;
  return result;
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_log_create("com.apple.stickersd", "lifetime");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "stickersd launching", buf, 2u);
  }

  signal(15, 1);
  v2 = dispatch_get_global_queue(21, 0);
  v3 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, v2);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100003A70;
  handler[3] = &unk_10001CBA8;
  v9 = v1;
  v4 = v1;
  dispatch_source_set_event_handler(v3, handler);
  dispatch_activate(v3);
  v5 = objc_alloc_init(_TtC9stickersd14StickersDaemon);
  v6 = +[NSRunLoop mainRunLoop];
  [(StickersDaemon *)v5 runOn:v6];

  objc_autoreleasePoolPop(v0);
  return 0;
}

uint64_t sub_100003A70(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "SIGTERM received - will exit when clean", v3, 2u);
  }

  return xpc_transaction_exit_clean();
}

uint64_t sub_100003AD4()
{
  v0 = type metadata accessor for Logger();
  sub_1000044D4(v0, qword_100021E20);
  sub_100001CE8(v0, qword_100021E20);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100003BB4()
{
  v0 = type metadata accessor for Logger();
  sub_1000044D4(v0, qword_100021E38);
  sub_100001CE8(v0, qword_100021E38);
  return Logger.init(subsystem:category:)();
}

id sub_100003C34()
{
  v1 = OBJC_IVAR____TtCCV9stickersd33StickersLaunchStateManagerService8Delegate6Worker____lazy_storage___launchStateManager;
  v2 = *(v0 + OBJC_IVAR____TtCCV9stickersd33StickersLaunchStateManagerService8Delegate6Worker____lazy_storage___launchStateManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCCV9stickersd33StickersLaunchStateManagerService8Delegate6Worker____lazy_storage___launchStateManager);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for LaunchStateManager()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_10000406C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1000040AC()
{
  v2 = sub_1000043E4(*v0);
  v3 = *(v1 + 8);
  v4 = v2 & 1;

  return v3(v4);
}

Swift::Int LaunchStateManagerServiceError.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100004184(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

unint64_t sub_1000041F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100021060;
  if (!qword_100021060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021060);
  }

  return result;
}

unint64_t sub_10000424C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100021068;
  if (!qword_100021068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021068);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LaunchStateManagerServiceError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for LaunchStateManagerServiceError(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_1000043E4(void *a1)
{
  if (qword_100021010 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100001CE8(v2, qword_100021E20);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Starting LaunchStateManager service", v5, 2u);
  }

  [a1 resume];
  return 1;
}

uint64_t *sub_1000044D4(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100004538(void *a1)
{
  LODWORD(v37) = [a1 processIdentifier];
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  v4 = v3;
  if (qword_100021010 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100001CE8(v5, qword_100021E20);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v37 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100011D20(v2, v4, &v37);
    _os_log_impl(&_mh_execute_header, v6, v7, "Client %s has requested a connection to the LaunchStateManager service", v8, 0xCu);
    sub_1000028C0(v9);
  }

  v10 = [objc_opt_self() currentEnvironment];
  v11 = [v10 entitlementVerifier];

  [a1 auditToken];
  v34 = v38;
  v35 = v37;
  v12 = String._bridgeToObjectiveC()();
  v36 = 0;
  v37 = v35;
  v38 = v34;
  v13 = [v11 auditToken:&v37 hasBooleanEntitlement:v12 error:&v36];
  swift_unknownObjectRelease();

  if (v36)
  {
    v14 = v36;

    swift_willThrow();
    v15 = v14;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = v15;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&_mh_execute_header, v16, v17, "Error checking entitlement: %@", v18, 0xCu);
      sub_1000050A0(v19, &unk_100021130, &unk_100015FD0);
    }

    else
    {
    }

    return 0;
  }

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();

  v24 = os_log_type_enabled(v22, v23);
  if (!v13)
  {
    if (v24)
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&v37 = v29;
      *v28 = 136315138;
      v30 = sub_100011D20(v2, v4, &v37);

      *(v28 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v22, v23, "Denying connection from %s", v28, 0xCu);
      sub_1000028C0(v29);
    }

    else
    {
    }

    return 0;
  }

  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&v37 = v26;
    *v25 = 136315138;
    v27 = sub_100011D20(v2, v4, &v37);

    *(v25 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v22, v23, "Accepting connection from %s", v25, 0xCu);
    sub_1000028C0(v26);
  }

  else
  {
  }

  v31 = static LaunchStateManagerAPI.xpcInterface.getter();
  [a1 setExportedInterface:v31];

  v32 = [objc_allocWithZone(type metadata accessor for StickersLaunchStateManagerService.Delegate.Worker()) init];
  [a1 setExportedObject:v32];

  [a1 resume];
  return 1;
}

uint64_t sub_100004A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24[1] = a5;
  v7 = sub_100005058(&qword_100021128, qword_100015DA0);
  __chkstk_darwin(v7 - 8);
  v9 = v24 - v8;
  v10 = type metadata accessor for StickerSectionType();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v24 - v15;

  StickerSectionType.init(rawValue:)();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    v17 = sub_1000050A0(v9, &qword_100021128, qword_100015DA0);
    sub_10000424C(v17, v18, v19);
    swift_allocError();
    v20 = _convertErrorToNSError(_:)();
    (*(a6 + 16))(a6, v20);
  }

  else
  {
    v24[0] = a6;
    (*(v11 + 32))(v16, v9, v10);
    (*(v11 + 16))(v14, v16, v10);
    objc_allocWithZone(type metadata accessor for LaunchConfiguration());

    v22 = LaunchConfiguration.init(sectionType:identifier:)();
    v23 = sub_100003C34();
    dispatch thunk of LaunchStateManager.updateConfiguration(with:)();

    (*(v24[0] + 16))(v24[0], 0);
    return (*(v11 + 8))(v16, v10);
  }
}

void sub_100004EBC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (qword_100021018 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100001CE8(v6, qword_100021E38);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100011D20(a1, a2, &v12);
    _os_log_impl(&_mh_execute_header, v7, v8, "uppercasing %s", v9, 0xCu);
    sub_1000028C0(v10);
  }

  String.uppercased()();
  v11 = String._bridgeToObjectiveC()();
  (*(a3 + 16))(a3, v11);
}

uint64_t sub_100005058(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000050A0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100005058(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

__n128 sub_100005100(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000510C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100005154(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_1000051A0(uint64_t a1, uint64_t a2)
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

uint64_t sub_10000522C()
{
  v0 = type metadata accessor for StickerStore();
  result = static StickerStore.createAPIStore()();
  qword_100021E80 = v0;
  unk_100021E88 = &protocol witness table for StickerStore;
  qword_100021E90 = &protocol witness table for StickerStore;
  qword_100021E68 = result;
  return result;
}

uint64_t sub_10000531C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Logger();
  sub_1000044D4(v5, a2);
  sub_100001CE8(v5, a2);
  return Logger.init(subsystem:category:)();
}

void sub_100005424(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, unint64_t, uint64_t), uint64_t a4)
{
  v5 = v4;
  v27 = a4;
  v28 = a3;
  v6 = type metadata accessor for XPCCoder();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100021030 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100001CE8(v10, qword_100021E98);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "BEGIN addSticker(_:)", v13, 2u);
  }

  XPCCoder.init()();
  sub_100005058(&qword_100021200, &qword_100015E90);
  sub_1000067FC();
  XPCCoder.decode<A>(_:)();
  v22 = v29;
  if (v29)
  {
    sub_1000025FC((v5 + OBJC_IVAR____TtCV9stickersd18StickersAPIService6Worker_store), *(v5 + OBJC_IVAR____TtCV9stickersd18StickersAPIService6Worker_store + 24));
    v23 = dispatch thunk of StickerStoreProtocolInternal._internal_only_addSticker(_:)();
    v29 = v23;
    type metadata accessor for Sticker();
    sub_1000031E0(&qword_100021220, &type metadata accessor for Sticker, &protocol conformance descriptor for Sticker);
    v24 = XPCCoder.encode<A>(_:)();
    v26 = v25;
    sub_100003228(v24, v25);
    v28(v24, v26, 0);
    sub_10000286C(v24, v26);

    sub_10000286C(v24, v26);
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    v14 = type metadata accessor for XPCDataMapperError();
    sub_1000031E0(&qword_100021218, &type metadata accessor for XPCDataMapperError, &protocol conformance descriptor for XPCDataMapperError);
    v15 = swift_allocError();
    *v16 = 0x72656B63697473;
    v16[1] = 0xE700000000000000;
    (*(*(v14 - 8) + 104))(v16, enum case for XPCDataMapperError.parameterDecoding(_:), v14);
    swift_willThrow();
    (*(v7 + 8))(v9, v6);
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      swift_errorRetain();
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v21;
      *v20 = v21;
      _os_log_impl(&_mh_execute_header, v17, v18, "Error handling addSticker(_:): %@", v19, 0xCu);
      sub_1000050A0(v20, &unk_100021130, &unk_100015FD0);
    }

    swift_errorRetain();
    v28(0, 0xF000000000000000, v15);
  }

  sub_1000026B8("END   addSticker(_:)");
}

void sub_1000059F8(uint64_t a1, void (*a2)(void))
{
  v3 = v2;
  if (qword_100021030 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100001CE8(v5, qword_100021E98);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "BEGIN removeStickers(identifiers:)", v8, 2u);
  }

  sub_1000025FC((v3 + OBJC_IVAR____TtCV9stickersd18StickersAPIService6Worker_store), *(v3 + OBJC_IVAR____TtCV9stickersd18StickersAPIService6Worker_store + 24));
  dispatch thunk of StickerStoreProtocolInternal._internal_only_removeStickers(identifiers:)();
  a2(0);
  sub_1000026B8("END   removeStickers(identifiers:)");
}

void sub_100005D9C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, const char *a5, void (*a6)(void *, uint64_t, uint64_t), const char *a7, const char *a8, ...)
{
  v32 = a8;
  v33 = a5;
  v35 = a3;
  v36 = a7;
  v10 = v8;
  v34 = a4;
  v11 = type metadata accessor for XPCCoder();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100021030 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100001CE8(v15, qword_100021E98);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v31 = v14;
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, v33, v18, 2u);
    v14 = v31;
  }

  XPCCoder.init()();
  sub_100005058(&qword_100021200, &qword_100015E90);
  sub_1000067FC();
  XPCCoder.decode<A>(_:)();
  v27 = v37;
  if (v37)
  {
    v28 = (v10 + OBJC_IVAR____TtCV9stickersd18StickersAPIService6Worker_store);
    v29 = *(v10 + OBJC_IVAR____TtCV9stickersd18StickersAPIService6Worker_store + 24);
    v30 = v28[5];
    sub_1000025FC(v28, v29);
    a6(v27, v29, v30);
    v35(0);

    (*(v12 + 8))(v14, v11);
  }

  else
  {
    v19 = type metadata accessor for XPCDataMapperError();
    sub_1000031E0(&qword_100021218, &type metadata accessor for XPCDataMapperError, &protocol conformance descriptor for XPCDataMapperError);
    v20 = swift_allocError();
    *v21 = 0x72656B63697473;
    v21[1] = 0xE700000000000000;
    (*(*(v19 - 8) + 104))(v21, enum case for XPCDataMapperError.parameterDecoding(_:), v19);
    swift_willThrow();
    (*(v12 + 8))(v14, v11);
    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      swift_errorRetain();
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 4) = v26;
      *v25 = v26;
      _os_log_impl(&_mh_execute_header, v22, v23, v32, v24, 0xCu);
      sub_1000050A0(v25, &unk_100021130, &unk_100015FD0);
    }

    swift_errorRetain();
    v35(v20);
  }

  sub_1000026B8(v36);
}

void sub_100006250()
{
  v1 = v0;
  if (qword_100021030 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100001CE8(v2, qword_100021E98);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "BEGIN reindexAllStickers()", v5, 2u);
  }

  sub_1000025FC((v1 + OBJC_IVAR____TtCV9stickersd18StickersAPIService6Worker_store), *(v1 + OBJC_IVAR____TtCV9stickersd18StickersAPIService6Worker_store + 24));
  dispatch thunk of StickerStoreProtocol.reindexAllStickers()();
  sub_1000026B8("END reindexAllStickers()");
}

id sub_1000064CC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10000650C()
{
  v2 = sub_10000670C(*v0);
  v3 = *(v1 + 8);
  v4 = v2 & 1;

  return v3(v4);
}

void sub_100006570(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (qword_100021030 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100001CE8(v6, qword_100021E98);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100011D20(a1, a2, &v12);
    _os_log_impl(&_mh_execute_header, v7, v8, "uppercasing %s", v9, 0xCu);
    sub_1000028C0(v10);
  }

  String.uppercased()();
  v11 = String._bridgeToObjectiveC()();
  (*(a3 + 16))(a3, v11);
}

uint64_t sub_10000670C(void *a1)
{
  if (qword_100021020 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100001CE8(v2, qword_100021E50);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Starting API service", v5, 2u);
  }

  [a1 resume];
  return 1;
}

unint64_t sub_1000067FC()
{
  result = qword_100021208;
  if (!qword_100021208)
  {
    sub_1000068B0(&qword_100021200, &qword_100015E90);
    sub_1000031E0(&qword_100021210, &type metadata accessor for Sticker, &protocol conformance descriptor for Sticker);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021208);
  }

  return result;
}

uint64_t sub_1000068B0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_100006904(void *a1)
{
  v2 = sub_1000083BC();
  if (v2)
  {
    sub_100006A50(v2);
    sub_100007114();

    sub_100008278(a1);
  }

  else
  {
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v3, "Waiting for device to become available before starting services", v4, 2u);
    }
  }
}

void sub_100006A50(uint64_t a1)
{
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Starting XPC services", v3, 2u);
  }

  sub_100006B10(v4);
  v5 = sub_1000076B4();
  sub_1000074B8(v5);

  sub_100006D3C();
}

uint64_t sub_100006B10(uint64_t a1)
{
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Starting Stickers API service", v5, 2u);
  }

  v6 = objc_allocWithZone(NSXPCListener);
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 initWithMachServiceName:v7];

  v9 = [objc_allocWithZone(type metadata accessor for StickersAPIService.Delegate()) init];
  [v8 setDelegate:v9];
  if (qword_100021028 != -1)
  {
    swift_once();
  }

  sub_10000670C(v8);
  v10 = OBJC_IVAR____TtC9stickersd14StickersDaemon_services;
  swift_beginAccess();
  v11 = *(v2 + v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v10) = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = sub_1000116B0(0, v11[2] + 1, 1, v11);
    v11 = isUniquelyReferenced_nonNull_native;
    *(v2 + v10) = isUniquelyReferenced_nonNull_native;
  }

  v16 = v11[2];
  v15 = v11[3];
  if (v16 >= v15 >> 1)
  {
    isUniquelyReferenced_nonNull_native = sub_1000116B0((v15 > 1), v16 + 1, 1, v11);
    v11 = isUniquelyReferenced_nonNull_native;
  }

  v19 = &type metadata for StickersAPIService;
  v20 = sub_100008F34(isUniquelyReferenced_nonNull_native, v13, v14);
  *&v18 = v8;
  *(&v18 + 1) = v9;
  v11[2] = v16 + 1;
  sub_100008AB0(&v18, &v11[5 * v16 + 4]);
  *(v2 + v10) = v11;
  return swift_endAccess();
}

void sub_100006D3C()
{
  v1 = v0;
  v2 = objc_allocWithZone(NSUserDefaults);
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 initWithSuiteName:v3];

  if (v4 && (v5 = String._bridgeToObjectiveC()(), v6 = [v4 BOOLForKey:v5], v4, v5, (v6 & 1) != 0))
  {
    v26 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v26, v7, "Skipping Stickers Analytics service because marketing container is enabled", v8, 2u);
    }
  }

  else
  {
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Starting Stickers Analytics service", v11, 2u);
    }

    v12 = type metadata accessor for StickersAnalyticsService(0);
    if (qword_100021028 != -1)
    {
      swift_once();
    }

    v13 = qword_100021E80;
    v14 = unk_100021E88;
    v15 = sub_1000025FC(&qword_100021E68, qword_100021E80);
    __chkstk_darwin(v15);
    v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v17);
    v19 = sub_10000C9E4(v17, v12, v13, v14);
    sub_10000C4A4(v19);
    v20 = OBJC_IVAR____TtC9stickersd14StickersDaemon_services;
    swift_beginAccess();
    v21 = *(v1 + v20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + v20) = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_1000116B0(0, v21[2] + 1, 1, v21);
      *(v1 + v20) = v21;
    }

    v24 = v21[2];
    v23 = v21[3];
    if (v24 >= v23 >> 1)
    {
      v21 = sub_1000116B0((v23 > 1), v24 + 1, 1, v21);
    }

    v28 = v12;
    v29 = sub_100008EEC(&qword_1000212C8, type metadata accessor for StickersAnalyticsService, &unk_100016088);
    *&v27 = v19;
    v21[2] = v24 + 1;
    sub_100008AB0(&v27, &v21[5 * v24 + 4]);
    *(v1 + v20) = v21;
    swift_endAccess();
  }
}

uint64_t sub_100007114()
{
  v1 = v0;
  v2 = type metadata accessor for StickerIndexingClient(0);
  v3 = __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v25 - v6;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Starting Stickers Indexing Client", v10, 2u);
  }

  if (qword_100021028 != -1)
  {
    swift_once();
  }

  v25 = *&qword_100021E80;
  v11 = qword_100021E80;
  v12 = sub_1000025FC(&qword_100021E68, qword_100021E80);
  v29 = v25;
  v13 = sub_100008D10(v28);
  (*(*(v11 - 8) + 16))(v13, v12, v11);
  Logger.init(subsystem:category:)();
  sub_100008DC8(v28, v27);
  v14 = type metadata accessor for StickerIndexingClient.Provider(0);
  v15 = objc_allocWithZone(v14);
  Logger.init(subsystem:category:)();
  sub_100008DC8(v27, v15 + OBJC_IVAR____TtCV9stickersd21StickerIndexingClient8Provider_store);
  v26.receiver = v15;
  v26.super_class = v14;
  v16 = objc_msgSendSuper2(&v26, "init");
  sub_1000028C0(v27);
  v17 = sub_1000028C0(v28);
  *&v7[*(v2 + 20)] = v16;
  sub_10000F0A8(v17);
  sub_100008E2C(v7, v5);
  v18 = OBJC_IVAR____TtC9stickersd14StickersDaemon_services;
  swift_beginAccess();
  v19 = *(v1 + v18);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v18) = v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = sub_1000116B0(0, v19[2] + 1, 1, v19);
    *(v1 + v18) = v19;
  }

  v22 = v19[2];
  v21 = v19[3];
  if (v22 >= v21 >> 1)
  {
    v19 = sub_1000116B0((v21 > 1), v22 + 1, 1, v19);
    *(v1 + v18) = v19;
  }

  *&v29 = v2;
  *(&v29 + 1) = sub_100008EEC(&qword_1000212C0, type metadata accessor for StickerIndexingClient, &unk_1000163D0);
  v23 = sub_100008D10(v28);
  sub_100008E2C(v5, v23);
  v19[2] = v22 + 1;
  sub_100008AB0(v28, &v19[5 * v22 + 4]);
  sub_100008E90(v5);
  *(v1 + v18) = v19;
  swift_endAccess();
  return sub_100008E90(v7);
}

uint64_t sub_1000074B8(uint64_t a1)
{
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Starting Stickers Extension Launch Manager Service", v5, 2u);
  }

  v6 = objc_allocWithZone(NSXPCListener);
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 initWithMachServiceName:v7];

  v9 = [objc_allocWithZone(type metadata accessor for StickersLaunchStateManagerService.Delegate()) init];
  [v8 setDelegate:v9];
  sub_1000043E4(v8);
  v10 = OBJC_IVAR____TtC9stickersd14StickersDaemon_services;
  swift_beginAccess();
  v11 = *(v2 + v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v10) = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = sub_1000116B0(0, v11[2] + 1, 1, v11);
    v11 = isUniquelyReferenced_nonNull_native;
    *(v2 + v10) = isUniquelyReferenced_nonNull_native;
  }

  v16 = v11[2];
  v15 = v11[3];
  if (v16 >= v15 >> 1)
  {
    isUniquelyReferenced_nonNull_native = sub_1000116B0((v15 > 1), v16 + 1, 1, v11);
    v11 = isUniquelyReferenced_nonNull_native;
  }

  v19 = &type metadata for StickersLaunchStateManagerService;
  v20 = sub_100008D74(isUniquelyReferenced_nonNull_native, v13, v14);
  *&v18 = v8;
  *(&v18 + 1) = v9;
  v11[2] = v16 + 1;
  sub_100008AB0(&v18, &v11[5 * v16 + 4]);
  *(v2 + v10) = v11;
  return swift_endAccess();
}

uint64_t sub_1000076B4()
{
  v1 = v0;
  v2 = sub_100005058(&qword_1000212A8, &qword_100015EC0);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Starting Recency Service", v7, 2u);
  }

  v8 = type metadata accessor for RecencyServiceListener();
  v9 = RecencyServiceListener.__allocating_init()();
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v9;

  sub_100007FB8(0, 0, v4, &unk_100015ED0, v11);

  v12 = OBJC_IVAR____TtC9stickersd14StickersDaemon_services;
  swift_beginAccess();
  v13 = *(v1 + v12);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v12) = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_1000116B0(0, v13[2] + 1, 1, v13);
    *(v1 + v12) = v13;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    v13 = sub_1000116B0((v15 > 1), v16 + 1, 1, v13);
  }

  v19 = v8;
  v20 = sub_100008EEC(&qword_1000212B0, &type metadata accessor for RecencyServiceListener, &protocol conformance descriptor for RecencyServiceListener);
  *&v18 = v9;
  v13[2] = v16 + 1;
  sub_100008AB0(&v18, &v13[5 * v16 + 4]);
  *(v1 + v12) = v13;
  return swift_endAccess();
}

uint64_t sub_10000794C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 56) = a4;
  v5 = swift_task_alloc();
  *(v4 + 64) = v5;
  *v5 = v4;
  v5[1] = sub_1000079E4;

  return RecencyServiceListener.loadFromDisk()();
}

uint64_t sub_1000079E4()
{

  return _swift_task_switch(sub_100007AE0, 0, 0);
}

uint64_t sub_100007AE0()
{
  if (qword_100021050 != -1)
  {
    swift_once();
  }

  v1 = qword_100021EC0;
  v0[9] = qword_100021EC0;
  v2 = v1[2];
  v0[10] = v2;
  if (v2)
  {
    v0[11] = 0;
    v3 = v1[5];
    v0[5] = v1[4];
    v0[6] = v3;
    sub_100008D10(v0 + 2);
    dispatch thunk of ImageGlyphRecencyModelMigrator.init()();
    v4 = swift_task_alloc();
    v0[12] = v4;
    *v4 = v0;
    v4[1] = sub_100007C58;

    return RecencyServiceListener.performMigration(with:force:)(v0 + 2, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v0[13] = v5;
    *v5 = v0;
    v5[1] = sub_100007EC4;

    return RecencyServiceListener.start()();
  }
}

uint64_t sub_100007C58()
{

  return _swift_task_switch(sub_100007D54, 0, 0);
}

uint64_t sub_100007D54()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88) + 1;
  sub_1000028C0((v0 + 16));
  if (v2 == v1)
  {
    v3 = swift_task_alloc();
    *(v0 + 104) = v3;
    *v3 = v0;
    v3[1] = sub_100007EC4;

    return RecencyServiceListener.start()();
  }

  else
  {
    v4 = *(v0 + 88) + 1;
    *(v0 + 88) = v4;
    *(v0 + 40) = *(*(v0 + 72) + 16 * v4 + 32);
    sub_100008D10((v0 + 16));
    dispatch thunk of ImageGlyphRecencyModelMigrator.init()();
    v5 = swift_task_alloc();
    *(v0 + 96) = v5;
    *v5 = v0;
    v5[1] = sub_100007C58;

    return RecencyServiceListener.performMigration(with:force:)(v0 + 16, 0);
  }
}

uint64_t sub_100007EC4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100007FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100005058(&qword_1000212A8, &qword_100015EC0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100008AC8(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100008B38(v11);
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

      sub_100008B38(a3);

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

  sub_100008B38(a3);
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

void sub_100008278(void *a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "stickersd standing by", v4, 2u);
  }

  [a1 run];
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v5, "stickersd exiting", v6, 2u);
  }
}

uint64_t sub_1000083BC()
{
  if ([objc_opt_self() isRunningInBuddy])
  {
    v0 = Logger.logObject.getter();
    v1 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v0, v1))
    {
      v2 = swift_slowAlloc();
      *v2 = 0;
      v3 = "Waiting until setup completes to start services";
LABEL_8:
      _os_log_impl(&_mh_execute_header, v0, v1, v3, v2, 2u);
    }
  }

  else
  {
    if (getuid() == 501)
    {
      return 1;
    }

    v0 = Logger.logObject.getter();
    v1 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v0, v1))
    {
      v2 = swift_slowAlloc();
      *v2 = 0;
      v3 = "Waiting until first unlock to start services";
      goto LABEL_8;
    }
  }

  return 0;
}

id sub_100008574()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StickersDaemon(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for StickersDaemon(uint64_t a1)
{
  result = qword_100021298;
  if (!qword_100021298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000867C(uint64_t a1)
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

uint64_t sub_100008718(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000087CC;

  return sub_10000794C(a1, v4, v5, v6);
}

uint64_t sub_1000087CC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000088C0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000089B8;

  return v6(a1);
}

uint64_t sub_1000089B8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100008AB0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100008AC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005058(&qword_1000212A8, &qword_100015EC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100008B38(uint64_t a1)
{
  v2 = sub_100005058(&qword_1000212A8, &qword_100015EC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100008BA0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008F88;

  return sub_1000088C0(a1, v4);
}

uint64_t sub_100008C58(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000087CC;

  return sub_1000088C0(a1, v4);
}

uint64_t *sub_100008D10(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_100008D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000212B8;
  if (!qword_1000212B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000212B8);
  }

  return result;
}

uint64_t sub_100008DC8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100008E2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StickerIndexingClient(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100008E90(uint64_t a1)
{
  v2 = type metadata accessor for StickerIndexingClient(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100008EEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100008F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000212D0;
  if (!qword_1000212D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000212D0);
  }

  return result;
}

uint64_t sub_100008F9C()
{
  v0 = type metadata accessor for Logger();
  sub_1000044D4(v0, qword_1000212D8);
  sub_100001CE8(v0, qword_1000212D8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10000901C(uint64_t a1, double a2)
{
  *(v2 + 112) = a2;
  *(v2 + 104) = a1;
  v3 = type metadata accessor for Sticker.URIType();
  *(v2 + 120) = v3;
  *(v2 + 128) = *(v3 - 8);
  *(v2 + 136) = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  *(v2 + 144) = v4;
  *(v2 + 152) = *(v4 - 8);
  *(v2 + 160) = swift_task_alloc();
  *(v2 + 168) = swift_task_alloc();
  *(v2 + 176) = swift_task_alloc();
  v5 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation();
  *(v2 + 184) = v5;
  *(v2 + 192) = *(v5 - 8);
  *(v2 + 200) = swift_task_alloc();
  *(v2 + 208) = swift_task_alloc();
  *(v2 + 216) = swift_task_alloc();
  sub_100005058(&qword_100021300, qword_100015FA0);
  *(v2 + 224) = swift_task_alloc();
  v6 = type metadata accessor for StickerStore.PersistenceType();
  *(v2 + 232) = v6;
  *(v2 + 240) = *(v6 - 8);
  *(v2 + 248) = swift_task_alloc();

  return _swift_task_switch(sub_10000925C, 0, 0);
}

uint64_t sub_10000925C()
{
  v1 = v0[28];
  (*(v0[30] + 104))(v0[31], enum case for StickerStore.PersistenceType.remote(_:), v0[29]);
  type metadata accessor for StickerStore();
  swift_allocObject();
  v0[32] = StickerStore.init(persistence:)();
  v2 = enum case for ImageGlyphRecencyModel.ImageGlyphType.sticker(_:);
  v3 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphType();
  v4 = *(v3 - 8);
  (*(v4 + 104))(v1, v2, v3);
  (*(v4 + 56))(v1, 0, 1, v3);
  type metadata accessor for ImageGlyphRecencyModel();
  sub_10000ADBC(&qword_100021308, &type metadata accessor for ImageGlyphRecencyModel, &protocol conformance descriptor for ImageGlyphRecencyModel);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[33] = v6;
  v0[34] = v5;

  return _swift_task_switch(sub_1000093F8, v6, v5);
}

uint64_t sub_1000093F8()
{
  v1 = *(v0 + 224);
  *(v0 + 280) = ImageGlyphRecencyModel.recentlyUsed(ofType:limit:)();
  sub_1000050A0(v1, &qword_100021300, qword_100015FA0);

  return _swift_task_switch(sub_100009488, 0, 0);
}

uint64_t sub_100009488()
{
  v1 = *(v0 + 280);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 192);
    v5 = *(v3 + 16);
    v3 += 16;
    v4 = v5;
    v6 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v7 = *(v3 + 56);
    v56 = (v3 + 72);
    v57 = (v3 + 16);
    v55 = enum case for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation.sticker(_:);
    v49 = (v3 + 80);
    v50 = (v3 - 8);
    v53 = *(v0 + 152);
    v54 = (v53 + 32);
    v8 = &_swiftEmptyArrayStorage;
    v51 = v7;
    v52 = v5;
    do
    {
      v10 = *(v0 + 208);
      v9 = *(v0 + 216);
      v11 = *(v0 + 184);
      v4(v9, v6, v11);
      (*v57)(v10, v9, v11);
      v12 = (*v56)(v10, v11);
      v13 = *(v0 + 208);
      v14 = *(v0 + 184);
      if (v12 == v55)
      {
        v15 = v0;
        v16 = *(v0 + 176);
        v17 = v8;
        v19 = v15[20];
        v18 = v15[21];
        v20 = v15[18];
        (*v49)(v13, v14);
        v21 = *v54;
        (*v54)(v19, v13, v20);
        v22 = v19;
        v8 = v17;
        v21(v18, v22, v20);
        v21(v16, v18, v20);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1000117F8(0, v17[2] + 1, 1, v17);
        }

        v24 = v8[2];
        v23 = v8[3];
        v7 = v51;
        v4 = v52;
        v0 = v48;
        if (v24 >= v23 >> 1)
        {
          v8 = sub_1000117F8((v23 > 1), v24 + 1, 1, v8);
        }

        v25 = *(v48 + 176);
        v26 = *(v48 + 144);
        v8[2] = v24 + 1;
        v21(v8 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v24, v25, v26);
      }

      else
      {
        (*v50)(*(v0 + 208), v14);
      }

      v6 += v7;
      --v2;
    }

    while (v2);
  }

  else
  {

    v8 = &_swiftEmptyArrayStorage;
  }

  sub_10000A32C(v8);

  v27 = *(v0 + 40);
  v28 = sub_1000025FC((v0 + 16), v27);
  v29 = *(v27 - 8);
  v30 = swift_task_alloc();
  (*(v29 + 16))(v30, v28, v27);
  *(v0 + 80) = swift_getAssociatedTypeWitness();
  *(v0 + 88) = swift_getAssociatedConformanceWitness();
  sub_100008D10((v0 + 56));
  dispatch thunk of Sequence.makeIterator()();

  sub_10000AD1C(v0 + 56, *(v0 + 80));
  dispatch thunk of IteratorProtocol.next()();
  v31 = *(v0 + 96);
  if (!v31)
  {
LABEL_20:

    sub_1000028C0((v0 + 56));
    sub_1000028C0((v0 + 16));

    v40 = *(v0 + 8);

    return v40();
  }

  *(v0 + 296) = enum case for Sticker.URIType.emoji(_:);
  *(v0 + 300) = enum case for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation.sticker(_:);
  while (1)
  {
    *(v0 + 288) = v31;
    dispatch thunk of Sticker.externalURI.getter();
    if (v32)
    {
      break;
    }

LABEL_16:
    sub_10000AD1C(v0 + 56, *(v0 + 80));
    dispatch thunk of IteratorProtocol.next()();
    v31 = *(v0 + 96);
    if (!v31)
    {
      goto LABEL_20;
    }
  }

  v33 = *(v0 + 296);
  v35 = *(v0 + 128);
  v34 = *(v0 + 136);
  v36 = *(v0 + 120);
  type metadata accessor for Sticker();
  dispatch thunk of static Sticker.classify(uri:)();

  if ((*(v35 + 88))(v34, v36) != v33)
  {
    v38 = *(v0 + 128);
    v37 = *(v0 + 136);
    v39 = *(v0 + 120);

    (*(v38 + 8))(v37, v39);
    goto LABEL_16;
  }

  v42 = *(v0 + 300);
  v44 = *(v0 + 192);
  v43 = *(v0 + 200);
  v45 = *(v0 + 184);
  (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
  Sticker.identifier.getter();
  (*(v44 + 104))(v43, v42, v45);
  v46 = *(v0 + 264);
  v47 = *(v0 + 272);

  return _swift_task_switch(sub_100009AF8, v46, v47);
}

uint64_t sub_100009AF8()
{
  ImageGlyphRecencyModel.removeEngagementHistory(for:)();

  return _swift_task_switch(sub_100009B64, 0, 0);
}

uint64_t sub_100009B64()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v0 + 184);

  (*(v2 + 8))(v1, v3);
  while (1)
  {
    sub_10000AD1C(v0 + 56, *(v0 + 80));
    dispatch thunk of IteratorProtocol.next()();
    v4 = *(v0 + 96);
    if (!v4)
    {
      break;
    }

    *(v0 + 288) = v4;
    dispatch thunk of Sticker.externalURI.getter();
    if (v5)
    {
      v6 = *(v0 + 296);
      v8 = *(v0 + 128);
      v7 = *(v0 + 136);
      v9 = *(v0 + 120);
      type metadata accessor for Sticker();
      dispatch thunk of static Sticker.classify(uri:)();

      if ((*(v8 + 88))(v7, v9) == v6)
      {
        v15 = *(v0 + 300);
        v17 = *(v0 + 192);
        v16 = *(v0 + 200);
        v18 = *(v0 + 184);
        (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
        Sticker.identifier.getter();
        (*(v17 + 104))(v16, v15, v18);
        v19 = *(v0 + 264);
        v20 = *(v0 + 272);

        return _swift_task_switch(sub_100009AF8, v19, v20);
      }

      v11 = *(v0 + 128);
      v10 = *(v0 + 136);
      v12 = *(v0 + 120);

      (*(v11 + 8))(v10, v12);
    }

    else
    {
    }
  }

  sub_1000028C0((v0 + 56));
  sub_1000028C0((v0 + 16));

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_100009DD4(double a1)
{
  *(v1 + 104) = a1;
  v2 = type metadata accessor for Sticker.URIType();
  *(v1 + 112) = v2;
  *(v1 + 120) = *(v2 - 8);
  *(v1 + 128) = swift_task_alloc();
  v3 = type metadata accessor for StickerStore.PersistenceType();
  *(v1 + 136) = v3;
  *(v1 + 144) = *(v3 - 8);
  *(v1 + 152) = swift_task_alloc();

  return _swift_task_switch(sub_100009EF0, 0, 0);
}

uint64_t sub_100009EF0()
{
  (*(v0[18] + 104))(v0[19], enum case for StickerStore.PersistenceType.remote(_:), v0[17]);
  type metadata accessor for StickerStore();
  swift_allocObject();
  v1 = StickerStore.init(persistence:)();
  sub_10000A5D0(v1, v0 + 2);
  v2 = v0[5];
  v3 = sub_1000025FC(v0 + 2, v2);
  v4 = *(v2 - 8);
  v5 = swift_task_alloc();
  (*(v4 + 16))(v5, v3, v2);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  sub_100008D10(v0 + 7);
  dispatch thunk of Sequence.makeIterator()();

  sub_10000AD1C((v0 + 7), v0[10]);
  dispatch thunk of IteratorProtocol.next()();
  v6 = v0[12];
  if (v6)
  {
    v7 = v0[15];
    v8 = (v7 + 88);
    v9 = enum case for Sticker.URIType.emoji(_:);
    v10 = (v7 + 8);
    do
    {
      dispatch thunk of Sticker.externalURI.getter();
      if (v11)
      {
        v12 = v0[16];
        v13 = v0[14];
        type metadata accessor for Sticker();
        dispatch thunk of static Sticker.classify(uri:)();

        v14 = (*v8)(v12, v13);
        v15 = v0[16];
        v16 = v0[14];
        if (v14 == v9)
        {
          (*v10)(v0[16], v0[14]);
          sub_100005058(&qword_1000212F0, &unk_1000162A0);
          type metadata accessor for UUID();
          *(swift_allocObject() + 16) = xmmword_100015EF0;
          Sticker.identifier.getter();
          dispatch thunk of StickerStore.removeStickers(identifiers:)();
        }

        else
        {

          (*v10)(v15, v16);
        }
      }

      else
      {
      }

      sub_10000AD1C((v0 + 7), v0[10]);
      dispatch thunk of IteratorProtocol.next()();
      v6 = v0[12];
    }

    while (v6);
  }

  sub_1000028C0(v0 + 7);
  sub_1000028C0(v0 + 2);

  v17 = v0[1];

  return v17();
}

uint64_t sub_10000A32C(uint64_t a1)
{
  v3 = type metadata accessor for Sticker.FetchRequest.RepresentationSpecifier();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[3] = sub_100005058(&qword_100021310, &unk_100016160);
  v15[4] = sub_10000AE04();
  v15[0] = a1;
  (*(v4 + 104))(v6, enum case for Sticker.FetchRequest.RepresentationSpecifier.all(_:), v3);

  dispatch thunk of StickerStore.stickers(identifiers:representationSpecifier:)();
  if (v1)
  {
    (*(v4 + 8))(v6, v3);
    sub_1000028C0(v15);
    if (qword_100021038 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100001CE8(v7, qword_1000212D8);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      swift_errorRetain();
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&_mh_execute_header, v8, v9, "Could not fetch stickers with error: '%@", v10, 0xCu);
      sub_1000050A0(v11, &unk_100021130, &unk_100015FD0);
    }

    return swift_willThrow();
  }

  else
  {
    (*(v4 + 8))(v6, v3);
    return sub_1000028C0(v15);
  }
}

uint64_t sub_10000A5D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v29 = a1;
  v3 = type metadata accessor for Sticker.FetchRequest.RepresentationSpecifier();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005058(&qword_1000212F8, &unk_100015F90);
  __chkstk_darwin(v7 - 8);
  v9 = &v26 - v8;
  Request = type metadata accessor for Sticker.FetchRequest();
  v27 = *(Request - 8);
  v28 = Request;
  __chkstk_darwin(Request);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = enum case for Sticker.StickerType.recent(_:);
  v14 = type metadata accessor for Sticker.StickerType();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v9, v13, v14);
  (*(v15 + 56))(v9, 0, 1, v14);
  (*(v4 + 104))(v6, enum case for Sticker.FetchRequest.RepresentationSpecifier.none(_:), v3);
  Sticker.FetchRequest.init(type:predicate:representations:sortDescriptors:offset:limit:batchSize:)();
  a2[3] = type metadata accessor for StickerSequence();
  a2[4] = sub_10000ADBC(&qword_100021240, &type metadata accessor for StickerSequence, &protocol conformance descriptor for StickerSequence);
  sub_100008D10(a2);
  v16 = v30;
  dispatch thunk of StickerStore.stickers(_:)();
  if (!v16)
  {
    return (*(v27 + 8))(v12, v28);
  }

  v18 = v27;
  v17 = v28;
  sub_10000AD6C(a2);
  if (qword_100021038 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100001CE8(v19, qword_1000212D8);
  swift_errorRetain();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    swift_errorRetain();
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v22 + 4) = v24;
    *v23 = v24;
    _os_log_impl(&_mh_execute_header, v20, v21, "Could not fetch all recent stickers from legacy store with error: '%@'", v22, 0xCu);
    sub_1000050A0(v23, &unk_100021130, &unk_100015FD0);
  }

  swift_willThrow();
  return (*(v18 + 8))(v12, v17);
}

uint64_t sub_10000AA10(uint64_t a1)
{
  v4 = *v1;
  *(v2 + 16) = *v1;
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = sub_10000AAB8;

  return sub_10000901C(a1, v4);
}

uint64_t sub_10000AAB8()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    *(v2 + 32) = v6;
    *v6 = v3;
    v6[1] = sub_10000AC28;
    v7 = *(v2 + 16);

    return sub_100009DD4(v7);
  }
}

uint64_t sub_10000AC28()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000AD1C(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

void *sub_10000AD6C(void *result)
{
  if ((*(*(result[3] - 8) + 80) & 0x20000) != 0)
  {
  }

  return result;
}

uint64_t sub_10000ADBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10000AE04()
{
  result = qword_100021318;
  if (!qword_100021318)
  {
    sub_1000068B0(&qword_100021310, &unk_100016160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021318);
  }

  return result;
}

uint64_t sub_10000AE68()
{
  v0 = type metadata accessor for Logger();
  sub_1000044D4(v0, qword_100021320);
  sub_100001CE8(v0, qword_100021320);
  return Logger.init(subsystem:category:)();
}

void static StickersAnalyticsProcessor.sendOncePerDayAnalytics(store:)(void *a1)
{
  v2 = type metadata accessor for Sticker.URIType();
  v3 = *(v2 - 1);
  v4 = __chkstk_darwin(v2);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v81 = &v62 - v7;
  v8 = type metadata accessor for Sticker.StickerType();
  v94 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v62 - v12;
  v14 = os_transaction_create();
  if (!v14)
  {
LABEL_92:
    __break(1u);
    return;
  }

  v15 = v14;
  v79 = v6;
  if (qword_100021040 != -1)
  {
    goto LABEL_82;
  }

  while (2)
  {
    v16 = type metadata accessor for Logger();
    v83 = sub_100001CE8(v16, qword_100021320);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Calculating metrics", v19, 2u);
    }

    v20 = sub_10000BBE0();
    v21 = sub_10000BCB0(a1);
    v23 = v21;
    if (!(v21 >> 62))
    {
      v24 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v24)
      {
        break;
      }

      goto LABEL_7;
    }

    v58 = v21;
    v24 = _CocoaArrayWrapper.endIndex.getter();
    v23 = v58;
    if (v24)
    {
LABEL_7:
      if (v24 < 1)
      {
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
        goto LABEL_92;
      }

      v71 = v20;
      v74 = v2;
      v72 = v15;
      v73 = 0;
      v75 = 0;
      v76 = 0;
      v78 = 0;
      v87 = 0;
      v88 = 0;
      v85 = 0;
      v86 = 0;
      v84 = 0;
      v25 = 0;
      v89 = 0;
      v92 = v23 & 0xC000000000000001;
      v91 = enum case for Sticker.StickerType.recent(_:);
      v90 = (v94 + 104);
      v2 = (v94 + 8);
      v70 = (v3 + 32);
      v69 = (v3 + 88);
      v68 = enum case for Sticker.URIType.memoji(_:);
      v64 = enum case for Sticker.URIType.emoji(_:);
      v63 = enum case for Sticker.URIType.thirdParty(_:);
      v67 = (v3 + 8);
      *&v22 = 138412290;
      v77 = v22;
      v93 = v24;
      v94 = v23;
      v82 = v11;
      while (1)
      {
        v27 = v92 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v23 + 8 * v25 + 32);
        v3 = v27;
        Sticker.type.getter();
        (*v90)(v11, v91, v8);
        a1 = sub_10000C45C(&qword_100021338, &type metadata accessor for Sticker.StickerType, &protocol conformance descriptor for Sticker.StickerType);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        v28 = *v2;
        (*v2)(v11, v8);
        v28(v13, v8);
        v29 = v95;
        v15 = v96;
        v30 = dispatch thunk of Sticker.effect.getter();
        if (v30 <= 1)
        {
          break;
        }

        switch(v30)
        {
          case 2:

            if (v15 == v29)
            {
              goto LABEL_10;
            }

            v31 = __OFADD__(v85++, 1);
            v26 = v93;
            v23 = v94;
            if (v31)
            {
              goto LABEL_81;
            }

            break;
          case 3:

            if (v15 == v29)
            {
              goto LABEL_10;
            }

            v31 = __OFADD__(v87++, 1);
            v26 = v93;
            v23 = v94;
            if (v31)
            {
              goto LABEL_79;
            }

            break;
          case 4:

            if (v15 == v29)
            {
              goto LABEL_10;
            }

            v31 = __OFADD__(v88++, 1);
            v26 = v93;
            v23 = v94;
            if (v31)
            {
              goto LABEL_80;
            }

            break;
          default:
LABEL_9:

LABEL_10:
            v26 = v93;
            v23 = v94;
            break;
        }

LABEL_11:
        if (v26 == ++v25)
        {
          goto LABEL_77;
        }
      }

      if (v30 != -1)
      {
        if (v30)
        {
          if (v30 != 1)
          {
            goto LABEL_9;
          }

          if (v15 == v29)
          {
            goto LABEL_10;
          }

          v31 = __OFADD__(v86++, 1);
          v26 = v93;
          v23 = v94;
          if (v31)
          {
            goto LABEL_78;
          }
        }

        else
        {

          if (v15 == v29)
          {
            goto LABEL_10;
          }

          v31 = __OFADD__(v84++, 1);
          v26 = v93;
          v23 = v94;
          if (v31)
          {
            __break(1u);
LABEL_78:
            __break(1u);
LABEL_79:
            __break(1u);
LABEL_80:
            __break(1u);
LABEL_81:
            __break(1u);
LABEL_82:
            swift_once();
            continue;
          }
        }

        goto LABEL_11;
      }

      v32 = v89;
      v33 = dispatch thunk of Sticker.preferredRepresentation.getter();
      if (v32)
      {
        swift_errorRetain();
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          *v36 = v77;
          swift_errorRetain();
          v38 = _swift_stdlib_bridgeErrorToNSError();
          *(v36 + 4) = v38;
          *v37 = v38;
          _os_log_impl(&_mh_execute_header, v34, v35, "Error calculating sticker metrics %@", v36, 0xCu);
          sub_10000C388(v37);
        }

        else
        {
        }

        v89 = 0;
        v26 = v93;
        v23 = v94;
        v11 = v82;
        goto LABEL_11;
      }

      v89 = 0;
      v80 = v33;
      if (v33)
      {
        v39 = v33;
        v66 = dispatch thunk of Sticker.Representation.role.getter();
        v41 = v40;
        v65 = v39;

        v42 = static Sticker.Representation.Role.animatedVariant.getter();
        if (v41)
        {
          if (v66 == v42 && v41 == v43)
          {

            if (v15 != v29)
            {
              goto LABEL_69;
            }

            goto LABEL_10;
          }

          LODWORD(v66) = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v66)
          {

            if (v15 != v29)
            {
LABEL_69:
              v31 = __OFADD__(v78++, 1);
              v26 = v93;
              v23 = v94;
              if (v31)
              {
                goto LABEL_89;
              }

              goto LABEL_11;
            }

            goto LABEL_10;
          }

          goto LABEL_55;
        }
      }

      else
      {
        static Sticker.Representation.Role.animatedVariant.getter();
      }

LABEL_55:
      dispatch thunk of Sticker.externalURI.getter();
      if (!v44)
      {

        goto LABEL_10;
      }

      type metadata accessor for Sticker();
      dispatch thunk of static Sticker.classify(uri:)();

      v45 = v79;
      v46 = v74;
      (*v70)(v79, v81, v74);
      v47 = (*v69)(v45, v46);
      if (v47 == v68)
      {
        (*v67)(v45, v46);
        if (v15 != v29)
        {
          v31 = __OFADD__(v76++, 1);
          v26 = v93;
          v23 = v94;
          if (v31)
          {
            goto LABEL_90;
          }

          goto LABEL_11;
        }

        goto LABEL_10;
      }

      if (v47 == v64)
      {
        (*v67)(v79, v74);
        if (v15 != v29)
        {
          v31 = __OFADD__(v75++, 1);
          v26 = v93;
          v23 = v94;
          if (v31)
          {
            goto LABEL_91;
          }

          goto LABEL_11;
        }

        goto LABEL_10;
      }

      v48 = v47;
      (*v67)(v79, v74);
      if (v48 != v63 || v15 == v29)
      {
        goto LABEL_10;
      }

      v31 = __OFADD__(v73++, 1);
      v26 = v93;
      v23 = v94;
      if (v31)
      {
        __break(1u);
LABEL_77:

        LOBYTE(v20) = v71;
        v49 = v73;
        v50 = v75;
        v51 = v76;
        v52 = v78;
        v54 = v87;
        v53 = v88;
        v56 = v85;
        v55 = v86;
        v57 = v84;
        goto LABEL_85;
      }

      goto LABEL_11;
    }

    break;
  }

  v49 = 0;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v57 = 0;
LABEL_85:
  sub_10000C1DC(0, v57, v20 & 1);
  sub_10000C1DC(1, v56, v20 & 1);
  sub_10000C1DC(2, v55, v20 & 1);
  sub_10000C1DC(3, v54, v20 & 1);
  sub_10000C1DC(4, v53, v20 & 1);
  sub_10000C1DC(5, v52, v20 & 1);
  sub_10000C1DC(6, v51, v20 & 1);
  sub_10000C1DC(7, v50, v20 & 1);
  sub_10000C1DC(8, v49, v20 & 1);
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&_mh_execute_header, v59, v60, "Sending metrics complete", v61, 2u);
  }

  swift_unknownObjectRelease();
}

id StickersAnalyticsProcessor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StickersAnalyticsProcessor.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StickersAnalyticsProcessor();
  return objc_msgSendSuper2(&v2, "init");
}

id StickersAnalyticsProcessor.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for StickersAnalyticsProcessor();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_10000BAB0(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10000BB28(a1, a2, v4);
}

unint64_t sub_10000BB28(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_10000BBE0()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithSuiteName:v1];

  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 BOOLForKey:v4];

  return v5;
}

uint64_t sub_10000BCB0(void *a1)
{
  v2 = type metadata accessor for StickerSequence();
  __chkstk_darwin(v2);
  v3 = type metadata accessor for Sticker.FetchRequest.RepresentationSpecifier();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_100005058(&qword_1000212F8, &unk_100015F90);
  __chkstk_darwin(v7 - 8);
  v9 = &v17[-v8];
  Request = type metadata accessor for Sticker.FetchRequest();
  v11 = *(Request - 8);
  __chkstk_darwin(Request);
  v13 = &v17[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for Sticker.StickerType();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  (*(v4 + 104))(v6, enum case for Sticker.FetchRequest.RepresentationSpecifier.preferred(_:), v3);
  Sticker.FetchRequest.init(type:predicate:representations:sortDescriptors:offset:limit:batchSize:)();
  sub_1000025FC(a1, a1[3]);
  dispatch thunk of StickerStoreProtocol.stickers(_:)();
  sub_10000C45C(&qword_100021240, &type metadata accessor for StickerSequence, &protocol conformance descriptor for StickerSequence);
  v15 = dispatch thunk of Sequence._copyToContiguousArray()();
  (*(v11 + 8))(v13, Request);
  return v15;
}

unint64_t sub_10000C0D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005058(&qword_100021388, &qword_100016010);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_10000BAB0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_10000C1DC(Swift::Int a1, Swift::Int a2, Swift::Bool a3)
{
  sub_100005058(&qword_100021368, &qword_100016000);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100015FC0;
  *(inited + 32) = 0x7954746365666665;
  *(inited + 40) = 0xEA00000000006570;
  sub_10000C414(0, &qword_100021370, NSNumber_ptr);
  *(inited + 48) = NSNumber.init(integerLiteral:)(a1);
  *(inited + 56) = 0xD000000000000011;
  *(inited + 64) = 0x80000001000173D0;
  *(inited + 72) = NSNumber.init(integerLiteral:)(a2);
  *(inited + 80) = 0xD00000000000001CLL;
  *(inited + 88) = 0x80000001000173F0;
  *(inited + 96) = NSNumber.init(BOOLeanLiteral:)(a3);
  sub_10000C0D8(inited);
  swift_setDeallocating();
  sub_100005058(&qword_100021378, &qword_100016008);
  swift_arrayDestroy();
  v7 = String._bridgeToObjectiveC()();
  sub_10000C414(0, &qword_100021380, NSObject_ptr);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  AnalyticsSendEvent();
}

uint64_t sub_10000C388(uint64_t a1)
{
  v2 = sub_100005058(&unk_100021130, &unk_100015FD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000C414(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_10000C45C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000C4A4(uint64_t a1)
{
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "launching com.apple.stickers.analytics", v3, 2u);
  }

  v4 = swift_allocObject();
  swift_weakInit();
  v8[4] = sub_10000C9C4;
  v8[5] = v4;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10000C72C;
  v8[3] = &unk_10001CF98;
  v5 = _Block_copy(v8);

  v6 = String.utf8CString.getter();
  xpc_activity_register((v6 + 32), XPC_ACTIVITY_CHECK_IN, v5);

  _Block_release(v5);
  return 1;
}

uint64_t sub_10000C628(_xpc_activity_s *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    if (xpc_activity_get_state(a1) == 2)
    {
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, v6, "running com.apple.stickers.analytics", v7, 2u);
      }

      type metadata accessor for StickersAnalyticsProcessor();
      static StickersAnalyticsProcessor.sendOncePerDayAnalytics(store:)((v4 + OBJC_IVAR____TtC9stickersd24StickersAnalyticsService_store));
    }
  }

  return result;
}

uint64_t sub_10000C72C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_10000C78C()
{

  v1 = OBJC_IVAR____TtC9stickersd24StickersAnalyticsService_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1000028C0((v0 + OBJC_IVAR____TtC9stickersd24StickersAnalyticsService_store));
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for StickersAnalyticsService(uint64_t a1)
{
  result = qword_1000213B8;
  if (!qword_1000213B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000C894(uint64_t a1)
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

uint64_t sub_10000C960(uint64_t a1)
{
  sub_10000C4A4(a1);
  v2 = *(v1 + 8);

  return v2(1);
}

uint64_t sub_10000C9CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000C9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a3;
  v11 = a4;
  v6 = sub_100008D10(&v9);
  (*(*(a3 - 8) + 32))(v6, a1, a3);
  type metadata accessor for StickersAnalyticsService(0);
  v7 = swift_allocObject();
  *(v7 + 16) = 0xD00000000000001CLL;
  *(v7 + 24) = 0x80000001000174D0;
  Logger.init(subsystem:category:)();
  sub_100008AB0(&v9, v7 + OBJC_IVAR____TtC9stickersd24StickersAnalyticsService_store);
  return v7;
}

uint64_t sub_10000CAEC()
{
  v0 = type metadata accessor for Logger();
  sub_1000044D4(v0, qword_100021458);
  sub_100001CE8(v0, qword_100021458);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10000CB6C(uint64_t a1, double a2)
{
  *(v2 + 24) = a2;
  *(v2 + 16) = a1;
  v3 = type metadata accessor for Date();
  *(v2 + 32) = v3;
  *(v2 + 40) = *(v3 - 8);
  *(v2 + 48) = swift_task_alloc();
  v4 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation();
  *(v2 + 56) = v4;
  *(v2 + 64) = *(v4 - 8);
  *(v2 + 72) = swift_task_alloc();
  sub_100005058(&qword_100021470, &qword_100016140);
  *(v2 + 80) = swift_task_alloc();
  *(v2 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_10000CCD0, 0, 0);
}

uint64_t sub_10000CCD0()
{
  v1 = sub_10000D338();
  v0[12] = v1;
  v2 = v1[2];
  v0[13] = v2;
  v3 = v0[10];
  v4 = sub_100005058(&qword_100021478, &qword_100016148);
  v5 = *(v4 - 8);
  v6 = v5;
  if (v2)
  {
    sub_10000E9F0(v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v3);
    v7 = 1;
    (*(v6 + 56))(v3, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(v3, 1, 1, v4);
    v7 = v0[13];
  }

  v0[14] = v7;
  v8 = v0[11];
  sub_10000EA60(v0[10], v8, &qword_100021470, &qword_100016140);
  v9 = sub_100005058(&qword_100021478, &qword_100016148);
  v10 = (*(*(v9 - 8) + 48))(v8, 1, v9);
  v11 = v0[9];
  if (v10 == 1)
  {

    v12 = v0[1];

    return v12();
  }

  else
  {
    v14 = v0[8];
    v0[15] = *(v0[11] + *(v9 + 48));
    (*(v14 + 32))(v11);
    static Date.now.getter();
    type metadata accessor for ImageGlyphRecencyModel();
    sub_10000EB0C(&qword_100021308, &type metadata accessor for ImageGlyphRecencyModel, &protocol conformance descriptor for ImageGlyphRecencyModel);
    v16 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10000CF74, v16, v15);
  }
}

uint64_t sub_10000CF74()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  ImageGlyphRecencyModel.recordEngagement(for:_:)();
  (*(v2 + 8))(v1, v3);
  ImageGlyphRecencyModel.set(frequency:for:)();

  return _swift_task_switch(sub_10000D028, 0, 0);
}

uint64_t sub_10000D028()
{
  v1 = (*(v0[8] + 8))(v0[9], v0[7]);
  v4 = v0[14];
  if (v4 == v0[13])
  {
    v5 = v0[10];
    v6 = sub_100005058(&qword_100021478, &qword_100016148);
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    v7 = v0[13];
    goto LABEL_6;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v8 = v0[12];
  if (v4 >= *(v8 + 16))
  {
LABEL_14:
    __break(1u);
    return _swift_task_switch(v1, v2, v3);
  }

  v9 = v0[10];
  v10 = sub_100005058(&qword_100021478, &qword_100016148);
  v11 = *(v10 - 8);
  sub_10000E9F0(v8 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v4, v9);
  v7 = v4 + 1;
  (*(v11 + 56))(v9, 0, 1, v10);
LABEL_6:
  v0[14] = v7;
  v12 = v0[11];
  sub_10000EA60(v0[10], v12, &qword_100021470, &qword_100016140);
  v13 = sub_100005058(&qword_100021478, &qword_100016148);
  if ((*(*(v13 - 8) + 48))(v12, 1, v13) != 1)
  {
    v17 = v0[8];
    v16 = v0[9];
    v0[15] = *(v0[11] + *(v13 + 48));
    (*(v17 + 32))(v16);
    static Date.now.getter();
    type metadata accessor for ImageGlyphRecencyModel();
    sub_10000EB0C(&qword_100021308, &type metadata accessor for ImageGlyphRecencyModel, &protocol conformance descriptor for ImageGlyphRecencyModel);
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    v1 = sub_10000CF74;
    v2 = v18;
    v3 = v20;

    return _swift_task_switch(v1, v2, v3);
  }

  v14 = v0[1];

  return v14();
}

void *sub_10000D338()
{
  v27 = sub_100005058(&qword_100021478, &qword_100016148);
  v0 = *(v27 - 8);
  __chkstk_darwin(v27);
  v2 = v22 - v1;
  v3 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000E238(v28);
  v7 = sub_1000025FC(v28, v28[3]);
  __chkstk_darwin(v7);
  (*(v9 + 16))(v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = Sequence.reversed()();
  v26 = *(v10 + 16);
  if (v26)
  {
    v11 = 0;
    v13 = *(v4 + 16);
    v12 = v4 + 16;
    v14 = *(v12 + 64);
    v22[1] = v10;
    v15 = v10 + ((v14 + 32) & ~v14);
    v23 = *(v12 + 56);
    v24 = v13;
    v16 = (v12 + 16);
    v17 = &_swiftEmptyArrayStorage;
    v25 = v12;
    do
    {
      v24(v6, v15, v3);
      v18 = *(v27 + 48);
      (*v16)(v2, v6, v3);
      *&v2[v18] = (v11 + 1.0 + v11 + 1.0) / 100.0;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_100011B30(0, v17[2] + 1, 1, v17);
      }

      v20 = v17[2];
      v19 = v17[3];
      if (v20 >= v19 >> 1)
      {
        v17 = sub_100011B30((v19 > 1), v20 + 1, 1, v17);
      }

      ++v11;
      v17[2] = v20 + 1;
      sub_10000EA60(v2, v17 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v20, &qword_100021478, &qword_100016148);
      v15 += v23;
    }

    while (v26 != v11);
  }

  else
  {

    v17 = &_swiftEmptyArrayStorage;
  }

  sub_1000028C0(v28);
  return v17;
}

void sub_10000D6A4(void *a1@<X8>)
{
  v2 = &_swiftEmptyArrayStorage;
  v21 = &_swiftEmptyArrayStorage;
  v3 = objc_allocWithZone(NSUserDefaults);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 initWithSuiteName:v4];

  if (v5)
  {
    v6 = v5;
    v7 = String._bridgeToObjectiveC()();
    v8 = [v6 dictionaryForKey:v7];

    if (v8)
    {
      v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v9 + 16) && (v10 = sub_10000BAB0(0x6E65636552464D45, 0xED000079654B7374), (v11 & 1) != 0))
      {
        sub_10000EECC(*(v9 + 56) + 32 * v10, v20);

        sub_100005058(&qword_100021498, &qword_100016170);
        if (swift_dynamicCast())
        {
          v2 = v19;
          v21 = v19;
          goto LABEL_9;
        }
      }

      else
      {
      }
    }

    v2 = &_swiftEmptyArrayStorage;
  }

LABEL_9:
  v12 = v2[2];
  if (v12 > 0x1E)
  {
LABEL_17:
    a1[3] = sub_100005058(&qword_100021498, &qword_100016170);
    a1[4] = sub_10000EE78(&qword_1000214A0, &qword_100021498, &qword_100016170);

    *a1 = v2;
    return;
  }

  v13 = [objc_opt_self() _emojiSetForIdentifier:EMFEmojiCategoryPrepopulated];
  if (v13)
  {
    v14 = v13;
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = *(v15 + 16);
    if (v16 >= 30 - v12)
    {
      v16 = 30 - v12;
    }

    v17 = 2 * v16;
    if (v12 == 30)
    {
      v18 = 1;
    }

    else
    {
      v18 = v17 + 1;
    }

    sub_10000ED78(v15, v15 + 32, 0, v18);
    swift_unknownObjectRelease();
    v2 = v21;
    goto LABEL_17;
  }

  __break(1u);
}

uint64_t sub_10000D930@<X0>(uint64_t *a1@<X8>)
{
  v29 = a1;
  v1 = type metadata accessor for StickerSequence();
  v24 = *(v1 - 8);
  v25 = v1;
  __chkstk_darwin(v1);
  v26 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for Sticker.FetchRequest.RepresentationSpecifier();
  v3 = *(v27 - 8);
  __chkstk_darwin(v27);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100005058(&qword_1000212F8, &unk_100015F90);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - v7;
  Request = type metadata accessor for Sticker.FetchRequest();
  v9 = *(Request - 8);
  __chkstk_darwin(Request);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StickerStore.PersistenceType();
  __chkstk_darwin(v12);
  (*(v14 + 104))(&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for StickerStore.PersistenceType.remote(_:));
  type metadata accessor for StickerStore();
  swift_allocObject();
  v30 = StickerStore.init(persistence:)();
  v15 = enum case for Sticker.StickerType.recent(_:);
  v16 = type metadata accessor for Sticker.StickerType();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v8, v15, v16);
  v18 = v16;
  v19 = v26;
  (*(v17 + 56))(v8, 0, 1, v18);
  (*(v3 + 104))(v5, enum case for Sticker.FetchRequest.RepresentationSpecifier.none(_:), v27);
  Sticker.FetchRequest.init(type:predicate:representations:sortDescriptors:offset:limit:batchSize:)();
  dispatch thunk of StickerStoreProtocol.stickers(_:)();
  v20 = sub_10000DDC8(v19);
  v21 = sub_100005058(&qword_100021310, &unk_100016160);
  v22 = v29;
  v29[3] = v21;
  v22[4] = sub_10000EE78(&qword_100021318, &qword_100021310, &unk_100016160);
  *v22 = v20;
  (*(v24 + 8))(v19, v25);
  (*(v9 + 8))(v11, Request);
}

void *sub_10000DDC8(uint64_t a1)
{
  v23 = a1;
  v24 = type metadata accessor for UUID();
  v1 = *(v24 - 8);
  v2 = __chkstk_darwin(v24);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v21 = &v21 - v5;
  v6 = type metadata accessor for StickerSequence();
  v25 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for StickerSequenceIterator();
  v22 = *(v26 - 8);
  __chkstk_darwin(v26);
  v10 = (&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000EB0C(&qword_100021240, &type metadata accessor for StickerSequence, &protocol conformance descriptor for StickerSequence);
  v11 = dispatch thunk of Sequence.underestimatedCount.getter();
  v28 = &_swiftEmptyArrayStorage;
  sub_10000EAC8(0, v11 & ~(v11 >> 63), 0);
  v12 = v28;
  v25[2](v8, v23, v6);
  v25 = v10;
  result = dispatch thunk of Sequence.makeIterator()();
  if (v11 < 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  if (v11)
  {
    sub_10000EB0C(&qword_100021490, &type metadata accessor for StickerSequenceIterator, &protocol conformance descriptor for StickerSequenceIterator);
    do
    {
      result = dispatch thunk of IteratorProtocol.next()();
      v14 = v27;
      if (!v27)
      {
        goto LABEL_15;
      }

      Sticker.identifier.getter();

      v28 = v12;
      v16 = v12[2];
      v15 = v12[3];
      if (v16 >= v15 >> 1)
      {
        sub_10000EAC8((v15 > 1), v16 + 1, 1);
        v12 = v28;
      }

      v12[2] = v16 + 1;
      (*(v1 + 32))(v12 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v16, v4, v24);
    }

    while (--v11);
  }

  sub_10000EB0C(&qword_100021490, &type metadata accessor for StickerSequenceIterator, &protocol conformance descriptor for StickerSequenceIterator);
  dispatch thunk of IteratorProtocol.next()();
  v17 = v27;
  if (v27)
  {
    v18 = v21;
    do
    {
      Sticker.identifier.getter();

      v28 = v12;
      v20 = v12[2];
      v19 = v12[3];
      if (v20 >= v19 >> 1)
      {
        sub_10000EAC8((v19 > 1), v20 + 1, 1);
        v12 = v28;
      }

      v12[2] = v20 + 1;
      (*(v1 + 32))(v12 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v20, v18, v24);
      dispatch thunk of IteratorProtocol.next()();
      v17 = v27;
    }

    while (v27);
  }

  (*(v22 + 8))(v25, v26);
  return v12;
}

uint64_t sub_10000E238@<X0>(void *a1@<X8>)
{
  v36 = a1;
  v1 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v44 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v43 = &v35 - v6;
  v7 = __chkstk_darwin(v5);
  v48 = &v35 - v8;
  __chkstk_darwin(v7);
  v10 = &v35 - v9;
  sub_10000D6A4(v51);
  v11 = sub_1000025FC(v51, v52);
  __chkstk_darwin(v11);
  (*(v13 + 16))(&v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = Array.init<A>(_:)();
  sub_1000028C0(v51);
  sub_10000D930(v51);
  v15 = sub_1000025FC(v51, v52);
  __chkstk_darwin(v15);
  (*(v17 + 16))(&v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = type metadata accessor for UUID();
  v18 = Array.init<A>(_:)();
  sub_1000028C0(v51);
  if (qword_100021048 != -1)
  {
LABEL_26:
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100001CE8(v19, qword_100021458);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 134218240;
    *(v22 + 4) = *(v14 + 16);

    *(v22 + 12) = 2048;
    *(v22 + 14) = *(v18 + 16);

    _os_log_impl(&_mh_execute_header, v20, v21, "Found %ld emojis and %ld stickers to migrate.", v22, 0x16u);
  }

  else
  {
  }

  v23 = 0;
  v24 = *(v14 + 16);
  v40 = v18;
  v49 = *(v18 + 16);
  v50 = v24;
  if (v49 > v24)
  {
    v24 = v49;
  }

  v39 = enum case for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation.emoji(_:);
  v18 = v2 + 104;
  v25 = (v2 + 16);
  v45 = v2 + 32;
  v46 = v2 + 8;
  v38 = v42 - 8;
  v37 = enum case for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation.sticker(_:);
  v41 = v14;
  v26 = (v14 + 40);
  v47 = v24 + 1;
  v27 = &_swiftEmptyArrayStorage;
  do
  {
    if (v23 < v50)
    {
      if (v23 >= *(v41 + 16))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v28 = *v26;
      *v10 = *(v26 - 1);
      *(v10 + 1) = v28;
      (*v18)(v10, v39, v1);
      (*v25)(v48, v10, v1);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_10001192C(0, v27[2] + 1, 1, v27);
      }

      v14 = v27[2];
      v29 = v27[3];
      if (v14 >= v29 >> 1)
      {
        v27 = sub_10001192C((v29 > 1), v14 + 1, 1, v27);
      }

      (*(v2 + 8))(v10, v1);
      v27[2] = v14 + 1;
      (*(v2 + 32))(v27 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v14, v48, v1);
    }

    if (v23 < v49)
    {
      if (v23 >= *(v40 + 16))
      {
        goto LABEL_25;
      }

      v30 = v43;
      (*(*(v42 - 8) + 16))(v43, v40 + ((*(*(v42 - 8) + 80) + 32) & ~*(*(v42 - 8) + 80)) + *(*(v42 - 8) + 72) * v23);
      (*v18)(v30, v37, v1);
      (*v25)(v44, v30, v1);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_10001192C(0, v27[2] + 1, 1, v27);
      }

      v14 = v27[2];
      v31 = v27[3];
      if (v14 >= v31 >> 1)
      {
        v27 = sub_10001192C((v31 > 1), v14 + 1, 1, v27);
      }

      (*(v2 + 8))(v43, v1);
      v27[2] = v14 + 1;
      (*(v2 + 32))(v27 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v14, v44, v1);
    }

    ++v23;
    v26 += 2;
  }

  while (v47 != v23);

  v32 = sub_100005058(&qword_100021480, &unk_100016150);
  v33 = v36;
  v36[3] = v32;
  result = sub_10000EE78(&qword_100021488, &qword_100021480, &unk_100016150);
  v33[4] = result;
  *v33 = v27;
  return result;
}

uint64_t sub_10000E94C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000087CC;

  return sub_10000CB6C(a1, v4);
}

uint64_t sub_10000E9F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005058(&qword_100021478, &qword_100016148);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000EA60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100005058(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void *sub_10000EAC8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000EB9C(a1, a2, a3, *v3, &qword_1000212F0, &unk_1000162A0, &type metadata accessor for UUID);
  *v3 = result;
  return result;
}

uint64_t sub_10000EB0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_10000EB54(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000EB9C(a1, a2, a3, *v3, &qword_1000214A8, &qword_100016410, &type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
  *v3 = result;
  return result;
}

void *sub_10000EB9C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100005058(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void sub_10000ED78(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = *(*v4 + 2);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v9 > *(v7 + 3) >> 1)
  {
    goto LABEL_8;
  }

  if (v5 == a3)
  {
    while (v6 > 0)
    {
      __break(1u);
LABEL_8:
      if (v8 <= v9)
      {
        v12 = v8 + v6;
      }

      else
      {
        v12 = v8;
      }

      isUniquelyReferenced_nonNull_native = sub_100011820(isUniquelyReferenced_nonNull_native, v12, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
      if (v5 != a3)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  if ((*(v7 + 3) >> 1) - *(v7 + 2) < v6)
  {
    goto LABEL_19;
  }

  swift_arrayInitWithCopy();
  if (v6 <= 0)
  {
LABEL_16:
    *v4 = v7;
    return;
  }

  v13 = *(v7 + 2);
  v14 = __OFADD__(v13, v6);
  v15 = v13 + v6;
  if (!v14)
  {
    *(v7 + 2) = v15;
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_10000EE78(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000068B0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000EECC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_10000EF28()
{
  sub_100005058(&qword_1000214B0, &qword_100016178);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100015FC0;
  v3 = sub_10000EFAC(v0, v1, v2);
  *(v0 + 32) = &type metadata for RecencyMigrator_V1;
  *(v0 + 40) = v3;
  v6 = sub_10000F000(v3, v4, v5);
  *(v0 + 48) = &type metadata for RecencyMigrator_V2;
  *(v0 + 56) = v6;
  result = sub_10000F054(v6, v7, v8);
  *(v0 + 64) = &type metadata for RecencyMigrator_V3;
  *(v0 + 72) = result;
  qword_100021EC0 = v0;
  return result;
}

unint64_t sub_10000EFAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000214B8;
  if (!qword_1000214B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000214B8);
  }

  return result;
}

unint64_t sub_10000F000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000214C0;
  if (!qword_1000214C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000214C0);
  }

  return result;
}

unint64_t sub_10000F054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000214C8;
  if (!qword_1000214C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000214C8);
  }

  return result;
}

uint64_t sub_10000F0A8(uint64_t a1)
{
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Will register as SpotlightDaemonClient", v3, 2u);
  }

  v4 = String._bridgeToObjectiveC()();
  type metadata accessor for StickerIndexingClient(0);
  SpotlightDaemonClientRegister();

  return 1;
}

unint64_t sub_10000F1AC(void *a1)
{
  v94 = a1;
  v83 = type metadata accessor for UUID();
  v80 = *(v83 - 8);
  v1 = __chkstk_darwin(v83);
  v79 = &v79 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v81 = &v79 - v3;
  v4 = type metadata accessor for StickerSequenceIterator();
  v87 = *(v4 - 8);
  v88 = v4;
  __chkstk_darwin(v4);
  v85 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for StickerSequence();
  v84 = *(v86 - 8);
  v6 = __chkstk_darwin(v86);
  v82 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v79 - v8;
  v10 = type metadata accessor for Sticker.FetchRequest.RepresentationSpecifier();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_100005058(&qword_1000212F8, &unk_100015F90);
  __chkstk_darwin(v14 - 8);
  v16 = &v79 - v15;
  Request = type metadata accessor for Sticker.FetchRequest();
  v91 = *(Request - 8);
  __chkstk_darwin(Request);
  v18 = (&v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v90 = os_transaction_create();
  v19 = type metadata accessor for Sticker.StickerType();
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  v20 = *(v11 + 104);
  v20(v13, enum case for Sticker.FetchRequest.RepresentationSpecifier.preferred(_:), v10);
  Sticker.FetchRequest.init(type:predicate:representations:sortDescriptors:offset:limit:batchSize:)();
  sub_10000C414(0, &qword_100021580, NSPredicate_ptr);
  sub_100005058(&qword_100021588, &unk_1000162B0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100016180;
  *(v21 + 56) = &type metadata for String;
  *(v21 + 64) = sub_1000122C8(v21, v22, v23);
  *(v21 + 32) = 0x696669746E656469;
  *(v21 + 40) = 0xEA00000000007265;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  *(v21 + 96) = sub_10000C414(0, &qword_100021598, NSUUID_ptr);
  *(v21 + 104) = sub_10001231C();
  *(v21 + 72) = isa;
  *v13 = NSPredicate.init(format:_:)();
  v25 = v93;
  v20(v13, enum case for Sticker.FetchRequest.RepresentationSpecifier.where(_:), v10);
  Sticker.FetchRequest.representations.setter();
  Sticker.FetchRequest.limit.setter();
  v26 = sub_1000025FC((v25 + OBJC_IVAR____TtCV9stickersd21StickerIndexingClient8Provider_store), *(v25 + OBJC_IVAR____TtCV9stickersd21StickerIndexingClient8Provider_store + 24));
  v27 = v9;
  v28 = v92;
  dispatch thunk of StickerStoreProtocol.stickers(_:)();
  if (v28)
  {
    (*(v91 + 8))(v18, Request);
    swift_unknownObjectRelease();
    return v26;
  }

  v30 = v83;
  v31 = v84;
  v32 = v9;
  v33 = v86;
  (*(v84 + 16))(v82, v32, v86);
  sub_100012384(&qword_100021240, &type metadata accessor for StickerSequence, &protocol conformance descriptor for StickerSequence);
  v34 = v85;
  dispatch thunk of Sequence.makeIterator()();
  sub_100012384(&qword_100021490, &type metadata accessor for StickerSequenceIterator, &protocol conformance descriptor for StickerSequenceIterator);
  v35 = v88;
  dispatch thunk of IteratorProtocol.next()();
  (*(v87 + 8))(v34, v35);
  (*(v31 + 8))(v27, v33);
  v36 = v95;
  if (!v95)
  {
    v44 = v79;
    v43 = v80;
    v45 = v30;
    (*(v80 + 16))(v79, v94, v30);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v95 = v94;
      *v48 = 136315138;
      sub_100012384(&qword_1000215A8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v50 = v18;
      v52 = v51;
      (*(v43 + 8))(v44, v45);
      v53 = sub_100011D20(v49, v52, &v95);
      v18 = v50;

      *(v48 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v46, v47, "Could not locate sticker with representation with identifier %s", v48, 0xCu);
      sub_1000028C0(v94);
    }

    else
    {

      v54 = (*(v43 + 8))(v44, v30);
    }

    v71 = Request;
    v26 = v90;
    v72 = v91;
    sub_100010F84(v54, v55, v56);
    swift_allocError();
    *v73 = 3;
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v72 + 8))(v18, v71);
    return v26;
  }

  result = dispatch thunk of Sticker.representations.getter();
  v37 = v30;
  if (result >> 62)
  {
    v78 = result;
    v38 = _CocoaArrayWrapper.endIndex.getter();
    result = v78;
  }

  else
  {
    v38 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v39 = v81;
  v40 = v94;
  if (!v38)
  {

    v57 = v80;
    (*(v80 + 16))(v39, v40, v37);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v94 = v18;
      v62 = v61;
      v95 = v61;
      *v60 = 136315138;
      sub_100012384(&qword_1000215A8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v63 = dispatch thunk of CustomStringConvertible.description.getter();
      v64 = v37;
      v66 = v65;
      (*(v57 + 8))(v39, v64);
      v67 = sub_100011D20(v63, v66, &v95);

      *(v60 + 4) = v67;
      _os_log_impl(&_mh_execute_header, v58, v59, "Could not locate sticker representation with identifier %s", v60, 0xCu);
      sub_1000028C0(v62);
      v18 = v94;
    }

    else
    {

      v68 = (*(v57 + 8))(v39, v37);
    }

    v74 = Request;
    v75 = v91;
    sub_100010F84(v68, v69, v70);
    swift_allocError();
    *v76 = 3;
    swift_willThrow();

    swift_unknownObjectRelease();
    v77 = *(v75 + 8);
    v26 = v75 + 8;
    v77(v18, v74);
    return v26;
  }

  if ((result & 0xC000000000000001) != 0)
  {
    v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_11;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v41 = *(result + 32);
LABEL_11:
    v42 = v41;

    v26 = dispatch thunk of Sticker.Representation.data.getter();

    swift_unknownObjectRelease();
    (*(v91 + 8))(v18, Request);
    return v26;
  }

  __break(1u);
  return result;
}

uint64_t sub_10000FCD8(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, void *aBlock, void (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, id, void *))
{
  v10 = _Block_copy(aBlock);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;
  _Block_copy(v10);
  v23 = a1;
  a9(v11, v13, v14, v16, v17, v19, v20, v22, v23, v10);
  _Block_release(v10);
  _Block_release(v10);
}

uint64_t sub_10000FE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  return _swift_task_switch(sub_10000FE2C, 0, 0);
}

uint64_t sub_10000FE2C()
{
  v12 = v0;
  os_transaction_create();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[8];
    v3 = v0[9];
    v6 = v0[6];
    v5 = v0[7];
    v7 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_100011D20(v6, v5, &v11);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_100011D20(v4, v3, &v11);
    _os_log_impl(&_mh_execute_header, v1, v2, "Asked to reindex all items for bundle id: %s, protection class: %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v8 = static StickerReindexer.shared.modify();
  StickerReindexer.reindexStickers(with:)(&_swiftEmptyArrayStorage);
  v8(v0 + 2, 0);
  swift_unknownObjectRelease();
  v9 = v0[1];

  return v9();
}

uint64_t sub_10001019C(uint64_t a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v4[4] = v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v4[5] = v10;
  a4;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = sub_100010298;

  return sub_10000FE04(v6, v8, v9, v11);
}

uint64_t sub_100010298()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v5 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_100010410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[10] = a5;
  v6[11] = v5;
  v6[8] = a3;
  v6[9] = a4;
  v6[6] = a1;
  v6[7] = a2;
  sub_100005058(&qword_100021570, &qword_100016290);
  v6[12] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v6[13] = v7;
  v6[14] = *(v7 - 8);
  v6[15] = swift_task_alloc();

  return _swift_task_switch(sub_100010510, 0, 0);
}

uint64_t sub_100010510()
{
  v33 = v0;
  os_transaction_create();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[9];
    v30 = v0[10];
    v5 = v0[7];
    v4 = v0[8];
    v6 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v6 = 136315650;
    v7 = Array.description.getter();
    v9 = sub_100011D20(v7, v8, &v32);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_100011D20(v5, v4, &v32);
    *(v6 + 22) = 2080;
    *(v6 + 24) = sub_100011D20(v3, v30, &v32);
    _os_log_impl(&_mh_execute_header, v1, v2, "Asked to reindex items for identifiers: %s, bundle id: %s, protection class: %s", v6, 0x20u);
    swift_arrayDestroy();
  }

  v10 = v0[6];
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = v0[14];
    v13 = (v12 + 48);
    v31 = v12;
    v14 = (v12 + 32);
    v15 = v10 + 40;
    v16 = &_swiftEmptyArrayStorage;
    do
    {
      v18 = v0[12];
      v17 = v0[13];

      UUID.init(uuidString:)();

      if ((*v13)(v18, 1, v17) == 1)
      {
        sub_1000050A0(v0[12], &qword_100021570, &qword_100016290);
      }

      else
      {
        v19 = *v14;
        (*v14)(v0[15], v0[12], v0[13]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_100011954(0, *(v16 + 2) + 1, 1, v16, &qword_1000212F0, &unk_1000162A0, &type metadata accessor for UUID);
        }

        v21 = *(v16 + 2);
        v20 = *(v16 + 3);
        if (v21 >= v20 >> 1)
        {
          v16 = sub_100011954((v20 > 1), v21 + 1, 1, v16, &qword_1000212F0, &unk_1000162A0, &type metadata accessor for UUID);
        }

        v22 = v0[15];
        v23 = v0[13];
        *(v16 + 2) = v21 + 1;
        v19(&v16[((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v21], v22, v23);
      }

      v15 += 16;
      --v11;
    }

    while (v11);
  }

  else
  {
    v16 = &_swiftEmptyArrayStorage;
  }

  if (*(v16 + 2))
  {
    v24 = static StickerReindexer.shared.modify();
    StickerReindexer.reindexStickers(with:)(v16);

    v24(v0 + 2, 0);
    swift_unknownObjectRelease();
  }

  else
  {

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "List of identifiers is empty — nothing to do", v27, 2u);
    }

    swift_unknownObjectRelease();
  }

  v28 = v0[1];

  return v28();
}

uint64_t sub_100010B28(uint64_t a1, uint64_t a2, uint64_t a3, void *aBlock, void *a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5[4] = v7;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v5[5] = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v5[6] = v12;
  a5;
  v14 = swift_task_alloc();
  v5[7] = v14;
  *v14 = v5;
  v14[1] = sub_100010C4C;

  return sub_100010410(v7, v8, v10, v11, v13);
}

uint64_t sub_100010C4C()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v5 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v3 = *(v5 + 8);

  return v3();
}

id sub_100010E18()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StickerIndexingClient.Provider(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100010EE8(uint64_t a1)
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

unint64_t sub_100010F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100021568;
  if (!qword_100021568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021568);
  }

  return result;
}

uint64_t sub_100010FF4(uint64_t a1)
{
  sub_10000F0A8(a1);
  v2 = *(v1 + 8);

  return v2(1);
}

Swift::Int sub_100011068()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000110DC(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

unint64_t sub_100011120()
{
  v1 = *v0;
  v2 = 0x6C706D6920746F4ELL;
  v3 = 0xD000000000000012;
  v4 = 0x6E756F6620746F4ELL;
  if (v1 != 3)
  {
    v4 = 0x6961766120746F4ELL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x726F707075736E55;
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

uint64_t sub_1000111E4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_100008F88;

  return v6();
}

uint64_t sub_1000112CC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1000087CC;

  return v7();
}

uint64_t sub_1000113B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100005058(&qword_1000212A8, &qword_100015EC0);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_1000139D8(a3, v23 - v10, &qword_1000212A8, &qword_100015EC0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000050A0(v11, &qword_1000212A8, &qword_100015EC0);
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

    sub_1000050A0(a3, &qword_1000212A8, &qword_100015EC0);

    return v21;
  }

LABEL_8:
  sub_1000050A0(a3, &qword_1000212A8, &qword_100015EC0);
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

void *sub_1000116B0(void *result, int64_t a2, char a3, void *a4)
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
    sub_100005058(&qword_1000215C0, &qword_100016330);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100005058(&qword_1000215C8, &qword_100016338);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100011820(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005058(&qword_100021670, &qword_100016418);
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
    v10 = &_swiftEmptyArrayStorage;
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

void *sub_100011954(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100005058(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_100011B30(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100005058(&qword_100021668, &unk_100016400);
  v10 = *(sub_100005058(&qword_100021478, &qword_100016148) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100005058(&qword_100021478, &qword_100016148) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_100011D20(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100011DEC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10000EECC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000028C0(v11);
  return v7;
}

unint64_t sub_100011DEC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100011EF8(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
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

char *sub_100011EF8(uint64_t a1, unint64_t a2)
{
  v3 = sub_100011F44(a1, a2);
  sub_100012074(&off_10001CC28);
  return v3;
}

char *sub_100011F44(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100012160(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100012160(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100012074(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1000121D4(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100012160(uint64_t a1, uint64_t a2)
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

  sub_100005058(&qword_100021578, &qword_100016298);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000121D4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005058(&qword_100021578, &qword_100016298);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

unint64_t sub_1000122C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100021590;
  if (!qword_100021590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021590);
  }

  return result;
}

unint64_t sub_10001231C()
{
  result = qword_1000215A0;
  if (!qword_1000215A0)
  {
    sub_10000C414(255, &qword_100021598, NSUUID_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000215A0);
  }

  return result;
}

uint64_t sub_100012384(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000123CC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000087CC;

  return sub_100010B28(v2, v3, v4, v5, v6);
}

uint64_t sub_100012494()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100008F88;

  return sub_1000111E4(v2, v3, v4);
}

uint64_t sub_100012554(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F88;

  return sub_1000112CC(a1, v4, v5, v6);
}

uint64_t sub_100012620(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008F88;

  return sub_1000088C0(a1, v4);
}

uint64_t sub_1000126D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000087CC;

  return sub_1000088C0(a1, v4);
}

uint64_t sub_100012790()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100008F88;

  return sub_10001019C(v2, v3, v5, v4);
}

uint64_t sub_100012850()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100012890(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, char *a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  v106 = a7;
  v121 = a5;
  v109 = a1;
  v110 = a3;
  v114 = a10;
  v14 = sub_100005058(&qword_100021570, &qword_100016290);
  __chkstk_darwin(v14 - 8);
  v112 = &v102 - v15;
  v117 = type metadata accessor for UUID();
  v120 = *(v117 - 8);
  v16 = __chkstk_darwin(v117);
  v104 = &v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v118 = (&v102 - v18);
  v19 = sub_100005058(&qword_1000215B0, &qword_100016328);
  __chkstk_darwin(v19 - 8);
  v115 = &v102 - v20;
  v21 = type metadata accessor for URL();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v103 = &v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v102 - v25;
  v113 = os_transaction_create();
  v27 = OBJC_IVAR____TtCV9stickersd21StickerIndexingClient8Provider_logger;

  v119 = v27;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  v111 = a4;

  v108 = a2;

  v107 = a8;

  v30 = os_log_type_enabled(v28, v29);
  v116 = a9;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v105 = v22;
    v122[0] = v32;
    *v31 = 136315906;
    *(v31 + 4) = sub_100011D20(v121, a6, v122);
    v102 = a6;
    *(v31 + 12) = 2080;
    *(v31 + 14) = sub_100011D20(v106, v107, v122);
    *(v31 + 22) = 2080;
    *(v31 + 24) = sub_100011D20(v109, v108, v122);
    *(v31 + 32) = 2080;
    v33 = v118;
    a6 = v102;
    *(v31 + 34) = sub_100011D20(v110, v111, v122);
    _os_log_impl(&_mh_execute_header, v28, v29, "Asked to provider data for item: %s, type: %s, bundle id: %s, protection class: %s", v31, 0x2Au);
    swift_arrayDestroy();
    v22 = v105;

    v34 = v120;
  }

  else
  {

    v33 = v118;
    v34 = v120;
  }

  v35 = v115;
  v36 = v121;
  URL.init(string:)();
  v37 = (*(v22 + 48))(v35, 1, v21);
  v38 = v117;
  if (v37 == 1)
  {
    sub_1000050A0(v35, &qword_1000215B0, &qword_100016328);
    goto LABEL_14;
  }

  (*(v22 + 32))(v26, v35, v21);
  v39 = URL.scheme.getter();
  if (v40)
  {
    if (v39 == 0x616465726F632D78 && v40 == 0xEA00000000006174)
    {

      goto LABEL_11;
    }

    v41 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v38 = v117;

    if (v41)
    {
LABEL_11:
      v42 = *(v22 + 16);
      v43 = v103;
      v121 = v26;
      v42(v103, v26, v21);
      v44 = Logger.logObject.getter();
      v45 = v22;
      v46 = static os_log_type_t.debug.getter();
      v47 = os_log_type_enabled(v44, v46);
      v105 = v45;
      if (v47)
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v122[0] = v49;
        *v48 = 136315138;
        sub_100012384(&qword_1000215B8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v50 = dispatch thunk of CustomStringConvertible.description.getter();
        v52 = v51;
        v53 = *(v45 + 8);
        v54 = v21;
        v53(v43, v21);
        v55 = sub_100011D20(v50, v52, v122);

        *(v48 + 4) = v55;
        _os_log_impl(&_mh_execute_header, v44, v46, "Identifier %s looks like a managed objectID", v48, 0xCu);
        sub_1000028C0(v49);
      }

      else
      {

        v53 = *(v45 + 8);
        v54 = v21;
        v53(v43, v21);
      }

      os_transaction_create();
      v74 = v122;
      v38 = static StickerReindexer.shared.modify();
      v83 = v121;
      v75 = StickerReindexer.dataForManagedRepresentation(uri:)();
      v79 = v84;
      v85 = v38(v122, 0);
      if (v79 >> 60 == 15)
      {
        sub_100010F84(v85, v86, v87);
        swift_allocError();
        *v88 = 3;
        swift_willThrow();
        swift_unknownObjectRelease();
        v53(v83, v54);
LABEL_28:
        swift_errorRetain();
        v89 = _convertErrorToNSError(_:)();
        (*(v114 + 16))(v114, 0, v89);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
      sub_100003228(v75, v79);
      v78 = Logger.logObject.getter();
      v77 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v78, v77))
      {
        sub_100013A40(v75, v79);
LABEL_52:

        sub_100003228(v75, v79);
        isa = Data._bridgeToObjectiveC()().super.isa;
        (*(v114 + 16))(v114, isa, 0);
        swift_unknownObjectRelease();

        sub_100013A40(v75, v79);
        sub_100013A40(v75, v79);
        v98 = v121;
        v99 = v54;
        return (v53)(v98, v99);
      }

      result = swift_slowAlloc();
      *result = 134217984;
      v82 = v79 >> 62;
      if ((v79 >> 62) <= 1)
      {
        if (v82)
        {
          LODWORD(v90) = HIDWORD(v75) - v75;
          if (__OFSUB__(HIDWORD(v75), v75))
          {
            goto LABEL_56;
          }

          v90 = v90;
        }

        else
        {
          v90 = BYTE6(v79);
        }

LABEL_51:
        *(result + 4) = v90;
        v100 = result;
        sub_100013A40(v75, v79);
        _os_log_impl(&_mh_execute_header, v78, v77, "Providing %ld bytes", v100, 0xCu);

        goto LABEL_52;
      }

LABEL_39:
      if (v82 == 2)
      {
        v95 = *(v75 + 16);
        v94 = *(v75 + 24);
        v93 = __OFSUB__(v94, v95);
        v90 = v94 - v95;
        if (v93)
        {
          __break(1u);
LABEL_43:
          LODWORD(v82) = HIDWORD(v75) - v75;
          if (!__OFSUB__(HIDWORD(v75), v75))
          {
            v82 = v82;
            goto LABEL_46;
          }

          __break(1u);
LABEL_56:
          __break(1u);
          return result;
        }
      }

      else
      {
        v90 = 0;
      }

      goto LABEL_51;
    }
  }

  (*(v22 + 8))(v26, v21);
LABEL_14:
  v56 = v112;
  UUID.init(uuidString:)();
  if ((*(v34 + 48))(v56, 1, v38) == 1)
  {
    sub_1000050A0(v56, &qword_100021570, &qword_100016290);

    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v122[0] = v60;
      *v59 = 136315138;
      *(v59 + 4) = sub_100011D20(v36, a6, v122);
      _os_log_impl(&_mh_execute_header, v57, v58, "Cannot create sticker identifier from '%s'", v59, 0xCu);
      sub_1000028C0(v60);
    }

    sub_100010F84(v61, v62, v63);
    swift_allocError();
    *v64 = 2;
    swift_willThrow();
    goto LABEL_28;
  }

  (*(v34 + 32))(v33, v56, v38);
  v54 = v104;
  (*(v34 + 16))(v104, v33, v38);
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = v38;
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v122[0] = v69;
    *v68 = 136315138;
    sub_100012384(&qword_1000215A8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v70 = dispatch thunk of CustomStringConvertible.description.getter();
    v72 = v71;
    v53 = *(v34 + 8);
    v53(v54, v67);
    v73 = sub_100011D20(v70, v72, v122);

    *(v68 + 4) = v73;
    _os_log_impl(&_mh_execute_header, v65, v66, "Identifier %s looks like a UUID; interpreting as a sticker representation", v68, 0xCu);
    sub_1000028C0(v69);

    v33 = v118;
    v38 = v67;
  }

  else
  {

    v53 = *(v34 + 8);
    v53(v54, v38);
  }

  v74 = v33;
  v75 = sub_10000F1AC(v33);
  v77 = v76;
  sub_100003228(v75, v76);
  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v78, v79))
  {
    result = swift_slowAlloc();
    *result = 134217984;
    v81 = v77 >> 62;
    if ((v77 >> 62) <= 1)
    {
      if (!v81)
      {
        v82 = BYTE6(v77);
LABEL_46:
        *(result + 4) = v82;
        v96 = result;
        sub_10000286C(v75, v77);
        _os_log_impl(&_mh_execute_header, v78, v79, "Providing %ld bytes", v96, 0xCu);

        goto LABEL_47;
      }

      goto LABEL_43;
    }

    if (v81 != 2)
    {
      v82 = 0;
      goto LABEL_46;
    }

    v92 = *(v75 + 16);
    v91 = *(v75 + 24);
    v93 = __OFSUB__(v91, v92);
    v82 = v91 - v92;
    if (!v93)
    {
      goto LABEL_46;
    }

    __break(1u);
    goto LABEL_39;
  }

  sub_10000286C(v75, v77);
LABEL_47:

  sub_100003228(v75, v77);
  v97 = Data._bridgeToObjectiveC()().super.isa;
  (*(v114 + 16))(v114, v97, 0);
  swift_unknownObjectRelease();

  sub_10000286C(v75, v77);
  sub_10000286C(v75, v77);
  v98 = v74;
  v99 = v38;
  return (v53)(v98, v99);
}

uint64_t sub_10001364C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  v41 = a3;
  v42 = a5;
  v40 = a1;
  v15 = a10;
  v16 = sub_100005058(&qword_1000215B0, &qword_100016328);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v38 - v20;

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v38 = a7;
    v25 = v24;
    v26 = swift_slowAlloc();
    v39 = a10;
    v43 = v26;
    *v25 = 136315906;
    *(v25 + 4) = sub_100011D20(v40, a2, &v43);
    *(v25 + 12) = 2080;
    *(v25 + 14) = sub_100011D20(v41, a4, &v43);
    *(v25 + 22) = 2080;
    *(v25 + 24) = sub_100011D20(v42, a6, &v43);
    *(v25 + 32) = 2080;
    *(v25 + 34) = sub_100011D20(v38, a8, &v43);
    _os_log_impl(&_mh_execute_header, v22, v23, "Asked to provider file url for bundle id: %s, protection class: %s, itemIdentifier: %s, typeIdentifier: %s", v25, 0x2Au);
    swift_arrayDestroy();
    v15 = v39;
  }

  v27 = type metadata accessor for URL();
  v28 = *(v27 - 8);
  v29 = (*(v28 + 56))(v21, 1, 1, v27);
  sub_100010F84(v29, v30, v31);
  swift_allocError();
  *v32 = 1;
  sub_1000139D8(v21, v19, &qword_1000215B0, &qword_100016328);
  v34 = 0;
  if ((*(v28 + 48))(v19, 1, v27) != 1)
  {
    URL._bridgeToObjectiveC()(v33);
    v34 = v35;
    (*(v28 + 8))(v19, v27);
  }

  v36 = _convertErrorToNSError(_:)();
  (*(v15 + 16))(v15, v34, v36);

  return sub_1000050A0(v21, &qword_1000215B0, &qword_100016328);
}

uint64_t sub_1000139D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100005058(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100013A40(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000286C(result, a2);
  }

  return result;
}

uint64_t sub_100013A74(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SpotlightDaemonClientError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SpotlightDaemonClientError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100013C40(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for StickerIndexingClient.Provider(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_100013CC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100021660;
  if (!qword_100021660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021660);
  }

  return result;
}

uint64_t sub_100013D2C()
{
  v0 = type metadata accessor for Logger();
  sub_1000044D4(v0, qword_100021678);
  sub_100001CE8(v0, qword_100021678);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100013DB8(void *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000087CC;

  return sub_100013E60(a1);
}

uint64_t sub_100013E60(void *a1)
{
  v1[2] = a1;
  v1[3] = *a1;
  v2 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  sub_100005058(&qword_100021300, qword_100015FA0);
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_100013FA4, 0, 0);
}

uint64_t sub_100013FA4()
{
  v1 = v0[10];
  v2 = enum case for ImageGlyphRecencyModel.ImageGlyphType.emoji(_:);
  v3 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphType();
  v4 = *(v3 - 8);
  (*(v4 + 104))(v1, v2, v3);
  (*(v4 + 56))(v1, 0, 1, v3);
  sub_1000147C4();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[11] = v6;
  v0[12] = v5;

  return _swift_task_switch(sub_1000140B4, v6, v5);
}

uint64_t sub_1000140B4()
{
  v1 = *(v0 + 80);
  *(v0 + 104) = ImageGlyphRecencyModel.recentlyUsed(ofType:limit:)();
  sub_10001481C(v1);

  return _swift_task_switch(sub_100014134, 0, 0);
}

uint64_t sub_100014134()
{
  v2 = *(v1 + 104);
  v44 = *(v2 + 16);
  if (v44)
  {
    v3 = 0;
    v40 = *(v1 + 64);
    v4 = *(v1 + 40);
    v42 = enum case for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation.emoji(_:);
    v41 = (v4 + 8);
    v38 = (v4 + 32);
    v39 = &_swiftEmptyArrayStorage;
    v43 = *(v1 + 104);
    while (v3 < *(v2 + 16))
    {
      v9 = *(v1 + 64);
      v8 = *(v1 + 72);
      v10 = *(v1 + 32);
      v11 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v12 = *(v4 + 72);
      v13 = *(v4 + 16);
      v0 = (v4 + 16);
      v13(v8, *(v1 + 104) + v11 + v12 * v3, v10);
      v13(v9, v8, v10);
      if ((*(v4 + 88))(v9, v10) == v42)
      {
        v14 = *(v1 + 64);
        (*(v4 + 96))(v14, *(v1 + 32));
        v15 = *v14;
        v16 = *(v40 + 8);
        v17 = HIBYTE(v16) & 0xF;
        if ((v16 & 0x2000000000000000) == 0)
        {
          v17 = v15 & 0xFFFFFFFFFFFFLL;
        }

        if (v17)
        {
          v18 = String._bridgeToObjectiveC()();

          IsSingleEmoji = CEMStringIsSingleEmoji();

          if (IsSingleEmoji)
          {
            (*v41)(*(v1 + 72), *(v1 + 32));
          }

          else
          {
            v0 = *v38;
            (*v38)(*(v1 + 56), *(v1 + 72), *(v1 + 32));
            v20 = v39;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_10000EB54(0, v39[2] + 1, 1);
              v20 = v39;
            }

            v22 = v20[2];
            v21 = v20[3];
            if (v22 >= v21 >> 1)
            {
              sub_10000EB54((v21 > 1), v22 + 1, 1);
              v20 = v39;
            }

            v23 = *(v1 + 56);
            v24 = *(v1 + 32);
            v20[2] = v22 + 1;
            v39 = v20;
            v0(v20 + v11 + v22 * v12, v23, v24);
          }
        }

        else
        {
          (*v41)(*(v1 + 72), *(v1 + 32));
        }
      }

      else
      {
        v5 = *(v1 + 64);
        v6 = *(v1 + 32);
        v0 = (v4 + 8);
        v7 = *v41;
        (*v41)(*(v1 + 72), v6);
        v7(v5, v6);
      }

      ++v3;
      v2 = v43;
      if (v44 == v3)
      {
        v0 = v39;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_33:
    swift_once();
    goto LABEL_22;
  }

  v0 = &_swiftEmptyArrayStorage;
LABEL_20:
  *(v1 + 112) = v0;

  if (!*(v0 + 2))
  {
    goto LABEL_29;
  }

  if (qword_100021058 != -1)
  {
    goto LABEL_33;
  }

LABEL_22:
  v25 = type metadata accessor for Logger();
  sub_100001CE8(v25, qword_100021678);

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 134217984;
    *(v28 + 4) = *(v0 + 2);

    _os_log_impl(&_mh_execute_header, v26, v27, "Found %ld corrupt image glyphs needing migration attention.", v28, 0xCu);
  }

  else
  {
  }

  v29 = *(v0 + 2);
  *(v1 + 120) = v29;
  if (v29)
  {
    v30 = *(v1 + 32);
    v31 = *(v1 + 40);
    v32 = *(v31 + 16);
    v31 += 16;
    v33 = *(v31 + 64);
    *(v1 + 152) = v33;
    *(v1 + 128) = *(v31 + 56);
    *(v1 + 136) = v32;
    *(v1 + 144) = 0;
    v32(*(v1 + 48), *(v1 + 112) + ((v33 + 32) & ~v33), v30);
    v34 = *(v1 + 88);
    v35 = *(v1 + 96);

    return _swift_task_switch(sub_100014618, v34, v35);
  }

LABEL_29:

  v36 = *(v1 + 8);

  return v36();
}

uint64_t sub_100014618()
{
  ImageGlyphRecencyModel.removeEngagementHistory(for:)();

  return _swift_task_switch(sub_100014684, 0, 0);
}

uint64_t sub_100014684()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 144) + 1;
  (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
  if (v2 == v1)
  {

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 136);
    v6 = *(v0 + 144) + 1;
    *(v0 + 144) = v6;
    v5(*(v0 + 48), *(v0 + 112) + ((*(v0 + 152) + 32) & ~*(v0 + 152)) + *(v0 + 128) * v6, *(v0 + 32));
    v7 = *(v0 + 88);
    v8 = *(v0 + 96);

    return _swift_task_switch(sub_100014618, v7, v8);
  }
}

unint64_t sub_1000147C4()
{
  result = qword_100021308;
  if (!qword_100021308)
  {
    type metadata accessor for ImageGlyphRecencyModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021308);
  }

  return result;
}

uint64_t sub_10001481C(uint64_t a1)
{
  v2 = sub_100005058(&qword_100021300, qword_100015FA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::String __swiftcall String.uppercased()()
{
  v0 = String.uppercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}