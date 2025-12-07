uint64_t sub_100001250()
{
  v0 = type metadata accessor for Logger();
  sub_100002E18(v0, qword_100010818);
  sub_100002DE0(v0, qword_100010818);
  if (qword_100010830 != -1)
  {
    swift_once();
  }

  v1 = qword_100010C10;
  return Logger.init(_:)();
}

id sub_1000012DC()
{
  v1 = v0;
  if (qword_100010810 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100002DE0(v2, qword_100010818);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Tearing down Reader", v5, 2u);
  }

  v7.receiver = v1;
  v7.super_class = type metadata accessor for Reader(0);
  return objc_msgSendSuper2(&v7, "dealloc");
}

void sub_100001498(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
  _Block_release(v6);
}

uint64_t sub_1000015B8(void *a1, uint64_t a2)
{
  v4 = sub_100002E7C(&unk_100010990, &qword_100009D48);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v73 - v6;
  v8 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v8 - 8, v9);
  if (qword_100010810 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100002DE0(v10, qword_100010818);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  v14 = os_log_type_enabled(v12, v13);
  v76 = v7;
  if (v14)
  {
    v15 = a2;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v78 = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_100006E44(*&v11[OBJC_IVAR____TtC21automationmode_writer6Reader_stateFilePath], *&v11[OBJC_IVAR____TtC21automationmode_writer6Reader_stateFilePath + 8], &v78);
    _os_log_impl(&_mh_execute_header, v12, v13, "Reader client asked if automation mode is enabled, checking for state file at %{public}s", v16, 0xCu);
    sub_100003050(v17);

    a2 = v15;
  }

  v75 = objc_opt_self();
  v18 = [v75 defaultManager];
  v19 = *&v11[OBJC_IVAR____TtC21automationmode_writer6Reader_stateFilePath];
  v20 = *&v11[OBJC_IVAR____TtC21automationmode_writer6Reader_stateFilePath + 8];
  v21 = String._bridgeToObjectiveC()();
  v22 = [v18 fileExistsAtPath:v21];

  v23 = v11;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();

  v26 = os_log_type_enabled(v24, v25);
  if (v22)
  {
    if (v26)
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v78 = v28;
      *v27 = 136446210;
      *(v27 + 4) = sub_100006E44(v19, v20, &v78);
      _os_log_impl(&_mh_execute_header, v24, v25, "State file exists at path %{public}s", v27, 0xCu);
      sub_100003050(v28);
    }

    static String.Encoding.utf8.getter();
    v29 = String.init(contentsOfFile:encoding:)();
    v73 = v20;
    v74 = v19;
    v34 = v29;
    v36 = v35;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v78 = v40;
      *v39 = 136446210;

      v41 = a2;
      v42 = sub_100006E44(v34, v36, &v78);

      *(v39 + 4) = v42;
      a2 = v41;
      _os_log_impl(&_mh_execute_header, v37, v38, "Read boot session id from automation mode state file: %{public}s", v39, 0xCu);
      sub_100003050(v40);
    }

    v43 = v76;
    sub_100002EC4(&v23[OBJC_IVAR____TtC21automationmode_writer6Reader_bootSessionUUID], v76);
    v44 = type metadata accessor for UUID();
    v45 = *(v44 - 8);
    v46 = (*(v45 + 48))(v43, 1, v44);

    if (v46 == 1)
    {
      sub_100002F34(v43);

      v47 = v36;
    }

    else
    {
      v48 = UUID.uuidString.getter();
      v47 = v49;
      (*(v45 + 8))(v43, v44);
      if (v34 != v48)
      {
        goto LABEL_21;
      }
    }

    if (v36 == v47)
    {

      goto LABEL_22;
    }

LABEL_21:
    v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v50 & 1) == 0)
    {
      v51 = v23;
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = a2;
        v56 = swift_slowAlloc();
        v78 = v56;
        *v54 = 136446210;
        v58 = v73;
        v57 = v74;
        *(v54 + 4) = sub_100006E44(v74, v73, &v78);
        _os_log_impl(&_mh_execute_header, v52, v53, "Removing expired state file at path %{public}s", v54, 0xCu);
        sub_100003050(v56);
        a2 = v55;
      }

      else
      {

        v58 = v73;
        v57 = v74;
      }

      v59 = [v75 defaultManager];
      v60 = String._bridgeToObjectiveC()();
      v78 = 0;
      v61 = [v59 removeItemAtPath:v60 error:&v78];

      if (v61)
      {
        v62 = v78;
      }

      else
      {
        v63 = v78;
        v64 = _convertNSErrorToError(_:)();

        swift_willThrow();
        v65 = v51;
        swift_errorRetain();
        v66 = Logger.logObject.getter();
        v67 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          *v68 = 136446466;
          *(v68 + 4) = sub_100006E44(v57, v58, &v78);
          *(v68 + 12) = 2082;
          v77 = v64;
          swift_errorRetain();
          sub_100002E7C(&qword_100010BE0, &qword_100009D50);
          v69 = String.init<A>(describing:)();
          v71 = a2;
          v72 = sub_100006E44(v69, v70, &v78);

          *(v68 + 14) = v72;
          a2 = v71;
          _os_log_impl(&_mh_execute_header, v66, v67, "Failed to remove expired automation mode state file at %{public}s: %{public}s", v68, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }
      }

      (*(a2 + 16))(a2, 0);
    }

LABEL_22:
    (*(a2 + 16))(a2, 1);
  }

  if (v26)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v78 = v31;
    *v30 = 136446210;
    *(v30 + 4) = sub_100006E44(v19, v20, &v78);
    _os_log_impl(&_mh_execute_header, v24, v25, "State file does not exist at path %{public}s", v30, 0xCu);
    sub_100003050(v31);
  }

  v32 = *(a2 + 16);

  return v32(a2, 0);
}

uint64_t sub_100002070(char *a1, uint64_t a2)
{
  v4 = [objc_opt_self() defaultManager];
  v5 = *&a1[OBJC_IVAR____TtC21automationmode_writer6Reader_noAuthRequiredFilePath];
  v6 = *&a1[OBJC_IVAR____TtC21automationmode_writer6Reader_noAuthRequiredFilePath + 8];
  v7 = String._bridgeToObjectiveC()();
  v8 = [v4 fileExistsAtPath:v7];

  if (qword_100010810 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100002DE0(v9, qword_100010818);
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136446466;
    *(v13 + 4) = sub_100006E44(v5, v6, &v17);
    *(v13 + 12) = 1024;
    *(v13 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v11, v12, "Reader client asked if automation mode requires user authentication, checked for file at %{public}s, exists: %{BOOL}d", v13, 0x12u);
    sub_100003050(v14);
  }

  v15 = *(a2 + 16);

  return v15(a2, v8 ^ 1);
}

uint64_t sub_100002250(void *a1)
{
  v2 = v1;
  if (qword_100010810 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100002DE0(v4, qword_100010818);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Received reader connection request", v7, 2u);
  }

  [a1 setExportedObject:v2];
  v8 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___AutomationModeReaderProtocol];
  [a1 setExportedInterface:v8];

  [a1 resume];
  return 1;
}

id sub_1000023A8()
{
  v0 = sub_100002E7C(&unk_100010990, &qword_100009D48);
  __chkstk_darwin(v0, v1);
  v75 = &v69 - v2;
  v3 = XAMAutomationModeDataVaultPath();
  v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v70 = v4;

  v5 = XAMAutomationModeStateFilePath();
  v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = XAMAutomationModeDoesNotRequireAuthenticationFilePath();
  v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v77 = v9;

  v10 = XAMAutomationModeWriterMachServiceName();
  if (!v10)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = String._bridgeToObjectiveC()();
  }

  v72 = v10;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (qword_100010810 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100002DE0(v14, qword_100010818);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v81[0] = swift_slowAlloc();
    *v17 = 136446466;
    *(v17 + 4) = sub_100006E44(v76, v7, v81);
    *(v17 + 12) = 2082;
    v18 = sub_100006E44(v11, v13, v81);

    *(v17 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v15, v16, "AutomationMode writer daemon launched with state file %{public}s, mach service name %{public}s.", v17, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v19 = type metadata accessor for LocalAuthenticationWrapper();
  v20 = swift_allocObject();
  v21 = qword_100010850;

  if (v21 != -1)
  {
    swift_once();
  }

  v74 = v7;
  v22 = qword_100010C28;
  if (qword_100010860 != -1)
  {
    swift_once();
  }

  v69 = sub_100002DE0(v0, qword_100010C38);
  v23 = v75;
  sub_100002EC4(v69, v75);
  v82 = v19;
  v83 = &off_10000C6E0;
  v81[0] = v20;
  v24 = type metadata accessor for Writer(0);
  v25 = objc_allocWithZone(v24);
  v26 = sub_100002F9C(v81, v82);
  __chkstk_darwin(v26, v26);
  v28 = (&v69 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  v30 = *v28;
  v80[3] = v19;
  v80[4] = &off_10000C6E0;
  v80[0] = v30;
  *&v25[OBJC_IVAR____TtC21automationmode_writer6Writer_lock] = 0;
  *&v25[OBJC_IVAR____TtC21automationmode_writer6Writer_userPreferencesScope] = kCFPreferencesAnyUser;
  v31 = &v25[OBJC_IVAR____TtC21automationmode_writer6Writer_dataVaultPath];
  v32 = v70;
  *v31 = v71;
  v31[1] = v32;
  v33 = &v25[OBJC_IVAR____TtC21automationmode_writer6Writer_stateFilePath];
  v34 = v74;
  *v33 = v76;
  v33[1] = v34;
  v35 = &v25[OBJC_IVAR____TtC21automationmode_writer6Writer_noAuthRequiredFilePath];
  v36 = v77;
  *v35 = v73;
  v35[1] = v36;
  v25[OBJC_IVAR____TtC21automationmode_writer6Writer_enforcesClientEntitlement] = 1;
  sub_100002FEC(v80, &v25[OBJC_IVAR____TtC21automationmode_writer6Writer_authorizationManager]);
  *&v25[OBJC_IVAR____TtC21automationmode_writer6Writer_credentialTimeout] = v22;
  sub_100002EC4(v23, &v25[OBJC_IVAR____TtC21automationmode_writer6Writer_bootSessionUUID]);
  v79.receiver = v25;
  v79.super_class = v24;
  v37 = kCFPreferencesAnyUser;
  v38 = objc_msgSendSuper2(&v79, "init");
  sub_100002F34(v23);
  sub_100003050(v80);
  sub_100003050(v81);
  v39 = objc_allocWithZone(NSXPCListener);
  v40 = v38;
  v41 = v72;
  v42 = [v39 initWithMachServiceName:v72];

  v43 = v42;
  [v43 setDelegate:v40];

  [v43 resume];
  v44 = XAMAutomationModeReaderMachServiceName();
  if (!v44)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = String._bridgeToObjectiveC()();
  }

  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v46;
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v81[0] = v51;
    *v50 = 136446210;
    v52 = sub_100006E44(v45, v47, v81);

    *(v50 + 4) = v52;
    _os_log_impl(&_mh_execute_header, v48, v49, "AutomationMode reader listening to mach service name %{public}s", v50, 0xCu);
    sub_100003050(v51);
  }

  else
  {
  }

  v53 = v75;
  sub_100002EC4(v69, v75);
  v54 = type metadata accessor for Reader(0);
  v55 = objc_allocWithZone(v54);
  v56 = &v55[OBJC_IVAR____TtC21automationmode_writer6Reader_stateFilePath];
  v57 = v73;
  v58 = v74;
  *v56 = v76;
  *(v56 + 1) = v58;
  v59 = &v55[OBJC_IVAR____TtC21automationmode_writer6Reader_noAuthRequiredFilePath];
  *v59 = v57;
  v59[1] = v77;
  sub_100002EC4(v53, &v55[OBJC_IVAR____TtC21automationmode_writer6Reader_bootSessionUUID]);
  v78.receiver = v55;
  v78.super_class = v54;
  v60 = objc_msgSendSuper2(&v78, "init");
  sub_100002F34(v53);
  v61 = objc_allocWithZone(NSXPCListener);
  v62 = v60;
  v63 = [v61 initWithMachServiceName:v44];

  v64 = v63;
  [v64 setDelegate:v62];

  [v64 resume];
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&_mh_execute_header, v65, v66, "Waiting for connections", v67, 2u);
  }

  return v40;
}

uint64_t type metadata accessor for Reader(uint64_t a1)
{
  result = qword_100010968;
  if (!qword_100010968)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100002C20(uint64_t a1)
{
  sub_100002CBC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100002CBC(uint64_t a1)
{
  if (!qword_100010B30)
  {
    type metadata accessor for UUID();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100010B30);
    }
  }
}

uint64_t sub_100002D38(uint64_t a1, int a2)
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

uint64_t sub_100002D58(uint64_t result, int a2, int a3)
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

void sub_100002D94(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_100002DE0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100002E18(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100002E7C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002EC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002E7C(&unk_100010990, &qword_100009D48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100002F34(uint64_t a1)
{
  v2 = sub_100002E7C(&unk_100010990, &qword_100009D48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100002F9C(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_100002FEC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100003050(void *a1)
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

uint64_t sub_10000309C()
{
  sub_100008D90(0, &qword_100010BA0, OS_os_log_ptr);
  result = OS_os_log.init(subsystem:category:)();
  qword_100010C10 = result;
  return result;
}

uint64_t sub_10000310C()
{
  v0 = type metadata accessor for Logger();
  sub_100002E18(v0, qword_100010A00);
  sub_100002DE0(v0, qword_100010A00);
  if (qword_100010830 != -1)
  {
    swift_once();
  }

  v1 = qword_100010C10;
  return Logger.init(_:)();
}

id sub_100003198(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, void *a5)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_100010838 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100002DE0(v8, qword_100010A00);
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136446210;
      swift_errorRetain();
      sub_100002E7C(&qword_100010BE0, &qword_100009D50);
      v13 = String.init<A>(describing:)();
      v15 = sub_100006E44(v13, v14, &v17);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "Provided authorization failed evaluation of device owner policy with error %{public}s", v11, 0xCu);
      sub_100003050(v12);
    }

    else
    {
    }
  }

  a3(a2);
  return [a5 invalidate];
}

uint64_t sub_10000336C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

id sub_10000344C()
{
  v1 = v0;
  if (qword_100010838 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100002DE0(v2, qword_100010A00);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Tearing down Writer", v5, 2u);
  }

  v7.receiver = v1;
  v7.super_class = type metadata accessor for Writer(0);
  return objc_msgSendSuper2(&v7, "dealloc");
}

uint64_t type metadata accessor for Writer(uint64_t a1)
{
  result = qword_100010B20;
  if (!qword_100010B20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100003670(int a1)
{
  v136 = a1;
  v1 = type metadata accessor for String.Encoding();
  v128 = *(v1 - 8);
  v129 = v1;
  __chkstk_darwin(v1, v2);
  v131 = &v118 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100002E7C(&unk_100010990, &qword_100009D48);
  v6 = __chkstk_darwin(v4 - 8, v5);
  v8 = &v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v11 = &v118 - v10;
  v12 = type metadata accessor for URL();
  v133 = *(v12 - 8);
  v14 = __chkstk_darwin(v12, v13);
  v16 = &v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v17);
  v19 = &v118 - v18;
  if (qword_100010838 != -1)
  {
    swift_once();
  }

  v134 = v19;
  v20 = type metadata accessor for Logger();
  v21 = sub_100002DE0(v20, qword_100010A00);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  v24 = os_log_type_enabled(v22, v23);
  v132 = v12;
  v127 = v16;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v138[0] = v26;
    *v25 = 136446210;
    if (v136)
    {
      v27 = 0x454C42414E45;
    }

    else
    {
      v27 = 0x656C6261736964;
    }

    if (v136)
    {
      v28 = 0xE600000000000000;
    }

    else
    {
      v28 = 0xE700000000000000;
    }

    v29 = sub_100006E44(v27, v28, v138);

    *(v25 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v22, v23, "Executing request to %{public}s automation mode", v25, 0xCu);
    sub_100003050(v26);
  }

  v30 = OBJC_IVAR____TtC21automationmode_writer6Writer_lock;
  v31 = v135;
  swift_beginAccess();
  os_unfair_lock_lock(&v31[v30]);
  swift_endAccess();
  v130 = objc_opt_self();
  v32 = [v130 defaultManager];
  v33 = &v31[OBJC_IVAR____TtC21automationmode_writer6Writer_stateFilePath];
  v34 = *&v31[OBJC_IVAR____TtC21automationmode_writer6Writer_stateFilePath];
  v35 = *(v33 + 1);
  v36 = String._bridgeToObjectiveC()();
  v37 = [v32 fileExistsAtPath:v36];

  if (((v37 ^ v136) & 1) == 0)
  {
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v138[0] = v57;
      *v56 = 136446210;
      if (v136)
      {
        v58 = 0x44454C42414E45;
      }

      else
      {
        v58 = 0x64656C6261736964;
      }

      if (v136)
      {
        v59 = 0xE700000000000000;
      }

      else
      {
        v59 = 0xE800000000000000;
      }

      v60 = sub_100006E44(v58, v59, v138);

      *(v56 + 4) = v60;
      _os_log_impl(&_mh_execute_header, v54, v55, "Requested automation mode state matches current state (%{public}s), nothing to do.", v56, 0xCu);
      sub_100003050(v57);

      goto LABEL_25;
    }

LABEL_26:

LABEL_27:
    v61 = v135;
    swift_beginAccess();
    v62 = &v61[v30];
    goto LABEL_36;
  }

  v124 = v11;
  v38 = v134;
  URL.init(fileURLWithPath:)();
  v39 = v135;
  v126 = v21;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.debug.getter();

  v42 = os_log_type_enabled(v40, v41);
  v121 = v8;
  v122 = v34;
  v123 = v35;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v44 = v30;
    v45 = swift_slowAlloc();
    v138[0] = v45;
    *v43 = 136446210;
    *(v43 + 4) = sub_100006E44(v34, v35, v138);
    _os_log_impl(&_mh_execute_header, v40, v41, "State file path %{public}s", v43, 0xCu);
    sub_100003050(v45);
    v30 = v44;

    v38 = v134;
  }

  v46 = v133;
  v47 = v131;
  if (v136)
  {
    v120 = OBJC_IVAR____TtC21automationmode_writer6Writer_bootSessionUUID;
    v48 = v124;
    sub_100008FF4(&v39[OBJC_IVAR____TtC21automationmode_writer6Writer_bootSessionUUID], v124, &unk_100010990, &qword_100009D48);
    v49 = type metadata accessor for UUID();
    v50 = *(v49 - 8);
    v119 = *(v50 + 48);
    v51 = v119(v48, 1, v49);
    v125 = v30;
    v118 = v50;
    if (v51 == 1)
    {
      v52 = 0x6E776F6E6B6E75;
      sub_10000905C(v48, &unk_100010990, &qword_100009D48);
      v53 = 0xE700000000000000;
    }

    else
    {
      v52 = UUID.uuidString.getter();
      v53 = v70;
      (*(v50 + 8))(v48, v49);
    }

    v138[0] = v52;
    v138[1] = v53;
    static String.Encoding.utf8.getter();
    sub_100008DD8();
    v71 = v134;
    StringProtocol.write(to:atomically:encoding:)();
    (*(v128 + 8))(v47, v129);

    v84 = v127;
    v85 = v132;
    (*(v46 + 16))(v127, v71, v132);
    v86 = v39;
    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v87, v88))
    {
      LODWORD(v131) = v88;
      v90 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      v138[0] = v129;
      *v90 = 136446466;
      sub_1000090BC(&qword_100010C00, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v91 = dispatch thunk of CustomStringConvertible.description.getter();
      v92 = v85;
      v94 = v93;
      v95 = *(v46 + 8);
      v133 = v46 + 8;
      v96 = v95;
      v95(v84, v92);
      v97 = sub_100006E44(v91, v94, v138);

      *(v90 + 4) = v97;
      *(v90 + 12) = 2082;
      v98 = v121;
      sub_100008FF4(&v39[v120], v121, &unk_100010990, &qword_100009D48);
      if (v119(v98, 1, v49) == 1)
      {
        v99 = 0x6E776F6E6B6E75;
        sub_10000905C(v98, &unk_100010990, &qword_100009D48);
        v100 = 0xE700000000000000;
      }

      else
      {
        v99 = UUID.uuidString.getter();
        v100 = v102;
        (*(v118 + 8))(v98, v49);
      }

      v103 = v134;
      v104 = sub_100006E44(v99, v100, v138);

      *(v90 + 14) = v104;
      _os_log_impl(&_mh_execute_header, v87, v131, "Created state file for automation mode at %{public}s with boot session id %{public}s", v90, 0x16u);
      swift_arrayDestroy();

      v96(v103, v132);
    }

    else
    {

      v101 = *(v46 + 8);
      v101(v84, v85);
      v101(v71, v85);
    }

    v30 = v125;
LABEL_44:
    v105 = [v130 defaultManager];
    v106 = String._bridgeToObjectiveC()();
    v107 = [v105 fileExistsAtPath:v106];

    LOBYTE(v106) = v107 ^ v136;
    v54 = Logger.logObject.getter();
    if ((v106 & 1) == 0)
    {
      v110 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v54, v110))
      {
        v111 = swift_slowAlloc();
        v112 = swift_slowAlloc();
        v138[0] = v112;
        *v111 = 136446210;
        if (v136)
        {
          v113 = 0x44454C42414E45;
        }

        else
        {
          v113 = 0x64656C6261736964;
        }

        if (v136)
        {
          v114 = 0xE700000000000000;
        }

        else
        {
          v114 = 0xE800000000000000;
        }

        v115 = sub_100006E44(v113, v114, v138);

        *(v111 + 4) = v115;
        _os_log_impl(&_mh_execute_header, v54, v110, "Successfully set automation mode to %{public}s", v111, 0xCu);
        sub_100003050(v112);
      }

      v116 = XAMAutomationModeStateChangedNotificationName();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v117 = String.utf8CString.getter();

      notify_post((v117 + 32));

      goto LABEL_27;
    }

    v108 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v54, v108))
    {
      v109 = swift_slowAlloc();
      *v109 = 0;
      _os_log_impl(&_mh_execute_header, v54, v108, "Failed to change automation mode", v109, 2u);
LABEL_25:

      goto LABEL_26;
    }

    goto LABEL_26;
  }

  v63 = [v130 defaultManager];
  URL._bridgeToObjectiveC()(v64);
  v66 = v65;
  v138[0] = 0;
  v67 = [v63 removeItemAtURL:v65 error:v138];

  if (v67)
  {
    v68 = *(v46 + 8);
    v69 = v138[0];
    v68(v38, v132);
    goto LABEL_44;
  }

  v125 = v30;
  v72 = v138[0];
  v73 = _convertNSErrorToError(_:)();

  swift_willThrow();
  (*(v46 + 8))(v38, v132);
  swift_errorRetain();
  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v138[0] = v77;
    *v76 = 136446210;
    v137 = v73;
    swift_errorRetain();
    sub_100002E7C(&qword_100010BE0, &qword_100009D50);
    v78 = String.init<A>(describing:)();
    v80 = sub_100006E44(v78, v79, v138);

    *(v76 + 4) = v80;
    _os_log_impl(&_mh_execute_header, v74, v75, "Failed to change automation mode: %{public}s", v76, 0xCu);
    sub_100003050(v77);
  }

  else
  {
  }

  v81 = v125;
  v82 = v135;
  swift_beginAccess();
  v62 = &v82[v81];
LABEL_36:
  os_unfair_lock_unlock(v62);
  return swift_endAccess();
}

void sub_1000044D0(uint64_t a1)
{
  sub_100002CBC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1000045AC()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 valueForEntitlement:v1];

  if (v2)
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
  sub_100008FF4(v13, &v11, &qword_100010BA8, &qword_100009E68);
  if (!*(&v12 + 1))
  {
    sub_10000905C(&v11, &qword_100010BA8, &qword_100009E68);
LABEL_9:
    v5 = String._bridgeToObjectiveC()();
    v6 = [v0 valueForEntitlement:v5];

    if (v6)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      *v9 = 0u;
      v10 = 0u;
    }

    v11 = *v9;
    v12 = v10;
    sub_100008FF4(&v11, v9, &qword_100010BA8, &qword_100009E68);
    if (*(&v10 + 1))
    {
      sub_100008D90(0, &qword_100010BB0, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        v4 = [v8 BOOLValue];

LABEL_17:
        sub_10000905C(&v11, &qword_100010BA8, &qword_100009E68);
        sub_10000905C(v13, &qword_100010BA8, &qword_100009E68);
        return v4;
      }
    }

    else
    {
      sub_10000905C(v9, &qword_100010BA8, &qword_100009E68);
    }

    v4 = 0;
    goto LABEL_17;
  }

  sub_100008D90(0, &qword_100010BB0, NSNumber_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  v3 = [v9[0] BOOLValue];

  if (!v3)
  {
    goto LABEL_9;
  }

  sub_10000905C(v13, &qword_100010BA8, &qword_100009E68);
  return 1;
}

void sub_100004910(uint64_t a1, uint64_t a2)
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

NSString sub_100004974()
{
  result = String._bridgeToObjectiveC()();
  qword_100010C18 = result;
  return result;
}

NSString sub_1000049AC()
{
  result = String._bridgeToObjectiveC()();
  qword_100010C20 = result;
  return result;
}

double sub_100004A04()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v2 + 16) && (v3 = sub_1000073EC(0xD00000000000002ELL, 0x800000010000A360), (v4 & 1) != 0))
  {
    v5 = (*(v2 + 56) + 16 * v3);
    v7 = *v5;
    v6 = v5[1];
  }

  else
  {
    v7 = 0;
    v6 = 0xE000000000000000;
  }

  v12 = 0.0;
  v8 = sub_100007628(v7, v6, &v12);

  if (v8)
  {
    return v12;
  }

  if (qword_100010848 != -1)
  {
    swift_once();
  }

  v10 = qword_100010C20;
  v11 = sub_100007720();
  LODWORD(v10) = CFPreferencesGetAppBooleanValue(v10, v11, 0);

  result = 2419200.0;
  if (!v10)
  {
    return 28800.0;
  }

  return result;
}

uint64_t sub_100004B8C()
{
  if (qword_100010840 != -1)
  {
    swift_once();
  }

  v0 = sub_100007720();
  v1 = String._bridgeToObjectiveC()();
  v2 = _CFPreferencesCopyValueWithContainer();

  if (v2)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      [v3 doubleValue];
      v5 = v4;
      swift_unknownObjectRelease();
      return v5;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

void sub_100004CA8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    if (qword_100010838 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100002DE0(v3, qword_100010A00);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = a1;
      _os_log_impl(&_mh_execute_header, v4, v5, "Storing credential creation time:  %f", v6, 0xCu);
    }

    if (qword_100010840 != -1)
    {
      swift_once();
    }

    v7 = [objc_allocWithZone(NSNumber) initWithDouble:*&a1];
    v8 = sub_100007720();
    v9 = String._bridgeToObjectiveC()();
    _CFPreferencesSetValueWithContainer();
  }
}

NSString sub_100004E98()
{
  result = String._bridgeToObjectiveC()();
  qword_100010C30 = result;
  return result;
}

uint64_t sub_100004ED0()
{
  if (qword_100010858 != -1)
  {
    swift_once();
  }

  v0 = sub_100007720();
  v1 = String._bridgeToObjectiveC()();
  v2 = _CFPreferencesCopyValueWithContainer();

  if (!v2)
  {
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  return 0;
}

void sub_100004FE0(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (qword_100010838 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100002DE0(v4, qword_100010A00);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_100006E44(a1, a2, &v12);
      _os_log_impl(&_mh_execute_header, v5, v6, "Storing credential boot session UUID:  %s", v7, 0xCu);
      sub_100003050(v8);
    }

    if (qword_100010858 != -1)
    {
      swift_once();
    }

    v9 = String._bridgeToObjectiveC()();

    v10 = sub_100007720();
    v11 = String._bridgeToObjectiveC()();
    _CFPreferencesSetValueWithContainer();
  }
}

BOOL sub_100005214()
{
  v1 = sub_100002E7C(&unk_100010990, &qword_100009D48);
  __chkstk_darwin(v1 - 8, v2);
  v4 = &v56 - v3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v8 = __chkstk_darwin(v5, v7);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v13 = &v56 - v12;
  *&v14 = COERCE_DOUBLE(sub_100004B8C());
  if (v15)
  {
    if (qword_100010838 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100002DE0(v16, qword_100010A00);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_14;
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = "No previous credential exists";
LABEL_13:
    _os_log_impl(&_mh_execute_header, v17, v18, v20, v19, 2u);

LABEL_14:

    return 0;
  }

  v21 = *&v14;
  v22 = sub_100004ED0();
  if (!v23)
  {
    if (qword_100010838 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100002DE0(v26, qword_100010A00);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_14;
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = "Previous credential did not record boot session, will require new authorization";
    goto LABEL_13;
  }

  v24 = v22;
  v25 = v23;
  sub_100008FF4(v0 + OBJC_IVAR____TtC21automationmode_writer6Writer_bootSessionUUID, v4, &unk_100010990, &qword_100009D48);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {

    sub_10000905C(v4, &unk_100010990, &qword_100009D48);
  }

  else
  {
    (*(v6 + 32))(v13, v4, v5);
    if (v24 == UUID.uuidString.getter() && v25 == v28)
    {
    }

    else
    {
      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v30 & 1) == 0)
      {
        if (qword_100010838 != -1)
        {
          swift_once();
        }

        v31 = type metadata accessor for Logger();
        sub_100002DE0(v31, qword_100010A00);
        (*(v6 + 16))(v10, v13, v5);

        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v57 = v56;
          *v34 = 136315394;
          v35 = sub_100006E44(v24, v25, &v57);

          *(v34 + 4) = v35;
          *(v34 + 12) = 2080;
          v36 = UUID.uuidString.getter();
          v38 = v37;
          v39 = *(v6 + 8);
          v39(v10, v5);
          v40 = sub_100006E44(v36, v38, &v57);

          *(v34 + 14) = v40;
          _os_log_impl(&_mh_execute_header, v32, v33, "Previous credential boot session does not match current (%s != %s, will require new authorization", v34, 0x16u);
          swift_arrayDestroy();

          v39(v13, v5);
        }

        else
        {

          v55 = *(v6 + 8);
          v55(v10, v5);
          v55(v13, v5);
        }

        return 0;
      }
    }

    (*(v6 + 8))(v13, v5);
  }

  if (qword_100010838 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  sub_100002DE0(v41, qword_100010A00);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 134217984;
    *(v44 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v42, v43, "Last credential created at %f", v44, 0xCu);
  }

  TMGetKernelMonotonicClock();
  v46 = v45;
  v47 = v45 - v21;
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 134218240;
    *(v50 + 4) = v46;
    *(v50 + 12) = 2048;
    *(v50 + 14) = v47;
    _os_log_impl(&_mh_execute_header, v48, v49, "Credential age based on current time %f is %f", v50, 0x16u);
  }

  v51 = v0;
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 134217984;
    *(v54 + 4) = *&v51[OBJC_IVAR____TtC21automationmode_writer6Writer_credentialTimeout];
    _os_log_impl(&_mh_execute_header, v52, v53, "Credential timeout: %f", v54, 0xCu);
  }

  if (v47 < 0.0)
  {
    return 0;
  }

  return v47 < *&v51[OBJC_IVAR____TtC21automationmode_writer6Writer_credentialTimeout];
}

char *sub_100005990()
{
  v0 = sub_100002E7C(&unk_100010990, &qword_100009D48);
  sub_100002E18(v0, qword_100010C38);
  v1 = sub_100002DE0(v0, qword_100010C38);
  return sub_1000059E8(v1);
}

char *sub_1000059E8@<X0>(char *a1@<X8>)
{
  v2 = sub_100002E7C(&unk_100010990, &qword_100009D48);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v60 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v9 = __chkstk_darwin(v6, v8);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v12);
  v14 = &v60 - v13;
  v15 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v15 - 8, v16);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = 37;
  v19 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v19 + 16) = 37;
  *(v19 + 48) = 0u;
  *(v19 + 61) = 0;
  *(v19 + 32) = 0u;
  if (!sysctlbyname("kern.bootsessionuuid", (v19 + 32), &v65, 0, 0))
  {

    static String.Encoding.ascii.getter();
    v32 = sub_100006220(v19, v18);
    if (!v33)
    {
      if (qword_100010838 != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      sub_100002DE0(v42, qword_100010A00);
      v27 = Logger.logObject.getter();
      v43 = static os_log_type_t.fault.getter();
      if (!os_log_type_enabled(v27, v43))
      {
        goto LABEL_21;
      }

      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v66 = v45;
      *v44 = 136315138;

      v46 = Array.description.getter();
      v48 = v47;

      v49 = sub_100006E44(v46, v48, &v66);

      *(v44 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v27, v43, "Unable to convert kern.bootsessionuuid value %s to ascii string.", v44, 0xCu);
      sub_100003050(v45);

      goto LABEL_13;
    }

    v34 = v33;
    v35 = v32;
    UUID.init(uuidString:)();
    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      v64 = a1;

      v50 = *(v7 + 32);
      v50(v14, v5, v6);
      if (qword_100010838 != -1)
      {
        swift_once();
      }

      v51 = type metadata accessor for Logger();
      sub_100002DE0(v51, qword_100010A00);
      (*(v7 + 16))(v11, v14, v6);
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v61 = v54;
        v62 = swift_slowAlloc();
        v66 = v62;
        *v54 = 136446210;
        sub_1000090BC(&qword_100010C08, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v55 = dispatch thunk of CustomStringConvertible.description.getter();
        v63 = v50;
        v57 = v56;
        (*(v7 + 8))(v11, v6);
        v58 = sub_100006E44(v55, v57, &v66);
        v50 = v63;

        v59 = v61;
        *(v61 + 1) = v58;
        _os_log_impl(&_mh_execute_header, v52, v53, "Boot session UUID is %{public}s", v59, 0xCu);
        sub_100003050(v62);
      }

      else
      {

        (*(v7 + 8))(v11, v6);
      }

      a1 = v64;
      v50(v64, v14, v6);
      v41 = 0;
      goto LABEL_22;
    }

    sub_10000905C(v5, &unk_100010990, &qword_100009D48);
    if (qword_100010838 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_100002DE0(v36, qword_100010A00);

    v27 = Logger.logObject.getter();
    v37 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v27, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v66 = v39;
      *v38 = 136446210;
      v40 = sub_100006E44(v35, v34, &v66);

      *(v38 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v27, v37, "Unable to convert kern.bootsessionuuid value %{public}s to UUID", v38, 0xCu);
      sub_100003050(v39);

      goto LABEL_13;
    }

LABEL_20:

    goto LABEL_21;
  }

  v20 = errno.getter();
  result = strerror(v20);
  if (result)
  {
    v22 = String.init(utf8String:)();
    if (v23)
    {
      v24 = v22;
    }

    else
    {
      v24 = 0x6E776F6E6B6E55;
    }

    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = 0xE700000000000000;
    }

    if (qword_100010838 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100002DE0(v26, qword_100010A00);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v66 = v30;
      *v29 = 67109378;
      *(v29 + 4) = errno.getter();
      *(v29 + 8) = 2082;
      v31 = sub_100006E44(v24, v25, &v66);

      *(v29 + 10) = v31;
      _os_log_impl(&_mh_execute_header, v27, v28, "Error %d from sysctlbyname: %{public}s", v29, 0x12u);
      sub_100003050(v30);

LABEL_13:

LABEL_21:

      v41 = 1;
LABEL_22:
      (*(v7 + 56))(a1, v41, 1, v6);
    }

    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t sub_100006220(uint64_t a1, char *a2)
{
  v4 = type metadata accessor for String.Encoding();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v9 = static String.Encoding.== infix(_:_:)();
  v10 = *(v5 + 8);
  v10(v8, v4);
  if ((v9 & 1) == 0)
  {
    static String.Encoding.ascii.getter();
    v11 = static String.Encoding.== infix(_:_:)();
    v10(v8, v4);
    if ((v11 & 1) == 0)
    {
      static String.Encoding.nonLossyASCII.getter();
      v12 = static String.Encoding.== infix(_:_:)();
      v10(v8, v4);
      if ((v12 & 1) == 0)
      {
        goto LABEL_10;
      }
    }
  }

  v14 = sub_100006DC0(v13);
  if (!v15)
  {
    goto LABEL_10;
  }

  v16 = v14;
  static String.Encoding.utf8.getter();
  v17 = static String.Encoding.== infix(_:_:)();
  v10(v8, v4);
  if (v17)
  {

LABEL_17:
    v10(a2, v4);
    return v16;
  }

  if ((_StringGuts._isContiguousASCII.getter() & 1) == 0)
  {

LABEL_10:
    v18 = *(a1 + 16);
    if (v18)
    {
      v8 = 0;
      while (v8[a1 + 32])
      {
        if (v18 == ++v8)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
LABEL_14:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v19 = [objc_allocWithZone(NSString) initWithBytes:a1 + 32 length:v8 encoding:String.Encoding.rawValue.getter()];

    if (!v19)
    {
      v10(a2, v4);
      return 0;
    }

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    goto LABEL_17;
  }

  v10(a2, v4);

  return v16;
}

id sub_100006504()
{
  if (qword_100010838 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100002DE0(v1, qword_100010A00);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100006E44(*&v2[OBJC_IVAR____TtC21automationmode_writer6Writer_noAuthRequiredFilePath], *&v2[OBJC_IVAR____TtC21automationmode_writer6Writer_noAuthRequiredFilePath + 8], &v11);
    _os_log_impl(&_mh_execute_header, v3, v4, "Checking for '%s'", v5, 0xCu);
    sub_100003050(v6);
  }

  v7 = [objc_opt_self() defaultManager];
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 fileExistsAtPath:v8];

  return v9;
}

uint64_t sub_1000066A8()
{
  v0 = [objc_allocWithZone(LAContext) init];
  v1 = [v0 canEvaluatePolicy:2 error:0];

  if ((v1 & 1) == 0)
  {
    if (qword_100010838 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100002DE0(v7, qword_100010A00);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_12;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "Unable to evaluate device owner authentication policy, probably no passcode set.";
    goto LABEL_11;
  }

  if (sub_1000080D8())
  {
    if (qword_100010838 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100002DE0(v2, qword_100010A00);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_12;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "Authentication not required for privileged connection";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v3, v4, v6, v5, 2u);

LABEL_12:

    return 0;
  }

  if (sub_100005214())
  {
    if (qword_100010838 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100002DE0(v9, qword_100010A00);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_12;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "Previous authentication has not expired";
    goto LABEL_11;
  }

  if (sub_100006504())
  {
    if (qword_100010838 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100002DE0(v10, qword_100010A00);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_12;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "Waiving the requirement for authentication because of the existence of the no-auth-required cookie";
    goto LABEL_11;
  }

  return 1;
}

uint64_t sub_100006A70(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = sub_100002E7C(&unk_100010990, &qword_100009D48);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v20 - v9;
  if (a1)
  {
    swift_errorRetain();
    a2(a1);
  }

  else
  {
    TMGetKernelMonotonicClock();
    sub_100004CA8(v12, 0);
    sub_100008FF4(a4 + OBJC_IVAR____TtC21automationmode_writer6Writer_bootSessionUUID, v10, &unk_100010990, &qword_100009D48);
    v13 = type metadata accessor for UUID();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v10, 1, v13) == 1)
    {
      sub_10000905C(v10, &unk_100010990, &qword_100009D48);
      v15 = 0xE700000000000000;
      v16 = 0x6E776F6E6B6E75;
    }

    else
    {
      v17 = UUID.uuidString.getter();
      v19 = v18;
      (*(v14 + 8))(v10, v13);
      v16 = v17;
      v15 = v19;
    }

    sub_100004FE0(v16, v15);
    sub_100003670(1);
    return (a2)(0);
  }
}

void sub_100006D44(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
  _Block_release(v6);
}

uint64_t sub_100006DC0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result;
    v3 = *(result + 32);
    result += 32;
    if (!v3)
    {
LABEL_6:
      v7 = static String._tryFromUTF8(_:)();
      swift_unknownObjectRelease();
      return v7;
    }

    v4 = 0;
    v5 = v1 - 1;
    while (v5 != v4)
    {
      if (!*(v2 + 33 + v4++))
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_100006E44(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100006F10(v11, 0, 0, 1, a1, a2);
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
    sub_100008D30(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100003050(v11);
  return v7;
}

unint64_t sub_100006F10(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000701C(a5, a6);
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

char *sub_10000701C(uint64_t a1, unint64_t a2)
{
  v3 = sub_100007068(a1, a2);
  sub_100007198(&off_10000C608);
  return v3;
}

char *sub_100007068(uint64_t a1, unint64_t a2)
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

  v6 = sub_100007284(v5, 0);
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
        v7 = sub_100007284(v10, 0);
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

uint64_t sub_100007198(uint64_t result)
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

  result = sub_1000072F8(result, v11, 1, v3);
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

void *sub_100007284(uint64_t a1, uint64_t a2)
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

  sub_100002E7C(&qword_100010B98, &qword_100009E60);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000072F8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002E7C(&qword_100010B98, &qword_100009E60);
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

unint64_t sub_1000073EC(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1000074A8(a1, a2, v4);
}

unint64_t sub_100007464(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100007560(a1, v4);
}

unint64_t sub_1000074A8(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_100007560(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100008F44(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100008FA0(v8);
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

BOOL sub_100007628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  _StringGuts._slowWithCString<A>(_:)();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

NSString sub_100007720()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() processInfo];
  v2 = [v1 environment];

  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v3 + 16) && (sub_1000073EC(0xD00000000000002ELL, 0x800000010000A1D0), (v4 & 1) != 0))
  {

    v5 = String._bridgeToObjectiveC()();

    return v5;
  }

  else
  {

    return v0;
  }
}

unint64_t sub_100007840(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002E7C(&qword_100010BE8, &qword_100009E98);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100008FF4(v4, v13, &qword_100010BD8, &unk_100009E88);
      result = sub_100007464(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100008F34(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_10000797C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002E7C(&unk_100010BF0, &unk_100009EA0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100008FF4(v4, &v13, &qword_100010BC8, &qword_100009E78);
      v5 = v13;
      v6 = v14;
      result = sub_1000073EC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100008F34(&v15, (v3[7] + 32 * result));
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

void sub_100007AAC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a4;
  v7 = swift_allocObject();
  v7[2] = sub_100008EB8;
  v7[3] = v6;
  v7[4] = a3;
  v8 = objc_allocWithZone(LAContext);
  _Block_copy(a4);

  v9 = a3;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v11 = [v8 initWithExternalizedContext:isa];

  if (v11)
  {
    sub_100002E7C(&qword_100010BD0, &qword_100009E80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100009D90;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = &type metadata for Bool;
    *(inited + 72) = 1;
    sub_100007840(inited);
    swift_setDeallocating();
    sub_10000905C(inited + 32, &qword_100010BD8, &unk_100009E88);
    v13.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v14 = swift_allocObject();
    v14[2] = sub_100008EC4;
    v14[3] = v7;
    v14[4] = v11;
    aBlock[4] = sub_100008F10;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000336C;
    aBlock[3] = &unk_10000C770;
    a4 = _Block_copy(aBlock);
    v15 = v11;

    [v15 evaluatePolicy:2 options:v13.super.isa reply:a4];
  }

  else
  {
    sub_100002E7C(&qword_100010BC0, &qword_100009E70);
    v16 = swift_initStackObject();
    *(v16 + 16) = xmmword_100009D90;
    *(v16 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v16 + 72) = &type metadata for String;
    *(v16 + 40) = v17;
    *(v16 + 48) = 0xD000000000000036;
    *(v16 + 56) = 0x800000010000A130;
    v18 = @"com.apple.dt.AutomationMode.writer.error";
    sub_10000797C(v16);
    swift_setDeallocating();
    sub_10000905C(v16 + 32, &qword_100010BC8, &qword_100009E78);
    v19 = objc_allocWithZone(NSError);
    v20 = Dictionary._bridgeToObjectiveC()().super.isa;

    v21 = [v19 initWithDomain:@"com.apple.dt.AutomationMode.writer.error" code:2 userInfo:v20];

    v22 = v21;
    _Block_copy(a4);
    v15 = v22;
    v23 = _convertErrorToNSError(_:)();
    (*(a4 + 2))(a4, v23);

    v13.super.isa = v15;
  }

  _Block_release(a4);
}

uint64_t sub_100007E98(void *a1)
{
  v2 = v1;
  if (qword_100010838 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100002DE0(v4, qword_100010A00);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Received connection request", v7, 2u);
  }

  v8 = sub_1000045AC();
  if (v8)
  {
    [a1 setExportedObject:v2];
    v9 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___AutomationModeWriterProtocol];
    [a1 setExportedInterface:v9];

    [a1 resume];
  }

  else
  {
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 136446210;
      *(v12 + 4) = sub_100006E44(0xD000000000000031, 0x800000010000A260, &v15);
      _os_log_impl(&_mh_execute_header, v10, v11, "Rejecting connection from client lacking entitlement %{public}s", v12, 0xCu);
      sub_100003050(v13);
    }
  }

  return v8 & 1;
}

id sub_1000080D8()
{
  v0 = [objc_opt_self() currentConnection];
  if (v0)
  {
    v1 = v0;
    v2 = String._bridgeToObjectiveC()();
    v3 = [v1 valueForEntitlement:v2];

    if (v3)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v7 = 0u;
      v8 = 0u;
    }

    v9 = v7;
    v10 = v8;
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  sub_100008FF4(&v9, &v7, &qword_100010BA8, &qword_100009E68);
  if (!*(&v8 + 1))
  {
    sub_10000905C(&v7, &qword_100010BA8, &qword_100009E68);
    goto LABEL_11;
  }

  sub_100008D90(0, &qword_100010BB0, NSNumber_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v4 = 0;
    goto LABEL_12;
  }

  v4 = [v6 BOOLValue];

LABEL_12:
  sub_10000905C(&v9, &qword_100010BA8, &qword_100009E68);
  return v4;
}

void sub_100008264(uint64_t a1, uint64_t a2, void *a3, void *aBlock)
{
  _Block_copy(aBlock);
  if (qword_100010838 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100002DE0(v8, qword_100010A00);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Handling request to enable automation mode with serialized authorization.", v11, 2u);
  }

  _Block_copy(aBlock);
  v12 = a3;
  sub_100007AAC(a1, a2, v12, aBlock);
  _Block_release(aBlock);

  _Block_release(aBlock);
}

void sub_1000083A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for String.Encoding();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1000080D8())
  {
    v37 = v5;
    v15 = *(a1 + OBJC_IVAR____TtC21automationmode_writer6Writer_noAuthRequiredFilePath);
    v14 = *(a1 + OBJC_IVAR____TtC21automationmode_writer6Writer_noAuthRequiredFilePath + 8);
    if (qword_100010838 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    v17 = sub_100002DE0(v16, qword_100010A00);

    v36 = v17;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v34 = v4;
      v21 = v15;
      v22 = v20;
      v23 = swift_slowAlloc();
      v35 = a2;
      v24 = v23;
      v38[0] = v23;
      *v22 = 136446210;
      *(v22 + 4) = sub_100006E44(v21, v14, v38);
      _os_log_impl(&_mh_execute_header, v18, v19, "no-auth-required cookie file path %{public}s", v22, 0xCu);
      sub_100003050(v24);
      a2 = v35;

      v15 = v21;
      v4 = v34;
    }

    v38[0] = 0;
    v38[1] = 0xE000000000000000;
    URL.init(fileURLWithPath:)();
    static String.Encoding.utf8.getter();
    sub_100008DD8();
    StringProtocol.write(to:atomically:encoding:)();
    (*(v37 + 8))(v8, v4);
    (*(v10 + 8))(v13, v9);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = v15;
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v38[0] = v31;
      *v30 = 136446210;
      v32 = sub_100006E44(v29, v14, v38);

      *(v30 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v27, v28, "Created no-auth-required cookie file for automation mode at %{public}s", v30, 0xCu);
      sub_100003050(v31);
    }

    else
    {
    }

    (*(a2 + 16))(a2, 0);
  }

  else
  {
    v25 = [objc_allocWithZone(NSError) initWithDomain:@"com.apple.dt.AutomationMode.writer.error" code:3 userInfo:0];
    v37 = _convertErrorToNSError(_:)();
    (*(a2 + 16))(a2, v37);

    v26 = v37;
  }
}

void sub_10000888C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1000080D8())
  {
    v10 = *(a1 + OBJC_IVAR____TtC21automationmode_writer6Writer_noAuthRequiredFilePath);
    v9 = *(a1 + OBJC_IVAR____TtC21automationmode_writer6Writer_noAuthRequiredFilePath + 8);
    if (qword_100010838 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    v12 = sub_100002DE0(v11, qword_100010A00);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v37 = v12;
      v16 = v10;
      v17 = v15;
      v18 = swift_slowAlloc();
      v38 = v18;
      *v17 = 136446210;
      *(v17 + 4) = sub_100006E44(v16, v9, &v38);
      _os_log_impl(&_mh_execute_header, v13, v14, "no-auth-required cookie file path %{public}s", v17, 0xCu);
      sub_100003050(v18);

      v10 = v16;
    }

    v19 = [objc_opt_self() defaultManager];
    URL.init(fileURLWithPath:)();
    URL._bridgeToObjectiveC()(v20);
    v22 = v21;
    (*(v5 + 8))(v8, v4);
    v38 = 0;
    v23 = [v19 removeItemAtURL:v22 error:&v38];

    v24 = v38;
    if (v23)
    {
      swift_bridgeObjectRetain_n();
      v25 = v24;
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v38 = v29;
        *v28 = 136446210;
        v30 = sub_100006E44(v10, v9, &v38);

        *(v28 + 4) = v30;
        _os_log_impl(&_mh_execute_header, v26, v27, "Removed no-auth-required cookie file for automation mode at %{public}s", v28, 0xCu);
        sub_100003050(v29);
      }

      else
      {
      }

      (*(a2 + 16))(a2, 0);
    }

    else
    {
      v35 = v38;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      swift_errorRetain();
      v36 = _convertErrorToNSError(_:)();
      (*(a2 + 16))(a2, v36);
    }
  }

  else
  {
    v31 = [objc_allocWithZone(NSError) initWithDomain:@"com.apple.dt.AutomationMode.writer.error" code:3 userInfo:0];
    v32 = _convertErrorToNSError(_:)();
    v33 = *(a2 + 16);
    v37 = v32;
    v33(a2);

    v34 = v37;
  }
}

uint64_t sub_100008D30(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100008D90(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_100008DD8()
{
  result = qword_100010BB8;
  if (!qword_100010BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010BB8);
  }

  return result;
}

uint64_t sub_100008E2C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100008E80()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008ED0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100008F1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

_OWORD *sub_100008F34(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100008FF4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002E7C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000905C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002E7C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000090BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *sub_100009104@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}