uint64_t sub_1001E1744(char a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = *(a3 + 32);
  if (v6)
  {
    v7 = *(v6 + OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_activeCredentialSession);
    *(v6 + OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_activeCredentialSession) = 0;
    v8 = a2;

    a2 = v8;
  }

  return (a4)(a1 & 1, a2);
}

void sub_1001E17A4(void *a1, uint64_t a2, uint64_t a3)
{
  [a1 setTargetQueue:*(a2 + 40)];
  v6 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality:v6];

  v7 = sub_1001F152C();
  [a1 setInterface:v7];

  [a1 setInterfaceTarget:a3];
  v15 = sub_1001E19F4;
  v16 = 0;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_1000A409C;
  v14 = &unk_1004CB648;
  v8 = _Block_copy(&v11);
  [a1 setActivationHandler:v8];
  _Block_release(v8);
  v15 = sub_1001F1D8C;
  v16 = a2;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_1000A409C;
  v14 = &unk_1004CB670;
  v9 = _Block_copy(&v11);

  [a1 setInvalidationHandler:v9];
  _Block_release(v9);
  v15 = sub_1001F1DB0;
  v16 = a2;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_1000A409C;
  v14 = &unk_1004CB698;
  v10 = _Block_copy(&v11);

  [a1 setInterruptionHandler:v10];
  _Block_release(v10);
}

void sub_1001E19F4(uint64_t a1, uint64_t a2)
{
  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000958E4(v2, qword_10051B240);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v3, "SEStorageManagementUIClient Activated", v4, 2u);
  }
}

void sub_1001E1ADC(char a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_state;
  v7 = *&v2[OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_state];

  os_unfair_lock_lock((v7 + 20));
  v8 = *(v7 + 16);
  os_unfair_lock_unlock((v7 + 20));

  if (v8 == 1)
  {
    if (qword_100501938 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000958E4(v9, qword_10051B240);
    v10 = v3;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v11, v12))
    {
      osloga = a1;
      v13 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v45 = v41;
      *v13 = 136315138;
      v14 = v10;
      v15 = [v14 description];
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v10;
      v17 = a2;
      v19 = v18;

      v20 = sub_1002FFA0C(v16, v19, &v45);
      a2 = v17;
      v10 = v42;

      *(v13 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v11, v12, "%s Remote presentation has ended", v13, 0xCu);
      sub_1000752F4(v41);

      a1 = osloga;
    }

    v21 = *&v3[v6];

    os_unfair_lock_lock((v21 + 20));
    *(v21 + 16) = 2;
    os_unfair_lock_unlock((v21 + 20));

    v22 = &v10[OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_sufficientSpaceCompletion];
    v23 = *&v10[OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_sufficientSpaceCompletion];
    if (v23)
    {
      v24 = v22[1];

      v23(a1 & 1, a2);
      sub_1000B2A4C(v23, v24);
      v25 = *v22;
    }

    else
    {
      v25 = 0;
    }

    v37 = v22[1];
    *v22 = 0;
    v22[1] = 0;
    sub_1000B2A4C(v25, v37);
    v38 = &v10[OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_startCallback];
    v39 = *&v10[OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_startCallback];
    v40 = *&v10[OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_startCallback + 8];
    *v38 = 0;
    *(v38 + 1) = 0;

    sub_1000B2A4C(v39, v40);
  }

  else
  {
    if (qword_100501938 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_1000958E4(v26, qword_10051B240);
    v27 = v3;
    oslog = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v45 = v30;
      *v29 = 136315138;
      v31 = v27;
      v32 = [v31 description];
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      v36 = sub_1002FFA0C(v33, v35, &v45);

      *(v29 + 4) = v36;
      _os_log_impl(&_mh_execute_header, oslog, v28, "%s previously invalidated, do not invalidate", v29, 0xCu);
      sub_1000752F4(v30);
    }
  }
}

uint64_t sub_1001E1EDC(uint64_t a1, uint64_t a2, const char *a3)
{
  v5 = sub_100068FC4(&unk_100506F00, &qword_10040BE90);
  __chkstk_darwin(v5 - 8);
  v7 = &v18 - v6;
  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000958E4(v8, qword_10051B240);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, a3, v11, 2u);
  }

  [*(a2 + 16) invalidate];
  v12 = *(a2 + 32);
  if (v12)
  {
    v13 = enum case for SEStorageManagementInternal.Types.ErrorCode.invalidated(_:);
    v14 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
    v15 = *(v14 - 8);
    (*(v15 + 104))(v7, v13, v14);
    (*(v15 + 56))(v7, 0, 1, v14);
    v16 = v12;
    sub_1001E1ADC(0, v7);

    sub_100075768(v7, &unk_100506F00, &qword_10040BE90);
  }

  *(a2 + 24) = 0;
  return swift_unknownObjectRelease();
}

uint64_t sub_1001E20FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_1001E2170()
{
  v1 = *(v0 + 56);
  if (![*(v1 + 16) isConnected])
  {
    if (qword_100501938 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000958E4(v12, qword_10051B240);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    v15 = "Shared Client not initialized";
    v16 = 0xD000000000000024;
    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_30;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "BSXPCConnection is unexpectedly not setup";
    goto LABEL_29;
  }

  v2 = *(v0 + 56);
  v3 = *(v2 + 24);
  if (v3)
  {
    v4 = qword_100501938;
    swift_unknownObjectRetain();
    if (v4 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000958E4(v5, qword_10051B240);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_8;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "Returning established proxy";
LABEL_7:
    _os_log_impl(&_mh_execute_header, v6, v7, v9, v8, 2u);

LABEL_8:

    v10 = *(v0 + 8);

    return v10(v3);
  }

  if ([*(v1 + 16) launchRemote])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  *(v0 + 16) = v24;
  *(v0 + 32) = v25;
  if (*(v0 + 40))
  {
    sub_100068FC4(&qword_100506F90, &qword_10040F318);
    if (swift_dynamicCast())
    {
      v3 = *(v0 + 48);
      *(v2 + 24) = v3;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      if (qword_100501938 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_1000958E4(v19, qword_10051B240);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v6, v7))
      {
        goto LABEL_8;
      }

      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = "Returning new proxy";
      goto LABEL_7;
    }
  }

  else
  {
    sub_100075768(v0 + 16, &qword_100502420, &qword_10040F310);
  }

  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v16 = 0xD000000000000016;
  v20 = type metadata accessor for Logger();
  sub_1000958E4(v20, qword_10051B240);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  v15 = "Connection not setup";
  if (os_log_type_enabled(v13, v14))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "Unable to launch remote proxy as Server Protocol";
LABEL_29:
    _os_log_impl(&_mh_execute_header, v13, v14, v18, v17, 2u);
  }

LABEL_30:

  v21 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
  sub_1001F33F0(&qword_100506F20, &type metadata accessor for SEStorageManagementInternal.Types.ErrorCode, &protocol conformance descriptor for SEStorageManagementInternal.Types.ErrorCode);
  swift_allocError();
  *v22 = v16;
  v22[1] = v15 | 0x8000000000000000;
  (*(*(v21 - 8) + 104))(v22, enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:), v21);
  swift_willThrow();
  v23 = *(v0 + 8);

  return v23();
}

id *SEStorageManagementUIClient.deinit()
{
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC10seserviced27SEStorageManagementUIClient_clientIdentifier;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SEStorageManagementUIClient.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC10seserviced27SEStorageManagementUIClient_clientIdentifier;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1001E27BC(uint64_t a1)
{
  result = type metadata accessor for UUID();
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

id sub_1001E2868(uint64_t a1, void *a2)
{
  v3 = v2;
  v46 = a2;
  v44 = a1;
  v45 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v45 - 8);
  __chkstk_darwin(v45);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v7);
  v8 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v8 - 8);
  v9 = OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_state;
  sub_100068FC4(&qword_100507058, &unk_10040F330);
  v10 = swift_allocObject();
  *(v10 + 20) = 0;
  *(v10 + 16) = 0;
  *&v2[v9] = v10;
  v11 = &v2[OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_startCallback];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v2[OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_sufficientSpaceCompletion];
  *v12 = 0;
  *(v12 + 1) = 0;
  v43 = OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_timeoutCallbackQueue;
  sub_10009393C(0, &qword_100501E50, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v48 = _swiftEmptyArrayStorage;
  sub_1001F33F0(&qword_1005064A0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100068FC4(&unk_100501E60, &qword_100408C30);
  sub_1001A1FB4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v4 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v45);
  *&v2[v43] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v13 = &v2[OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_angelBundleId];
  *v13 = 0xD000000000000019;
  *(v13 + 1) = 0x8000000100467200;
  v14 = &v2[OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_sceneConfiguration];
  *v14 = 0xD000000000000012;
  *(v14 + 1) = 0x8000000100467220;
  v15 = &v2[OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_passProvider];
  *(v15 + 4) = 0;
  *v15 = 0u;
  *(v15 + 1) = 0u;
  *&v2[OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_passEntries] = _swiftEmptyArrayStorage;
  v45 = OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_activeCredentialSession;
  *&v2[OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_activeCredentialSession] = 0;
  LOBYTE(v48) = 0;
  LOBYTE(v50) = 2;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  v48 = _swiftEmptyArrayStorage;
  v50 = 0;
  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  v16 = v44;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  LOBYTE(v48) = 0;
  LOBYTE(v50) = 2;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  v50 = 0;
  v48 = 0;
  LOBYTE(v49) = 1;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  v17 = OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_id;
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  (*(v19 + 16))(&v3[v17], v16, v18);

  v20 = String._bridgeToObjectiveC()();

  v21 = [objc_opt_self() identityForAngelJobLabel:v20];

  v22 = objc_allocWithZone(SBSRemoteAlertDefinition);
  v23 = v21;

  v24 = String._bridgeToObjectiveC()();

  v25 = [v22 initWithSceneProvidingProcess:v23 configurationIdentifier:v24];

  v26 = [objc_allocWithZone(SBSRemoteAlertConfigurationContext) init];
  sub_100068FC4(&unk_100503F50, &unk_10040D950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004098F0;
  v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v49 = v28;
  AnyHashable.init<A>(_:)();
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = v29;
  *(inited + 80) = v30;
  sub_100090BC4(inited);
  swift_setDeallocating();
  sub_100075768(inited + 32, &qword_100502C48, &qword_10040B2D0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v26 setUserInfo:isa];

  *&v3[OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_handle] = [objc_opt_self() newHandleWithDefinition:v25 configurationContext:v26];
  v32 = *&v3[v45];
  v33 = v46;
  *&v3[v45] = v46;
  v34 = v33;

  v35 = objc_opt_self();
  v48 = 0;
  v36 = [v35 getSPRInspectorAndReturnError:&v48];
  v37 = v48;
  if (!v36)
  {
    v38 = v37;
    _convertNSErrorToError(_:)();
    v46 = v26;

    swift_willThrow();
    v26 = v46;

    v36 = 0;
  }

  *&v3[OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_softPOSManager] = v36;
  v39 = type metadata accessor for SEStorageManagementPresenter(0);
  v47.receiver = v3;
  v47.super_class = v39;
  v40 = objc_msgSendSuper2(&v47, "init");

  (*(v19 + 8))(v16, v18);
  return v40;
}

id sub_1001E30C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SEStorageManagementPresenter(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1001E3378(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_100078874(319, &qword_100506E70, &type metadata for Bool);
    if (v2 <= 0x3F)
    {
      sub_1001E3530(319);
      if (v3 <= 0x3F)
      {
        sub_100078874(319, &qword_100506E88, &type metadata for UInt);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1001E3530(uint64_t a1)
{
  if (!qword_100506E78)
  {
    sub_1000692D8(&unk_100503E60, &qword_10040A3B0);
    v1 = type metadata accessor for UserDefaultBacked();
    if (!v2)
    {
      atomic_store(v1, &qword_100506E78);
    }
  }
}

uint64_t sub_1001E3594@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1001E3610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  sub_100068FC4(&unk_100506F00, &qword_10040BE90);
  v8[7] = swift_task_alloc();
  v9 = type metadata accessor for ContinuousClock();
  v8[8] = v9;
  v8[9] = *(v9 - 8);
  v8[10] = swift_task_alloc();

  return _swift_task_switch(sub_1001E3710, 0, 0);
}

uint64_t sub_1001E3710()
{
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_1001E37D0;
  v3 = v0[2];
  v2 = v0[3];

  return sub_1003633BC(v3, v2, 0, 0, 1);
}

uint64_t sub_1001E37D0()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  *(*v1 + 96) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1001E3BD0;
  }

  else
  {
    v5 = sub_1001E3940;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001E3940(uint64_t a1, uint64_t a2)
{
  v25 = v2;
  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v3 = v2[4];
  v4 = type metadata accessor for Logger();
  sub_1000958E4(v4, qword_10051B240);
  v5 = v3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v2[4];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136315138;
    v11 = v8;
    v12 = [v11 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_1002FFA0C(v13, v15, &v24);

    *(v9 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s Presentation task timed out", v9, 0xCu);
    sub_1000752F4(v10);
  }

  v17 = v2[7];
  v18 = v2[5];
  v19 = enum case for SEStorageManagementInternal.Types.ErrorCode.presentationTimedOut(_:);
  v20 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v17, v19, v20);
  (*(v21 + 56))(v17, 0, 1, v20);
  v18(0, v17);
  sub_100075768(v17, &unk_100506F00, &qword_10040BE90);

  v22 = v2[1];

  return v22();
}

uint64_t sub_1001E3BD0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001E3C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 368) = v19;
  *(v8 + 376) = v20;
  *(v8 + 336) = v17;
  *(v8 + 352) = v18;
  *(v8 + 320) = v16;
  *(v8 + 737) = a8;
  *(v8 + 304) = a6;
  *(v8 + 312) = a7;
  *(v8 + 288) = a4;
  *(v8 + 296) = a5;
  sub_100068FC4(&unk_100506F00, &qword_10040BE90);
  *(v8 + 384) = swift_task_alloc();
  v9 = type metadata accessor for StateInternal.Discriminant();
  *(v8 + 392) = v9;
  *(v8 + 400) = *(v9 - 8);
  *(v8 + 408) = swift_task_alloc();
  v10 = type metadata accessor for StateInternal();
  *(v8 + 416) = v10;
  *(v8 + 424) = *(v10 - 8);
  *(v8 + 432) = swift_task_alloc();
  v11 = type metadata accessor for SEStorageManagementSheet.DisplayConfiguration();
  *(v8 + 440) = v11;
  *(v8 + 448) = *(v11 - 8);
  *(v8 + 456) = swift_task_alloc();
  v12 = type metadata accessor for SEStorageManagementSheet.ProvisioningDeviceConfiguration();
  *(v8 + 464) = v12;
  *(v8 + 472) = *(v12 - 8);
  *(v8 + 480) = swift_task_alloc();
  v13 = type metadata accessor for SEStorageManagementUIServerXPCParameters.Present();
  *(v8 + 488) = v13;
  *(v8 + 496) = *(v13 - 8);
  *(v8 + 504) = swift_task_alloc();

  return _swift_task_switch(sub_1001E3ECC, 0, 0);
}

uint64_t sub_1001E3ECC()
{
  v1 = v0[36];
  v2 = OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_passProvider;
  swift_beginAccess();
  sub_1000938D4(v1 + v2, (v0 + 18), &qword_100504A50, &unk_10040F9F0);
  v3 = v0[21];
  v0[64] = v3;
  if (v3)
  {
    v4 = v0[22];
    sub_1000752B0(v0 + 18, v3);
    v5 = *(v3 - 8);
    v0[65] = v5;
    v0[66] = swift_task_alloc();
    (*(v5 + 16))();
    sub_100075768((v0 + 18), &qword_100504A50, &unk_10040F9F0);
    v6 = swift_task_alloc();
    v0[67] = v6;
    *v6 = v0;
    v6[1] = sub_1001E4108;

    return dispatch thunk of SEStorageManagementPassProviding.passes.getter(v3, v4);
  }

  else
  {
    sub_100075768((v0 + 18), &qword_100504A50, &unk_10040F9F0);
    v7 = v0[36];
    v8 = OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_passEntries;
    v0[70] = OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_passEntries;
    *(v7 + v8) = _swiftEmptyArrayStorage;

    v9 = swift_task_alloc();
    v0[71] = v9;
    *v9 = v0;
    v9[1] = sub_1001E4348;

    return sub_1001F1638();
  }
}

uint64_t sub_1001E4108(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 520);
  v4[68] = v1;

  v6 = (v5 + 8);
  v7 = v4[66];
  v8 = v4[64];
  if (v1)
  {
    (*v6)(v7, v8);
    v9 = sub_1001E61C0;
  }

  else
  {
    v4[69] = a1;
    (*v6)(v7, v8);
    v9 = sub_1001E4294;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1001E4294()
{

  v1 = v0[69];
  v2 = v0[36];
  v3 = OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_passEntries;
  v0[70] = OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_passEntries;
  *(v2 + v3) = v1;

  v4 = swift_task_alloc();
  v0[71] = v4;
  *v4 = v0;
  v4[1] = sub_1001E4348;

  return sub_1001F1638();
}

uint64_t sub_1001E4348(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 576) = a1;
  *(v3 + 584) = v1;

  if (v1)
  {
    v4 = sub_1001E4724;
  }

  else
  {
    v4 = sub_1001E4460;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001E4460()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 456);
  v3 = *(v0 + 440);
  v4 = *(v0 + 448);
  v5 = *(v0 + 737);
  v6 = *(v0 + 304);
  v7 = *(v0 + 288);
  (*(*(v0 + 472) + 16))(*(v0 + 480), *(v0 + 296), *(v0 + 464));
  (*(v4 + 16))(v2, v6, v3);
  *(v0 + 592) = *(v7 + v1);
  if (v5 == 1)
  {

    v8 = swift_task_alloc();
    *(v0 + 600) = v8;
    *v8 = v0;
    v8[1] = sub_1001E4AF8;
    v9 = *(v0 + 320);

    return sub_1001E7CB8(v9);
  }

  else
  {
    v16 = *(v0 + 576);
    v11 = *(v0 + 496);
    v12 = *(v0 + 504);
    v13 = *(v0 + 488);

    SEStorageManagementUIServerXPCParameters.Present.init(deviceConfiguration:displayConfiguration:provisioning:passes:muirfieldApplications:eSimProfiles:secureElementCredentials:credentialConfigs:)();
    sub_1001F33F0(&unk_100506F10, &type metadata accessor for SEStorageManagementUIServerXPCParameters.Present, &protocol conformance descriptor for SEStorageManagementUIServerXPCParameters.Present);
    v14 = SESOpaqueObjectiveCBridgable<>._bridgeToObjectiveC()();
    *(v0 + 696) = v14;
    (*(v11 + 8))(v12, v13);
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_1001E55E8;
    v15 = swift_continuation_init();
    *(v0 + 136) = sub_100068FC4(&unk_100504290, &qword_10040B5A8);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1001E95B0;
    *(v0 + 104) = &unk_1004CB558;
    *(v0 + 112) = v15;
    [v16 present:v14 completionHandler:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }
}

uint64_t sub_1001E4724(uint64_t a1, uint64_t a2)
{
  v32 = v2;
  v3 = v2[73];
  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v4 = v2[36];
  v5 = type metadata accessor for Logger();
  sub_1000958E4(v5, qword_10051B240);
  v6 = v4;
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v2[36];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v10 = 136315394;
    v12 = v9;
    v13 = [v12 description];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_1002FFA0C(v14, v16, &v30);

    *(v10 + 4) = v17;
    *(v10 + 12) = 2112;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v18;
    *v11 = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s UIService error %@ while starting session", v10, 0x16u);
    sub_100075768(v11, &unk_100503F70, &unk_10040B2E0);

    sub_1000752F4(v29);
  }

  v19 = v2[48];
  v20 = v2[46];
  v30 = 0;
  v31 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);
  v21 = v31;
  v2[33] = v30;
  v2[34] = v21;
  v22._object = 0x8000000100466F40;
  v22._countAndFlagsBits = 0xD00000000000001ALL;
  String.append(_:)(v22);
  v2[35] = v3;
  sub_100068FC4(&unk_100503F80, &qword_100409CF0);
  _print_unlocked<A, B>(_:_:)();
  v23 = v2[34];
  *v19 = v2[33];
  v19[1] = v23;
  v24 = enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:);
  v25 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
  v26 = *(v25 - 8);
  (*(v26 + 104))(v19, v24, v25);
  (*(v26 + 56))(v19, 0, 1, v25);
  v20(0, v19);
  sub_100075768(v19, &unk_100506F00, &qword_10040BE90);
  Task.cancel()();

  v27 = v2[1];

  return v27();
}

uint64_t sub_1001E4AF8(uint64_t a1)
{
  v3 = *v2;
  v3[76] = a1;
  v3[77] = v1;

  if (v1)
  {
    v5 = v3[59];
    v4 = v3[60];
    v7 = v3[57];
    v6 = v3[58];
    v8 = v3[55];
    v9 = v3[56];
    swift_unknownObjectRelease();

    (*(v9 + 8))(v7, v8);
    (*(v5 + 8))(v4, v6);

    return _swift_task_switch(sub_1001E659C, 0, 0);
  }

  else
  {
    v10 = swift_task_alloc();
    v3[78] = v10;
    *v10 = v3;
    v10[1] = sub_1001E4CDC;

    return sub_1001E870C();
  }
}

uint64_t sub_1001E4CDC(uint64_t a1)
{
  v3 = *v2;
  v3[79] = a1;
  v3[80] = v1;

  if (v1)
  {
    v5 = v3[59];
    v4 = v3[60];
    v7 = v3[57];
    v6 = v3[58];
    v10 = v3 + 55;
    v8 = v3[55];
    v9 = v10[1];
    swift_unknownObjectRelease();

    (*(v9 + 8))(v7, v8);
    (*(v5 + 8))(v4, v6);
    v11 = sub_1001E6970;
  }

  else
  {
    v11 = sub_1001E4E68;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_1001E4E68()
{
  if (qword_100501DC8 != -1)
  {
    swift_once();
  }

  v1 = qword_10051B858;
  *(v0 + 648) = qword_10051B858;

  return _swift_task_switch(sub_1001E4F00, v1, 0);
}

uint64_t sub_1001E4F00()
{
  v1 = v0[80];
  v0[82] = sub_100362B68(0, 0);
  v0[83] = v1;
  if (v1)
  {
    v3 = v0[59];
    v2 = v0[60];
    v5 = v0[57];
    v4 = v0[58];
    v6 = v0[55];
    v7 = v0[56];
    swift_unknownObjectRelease();

    (*(v7 + 8))(v5, v6);
    (*(v3 + 8))(v2, v4);
    v8 = sub_1001E6D44;
  }

  else
  {
    v8 = sub_1001E5018;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1001E5018()
{
  v29 = v0;
  v1 = v0[82];
  v28 = _swiftEmptyArrayStorage;
  if (v1 >> 62)
  {
LABEL_22:
    v2 = _CocoaArrayWrapper.endIndex.getter();
    v3 = v0[82];
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = v1;
    if (v2)
    {
LABEL_3:
      v4 = 0;
      v5 = v0[50];
      v26 = v1 & 0xFFFFFFFFFFFFFF8;
      v27 = v1 & 0xC000000000000001;
      v22 = v3 + 32;
      v24 = (v5 + 88);
      v25 = (v0[53] + 8);
      v23 = enum case for StateInternal.Discriminant.installationPending(_:);
      v21 = enum case for StateInternal.Discriminant.installed(_:);
      v19 = enum case for StateInternal.Discriminant.locked(_:);
      v20 = enum case for StateInternal.Discriminant.installationFailed(_:);
      v18 = enum case for StateInternal.Discriminant.terminated(_:);
      v17 = (v5 + 8);
      while (1)
      {
        if (v27)
        {
          v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v7 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_19:
            __break(1u);
LABEL_20:
            v14 = v28;
            goto LABEL_24;
          }
        }

        else
        {
          if (v4 >= *(v26 + 16))
          {
            __break(1u);
            goto LABEL_22;
          }

          v6 = *(v22 + 8 * v4);
          v7 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_19;
          }
        }

        v8 = v0[54];
        v10 = v0[51];
        v9 = v0[52];
        v11 = v0[49];
        v12 = v6;
        CredentialInternal.state.getter();
        v1 = v8;
        StateInternal.discriminant.getter();
        (*v25)(v8, v9);
        v13 = (*v24)(v10, v11);
        if (v13 != v23)
        {
          if (v13 == v21)
          {
            goto LABEL_12;
          }

          if (v13 != v20)
          {
            if (v13 == v19 || v13 == v18)
            {
LABEL_12:

              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v1 = &v28;
              specialized ContiguousArray._endMutation()();
              goto LABEL_6;
            }

            (*v17)(v0[51], v0[49]);
          }
        }

LABEL_6:
        ++v4;
        if (v7 == v2)
        {
          goto LABEL_20;
        }
      }
    }
  }

  v14 = _swiftEmptyArrayStorage;
LABEL_24:
  v0[84] = v14;
  v15 = v0[81];

  return _swift_task_switch(sub_1001E52D8, v15, 0);
}

uint64_t sub_1001E52D8()
{
  v1 = v0[83];
  v0[85] = sub_100094934();
  v0[86] = v1;
  if (v1)
  {
    v2 = v0[59];
    v9 = v0[60];
    v4 = v0[57];
    v3 = v0[58];
    v6 = v0[55];
    v5 = v0[56];
    swift_unknownObjectRelease();

    (*(v5 + 8))(v4, v6);
    (*(v2 + 8))(v9, v3);
    v7 = sub_1001E7118;
  }

  else
  {
    v7 = sub_1001E53F8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1001E53F8()
{
  v1 = v0;
  v9 = v0[72];
  v2 = v0[62];
  v3 = v0[63];
  v4 = v0[61];

  SEStorageManagementUIServerXPCParameters.Present.init(deviceConfiguration:displayConfiguration:provisioning:passes:muirfieldApplications:eSimProfiles:secureElementCredentials:credentialConfigs:)();
  sub_1001F33F0(&unk_100506F10, &type metadata accessor for SEStorageManagementUIServerXPCParameters.Present, &protocol conformance descriptor for SEStorageManagementUIServerXPCParameters.Present);
  v5 = SESOpaqueObjectiveCBridgable<>._bridgeToObjectiveC()();
  v0[87] = v5;
  (*(v2 + 8))(v3, v4);
  v6 = v0 + 2;
  v0[2] = v0;
  v0[3] = sub_1001E55E8;
  v7 = swift_continuation_init();
  v1[17] = sub_100068FC4(&unk_100504290, &qword_10040B5A8);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_1001E95B0;
  v1[13] = &unk_1004CB558;
  v1[14] = v7;
  [v9 present:v5 completionHandler:?];

  return _swift_continuation_await(v6);
}

uint64_t sub_1001E55E8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 704) = v1;
  if (v1)
  {
    v2 = sub_1001E74EC;
  }

  else
  {
    v2 = sub_1001E56F8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001E56F8()
{
  v1 = *(v0 + 696);
  v2 = *(v0 + 312);
  v3 = *(v0 + 288);
  v7 = *(v0 + 328);
  v8 = *(v0 + 344);
  swift_unknownObjectRelease();

  v4 = swift_task_alloc();
  *(v0 + 712) = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *(v4 + 32) = v7;
  *(v4 + 48) = v8;
  v5 = swift_task_alloc();
  *(v0 + 720) = v5;
  *v5 = v0;
  v5[1] = sub_1001E5820;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 736, 0, 0, 0xD00000000000006FLL, 0x8000000100466F60, sub_1001F1C7C, v4, &type metadata for Bool);
}

uint64_t sub_1001E5820()
{
  *(*v1 + 728) = v0;

  if (v0)
  {
    v2 = sub_1001E78DC;
  }

  else
  {

    v2 = sub_1001E593C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001E593C(uint64_t a1, uint64_t a2)
{
  v76 = v2;
  p_class_meths = &OBJC_PROTOCOL___SESSessionInterface.class_meths;
  if (*(v2 + 736) == 1)
  {
    if (qword_100501938 != -1)
    {
      swift_once();
    }

    v4 = *(v2 + 288);
    v5 = type metadata accessor for Logger();
    sub_1000958E4(v5, qword_10051B240);
    v6 = v4;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v2 + 288);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v74 = v11;
      *v10 = 136315138;
      v12 = v9;
      v13 = [v12 description];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v17 = sub_1002FFA0C(v14, v16, &v74);

      *(v10 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v7, v8, "%s Remote presentation has started", v10, 0xCu);
      sub_1000752F4(v11);
    }

    v19 = *(v2 + 368);
    v18 = *(v2 + 376);
    p_class_meths = *(v2 + 288);
    v20 = *(p_class_meths + OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_state);

    os_unfair_lock_lock((v20 + 20));
    *(v20 + 16) = 1;
    os_unfair_lock_unlock((v20 + 20));

    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    Task.cancel()();
    v21 = (p_class_meths + OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_sufficientSpaceCompletion);
    v22 = *(p_class_meths + OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_sufficientSpaceCompletion);
    v23 = *(p_class_meths + OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_sufficientSpaceCompletion + 8);
    *v21 = v19;
    v21[1] = v18;

    sub_1000B2A4C(v22, v23);
    if (qword_100501D00 != -1)
    {
      swift_once();
    }

    v24 = sub_100068FC4(&qword_100506F28, &qword_10040F2B0);
    sub_1000958E4(v24, qword_10050A570);
    swift_beginAccess();
    v25 = UserDefaultBacked.wrappedValue.modify();
    if (*v26 != -1)
    {
      ++*v26;
      v25(v2 + 184, 0);
      swift_endAccess();
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_22;
  }

  if (qword_100501938 != -1)
  {
LABEL_22:
    swift_once();
  }

  v27 = *(v2 + 288);
  v28 = type metadata accessor for Logger();
  sub_1000958E4(v28, qword_10051B240);
  v29 = v27;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = *(v2 + 288);
    v33 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v74 = v72;
    *v33 = 136315138;
    v34 = v32;
    v35 = [v34 description];
    v36 = v28;
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    p_class_meths = &OBJC_PROTOCOL___SESSessionInterface.class_meths;
    v40 = v37;
    v28 = v36;
    v41 = sub_1002FFA0C(v40, v39, &v74);

    *(v33 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v30, v31, "Unable to present remote for presenter  %s", v33, 0xCu);
    sub_1000752F4(v72);
  }

  v42 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
  sub_1001F33F0(&qword_100506F20, &type metadata accessor for SEStorageManagementInternal.Types.ErrorCode, &protocol conformance descriptor for SEStorageManagementInternal.Types.ErrorCode);
  v43 = swift_allocError();
  *v44 = 0xD000000000000010;
  v44[1] = 0x8000000100466FD0;
  v45 = *(v42 - 8);
  v73 = enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:);
  v71 = *(v45 + 104);
  v71(v44);
  swift_willThrow();
  if (p_class_meths[295] != -1)
  {
    swift_once();
  }

  v46 = *(v2 + 288);
  sub_1000958E4(v28, qword_10051B240);
  v47 = v46;
  swift_errorRetain();
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = *(v2 + 288);
    v51 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v74 = v70;
    *v51 = 136315394;
    v68 = v49;
    v52 = v42;
    v53 = v45;
    v54 = v50;
    v55 = [v54 description];
    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v57;

    v45 = v53;
    v42 = v52;
    v59 = sub_1002FFA0C(v56, v58, &v74);

    *(v51 + 4) = v59;
    *(v51 + 12) = 2112;
    swift_errorRetain();
    v60 = _swift_stdlib_bridgeErrorToNSError();
    *(v51 + 14) = v60;
    *v69 = v60;
    _os_log_impl(&_mh_execute_header, v48, v68, "%s UIService error %@ while starting session", v51, 0x16u);
    sub_100075768(v69, &unk_100503F70, &unk_10040B2E0);

    sub_1000752F4(v70);
  }

  v61 = *(v2 + 384);
  v62 = *(v2 + 368);
  v74 = 0;
  v75 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);
  v63 = v75;
  *(v2 + 264) = v74;
  *(v2 + 272) = v63;
  v64._countAndFlagsBits = 0xD00000000000001ALL;
  v64._object = 0x8000000100466F40;
  String.append(_:)(v64);
  *(v2 + 280) = v43;
  sub_100068FC4(&unk_100503F80, &qword_100409CF0);
  _print_unlocked<A, B>(_:_:)();
  v65 = *(v2 + 272);
  *v61 = *(v2 + 264);
  v61[1] = v65;
  (v71)(v61, v73, v42);
  (*(v45 + 56))(v61, 0, 1, v42);
  v62(0, v61);
  sub_100075768(v61, &unk_100506F00, &qword_10040BE90);
  Task.cancel()();

LABEL_18:

  v66 = *(v2 + 8);

  return v66();
}

uint64_t sub_1001E61C0()
{
  v30 = v0;

  v1 = v0[68];
  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v2 = v0[36];
  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_10051B240);
  v4 = v2;
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[36];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v8 = 136315394;
    v10 = v7;
    v11 = [v10 description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_1002FFA0C(v12, v14, &v28);

    *(v8 + 4) = v15;
    *(v8 + 12) = 2112;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v16;
    *v9 = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s UIService error %@ while starting session", v8, 0x16u);
    sub_100075768(v9, &unk_100503F70, &unk_10040B2E0);

    sub_1000752F4(v27);
  }

  v17 = v0[48];
  v18 = v0[46];
  v28 = 0;
  v29 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);
  v19 = v29;
  v0[33] = v28;
  v0[34] = v19;
  v20._object = 0x8000000100466F40;
  v20._countAndFlagsBits = 0xD00000000000001ALL;
  String.append(_:)(v20);
  v0[35] = v1;
  sub_100068FC4(&unk_100503F80, &qword_100409CF0);
  _print_unlocked<A, B>(_:_:)();
  v21 = v0[34];
  *v17 = v0[33];
  v17[1] = v21;
  v22 = enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:);
  v23 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
  v24 = *(v23 - 8);
  (*(v24 + 104))(v17, v22, v23);
  (*(v24 + 56))(v17, 0, 1, v23);
  v18(0, v17);
  sub_100075768(v17, &unk_100506F00, &qword_10040BE90);
  Task.cancel()();

  v25 = v0[1];

  return v25();
}

uint64_t sub_1001E659C(uint64_t a1, uint64_t a2)
{
  v32 = v2;
  v3 = v2[77];
  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v4 = v2[36];
  v5 = type metadata accessor for Logger();
  sub_1000958E4(v5, qword_10051B240);
  v6 = v4;
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v2[36];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v10 = 136315394;
    v12 = v9;
    v13 = [v12 description];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_1002FFA0C(v14, v16, &v30);

    *(v10 + 4) = v17;
    *(v10 + 12) = 2112;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v18;
    *v11 = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s UIService error %@ while starting session", v10, 0x16u);
    sub_100075768(v11, &unk_100503F70, &unk_10040B2E0);

    sub_1000752F4(v29);
  }

  v19 = v2[48];
  v20 = v2[46];
  v30 = 0;
  v31 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);
  v21 = v31;
  v2[33] = v30;
  v2[34] = v21;
  v22._object = 0x8000000100466F40;
  v22._countAndFlagsBits = 0xD00000000000001ALL;
  String.append(_:)(v22);
  v2[35] = v3;
  sub_100068FC4(&unk_100503F80, &qword_100409CF0);
  _print_unlocked<A, B>(_:_:)();
  v23 = v2[34];
  *v19 = v2[33];
  v19[1] = v23;
  v24 = enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:);
  v25 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
  v26 = *(v25 - 8);
  (*(v26 + 104))(v19, v24, v25);
  (*(v26 + 56))(v19, 0, 1, v25);
  v20(0, v19);
  sub_100075768(v19, &unk_100506F00, &qword_10040BE90);
  Task.cancel()();

  v27 = v2[1];

  return v27();
}

uint64_t sub_1001E6970(uint64_t a1, uint64_t a2)
{
  v32 = v2;
  v3 = v2[80];
  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v4 = v2[36];
  v5 = type metadata accessor for Logger();
  sub_1000958E4(v5, qword_10051B240);
  v6 = v4;
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v2[36];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v10 = 136315394;
    v12 = v9;
    v13 = [v12 description];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_1002FFA0C(v14, v16, &v30);

    *(v10 + 4) = v17;
    *(v10 + 12) = 2112;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v18;
    *v11 = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s UIService error %@ while starting session", v10, 0x16u);
    sub_100075768(v11, &unk_100503F70, &unk_10040B2E0);

    sub_1000752F4(v29);
  }

  v19 = v2[48];
  v20 = v2[46];
  v30 = 0;
  v31 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);
  v21 = v31;
  v2[33] = v30;
  v2[34] = v21;
  v22._object = 0x8000000100466F40;
  v22._countAndFlagsBits = 0xD00000000000001ALL;
  String.append(_:)(v22);
  v2[35] = v3;
  sub_100068FC4(&unk_100503F80, &qword_100409CF0);
  _print_unlocked<A, B>(_:_:)();
  v23 = v2[34];
  *v19 = v2[33];
  v19[1] = v23;
  v24 = enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:);
  v25 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
  v26 = *(v25 - 8);
  (*(v26 + 104))(v19, v24, v25);
  (*(v26 + 56))(v19, 0, 1, v25);
  v20(0, v19);
  sub_100075768(v19, &unk_100506F00, &qword_10040BE90);
  Task.cancel()();

  v27 = v2[1];

  return v27();
}

uint64_t sub_1001E6D44(uint64_t a1, uint64_t a2)
{
  v32 = v2;
  v3 = v2[83];
  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v4 = v2[36];
  v5 = type metadata accessor for Logger();
  sub_1000958E4(v5, qword_10051B240);
  v6 = v4;
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v2[36];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v10 = 136315394;
    v12 = v9;
    v13 = [v12 description];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_1002FFA0C(v14, v16, &v30);

    *(v10 + 4) = v17;
    *(v10 + 12) = 2112;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v18;
    *v11 = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s UIService error %@ while starting session", v10, 0x16u);
    sub_100075768(v11, &unk_100503F70, &unk_10040B2E0);

    sub_1000752F4(v29);
  }

  v19 = v2[48];
  v20 = v2[46];
  v30 = 0;
  v31 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);
  v21 = v31;
  v2[33] = v30;
  v2[34] = v21;
  v22._object = 0x8000000100466F40;
  v22._countAndFlagsBits = 0xD00000000000001ALL;
  String.append(_:)(v22);
  v2[35] = v3;
  sub_100068FC4(&unk_100503F80, &qword_100409CF0);
  _print_unlocked<A, B>(_:_:)();
  v23 = v2[34];
  *v19 = v2[33];
  v19[1] = v23;
  v24 = enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:);
  v25 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
  v26 = *(v25 - 8);
  (*(v26 + 104))(v19, v24, v25);
  (*(v26 + 56))(v19, 0, 1, v25);
  v20(0, v19);
  sub_100075768(v19, &unk_100506F00, &qword_10040BE90);
  Task.cancel()();

  v27 = v2[1];

  return v27();
}

uint64_t sub_1001E7118(uint64_t a1, uint64_t a2)
{
  v32 = v2;
  v3 = v2[86];
  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v4 = v2[36];
  v5 = type metadata accessor for Logger();
  sub_1000958E4(v5, qword_10051B240);
  v6 = v4;
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v2[36];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v10 = 136315394;
    v12 = v9;
    v13 = [v12 description];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_1002FFA0C(v14, v16, &v30);

    *(v10 + 4) = v17;
    *(v10 + 12) = 2112;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v18;
    *v11 = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s UIService error %@ while starting session", v10, 0x16u);
    sub_100075768(v11, &unk_100503F70, &unk_10040B2E0);

    sub_1000752F4(v29);
  }

  v19 = v2[48];
  v20 = v2[46];
  v30 = 0;
  v31 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);
  v21 = v31;
  v2[33] = v30;
  v2[34] = v21;
  v22._object = 0x8000000100466F40;
  v22._countAndFlagsBits = 0xD00000000000001ALL;
  String.append(_:)(v22);
  v2[35] = v3;
  sub_100068FC4(&unk_100503F80, &qword_100409CF0);
  _print_unlocked<A, B>(_:_:)();
  v23 = v2[34];
  *v19 = v2[33];
  v19[1] = v23;
  v24 = enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:);
  v25 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
  v26 = *(v25 - 8);
  (*(v26 + 104))(v19, v24, v25);
  (*(v26 + 56))(v19, 0, 1, v25);
  v20(0, v19);
  sub_100075768(v19, &unk_100506F00, &qword_10040BE90);
  Task.cancel()();

  v27 = v2[1];

  return v27();
}

uint64_t sub_1001E74EC(uint64_t a1)
{
  v32 = v1;
  v2 = v1[87];
  swift_willThrow();
  swift_unknownObjectRelease();

  v3 = v1[88];
  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v4 = v1[36];
  v5 = type metadata accessor for Logger();
  sub_1000958E4(v5, qword_10051B240);
  v6 = v4;
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v1[36];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v10 = 136315394;
    v12 = v9;
    v13 = [v12 description];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_1002FFA0C(v14, v16, &v30);

    *(v10 + 4) = v17;
    *(v10 + 12) = 2112;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v18;
    *v11 = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s UIService error %@ while starting session", v10, 0x16u);
    sub_100075768(v11, &unk_100503F70, &unk_10040B2E0);

    sub_1000752F4(v29);
  }

  v19 = v1[48];
  v20 = v1[46];
  v30 = 0;
  v31 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);
  v21 = v31;
  v1[33] = v30;
  v1[34] = v21;
  v22._object = 0x8000000100466F40;
  v22._countAndFlagsBits = 0xD00000000000001ALL;
  String.append(_:)(v22);
  v1[35] = v3;
  sub_100068FC4(&unk_100503F80, &qword_100409CF0);
  _print_unlocked<A, B>(_:_:)();
  v23 = v1[34];
  *v19 = v1[33];
  v19[1] = v23;
  v24 = enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:);
  v25 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
  v26 = *(v25 - 8);
  (*(v26 + 104))(v19, v24, v25);
  (*(v26 + 56))(v19, 0, 1, v25);
  v20(0, v19);
  sub_100075768(v19, &unk_100506F00, &qword_10040BE90);
  Task.cancel()();

  v27 = v1[1];

  return v27();
}

uint64_t sub_1001E78DC()
{
  v30 = v0;

  v1 = v0[91];
  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v2 = v0[36];
  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_10051B240);
  v4 = v2;
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[36];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v8 = 136315394;
    v10 = v7;
    v11 = [v10 description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_1002FFA0C(v12, v14, &v28);

    *(v8 + 4) = v15;
    *(v8 + 12) = 2112;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v16;
    *v9 = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s UIService error %@ while starting session", v8, 0x16u);
    sub_100075768(v9, &unk_100503F70, &unk_10040B2E0);

    sub_1000752F4(v27);
  }

  v17 = v0[48];
  v18 = v0[46];
  v28 = 0;
  v29 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);
  v19 = v29;
  v0[33] = v28;
  v0[34] = v19;
  v20._object = 0x8000000100466F40;
  v20._countAndFlagsBits = 0xD00000000000001ALL;
  String.append(_:)(v20);
  v0[35] = v1;
  sub_100068FC4(&unk_100503F80, &qword_100409CF0);
  _print_unlocked<A, B>(_:_:)();
  v21 = v0[34];
  *v17 = v0[33];
  v17[1] = v21;
  v22 = enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:);
  v23 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
  v24 = *(v23 - 8);
  (*(v24 + 104))(v17, v22, v23);
  (*(v24 + 56))(v17, 0, 1, v23);
  v18(0, v17);
  sub_100075768(v17, &unk_100506F00, &qword_10040BE90);
  Task.cancel()();

  v25 = v0[1];

  return v25();
}

uint64_t sub_1001E7CB8(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  sub_100068FC4(&qword_1005031F0, &unk_10040C4C0);
  v2[12] = swift_task_alloc();
  sub_100068FC4(&qword_100506F60, &qword_10040F2F0);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v3 = type metadata accessor for SEStorageManagementViewModel.ApplicationInfo();
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v4 = type metadata accessor for CredentialType();
  v2[19] = v4;
  v2[20] = *(v4 - 8);
  v2[21] = swift_task_alloc();

  return _swift_task_switch(sub_1001E7E5C, 0, 0);
}

uint64_t sub_1001E7E5C()
{
  v61 = v0;
  (*(v0[20] + 104))(v0[21], enum case for CredentialType.muirfield(_:), v0[19]);
  v10 = SESnapshot.usage(ofInstance:)();
  (*(v0[20] + 8))(v0[21], v0[19]);
  swift_beginAccess();
  sub_100068FC4(&qword_100506F68, &qword_10040F2F8);
  UserDefaultBacked.wrappedValue.getter();
  v11 = v0[8];
  swift_endAccess();
  v12 = *(v11 + 16);

  if (!v12)
  {
    v26 = *(v0[11] + OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_softPOSManager);
    if (!v26 || v10 < 1)
    {
      v59 = _swiftEmptyArrayStorage;
LABEL_50:

      v47 = v0[1];

      return v47(v59);
    }

    v48 = v26;
    v27 = [v48 applicationRecords];
    sub_10009393C(0, &qword_100506F70, SPRApplicationRecord_ptr);
    v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v28 >> 62)
    {
      v29 = _CocoaArrayWrapper.endIndex.getter();
      if (v29)
      {
LABEL_24:
        v30 = 0;
        v31 = v0[16];
        v54 = v28 & 0xFFFFFFFFFFFFFF8;
        v56 = v28 & 0xC000000000000001;
        v49 = v31;
        v50 = (v31 + 32);
        v51 = (v31 + 48);
        v59 = _swiftEmptyArrayStorage;
        v52 = v29;
        v53 = v28;
        while (1)
        {
          if (v56)
          {
            v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v30 >= *(v54 + 16))
            {
              goto LABEL_45;
            }

            v32 = *(v28 + 8 * v30 + 32);
          }

          v33 = v32;
          if (__OFADD__(v30, 1))
          {
            goto LABEL_44;
          }

          v58 = v30 + 1;
          v34 = [v32 bundleID];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v35 = [v33 lastUsedDate];
          if (v35)
          {
            v36 = v35;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v37 = 0;
          }

          else
          {
            v37 = 1;
          }

          v38 = v0[15];
          v39 = v0[12];
          v40 = v0[13];
          v41 = type metadata accessor for Date();
          (*(*(v41 - 8) + 56))(v39, v37, 1, v41);
          SEStorageManagementViewModel.ApplicationInfo.init(bundleId:lastUsedDate:)();

          if ((*v51)(v40, 1, v38) == 1)
          {
            sub_100075768(v0[13], &qword_100506F60, &qword_10040F2F0);
          }

          else
          {
            v42 = *v50;
            (*v50)(v0[17], v0[13], v0[15]);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v59 = sub_10012FC20(0, *(v59 + 2) + 1, 1, v59);
            }

            v44 = *(v59 + 2);
            v43 = *(v59 + 3);
            if (v44 >= v43 >> 1)
            {
              v59 = sub_10012FC20((v43 > 1), v44 + 1, 1, v59);
            }

            v45 = v0[17];
            v46 = v0[15];
            *(v59 + 2) = v44 + 1;
            v42(&v59[((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v44], v45, v46);
          }

          v28 = v53;
          ++v30;
          if (v58 == v52)
          {
            goto LABEL_48;
          }
        }
      }
    }

    else
    {
      v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v29)
      {
        goto LABEL_24;
      }
    }

    v59 = _swiftEmptyArrayStorage;
LABEL_48:

    goto LABEL_49;
  }

  swift_beginAccess();
  UserDefaultBacked.wrappedValue.getter();
  v13 = v0[9];
  swift_endAccess();
  v57 = *(v13 + 16);
  if (!v57)
  {
    v59 = _swiftEmptyArrayStorage;
LABEL_49:

    goto LABEL_50;
  }

  v14 = 0;
  v15 = v0[16];
  v16 = (v15 + 48);
  v55 = v15;
  v17 = (v15 + 32);
  v18 = v13 + 40;
  v59 = _swiftEmptyArrayStorage;
  while (v14 < *(v13 + 16))
  {
    v20 = v0[14];
    v19 = v0[15];

    SEStorageManagementViewModel.ApplicationInfo.init(bundleId:)();
    if ((*v16)(v20, 1, v19) == 1)
    {
      sub_100075768(v0[14], &qword_100506F60, &qword_10040F2F0);
    }

    else
    {
      v21 = *v17;
      (*v17)(v0[18], v0[14], v0[15]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v59 = sub_10012FC20(0, *(v59 + 2) + 1, 1, v59);
      }

      v23 = *(v59 + 2);
      v22 = *(v59 + 3);
      if (v23 >= v22 >> 1)
      {
        v59 = sub_10012FC20((v22 > 1), v23 + 1, 1, v59);
      }

      v24 = v0[18];
      v25 = v0[15];
      *(v59 + 2) = v23 + 1;
      v21(&v59[((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v23], v24, v25);
    }

    ++v14;
    v18 += 16;
    if (v57 == v14)
    {
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  swift_once();
  v1 = type metadata accessor for Logger();
  sub_1000958E4(v1, qword_10051B240);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v60 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1002FFA0C(0xD00000000000001BLL, 0x8000000100467050, &v60);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s Unable to get muirfield size", v4, 0xCu);
    sub_1000752F4(v5);
  }

  v6 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
  sub_1001F33F0(&qword_100506F20, &type metadata accessor for SEStorageManagementInternal.Types.ErrorCode, &protocol conformance descriptor for SEStorageManagementInternal.Types.ErrorCode);
  swift_allocError();
  *v7 = 0xD00000000000001CLL;
  v7[1] = 0x8000000100467030;
  (*(*(v6 - 8) + 104))(v7, enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:), v6);
  swift_willThrow();

  v8 = v0[1];

  return v8();
}

uint64_t sub_1001E870C()
{
  v1[19] = v0;
  sub_100068FC4(&unk_100506F30, &unk_10040F2C8);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v2 = type metadata accessor for SEStorageManagementViewModel.ESimProfile();
  v1[23] = v2;
  v1[24] = *(v2 - 8);
  v1[25] = swift_task_alloc();
  v3 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  v1[26] = v3;
  v1[27] = *(v3 - 8);
  v1[28] = swift_task_alloc();

  return _swift_task_switch(sub_1001E8884, 0, 0);
}

uint64_t sub_1001E8884()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v0 + 208);
  (*(v2 + 16))(v1, *(v0 + 152) + OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter__useMockESimProfiles, v3);
  UserDefaultBacked.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  if ((*(v0 + 248) & 1) == 0)
  {
    v17 = objc_opt_self();
    if ([v17 isConvergedEUICCProduct])
    {
      if (qword_100501938 == -1)
      {
LABEL_7:
        v18 = type metadata accessor for Logger();
        *(v0 + 232) = sub_1000958E4(v18, qword_10051B240);
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&_mh_execute_header, v19, v20, "Converged eUICC enabled platform, fetching telephony plans.", v21, 2u);
        }

        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 144;
        *(v0 + 24) = sub_1001E8FAC;
        v22 = swift_continuation_init();
        *(v0 + 136) = sub_100068FC4(&unk_100506F40, &qword_10040F2D8);
        *(v0 + 80) = _NSConcreteStackBlock;
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = sub_1001EAA44;
        *(v0 + 104) = &unk_1004CB580;
        *(v0 + 112) = v22;
        [v17 telephonyPlansWithCompletion:v0 + 80];
        v11 = v0 + 16;

        return _swift_continuation_await(v11);
      }
    }

    else
    {
      if (qword_100501938 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_1000958E4(v23, qword_10051B240);
      v24 = Logger.logObject.getter();
      v17 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v24, v17))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v24, v17, "Non-Converged eUICC enabled platform, DO NOT FETCH telephony plans.", v25, 2u);
      }

      if (_swiftEmptyArrayStorage >> 62)
      {
        v26 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v26 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v26)
      {
        v16 = _swiftEmptyArrayStorage;
LABEL_34:

        goto LABEL_35;
      }

      v27 = 0;
      v28 = *(v0 + 192);
      v42 = v28;
      v43 = (v28 + 32);
      v44 = (v28 + 48);
      v16 = _swiftEmptyArrayStorage;
      v45 = v26;
      while (1)
      {
        if (_swiftEmptyArrayStorage >> 62)
        {
          v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v27 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_39;
          }

          v30 = _swiftEmptyArrayStorage[v27 + 4];
        }

        v31 = v30;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        v46 = v16;
        v33 = *(v0 + 176);
        v32 = *(v0 + 184);
        v34 = [v30 iccid];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v35 = [v31 label];
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        SEStorageManagementViewModel.ESimProfile.init(iccid:ctUserLabel:)();
        if ((*v44)(v33, 1, v32) == 1)
        {
          sub_100075768(*(v0 + 176), &unk_100506F30, &unk_10040F2C8);
          v29 = v27 + 1;
          v16 = v46;
        }

        else
        {
          v36 = *v43;
          (*v43)(*(v0 + 200), *(v0 + 176), *(v0 + 184));
          v16 = v46;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = sub_10012FC48(0, v46[2] + 1, 1, v46);
          }

          v29 = v27 + 1;
          v17 = v16[2];
          v37 = v16[3];
          if (v17 >= v37 >> 1)
          {
            v16 = sub_10012FC48((v37 > 1), v17 + 1, 1, v16);
          }

          v38 = *(v0 + 200);
          v39 = *(v0 + 184);
          v16[2] = v17 + 1;
          v36(v16 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v17, v38, v39);
        }

        ++v27;
        if (v29 == v45)
        {
          goto LABEL_34;
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
    }

    swift_once();
    goto LABEL_7;
  }

  v4 = *(v0 + 184);
  v5 = *(v0 + 192);
  v6 = *(v0 + 168);
  sub_100068FC4(&qword_1005043B8, &unk_10040F2E0);
  v7 = *(v5 + 72);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100409900;
  SEStorageManagementViewModel.ESimProfile.init(iccid:ctUserLabel:)();
  v10 = *(v5 + 48);
  v11 = v10(v6, 1, v4);
  if (v11 == 1)
  {
    __break(1u);
    goto LABEL_43;
  }

  v12 = v9 + v8;
  v13 = *(v0 + 184);
  v14 = *(v0 + 160);
  v15 = *(*(v0 + 192) + 32);
  v15(v12, *(v0 + 168), v13);
  SEStorageManagementViewModel.ESimProfile.init(iccid:ctUserLabel:)();
  v11 = v10(v14, 1, v13);
  if (v11 == 1)
  {
LABEL_43:
    __break(1u);
    return _swift_continuation_await(v11);
  }

  v15(v12 + v7, *(v0 + 160), *(v0 + 184));
  v16 = v9;
LABEL_35:

  v40 = *(v0 + 8);

  return v40(v16);
}

uint64_t sub_1001E8FAC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 240) = v1;
  if (v1)
  {
    v2 = sub_1001E93C4;
  }

  else
  {
    v2 = sub_1001E90BC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001E90BC()
{
  v1 = v0[18];
  if (v1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    v4 = v0[24];
    v25 = v1 & 0xFFFFFFFFFFFFFF8;
    v26 = v1 & 0xC000000000000001;
    v20 = v4;
    v21 = (v4 + 32);
    v22 = (v4 + 48);
    v27 = _swiftEmptyArrayStorage;
    v23 = i;
    v24 = v1;
    while (1)
    {
      if (v26)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *(v25 + 16))
        {
          goto LABEL_18;
        }

        v7 = *(v1 + 8 * v3 + 32);
      }

      v8 = v7;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v10 = v0[22];
      v9 = v0[23];
      v11 = [v7 iccid];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v12 = [v8 label];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      SEStorageManagementViewModel.ESimProfile.init(iccid:ctUserLabel:)();
      if ((*v22)(v10, 1, v9) == 1)
      {
        sub_100075768(v0[22], &unk_100506F30, &unk_10040F2C8);
        v5 = v23;
        v1 = v24;
        v6 = v3 + 1;
      }

      else
      {
        v13 = *v21;
        (*v21)(v0[25], v0[22], v0[23]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_10012FC48(0, *(v27 + 2) + 1, 1, v27);
        }

        v6 = v3 + 1;
        v15 = *(v27 + 2);
        v14 = *(v27 + 3);
        if (v15 >= v14 >> 1)
        {
          v27 = sub_10012FC48((v14 > 1), v15 + 1, 1, v27);
        }

        v16 = v0[25];
        v17 = v0[23];
        *(v27 + 2) = v15 + 1;
        v13(&v27[((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v15], v16, v17);
        v5 = v23;
        v1 = v24;
      }

      ++v3;
      if (v6 == v5)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v27 = _swiftEmptyArrayStorage;
LABEL_21:

  v18 = v0[1];

  return v18(v27);
}

uint64_t sub_1001E93C4(uint64_t a1)
{
  swift_willThrow();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Unable to fetch telephony plans", v4, 2u);
  }

  v5 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
  sub_1001F33F0(&qword_100506F20, &type metadata accessor for SEStorageManagementInternal.Types.ErrorCode, &protocol conformance descriptor for SEStorageManagementInternal.Types.ErrorCode);
  swift_allocError();
  *v6 = 0xD00000000000001FLL;
  v6[1] = 0x8000000100467010;
  (*(*(v5 - 8) + 104))(v6, enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:), v5);
  swift_willThrow();

  v7 = *(v1 + 8);

  return v7();
}

uint64_t sub_1001E95B0(uint64_t a1, void *a2)
{
  v3 = sub_1000752B0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t sub_1001E965C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, NSObject *), uint64_t a6, unint64_t a7)
{
  v20 = a2;
  v21 = a7;
  v12 = sub_100068FC4(&qword_100506F78, &qword_10040F300);
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v20 - v15;
  (*(v13 + 16))(&v20 - v15, a1, v12, v14);
  v17 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v18 = swift_allocObject();
  (*(v13 + 32))(v18 + v17, v16, v12);
  sub_1001E9A38(a3, a4, a5, a6, v21, sub_1001F1C90, v18);
}

uint64_t sub_1001E97D4(char a1, uint64_t a2)
{
  v4 = sub_100068FC4(&unk_100506F00, &qword_10040BE90);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000938D4(a2, v6, &unk_100506F00, &qword_10040BE90);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100075768(v6, &unk_100506F00, &qword_10040BE90);
    v15 = a1 & 1;
    sub_100068FC4(&qword_100506F78, &qword_10040F300);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    sub_1001F33F0(&qword_100506F20, &type metadata accessor for SEStorageManagementInternal.Types.ErrorCode, &protocol conformance descriptor for SEStorageManagementInternal.Types.ErrorCode);
    v12 = swift_allocError();
    (*(v8 + 16))(v13, v10, v7);
    v14 = v12;
    sub_100068FC4(&qword_100506F78, &qword_10040F300);
    CheckedContinuation.resume(throwing:)();
    return (*(v8 + 8))(v10, v7);
  }
}

void sub_1001E9A38(uint64_t a1, uint64_t a2, void (*a3)(void, NSObject *), uint64_t a4, unint64_t a5, void (*a6)(void, NSObject *), uint64_t a7)
{
  v8 = v7;
  v140 = a1;
  v141 = a3;
  v133 = a2;
  v13 = sub_100068FC4(&unk_100506F00, &qword_10040BE90);
  __chkstk_darwin(v13 - 8);
  v15 = (&v121 - v14);
  v138 = type metadata accessor for SEStorageManagementSheet.ProposedCredentialType.Discriminant();
  v16 = *(v138 - 8);
  __chkstk_darwin(v138);
  v137 = &v121 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v136 = &v121 - v19;
  v135 = type metadata accessor for SEStorageManagementSheet.ProposedCredentialType();
  v139 = *(v135 - 8);
  __chkstk_darwin(v135);
  v134 = &v121 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = &v7[OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_startCallback];
  v22 = *&v7[OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_startCallback];
  v23 = v21[1];
  *v21 = a6;
  v21[1] = a7;

  sub_1000B2A4C(v22, v23);
  v127 = OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_handle;
  [*&v8[OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_handle] registerObserver:v8];
  if (a5)
  {
    v130 = v16;
    v131 = v21;
    v132 = v15;
    sub_10009393C(0, &qword_100506F80, RBSProcessHandle_ptr);
    v24 = String._bridgeToObjectiveC()();
    v25 = [objc_opt_self() predicateMatchingBundleIdentifier:v24];

    v49 = sub_1001F0324(v25);
    v50 = [objc_opt_self() legacyHandle:v49];
    if (v50)
    {
      v51 = v50;
      v52 = [objc_opt_self() predicateForProcess:v50];
      v53 = v130;
      v54 = v141;
      if (v141)
      {
        if (qword_100501938 != -1)
        {
          swift_once();
        }

        v55 = type metadata accessor for Logger();
        sub_1000958E4(v55, qword_10051B240);
        v56 = v8;

        v57 = Logger.logObject.getter();
        v58 = static os_log_type_t.debug.getter();

        v132 = v57;
        v59 = os_log_type_enabled(v57, v58);
        v60 = v133;
        if (v59)
        {
          v61 = swift_slowAlloc();
          v131 = swift_slowAlloc();
          v142[0] = v131;
          *v61 = 136315394;
          *(v61 + 4) = sub_1002FFA0C(v60, v54, v142);
          *(v61 + 12) = 2080;
          v62 = v56;
          v63 = [v62 description];
          v129 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v65 = v64;

          v66 = sub_1002FFA0C(v129, v65, v142);

          *(v61 + 14) = v66;
          v67 = v132;
          _os_log_impl(&_mh_execute_header, v132, v58, "Setting scene identifier %s to presenter %s", v61, 0x16u);
          swift_arrayDestroy();

          v53 = v130;
        }

        else
        {
        }

        v82 = String._bridgeToObjectiveC()();
        [v52 setScenePersistentIdentifier:v82];
      }

      v124 = v51;
      v125 = v8;
      v126 = v49;
      v83 = objc_allocWithZone(SBSRemoteAlertPresentationTarget);
      v123 = v52;
      v122 = [v83 initWithTargetPredicate:v52];
      [v122 setShouldDismissInSwitcher:0];
      v84 = 0;
      v85 = *(v140 + 16);
      v132 = v139 + 2;
      v133 = v85;
      LODWORD(v131) = enum case for SEStorageManagementSheet.ProposedCredentialType.Discriminant.vienna(_:);
      v129 = v53 + 1;
      v130 = v53 + 13;
      v128 = v139 + 1;
      v86 = v135;
      v87 = v138;
      v88 = (v53 + 1);
      do
      {
        v89 = v84;
        if (v133 == v84)
        {
          break;
        }

        v90 = v139;
        v91 = v134;
        (v139[2].isa)(v134, v140 + ((LOBYTE(v90[10].isa) + 32) & ~LOBYTE(v90[10].isa)) + v90[9].isa * v84++, v86);
        v92 = v136;
        SEStorageManagementSheet.ProposedCredentialType.discriminant.getter();
        v93 = v137;
        (*v130)(v137, v131, v87);
        LODWORD(v141) = static SEStorageManagementSheet.ProposedCredentialType.Discriminant.== infix(_:_:)();
        v94 = *v88;
        (*v88)(v93, v87);
        v94(v92, v87);
        (v90[1].isa)(v91, v86);
      }

      while ((v141 & 1) == 0);
      v95 = v122;
      [v122 setShouldDismissOnUILock:v133 != v89];
      v96 = [objc_allocWithZone(SBSRemoteAlertActivationContext) init];
      [v96 setPresentationTarget:v95];
      if (qword_100501938 != -1)
      {
        swift_once();
      }

      v97 = type metadata accessor for Logger();
      sub_1000958E4(v97, qword_10051B240);
      v98 = v125;
      v99 = v125;
      v100 = Logger.logObject.getter();
      v101 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v100, v101))
      {
        v102 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        v142[0] = v103;
        *v102 = 136315138;
        v104 = v99;
        v105 = [v104 description];
        v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v108 = v107;

        v109 = sub_1002FFA0C(v106, v108, v142);
        v98 = v125;

        *(v102 + 4) = v109;
        _os_log_impl(&_mh_execute_header, v100, v101, "%s activating remote presentation", v102, 0xCu);
        sub_1000752F4(v103);
      }

      v110 = v126;
      v111 = v123;
      v112 = *&v98[v127];
      v113 = v96;
      [v112 activateWithContext:v113];
    }

    else
    {
      v141 = a6;
      if (qword_100501938 != -1)
      {
        swift_once();
      }

      v68 = type metadata accessor for Logger();
      sub_1000958E4(v68, qword_10051B240);
      v69 = v8;

      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v126 = v49;
        v140 = v73;
        v142[0] = v73;
        *v72 = 136315394;
        *(v72 + 4) = sub_1002FFA0C(a4, a5, v142);
        *(v72 + 12) = 2080;
        v74 = v69;
        v75 = [v74 description];
        v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v78 = v77;

        v79 = v127;
        v80 = sub_1002FFA0C(v76, v78, v142);

        *(v72 + 14) = v80;
        _os_log_impl(&_mh_execute_header, v70, v71, "Unable to get legacy handle for %s in presenter %s", v72, 0x16u);
        swift_arrayDestroy();
        v49 = v126;

        v81 = v132;
      }

      else
      {

        v81 = v132;
        v79 = v127;
      }

      v81->isa = 0xD000000000000011;
      v81[1].isa = 0x8000000100467070;
      v114 = enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:);
      v115 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
      v116 = *(v115 - 8);
      (*(v116 + 104))(v81, v114, v115);
      (*(v116 + 56))(v81, 0, 1, v115);
      v141(0, v81);
      sub_100075768(v81, &unk_100506F00, &qword_10040BE90);
      v117 = v131;
      v118 = *v131;
      v119 = v131[1];
      *v131 = 0;
      v117[1] = 0;
      sub_1000B2A4C(v118, v119);
      v120 = *&v8[v79];
      [v120 invalidate];
    }
  }

  else
  {
    if (qword_100501938 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_1000958E4(v26, qword_10051B240);
    v27 = v8;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    v30 = os_log_type_enabled(v28, v29);
    v31 = v127;
    if (v30)
    {
      v32 = swift_slowAlloc();
      v142[0] = swift_slowAlloc();
      *v32 = 136315394;
      v33 = v27;
      v34 = [v33 description];
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      v38 = sub_1002FFA0C(v35, v37, v142);

      *(v32 + 4) = v38;
      *(v32 + 12) = 2080;
      v39 = v33;
      v40 = [v39 description];
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;

      v44 = sub_1002FFA0C(v41, v43, v142);

      *(v32 + 14) = v44;
      _os_log_impl(&_mh_execute_header, v28, v29, "%s activating remote presentation without host identifier in presenter %s", v32, 0x16u);
      swift_arrayDestroy();
    }

    v45 = *&v8[v31];
    v46 = objc_allocWithZone(SBSRemoteAlertActivationContext);
    v47 = v45;
    v141 = [v46 init];
    [v47 activateWithContext:v141];

    v48 = v141;
  }
}

uint64_t sub_1001EAA44(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_1000752B0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_10009393C(0, &unk_100506F50, off_1004BE538);
    **(*(v4 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return _swift_continuation_throwingResume(v4);
  }
}

id sub_1001EAB34(uint64_t a1, uint64_t a2)
{
  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_10051B240);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    v9 = v4;
    v10 = [v9 description];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = sub_1002FFA0C(v11, v13, &v17);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s deactivating remote presentation", v7, 0xCu);
    sub_1000752F4(v8);
  }

  v15 = *&v4[OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_handle];

  return [v15 invalidate];
}

uint64_t sub_1001EACE8(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  v4 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry();
  v3[18] = v4;
  v3[19] = *(v4 - 8);
  v3[20] = swift_task_alloc();
  v5 = type metadata accessor for SEStorageManagementUIClientXPCParameters.DeletePass();
  v3[21] = v5;
  v3[22] = *(v5 - 8);
  v3[23] = swift_task_alloc();

  return _swift_task_switch(sub_1001EAE08, 0, 0);
}

uint64_t sub_1001EAE08(uint64_t a1, uint64_t a2)
{
  v60 = v2;
  v3 = v2;
  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v5 = v2[22];
  v4 = v3[23];
  v6 = v3[21];
  v7 = v3[16];
  v8 = type metadata accessor for Logger();
  sub_1000958E4(v8, qword_10051B240);
  (*(v5 + 16))(v4, v7, v6);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v3[23];
  if (v11)
  {
    v55 = v10;
    v13 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v58 = v53;
    buf = v13;
    *v13 = 136315138;
    v14 = SEStorageManagementUIClientXPCParameters.DeletePass.passesToDelete.getter();
    v15 = *(v14 + 16);
    if (v15)
    {
      v52 = v9;
      v16 = v3[19];
      v59 = _swiftEmptyArrayStorage;
      sub_10019F3C0(0, v15, 0);
      v17 = _swiftEmptyArrayStorage;
      v18 = *(v16 + 16);
      v16 += 16;
      v19 = v14 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
      v56 = *(v16 + 56);
      v57 = v18;
      v20 = (v16 - 8);
      do
      {
        v21 = v3[20];
        v22 = v3;
        v23 = v3[18];
        v57(v21, v19, v23);
        v24 = SEStorageManagementViewModel.WalletUsageGroup.PassEntry.passUniqueID.getter();
        v26 = v25;
        (*v20)(v21, v23);
        v59 = v17;
        v28 = v17[2];
        v27 = v17[3];
        if (v28 >= v27 >> 1)
        {
          sub_10019F3C0((v27 > 1), v28 + 1, 1);
          v17 = v59;
        }

        v17[2] = v28 + 1;
        v29 = &v17[2 * v28];
        v29[4] = v24;
        v29[5] = v26;
        v19 += v56;
        --v15;
        v3 = v22;
      }

      while (v15);

      v9 = v52;
    }

    else
    {
    }

    v33 = v3[22];
    v32 = v3[23];
    v34 = v3[21];
    v35 = Array.description.getter();
    v37 = v36;

    (*(v33 + 8))(v32, v34);
    v38 = sub_1002FFA0C(v35, v37, &v58);

    *(buf + 4) = v38;
    _os_log_impl(&_mh_execute_header, v9, v55, "Deleting passes %s", buf, 0xCu);
    sub_1000752F4(v53);
  }

  else
  {
    v30 = v3[21];
    v31 = v3[22];

    (*(v31 + 8))(v12, v30);
  }

  v39 = v3[17];
  v40 = OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_passProvider;
  swift_beginAccess();
  sub_1000938D4(v39 + v40, (v3 + 2), &qword_100504A50, &unk_10040F9F0);
  if (v3[5])
  {
    sub_1000BC094((v3 + 2), (v3 + 7));
    sub_100075768((v3 + 2), &qword_100504A50, &unk_10040F9F0);
    v41 = v3[10];
    v42 = v3[11];
    sub_1000752B0(v3 + 7, v41);
    v43 = SEStorageManagementUIClientXPCParameters.DeletePass.passesToDelete.getter();
    v3[24] = v43;
    v44 = swift_task_alloc();
    v3[25] = v44;
    *v44 = v3;
    v44[1] = sub_1001EB3CC;

    return dispatch thunk of SEStorageManagementPassProviding.delete(_:)(v43, v41, v42);
  }

  else
  {
    sub_100075768((v3 + 2), &qword_100504A50, &unk_10040F9F0);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "Missing pass provider", v47, 2u);
    }

    v48 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
    sub_1001F33F0(&qword_100506F20, &type metadata accessor for SEStorageManagementInternal.Types.ErrorCode, &protocol conformance descriptor for SEStorageManagementInternal.Types.ErrorCode);
    swift_allocError();
    *v49 = 0xD000000000000015;
    v49[1] = 0x8000000100467430;
    (*(*(v48 - 8) + 104))(v49, enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:), v48);
    swift_willThrow();

    v50 = v3[1];

    return v50();
  }
}

uint64_t sub_1001EB3CC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 208) = v1;

  if (v1)
  {
    v5 = sub_1001EB594;
  }

  else
  {

    *(v4 + 216) = a1;
    v5 = sub_1001EB4FC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001EB4FC()
{
  sub_1000752F4((v0 + 56));
  SEStorageManagementUIClientReturnValues.DeleteResult.init(snapshot:)();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001EB594()
{

  sub_1000752F4((v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001EB79C(uint64_t a1, const void *a2, void *a3)
{
  v3[2] = a3;
  v6 = type metadata accessor for SEStorageManagementUIClientXPCParameters.DeletePass();
  v3[3] = v6;
  v3[4] = *(v6 - 8);
  v7 = swift_task_alloc();
  v3[5] = v7;
  v8 = type metadata accessor for SEStorageManagementUIClientReturnValues.DeleteResult();
  v3[6] = v8;
  v3[7] = *(v8 - 8);
  v9 = swift_task_alloc();
  v3[8] = v9;
  v3[9] = _Block_copy(a2);
  sub_1001F33F0(&unk_100507090, &type metadata accessor for SEStorageManagementUIClientXPCParameters.DeletePass, &protocol conformance descriptor for SEStorageManagementUIClientXPCParameters.DeletePass);
  static SESOpaqueObjectiveCBridgable<>._unconditionallyBridgeFromObjectiveC(_:)();
  a3;
  v10 = swift_task_alloc();
  v3[10] = v10;
  *v10 = v3;
  v10[1] = sub_1001EB984;

  return sub_1001EACE8(v9, v7);
}

uint64_t sub_1001EB984()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  (*(v4 + 8))(v3, v5);

  if (v0)
  {
    v8 = _convertErrorToNSError(_:)();

    v9 = v8;
    v10 = 0;
    v11 = v8;
  }

  else
  {
    v13 = v2[7];
    v12 = v2[8];
    v14 = v2[6];
    sub_1001F33F0(&qword_100507078, &type metadata accessor for SEStorageManagementUIClientReturnValues.DeleteResult, &protocol conformance descriptor for SEStorageManagementUIClientReturnValues.DeleteResult);
    v11 = SESOpaqueObjectiveCBridgable<>._bridgeToObjectiveC()();
    (*(v13 + 8))(v12, v14);
    v10 = v11;
    v9 = 0;
  }

  v15 = v2[9];
  (v15)[2](v15, v10, v9);

  _Block_release(v15);

  v16 = *(v7 + 8);

  return v16();
}

uint64_t sub_1001EBBC8(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = type metadata accessor for SESnapshot.TargetDevice();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = type metadata accessor for SERXPCInternalErrors();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v7 = type metadata accessor for SEStorageManagementUIClientXPCParameters.DeleteSecureElementCredentials();
  v3[20] = v7;
  v3[21] = *(v7 - 8);
  v3[22] = swift_task_alloc();

  return _swift_task_switch(sub_1001EBDD0, 0, 0);
}

uint64_t sub_1001EBDD0(uint64_t a1, uint64_t a2)
{
  v78 = v2;
  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v4 = v2[21];
  v3 = v2[22];
  v5 = v2[20];
  v6 = v2[5];
  v7 = v2[6];
  v8 = type metadata accessor for Logger();
  v2[23] = sub_1000958E4(v8, qword_10051B240);
  (*(v4 + 16))(v3, v6, v5);
  v9 = v7;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v2[22];
  if (!v12)
  {
    v44 = v2[20];
    v43 = v2[21];

    (*(v43 + 8))(v13, v44);
    goto LABEL_19;
  }

  v14 = v2[6];
  v15 = swift_slowAlloc();
  v76 = swift_slowAlloc();
  *v15 = 136315394;
  v16 = v14;
  v17 = [v16 description];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21 = sub_1002FFA0C(v18, v20, &v76);

  *(v15 + 4) = v21;
  *(v15 + 12) = 2080;
  v22 = SEStorageManagementUIClientXPCParameters.DeleteSecureElementCredentials.credentialsToDelete.getter();
  if (v22 >> 62)
  {
    v45 = v22;
    v23 = _CocoaArrayWrapper.endIndex.getter();
    v22 = v45;
    if (v23)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v23)
    {
LABEL_6:
      v24 = v22;
      v77 = _swiftEmptyArrayStorage;
      v25 = sub_10019F420(0, v23 & ~(v23 >> 63), 0);
      if (v23 < 0)
      {
        goto LABEL_36;
      }

      v73 = v11;
      v74 = v10;
      v33 = 0;
      v34 = v2[17];
      v35 = v77;
      v36 = v24;
      do
      {
        if ((v24 & 0xC000000000000001) != 0)
        {
          v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v37 = *(v36 + 8 * v33 + 32);
        }

        v38 = v37;
        CredentialInternal.identifier.getter();

        v77 = v35;
        v40 = v35[2];
        v39 = v35[3];
        if (v40 >= v39 >> 1)
        {
          sub_10019F420((v39 > 1), v40 + 1, 1);
          v35 = v77;
        }

        v41 = v2[19];
        v42 = v2[16];
        ++v33;
        v35[2] = v40 + 1;
        (*(v34 + 32))(v35 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v40, v41, v42);
        v36 = v24;
      }

      while (v23 != v33);

      v10 = v74;
      v11 = v73;
      goto LABEL_18;
    }
  }

LABEL_18:
  v46 = v2[21];
  v47 = v2[22];
  v48 = v2[20];
  v49 = Array.description.getter();
  v51 = v50;

  (*(v46 + 8))(v47, v48);
  v52 = sub_1002FFA0C(v49, v51, &v76);

  *(v15 + 14) = v52;
  _os_log_impl(&_mh_execute_header, v10, v11, "%s deleting vienna credentials %s", v15, 0x16u);
  swift_arrayDestroy();

LABEL_19:
  v53 = SEStorageManagementUIClientXPCParameters.DeleteSecureElementCredentials.credentialsToDelete.getter();
  if (v53 >> 62)
  {
    v67 = v53;
    v54 = _CocoaArrayWrapper.endIndex.getter();
    v53 = v67;
    if (v54)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v54)
    {
LABEL_21:
      v55 = v53;
      v77 = _swiftEmptyArrayStorage;
      v25 = sub_10019F420(0, v54 & ~(v54 >> 63), 0);
      if ((v54 & 0x8000000000000000) == 0)
      {
        v56 = 0;
        v57 = v2[17];
        v58 = v77;
        v59 = v55;
        v75 = v55 & 0xC000000000000001;
        v60 = v55;
        do
        {
          if (v75)
          {
            v61 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v61 = *(v59 + 8 * v56 + 32);
          }

          v62 = v61;
          CredentialInternal.identifier.getter();

          v77 = v58;
          v64 = v58[2];
          v63 = v58[3];
          if (v64 >= v63 >> 1)
          {
            sub_10019F420((v63 > 1), v64 + 1, 1);
            v58 = v77;
          }

          v65 = v2[18];
          v66 = v2[16];
          ++v56;
          v58[2] = v64 + 1;
          (*(v57 + 32))(v58 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v64, v65, v66);
          v59 = v60;
        }

        while (v54 != v56);

        goto LABEL_32;
      }

      __break(1u);
LABEL_36:
      __break(1u);
      return withCheckedThrowingContinuation<A>(isolation:function:_:)(v25, v26, v27, v28, v29, v30, v31, v32);
    }
  }

  v58 = _swiftEmptyArrayStorage;
LABEL_32:
  v68 = v2[6];
  v69 = sub_1000E0348(v58);
  v2[24] = v69;

  v70 = swift_task_alloc();
  v2[25] = v70;
  *(v70 + 16) = v69;
  *(v70 + 24) = v68;
  v71 = swift_task_alloc();
  v2[26] = v71;
  *v71 = v2;
  v71[1] = sub_1001EC3C4;
  v32 = &type metadata for Bool;
  v30 = sub_1001F318C;
  v25 = v2 + 30;
  v29 = 0x8000000100467400;
  v26 = 0;
  v27 = 0;
  v28 = 0xD000000000000022;
  v31 = v70;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v25, v26, v27, v28, v29, v30, v31, v32);
}

uint64_t sub_1001EC3C4()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_1001EC824;
  }

  else
  {

    v2 = sub_1001EC4E8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001EC4E8()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  type metadata accessor for SERXPCServer();
  (*(v2 + 104))(v1, enum case for SESnapshot.TargetDevice.currentDevice(_:), v3);
  v4 = swift_task_alloc();
  v0[28] = v4;
  *v4 = v0;
  v4[1] = sub_1001EC5C8;
  v5 = v0[14];
  v6 = v0[9];

  return sub_1002BC9B0(0, 0xF000000000000000, v6, v5);
}

uint64_t sub_1001EC5C8(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 64);

  v7 = (v6 + 8);
  v8 = *(v4 + 72);
  v9 = *(v4 + 56);
  if (v1)
  {
    (*v7)(v8, v9);
    v10 = sub_1001EC8F8;
  }

  else
  {
    *(v5 + 232) = a1;
    (*v7)(v8, v9);
    v10 = sub_1001EC750;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_1001EC750()
{
  SEStorageManagementUIClientReturnValues.DeleteResult.init(snapshot:)();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001EC824()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001EC8F8()
{
  v1 = v0[15];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[10];
  v5 = v0[11];
  v6 = *(v5 + 32);
  v6(v1, v0[14], v4);
  v6(v2, v1, v4);
  v7 = *(v5 + 16);
  v7(v3, v2, v4);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[11];
  v11 = v0[12];
  v13 = v0[10];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v14 = 138412290;
    sub_1001F33F0(&qword_100507080, &type metadata accessor for SERXPCInternalErrors, &protocol conformance descriptor for SERXPCInternalErrors);
    swift_allocError();
    v7(v15, v11, v13);
    v16 = _swift_stdlib_bridgeErrorToNSError();
    v17 = *(v12 + 8);
    v17(v11, v13);
    *(v14 + 4) = v16;
    *v29 = v16;
    v18 = v17;
    _os_log_impl(&_mh_execute_header, v8, v9, "Error %@ while getting snapshot", v14, 0xCu);
    sub_100075768(v29, &unk_100503F70, &unk_10040B2E0);
  }

  else
  {

    v18 = *(v12 + 8);
    v18(v11, v13);
  }

  v19 = v0[13];
  v20 = v0[10];
  v21 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
  sub_1001F33F0(&qword_100506F20, &type metadata accessor for SEStorageManagementInternal.Types.ErrorCode, &protocol conformance descriptor for SEStorageManagementInternal.Types.ErrorCode);
  swift_allocError();
  v23 = v22;
  _StringGuts.grow(_:)(31);
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v24._countAndFlagsBits = 0x20726F727245;
  v24._object = 0xE600000000000000;
  String.append(_:)(v24);
  _print_unlocked<A, B>(_:_:)();
  v25._object = 0x80000001004673B0;
  v25._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v25);
  v26 = v0[3];
  *v23 = v0[2];
  v23[1] = v26;
  (*(*(v21 - 8) + 104))(v23, enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:), v21);
  swift_willThrow();
  v18(v19, v20);

  v27 = v0[1];

  return v27();
}

void sub_1001ECCD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100068FC4(&qword_100506F78, &qword_10040F300);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - v8;
  type metadata accessor for SECServer();
  v10 = *(a3 + OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_activeCredentialSession);
  (*(v7 + 16))(v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v9, v6);
  v13 = v10;
  sub_100143E08(a2, v10, sub_1001F3228, v12);
}

uint64_t sub_1001ECE58(char a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    sub_100068FC4(&qword_100506F78, &qword_10040F300);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100068FC4(&qword_100506F78, &qword_10040F300);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_1001ED064(uint64_t a1, const void *a2, void *a3)
{
  v3[2] = a3;
  v6 = type metadata accessor for SEStorageManagementUIClientXPCParameters.DeleteSecureElementCredentials();
  v3[3] = v6;
  v3[4] = *(v6 - 8);
  v7 = swift_task_alloc();
  v3[5] = v7;
  v8 = type metadata accessor for SEStorageManagementUIClientReturnValues.DeleteResult();
  v3[6] = v8;
  v3[7] = *(v8 - 8);
  v9 = swift_task_alloc();
  v3[8] = v9;
  v3[9] = _Block_copy(a2);
  sub_1001F33F0(&qword_100507088, &type metadata accessor for SEStorageManagementUIClientXPCParameters.DeleteSecureElementCredentials, &protocol conformance descriptor for SEStorageManagementUIClientXPCParameters.DeleteSecureElementCredentials);
  static SESOpaqueObjectiveCBridgable<>._unconditionallyBridgeFromObjectiveC(_:)();
  a3;
  v10 = swift_task_alloc();
  v3[10] = v10;
  *v10 = v3;
  v10[1] = sub_1001F3484;

  return sub_1001EBBC8(v9, v7);
}

uint64_t sub_1001ED24C(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v3 = type metadata accessor for SESnapshot.TargetDevice();
  v2[17] = v3;
  v2[18] = *(v3 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v4 = type metadata accessor for SERXPCInternalErrors();
  v2[21] = v4;
  v2[22] = *(v4 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return _swift_task_switch(sub_1001ED3F4, 0, 0);
}

uint64_t sub_1001ED3F4(uint64_t a1, uint64_t a2)
{
  v50 = v2;
  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v3 = v2[16];
  v4 = type metadata accessor for Logger();
  v2[31] = sub_1000958E4(v4, qword_10051B240);
  v5 = v3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v2[16];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v49 = v10;
    *v9 = 136315138;
    v11 = v8;
    v12 = [v11 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_1002FFA0C(v13, v15, &v49);

    *(v9 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s offloading Muirfield", v9, 0xCu);
    sub_1000752F4(v10);
  }

  swift_beginAccess();
  sub_100068FC4(&qword_100506F68, &qword_10040F2F8);
  UserDefaultBacked.wrappedValue.getter();
  v17 = v2[12];
  swift_endAccess();
  v18 = *(v17 + 16);

  if (v18)
  {
    v20 = v2[18];
    v19 = v2[19];
    v21 = v2[17];
    v2[13] = &off_1004C48F8;
    swift_beginAccess();
    UserDefaultBacked.wrappedValue.setter();
    swift_endAccess();
    type metadata accessor for SERXPCServer();
    (*(v20 + 104))(v19, enum case for SESnapshot.TargetDevice.currentDevice(_:), v21);
    v22 = swift_task_alloc();
    v2[35] = v22;
    *v22 = v2;
    v22[1] = sub_1001EDE50;
    v23 = v2[27];
    v24 = v2[19];
LABEL_7:

    return sub_1002BC9B0(0, 0xF000000000000000, v24, v23);
  }

  v26 = *(v2[16] + OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_softPOSManager);
  v2[32] = v26;
  if (v26)
  {
    v2[14] = 0;
    v27 = v26;
    v28 = [v27 removeMuirfieldWithForce:1 error:v2 + 14];
    v29 = v2[14];
    if (v28)
    {
      v30 = v2[20];
      v31 = v2[17];
      v32 = v2[18];
      type metadata accessor for SERXPCServer();
      (*(v32 + 104))(v30, enum case for SESnapshot.TargetDevice.currentDevice(_:), v31);
      v33 = v29;
      v34 = swift_task_alloc();
      v2[33] = v34;
      *v34 = v2;
      v34[1] = sub_1001EDB78;
      v23 = v2[29];
      v24 = v2[20];
      goto LABEL_7;
    }

    v40 = v29;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138412290;
      swift_errorRetain();
      v45 = _swift_stdlib_bridgeErrorToNSError();
      *(v43 + 4) = v45;
      *v44 = v45;
      _os_log_impl(&_mh_execute_header, v41, v42, "Error %@ encountered when removing Muirfield", v43, 0xCu);
      sub_100075768(v44, &unk_100503F70, &unk_10040B2E0);
    }

    v46 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
    sub_1001F33F0(&qword_100506F20, &type metadata accessor for SEStorageManagementInternal.Types.ErrorCode, &protocol conformance descriptor for SEStorageManagementInternal.Types.ErrorCode);
    swift_allocError();
    *v47 = 0x6F72724520525053;
    v47[1] = 0xE900000000000072;
    (*(*(v46 - 8) + 104))(v47, enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:), v46);
    swift_willThrow();
  }

  else
  {
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "Unexpected SoftPOSManager not initialized", v37, 2u);
    }

    v38 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
    sub_1001F33F0(&qword_100506F20, &type metadata accessor for SEStorageManagementInternal.Types.ErrorCode, &protocol conformance descriptor for SEStorageManagementInternal.Types.ErrorCode);
    swift_allocError();
    *v39 = 0xD000000000000029;
    v39[1] = 0x80000001004673D0;
    (*(*(v38 - 8) + 104))(v39, enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:), v38);
    swift_willThrow();
  }

  v48 = v2[1];

  return v48();
}

uint64_t sub_1001EDB78(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 144);

  v7 = (v6 + 8);
  v8 = *(v4 + 160);
  v9 = *(v4 + 136);
  if (v1)
  {
    (*v7)(v8, v9);
    v10 = sub_1001EE53C;
  }

  else
  {
    *(v5 + 272) = a1;
    (*v7)(v8, v9);
    v10 = sub_1001EDD34;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_1001EDD34()
{
  v1 = *(v0 + 256);
  SEStorageManagementUIClientReturnValues.DeleteResult.init(snapshot:)();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001EDE50(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 144);

  v7 = (v6 + 8);
  v8 = *(v4 + 152);
  v9 = *(v4 + 136);
  if (v1)
  {
    (*v7)(v8, v9);
    v10 = sub_1001EE120;
  }

  else
  {
    *(v5 + 288) = a1;
    (*v7)(v8, v9);
    v10 = sub_1001EE00C;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_1001EE00C()
{
  SEStorageManagementUIClientReturnValues.DeleteResult.init(snapshot:)();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001EE120()
{
  v1 = v0[28];
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[21];
  v5 = v0[22];
  v6 = *(v5 + 32);
  v6(v1, v0[27], v4);
  v6(v2, v1, v4);
  v7 = *(v5 + 16);
  v7(v3, v2, v4);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[25];
  v12 = v0[21];
  v13 = v0[22];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v14 = 138412290;
    sub_1001F33F0(&qword_100507080, &type metadata accessor for SERXPCInternalErrors, &protocol conformance descriptor for SERXPCInternalErrors);
    swift_allocError();
    v7(v15, v11, v12);
    v16 = _swift_stdlib_bridgeErrorToNSError();
    v17 = *(v13 + 8);
    v17(v11, v12);
    *(v14 + 4) = v16;
    *v30 = v16;
    v18 = v9;
    v19 = v17;
    _os_log_impl(&_mh_execute_header, v8, v18, "Error %@ while getting snapshot", v14, 0xCu);
    sub_100075768(v30, &unk_100503F70, &unk_10040B2E0);
  }

  else
  {

    v19 = *(v13 + 8);
    v19(v11, v12);
  }

  v20 = v0[26];
  v21 = v0[21];
  v22 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
  sub_1001F33F0(&qword_100506F20, &type metadata accessor for SEStorageManagementInternal.Types.ErrorCode, &protocol conformance descriptor for SEStorageManagementInternal.Types.ErrorCode);
  swift_allocError();
  v24 = v23;
  _StringGuts.grow(_:)(31);
  v0[8] = 0;
  v0[9] = 0xE000000000000000;
  v25._countAndFlagsBits = 0x20726F727245;
  v25._object = 0xE600000000000000;
  String.append(_:)(v25);
  _print_unlocked<A, B>(_:_:)();
  v26._object = 0x80000001004673B0;
  v26._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v26);
  v27 = v0[9];
  *v24 = v0[8];
  v24[1] = v27;
  (*(*(v22 - 8) + 104))(v24, enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:), v22);
  swift_willThrow();
  v19(v20, v21);

  v28 = v0[1];

  return v28();
}

uint64_t sub_1001EE53C()
{
  v1 = v0[30];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[21];
  v5 = v0[22];
  v6 = *(v5 + 32);
  v6(v1, v0[29], v4);
  v6(v2, v1, v4);
  v7 = *(v5 + 16);
  v7(v3, v2, v4);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[22];
  v11 = v0[23];
  v13 = v0[21];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v14 = 138412290;
    sub_1001F33F0(&qword_100507080, &type metadata accessor for SERXPCInternalErrors, &protocol conformance descriptor for SERXPCInternalErrors);
    swift_allocError();
    v7(v15, v11, v13);
    v16 = _swift_stdlib_bridgeErrorToNSError();
    v17 = *(v12 + 8);
    v17(v11, v13);
    *(v14 + 4) = v16;
    *v30 = v16;
    v18 = v17;
    _os_log_impl(&_mh_execute_header, v8, v9, "Error %@ while getting snapshot", v14, 0xCu);
    sub_100075768(v30, &unk_100503F70, &unk_10040B2E0);
  }

  else
  {

    v18 = *(v12 + 8);
    v18(v11, v13);
  }

  v19 = v0[32];
  v20 = v0[24];
  v21 = v0[21];
  v22 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
  sub_1001F33F0(&qword_100506F20, &type metadata accessor for SEStorageManagementInternal.Types.ErrorCode, &protocol conformance descriptor for SEStorageManagementInternal.Types.ErrorCode);
  swift_allocError();
  v24 = v23;
  _StringGuts.grow(_:)(31);
  v0[10] = 0;
  v0[11] = 0xE000000000000000;
  v25._countAndFlagsBits = 0x20726F727245;
  v25._object = 0xE600000000000000;
  String.append(_:)(v25);
  _print_unlocked<A, B>(_:_:)();
  v26._object = 0x80000001004673B0;
  v26._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v26);
  v27 = v0[11];
  *v24 = v0[10];
  v24[1] = v27;
  (*(*(v22 - 8) + 104))(v24, enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:), v22);
  swift_willThrow();

  v18(v20, v21);

  v28 = v0[1];

  return v28();
}

uint64_t sub_1001EEAD4(const void *a1, void *a2)
{
  v2[2] = a2;
  v5 = type metadata accessor for SEStorageManagementUIClientReturnValues.DeleteResult();
  v2[3] = v5;
  v2[4] = *(v5 - 8);
  v6 = swift_task_alloc();
  v2[5] = v6;
  v2[6] = _Block_copy(a1);
  a2;
  v7 = swift_task_alloc();
  v2[7] = v7;
  *v7 = v2;
  v7[1] = sub_1001EEBF4;

  return sub_1001ED24C(v6);
}

uint64_t sub_1001EEBF4()
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  v4 = *v1;

  if (v0)
  {
    v5 = _convertErrorToNSError(_:)();

    v6 = v5;
    v7 = 0;
  }

  else
  {
    v9 = v2[4];
    v8 = v2[5];
    v10 = v2[3];
    sub_1001F33F0(&qword_100507078, &type metadata accessor for SEStorageManagementUIClientReturnValues.DeleteResult, &protocol conformance descriptor for SEStorageManagementUIClientReturnValues.DeleteResult);
    v11 = SESOpaqueObjectiveCBridgable<>._bridgeToObjectiveC()();
    (*(v9 + 8))(v8, v10);
    v7 = v11;
    v6 = 0;
    v5 = v11;
  }

  v12 = v2[6];
  (v12)[2](v12, v7, v6);

  _Block_release(v12);

  v13 = *(v4 + 8);

  return v13();
}

uint64_t sub_1001EEDCC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_100068FC4(&unk_100506F00, &qword_10040BE90);
  v2[4] = swift_task_alloc();
  v3 = type metadata accessor for SEStorageManagementUIClientXPCParameters.Dismiss.DismissalContext();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for SEStorageManagementUIClientXPCParameters.Dismiss();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_1001EEF2C, 0, 0);
}

uint64_t sub_1001EEF2C()
{
  v74 = v0;
  v1 = *(v0[3] + OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_state);

  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));

  if (v2 != 2)
  {
    if (qword_100501938 != -1)
    {
      swift_once();
    }

    v20 = v0[10];
    v19 = v0[11];
    v21 = v0[9];
    v22 = v0[2];
    v23 = v0[3];
    v24 = type metadata accessor for Logger();
    sub_1000958E4(v24, qword_10051B240);
    (*(v20 + 16))(v19, v22, v21);
    v25 = v23;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();

    v28 = os_log_type_enabled(v26, v27);
    v29 = v0[10];
    v30 = v0[11];
    v31 = v0[9];
    if (v28)
    {
      v32 = v0[8];
      v72 = v27;
      v33 = v0[6];
      v70 = v0[5];
      log = v26;
      v34 = v0[3];
      v69 = v0[9];
      v35 = swift_slowAlloc();
      v73[0] = swift_slowAlloc();
      *v35 = 136315394;
      v36 = v34;
      v37 = [v36 description];
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;

      v41 = sub_1002FFA0C(v38, v40, v73);

      *(v35 + 4) = v41;
      *(v35 + 12) = 2080;
      SEStorageManagementUIClientXPCParameters.Dismiss.context.getter();
      v42 = SEStorageManagementUIClientXPCParameters.Dismiss.DismissalContext.description.getter();
      v44 = v43;
      (*(v33 + 8))(v32, v70);
      (*(v29 + 8))(v30, v69);
      v45 = sub_1002FFA0C(v42, v44, v73);

      *(v35 + 14) = v45;
      _os_log_impl(&_mh_execute_header, log, v72, "%s Storage sheet dismissed with parameter %s", v35, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v29 + 8))(v30, v31);
    }

    v47 = v0[6];
    v46 = v0[7];
    v48 = v0[5];
    SEStorageManagementUIClientXPCParameters.Dismiss.context.getter();
    v49 = (*(v47 + 88))(v46, v48);
    if (v49 == enum case for SEStorageManagementUIClientXPCParameters.Dismiss.DismissalContext.cancelled(_:))
    {
      v50 = v0[4];
      v51 = enum case for SEStorageManagementInternal.Types.ErrorCode.cancelled(_:);
      v52 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
      v53 = *(v52 - 8);
      (*(v53 + 104))(v50, v51, v52);
      (*(v53 + 56))(v50, 0, 1, v52);
    }

    else
    {
      if (v49 == enum case for SEStorageManagementUIClientXPCParameters.Dismiss.DismissalContext.sufficientSpace(_:))
      {
        v50 = v0[4];
        v55 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
        (*(*(v55 - 8) + 56))(v50, 1, 1, v55);
        v54 = 1;
        goto LABEL_17;
      }

      if (v49 != enum case for SEStorageManagementUIClientXPCParameters.Dismiss.DismissalContext.insufficientSpace(_:))
      {
        v63 = v0[6];
        v62 = v0[7];
        v65 = v0[4];
        v64 = v0[5];
        *v65 = 0x206E776F6E6B6E75;
        v65[1] = 0xEF747865746E6F63;
        v66 = enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:);
        v67 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
        v68 = *(v67 - 8);
        (*(v68 + 104))(v65, v66, v67);
        (*(v68 + 56))(v65, 0, 1, v67);
        sub_1001E1ADC(0, v65);
        sub_100075768(v65, &unk_100506F00, &qword_10040BE90);
        v56 = (*(v63 + 8))(v62, v64);
        goto LABEL_18;
      }

      v50 = v0[4];
      v61 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
      (*(*(v61 - 8) + 56))(v50, 1, 1, v61);
    }

    v54 = 0;
LABEL_17:
    sub_1001E1ADC(v54, v50);
    v56 = sub_100075768(v50, &unk_100506F00, &qword_10040BE90);
LABEL_18:
    v58 = sub_1001EAB34(v56, v57);
    sub_1001F03E8(v58, v59);

    v18 = v0[1];
    goto LABEL_19;
  }

  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v3 = v0[3];
  v4 = type metadata accessor for Logger();
  sub_1000958E4(v4, qword_10051B240);
  v5 = v3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[3];
    v9 = swift_slowAlloc();
    v73[0] = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_1002FFA0C(0x287373696D736964, 0xEB00000000293A5FLL, v73);
    *(v9 + 12) = 2080;
    v10 = v8;
    v11 = [v10 description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_1002FFA0C(v12, v14, v73);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s %s Unable to dismiss presentation out of active state", v9, 0x16u);
    swift_arrayDestroy();
  }

  v16 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
  sub_1001F33F0(&qword_100506F20, &type metadata accessor for SEStorageManagementInternal.Types.ErrorCode, &protocol conformance descriptor for SEStorageManagementInternal.Types.ErrorCode);
  swift_allocError();
  *v17 = 0xD000000000000010;
  v17[1] = 0x8000000100466FD0;
  (*(*(v16 - 8) + 104))(v17, enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:), v16);
  swift_willThrow();

  v18 = v0[1];
LABEL_19:

  return v18();
}

uint64_t sub_1001EF910(uint64_t a1, const void *a2, void *a3)
{
  v3[2] = a3;
  v6 = type metadata accessor for SEStorageManagementUIClientXPCParameters.Dismiss();
  v3[3] = v6;
  v3[4] = *(v6 - 8);
  v7 = swift_task_alloc();
  v3[5] = v7;
  v3[6] = _Block_copy(a2);
  sub_1001F33F0(&qword_100507070, &type metadata accessor for SEStorageManagementUIClientXPCParameters.Dismiss, &protocol conformance descriptor for SEStorageManagementUIClientXPCParameters.Dismiss);
  static SESOpaqueObjectiveCBridgable<>._unconditionallyBridgeFromObjectiveC(_:)();
  a3;
  v8 = swift_task_alloc();
  v3[7] = v8;
  *v8 = v3;
  v8[1] = sub_1001EFA90;

  return sub_1001EEDCC(v7);
}

uint64_t sub_1001EFA90()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 24);
  v8 = *(*v1 + 16);
  v9 = *v1;

  (*(v6 + 8))(v5, v7);

  v10 = *(v3 + 48);
  if (v2)
  {
    v11 = _convertErrorToNSError(_:)();

    (*(v10 + 16))(v10, v11);
  }

  else
  {
    (*(v10 + 16))(*(v3 + 48), 0);
  }

  _Block_release(*(v4 + 48));

  v12 = *(v9 + 8);

  return v12();
}

unint64_t sub_1001EFDBC()
{
  result = qword_100506EF0;
  if (!qword_100506EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506EF0);
  }

  return result;
}

uint64_t sub_1001EFE58(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_10012E598;

  return v6();
}

uint64_t sub_1001EFF40(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1000C288C;

  return v7();
}

uint64_t sub_1001F0028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_1000938D4(a3, v23 - v10, &qword_100504250, &qword_10040D610);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100075768(v11, &qword_100504250, &qword_10040D610);
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

    sub_100075768(a3, &qword_100504250, &qword_10040D610);

    return v21;
  }

LABEL_8:
  sub_100075768(a3, &qword_100504250, &qword_10040D610);
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

id sub_1001F0324(uint64_t a1)
{
  v5 = 0;
  v1 = [swift_getObjCClassFromMetadata() handleForPredicate:a1 error:&v5];
  if (v1)
  {
    v2 = v5;
  }

  else
  {
    v3 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v1;
}

uint64_t sub_1001F03E8(uint64_t a1, uint64_t a2)
{
  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000958E4(v2, qword_10051B240);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    if (qword_10051B4D8)
    {
      v7 = *(qword_10051B4D8 + 32);
    }

    sub_100068FC4(&unk_100507060, &unk_10040F340);
    v8 = String.init<A>(describing:)();
    v10 = sub_1002FFA0C(v8, v9, &v13);

    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "SharedUIClient: Invalidating presenter %s", v5, 0xCu);
    sub_1000752F4(v6);
  }

  if (qword_10051B4D8)
  {
    [*(qword_10051B4D8 + 16) invalidate];
    if (qword_10051B4D8)
    {
      *(qword_10051B4D8 + 24) = 0;
      swift_unknownObjectRelease();
      if (qword_10051B4D8)
      {
        v11 = *(qword_10051B4D8 + 32);
        *(qword_10051B4D8 + 32) = 0;
      }
    }
  }

  qword_10051B4D8 = 0;
}

uint64_t sub_1001F05BC(char *a1, void (*a2)(char *))
{
  v4 = sub_100068FC4(&unk_100506F00, &qword_10040BE90);
  __chkstk_darwin(v4 - 8);
  v6 = (&v45 - v5);
  v7 = *&a1[OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_state];

  os_unfair_lock_lock((v7 + 20));
  v8 = *(v7 + 16);
  os_unfair_lock_unlock((v7 + 20));

  if (v8 == 1)
  {
    if (qword_100501938 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000958E4(v9, qword_10051B240);
    v10 = a1;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v48 = v47;
      *v13 = 136315394;
      *(v13 + 4) = sub_1002FFA0C(0xD000000000000014, 0x8000000100467480, &v48);
      *(v13 + 12) = 2080;
      v14 = v10;
      v15 = a2;
      v16 = [v14 description];
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v12;
      v18 = v17;
      v20 = v19;

      a2 = v15;
      v21 = sub_1002FFA0C(v18, v20, &v48);

      *(v13 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v11, v46, "%s %s voluntary dismissal from client", v13, 0x16u);
      swift_arrayDestroy();
    }

    v22 = enum case for SEStorageManagementInternal.Types.ErrorCode.invalidated(_:);
    v23 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
    v24 = *(v23 - 8);
    (*(v24 + 104))(v6, v22, v23);
    v25 = *(v24 + 56);
    v25(v6, 0, 1, v23);
    sub_1001E1ADC(0, v6);
    v26 = sub_100075768(v6, &unk_100506F00, &qword_10040BE90);
    v28 = sub_1001EAB34(v26, v27);
    sub_1001F03E8(v28, v29);
    v25(v6, 1, 1, v23);
  }

  else
  {
    if (qword_100501938 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_1000958E4(v30, qword_10051B240);
    v31 = a1;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v48 = v47;
      *v34 = 136315394;
      *(v34 + 4) = sub_1002FFA0C(0xD000000000000014, 0x8000000100467480, &v48);
      *(v34 + 12) = 2080;
      v35 = v31;
      v36 = [v35 description];
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;

      v40 = sub_1002FFA0C(v37, v39, &v48);

      *(v34 + 14) = v40;
      _os_log_impl(&_mh_execute_header, v32, v33, "%s %s Unable to dismiss presentation out of active state", v34, 0x16u);
      swift_arrayDestroy();
    }

    *v6 = 0xD000000000000010;
    v6[1] = 0x80000001004674A0;
    v41 = enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:);
    v42 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
    v43 = *(v42 - 8);
    (*(v43 + 104))(v6, v41, v42);
    (*(v43 + 56))(v6, 0, 1, v42);
  }

  sub_10014A878(v6, a2);
  return sub_100075768(v6, &unk_100506F00, &qword_10040BE90);
}

uint64_t sub_1001F0B78(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v4 = sub_100068FC4(&unk_100506F00, &qword_10040BE90);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v7 = qword_10051B4D8;
  if (qword_10051B4D8)
  {

    if (static UUID.== infix(_:_:)())
    {
      v8 = *(v7 + 32);
      if (v8)
      {
        v9 = *(v8 + OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_activeCredentialSession);
        *(v8 + OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_activeCredentialSession) = 0;

        v10 = *(v7 + 32);
        if (v10)
        {

          v11 = v10;
          sub_1001F05BC(v11, a2);

          if (qword_10051B4D8)
          {
            [*(qword_10051B4D8 + 16) invalidate];
          }

          qword_10051B4D8 = 0;
        }
      }

      else
      {

        __break(1u);
      }

      __break(1u);
      return result;
    }
  }

  else
  {
  }

  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000958E4(v12, qword_10051B240);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Cannot dismiss presentation that's not in progress", v15, 2u);
  }

  v16 = enum case for SEStorageManagementInternal.Types.ErrorCode.invalidated(_:);
  v17 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v6, v16, v17);
  (*(v18 + 56))(v6, 0, 1, v17);
  sub_10014A878(v6, a2);
  sub_100075768(v6, &unk_100506F00, &qword_10040BE90);
}

uint64_t sub_1001F0EA0(char *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_100068FC4(&unk_100506F00, &qword_10040BE90);
  __chkstk_darwin(v6 - 8);
  v8 = &v59 - v7;
  v9 = *&a1[OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_state];

  os_unfair_lock_lock((v9 + 20));
  v10 = *(v9 + 16);
  os_unfair_lock_unlock((v9 + 20));

  if (v10 == 1)
  {
    if (qword_100501938 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    v12 = sub_1000958E4(v11, qword_10051B240);
    v13 = a1;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v61 = v12;
      v17 = v16;
      v60 = swift_slowAlloc();
      v62 = v60;
      *v17 = 136315394;
      *(v17 + 4) = sub_1002FFA0C(0xD000000000000014, 0x8000000100467480, &v62);
      *(v17 + 12) = 2080;
      v18 = a3;
      v19 = v13;
      v20 = [v19 description];
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      HIDWORD(v59) = v15;
      v22 = v21;
      v23 = a2;
      v25 = v24;

      a3 = v18;
      v26 = sub_1002FFA0C(v22, v25, &v62);
      a2 = v23;

      *(v17 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v14, BYTE4(v59), "%s %s voluntary dismissal from client", v17, 0x16u);
      swift_arrayDestroy();
    }

    v27 = enum case for SEStorageManagementInternal.Types.ErrorCode.invalidated(_:);
    v28 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
    v29 = *(v28 - 8);
    (*(v29 + 104))(v8, v27, v28);
    (*(v29 + 56))(v8, 0, 1, v28);
    sub_1001E1ADC(0, v8);
    v30 = sub_100075768(v8, &unk_100506F00, &qword_10040BE90);
    v32 = sub_1001EAB34(v30, v31);
    sub_1001F03E8(v32, v33);

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v62 = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_1002FFA0C(a2, a3, &v62);
      _os_log_impl(&_mh_execute_header, v34, v35, "Client %s disconnect invalidation complete", v36, 0xCu);
      sub_1000752F4(v37);
    }

    return sub_1001F03E8(v38, v39);
  }

  else
  {
    if (qword_100501938 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_1000958E4(v41, qword_10051B240);
    v42 = a1;
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v61 = a2;
      v46 = v45;
      v62 = swift_slowAlloc();
      *v46 = 136315394;
      *(v46 + 4) = sub_1002FFA0C(0xD000000000000014, 0x8000000100467480, &v62);
      *(v46 + 12) = 2080;
      v47 = v42;
      v48 = [v47 description];
      v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v50;

      v52 = sub_1002FFA0C(v49, v51, &v62);

      *(v46 + 14) = v52;
      _os_log_impl(&_mh_execute_header, v43, v44, "%s %s Unable to dismiss presentation out of active state", v46, 0x16u);
      swift_arrayDestroy();

      a2 = v61;
    }

    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v62 = v56;
      *v55 = 136315138;
      *(v55 + 4) = sub_1002FFA0C(a2, a3, &v62);
      _os_log_impl(&_mh_execute_header, v53, v54, "Client %s disconnect invalidation complete", v55, 0xCu);
      sub_1000752F4(v56);
    }

    return sub_1001F03E8(v57, v58);
  }
}

id sub_1001F152C()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() interfaceWithIdentifier:v0];

  v2 = objc_opt_self();
  v3 = [v2 protocolForProtocol:&OBJC_PROTOCOL____TtP16SESUIServiceCore35SEStorageManagementUIServerProtocol_];
  [v1 setServer:v3];

  v4 = [v2 protocolForProtocol:&OBJC_PROTOCOL____TtP16SESUIServiceCore35SEStorageManagementUIClientProtocol_];
  [v1 setClient:v4];

  [v1 setClientMessagingExpectation:0];
  return v1;
}

uint64_t sub_1001F1654()
{
  v1 = qword_10051B4D8;
  v0[2] = qword_10051B4D8;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[3] = v2;
    *v2 = v0;
    v2[1] = sub_1001F1924;

    return sub_1001E2150();
  }

  else
  {
    v4 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
    sub_1001F33F0(&qword_100506F20, &type metadata accessor for SEStorageManagementInternal.Types.ErrorCode, &protocol conformance descriptor for SEStorageManagementInternal.Types.ErrorCode);
    swift_allocError();
    *v5 = 0xD00000000000001DLL;
    v5[1] = 0x8000000100467090;
    (*(*(v4 - 8) + 104))(v5, enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:), v4);
    swift_willThrow();
    if (qword_100501938 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000958E4(v6, qword_10051B240);
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      swift_errorRetain();
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v11;
      *v10 = v11;
      _os_log_impl(&_mh_execute_header, v7, v8, "Proxy error %@", v9, 0xCu);
      sub_100075768(v10, &unk_100503F70, &unk_10040B2E0);
    }

    swift_willThrow();
    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1001F1924(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 32) = v1;

  if (v1)
  {
    v5 = sub_1001F1AB4;
  }

  else
  {
    *(v4 + 40) = a1;
    v5 = sub_1001F1A4C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001F1A4C()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 40);

  return v1(v2);
}

uint64_t sub_1001F1AB4()
{

  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000958E4(v1, qword_10051B240);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Proxy error %@", v4, 0xCu);
    sub_100075768(v5, &unk_100503F70, &unk_10040B2E0);
  }

  swift_willThrow();
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1001F1C90(char a1, uint64_t a2)
{
  sub_100068FC4(&qword_100506F78, &qword_10040F300);

  return sub_1001E97D4(a1, a2);
}

uint64_t sub_1001F1D74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001F1DD4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v39[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_100068FC4(&unk_100506F00, &qword_10040BE90);
  __chkstk_darwin(v5 - 8);
  v7 = &v39[-v6];
  v8 = &v0[OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_startCallback];
  v9 = *&v0[OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_startCallback];
  if (v9)
  {
    v10 = v8[1];
    v11 = qword_100501938;

    if (v11 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000958E4(v12, qword_10051B240);
    v13 = v0;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v42 = v41;
      *v16 = 136315394;
      *(v16 + 4) = sub_1002FFA0C(0xD000000000000020, 0x8000000100467380, &v42);
      *(v16 + 12) = 2080;
      v17 = v13;
      v18 = [v17 description];
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v15;
      v21 = v20;

      v22 = sub_1002FFA0C(v19, v21, &v42);

      *(v16 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v14, v40, "%s Remote scene activated for session %s", v16, 0x16u);
      swift_arrayDestroy();
    }

    v23 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
    (*(*(v23 - 8) + 56))(v7, 1, 1, v23);
    v9(1, v7);
    sub_1000B2A4C(v9, v10);
    sub_100075768(v7, &unk_100506F00, &qword_10040BE90);
    v24 = *v8;
    v25 = v8[1];
    *v8 = 0;
    v8[1] = 0;
    return sub_1000B2A4C(v24, v25);
  }

  else
  {
    if (qword_100501938 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_1000958E4(v27, qword_10051B240);
    v28 = v0;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v42 = v41;
      *v31 = 136315394;
      *(v31 + 4) = sub_1002FFA0C(0xD000000000000020, 0x8000000100467380, &v42);
      *(v31 + 12) = 2080;
      (*(v2 + 16))(v4, &v28[OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_id], v1);
      v32 = UUID.uuidString.getter();
      v34 = v33;
      (*(v2 + 8))(v4, v1);
      v35 = sub_1002FFA0C(v32, v34, &v42);

      *(v31 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v29, v30, "%s Session %s missing start UI session callback, ending session", v31, 0x16u);
      swift_arrayDestroy();
    }

    *v7 = 0xD000000000000019;
    v7[1] = 0x8000000100467360;
    v36 = enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:);
    v37 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
    v38 = *(v37 - 8);
    (*(v38 + 104))(v7, v36, v37);
    (*(v38 + 56))(v7, 0, 1, v37);
    sub_1001E1ADC(0, v7);
    return sub_100075768(v7, &unk_100506F00, &qword_10040BE90);
  }
}

uint64_t sub_1001F2390(uint64_t a1, uint64_t a2)
{
  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_10051B240);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_1002FFA0C(0xD000000000000022, 0x8000000100467330, &v17);
    *(v7 + 12) = 2080;
    v8 = v4;
    v9 = [v8 description];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = sub_1002FFA0C(v10, v12, &v17);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s Session %s, remote UI deactivated", v7, 0x16u);
    swift_arrayDestroy();
  }

  return sub_1001F03E8(v14, v15);
}

uint64_t sub_1001F2564(uint64_t a1)
{
  v3 = sub_100068FC4(&unk_100506F00, &qword_10040BE90);
  __chkstk_darwin(v3 - 8);
  v5 = &v52[-v4];
  v59 = type metadata accessor for UUID();
  v6 = *(v59 - 8);
  __chkstk_darwin(v59);
  v58 = &v52[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000958E4(v8, qword_10051B240);
  v9 = v1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v60 = v57;
    *v12 = 136315394;
    *(v12 + 4) = sub_1002FFA0C(0xD00000000000002CLL, 0x8000000100467300, &v60);
    *(v12 + 12) = 2080;
    v13 = *(v6 + 16);
    v56 = v10;
    v14 = v58;
    LODWORD(v55) = v11;
    v15 = v5;
    v16 = v6;
    v17 = v59;
    v13(v58, &v9[OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_id], v59);
    v18 = UUID.uuidString.getter();
    v19 = v9;
    v20 = a1;
    v22 = v21;
    v23 = *(v16 + 8);
    v24 = v17;
    v6 = v16;
    v5 = v15;
    v23(v14, v24);
    v25 = sub_1002FFA0C(v18, v22, &v60);
    v26 = v20;
    v9 = v19;

    *(v12 + 14) = v25;
    v27 = v56;
    _os_log_impl(&_mh_execute_header, v56, v55, "%s Remote UI invalidated for session %s", v12, 0x16u);
    swift_arrayDestroy();

    if (!v26)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (!a1)
    {
      goto LABEL_11;
    }
  }

  v28 = *&v9[OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_startCallback];
  if (v28)
  {
    v29 = *&v9[OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_startCallback + 8];
    v57 = v9;
    v30 = v9;
    swift_errorRetain();
    sub_100113B54(v28, v29);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v60 = v56;
      *v33 = 136315394;
      v34 = *(v6 + 16);
      v54 = v31;
      v35 = v58;
      v53 = v32;
      v36 = v59;
      v34(v58, &v30[OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_id], v59);
      v37 = v29;
      v38 = UUID.uuidString.getter();
      v40 = v39;
      (*(v6 + 8))(v35, v36);
      v41 = v38;
      v29 = v37;
      v42 = sub_1002FFA0C(v41, v40, &v60);

      *(v33 + 4) = v42;
      *(v33 + 12) = 2112;
      swift_errorRetain();
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 14) = v43;
      v31 = v54;
      v44 = v55;
      *v55 = v43;
      _os_log_impl(&_mh_execute_header, v31, v53, "Remote UI invalidated before session %s is started with error %@", v33, 0x16u);
      sub_100075768(v44, &unk_100503F70, &unk_10040B2E0);

      sub_1000752F4(v56);
    }

    *v5 = 0xD00000000000002ALL;
    v5[1] = 0x80000001004672D0;
    v45 = enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:);
    v46 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
    v47 = *(v46 - 8);
    (*(v47 + 104))(v5, v45, v46);
    (*(v47 + 56))(v5, 0, 1, v46);
    v28(0, v5);
    sub_1000B2A4C(v28, v29);

    sub_100075768(v5, &unk_100506F00, &qword_10040BE90);
  }

LABEL_11:
  v48 = enum case for SEStorageManagementInternal.Types.ErrorCode.invalidated(_:);
  v49 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
  v50 = *(v49 - 8);
  (*(v50 + 104))(v5, v48, v49);
  (*(v50 + 56))(v5, 0, 1, v49);
  sub_1001E1ADC(0, v5);
  return sub_100075768(v5, &unk_100506F00, &qword_10040BE90);
}

uint64_t sub_1001F2BDC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10012E598;

  return sub_1001EF910(v2, v3, v4);
}

uint64_t sub_1001F2C90()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10012E598;

  return sub_1001EFE58(v2, v3, v4);
}

uint64_t sub_1001F2D50(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10012E598;

  return sub_1001EFF40(a1, v4, v5, v6);
}

uint64_t sub_1001F2E1C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001F2E54(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10012E598;

  return sub_1001892F0(a1, v4);
}

uint64_t sub_1001F2F0C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000C288C;

  return sub_1001892F0(a1, v4);
}

uint64_t sub_1001F2FDC(void (*a1)(void))
{
  a1(*(v1 + 16));

  return _swift_deallocObject(v1, 32, 7);
}

uint64_t sub_1001F3024()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10012E598;

  return sub_1001EEAD4(v2, v3);
}

uint64_t sub_1001F30D8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10012E598;

  return sub_1001ED064(v2, v3, v4);
}

uint64_t sub_1001F3194()
{
  v1 = sub_100068FC4(&qword_100506F78, &qword_10040F300);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1001F3228(char a1, uint64_t a2)
{
  sub_100068FC4(&qword_100506F78, &qword_10040F300);

  return sub_1001ECE58(a1, a2);
}

uint64_t sub_1001F32B4()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001F32FC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000C288C;

  return sub_1001EB79C(v2, v3, v4);
}

uint64_t sub_1001F33B0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001F33F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001F3488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, NSObject *a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X8>)
{
  v116 = a7;
  v111 = a5;
  v112 = a6;
  v117 = a3;
  v118 = a4;
  v113 = a8;
  v10 = sub_100068FC4(&qword_100504F08, &unk_10040DE20);
  __chkstk_darwin(v10 - 8);
  v110 = &v103 - v11;
  v115 = type metadata accessor for SEKeySyncRecovery.RecoveryRecord(0);
  __chkstk_darwin(v115);
  v109 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v114 = &v103 - v14;
  sub_100068FC4(&qword_100507158, &qword_10040F440);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10040AA50;
  *(inited + 32) = kSecClass;
  type metadata accessor for CFString(0);
  *(inited + 40) = kSecClassGenericPassword;
  *(inited + 64) = v16;
  *(inited + 72) = kSecAttrAccount;
  *(inited + 80) = a1;
  *(inited + 88) = a2;
  *(inited + 104) = &type metadata for String;
  *(inited + 112) = kSecAttrService;
  v17 = kSecClass;
  v18 = kSecClassGenericPassword;
  v19 = kSecAttrAccount;

  v20 = kSecAttrService;
  v21 = v117;
  v22 = v118;
  *(inited + 120) = Data.base64EncodedString(options:)(0);
  *(inited + 144) = &type metadata for String;
  *(inited + 152) = kSecAttrAccessGroup;
  *(inited + 160) = 0xD000000000000033;
  *(inited + 168) = 0x8000000100467500;
  *(inited + 184) = &type metadata for String;
  *(inited + 192) = kSecAttrSynchronizable;
  *(inited + 224) = &type metadata for Bool;
  *(inited + 200) = 1;
  v23 = kSecAttrAccessGroup;
  v24 = kSecAttrSynchronizable;
  v25 = sub_1000918D4(inited);
  swift_setDeallocating();
  sub_100068FC4(&qword_100502C88, &qword_100409D68);
  swift_arrayDestroy();
  if (qword_100501B20 != -1)
  {
    swift_once();
  }

  swift_getObjectType();
  v26 = v140;
  v27 = sub_10031CB74(v25, 1);
  if (v26)
  {

    if (qword_100501B10 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_1000958E4(v29, qword_10051B4E0);
    swift_errorRetain();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *&v119[0] = v33;
      *v32 = 136315138;
      swift_getErrorValue();
      v34 = Error.localizedDescription.getter();
      v36 = sub_1002FFA0C(v34, v35, v119);

      *(v32 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v30, v31, "Error querying regular keychain item : %s", v32, 0xCu);
      sub_1000752F4(v33);
    }

    v37 = 26;
    LOBYTE(v119[0]) = 26;
    sub_10018C6D8();
    swift_willThrowTypedImpl();

LABEL_16:
    *v116 = v37;
    return result;
  }

  v39 = v27;
  v40 = v28;

  if (v40 >> 60 == 15)
  {
    if (qword_100501B10 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_1000958E4(v41, qword_10051B4E0);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "Recovery item not found (yet)", v44, 2u);
    }

    v37 = 17;
    LOBYTE(v119[0]) = 17;
    sub_10018C6D8();
    swift_willThrowTypedImpl();
    result = sub_10006A2D0(v39, v40);
    goto LABEL_16;
  }

  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  sub_100069E2C(v39, v40);
  PropertyListDecoder.init()();
  sub_1001F97FC(&qword_100507160, type metadata accessor for SEKeySyncRecovery.RecoveryRecord, "=\t\v");
  v45 = v114;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v108 = v39;
  v140 = v40;

  v46 = v113;
  sub_1001F9794(v45, v113, type metadata accessor for SEKeySyncRecovery.RecoveryRecord);
  v47 = *(v46 + 48);
  v48 = *(v46 + 56);
  sub_10026E498(v121);
  *&v119[0] = v47;
  *(&v119[0] + 1) = v48;
  sub_100069E2C(v47, v48);
  v49 = sub_1001A93E0(v119, v121);
  v138 = v122;
  v139 = v123;
  v50 = v49;
  sub_10018C454(&v138);
  v137 = v124;
  sub_100075768(&v137, &qword_100504EC8, &qword_10040C3B0);
  sub_10006A178(*&v119[0], *(&v119[0] + 1));
  sub_10026F064(v50, v125);
  v136 = v125[4];
  sub_10026E324(v126);
  v119[0] = v136;
  sub_1001F6C50(&v136, v120);
  sub_1001F6C50(&v136, v120);
  v51 = sub_1001A93E0(v119, v126);
  v134 = v127;
  v135 = v128;
  v52 = v51;
  sub_10018C454(&v134);
  v133 = v129;
  sub_100075768(&v133, &qword_100504EC8, &qword_10040C3B0);
  sub_10006A178(*&v119[0], *(&v119[0] + 1));
  sub_10026F834(v52, v130);
  sub_10011116C(&v136);
  sub_1001F6CAC(v125);
  v53 = v131;
  v54 = v132;
  v56 = v111;
  v55 = v112;
  if (!sub_10008FB4C(v131, v132, v111, v112))
  {
    v105 = v54;
    v106 = v53;
    if (qword_100501B10 != -1)
    {
      swift_once();
    }

    v59 = type metadata accessor for Logger();
    v60 = sub_1000958E4(v59, qword_10051B4E0);
    v61 = v22;
    v62 = v21;
    sub_100069E2C(v21, v61);
    sub_1001F6D00(v130, v119);
    sub_100069E2C(v56, v55);
    v114 = v60;
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();
    sub_10006A178(v62, v61);
    sub_1001F6D5C(v130);
    sub_10006A178(v56, v55);
    v107 = v64;
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      *&v119[0] = v104;
      *v65 = 136315650;
      v66 = sub_100288788(v62, v61);
      v117 = 0;
      v120[0] = v66;
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_10007A2D0();
      v118 = v63;
      v67 = BidirectionalCollection<>.joined(separator:)();
      v69 = v68;

      v70 = sub_1002FFA0C(v67, v69, v119);

      *(v65 + 4) = v70;
      *(v65 + 12) = 2080;
      v120[0] = sub_100288788(v106, v105);
      v71 = BidirectionalCollection<>.joined(separator:)();
      v73 = v72;

      v74 = sub_1002FFA0C(v71, v73, v119);

      *(v65 + 14) = v74;
      *(v65 + 22) = 2080;
      v120[0] = sub_100288788(v111, v112);
      v75 = BidirectionalCollection<>.joined(separator:)();
      v77 = v76;

      v78 = sub_1002FFA0C(v75, v77, v119);

      *(v65 + 24) = v78;
      v79 = v118;
      _os_log_impl(&_mh_execute_header, v118, v107, "Recovery blob for %s has DSID %s accounts has %s", v65, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v80 = v108;
    v81 = v140;
    sub_100069E2C(v108, v140);
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.error.getter();
    sub_10006A2D0(v80, v81);
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      *&v119[0] = v85;
      *v84 = 136315138;
      v86 = Data.base64EncodedString(options:)(0);
      v87 = sub_1002FFA0C(v86._countAndFlagsBits, v86._object, v119);

      *(v84 + 4) = v87;
      _os_log_impl(&_mh_execute_header, v82, v83, "Recovery blob: %s", v84, 0xCu);
      sub_1000752F4(v85);
    }

    v88 = v109;
    sub_1001F6DB0(v46, v109, type metadata accessor for SEKeySyncRecovery.RecoveryRecord);
    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      *&v119[0] = v92;
      *v91 = 136315138;
      v93 = Data.base64EncodedString(options:)(0);
      sub_1001F9734(v88, type metadata accessor for SEKeySyncRecovery.RecoveryRecord);
      v94 = sub_1002FFA0C(v93._countAndFlagsBits, v93._object, v119);

      *(v91 + 4) = v94;
      _os_log_impl(&_mh_execute_header, v89, v90, "Encrypted blob: %s", v91, 0xCu);
      sub_1000752F4(v92);
    }

    else
    {

      sub_1001F9734(v88, type metadata accessor for SEKeySyncRecovery.RecoveryRecord);
    }

    v95 = v140;
    v96 = v110;
    sub_1001F6E18(v46 + *(v115 + 36), v110);
    v97 = type metadata accessor for CreationMetadata(0);
    v98 = (*(*(v97 - 8) + 48))(v96, 1, v97);
    sub_100075768(v96, &qword_100504F08, &unk_10040DE20);
    if (v98 == 1)
    {
      v37 = 29;
    }

    else
    {
      v99 = objc_opt_self();
      v100 = String._bridgeToObjectiveC()();
      v101 = String._bridgeToObjectiveC()();
      [v99 requestTapToRadar:v100 client:v101];

      v37 = 33;
    }

    LOBYTE(v119[0]) = v37;
    sub_10018C6D8();
    swift_willThrowTypedImpl();
    v102 = v108;
    sub_10006A2D0(v108, v95);
    sub_10006A2D0(v102, v95);
    sub_1001F9734(v46, type metadata accessor for SEKeySyncRecovery.RecoveryRecord);
    result = sub_1001F6D5C(v130);
    goto LABEL_16;
  }

  v57 = v108;
  v58 = v140;
  sub_10006A2D0(v108, v140);
  sub_10006A2D0(v57, v58);
  return sub_1001F6D5C(v130);
}

uint64_t sub_1001F44E8(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  sub_1000B6A94(v2, qword_10051B4E0);
  sub_1000958E4(v2, qword_10051B4E0);
  String.init(cString:)();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1001F4560()
{
  v0 = type metadata accessor for SESDataTask();
  result = swift_allocObject();
  qword_10051B510 = v0;
  unk_10051B518 = &off_1004C90F8;
  qword_10051B4F8 = result;
  return result;
}

id sub_1001F45AC()
{
  result = [objc_opt_self() sharedInstance];
  qword_10051B520 = result;
  return result;
}

uint64_t sub_1001F45E8(void *a1)
{
  v3 = v1;
  v5 = sub_100068FC4(&qword_100507210, &qword_10040F4F8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  sub_1000752B0(a1, a1[3]);
  sub_1001F96E0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v14) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = v3[5];
    v14 = v3[4];
    v15 = v9;
    v13 = 2;
    sub_100069E2C(v14, v9);
    sub_1000B8890();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10006A178(v14, v15);
    v10 = v3[7];
    v14 = v3[6];
    v15 = v10;
    v13 = 3;
    sub_100069E2C(v14, v10);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10006A178(v14, v15);
    type metadata accessor for SEKeySyncRecovery.RecoveryRecord(0);
    LOBYTE(v14) = 4;
    type metadata accessor for SESPeerIdentityData(0);
    sub_1001F97FC(&qword_100504E28, type metadata accessor for SESPeerIdentityData, &unk_10040DF5C);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v14) = 5;
    type metadata accessor for CreationMetadata(0);
    sub_1001F97FC(&qword_1005062A8, type metadata accessor for CreationMetadata, &unk_10040DEBC);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1001F48D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = sub_100068FC4(&qword_100504F08, &unk_10040DE20);
  __chkstk_darwin(v3 - 8);
  v39 = &v36 - v4;
  v41 = type metadata accessor for SESPeerIdentityData(0);
  __chkstk_darwin(v41);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_100068FC4(&qword_100507220, &qword_10040F500);
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v8 = &v36 - v7;
  v9 = type metadata accessor for SEKeySyncRecovery.RecoveryRecord(0);
  __chkstk_darwin(v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 36);
  sub_1001C5FF8(&v11[v13]);
  v14 = type metadata accessor for CreationMetadata(0);
  v15 = *(*(v14 - 8) + 56);
  v44 = v13;
  v16 = v11;
  v15(&v11[v13], 0, 1, v14);
  v17 = a1[3];
  v43 = a1;
  sub_1000752B0(a1, v17);
  sub_1001F96E0();
  v18 = v8;
  v19 = v45;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v19)
  {
    v45 = v19;
    sub_1000752F4(v43);
    return sub_100075768(&v16[v44], &qword_100504F08, &unk_10040DE20);
  }

  v36 = v14;
  v37 = v9;
  v20 = v6;
  v21 = v40;
  LOBYTE(v46) = 0;
  v22 = v42;
  *v11 = KeyedDecodingContainer.decode(_:forKey:)();
  *(v11 + 1) = v24;
  LOBYTE(v46) = 1;
  v25 = KeyedDecodingContainer.decode(_:forKey:)();
  v45 = 0;
  v27 = v21;
  *(v11 + 2) = v25;
  *(v11 + 3) = v26;
  v47 = 2;
  sub_1000B87D4();
  v28 = v45;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  if (v28)
  {
    (*(v21 + 8))(v18, v22);
    v29 = 0;
    v30 = 0;
    v45 = v28;
    v31 = v28;
    goto LABEL_11;
  }

  *(v11 + 2) = v46;
  v47 = 3;
  v32 = v18;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v45 = 0;
  v31 = 0;
  *(v11 + 3) = v46;
  LOBYTE(v46) = 4;
  sub_1001F97FC(&qword_100504E20, type metadata accessor for SESPeerIdentityData, &unk_10040DFAC);
  v33 = v45;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v45 = v33;
  if (v33)
  {
    (*(v21 + 8))(v32, v22);
    v30 = 0;
    v29 = 1;
    goto LABEL_11;
  }

  sub_1001F9794(v20, &v11[*(v37 + 32)], type metadata accessor for SESPeerIdentityData);
  LOBYTE(v46) = 5;
  sub_1001F97FC(&qword_100506278, type metadata accessor for CreationMetadata, &unk_10040DEE4);
  v34 = v39;
  v35 = v45;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v45 = v35;
  if (v35)
  {
    (*(v27 + 8))(v32, v22);
    v29 = 1;
    v30 = 1;
LABEL_11:
    sub_1000752F4(v43);

    if (v31)
    {
      if (v29)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_10006A178(*(v16 + 4), *(v16 + 5));
      if (v29)
      {
LABEL_13:
        sub_10006A178(*(v16 + 6), *(v16 + 7));
        if ((v30 & 1) == 0)
        {
          return sub_100075768(&v16[v44], &qword_100504F08, &unk_10040DE20);
        }

LABEL_17:
        sub_1001F9734(&v16[*(v37 + 32)], type metadata accessor for SESPeerIdentityData);
        return sub_100075768(&v16[v44], &qword_100504F08, &unk_10040DE20);
      }
    }

    if (!v30)
    {
      return sub_100075768(&v16[v44], &qword_100504F08, &unk_10040DE20);
    }

    goto LABEL_17;
  }

  (*(v27 + 8))(v32, v22);
  sub_1001F9844(v34, &v11[v44]);
  sub_1001F6DB0(v11, v38, type metadata accessor for SEKeySyncRecovery.RecoveryRecord);
  sub_1000752F4(v43);
  return sub_1001F9734(v11, type metadata accessor for SEKeySyncRecovery.RecoveryRecord);
}

uint64_t sub_1001F4EE4()
{
  v1 = *v0;
  v2 = 0x6E6F69676572;
  v3 = 0x6574707972636E65;
  v4 = 0x746E656449637273;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656D614E77656976;
  if (v1 != 1)
  {
    v5 = 0x444955556B6C74;
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

uint64_t sub_1001F4FB4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1001F99DC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1001F4FDC(uint64_t a1)
{
  v2 = sub_1001F96E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001F5018(uint64_t a1)
{
  v2 = sub_1001F96E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001F5084()
{
  v0 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  sub_1000B6A94(v0, qword_100507100);
  sub_1000958E4(v0, qword_100507100);
  return UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
}

uint64_t sub_1001F5138()
{
  v0 = sub_100068FC4(&qword_100504228, &unk_10040F470);
  sub_1000B6A94(v0, qword_100507118);
  sub_1000958E4(v0, qword_100507118);
  sub_100068FC4(&qword_1005048A0, &qword_100409C80);
  return UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
}

uint64_t sub_1001F5208()
{
  v0 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  sub_1000B6A94(v0, qword_100507130);
  sub_1000958E4(v0, qword_100507130);
  return UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
}

uint64_t sub_1001F52B8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 80) = v5;
  *v5 = v2;
  v5[1] = sub_1001F536C;

  return sub_100159A70(a1, a2);
}

uint64_t sub_1001F536C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  *(*v3 + 88) = v2;

  if (v2)
  {

    return _swift_task_switch(sub_1001F54E0, 0, 0);
  }

  else
  {
    v8 = (*(v6 + 88) != 0) << 8;
    v9 = *(v7 + 8);

    return v9(a1, a2, v8);
  }
}

uint64_t sub_1001F54E0()
{
  *(v0 + 64) = *(v0 + 88);
  swift_errorRetain();
  sub_100068FC4(&unk_100503F80, &qword_100409CF0);
  if (swift_dynamicCast())
  {

    v2 = *(v0 + 40);
    v1 = *(v0 + 48);
    v3 = *(v0 + 56);
  }

  else
  {

    _StringGuts.grow(_:)(23);

    swift_getErrorValue();
    v4._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v4);

    v2 = 0xD000000000000015;
    v1 = 0x8000000100467700;
    v3 = 3;
  }

  v5 = v3 | ((*(v0 + 88) != 0) << 8);
  v6 = *(v0 + 8);

  return v6(v2, v1, v5);
}

uint64_t sub_1001F5640(uint64_t a1, uint64_t a2)
{
  v4 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v32 - v6;
  if (qword_100501B28 != -1)
  {
    swift_once();
  }

  v8 = sub_1000958E4(v4, qword_100507100);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);
  UserDefaultBacked.wrappedValue.getter();
  result = (*(v5 + 8))(v7, v4);
  if ((v34[0] & 1) == 0)
  {
    v32[1] = v4;
    v32[2] = v8;
    sub_100068FC4(&qword_100507158, &qword_10040F440);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10040AA50;
    *(inited + 32) = kSecClass;
    type metadata accessor for CFString(0);
    *(inited + 40) = kSecClassGenericPassword;
    *(inited + 64) = v11;
    *(inited + 72) = kSecAttrAccount;
    *(inited + 80) = a1;
    *(inited + 88) = a2;
    *(inited + 104) = &type metadata for String;
    *(inited + 112) = kSecAttrService;
    v12 = kSecClass;
    v13 = kSecClassGenericPassword;
    v14 = kSecAttrAccount;

    v15 = kSecAttrService;
    *(inited + 120) = Data.base64EncodedString(options:)(0);
    *(inited + 144) = &type metadata for String;
    *(inited + 152) = kSecAttrAccessGroup;
    *(inited + 160) = 0xD000000000000033;
    *(inited + 168) = 0x8000000100467500;
    *(inited + 184) = &type metadata for String;
    *(inited + 192) = kSecAttrSynchronizable;
    *(inited + 224) = &type metadata for Bool;
    *(inited + 200) = 1;
    v16 = kSecAttrAccessGroup;
    v17 = kSecAttrSynchronizable;
    v18 = sub_1000918D4(inited);
    swift_setDeallocating();
    sub_100068FC4(&qword_100502C88, &qword_100409D68);
    swift_arrayDestroy();
    if (qword_100501B20 != -1)
    {
      swift_once();
    }

    v19 = qword_10051B520;
    sub_100195868(v18);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v34[0] = 0;
    v21 = [v19 updateToApplePayView:isa error:v34];

    if (v21)
    {
      v22 = v34[0];
    }

    else
    {
      v23 = v34[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_100501B10 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_1000958E4(v24, qword_10051B4E0);
      swift_errorRetain();
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v34[0] = v28;
        *v27 = 136315138;
        swift_getErrorValue();
        v29 = Error.localizedDescription.getter();
        v31 = sub_1002FFA0C(v29, v30, v34);

        *(v27 + 4) = v31;
        _os_log_impl(&_mh_execute_header, v25, v26, "Failed to update recovery blob %s", v27, 0xCu);
        sub_1000752F4(v28);
      }

      else
      {
      }
    }

    v33[0] = 1;
    swift_beginAccess();
    UserDefaultBacked.wrappedValue.setter();
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1001F5B88(char a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v30 - v8;
  if (qword_100501B10 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000958E4(v10, qword_10051B4E0);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v30 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_1002FFA0C(a2, a3, &v30);
    _os_log_impl(&_mh_execute_header, v11, v12, "Encrypting towards region %s", v13, 0xCu);
    sub_1000752F4(v14);
  }

  if (a1)
  {
    if (a2 == 20035 && a3 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      sub_100068FC4(&qword_1005025E0, &unk_10040F430);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_100409900;
      if (qword_100501CB8 != -1)
      {
        swift_once();
      }

      v16 = qword_10051B738;
      v17 = unk_10051B740;
      *(v15 + 32) = qword_10051B738;
      *(v15 + 40) = v17;
      sub_100069E2C(v16, v17);
      if (qword_100501CC8 != -1)
      {
        swift_once();
      }

      v18 = &qword_10051B758;
    }

    else
    {
      sub_100068FC4(&qword_1005025E0, &unk_10040F430);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_100409900;
      if (qword_100501CB8 != -1)
      {
        swift_once();
      }

      v25 = qword_10051B738;
      v26 = unk_10051B740;
      *(v15 + 32) = qword_10051B738;
      *(v15 + 40) = v26;
      sub_100069E2C(v25, v26);
      if (qword_100501CC0 != -1)
      {
        swift_once();
      }

      v18 = &qword_10051B748;
    }
  }

  else
  {
    if (qword_100501B38 != -1)
    {
      swift_once();
    }

    v19 = sub_1000958E4(v6, qword_100507130);
    (*(v7 + 16))(v9, v19, v6);
    UserDefaultBacked.wrappedValue.getter();
    (*(v7 + 8))(v9, v6);
    v20 = v31;
    sub_100068FC4(&qword_1005025E0, &unk_10040F430);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_100409900;
    if (v20 == 1)
    {
      if (qword_100501CA0 != -1)
      {
        swift_once();
      }

      v21 = qword_10051B708;
      v22 = unk_10051B710;
      *(v15 + 32) = qword_10051B708;
      *(v15 + 40) = v22;
      sub_100069E2C(v21, v22);
      if (qword_100501CA8 != -1)
      {
        swift_once();
      }

      v18 = &qword_10051B718;
    }

    else
    {
      if (qword_100501CA0 != -1)
      {
        swift_once();
      }

      v23 = qword_10051B708;
      v24 = unk_10051B710;
      *(v15 + 32) = qword_10051B708;
      *(v15 + 40) = v24;
      sub_100069E2C(v23, v24);
      if (qword_100501CB0 != -1)
      {
        swift_once();
      }

      v18 = &qword_10051B728;
    }
  }

  v27 = *v18;
  v28 = v18[1];
  *(v15 + 48) = *v18;
  *(v15 + 56) = v28;
  sub_100069E2C(v27, v28);
  return v15;
}

id sub_1001F60C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject *a5, uint64_t a6)
{
  v94 = a6;
  v12 = type metadata accessor for SEKeySyncRecovery.RecoveryRecord(0);
  __chkstk_darwin(v12);
  v97 = (v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = [objc_opt_self() currentLocale];
  if (!result)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v15 = result;
  v95 = a2;
  v96 = a3;
  v99 = a5;
  v16 = [result countryCode];

  if (v16)
  {
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
  }

  else
  {
    v20 = 0xE200000000000000;
    v18 = 21333;
  }

  v21 = sub_1003AF3C4(a1, v17);
  v22 = [v21 isProd];

  v23 = sub_1001F5B88(v22, v18, v20);
  v24 = a1;
  v25 = v23;
  v98 = a4;
  v26 = v20;
  v27 = v99;
  v28 = sub_1001A5EF4(v24, a4, v99, v23);
  if (v6)
  {

    sub_10018C6D8();
    swift_allocError();
    *v30 = 16;
    swift_willThrow();
  }

  v31 = v29;
  v91[1] = v25;
  v92 = v28;
  v32 = *(v12 + 32);
  v93 = v12;
  v33 = v97;
  sub_1001F6DB0(v94, v97 + v32, type metadata accessor for SESPeerIdentityData);
  v34 = *(v12 + 36);

  v35 = v18;
  v36 = v96;

  sub_1001C5FF8((v33 + v34));
  v37 = type metadata accessor for CreationMetadata(0);
  (*(*(v37 - 8) + 56))(v33 + v34, 0, 1, v37);
  v94 = v35;
  *v33 = v35;
  v33[1] = v26;
  v33[2] = v95;
  v33[3] = v36;
  v38 = v27;
  v39 = v98;
  v33[4] = v98;
  v33[5] = v38;
  v33[6] = v92;
  v33[7] = v31;
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  sub_100069E2C(v39, v38);
  PropertyListEncoder.init()();
  sub_1001F97FC(&qword_100507148, type metadata accessor for SEKeySyncRecovery.RecoveryRecord, &unk_10040F4CC);
  v40 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v42 = v41;
  v93 = v26;
  v43 = v40;

  sub_100068FC4(&unk_100503F50, &unk_10040D950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10040F420;
  v101 = kSecClass;
  type metadata accessor for CFString(0);
  v46 = v45;
  sub_1001F97FC(&qword_1005021B0, type metadata accessor for CFString, &unk_1004097C8);
  v47 = kSecClass;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = v46;
  *(inited + 72) = kSecClassGenericPassword;
  v101 = kSecAttrAccessible;
  v48 = kSecClassGenericPassword;
  v49 = kSecAttrAccessible;
  AnyHashable.init<A>(_:)();
  *(inited + 168) = v46;
  *(inited + 144) = kSecAttrAccessibleAfterFirstUnlock;
  v101 = kSecAttrAccount;
  v50 = kSecAttrAccessibleAfterFirstUnlock;
  v51 = kSecAttrAccount;
  AnyHashable.init<A>(_:)();
  *(inited + 240) = &type metadata for String;
  v52 = v96;
  *(inited + 216) = v95;
  *(inited + 224) = v52;
  v101 = kSecAttrService;

  v53 = kSecAttrService;
  AnyHashable.init<A>(_:)();
  v54 = Data.base64EncodedString(options:)(0);
  *(inited + 312) = &type metadata for String;
  *(inited + 288) = v54;
  v101 = kSecAttrAccessGroup;
  v55 = kSecAttrAccessGroup;
  AnyHashable.init<A>(_:)();
  *(inited + 384) = &type metadata for String;
  *(inited + 360) = 0xD000000000000033;
  *(inited + 368) = 0x8000000100467500;
  v101 = kSecAttrSynchronizable;
  v56 = kSecAttrSynchronizable;
  AnyHashable.init<A>(_:)();
  *(inited + 456) = &type metadata for Bool;
  *(inited + 432) = 1;
  v101 = kSecValueData;
  v57 = kSecValueData;
  AnyHashable.init<A>(_:)();
  v96 = v43;
  isa = Data._bridgeToObjectiveC()().super.isa;
  result = sub_1001F6C04();
  *(inited + 528) = result;
  *(inited + 504) = isa;
  if (!kSecAttrSyncViewHint)
  {
    goto LABEL_24;
  }

  v95 = v42;
  v101 = kSecAttrSyncViewHint;
  v59 = kSecAttrSyncViewHint;
  result = AnyHashable.init<A>(_:)();
  v60 = v93;
  if (!kSecAttrViewHintApplePay)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v61 = kSecAttrViewHintApplePay;

  *(inited + 600) = v46;
  *(inited + 576) = v61;
  sub_100090BC4(inited);
  swift_setDeallocating();
  sub_100068FC4(&qword_100502C48, &qword_10040B2D0);
  swift_arrayDestroy();
  v62 = v98;
  if (qword_100501B20 != -1)
  {
    swift_once();
  }

  v63 = qword_10051B520;
  v64 = Dictionary._bridgeToObjectiveC()().super.isa;

  v65 = [v63 addItem:v64];

  if (v65)
  {

    if (qword_100501B10 != -1)
    {
      swift_once();
    }

    v66 = type metadata accessor for Logger();
    sub_1000958E4(v66, qword_10051B4E0);
    v67 = v99;
    sub_100069E2C(v62, v99);
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();
    sub_10006A178(v62, v67);
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v101 = v71;
      *v70 = 136315394;
      v72 = Data.base64EncodedString(options:)(0);
      v73 = sub_1002FFA0C(v72._countAndFlagsBits, v72._object, &v101);

      *(v70 + 4) = v73;
      *(v70 + 12) = 1024;
      *(v70 + 14) = v65;
      _os_log_impl(&_mh_execute_header, v68, v69, "Failed to add recovery record for %s status %d", v70, 0x12u);
      sub_1000752F4(v71);
    }

    sub_10018C6D8();
    swift_allocError();
    *v74 = 25;
    swift_willThrow();
    sub_10006A178(v96, v95);
  }

  else
  {
    if (qword_100501B10 != -1)
    {
      swift_once();
    }

    v75 = type metadata accessor for Logger();
    sub_1000958E4(v75, qword_10051B4E0);

    v76 = v99;
    sub_100069E2C(v62, v99);
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.info.getter();

    sub_10006A178(v62, v76);
    v79 = os_log_type_enabled(v77, v78);
    v80 = v94;
    if (v79)
    {
      v81 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v101 = v92;
      *v81 = 136315394;
      v82 = sub_1002FFA0C(v80, v60, &v101);

      *(v81 + 4) = v82;
      *(v81 + 12) = 2080;
      v100 = sub_100288788(v62, v76);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_10007A2D0();
      v83 = BidirectionalCollection<>.joined(separator:)();
      v85 = v84;

      sub_10028C190(8, v83, v85);
      v99 = v77;

      v86 = static String._fromSubstring(_:)();
      v88 = v87;

      v89 = sub_1002FFA0C(v86, v88, &v101);

      *(v81 + 14) = v89;
      v90 = v99;
      _os_log_impl(&_mh_execute_header, v99, v78, "Stored recovery record region %s TLK %s", v81, 0x16u);
      swift_arrayDestroy();

      sub_10006A178(v96, v95);
    }

    else
    {

      sub_10006A178(v96, v95);
    }
  }

  return sub_1001F9734(v97, type metadata accessor for SEKeySyncRecovery.RecoveryRecord);
}

uint64_t type metadata accessor for SEKeySyncRecovery.RecoveryRecord(uint64_t a1)
{
  result = qword_1005071C8;
  if (!qword_1005071C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1001F6C04()
{
  result = qword_100507150;
  if (!qword_100507150)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100507150);
  }

  return result;
}

uint64_t sub_1001F6DB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001F6E18(uint64_t a1, uint64_t a2)
{
  v4 = sub_100068FC4(&qword_100504F08, &unk_10040DE20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001F6E88(char a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100068FC4(&qword_100504228, &unk_10040F470);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - v8;
  if (qword_100501B30 != -1)
  {
    swift_once();
  }

  v10 = sub_1000958E4(v6, qword_100507118);
  (*(v7 + 16))(v9, v10, v6);
  UserDefaultBacked.wrappedValue.getter();
  (*(v7 + 8))(v9, v6);
  v11 = v22;
  if (v22)
  {
    v12 = v21;
    if (qword_100501B10 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000958E4(v13, qword_10051B4E0);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v21 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_1002FFA0C(v12, v11, &v21);
      _os_log_impl(&_mh_execute_header, v14, v15, "Overriding URL via defaults - %s", v16, 0xCu);
      sub_1000752F4(v17);
    }
  }

  else
  {
    v12 = 0xD000000000000035;
    v20 = a2 == 20035 && a3 == 0xE200000000000000;
    if (a1)
    {
      if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return 0xD000000000000038;
      }
    }

    else if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      return 0xD000000000000041;
    }

    else
    {
      return 0xD000000000000039;
    }
  }

  return v12;
}

void sub_1001F71A8(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    if (a3 == 1)
    {
      v5 = objc_opt_self();
      _StringGuts.grow(_:)(31);

      v6._countAndFlagsBits = a1;
      v6._object = a2;
      String.append(_:)(v6);
      v7 = String._bridgeToObjectiveC()();

      v12 = String._bridgeToObjectiveC()();
      [v5 requestTapToRadar:v7 client:v12];
    }
  }

  else
  {
    v8 = objc_opt_self();
    _StringGuts.grow(_:)(31);

    v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v9);

    v10 = String._bridgeToObjectiveC()();

    v11 = String._bridgeToObjectiveC()();
    [v8 requestTapToRadar:v10 client:v11];
  }
}

uint64_t sub_1001F73A0(uint64_t a1, uint64_t a2)
{
  *(v2 + 272) = a1;
  *(v2 + 280) = a2;

  return _swift_task_switch(sub_1001F7430, 0, 0);
}

uint64_t sub_1001F7430()
{
  v60 = v0;
  v1 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v0[30] = 0;
  v3 = [v1 JSONObjectWithData:isa options:0 error:v0 + 30];

  v4 = v0[30];
  if (!v3)
  {
    v18 = v4;
    _convertNSErrorToError(_:)();

LABEL_14:
    swift_willThrow();
    if (qword_100501B10 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000958E4(v20, qword_10051B4E0);
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v59 = v24;
      *v23 = 136315138;
      swift_getErrorValue();
      v25 = Error.localizedDescription.getter();
      v27 = sub_1002FFA0C(v25, v26, &v59);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v21, v22, "Failed to decode JSON object %s", v23, 0xCu);
      sub_1000752F4(v24);
    }

    v29 = v0[34];
    v28 = v0[35];
    sub_100069E2C(v29, v28);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    sub_10006A178(v29, v28);
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v59 = v33;
      *v32 = 136315138;
      v34 = Data.base64EncodedString(options:)(0);
      v35 = sub_1002FFA0C(v34._countAndFlagsBits, v34._object, &v59);

      *(v32 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v30, v31, "%s", v32, 0xCu);
      sub_1000752F4(v33);
    }

    sub_10018C6D8();
    swift_allocError();
    *v36 = 6;
    swift_willThrow();

    goto LABEL_33;
  }

  v5 = v4;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100068FC4(&qword_100505FD0, &qword_10040B550);
  if (!swift_dynamicCast())
  {
    sub_10018C6D8();
    swift_allocError();
    *v19 = 6;
    goto LABEL_14;
  }

  v6 = v0[32];
  if (!*(v6 + 16))
  {
    goto LABEL_27;
  }

  v7 = sub_10008C908(0x6570706172776552, 0xED0000626F6C4264);
  if ((v8 & 1) == 0)
  {
    goto LABEL_27;
  }

  sub_1000754F0(*(v6 + 56) + 32 * v7, (v0 + 6));
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_27;
  }

  v9 = sub_10013044C(v0[24], v0[25]);
  v0[36] = v9;
  v0[37] = v10;
  if (v10 >> 60 == 15)
  {
    goto LABEL_27;
  }

  if (!*(v6 + 16) || (v11 = v10, v12 = v9, v13 = sub_10008C908(0xD000000000000012, 0x80000001004676C0), v9 = v12, v15 = v14, v10 = v11, (v15 & 1) == 0))
  {
LABEL_26:
    sub_10006A2D0(v9, v10);
LABEL_27:
    if (qword_100501B10 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_1000958E4(v42, qword_10051B4E0);

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v59 = v46;
      *v45 = 136315138;
      v47 = Dictionary.Keys.description.getter();
      v49 = v48;

      v50 = sub_1002FFA0C(v47, v49, &v59);

      *(v45 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v43, v44, "Missing or malformed response %s", v45, 0xCu);
      sub_1000752F4(v46);
    }

    else
    {
    }

    sub_10018C6D8();
    swift_allocError();
    *v51 = 18;
    swift_willThrow();
LABEL_33:
    v52 = v0[1];

    return v52();
  }

  sub_1000754F0(*(v6 + 56) + 32 * v13, (v0 + 10));
  if ((swift_dynamicCast() & 1) == 0 || (v16 = sub_10013044C(v0[26], v0[27]), v0[38] = v16, v0[39] = v17, v17 >> 60 == 15))
  {
    v9 = v12;
    v10 = v11;
    goto LABEL_26;
  }

  v37 = v16;
  v38 = v17;
  if (!*(v6 + 16) || (v39 = sub_10008C908(0xD00000000000001ALL, 0x80000001004676E0), (v40 & 1) == 0) || (sub_1000754F0(*(v6 + 56) + 32 * v39, (v0 + 14)), (swift_dynamicCast() & 1) == 0) || (v0[40] = sub_10013044C(v0[28], v0[29]), v0[41] = v41, v41 >> 60 == 15))
  {
    sub_10006A2D0(v12, v11);
    v9 = v37;
    v10 = v38;
    goto LABEL_26;
  }

  if (qword_100501B10 != -1)
  {
    swift_once();
  }

  v54 = type metadata accessor for Logger();
  v0[42] = sub_1000958E4(v54, qword_10051B4E0);
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&_mh_execute_header, v55, v56, "Got response data for rewrap, asking for SE", v57, 2u);
  }

  if (qword_100501A08 != -1)
  {
    swift_once();
  }

  v58 = swift_task_alloc();
  v0[43] = v58;
  *v58 = v0;
  v58[1] = sub_1001F7D08;

  return sub_10016C130();
}

uint64_t sub_1001F7D08(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 352) = a1;
  *(v3 + 360) = v1;

  if (v1)
  {
    v4 = sub_1001F8194;
  }

  else
  {
    v4 = sub_1001F7E48;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001F7E48()
{
  v36 = v0;
  v1 = v0[44];
  v2 = v0[45];
  v4 = v0[40];
  v3 = v0[41];
  v6 = v0[38];
  v5 = v0[39];
  v8 = v0[36];
  v7 = v0[37];
  sub_100068FC4(&qword_1005025E0, &unk_10040F430);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100409900;
  *(v9 + 32) = v4;
  *(v9 + 40) = v3;
  *(v9 + 48) = v6;
  *(v9 + 56) = v5;
  sub_10006A2BC(v4, v3);
  sub_10006A2BC(v6, v5);
  sub_1001A6AE4(v1, v8, v7, v9);

  if (v2)
  {
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v35 = v13;
      *v12 = 136315138;
      swift_getErrorValue();
      v14 = Error.localizedDescription.getter();
      v16 = sub_1002FFA0C(v14, v15, &v35);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "Failed to import rewrapped server TLK : %s", v12, 0xCu);
      sub_1000752F4(v13);
    }

    v17 = v0[44];
    v19 = v0[40];
    v18 = v0[41];
    v21 = v0[38];
    v20 = v0[39];
    v22 = v0[36];
    v34 = v0[37];
    sub_10018C6D8();
    swift_allocError();
    *v23 = 19;
    swift_willThrow();

    sub_10006A2D0(v19, v18);
    sub_10006A2D0(v21, v20);
    sub_10006A2D0(v22, v34);
    v24 = v0[1];
  }

  else
  {
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Successfully imported rewrapped server TLK", v27, 2u);
    }

    v28 = v0[44];
    v30 = v0[40];
    v29 = v0[41];
    v32 = v0[38];
    v31 = v0[39];
    sub_10006A2D0(v0[36], v0[37]);
    sub_10006A2D0(v32, v31);
    sub_10006A2D0(v30, v29);

    v24 = v0[1];
  }

  return v24();
}

uint64_t sub_1001F8194()
{
  v1 = v0[44];
  v3 = v0[40];
  v2 = v0[41];
  v5 = v0[38];
  v4 = v0[39];
  v7 = v0[36];
  v6 = v0[37];
  sub_10018C6D8();
  swift_allocError();
  *v8 = v1;
  sub_10006A2D0(v3, v2);
  sub_10006A2D0(v5, v4);
  sub_10006A2D0(v7, v6);
  v9 = v0[1];

  return v9();
}

uint64_t sub_1001F8290(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 370) = a3;
  *(v3 + 256) = a1;
  *(v3 + 264) = a2;
  sub_100068FC4(&unk_10050BEA0, &unk_10040F450);
  *(v3 + 272) = swift_task_alloc();
  v4 = type metadata accessor for URLRequest();
  *(v3 + 280) = v4;
  *(v3 + 288) = *(v4 - 8);
  *(v3 + 296) = swift_task_alloc();

  return _swift_task_switch(sub_1001F838C, 0, 0);
}

uint64_t sub_1001F838C()
{
  v71 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  v68 = v1;
  sub_100068FC4(&unk_100507CD0, &unk_100414C50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10040AA50;
  *(inited + 32) = 0xD000000000000017;
  *(inited + 40) = 0x80000001004675B0;
  v4 = (v1 + *(type metadata accessor for SEKeySyncRecovery.RecoveryRecord(0) + 32));
  *(v0 + 208) = sub_100288788(v4[6], v4[7]);
  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  sub_10007A2D0();
  v5 = BidirectionalCollection<>.joined(separator:)();
  v7 = v6;

  *(inited + 48) = v5;
  *(inited + 56) = v7;
  *(inited + 64) = 0xD000000000000013;
  *(inited + 72) = 0x80000001004675D0;
  *(v0 + 216) = sub_100288788(v4[4], v4[5]);
  v8 = BidirectionalCollection<>.joined(separator:)();
  v10 = v9;

  *(inited + 80) = v8;
  *(inited + 88) = v10;
  *(inited + 96) = 0xD000000000000015;
  *(inited + 104) = 0x80000001004675F0;
  *(v0 + 224) = sub_100288788(v2[6], v2[7]);
  v11 = BidirectionalCollection<>.joined(separator:)();
  v13 = v12;

  *(inited + 112) = v11;
  *(inited + 120) = v13;
  *(inited + 128) = 0xD000000000000011;
  *(inited + 136) = 0x8000000100467610;
  *(v0 + 232) = sub_100288788(v2[2], v2[3]);
  v14 = BidirectionalCollection<>.joined(separator:)();
  v16 = v15;

  *(inited + 144) = v14;
  *(inited + 152) = v16;
  strcpy((inited + 160), "EncryptedBlob");
  *(inited + 174) = -4864;
  *(v0 + 240) = sub_100288788(*(v68 + 48), *(v68 + 56));
  v17 = BidirectionalCollection<>.joined(separator:)();
  v19 = v18;

  *(inited + 176) = v17;
  *(inited + 184) = v19;
  v20 = sub_1000910F0(inited);
  swift_setDeallocating();
  sub_100068FC4(&unk_100504020, &qword_100409CC0);
  swift_arrayDestroy();
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  *(v0 + 248) = v20;
  sub_100068FC4(&qword_100502600, &unk_100417140);
  sub_1001F92D8();
  v21 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  *(v0 + 304) = v21;
  *(v0 + 312) = v22;
  v64 = v21;
  v65 = v22;
  v69 = *(v0 + 272);
  LOBYTE(v68) = *(v0 + 370);
  v67 = *(v0 + 256);

  v63 = v0;
  v23 = sub_1001C7DE0(0x54746375646F7250, 0xEB00000000657079, 0x2C31656E6F685069, 0xE900000000000031);
  v25 = v24;
  v26 = sub_1001C7DE0(0x4E746375646F7250, 0xEB00000000656D61, 0x4F20656E6F685069, 0xE900000000000053);
  v28 = v27;
  v29 = sub_1001C7DE0(0x56746375646F7250, 0xEE006E6F69737265, 3157553, 0xE300000000000000);
  v31 = v30;
  v66 = sub_1001C7DE0(0x726556646C697542, 0xEC0000006E6F6973, 3227953, 0xE300000000000000);
  v33 = v32;
  _StringGuts.grow(_:)(25);

  v70[0] = 60;
  v70[1] = 0xE100000000000000;
  v34._countAndFlagsBits = v23;
  v34._object = v25;
  String.append(_:)(v34);
  v35._countAndFlagsBits = 3940414;
  v35._object = 0xE300000000000000;
  String.append(_:)(v35);
  v36._countAndFlagsBits = v26;
  v36._object = v28;
  String.append(_:)(v36);
  v37._countAndFlagsBits = 59;
  v37._object = 0xE100000000000000;
  String.append(_:)(v37);
  v38._countAndFlagsBits = v29;
  v38._object = v31;
  String.append(_:)(v38);
  v39._countAndFlagsBits = 59;
  v39._object = 0xE100000000000000;
  String.append(_:)(v39);
  v40._countAndFlagsBits = v66;
  v40._object = v33;
  String.append(_:)(v40);
  v41._countAndFlagsBits = 3940414;
  v41._object = 0xE300000000000000;
  String.append(_:)(v41);
  v42._countAndFlagsBits = 0xD000000000000022;
  v42._object = 0x8000000100467630;
  String.append(_:)(v42);
  v43._countAndFlagsBits = 10272;
  v43._object = 0xE200000000000000;
  String.append(_:)(v43);
  v44._countAndFlagsBits = 0xD000000000000022;
  v44._object = 0x8000000100467630;
  String.append(_:)(v44);
  v45._countAndFlagsBits = 15913;
  v45._object = 0xE200000000000000;
  String.append(_:)(v45);
  v46 = sub_1001F6E88(v68, *v67, v67[1]);
  v48 = v47;
  URL.init(string:)();
  v49 = type metadata accessor for URL();
  result = (*(*(v49 - 8) + 48))(v69, 1, v49);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    URLRequest.init(url:cachePolicy:timeoutInterval:)();
    URLRequest.httpMethod.setter();
    sub_100069E2C(v64, v65);
    URLRequest.httpBody.setter();
    v51._object = 0x8000000100467660;
    v52._countAndFlagsBits = 60;
    v52._object = 0xE100000000000000;
    v51._countAndFlagsBits = 0xD000000000000013;
    URLRequest.addValue(_:forHTTPHeaderField:)(v52, v51);

    v53._countAndFlagsBits = 0x2D746E65746E6F43;
    v53._object = 0xEC00000065707954;
    v54._countAndFlagsBits = 0xD00000000000001FLL;
    v54._object = 0x8000000100467680;
    URLRequest.addValue(_:forHTTPHeaderField:)(v54, v53);
    if (qword_100501B10 != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    v63[40] = sub_1000958E4(v55, qword_10051B4E0);

    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v70[0] = v59;
      *v58 = 136315138;
      v60 = sub_1002FFA0C(v46, v48, v70);

      *(v58 + 4) = v60;
      _os_log_impl(&_mh_execute_header, v56, v57, "Making recovery request to URL %s", v58, 0xCu);
      sub_1000752F4(v59);
    }

    else
    {
    }

    if (qword_100501B18 != -1)
    {
      swift_once();
    }

    v61 = swift_task_alloc();
    v63[41] = v61;
    *v61 = v63;
    v61[1] = sub_1001F8CA0;
    v62 = v63[37];

    return sub_1001F52B8(v62, 1);
  }

  return result;
}

uint64_t sub_1001F8CA0(uint64_t a1, uint64_t a2, __int16 a3)
{
  v4 = *v3;
  *(v4 + 336) = a1;
  *(v4 + 344) = a2;
  *(v4 + 368) = a3;

  return _swift_task_switch(sub_1001F8DA4, 0, 0);
}

uint64_t sub_1001F8DA4()
{
  v29 = v0;
  v1 = *(v0 + 368);
  if ((v1 & 0x100) != 0)
  {
    v7 = *(v0 + 336);
    v6 = *(v0 + 344);
    sub_10015CCB4(v7, v6, *(v0 + 368));
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    sub_1001F9354(v7, v6, v1, 1);
    if (os_log_type_enabled(v8, v9))
    {
      v11 = *(v0 + 336);
      v10 = *(v0 + 344);
      v12 = *(v0 + 368);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v28 = v14;
      *v13 = 136315138;
      v15 = sub_100157174(v11, v10, v12);
      v17 = sub_1002FFA0C(v15, v16, &v28);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v8, v9, "Recovery task failed : %s", v13, 0xCu);
      sub_1000752F4(v14);
    }

    v18 = *(v0 + 336);
    v19 = *(v0 + 344);
    v21 = *(v0 + 304);
    v20 = *(v0 + 312);
    v22 = *(v0 + 288);
    v27 = *(v0 + 296);
    v23 = *(v0 + 280);
    v24 = *(v0 + 368);
    sub_1001F71A8(v18, v19, v24);
    sub_10018C6D8();
    swift_allocError();
    *v25 = 18;
    swift_willThrow();
    sub_1001F9354(v18, v19, v24, 1);
    sub_10006A178(v21, v20);
    (*(v22 + 8))(v27, v23);

    v26 = *(v0 + 8);

    return v26();
  }

  else
  {
    v2 = swift_task_alloc();
    *(v0 + 352) = v2;
    *v2 = v0;
    v2[1] = sub_1001F9048;
    v4 = *(v0 + 336);
    v3 = *(v0 + 344);

    return sub_1001F73A0(v4, v3);
  }
}

uint64_t sub_1001F9048()
{
  *(*v1 + 360) = v0;

  if (v0)
  {
    v2 = sub_1001F9218;
  }

  else
  {
    v2 = sub_1001F915C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001F915C()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 312);
  v4 = *(v0 + 288);
  v3 = *(v0 + 296);
  v5 = *(v0 + 280);
  sub_1001F9354(*(v0 + 336), *(v0 + 344), *(v0 + 368), 0);
  sub_10006A178(v1, v2);
  (*(v4 + 8))(v3, v5);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1001F9218()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 312);
  v4 = *(v0 + 288);
  v3 = *(v0 + 296);
  v5 = *(v0 + 280);
  sub_1001F9354(*(v0 + 336), *(v0 + 344), *(v0 + 368), 0);
  sub_10006A178(v1, v2);
  (*(v4 + 8))(v3, v5);

  v6 = *(v0 + 8);

  return v6();
}

unint64_t sub_1001F92D8()
{
  result = qword_100507168;
  if (!qword_100507168)
  {
    sub_1000692D8(&qword_100502600, &unk_100417140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100507168);
  }

  return result;
}

uint64_t sub_1001F9354(uint64_t a1, uint64_t a2, unsigned __int8 a3, char a4)
{
  if (a4)
  {
    return sub_10015CCF0(a1, a2, a3);
  }

  else
  {
    return sub_10006A178(a1, a2);
  }
}

uint64_t sub_1001F9374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for SESPeerIdentityData(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100068FC4(&qword_100504F08, &unk_10040DE20);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1001F94B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for SESPeerIdentityData(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100068FC4(&qword_100504F08, &unk_10040DE20);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1001F95E8(uint64_t a1)
{
  type metadata accessor for SESPeerIdentityData(319);
  if (v1 <= 0x3F)
  {
    sub_1001F9688(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1001F9688(uint64_t a1)
{
  if (!qword_100506048)
  {
    type metadata accessor for CreationMetadata(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100506048);
    }
  }
}

unint64_t sub_1001F96E0()
{
  result = qword_100507218;
  if (!qword_100507218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100507218);
  }

  return result;
}

uint64_t sub_1001F9734(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001F9794(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001F97FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001F9844(uint64_t a1, uint64_t a2)
{
  v4 = sub_100068FC4(&qword_100504F08, &unk_10040DE20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001F98D8()
{
  result = qword_100507228;
  if (!qword_100507228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100507228);
  }

  return result;
}

unint64_t sub_1001F9930()
{
  result = qword_100507230;
  if (!qword_100507230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100507230);
  }

  return result;
}

unint64_t sub_1001F9988()
{
  result = qword_100507238;
  if (!qword_100507238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100507238);
  }

  return result;
}

uint64_t sub_1001F99DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F69676572 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D614E77656976 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x444955556B6C74 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574707972636E65 && a2 == 0xED00006174614464 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746E656449637273 && a2 == 0xEB00000000797469 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001004660D0 == a2)
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

uint64_t sub_1001F9BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1001FAC28(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1001FAC98(v11);
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

      sub_1001FAC98(a3);

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

  sub_1001FAC98(a3);
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

uint64_t sub_1001F9EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1001FAC28(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1001FAC98(v11);
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

      sub_100068FC4(&unk_100507280, &qword_10040F650);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_1001FAC98(a3);

      return v22;
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

  sub_1001FAC98(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_100068FC4(&unk_100507280, &qword_10040F650);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t static SESStartup.scheduleAndRunAllOneTimeTasks()()
{
  sub_100273CE0();
  type metadata accessor for SESOnceOnlyTaskManager();
  return static SESOnceOnlyTaskManager.runAll()();
}

uint64_t static SESStartup.startup()()
{
  v0 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  if (qword_1005019A8 != -1)
  {
    swift_once();
  }

  [qword_10051B2C0 resume];
  sub_1002D9190();
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  sub_1001F9BE8(0, 0, v2, &unk_10040F628, v4);
}

uint64_t sub_1001FA330()
{
  if (qword_100501CE0 != -1)
  {
    swift_once();
  }

  v1 = qword_10051B768;
  *(v0 + 16) = qword_10051B768;

  return _swift_task_switch(sub_1001FA3C8, v1, 0);
}

uint64_t sub_1001FA3C8(uint64_t a1, uint64_t a2)
{
  sub_1002FB184(a1, a2);
  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_1001FA568(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  sub_1000B6A94(v2, qword_100507240);
  sub_1000958E4(v2, qword_100507240);
  return Logger.init(subsystem:category:)();
}

id SESStartup.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

uint64_t sub_1001FA65C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1001FA750;

  return v5(v2 + 32);
}

uint64_t sub_1001FA750()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1001FA864()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001FA89C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10012E598;

  return sub_1001FA314();
}

void _s10seserviced10SESStartupC29scheduleViennaBackgroundTasksyyFZ_0()
{
  v0 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17[-v2];
  if (qword_1005019D0 != -1)
  {
    swift_once();
  }

  v4 = sub_1000958E4(v0, qword_100504810);
  swift_beginAccess();
  (*(v1 + 16))(v3, v4, v0);
  UserDefaultBacked.wrappedValue.getter();
  (*(v1 + 8))(v3, v0);
  if (v17[7] == 1)
  {
    if (qword_100501B40 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000958E4(v5, qword_100507240);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Credentials found on startup, scheduling background tasks.", v8, 2u);
    }

    sub_100273E60(v9, v10);
    sub_10027415C(v11, v12);
  }

  else
  {
    if (qword_100501B40 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000958E4(v13, qword_100507240);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "No credentials found on startup, not scheduling background tasks.", v16, 2u);
    }
  }
}

uint64_t sub_1001FAC28(uint64_t a1, uint64_t a2)
{
  v4 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001FAC98(uint64_t a1)
{
  v2 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001FAD00(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10012E598;

  return sub_1001FA65C(a1, v4);
}

uint64_t sub_1001FADB8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000C288C;

  return sub_1001FA65C(a1, v4);
}

uint64_t sub_1001FAE70()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000C288C;

  return sub_1001FA314();
}

uint64_t sub_1001FAF1C()
{

  return _swift_deallocObject(v0, 32, 7);
}

void *sub_1001FAF64(void (*a1)(uint64_t *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = _swiftEmptyArrayStorage;
  v11 = _swiftEmptyArrayStorage;
  v5 = *(a3 + 16);
  if (v5)
  {
    for (i = (a3 + 32); ; ++i)
    {
      v10 = *i;
      sub_100069E2C(v10, *(&v10 + 1));
      a1(&v9, &v10);
      if (v3)
      {
        break;
      }

      sub_10006A178(v10, *(&v10 + 1));
      if (v9)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v4 = v11;
      }

      if (!--v5)
      {
        return v4;
      }
    }

    sub_10006A178(v10, *(&v10 + 1));
  }

  return v4;
}

char *sub_1001FB084(void (*a1)(__int128 *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = (a3 + 32);
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v15 = *v6;
    sub_100069E2C(v15, *(&v15 + 1));
    a1(&v14, &v15);
    if (v3)
    {
      break;
    }

    sub_10006A178(v15, *(&v15 + 1));
    if (*(&v14 + 1) >> 60 == 15)
    {
      sub_10006A2D0(v14, *(&v14 + 1));
    }

    else
    {
      v13 = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_10012E5A4(0, *(v7 + 2) + 1, 1, v7);
      }

      v9 = *(v7 + 2);
      v8 = *(v7 + 3);
      v10 = v13;
      if (v9 >= v8 >> 1)
      {
        v11 = sub_10012E5A4((v8 > 1), v9 + 1, 1, v7);
        v10 = v13;
        v7 = v11;
      }

      *(v7 + 2) = v9 + 1;
      *&v7[16 * v9 + 32] = v10;
    }

    ++v6;
    if (!--v4)
    {
      return v7;
    }
  }

  sub_10006A178(v15, *(&v15 + 1));

  return v7;
}

char *sub_1001FB1E0(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = sub_100068FC4(&qword_100507468, &qword_10040FA20);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - v7;
  v9 = type metadata accessor for CredentialType();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v31 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v28 = &v24 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return _swiftEmptyArrayStorage;
  }

  v15 = *(type metadata accessor for SECCredentialInfo() - 8);
  v25 = v10;
  v29 = (v10 + 32);
  v30 = (v10 + 48);
  v16 = a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v17 = *(v15 + 72);
  v32 = _swiftEmptyArrayStorage;
  v26 = v9;
  v27 = a1;
  v24 = v17;
  while (1)
  {
    a1(v16);
    if (v3)
    {
      break;
    }

    if ((*v30)(v8, 1, v9) == 1)
    {
      sub_100075768(v8, &qword_100507468, &qword_10040FA20);
    }

    else
    {
      v18 = v28;
      v19 = *v29;
      (*v29)(v28, v8, v9);
      v19(v31, v18, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_10012FC70(0, *(v32 + 2) + 1, 1, v32);
      }

      v21 = *(v32 + 2);
      v20 = *(v32 + 3);
      if (v21 >= v20 >> 1)
      {
        v32 = sub_10012FC70((v20 > 1), v21 + 1, 1, v32);
      }

      v22 = v32;
      *(v32 + 2) = v21 + 1;
      v9 = v26;
      v19(&v22[((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v21], v31, v26);
      a1 = v27;
      v17 = v24;
    }

    v16 += v17;
    if (!--v14)
    {
      return v32;
    }
  }

  return v32;
}

uint64_t sub_1001FB560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[46] = a4;
  v5[47] = a5;
  v5[44] = a2;
  v5[45] = a3;
  v5[43] = a1;
  return _swift_task_switch(sub_1001FB588, 0, 0);
}

uint64_t sub_1001FB588(uint64_t a1, uint64_t a2)
{
  v14 = v2;
  if (qword_100501970 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  v2[48] = v3;
  v2[49] = sub_1000958E4(v3, qword_100504230);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v2[44];
    v6 = v2[45];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1002FFA0C(v7, v6, &v13);
    _os_log_impl(&_mh_execute_header, v4, v5, "Starting NFCredentialSession for reason: %s", v8, 0xCu);
    sub_1000752F4(v9);
  }

  v10 = swift_task_alloc();
  v2[50] = v10;
  v11 = sub_100068FC4(&qword_1005073D8, &unk_10040F8E8);
  *v10 = v2;
  v10[1] = sub_1001FB7A4;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v2 + 37, 0, 0, 0xD000000000000031, 0x8000000100467B80, sub_100126CD8, 0, v11);
}

uint64_t sub_1001FB7A4()
{
  *(*v1 + 408) = v0;

  if (v0)
  {
    v2 = sub_10021C270;
  }

  else
  {
    v2 = sub_1001FB8B8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001FB8B8()
{
  v1 = v0[37];
  v2 = v0[38];
  v0[52] = v1;
  v0[53] = v2;
  [v1 setEventDelegate:0];
  v0[39] = v2;
  v0[40] = v1;
  v0[2] = v0;
  v0[7] = v0 + 42;
  v0[3] = sub_1001FB9F8;
  v3 = swift_continuation_init();
  v0[25] = sub_100068FC4(&unk_1005073E0, &qword_10040B5A0);
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_1001FDA0C;
  v0[21] = &unk_1004CC0D8;
  v0[22] = v3;
  [v1 requestSETransceiverWithCompletion:v0 + 18];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1001FB9F8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 432) = v1;
  if (v1)
  {
    v2 = sub_10021C2B4;
  }

  else
  {
    v2 = sub_1001FBB08;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001FBB08()
{
  v1 = v0[52];
  v2 = v0[42];
  v0[55] = v2;

  if (v2)
  {
    v11 = (v0[46] + *v0[46]);
    v3 = swift_task_alloc();
    v0[56] = v3;
    *v3 = v0;
    v3[1] = sub_1001FBDB8;
    v4 = v0[43];

    return v11(v4, v2);
  }

  else
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    sub_1000958E4(v0[48], qword_10051B2C8);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Unable to get transceiver", v8, 2u);
    }

    v9 = v0[52];

    v0[10] = v0;
    v0[11] = sub_1001FBECC;
    v10 = swift_continuation_init();
    v0[33] = sub_100068FC4(&qword_1005073C0, &qword_10040F870);
    v0[26] = _NSConcreteStackBlock;
    v0[27] = 1107296256;
    v0[28] = sub_10021C240;
    v0[29] = &unk_1004CC100;
    v0[30] = v10;
    [v9 endSessionWithCompletion:v0 + 26];

    return _swift_continuation_await(v0 + 10);
  }
}

uint64_t sub_1001FBDB8()
{
  *(*v1 + 456) = v0;

  if (v0)
  {
    v2 = sub_10021C2B8;
  }

  else
  {
    v2 = sub_10021C1F4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001FBECC()
{

  return _swift_task_switch(sub_10021C23C, 0, 0);
}

uint64_t sub_1001FBFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[46] = a3;
  v4[47] = a4;
  v4[44] = a1;
  v4[45] = a2;
  return _swift_task_switch(sub_1001FBFD0, 0, 0);
}

uint64_t sub_1001FBFD0(uint64_t a1, uint64_t a2)
{
  v14 = v2;
  if (qword_100501970 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  v2[48] = v3;
  v2[49] = sub_1000958E4(v3, qword_100504230);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v2[44];
    v6 = v2[45];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1002FFA0C(v7, v6, &v13);
    _os_log_impl(&_mh_execute_header, v4, v5, "Starting NFCredentialSession for reason: %s", v8, 0xCu);
    sub_1000752F4(v9);
  }

  v10 = swift_task_alloc();
  v2[50] = v10;
  v11 = sub_100068FC4(&qword_1005073D8, &unk_10040F8E8);
  *v10 = v2;
  v10[1] = sub_1001FC1EC;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v2 + 37, 0, 0, 0xD000000000000031, 0x8000000100467B80, sub_100126CD8, 0, v11);
}

uint64_t sub_1001FC1EC()
{
  *(*v1 + 408) = v0;

  if (v0)
  {
    v2 = sub_1001FC300;
  }

  else
  {
    v2 = sub_1001FC4A4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001FC300()
{
  v12 = v0;
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
    v7 = sub_1002FFA0C(v5, v6, &v11);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "Nearfield error %s while getting NFCredentialSession", v3, 0xCu);
    sub_1000752F4(v4);
  }

  sub_10009591C();
  swift_allocError();
  *v8 = 8;
  swift_willThrow();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1001FC4A4()
{
  v1 = v0[37];
  v2 = v0[38];
  v0[52] = v1;
  v0[53] = v2;
  [v1 setEventDelegate:0];
  v0[40] = v2;
  v0[41] = v1;
  v0[2] = v0;
  v0[7] = v0 + 43;
  v0[3] = sub_1001FC5E4;
  v3 = swift_continuation_init();
  v0[25] = sub_100068FC4(&unk_1005073E0, &qword_10040B5A0);
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_1001FDA0C;
  v0[21] = &unk_1004CBCA0;
  v0[22] = v3;
  [v1 requestSETransceiverWithCompletion:v0 + 18];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1001FC5E4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 432) = v1;
  if (v1)
  {
    v2 = sub_1001FCAB8;
  }

  else
  {
    v2 = sub_1001FC6F4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001FC6F4()
{
  v1 = v0[52];
  v2 = v0[43];
  v0[55] = v2;

  if (v2)
  {
    v10 = (v0[46] + *v0[46]);
    v3 = swift_task_alloc();
    v0[56] = v3;
    *v3 = v0;
    v3[1] = sub_1001FC9A4;

    return v10(v0 + 39, v2);
  }

  else
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    sub_1000958E4(v0[48], qword_10051B2C8);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Unable to get transceiver", v7, 2u);
    }

    v8 = v0[52];

    v0[10] = v0;
    v0[11] = sub_1001FCC58;
    v9 = swift_continuation_init();
    v0[33] = sub_100068FC4(&qword_1005073C0, &qword_10040F870);
    v0[26] = _NSConcreteStackBlock;
    v0[27] = 1107296256;
    v0[28] = sub_10021C240;
    v0[29] = &unk_1004CBCC8;
    v0[30] = v9;
    [v8 endSessionWithCompletion:v0 + 26];

    return _swift_continuation_await(v0 + 10);
  }
}

uint64_t sub_1001FC9A4()
{
  *(*v1 + 456) = v0;

  if (v0)
  {
    v2 = sub_1001FCBC8;
  }

  else
  {
    v2 = sub_1001FCB34;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001FCAB8(uint64_t a1)
{
  v2 = v1[53];
  v3 = v1[52];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_1001FCB34()
{
  v2 = *(v0 + 416);
  v1 = *(v0 + 424);
  sub_100126B60(*(v0 + 440), (v0 + 328), v0 + 320, *(v0 + 352), *(v0 + 360));

  swift_unknownObjectRelease();
  v3 = *(v0 + 312);
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_1001FCBC8()
{
  v2 = *(v0 + 416);
  v1 = *(v0 + 424);
  sub_100126B60(*(v0 + 440), (v0 + 328), v0 + 320, *(v0 + 352), *(v0 + 360));

  swift_unknownObjectRelease();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001FCC58()
{

  return _swift_task_switch(sub_1001FCD38, 0, 0);
}

uint64_t sub_1001FCD38()
{
  v2 = v0[52];
  v1 = v0[53];
  sub_10009591C();
  swift_allocError();
  *v3 = 9;
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1001FCDDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[46] = a4;
  v5[47] = a5;
  v5[44] = a2;
  v5[45] = a3;
  v5[43] = a1;
  return _swift_task_switch(sub_1001FCE04, 0, 0);
}

uint64_t sub_1001FCE04(uint64_t a1, uint64_t a2)
{
  v14 = v2;
  if (qword_100501970 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  v2[48] = v3;
  v2[49] = sub_1000958E4(v3, qword_100504230);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v2[44];
    v6 = v2[45];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1002FFA0C(v7, v6, &v13);
    _os_log_impl(&_mh_execute_header, v4, v5, "Starting NFCredentialSession for reason: %s", v8, 0xCu);
    sub_1000752F4(v9);
  }

  v10 = swift_task_alloc();
  v2[50] = v10;
  v11 = sub_100068FC4(&qword_1005073D8, &unk_10040F8E8);
  *v10 = v2;
  v10[1] = sub_1001FD020;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v2 + 37, 0, 0, 0xD000000000000031, 0x8000000100467B80, sub_100126CD8, 0, v11);
}

uint64_t sub_1001FD020()
{
  *(*v1 + 408) = v0;

  if (v0)
  {
    v2 = sub_1001FD134;
  }

  else
  {
    v2 = sub_1001FD2D8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001FD134()
{
  v12 = v0;
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
    v7 = sub_1002FFA0C(v5, v6, &v11);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "Nearfield error %s while getting NFCredentialSession", v3, 0xCu);
    sub_1000752F4(v4);
  }

  sub_10009591C();
  swift_allocError();
  *v8 = 8;
  swift_willThrow();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1001FD2D8()
{
  v1 = v0[37];
  v2 = v0[38];
  v0[52] = v1;
  v0[53] = v2;
  [v1 setEventDelegate:0];
  v0[39] = v2;
  v0[40] = v1;
  v0[2] = v0;
  v0[7] = v0 + 42;
  v0[3] = sub_1001FD418;
  v3 = swift_continuation_init();
  v0[25] = sub_100068FC4(&unk_1005073E0, &qword_10040B5A0);
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_1001FDA0C;
  v0[21] = &unk_1004CBF20;
  v0[22] = v3;
  [v1 requestSETransceiverWithCompletion:v0 + 18];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1001FD418()
{
  v1 = *(*v0 + 48);
  *(*v0 + 432) = v1;
  if (v1)
  {
    v2 = sub_1001FCAB8;
  }

  else
  {
    v2 = sub_1001FD528;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001FD528()
{
  v1 = v0[52];
  v2 = v0[42];
  v0[55] = v2;

  if (v2)
  {
    v11 = (v0[46] + *v0[46]);
    v3 = swift_task_alloc();
    v0[56] = v3;
    *v3 = v0;
    v3[1] = sub_1001FD7D8;
    v4 = v0[43];

    return v11(v4, v2);
  }

  else
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    sub_1000958E4(v0[48], qword_10051B2C8);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Unable to get transceiver", v8, 2u);
    }

    v9 = v0[52];

    v0[10] = v0;
    v0[11] = sub_1001FCC58;
    v10 = swift_continuation_init();
    v0[33] = sub_100068FC4(&qword_1005073C0, &qword_10040F870);
    v0[26] = _NSConcreteStackBlock;
    v0[27] = 1107296256;
    v0[28] = sub_10021C240;
    v0[29] = &unk_1004CBF48;
    v0[30] = v10;
    [v9 endSessionWithCompletion:v0 + 26];

    return _swift_continuation_await(v0 + 10);
  }
}

uint64_t sub_1001FD7D8()
{
  *(*v1 + 456) = v0;

  if (v0)
  {
    v2 = sub_1001FD97C;
  }

  else
  {
    v2 = sub_1001FD8EC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001FD8EC()
{
  v2 = *(v0 + 416);
  v1 = *(v0 + 424);
  sub_100126B60(*(v0 + 440), (v0 + 320), v0 + 312, *(v0 + 352), *(v0 + 360));

  swift_unknownObjectRelease();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001FD97C()
{
  v2 = *(v0 + 416);
  v1 = *(v0 + 424);
  sub_100126B60(*(v0 + 440), (v0 + 320), v0 + 312, *(v0 + 352), *(v0 + 360));

  swift_unknownObjectRelease();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001FDA0C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_1000752B0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    swift_unknownObjectRetain();

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_1001FDAE0(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for UUID();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_1001FDBAC, 0, 0);
}

uint64_t sub_1001FDBAC(uint64_t a1, uint64_t a2)
{
  v121 = v2;
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v3 = *(v2 + 64);
  v4 = *(v2 + 72);
  v5 = type metadata accessor for Logger();
  *(v2 + 112) = sub_1000958E4(v5, qword_10051B2C8);
  v6 = v4;
  v7 = v3;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v2 + 104);
    v11 = *(v2 + 88);
    v115 = *(v2 + 80);
    v12 = swift_slowAlloc();
    v120[0] = swift_slowAlloc();
    *v12 = 136315394;
    v13 = UUID.uuidString.getter();
    v15 = sub_1002FFA0C(v13, v14, v120);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    CredentialInternal.identifier.getter();
    v16 = UUID.uuidString.getter();
    v18 = v17;
    (*(v11 + 8))(v10, v115);
    v19 = sub_1002FFA0C(v16, v18, v120);

    *(v12 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "Session %s: Getting NFCredentialSessionHandle for credential %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  v20 = *(v2 + 72);
  v21 = &v20[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState];
  v23 = *&v20[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState];
  v22 = *&v20[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState + 8];
  v25 = *&v20[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState + 16];
  v24 = *&v20[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState + 24];
  v26 = v24;
  if (!(v24 >> 62))
  {
    goto LABEL_8;
  }

  if (v24 >> 62 == 1)
  {
    v26 = (v24 & 0x3FFFFFFFFFFFFFFFLL);
LABEL_8:
    if (v22)
    {
      v28 = *(v2 + 96);
      v27 = *(v2 + 104);
      v30 = *(v2 + 80);
      v29 = *(v2 + 88);
      sub_100218E94(*&v20[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState], *&v20[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState + 8], *&v20[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState + 16], v24);
      v114 = v22;
      v31 = v22;
      v32 = v25;
      v111 = v31;
      CredentialInternal.identifier.getter();
      CredentialInternal.identifier.getter();
      v33 = static UUID.== infix(_:_:)();
      v34 = *(v29 + 8);
      v34(v28, v30);
      v110 = v34;
      v34(v27, v30);
      v116 = v32;
      v35 = v32;
      v36 = v26;
      if (v33)
      {
        v37 = *(v2 + 64);
        v38 = v111;
        v39 = v23;
        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = *(v2 + 104);
          v112 = *(v2 + 80);
          v117 = v41;
          v43 = swift_slowAlloc();
          v120[0] = swift_slowAlloc();
          *v43 = 136315394;
          CredentialInternal.identifier.getter();
          v44 = UUID.uuidString.getter();
          v46 = v45;
          v110(v42, v112);
          v47 = sub_1002FFA0C(v44, v46, v120);

          *(v43 + 4) = v47;
          *(v43 + 12) = 2080;
          v48 = v36;
          v49 = UUID.uuidString.getter();
          v51 = sub_1002FFA0C(v49, v50, v120);

          *(v43 + 14) = v51;
          _os_log_impl(&_mh_execute_header, v40, v117, "Returning existing NFCredentialSessionHandle for credential %s with assertion %s", v43, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
          v48 = v36;
        }

        v100 = v114;
        v99 = v116;
      }

      else
      {
        v63 = *(v2 + 64);
        v64 = *(v2 + 72);
        v65 = v63;
        v66 = v111;
        v67 = v23;
        v68 = Logger.logObject.getter();
        v69 = static os_log_type_t.info.getter();

        v118 = v67;
        if (os_log_type_enabled(v68, v69))
        {
          v113 = v66;
          v70 = *(v2 + 104);
          v109 = *(v2 + 80);
          v71 = swift_slowAlloc();
          v120[0] = swift_slowAlloc();
          *v71 = 136315650;
          v72 = UUID.uuidString.getter();
          v74 = sub_1002FFA0C(v72, v73, v120);

          *(v71 + 4) = v74;
          *(v71 + 12) = 2080;
          CredentialInternal.identifier.getter();
          v75 = UUID.uuidString.getter();
          v77 = v76;
          v110(v70, v109);
          v78 = sub_1002FFA0C(v75, v77, v120);

          *(v71 + 14) = v78;
          *(v71 + 22) = 2080;
          v48 = v36;
          v79 = UUID.uuidString.getter();
          v81 = sub_1002FFA0C(v79, v80, v120);

          *(v71 + 24) = v81;
          v66 = v113;
          _os_log_impl(&_mh_execute_header, v68, v69, "Session %s: Returning a new NFCredentialSessionHandle for credential %s, handing over assertion %s", v71, 0x20u);
          swift_arrayDestroy();
        }

        else
        {
          v48 = v36;
        }

        v100 = v114;
        v99 = v116;
        v101 = *(v2 + 64);

        v39 = *(v2 + 64);
      }

      v102 = *(v2 + 8);

      return v102(v39, v100, v99, v48);
    }

    sub_100218E94(*&v20[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState], 0, *&v20[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState + 16], v24);
    v20 = *(v2 + 72);
    goto LABEL_24;
  }

  if (v24 == 0x8000000000000000 && (v25 | v22 | v23) == 0)
  {
    v23 = 0;
    v25 = 0;
    v26 = 0;
LABEL_24:
    *(v2 + 128) = v25;
    *(v2 + 136) = v26;
    *(v2 + 120) = v23;
    v82 = *(v2 + 64);
    v83 = v20;
    v84 = v82;
    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = *(v2 + 104);
      v88 = *(v2 + 88);
      v119 = *(v2 + 80);
      v89 = swift_slowAlloc();
      v120[0] = swift_slowAlloc();
      *v89 = 136315394;
      v90 = UUID.uuidString.getter();
      v92 = sub_1002FFA0C(v90, v91, v120);

      *(v89 + 4) = v92;
      *(v89 + 12) = 2080;
      CredentialInternal.identifier.getter();
      v93 = UUID.uuidString.getter();
      v95 = v94;
      (*(v88 + 8))(v87, v119);
      v96 = sub_1002FFA0C(v93, v95, v120);

      *(v89 + 14) = v96;
      _os_log_impl(&_mh_execute_header, v85, v86, "Session %s: No current NFCredentialSessionHandle, starting a new one for credential %s", v89, 0x16u);
      swift_arrayDestroy();
    }

    *(v2 + 144) = *(*(v2 + 72) + OBJC_IVAR____TtC10seserviced14SECUserSession_nearFieldEventDelegate);
    v97 = swift_task_alloc();
    *(v2 + 152) = v97;
    v98 = sub_100068FC4(&qword_1005073D8, &unk_10040F8E8);
    *v97 = v2;
    v97[1] = sub_1001FE734;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v2 + 40, 0, 0, 0xD000000000000031, 0x8000000100467B80, sub_100126CD8, 0, v98);
  }

  v53 = v20;
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v120[0] = swift_slowAlloc();
    *v56 = 136315394;
    v57 = UUID.uuidString.getter();
    v59 = sub_1002FFA0C(v57, v58, v120);

    *(v56 + 4) = v59;
    *(v56 + 12) = 2080;
    v60 = *(v21 + 3);
    if (v60 >> 62)
    {
      if (v60 >> 62 == 1)
      {
        v61 = 0xE500000000000000;
        v62 = 0x6465726957;
      }

      else
      {
        v103 = (*(v21 + 2) | *v21 | *(v21 + 1)) == 0;
        v104 = v60 == 0x8000000000000000;
        if (v104 && v103)
        {
          v62 = 0x656D6567616E614DLL;
        }

        else
        {
          v62 = 0x64696C61766E49;
        }

        if (v104 && v103)
        {
          v61 = 0xEA0000000000746ELL;
        }

        else
        {
          v61 = 0xE700000000000000;
        }
      }
    }

    else
    {
      v61 = 0xED00006E6F697461;
      v62 = 0x6C756D4564726143;
    }

    v105 = sub_1002FFA0C(v62, v61, v120);

    *(v56 + 14) = v105;
    _os_log_impl(&_mh_execute_header, v54, v55, "Session %s: getNFCredentialSessionHandle: Unexpected state %s, expected not Invalid", v56, 0x16u);
    swift_arrayDestroy();
  }

  sub_10009591C();
  swift_allocError();
  *v106 = 10;
  swift_willThrow();

  v107 = *(v2 + 8);

  return v107();
}

uint64_t sub_1001FE734()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_1001FE848;
  }

  else
  {
    v2 = sub_1001FE8C4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001FE848()
{
  sub_10021A930(*(v0 + 120), 0, *(v0 + 128), *(v0 + 136));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001FE8C4()
{
  v25 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  *(v0 + 168) = v2;
  *(v0 + 176) = v3;
  [v2 setEventDelegate:v1];
  if (qword_100501D50 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = off_10050A868;

  os_unfair_lock_lock(v4 + 6);
  v5 = *&v4[4]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(v4 + 6);

  if (v5)
  {
    v6 = *(v5 + 16);
    v7 = v6;

    if (v6)
    {
      v8 = *(v0 + 72);
      v9 = v7;
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *v12 = 136315394;
        v13 = UUID.uuidString.getter();
        v15 = sub_1002FFA0C(v13, v14, &v24);

        *(v12 + 4) = v15;
        *(v12 + 12) = 2080;
        v16 = UUID.uuidString.getter();
        v18 = sub_1002FFA0C(v16, v17, &v24);

        *(v12 + 14) = v18;
        _os_log_impl(&_mh_execute_header, v10, v11, "Session %s: Relinquishing existing presentment intent assertion with identifier %s", v12, 0x16u);
        swift_arrayDestroy();
      }

      v19 = off_10050A868;

      os_unfair_lock_lock(v19 + 6);
      v20 = *&v19[4]._os_unfair_lock_opaque;

      os_unfair_lock_unlock(v19 + 6);

      if (v20)
      {
        sub_100307B18(0, 0);
      }
    }
  }

  v21 = swift_task_alloc();
  *(v0 + 184) = v21;
  v22 = type metadata accessor for SECPresentmentIntentAssertion(0);
  *v21 = v0;
  v21[1] = sub_1001FEBF0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 56, 0, 0, 0xD000000000000011, 0x8000000100467C00, sub_100217650, 0, v22);
}

uint64_t sub_1001FEBF0()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1001FEF20;
  }

  else
  {
    v2 = sub_1001FED04;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001FED04()
{
  v26 = v0;
  v1 = *(v0 + 56);
  v2 = *(v0 + 72);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  v6 = os_log_type_enabled(v4, v5);
  v8 = *(v0 + 128);
  v7 = *(v0 + 136);
  v9 = *(v0 + 120);
  if (v6)
  {
    v24 = *(v0 + 136);
    v10 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v10 = 136315394;
    v11 = UUID.uuidString.getter();
    v13 = sub_1002FFA0C(v11, v12, &v25);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    v14 = UUID.uuidString.getter();
    v16 = sub_1002FFA0C(v14, v15, &v25);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "Session %s: Starting new assertion with identifier %s", v10, 0x16u);
    swift_arrayDestroy();

    v17 = v9;
    v18 = v8;
    v7 = v24;
  }

  else
  {
    v17 = *(v0 + 120);
    v18 = *(v0 + 128);
  }

  sub_10021A930(v17, 0, v18, v7);

  v19 = *(v0 + 168);
  v20 = *(v0 + 176);
  v21 = *(v0 + 64);

  v22 = *(v0 + 8);

  return v22(v21, v19, v20, v3);
}

uint64_t sub_1001FEF20()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  sub_10021A930(*(v0 + 120), 0, *(v0 + 128), *(v0 + 136));

  v3 = *(v0 + 8);

  return v3();
}

void sub_1001FEFA8(void *a1, void *a2, void *a3, unint64_t a4)
{
  v9 = &v4[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState];
  v10 = a4 & 0xC000000000000000;
  v11 = *&v4[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState];
  v12 = *&v4[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState + 8];
  v14 = *&v4[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState + 16];
  v13 = *&v4[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState + 24];
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  sub_100218E94(a1, a2, a3, a4);
  sub_100218FD8(v11, v12, v14, v13);
  if (v13 >> 62 != 1 || v10 == 0x4000000000000000)
  {

    sub_100218FD8(a1, a2, a3, a4);
  }

  else
  {
    v16 = &v4[OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo];
    v17 = *&v4[OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 112];
    v53 = *&v4[OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 96];
    v54 = v17;
    v55 = v4[OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 128];
    v18 = *&v4[OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 48];
    v49 = *&v4[OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 32];
    v50 = v18;
    v19 = *&v4[OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 80];
    v51 = *&v4[OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 64];
    v52 = v19;
    v20 = *&v4[OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 16];
    v47 = *&v4[OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo];
    v48 = v20;
    if (v55 > 1u)
    {
      if (qword_1005019D8 != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      sub_1000958E4(v34, qword_10051B2C8);
      v35 = v4;
      v32 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v32, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        *atoken.val = v38;
        *v37 = 136315138;
        v39 = *v16;
        v40 = *(v16 + 1);

        v41 = sub_1002FFA0C(v39, v40, &atoken);

        *(v37 + 4) = v41;
        _os_log_impl(&_mh_execute_header, v32, v36, "Client %s pid not found, unable to stop background assertion timers", v37, 0xCu);
        sub_1000752F4(v38);
      }

      goto LABEL_22;
    }

    v21 = *(v16 + 7);
    *v46.val = *(v16 + 6);
    *&v46.val[4] = v21;
    v45[0] = v48;
    v45[1] = v49;
    v45[2] = v50;
    v45[3] = v51;
    v45[4] = v52;
    v45[5] = *v46.val;
    v45[6] = v21;
    sub_10012E344(&v47, &atoken);
    sub_10012E3F4(&v48, &atoken);
    atoken = v46;
    v22 = audit_token_to_pid(&atoken);
    sub_10012E450(v45);
    sub_10012E3A0(&v47);
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_1000958E4(v23, qword_10051B2C8);
    v24 = v4;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *atoken.val = v28;
      *v27 = 136315138;
      v42 = *v16;
      v43 = v22;
      v29 = *(v16 + 1);

      v30 = sub_1002FFA0C(v42, v29, &atoken);
      v22 = v43;

      *(v27 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v25, v26, "Client %s switched away from Wired mode, stopping any active background assertion timers", v27, 0xCu);
      sub_1000752F4(v28);
    }

    if (qword_1005019A8 != -1)
    {
      swift_once();
    }

    v31 = *(qword_10051B2C0 + OBJC_IVAR____TtC10seserviced9SECServer_backgroundAssertionMonitor);
    if (v31)
    {
      v32 = v31;
      sub_1001C9D2C(v22, v33);
LABEL_22:
      sub_100218FD8(a1, a2, a3, a4);

      return;
    }

    sub_100218FD8(a1, a2, a3, a4);
  }
}

uint64_t sub_1001FF418@<X0>(_OWORD *a2@<X8>)
{
  v4 = v2 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo;
  v31 = *(v2 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 128);
  v5 = *(v2 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 96);
  v28 = *(v2 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 80);
  v29 = v5;
  v30 = *(v2 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 112);
  v6 = *(v2 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 32);
  v24 = *(v2 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 16);
  v25 = v6;
  v7 = *(v2 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 64);
  v26 = *(v2 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 48);
  v27 = v7;
  if (v31 >= 2u)
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000958E4(v12, qword_10051B2C8);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "No client application for non-privileged session", v15, 2u);
    }

    sub_10009591C();
    swift_allocError();
    *v16 = 6;
    return swift_willThrow();
  }

  else
  {
    v8 = v28;
    v19 = v26;
    v20 = v27;
    v17 = v24;
    v18 = v25;
    v9 = *(v4 + 112);
    v22 = *(v4 + 96);
    v23 = v9;
    result = sub_10012E3F4(&v24, v21);
    *a2 = v17;
    a2[1] = v18;
    a2[2] = v19;
    a2[3] = v20;
    a2[4] = v8;
    v11 = v23;
    a2[5] = v22;
    a2[6] = v11;
  }

  return result;
}