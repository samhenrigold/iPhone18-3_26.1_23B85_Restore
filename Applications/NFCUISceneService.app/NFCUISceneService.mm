id sub_100001AF0(uint64_t a1)
{
  v2 = v1;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v13 = 0;
  v5 = [v2 initWithUUID:isa error:&v13];

  v6 = v13;
  if (v5)
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

id sub_100001C3C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a5;
  v33 = a3;
  v34 = a4;
  v8 = sub_100002164(&qword_10001D9A8, &unk_10000FFC0);
  __chkstk_darwin(v8 - 8);
  v10 = v27 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v27 - v16;
  sub_100002238(0, &qword_10001D9B0, NSKeyedUnarchiver_ptr);
  sub_100002238(0, &qword_10001D9B8, NFNdefMessageInternal_ptr);
  v18 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
  v28 = v17;
  if (!v18)
  {

    sub_1000021E4(v33, v34);
    sub_1000021E4(a1, a2);
    return 0;
  }

  v31 = a1;
  v32 = a2;
  v29 = v18;
  sub_100002238(0, &qword_10001DB30, NFTagInternal_ptr);
  v27[1] = 0;
  v19 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
  v21 = v19;
  if (v19)
  {
    UUID.init(uuidString:)();

    v22 = v12;
    v23 = v11;
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_1000021E4(v33, v34);
      sub_1000021E4(v31, v32);

      sub_100002280(v10, &qword_10001D9A8, &unk_10000FFC0);
      return 0;
    }

    v24 = v28;
    (*(v12 + 32))(v28, v10, v23);
    (*(v12 + 16))(v15, v24, v23);
    v25 = objc_allocWithZone(LSApplicationExtensionRecord);
    v26 = sub_100001AF0(v15);
    [objc_allocWithZone(_EXExtensionIdentity) initWithApplicationExtensionRecord:v26];

    sub_1000021E4(v33, v34);
    sub_1000021E4(v31, v32);
    (*(v22 + 8))(v24, v23);
    return v29;
  }

  else
  {

    sub_1000021E4(v33, v34);
    sub_1000021E4(v31, v32);
    return 0;
  }
}

uint64_t sub_100002164(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000021AC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_1000021E4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

uint64_t sub_100002238(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_100002280(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002164(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1000022E0(uint64_t a1)
{
  if (qword_10001D9A0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000021AC(v1, qword_10001DFD8);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, oslog, v2, "[HostCoordinator] Error connecting to remote UI: %@", v3, 0xCu);
    sub_100002280(v4, &qword_10001DB10, &unk_1000100C0);
  }
}

void sub_10000243C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_100002504(void *a1)
{
  v2 = v1;
  v4 = sub_100002164(&qword_10001DB48, &qword_1000100F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  if (qword_10001D9A0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000021AC(v7, qword_10001DFD8);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "[HostCoordinator] hostViewControllerDidActivate", v10, 2u);
  }

  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;
  v12[5] = v2;
  v13 = a1;
  v14 = v2;
  sub_100002DA8(0, 0, v6, &unk_100010128, v12);
}

uint64_t sub_1000026D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return _swift_task_switch(sub_1000026F4, 0, 0);
}

uint64_t sub_1000026F4()
{
  type metadata accessor for MainActor();
  *(v0 + 40) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100002788, v2, v1);
}

uint64_t sub_100002788()
{
  v1 = v0[4];
  v2 = v0[3];

  sub_100002834(v2, v1);
  v3 = v0[1];

  return v3();
}

void sub_100002834(void *a1, void *a2)
{
  aBlock[0] = 0;
  v4 = [a1 makeXPCConnectionWithError:aBlock];
  v5 = aBlock[0];
  if (v4)
  {
    v6 = static NFCBackgroundTagReadingRemoteUIXPCInterface.interface.getter();
    [v4 setRemoteObjectInterface:v6];

    v7 = static NFCBackgroundTagReadingRemoteUIHostInterface.interface.getter();
    [v4 setExportedInterface:v7];

    [v4 setExportedObject:a2];
    v8 = swift_allocObject();
    v8[2] = a2;
    aBlock[4] = sub_100006A94;
    aBlock[5] = v8;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100002D64;
    aBlock[3] = &unk_1000189D0;
    v9 = _Block_copy(aBlock);
    v10 = a2;

    [v4 setInvalidationHandler:v9];
    _Block_release(v9);
    [v4 resume];
    v11 = *&v10[OBJC_IVAR____TtC17NFCUISceneService15HostCoordinator_remoteUIXpcConnection];
    *&v10[OBJC_IVAR____TtC17NFCUISceneService15HostCoordinator_remoteUIXpcConnection] = v4;
    v12 = v4;

    if (qword_10001D9A0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000021AC(v13, qword_10001DFD8);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "[HostCoordinator] activate XPC connection", v16, 2u);
    }

    v17 = *&v10[OBJC_IVAR____TtC17NFCUISceneService15HostCoordinator_onVCActivated];
    if (v17)
    {
      v18 = *&v10[OBJC_IVAR____TtC17NFCUISceneService15HostCoordinator_onVCActivated + 8];

      v17(v10, a1);

      sub_100006548(v17, v18);
    }

    else
    {
    }
  }

  else
  {
    v19 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_10001D9A0 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000021AC(v20, qword_10001DFD8);
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      aBlock[0] = v24;
      *v23 = 136315138;
      swift_getErrorValue();
      v25 = Error.localizedDescription.getter();
      v27 = sub_100004600(v25, v26, aBlock);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v21, v22, "[HostCoordinator] Session from VC is unavailable, %s", v23, 0xCu);
      sub_1000062DC(v24);
    }

    else
    {
    }
  }
}

void sub_100002C68(uint64_t a1)
{
  if (qword_10001D9A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000021AC(v2, qword_10001DFD8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "[HostCoordinator] XPC connection invalidated", v5, 2u);
  }

  v6 = *(a1 + OBJC_IVAR____TtC17NFCUISceneService15HostCoordinator_remoteUIXpcConnection);
  *(a1 + OBJC_IVAR____TtC17NFCUISceneService15HostCoordinator_remoteUIXpcConnection) = 0;
}

uint64_t sub_100002D64(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_100002DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002164(&qword_10001DB48, &qword_1000100F0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100006688(a3, v25 - v10, &qword_10001DB48, &qword_1000100F0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100002280(v11, &qword_10001DB48, &qword_1000100F0);
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

      sub_100002280(a3, &qword_10001DB48, &qword_1000100F0);

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

  sub_100002280(a3, &qword_10001DB48, &qword_1000100F0);
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

uint64_t sub_100003110(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100002164(&qword_10001DB48, &qword_1000100F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v23 - v7;
  if (a2)
  {
    swift_errorRetain();
    if (qword_10001D9A0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000021AC(v9, qword_10001DFD8);
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v10, v11))
    {

      goto LABEL_12;
    }

    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v14;
    *v13 = v14;
    _os_log_impl(&_mh_execute_header, v10, v11, "[HostCoordinator] hostViewControllerWillDeactivated, error=%@", v12, 0xCu);
    sub_100002280(v13, &qword_10001DB10, &unk_1000100C0);
  }

  else
  {
    if (qword_10001D9A0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000021AC(v15, qword_10001DFD8);
    v10 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v10, v16, "[HostCoordinator] hostViewControllerWillDeactivated", v17, 2u);
    }
  }

LABEL_12:
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v3;
  v19[5] = a1;
  v20 = v3;
  v21 = a1;
  sub_100002DA8(0, 0, v8, &unk_100010100, v19);
}

uint64_t sub_100003428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_100003448, 0, 0);
}

uint64_t sub_100003448()
{
  type metadata accessor for MainActor();
  *(v0 + 32) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000034DC, v2, v1);
}

uint64_t sub_1000034DC()
{
  v1 = v0[2];

  v2 = v1 + OBJC_IVAR____TtC17NFCUISceneService15HostCoordinator_onVCWillDeactivated;
  v3 = *(v1 + OBJC_IVAR____TtC17NFCUISceneService15HostCoordinator_onVCWillDeactivated);
  if (v3)
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = *(v2 + 8);

    v3(v5, v4);
    sub_100006548(v3, v6);
  }

  sub_1000024A4();
  v7 = v0[1];

  return v7();
}

void sub_100003620(const char *a1, SEL *a2, uint64_t a3)
{
  if (qword_10001D9A0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000021AC(v5, qword_10001DFD8);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, a1, v8, 2u);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = *(Strong + OBJC_IVAR____TtC17NFCUISceneService29NFCUIRemoteAlertSceneDelegate_window);
    if (v11)
    {
      v12 = v11;
      v14 = [v12 windowScene];
      if (v14)
      {
        objc_opt_self();
        v13 = swift_dynamicCastObjCClass();
        if (v13)
        {
          [v13 *a2];

          return;
        }
      }

      else
      {
      }
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t type metadata accessor for HostCoordinator(uint64_t a1)
{
  result = qword_10001DA48;
  if (!qword_10001DA48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000039C4(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for AppExtensionIdentity();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_100003ACC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v4 = *(a1 + OBJC_IVAR____TtC17NFCUISceneService15HostCoordinator_remoteUIXpcConnection);
  if (v4)
  {
    v24 = sub_1000022E0;
    v25 = 0;
    aBlock = _NSConcreteStackBlock;
    v21 = 1107296256;
    v22 = sub_10000243C;
    v23 = &unk_1000188B8;
    v7 = _Block_copy(&aBlock);
    v8 = v4;
    v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v7];
    _Block_release(v7);

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100002164(&qword_10001DB18, &qword_1000100D0);
    if (swift_dynamicCast())
    {
      sub_100002164(&unk_10001DB20, &qword_1000100D8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100010020;
      *(inited + 32) = 1717920878;
      *(inited + 40) = 0xE400000000000000;
      v11 = sub_100002238(0, &qword_10001D9B8, NFNdefMessageInternal_ptr);
      *(inited + 48) = a3;
      *(inited + 72) = v11;
      *(inited + 80) = 6775156;
      *(inited + 88) = 0xE300000000000000;
      *(inited + 120) = sub_100002238(0, &qword_10001DB30, NFTagInternal_ptr);
      *(inited + 96) = a4;
      v12 = a3;
      v13 = a4;
      sub_100005C6C(inited);
      swift_setDeallocating();
      sub_100002164(&qword_10001DB38, &qword_1000100E0);
      swift_arrayDestroy();
      v14.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v24 = sub_100003E48;
      v25 = 0;
      aBlock = _NSConcreteStackBlock;
      v21 = 1107296256;
      v22 = sub_100003FDC;
      v23 = &unk_1000188E0;
      v15 = _Block_copy(&aBlock);
      [v19 launchInfoWithUserInfo:v14.super.isa completion:v15];
      _Block_release(v15);
      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_10001D9A0 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_1000021AC(v16, qword_10001DFD8);
      v14.super.isa = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v14.super.isa, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v14.super.isa, v17, "[NFCUIRemoteAlertSceneDelegate] invalid proxy", v18, 2u);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100003E48(uint64_t a1)
{
  if (a1)
  {
    if (qword_10001D9A0 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000021AC(v1, qword_10001DFD8);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      *v3 = 138412290;
      v5 = _swift_stdlib_bridgeErrorToNSError();
      *(v3 + 4) = v5;
      *v4 = v5;
      _os_log_impl(&_mh_execute_header, oslog, v2, "[NFCUIRemoteAlertSceneDelegate] launchInfo error: %@", v3, 0xCu);
      sub_100002280(v4, &qword_10001DB10, &unk_1000100C0);
    }

    else
    {
    }
  }
}

void sub_100003FDC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

id sub_100004300(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_1000043A8()
{
  result = qword_10001DAF8;
  if (!qword_10001DAF8)
  {
    sub_100002238(255, &qword_10001DAF0, SBUIRemoteAlertButtonAction_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001DAF8);
  }

  return result;
}

uint64_t sub_100004410(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100004508;

  return v6(a1);
}

uint64_t sub_100004508()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_100004600(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000046CC(v11, 0, 0, 1, a1, a2);
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
    sub_100006328(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000062DC(v11);
  return v7;
}

unint64_t sub_1000046CC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000047D8(a5, a6);
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

char *sub_1000047D8(uint64_t a1, unint64_t a2)
{
  v3 = sub_100004824(a1, a2);
  sub_100004954(&off_100018818);
  return v3;
}

char *sub_100004824(uint64_t a1, unint64_t a2)
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

  v6 = sub_100004A40(v5, 0);
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
        v7 = sub_100004A40(v10, 0);
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

uint64_t sub_100004954(uint64_t result)
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

  result = sub_100004AB4(result, v11, 1, v3);
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

void *sub_100004A40(uint64_t a1, uint64_t a2)
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

  sub_100002164(&qword_10001DB00, &qword_1000100B0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100004AB4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002164(&qword_10001DB00, &qword_1000100B0);
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

unint64_t sub_100004BA8(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100004C64(a1, v4);
}

unint64_t sub_100004BEC(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100004D2C(a1, a2, v4);
}

unint64_t sub_100004C64(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100006568(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100006450(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100004D2C(uint64_t a1, uint64_t a2, uint64_t a3)
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

void sub_100004DE4(void *a1)
{
  v2 = v1;
  v4 = sub_100002164(&qword_10001DB08, &qword_1000100B8);
  __chkstk_darwin(v4 - 8);
  v6 = &v111 - v5;
  v7 = type metadata accessor for _EXHostViewController.Configuration();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AppExtensionIdentity();
  isa = v11[-1].isa;
  v128 = v11;
  v12 = __chkstk_darwin(v11);
  v125 = &v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v126 = &v111 - v14;
  if (qword_10001D9A0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000021AC(v15, qword_10001DFD8);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "remote alert scene connected, setup host controller", v18, 2u);
  }

  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (v19)
  {
    v20 = v19;
    v122 = v10;
    v123 = v8;
    v120 = v7;
    v21 = objc_allocWithZone(UIWindow);
    v124 = a1;
    v22 = [v21 initWithWindowScene:v20];
    v23 = *(v2 + OBJC_IVAR____TtC17NFCUISceneService29NFCUIRemoteAlertSceneDelegate_window);
    v119 = v2;
    v118 = OBJC_IVAR____TtC17NFCUISceneService29NFCUIRemoteAlertSceneDelegate_window;
    *(v2 + OBJC_IVAR____TtC17NFCUISceneService29NFCUIRemoteAlertSceneDelegate_window) = v22;

    v24 = String._bridgeToObjectiveC()();
    [v20 setIdleTimerDisabled:1 forReason:v24];

    [v20 setDesiredHardwareButtonEvents:2];
    [v20 setSwipeDismissalStyle:0];
    v25 = [v20 configurationIdentifier];
    if (v25)
    {
      v26 = v25;
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v131[0] = v33;
        *v32 = 136315138;
        v34 = sub_100004600(v27, v29, v131);

        *(v32 + 4) = v34;
        _os_log_impl(&_mh_execute_header, v30, v31, "remote alert scene got configuration identifier %s", v32, 0xCu);
        sub_1000062DC(v33);
      }

      else
      {
      }
    }

    v41 = [v20 configurationContext];
    if (v41)
    {
      v42 = v41;
      v43 = v41;
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *v46 = 138412290;
        *(v46 + 4) = v43;
        *v47 = v42;
        v48 = v43;
        _os_log_impl(&_mh_execute_header, v44, v45, "remote alert scene got configuration context %@", v46, 0xCu);
        sub_100002280(v47, &qword_10001DB10, &unk_1000100C0);

        v43 = v44;
        v44 = v48;
      }
    }

    v49 = [v20 activationContext];
    v50 = v49;
    if (v49)
    {
      v51 = v49;
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        *v54 = 138412290;
        *(v54 + 4) = v51;
        *v55 = v50;
        v56 = v51;
        _os_log_impl(&_mh_execute_header, v52, v53, "remote alert scene got activation context %@", v54, 0xCu);
        sub_100002280(v55, &qword_10001DB10, &unk_1000100C0);
      }

      v57 = [v51 userInfo];
      if (v57)
      {
        v58 = v57;
        v59 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v130[0] = 0x444955557845;
        v130[1] = 0xE600000000000000;
        AnyHashable.init<A>(_:)();
        if (*(v59 + 16))
        {
          v60 = sub_100004BA8(v131);
          if (v61)
          {
            sub_100006328(*(v59 + 56) + 32 * v60, v132);
            sub_100006450(v131);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_41;
            }

            v63 = v130[0];
            v62 = v130[1];
            v130[0] = 1717920878;
            v130[1] = 0xE400000000000000;
            AnyHashable.init<A>(_:)();
            if (*(v59 + 16) && (v64 = sub_100004BA8(v131), (v65 & 1) != 0))
            {
              sub_100006328(*(v59 + 56) + 32 * v64, v132);
              sub_100006450(v131);
              if ((swift_dynamicCast() & 1) == 0)
              {

                goto LABEL_41;
              }

              v66 = v130[0];
              v121 = v130[1];
              v130[0] = 6775156;
              v130[1] = 0xE300000000000000;
              AnyHashable.init<A>(_:)();
              if (*(v59 + 16))
              {
                v67 = sub_100004BA8(v131);
                if (v68)
                {
                  sub_100006328(*(v59 + 56) + 32 * v67, v132);
                  sub_100006450(v131);
                  if (swift_dynamicCast())
                  {
                    v121 = sub_100001C3C(v66, v121, v130[0], v130[1], v63, v62);
                    v50 = v69;
                    v71 = v70;
LABEL_42:
                    strcpy(v130, "swipeToDismiss");
                    HIBYTE(v130[1]) = -18;
                    AnyHashable.init<A>(_:)();
                    if (*(v59 + 16) && (v75 = sub_100004BA8(v131), (v76 & 1) != 0))
                    {
                      sub_100006328(*(v59 + 56) + 32 * v75, v132);
                      sub_100006450(v131);

                      if (swift_dynamicCast())
                      {
                        [v20 setSwipeDismissalStyle:1];
                      }
                    }

                    else
                    {

                      sub_100006450(v131);
                    }

                    v78 = v122;
                    v77 = v123;
                    v79 = v121;
                    if (v121)
                    {
                      v115 = v71;
                      v116 = v71;
                      sub_1000064A4(v79, v50, v71);
                      v80 = v126;
                      AppExtensionIdentity.init(_:)();
                      v81 = *(isa + 2);
                      v121 = v79;
                      v82 = v125;
                      v117 = v50;
                      v83 = v128;
                      v81(v125, v80, v128);
                      v84 = v6;
                      v85 = v81;
                      v114 = v81;
                      v86 = v82;
                      _EXHostViewController.Configuration.init(appExtensionIdentity:sceneID:)();
                      v112 = [objc_allocWithZone(_EXHostViewController) init];
                      v87 = v78;
                      v88 = v120;
                      (*(v77 + 16))(v84, v87, v120);
                      (*(v77 + 56))(v84, 0, 1, v88);
                      _EXHostViewController._configuration.setter();
                      v89 = v83;
                      v85(v82, v80, v83);
                      v90 = swift_allocObject();
                      v91 = v121;
                      v92 = v117;
                      v90[2] = v121;
                      v90[3] = v92;
                      v93 = v115;
                      v90[4] = v115;
                      v111 = type metadata accessor for HostCoordinator(0);
                      v94 = objc_allocWithZone(v111);
                      swift_unknownObjectWeakInit();
                      *&v94[OBJC_IVAR____TtC17NFCUISceneService15HostCoordinator_remoteUIXpcConnection] = 0;
                      v95 = &v94[OBJC_IVAR____TtC17NFCUISceneService15HostCoordinator_onVCActivated];
                      *v95 = 0;
                      v95[1] = 0;
                      v96 = &v94[OBJC_IVAR____TtC17NFCUISceneService15HostCoordinator_onVCWillDeactivated];
                      *v96 = 0;
                      v96[1] = 0;
                      v114(&v94[OBJC_IVAR____TtC17NFCUISceneService15HostCoordinator_identity], v86, v83);
                      v97 = v119;
                      swift_unknownObjectWeakAssign();
                      v99 = *v95;
                      v98 = v95[1];
                      *v95 = sub_10000653C;
                      v95[1] = v90;
                      v114 = v93;
                      v115 = v91;
                      v100 = v117;
                      v101 = v112;
                      v113 = v100;

                      sub_100006548(v99, v98);
                      v102 = *v96;
                      v103 = v96[1];
                      *v96 = 0;
                      v96[1] = 0;
                      v104 = isa;
                      sub_100006548(v102, v103);
                      v129.receiver = v94;
                      v129.super_class = v111;
                      v105 = objc_msgSendSuper2(&v129, "init");

                      v106 = *(v104 + 1);
                      v106(v125, v89);
                      [v101 setDelegate:v105];
                      v107 = *(v97 + OBJC_IVAR____TtC17NFCUISceneService29NFCUIRemoteAlertSceneDelegate_hostCoordinator);
                      *(v97 + OBJC_IVAR____TtC17NFCUISceneService29NFCUIRemoteAlertSceneDelegate_hostCoordinator) = v105;
                      v108 = v105;

                      v109 = v118;
                      v110 = *(v97 + v118);
                      if (v110)
                      {
                        [v110 setRootViewController:v101];
                        v110 = *(v97 + v109);
                      }

                      [v110 makeKeyAndVisible];

                      sub_100006400(v121, v117, v116);
                      (*(v123 + 8))(v122, v120);
                      v106(v126, v128);
                      return;
                    }

                    goto LABEL_36;
                  }

                  sub_1000021E4(v66, v121);
LABEL_41:
                  v121 = 0;
                  v50 = 0;
                  v71 = 0;
                  goto LABEL_42;
                }
              }

              sub_1000021E4(v66, v121);
            }

            else
            {
            }
          }
        }

        sub_100006450(v131);
        goto LABEL_41;
      }

      v50 = 0;
    }

    v71 = 0;
LABEL_36:
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&_mh_execute_header, v72, v73, "Invalid remote alert request", v74, 2u);
    }

    sub_100006400(0, v50, v71);

    return;
  }

  v35 = a1;
  v128 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v128, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v37 = 138412290;
    *(v37 + 4) = v35;
    *v38 = v35;
    v39 = v35;
    _os_log_impl(&_mh_execute_header, v128, v36, "expected scene to be SBSUIRemoteAlertScene but got %@", v37, 0xCu);
    sub_100002280(v38, &qword_10001DB10, &unk_1000100C0);
  }

  v40 = v128;
}

unint64_t sub_100005C6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002164(&qword_10001DB40, &qword_1000100E8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100006688(v4, &v13, &qword_10001DB38, &qword_1000100E0);
      v5 = v13;
      v6 = v14;
      result = sub_100004BEC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100006558(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

void sub_100005D9C()
{
  v1 = v0;
  if (qword_10001D9A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000021AC(v2, qword_10001DFD8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "remote alert scene sceneDidBecomeActive", v5, 2u);
  }

  v6 = *&v1[OBJC_IVAR____TtC17NFCUISceneService29NFCUIRemoteAlertSceneDelegate_window];
  if (v6)
  {
    [v6 setAlpha:0.0];
  }

  v7 = objc_opt_self();
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  v11[4] = sub_1000063C0;
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100002D64;
  v11[3] = &unk_100018868;
  v9 = _Block_copy(v11);
  v10 = v1;

  [v7 animateWithDuration:v9 animations:0.3];
  _Block_release(v9);
}

void sub_100005F64(const char *a1)
{
  if (qword_10001D9A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000021AC(v2, qword_10001DFD8);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v3, a1, v4, 2u);
  }
}

void sub_100006054()
{
  v1 = v0;
  if (qword_10001D9A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000021AC(v2, qword_10001DFD8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "remote alert scene sceneDidDisconnect", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC17NFCUISceneService29NFCUIRemoteAlertSceneDelegate_window);
  *(v1 + OBJC_IVAR____TtC17NFCUISceneService29NFCUIRemoteAlertSceneDelegate_window) = 0;
}

void sub_100006150(uint64_t a1)
{
  if (qword_10001D9A0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000021AC(v1, qword_10001DFD8);

  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315138;
    sub_100002238(0, &qword_10001DAF0, SBUIRemoteAlertButtonAction_ptr);
    sub_1000043A8();
    v5 = Set.description.getter();
    v7 = sub_100004600(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, oslog, v2, "remote alert scene handle buttonActions: %s", v3, 0xCu);
    sub_1000062DC(v4);
  }
}

uint64_t sub_1000062DC(void *a1)
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

uint64_t sub_100006328(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100006388()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_1000063C0()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC17NFCUISceneService29NFCUIRemoteAlertSceneDelegate_window);
  if (result)
  {
    return [result setAlpha:1.0];
  }

  return result;
}

uint64_t sub_1000063E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100006400(void *a1, void *a2, void *a3)
{
  if (a1)
  {
  }
}

id sub_1000064A4(id result, void *a2, void *a3)
{
  if (result)
  {
    v4 = result;
    v5 = a2;

    return a3;
  }

  return result;
}

uint64_t sub_1000064F4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100006548(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

_OWORD *sub_100006558(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1000065C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100006AB4;

  return sub_100003428(a1, v4, v5, v7, v6);
}

uint64_t sub_100006688(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002164(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000066F0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100006728(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100006AB4;

  return sub_100004410(a1, v4);
}

uint64_t sub_1000067E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100006898;

  return sub_100004410(a1, v4);
}

uint64_t sub_100006898()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000698C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000069D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100006898;

  return sub_1000026D0(a1, v4, v5, v7, v6);
}

uint64_t sub_100006AC8()
{
  v0 = sub_100002164(&qword_10001DC78, &qword_1000101B8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  WindowGroup.init(id:title:lazyContent:)();
  sub_100006DE8();
  static SceneBuilder.buildBlock<A>(_:)();
  return (*(v1 + 8))(v3, v0);
}

id sub_100006BF8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100006CD8();
  *a1 = result;
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100006C58();
  static App.main()();
  return 0;
}

unint64_t sub_100006C58()
{
  result = qword_10001DC70;
  if (!qword_10001DC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001DC70);
  }

  return result;
}

id sub_100006CD8()
{
  v0 = [objc_allocWithZone(NFBSListener_BackgroundTagReading) init];
  v1 = qword_10001D9A0;
  v2 = v0;
  if (v1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000021AC(v3, qword_10001DFD8);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Starting NFCUISceneService...", v6, 2u);
  }

  [v2 activate];
  return v2;
}

unint64_t sub_100006DE8()
{
  result = qword_10001DC80;
  if (!qword_10001DC80)
  {
    sub_100006E4C(&qword_10001DC78, &qword_1000101B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001DC80);
  }

  return result;
}

uint64_t sub_100006E4C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100006E98()
{
  v0 = type metadata accessor for Logger();
  sub_100006F10(v0, qword_10001DFD8);
  sub_1000021AC(v0, qword_10001DFD8);
  return Logger.init(subsystem:category:)();
}

uint64_t *sub_100006F10(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void sub_100007390(uint64_t a1)
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v3 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 48));
    v8 = 45;
    if (isMetaClass)
    {
      v8 = 43;
    }

    v3(6, "%c[%{public}s %{public}s]:%i XPC to extension process (%@) interrupted", v8, ClassName, Name, 79, *(a1 + 40));
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v9 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v10))
    {
      v11 = 43;
    }

    else
    {
      v11 = 45;
    }

    v12 = object_getClassName(*(a1 + 32));
    v13 = sel_getName(*(a1 + 48));
    v14 = *(a1 + 40);
    *buf = 67110146;
    v16 = v11;
    v17 = 2082;
    v18 = v12;
    v19 = 2082;
    v20 = v13;
    v21 = 1024;
    v22 = 79;
    v23 = 2112;
    v24 = v14;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i XPC to extension process (%@) interrupted", buf, 0x2Cu);
  }
}

void sub_100007524(uint64_t a1)
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v3 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 48));
    v8 = 45;
    if (isMetaClass)
    {
      v8 = 43;
    }

    v3(6, "%c[%{public}s %{public}s]:%i XPC to extension process (%@) invalidated", v8, ClassName, Name, 83, *(a1 + 40));
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v9 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v10))
    {
      v11 = 43;
    }

    else
    {
      v11 = 45;
    }

    v12 = object_getClassName(*(a1 + 32));
    v13 = sel_getName(*(a1 + 48));
    v14 = *(a1 + 40);
    *buf = 67110146;
    v16 = v11;
    v17 = 2082;
    v18 = v12;
    v19 = 2082;
    v20 = v13;
    v21 = 1024;
    v22 = 83;
    v23 = 2112;
    v24 = v14;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i XPC to extension process (%@) invalidated", buf, 0x2Cu);
  }
}

uint64_t sub_100009BC0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100009BE8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v8 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 48));
      v13 = 45;
      if (isMetaClass)
      {
        v13 = 43;
      }

      v8(6, "%c[%{public}s %{public}s]:%i Process error (%@): %@", v13, ClassName, Name, 322, *(a1 + 40), v5);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v14 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v15))
      {
        v16 = 43;
      }

      else
      {
        v16 = 45;
      }

      v17 = object_getClassName(*(a1 + 32));
      v18 = sel_getName(*(a1 + 48));
      v19 = *(a1 + 40);
      *buf = 67110402;
      v21 = v16;
      v22 = 2082;
      v23 = v17;
      v24 = 2082;
      v25 = v18;
      v26 = 1024;
      v27 = 322;
      v28 = 2112;
      v29 = v19;
      v30 = 2112;
      v31 = v5;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Process error (%@): %@", buf, 0x36u);
    }
  }

  [*(a1 + 32) postXPCEventDictionary:v6];
}

void sub_10000BD04(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v4 = Logger;
    Class = object_getClass(WeakRetained);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(WeakRetained);
    Name = sel_getName(*(a1 + 56));
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v4(6, "%c[%{public}s %{public}s]:%i Extension process (%@) interrupted", v9, ClassName, Name, 223, *(a1 + 32));
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = object_getClass(WeakRetained);
    if (class_isMetaClass(v11))
    {
      v12 = 43;
    }

    else
    {
      v12 = 45;
    }

    v13 = object_getClassName(WeakRetained);
    v14 = sel_getName(*(a1 + 56));
    v15 = *(a1 + 32);
    *buf = 67110146;
    v17 = v12;
    v18 = 2082;
    v19 = v13;
    v20 = 2082;
    v21 = v14;
    v22 = 1024;
    v23 = 223;
    v24 = 2112;
    v25 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Extension process (%@) interrupted", buf, 0x2Cu);
  }

  [*(a1 + 40) setExtensionProcess:0];
}

void sub_10000C568(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setDomain:@"remote-ui"];
  [v3 setService:@"com.apple.nfc.background.tag.reading"];
  [v3 setDelegate:*(a1 + 32)];
}

void sub_10000C804(id a1)
{
  v4 = [BSMutableServiceInterface interfaceWithIdentifier:@"com.apple.nfc.background.tag.reading"];
  v1 = [BSObjCProtocol protocolForProtocol:&OBJC_PROTOCOL___NFBSService_BackgroundTagReadingXPCProtocol];
  [v4 setServer:v1];

  v2 = [v4 copy];
  v3 = qword_10001DF90;
  qword_10001DF90 = v2;
}

uint64_t sub_10000D200(uint64_t a1)
{
  qword_10001DF80 = [*(a1 + 32) bsInterface];

  return _objc_release_x1();
}

void sub_10000D23C(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setTargetQueue:&_dispatch_main_q];
  v3 = +[BSServiceQuality userInitiated];
  [v4 setServiceQuality:v3];

  [v4 setInterface:qword_10001DF80];
  [v4 setInterfaceTarget:*(a1 + 32)];
  [v4 setInvalidationHandler:&stru_100018B70];
}

uint64_t sub_10000DB70(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000DC78(id a1)
{
  qword_10001DFA8 = os_log_create("com.apple.NFCUISceneService", "default");

  _objc_release_x1();
}