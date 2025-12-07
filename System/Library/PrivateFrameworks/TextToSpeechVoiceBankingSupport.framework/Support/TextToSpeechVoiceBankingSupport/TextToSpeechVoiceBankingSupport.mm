uint64_t sub_100001AB0(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  swift_unknownObjectUnownedInit();

  return v2;
}

uint64_t sub_100001AFC()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v29 = *(v2 - 8);
  v30 = v2;
  __chkstk_darwin(v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100001EE8(&qword_1000352B0, &qword_100027AF0);
  __chkstk_darwin(v5 - 8);
  v7 = &v27 - v6;
  v28 = type metadata accessor for TTSVBDataStore.XPCServiceConfig();
  v8 = *(v28 - 8);
  __chkstk_darwin(v28);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  TTSVBVoiceBankingManager.xpcServiceConfig.getter();

  TTSVBDataStore.XPCServiceConfig.storeURL.getter();
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  (*(v13 + 56))(v7, 0, 1, v12);
  v14 = TTSVBDataStore.XPCServiceConfig.model.getter();
  TTSVBDataStore.XPCServiceConfig.options.getter();
  v16 = 0;
  if ((*(v13 + 48))(v7, 1, v12) != 1)
  {
    URL._bridgeToObjectiveC()(v15);
    v16 = v17;
    (*(v13 + 8))(v7, v12);
  }

  v18 = objc_allocWithZone(NSXPCStoreServer);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v20 = [v18 initForStoreWithURL:v16 usingModel:v14 options:isa policy:0];

  swift_beginAccess();
  v21 = *(v1 + 16);
  *(v1 + 16) = v20;

  static TTSVBLog.daemon.getter();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Will start listening on XPCStoreServer", v24, 2u);
  }

  (*(v29 + 8))(v4, v30);
  swift_beginAccess();
  v25 = *(v1 + 16);
  if (v25)
  {
    swift_endAccess();
    [v25 startListening];
    return (*(v8 + 8))(v10, v28);
  }

  else
  {
    (*(v8 + 8))(v10, v28);
    return swift_endAccess();
  }
}

uint64_t sub_100001EE8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100001F30()
{
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

id sub_100001F94()
{
  v1 = OBJC_IVAR____TtC13voicebankingd35VoiceBankingUserNotificationManager____lazy_storage___userNotificationCenter;
  v2 = *(v0 + OBJC_IVAR____TtC13voicebankingd35VoiceBankingUserNotificationManager____lazy_storage___userNotificationCenter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13voicebankingd35VoiceBankingUserNotificationManager____lazy_storage___userNotificationCenter);
  }

  else
  {
    v4 = objc_allocWithZone(UNUserNotificationCenter);
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 initWithBundleIdentifier:v5];

    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id VoiceBankingXPCServer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_1000020E0()
{
  v1 = sub_100001F94();
  [v1 setDelegate:v0];
  [v1 setWantsNotificationResponsesDelivered];
}

void sub_100002138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_100001F94();
  v12 = swift_allocObject();
  v12[2] = v5;
  v12[3] = a1;
  v12[4] = a2;
  v12[5] = a3;
  v12[6] = a4;
  v12[7] = a5;
  v12[8] = v11;
  v16[4] = sub_100002684;
  v16[5] = v12;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_100002FFC;
  v16[3] = &unk_100031070;
  v13 = _Block_copy(v16);
  v14 = v5;

  v15 = v11;

  [v15 getNotificationSettingsWithCompletionHandler:v13];
  _Block_release(v13);
}

void sub_100002260(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v39 = a8;
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  v40 = v15;
  v41 = v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v38 - v21;
  __chkstk_darwin(v20);
  v24 = &v38 - v23;
  v25 = [a1 authorizationStatus];
  if ((v25 - 2) >= 3)
  {
    if (v25)
    {
      if (v25 == 1)
      {
        static TTSVBLog.daemon.getter();
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 0;
          _os_log_impl(&_mh_execute_header, v26, v27, "Will not schedule notification. User has denied user notifications", v28, 2u);
        }

        (*(v41 + 8))(v24, v40);
      }

      else
      {
        static TTSVBLog.daemon.getter();
        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&_mh_execute_header, v35, v36, "Unknown user notification authorizationStatus", v37, 2u);
        }

        (*(v41 + 8))(v19, v40);
      }
    }

    else
    {
      static TTSVBLog.daemon.getter();
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v29, v30, "Will request user notification permission", v31, 2u);
      }

      (*(v41 + 8))(v22, v40);
      v32 = swift_allocObject();
      v32[2] = a2;
      v32[3] = a3;
      v32[4] = a4;
      v32[5] = a5;
      v32[6] = a6;
      v32[7] = a7;
      aBlock[4] = sub_100005E44;
      aBlock[5] = v32;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100002F84;
      aBlock[3] = &unk_100031220;
      v33 = _Block_copy(aBlock);
      v34 = a2;

      [v39 requestAuthorizationWithOptions:7 completionHandler:v33];
      _Block_release(v33);
    }
  }

  else
  {
    sub_100002A08(a3, a4, a5, a6, a7);
  }
}

uint64_t sub_100002634()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100002698(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v41 = a8;
  v15 = type metadata accessor for Logger();
  v42 = *(v15 - 8);
  v43 = v15;
  v16 = __chkstk_darwin(v15);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v36 - v20;
  __chkstk_darwin(v19);
  v23 = &v36 - v22;
  if (a2)
  {
    swift_errorRetain();
    static TTSVBLog.daemon.getter();
    swift_errorRetain();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      swift_errorRetain();
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 4) = v28;
      *v27 = v28;
      _os_log_impl(&_mh_execute_header, v24, v25, "Error occurred requesting notification permission: %@", v26, 0xCu);
      sub_100005EBC(v27, &qword_1000350B0, &qword_100027C40);
    }

    else
    {
    }

    return (*(v42 + 8))(v23, v43);
  }

  else
  {
    v36 = a4;
    v37 = a5;
    v38 = a6;
    v39 = a3;
    v40 = a7;
    if (a1)
    {
      static TTSVBLog.daemon.getter();
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v29, v30, "User notification permission was granted. Proceeding with scheduling notification", v31, 2u);
      }

      (*(v42 + 8))(v21, v43);
      return sub_100002A08(v36, v37, v38, v40, v41);
    }

    else
    {
      static TTSVBLog.daemon.getter();
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&_mh_execute_header, v33, v34, "Will not schedule notification. User has denied user notifications", v35, 2u);
      }

      return (*(v42 + 8))(v18, v43);
    }
  }
}

uint64_t sub_100002A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for Logger();
  v39 = *(v6 - 8);
  v40 = v6;
  __chkstk_darwin(v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100001EE8(&qword_1000352B0, &qword_100027AF0);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v39 - v13;
  v15 = [objc_allocWithZone(UNMutableNotificationContent) init];
  v16 = String._bridgeToObjectiveC()();
  [v15 setTitle:v16];

  v17 = String._bridgeToObjectiveC()();
  [v15 setBody:v17];

  v18 = String._bridgeToObjectiveC()();
  [v15 setThreadIdentifier:v18];

  [v15 setInterruptionLevel:a5];
  URL.init(string:)();
  v41 = v14;
  sub_100005E54(v14, v12, &qword_1000352B0, &qword_100027AF0);
  v19 = type metadata accessor for URL();
  v20 = *(v19 - 8);
  v22 = 0;
  if ((*(v20 + 48))(v12, 1, v19) != 1)
  {
    URL._bridgeToObjectiveC()(v21);
    v22 = v23;
    (*(v20 + 8))(v12, v19);
  }

  [v15 setDefaultActionURL:{v22, v39, v40}];

  v24 = String._bridgeToObjectiveC()();
  v25 = [objc_opt_self() iconWithUTI:v24];

  [v15 setIcon:v25];
  v26 = [objc_opt_self() triggerWithTimeInterval:0 repeats:2.0];
  v27 = v15;
  v28 = v26;
  v29 = String._bridgeToObjectiveC()();
  v30 = [objc_opt_self() requestWithIdentifier:v29 content:v27 trigger:v28];

  v31 = sub_100001F94();
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v31 removeDeliveredNotificationsWithIdentifiers:isa];

  v33 = Array._bridgeToObjectiveC()().super.isa;
  [v31 removePendingNotificationRequestsWithIdentifiers:v33];

  static TTSVBLog.daemon.getter();
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v34, v35, "Will schedule user notification", v36, 2u);
  }

  (*(v39 + 8))(v8, v40);
  aBlock[4] = sub_10000307C;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000032E8;
  aBlock[3] = &unk_100031248;
  v37 = _Block_copy(aBlock);
  [v31 addNotificationRequest:v30 withCompletionHandler:v37];
  _Block_release(v37);

  return sub_100005EBC(v41, &qword_1000352B0, &qword_100027AF0);
}

void sub_100002F84(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_100002FFC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_100003064(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000307C(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v18 - v7;
  if (a1)
  {
    swift_errorRetain();
    static TTSVBLog.daemon.getter();
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&_mh_execute_header, v9, v10, "Error occurred scheduling user notification: %@", v11, 0xCu);
      sub_100005EBC(v12, &qword_1000350B0, &qword_100027C40);
    }

    else
    {
    }
  }

  else
  {
    static TTSVBLog.daemon.getter();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Did schedule user notification", v16, 2u);
    }

    v6 = v8;
  }

  return (*(v3 + 8))(v6, v2);
}

void sub_1000032E8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

id sub_100003354()
{
  v1 = OBJC_IVAR____TtC13voicebankingd35VoiceBankingUserNotificationManager____lazy_storage___voicebankingUserNotificationBundle;
  v2 = *(v0 + OBJC_IVAR____TtC13voicebankingd35VoiceBankingUserNotificationManager____lazy_storage___voicebankingUserNotificationBundle);
  v3 = v2;
  if (v2 == 1)
  {
    v4 = objc_allocWithZone(NSBundle);
    v5 = String._bridgeToObjectiveC()();
    v3 = [v4 initWithPath:v5];

    v6 = *(v0 + v1);
    *(v0 + v1) = v3;
    v7 = v3;
    sub_1000057AC(v6);
  }

  sub_100005DEC(v2);
  return v3;
}

uint64_t sub_10000340C(uint64_t a1, uint64_t a2, char a3)
{

  if ((a3 & 1) == 0)
  {
    goto LABEL_7;
  }

  Type = AXDeviceGetType();
  if (Type == 3)
  {
    v5 = 0x444150495FLL;
    v6 = 0xE500000000000000;
  }

  else
  {
    if (Type != 1)
    {
      goto LABEL_7;
    }

    v5 = 0x454E4F4850495FLL;
    v6 = 0xE700000000000000;
  }

  String.append(_:)(*&v5);
LABEL_7:
  v7 = sub_100003354();
  if (!v7)
  {
    return a1;
  }

  v8 = v7;
  v9 = String._bridgeToObjectiveC()();
  v10 = String._bridgeToObjectiveC()();
  v11 = [v8 localizedStringForKey:v9 value:0 table:v10];

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v12;
}

uint64_t sub_100003544(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000035EC;

  return sub_100005004(a2);
}

uint64_t sub_1000035EC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100003870(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  v10 = a4;
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_100003954;

  return sub_100005004(v9);
}

uint64_t sub_100003954()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v7 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_100003AC4(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100003B6C;

  return sub_1000052C0(a2);
}

uint64_t sub_100003B6C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_100003DF8(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  v10 = a4;
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_100003EDC;

  return sub_1000052C0(v9);
}

uint64_t sub_100003EDC(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v9 = *v1;

  v3[2](v3, a1);
  _Block_release(v3);
  v7 = *(v9 + 8);

  return v7();
}

id VoiceBankingXPCServer.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, "dealloc");
}

BOOL sub_1000041A4(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1000041D4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_100004200@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_100004300@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100004FCC(a1);

  *a2 = v3;
  return result;
}

void *sub_10000434C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100004368(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1000060AC;

  return v6();
}

uint64_t sub_100004450(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1000060AC;

  return v7();
}

uint64_t sub_100004538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100001EE8(&qword_100035098, &qword_100027BC0);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_100005E54(a3, v23 - v10, &qword_100035098, &qword_100027BC0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100005EBC(v11, &qword_100035098, &qword_100027BC0);
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

    sub_100005EBC(a3, &qword_100035098, &qword_100027BC0);

    return v21;
  }

LABEL_8:
  sub_100005EBC(a3, &qword_100035098, &qword_100027BC0);
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

uint64_t sub_100004834(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000492C;

  return v6(a1);
}

uint64_t sub_10000492C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_100004A24(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100004AF0(v11, 0, 0, 1, a1, a2);
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
    sub_100005D8C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100005D40(v11);
  return v7;
}

unint64_t sub_100004AF0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100004BFC(a5, a6);
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

char *sub_100004BFC(uint64_t a1, unint64_t a2)
{
  v3 = sub_100004C48(a1, a2);
  sub_100004D78(&off_100031020);
  return v3;
}

char *sub_100004C48(uint64_t a1, unint64_t a2)
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

  v6 = sub_100004E64(v5, 0);
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
        v7 = sub_100004E64(v10, 0);
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

uint64_t sub_100004D78(uint64_t result)
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

  result = sub_100004ED8(result, v11, 1, v3);
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

void *sub_100004E64(uint64_t a1, uint64_t a2)
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

  sub_100001EE8(&unk_1000350A0, &unk_100027C30);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100004ED8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001EE8(&unk_1000350A0, &unk_100027C30);
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

uint64_t sub_100004FCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_100005004(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_1000050C4, 0, 0);
}

uint64_t sub_1000050C4(uint64_t a1)
{
  v21 = v1;
  v2 = v1[2];
  static TTSVBLog.daemon.getter();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[3];
  if (v6)
  {
    v10 = v1[2];
    v19 = v1[5];
    v11 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_100004A24(0xD000000000000025, 0x800000010002A910, &v20);
    *(v11 + 12) = 2080;
    v12 = [v10 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_100004A24(v13, v15, &v20);

    *(v11 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s. response=%s", v11, 0x16u);
    swift_arrayDestroy();

    (*(v7 + 8))(v19, v9);
  }

  else
  {

    (*(v7 + 8))(v8, v9);
  }

  v17 = v1[1];

  return v17();
}

uint64_t sub_1000052C0(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_100005380, 0, 0);
}

uint64_t sub_100005380(uint64_t a1)
{
  v21 = v1;
  v2 = v1[2];
  static TTSVBLog.daemon.getter();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[3];
  if (v6)
  {
    v10 = v1[2];
    v19 = v1[5];
    v11 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_100004A24(0xD000000000000026, 0x800000010002A8E0, &v20);
    *(v11 + 12) = 2080;
    v12 = [v10 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_100004A24(v13, v15, &v20);

    *(v11 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s. notification=%s", v11, 0x16u);
    swift_arrayDestroy();

    (*(v7 + 8))(v19, v9);
  }

  else
  {

    (*(v7 + 8))(v8, v9);
  }

  v17 = v1[1];

  return v17(26);
}

uint64_t sub_100005580(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static TTSVBLog.daemon.getter();
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_100004A24(0xD00000000000002ALL, 0x800000010002A8B0, &v17);
    *(v9 + 12) = 2080;
    if (a1)
    {
      v10 = [v6 description];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;
    }

    else
    {
      v13 = 0xE600000000000000;
      v11 = 0x3E656E6F6E3CLL;
    }

    v14 = sub_100004A24(v11, v13, &v17);

    *(v9 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s. notification=%s", v9, 0x16u);
    swift_arrayDestroy();
  }

  return (*(v3 + 8))(v5, v2);
}

void sub_1000057AC(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_1000057F4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000060AC;

  return sub_100003DF8(v2, v3, v5, v4);
}

uint64_t sub_1000058B8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000060AC;

  return sub_100004368(v2, v3, v4);
}

uint64_t sub_100005978(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000060AC;

  return sub_100004450(a1, v4, v5, v6);
}

uint64_t sub_100005A44()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100005A7C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000060AC;

  return sub_100004834(a1, v4);
}

uint64_t sub_100005B34(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000035EC;

  return sub_100004834(a1, v4);
}

uint64_t sub_100005BF0()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100005C40()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000035EC;

  return sub_100003870(v2, v3, v5, v4);
}

uint64_t sub_100005D00()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100005D40(void *a1)
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

uint64_t sub_100005D8C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_100005DEC(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_100005DFC()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100005E54(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001EE8(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100005EBC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001EE8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_100005F30(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_100005FE4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UNNotificationPresentationOptions(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t VoiceBankingXPCServer.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC13voicebankingd21VoiceBankingXPCServer_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*VoiceBankingXPCServer.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC13voicebankingd21VoiceBankingXPCServer_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_100006224;
}

void sub_100006224(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id VoiceBankingXPCServer.init()(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC13voicebankingd21VoiceBankingXPCServer_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for TTSVBService();
  static TTSVBService.serviceName.getter();
  v5 = objc_allocWithZone(NSXPCListener);
  v6 = String._bridgeToObjectiveC()();

  v7 = [v5 initWithMachServiceName:v6];

  *&v3[OBJC_IVAR____TtC13voicebankingd21VoiceBankingXPCServer_listener] = v7;
  v9.receiver = v3;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "init");
}

Swift::Void __swiftcall VoiceBankingXPCServer.start()()
{
  v1 = OBJC_IVAR____TtC13voicebankingd21VoiceBankingXPCServer_listener;
  [*(v0 + OBJC_IVAR____TtC13voicebankingd21VoiceBankingXPCServer_listener) setDelegate:v0];
  v2 = *(v0 + v1);

  [v2 resume];
}

uint64_t VoiceBankingXPCServer.createVoice(named:localeID:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = v6 + OBJC_IVAR____TtC13voicebankingd21VoiceBankingXPCServer_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = *(v13 + 8);
    ObjectType = swift_getObjectType();
    v17 = swift_allocObject();
    v17[2] = a1;
    v17[3] = a2;
    v17[4] = a3;
    v17[5] = a4;
    v17[6] = a5;
    v17[7] = a6;
    v18 = *(v15 + 8);

    v18(sub_10000DE28, v17, ObjectType, v15);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10000662C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a6;
  *(v9 + 24) = a7;

  TTSVBVoiceBankingManager.createVoice(named:localeID:completion:)();
}

uint64_t VoiceBankingXPCServer.importTrainingData(fromDirectory:creatingVoiceName:localeID:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v31 = a4;
  v32 = a6;
  v30 = a2;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v7 + OBJC_IVAR____TtC13voicebankingd21VoiceBankingXPCServer_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v27 = *(v16 + 8);
    v29 = result;
    ObjectType = swift_getObjectType();
    (*(v13 + 16))(&v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v12);
    v18 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v19 = (v14 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
    v20 = swift_allocObject();
    *(v20 + 16) = v30;
    *(v20 + 24) = a3;
    (*(v13 + 32))(v20 + v18, v15, v12);
    v21 = (v20 + v19);
    v22 = v32;
    *v21 = v31;
    v21[1] = a5;
    v23 = (v20 + ((v19 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v23 = v22;
    v23[1] = a7;
    v24 = v27;
    v25 = *(v27 + 8);

    v25(sub_10000DF24, v20, ObjectType, v24);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100006A88(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a7;
  v36 = a8;
  v38 = a2;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Logger();
  v33 = *(v16 - 8);
  v34 = v16;
  __chkstk_darwin(v16);
  v18 = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  static TTSVBLog.daemon.getter();
  v19 = *(v13 + 16);
  v37 = a4;
  v19(v15, a4, v12);

  v20 = a3;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v32[4] = a6;
    v24 = v23;
    v25 = swift_slowAlloc();
    v32[3] = a1;
    v32[1] = v25;
    v39 = v25;
    *v24 = 136315394;
    *(v24 + 4) = sub_100004A24(v38, v20, &v39);
    *(v24 + 12) = 2080;
    v32[2] = v20;
    v26 = URL.path.getter();
    v28 = v27;
    (*(v13 + 8))(v15, v12);
    v29 = sub_100004A24(v26, v28, &v39);

    *(v24 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v21, v22, "Will import training data creating voice: '%s'. Data=%s", v24, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v13 + 8))(v15, v12);
  }

  (*(v33 + 8))(v18, v34);
  v30 = swift_allocObject();
  *(v30 + 16) = v35;
  *(v30 + 24) = v36;

  TTSVBVoiceBankingManager.importTrainingData(fromDirectory:creatingVoiceName:localeID:completion:)();
}

uint64_t sub_100006DEC(_DWORD *a1, void (*a2)(uint64_t, void *), uint64_t a3, const char *a4, const char *a5)
{
  v57 = a4;
  v58 = a5;
  v66 = a3;
  v67 = a2;
  v60 = a1;
  v68 = type metadata accessor for TTSVBError();
  v62 = *(v68 - 1);
  v5 = __chkstk_darwin(v68);
  v61 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v56 - v7;
  v9 = sub_100001EE8(&unk_1000351E0, &unk_100027E90);
  __chkstk_darwin(v9 - 8);
  v65 = &v56 - v10;
  v11 = type metadata accessor for Logger();
  v63 = *(v11 - 8);
  v64 = v11;
  v12 = __chkstk_darwin(v11);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v59 = &v56 - v15;
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v56 - v21;
  v23 = sub_100001EE8(&qword_100035270, &unk_100027EF0);
  __chkstk_darwin(v23);
  v25 = &v56 - v24;
  sub_100005E54(v60, &v56 - v24, &qword_100035270, &unk_100027EF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v60 = v16;
    v26 = v62;
    v27 = v25;
    v28 = v68;
    (v62[4])(v8, v27, v68);
    static TTSVBLog.daemon.getter();
    v29 = v26[2];
    v29(v61, v8, v28);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v59 = v8;
      v33 = v32;
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      sub_10000F3AC(&qword_100035500, &type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
      swift_allocError();
      v35 = v61;
      v29(v36, v61, v68);
      v37 = _swift_stdlib_bridgeErrorToNSError();
      v38 = v62[1];
      v38(v35, v68);
      *(v33 + 4) = v37;
      *v34 = v37;
      v28 = v68;
      _os_log_impl(&_mh_execute_header, v30, v31, v58, v33, 0xCu);
      sub_100005EBC(v34, &qword_1000350B0, &qword_100027C40);

      v8 = v59;
    }

    else
    {

      v38 = v62[1];
      v38(v61, v28);
    }

    (*(v63 + 8))(v14, v64);
    v51 = v65;
    (*(v17 + 56))(v65, 1, 1, v60);
    v52 = TTSVBError.boxed.getter();
    v67(v51, v52);

    sub_100005EBC(v51, &unk_1000351E0, &unk_100027E90);
    return (v38)(v8, v28);
  }

  else
  {
    (*(v17 + 32))(v22, v25, v16);
    v39 = v59;
    static TTSVBLog.daemon.getter();
    v68 = *(v17 + 16);
    (v68)(v20, v22, v16);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    v42 = v16;
    if (os_log_type_enabled(v40, v41))
    {
      v43 = swift_slowAlloc();
      v60 = v43;
      v62 = swift_slowAlloc();
      v69 = v62;
      *v43 = 136315138;
      LODWORD(v61) = v41;
      v44 = UUID.uuidString.getter();
      v45 = v16;
      v47 = v46;
      v48 = *(v17 + 8);
      v48(v20, v45);
      v49 = sub_100004A24(v44, v47, &v69);
      v42 = v45;

      v50 = v60;
      *(v60 + 1) = v49;
      _os_log_impl(&_mh_execute_header, v40, v61, v57, v50, 0xCu);
      sub_100005D40(v62);

      (*(v63 + 8))(v59, v64);
    }

    else
    {

      v48 = *(v17 + 8);
      v48(v20, v42);
      (*(v63 + 8))(v39, v64);
    }

    v54 = v17;
    v55 = v65;
    (v68)(v65, v22, v42);
    (*(v54 + 56))(v55, 0, 1, v42);
    v67(v55, 0);
    sub_100005EBC(v55, &unk_1000351E0, &unk_100027E90);
    return (v48)(v22, v42);
  }
}

uint64_t VoiceBankingXPCServer.importModel(fromDirectory:overrideLocaleID:addingToVoice:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a5;
  v35 = a6;
  v32 = a4;
  v33 = a1;
  v36 = a2;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v6 + OBJC_IVAR____TtC13voicebankingd21VoiceBankingXPCServer_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = *(v15 + 8);
    v31 = result;
    ObjectType = swift_getObjectType();
    v17 = v11;
    (*(v12 + 16))(v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v32, v11);
    v18 = *(v9 + 16);
    v28 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18(v28, v33, v8);
    v19 = *(v12 + 80);
    v27[1] = a3;
    v20 = (v19 + 32) & ~v19;
    v21 = (v13 + *(v9 + 80) + v20) & ~*(v9 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = v36;
    *(v22 + 24) = a3;
    (*(v12 + 32))(v22 + v20, v14, v17);
    (*(v9 + 32))(v22 + v21, v28, v8);
    v23 = (v22 + ((v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
    v24 = v35;
    *v23 = v34;
    v23[1] = v24;
    v25 = v29;
    v26 = *(v29 + 8);

    v26(sub_10000E140, v22, ObjectType, v25);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000079AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v51 = a6;
  v52 = a7;
  v54 = a1;
  v55 = a2;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v43[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v43[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = type metadata accessor for Logger();
  v49 = *(v18 - 8);
  v50 = v18;
  __chkstk_darwin(v18);
  v20 = &v43[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static TTSVBLog.daemon.getter();
  (*(v15 + 16))(v17, a4, v14);
  v21 = *(v11 + 16);
  v53 = a5;
  v48 = v10;
  v21(v13, a5, v10);

  v22 = a3;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v47 = a4;
    v26 = v25;
    v46 = swift_slowAlloc();
    v56 = v46;
    *v26 = 136315650;
    v27 = v22 == 0;
    v45 = v23;
    v28 = v22;
    if (v22)
    {
      v29 = v55;
    }

    else
    {
      v29 = 0x3E6C696E3CLL;
    }

    v44 = v24;
    if (v27)
    {
      v30 = 0xE500000000000000;
    }

    else
    {
      v30 = v28;
    }

    v31 = sub_100004A24(v29, v30, &v56);

    *(v26 + 4) = v31;
    *(v26 + 12) = 2080;
    v32 = UUID.uuidString.getter();
    v34 = v33;
    (*(v15 + 8))(v17, v14);
    v35 = sub_100004A24(v32, v34, &v56);

    *(v26 + 14) = v35;
    *(v26 + 22) = 2080;
    v36 = URL.path.getter();
    v38 = v37;
    (*(v11 + 8))(v13, v48);
    v39 = sub_100004A24(v36, v38, &v56);

    *(v26 + 24) = v39;
    v40 = v45;
    _os_log_impl(&_mh_execute_header, v45, v44, "Will import model. overrideLocaleID=%s Adding to voice='%s' Data=%s", v26, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v11 + 8))(v13, v48);
    (*(v15 + 8))(v17, v14);
  }

  (*(v49 + 8))(v20, v50);
  v41 = swift_allocObject();
  *(v41 + 16) = v51;
  *(v41 + 24) = v52;

  TTSVBVoiceBankingManager.importModel(fromDirectory:overrideLocaleID:addingToVoice:completion:)();
}

uint64_t VoiceBankingXPCServer.exportTrainingData(voiceID:shouldCompressResult:includeEntireScript:reply:)(uint64_t a1, int a2, char a3, uint64_t a4, uint64_t a5)
{
  v27 = a2;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v5 + OBJC_IVAR____TtC13voicebankingd21VoiceBankingXPCServer_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v25 = *(v14 + 8);
    ObjectType = swift_getObjectType();
    (*(v11 + 16))(&v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
    v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v17 = v16 + v12;
    v24 = a4;
    v18 = swift_allocObject();
    (*(v11 + 32))(v18 + v16, v13, v10);
    v19 = (v18 + v17);
    *v19 = v27 & 1;
    v19[1] = a3 & 1;
    v20 = (v18 + ((v17 + 9) & 0xFFFFFFFFFFFFFFF8));
    v21 = v25;
    *v20 = v24;
    v20[1] = a5;
    v22 = *(v21 + 8);

    v22(sub_10000E2E8, v18, ObjectType, v21);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10000824C(uint64_t a1, void (*a2)(uint64_t, void *), uint64_t a3)
{
  v60 = a3;
  v61 = a2;
  v54 = a1;
  v62 = type metadata accessor for TTSVBError();
  v56 = *(v62 - 1);
  v3 = __chkstk_darwin(v62);
  v55 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v52 - v5;
  v7 = sub_100001EE8(&qword_1000352B0, &qword_100027AF0);
  __chkstk_darwin(v7 - 8);
  v59 = &v52 - v8;
  v9 = type metadata accessor for Logger();
  v57 = *(v9 - 8);
  v58 = v9;
  v10 = __chkstk_darwin(v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v53 = (&v52 - v13);
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v52 - v19;
  v21 = sub_100001EE8(&qword_100035268, &qword_100027EE8);
  __chkstk_darwin(v21);
  v23 = &v52 - v22;
  sub_100005E54(v54, &v52 - v22, &qword_100035268, &qword_100027EE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v53 = v15;
    v54 = v14;
    v24 = v56;
    v25 = v23;
    v26 = v62;
    (*(v56 + 4))(v6, v25, v62);
    static TTSVBLog.daemon.getter();
    v27 = *(v24 + 2);
    v27(v55, v6, v26);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    v30 = v6;
    if (os_log_type_enabled(v28, v29))
    {
      v31 = swift_slowAlloc();
      v32 = v6;
      v33 = swift_slowAlloc();
      *v31 = 138412290;
      sub_10000F3AC(&qword_100035500, &type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
      swift_allocError();
      v34 = v55;
      v27(v35, v55, v62);
      v36 = _swift_stdlib_bridgeErrorToNSError();
      v37 = *(v56 + 1);
      v37(v34, v62);
      *(v31 + 4) = v36;
      *v33 = v36;
      v26 = v62;
      _os_log_impl(&_mh_execute_header, v28, v29, "Error exporting training data: %@", v31, 0xCu);
      sub_100005EBC(v33, &qword_1000350B0, &qword_100027C40);
      v30 = v32;
    }

    else
    {

      v37 = *(v56 + 1);
      v37(v55, v26);
    }

    (*(v57 + 8))(v12, v58);
    v48 = v59;
    v53[7](v59, 1, 1, v54);
    v49 = TTSVBError.boxed.getter();
    v61(v48, v49);

    sub_100005EBC(v48, &qword_1000352B0, &qword_100027AF0);
    return (v37)(v30, v26);
  }

  else
  {
    (v15[4])(v20, v23, v14);
    v38 = v53;
    static TTSVBLog.daemon.getter();
    v39 = v15[2];
    (v39)(v18, v20, v14);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v52 = v42;
      v55 = swift_slowAlloc();
      v63 = v55;
      *v42 = 136315138;
      LODWORD(v54) = v41;
      v43 = URL.path.getter();
      v56 = v39;
      v45 = v44;
      v62 = v15[1];
      (v62)(v18, v14);
      v46 = sub_100004A24(v43, v45, &v63);
      v39 = v56;

      v47 = v52;
      *(v52 + 1) = v46;
      _os_log_impl(&_mh_execute_header, v40, v54, "Succesfully exported training data to: %s", v47, 0xCu);
      sub_100005D40(v55);
    }

    else
    {

      v62 = v15[1];
      (v62)(v18, v14);
    }

    (*(v57 + 8))(v38, v58);
    v51 = v59;
    (v39)(v59, v20, v14);
    v15[7](v51, 0, 1, v14);
    v61(v51, 0);
    sub_100005EBC(v51, &qword_1000352B0, &qword_100027AF0);
    return (v62)(v20, v14);
  }
}

void sub_100008B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v14 = sub_100001EE8(a4, a5);
  __chkstk_darwin(v14 - 8);
  v16 = &v20 - v15;
  sub_100005E54(a1, &v20 - v15, a4, a5);
  v17 = a6(0);
  v18 = *(v17 - 8);
  v19 = 0;
  if ((*(v18 + 48))(v16, 1, v17) != 1)
  {
    v19 = a7();
    (*(v18 + 8))(v16, v17);
  }

  (*(a3 + 16))(a3, v19, a2);
}

uint64_t sub_100008D00(void *a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, void (*a7)(char *, uint64_t, uint64_t))
{
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  v17 = a1;
  a7(v14, a6, v16);

  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_100008F70(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static TTSVBLog.daemon.getter();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v19 = a1;
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Will refresh models before fetching/returning", v14, 2u);
    a1 = v19;
  }

  (*(v9 + 8))(v11, v8);
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v16 = a1;

  TTSVBVoiceBankingManager.refreshModels(completion:)();
}

uint64_t sub_100009134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t))
{
  v45 = a6;
  v46 = a7;
  v41 = a5;
  v42 = a3;
  v43 = a4;
  v44 = a2;
  v8 = type metadata accessor for Logger();
  v39 = *(v8 - 8);
  v40 = v8;
  v9 = __chkstk_darwin(v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v38 = &v37 - v12;
  v13 = type metadata accessor for TTSVBError();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v37 - v18;
  v20 = sub_100001EE8(&qword_100035230, &qword_100027EE0);
  __chkstk_darwin(v20);
  v22 = &v37 - v21;
  sub_100005E54(a1, &v37 - v21, &qword_100035230, &qword_100027EE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v14 + 32))(v19, v22, v13);
    static TTSVBLog.daemon.getter();
    v23 = *(v14 + 16);
    v23(v17, v19, v13);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v26 = 138412290;
      sub_10000F3AC(&qword_100035500, &type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
      swift_allocError();
      v23(v27, v17, v13);
      v28 = _swift_stdlib_bridgeErrorToNSError();
      v29 = *(v14 + 8);
      v29(v17, v13);
      *(v26 + 4) = v28;
      v30 = v37;
      *v37 = v28;
      _os_log_impl(&_mh_execute_header, v24, v25, "Failed to refresh models when asking for voice models: %@", v26, 0xCu);
      sub_100005EBC(v30, &qword_1000350B0, &qword_100027C40);

      (*(v39 + 8))(v38, v40);
      v29(v19, v13);
    }

    else
    {

      v34 = *(v14 + 8);
      v34(v17, v13);
      (*(v39 + 8))(v38, v40);
      v34(v19, v13);
    }
  }

  else
  {
    sub_100005EBC(v22, &qword_100035230, &qword_100027EE0);
    static TTSVBLog.daemon.getter();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Succesfully refreshed models. will fetch and return models now", v33, 2u);
    }

    (*(v39 + 8))(v11, v40);
  }

  v35 = swift_allocObject();
  *(v35 + 16) = v42;
  *(v35 + 24) = v43;

  v46(v45, v35);
}

uint64_t sub_100009688(uint64_t a1, void (*a2)(uint64_t, unint64_t, void *))
{
  v4 = type metadata accessor for TTSVBError();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100001EE8(&qword_100035218, &qword_100027ED8);
  __chkstk_darwin(v8);
  v10 = &v16 - v9;
  sub_100005E54(a1, &v16 - v9, &qword_100035218, &qword_100027ED8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v7, v10, v4);
    v11 = TTSVBError.boxed.getter();
    a2(0, 0xF000000000000000, v11);

    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    type metadata accessor for TTSVBPersonalVoiceSystemRepresentation();
    sub_10000F3AC(&qword_100035220, &type metadata accessor for TTSVBPersonalVoiceSystemRepresentation, &protocol conformance descriptor for TTSVBPersonalVoiceSystemRepresentation);
    sub_10000F3AC(&qword_100035228, &type metadata accessor for TTSVBPersonalVoiceSystemRepresentation, &protocol conformance descriptor for TTSVBPersonalVoiceSystemRepresentation);
    v13 = Array<A>.toData()();
    v15 = v14;

    a2(v13, v15, 0);
    return sub_10000F3F4(v13, v15);
  }
}

void sub_100009928(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v6 = isa;
  (*(a4 + 16))(a4);
}

uint64_t sub_1000099BC(uint64_t a1, void (*a2)(uint64_t, unint64_t, void *))
{
  v4 = type metadata accessor for TTSVBError();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100001EE8(&qword_100035200, &qword_100027ED0);
  __chkstk_darwin(v8);
  v10 = &v16 - v9;
  sub_100005E54(a1, &v16 - v9, &qword_100035200, &qword_100027ED0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v7, v10, v4);
    v11 = TTSVBError.boxed.getter();
    a2(0, 0xF000000000000000, v11);

    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    type metadata accessor for TTSVBVoiceSample();
    sub_10000F3AC(&qword_100035208, &type metadata accessor for TTSVBVoiceSample, &protocol conformance descriptor for TTSVBVoiceSample);
    sub_10000F3AC(&qword_100035210, &type metadata accessor for TTSVBVoiceSample, &protocol conformance descriptor for TTSVBVoiceSample);
    v13 = Array<A>.toData()();
    v15 = v14;

    a2(v13, v15, 0);
    return sub_10000F3F4(v13, v15);
  }
}

uint64_t VoiceBankingXPCServer.trainModel(voiceID:mode:startImmediately:skipValidation:overrideMinimumPhraseCount:useUserRecordingsForTraining:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9)
{
  v38 = a4;
  v39 = a7;
  v36 = a2;
  v37 = a6;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v9 + OBJC_IVAR____TtC13voicebankingd21VoiceBankingXPCServer_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v33 = a9;
    v34 = a8;
    v32 = *(v18 + 8);
    ObjectType = swift_getObjectType();
    (*(v15 + 16))(&v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v14);
    v20 = (*(v15 + 80) + 40) & ~*(v15 + 80);
    v21 = v20 + v16;
    v22 = a5;
    v23 = a3;
    v24 = (v20 + v16 + 10) & 0xFFFFFFFFFFFFFFF8;
    v25 = swift_allocObject();
    v26 = v37;
    *(v25 + 2) = v36;
    *(v25 + 3) = v23;
    *(v25 + 4) = v26;
    (*(v15 + 32))(&v25[v20], v17, v14);
    v27 = &v25[v21];
    *v27 = v38 & 1;
    v27[1] = v39 & 1;
    v27[2] = v22 & 1;
    v28 = &v25[v24];
    v29 = v33;
    *v28 = v34;
    v28[1] = v29;
    v30 = v32;
    v31 = *(v32 + 8);

    v31(sub_10000E7A8, v25, ObjectType, v30);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100009E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, char a7, int a8, uint64_t a9, uint64_t a10)
{
  v31 = a8;
  v32 = a6;
  v27 = a4;
  v28 = a5;
  v33 = a1;
  v29 = a9;
  v30 = a10;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = type metadata accessor for TTSVBVoiceBankingManager.TrainingDataSource();
  v26 = v14;
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = String._bridgeToObjectiveC()();
  v25[2] = TTSVBSiriTTSTrainerTaskModeForString();

  v19 = &enum case for TTSVBVoiceBankingManager.TrainingDataSource.userRecordings(_:);
  if ((a7 & 1) == 0)
  {
    v19 = &enum case for TTSVBVoiceBankingManager.TrainingDataSource.synthesizedSpeech(_:);
  }

  (*(v15 + 104))(v17, *v19, v14);
  v25[1] = v27 & ~(v27 >> 63);
  (*(v12 + 16))(v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v28, v11);
  v20 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v21 = swift_allocObject();
  (*(v12 + 32))(v21 + v20, v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  v22 = (v21 + ((v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  v23 = v30;
  *v22 = v29;
  v22[1] = v23;

  TTSVBVoiceBankingManager.train(voiceID:mode:startImmediately:trainingDataSource:validateTrainingSamples:overrideMinimumPhraseCount:completion:)();

  return (*(v15 + 8))(v17, v26);
}

uint64_t sub_10000A114(uint64_t a1, char *a2, void (*a3)(void), uint64_t a4)
{
  v59 = a4;
  v60 = a3;
  v53 = a2;
  v61 = type metadata accessor for TTSVBError();
  v56 = *(v61 - 8);
  v5 = __chkstk_darwin(v61);
  v54 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v52 - v7;
  v62 = type metadata accessor for UUID();
  v9 = *(v62 - 8);
  v10 = __chkstk_darwin(v62);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v52 - v13;
  v15 = type metadata accessor for Logger();
  v57 = *(v15 - 8);
  v58 = v15;
  v16 = __chkstk_darwin(v15);
  v55 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v52 - v18;
  v20 = sub_100001EE8(&unk_1000351F0, &unk_1000280C0);
  __chkstk_darwin(v20);
  v22 = &v52 - v21;
  sub_100005E54(a1, &v52 - v21, &unk_1000351F0, &unk_1000280C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = v56;
    v24 = v22;
    v25 = v61;
    (*(v56 + 32))(v8, v24, v61);
    static TTSVBLog.daemon.getter();
    (*(v9 + 16))(v12, v53, v62);
    v26 = *(v23 + 16);
    v26(v54, v8, v25);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v53 = v8;
      v30 = v29;
      v52 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v63 = v31;
      *v30 = 136315394;
      v32 = UUID.uuidString.getter();
      v34 = v33;
      (*(v9 + 8))(v12, v62);
      v35 = sub_100004A24(v32, v34, &v63);

      *(v30 + 4) = v35;
      *(v30 + 12) = 2112;
      sub_10000F3AC(&qword_100035500, &type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
      v36 = v61;
      swift_allocError();
      v37 = v54;
      v26(v38, v54, v36);
      v39 = _swift_stdlib_bridgeErrorToNSError();
      v40 = *(v56 + 8);
      v40(v37, v36);
      *(v30 + 14) = v39;
      v41 = v52;
      *v52 = v39;
      _os_log_impl(&_mh_execute_header, v27, v28, "Error training new model for voice ID: %s. Error: %@", v30, 0x16u);
      sub_100005EBC(v41, &qword_1000350B0, &qword_100027C40);

      sub_100005D40(v31);

      v8 = v53;
    }

    else
    {

      v40 = *(v56 + 8);
      v40(v54, v61);
      (*(v9 + 8))(v12, v62);
    }

    (*(v57 + 8))(v55, v58);
    v50 = TTSVBError.boxed.getter();
    v60();

    return (v40)(v8, v61);
  }

  else
  {
    static TTSVBLog.daemon.getter();
    (*(v9 + 16))(v14, v53, v62);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v63 = v45;
      *v44 = 136315138;
      v46 = UUID.uuidString.getter();
      v48 = v47;
      (*(v9 + 8))(v14, v62);
      v49 = sub_100004A24(v46, v48, &v63);

      *(v44 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v42, v43, "Succesfully kicked off training model for voice ID: %s", v44, 0xCu);
      sub_100005D40(v45);
    }

    else
    {

      (*(v9 + 8))(v14, v62);
    }

    (*(v57 + 8))(v19, v58);
    (v60)(0);
    return sub_100005EBC(v22, &unk_1000351F0, &unk_1000280C0);
  }
}

uint64_t VoiceBankingXPCServer.cancelTrainingTask(taskID:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4 + OBJC_IVAR____TtC13voicebankingd21VoiceBankingXPCServer_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(v9 + 8);
    ObjectType = swift_getObjectType();
    v13 = swift_allocObject();
    v13[2] = a1;
    v13[3] = a2;
    v13[4] = a3;
    v13[5] = a4;
    v14 = *(v11 + 8);

    v14(sub_10000E8AC, v13, ObjectType, v11);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10000AAE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a4;
  v9[5] = a5;

  TTSVBVoiceBankingManager.cancelTrainingTask(taskID:completion:)();
}

uint64_t sub_10000AB90(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void), uint64_t a5)
{
  v43 = a5;
  v44 = a4;
  v39 = a2;
  v45 = type metadata accessor for TTSVBError();
  v7 = *(v45 - 8);
  v8 = __chkstk_darwin(v45);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Logger();
  v41 = *(v13 - 8);
  v42 = v13;
  v14 = __chkstk_darwin(v13);
  v40 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v37 - v16;
  v18 = sub_100001EE8(&unk_1000351F0, &unk_1000280C0);
  __chkstk_darwin(v18);
  v20 = &v37 - v19;
  sub_100005E54(a1, &v37 - v19, &unk_1000351F0, &unk_1000280C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = v45;
    (*(v7 + 32))(v12, v20, v45);
    static TTSVBLog.daemon.getter();
    v22 = *(v7 + 16);
    v38 = v12;
    v22(v10);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v46 = v37;
      *v25 = 136315394;
      *(v25 + 4) = sub_100004A24(v39, a3, &v46);
      *(v25 + 12) = 2112;
      sub_10000F3AC(&qword_100035500, &type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
      swift_allocError();
      (v22)(v27, v10, v45);
      v28 = _swift_stdlib_bridgeErrorToNSError();
      v29 = *(v7 + 8);
      v29(v10, v45);
      *(v25 + 14) = v28;
      *v26 = v28;
      v21 = v45;
      _os_log_impl(&_mh_execute_header, v23, v24, "Could not request cancelling of training task=%s. Error: %@", v25, 0x16u);
      sub_100005EBC(v26, &qword_1000350B0, &qword_100027C40);

      sub_100005D40(v37);
    }

    else
    {

      v29 = *(v7 + 8);
      v29(v10, v21);
    }

    (*(v41 + 8))(v40, v42);
    v35 = v38;
    v36 = TTSVBError.boxed.getter();
    v44();

    return (v29)(v35, v21);
  }

  else
  {
    static TTSVBLog.daemon.getter();

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v46 = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_100004A24(v39, a3, &v46);
      _os_log_impl(&_mh_execute_header, v30, v31, "Succesfully requested cancelling of training task: %s", v32, 0xCu);
      sub_100005D40(v33);
    }

    (*(v41 + 8))(v17, v42);
    (v44)(0);
    return sub_100005EBC(v20, &unk_1000351F0, &unk_1000280C0);
  }
}

Swift::Void __swiftcall VoiceBankingXPCServer.requestVoiceCacheRebuildIfNeeded()()
{
  v1 = v0 + OBJC_IVAR____TtC13voicebankingd21VoiceBankingXPCServer_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v2 + 24))(ObjectType, v2);
    swift_unknownObjectRelease();
  }
}

uint64_t VoiceBankingXPCServer.updateTCCCloudKitAccess(allowed:reply:)(char a1, uint64_t a2, uint64_t a3)
{
  v7 = v3 + OBJC_IVAR____TtC13voicebankingd21VoiceBankingXPCServer_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    v11 = swift_allocObject();
    *(v11 + 16) = a1 & 1;
    *(v11 + 24) = a2;
    *(v11 + 32) = a3;
    v12 = *(v9 + 16);

    v12(sub_10000E93C, v11, ObjectType, v9);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10000B4E4(uint64_t a1, char a2, void (*a3)(void))
{
  v4 = type metadata accessor for TTSVBError();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (dispatch thunk of TTSVBAccessManager.updateTCCCloudKitAccess(_:userInitiated:)())
  {
    return (a3)(0);
  }

  TTSVBError.init(_:_:_:)();
  v9 = TTSVBError.boxed.getter();
  a3();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10000B7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4 + OBJC_IVAR____TtC13voicebankingd21VoiceBankingXPCServer_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    *(v12 + 24) = a2;
    v13 = *(v10 + 8);

    v13(a4, v12, ObjectType, v10);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10000B880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;

  a6(a5, v10);
}

void sub_10000B944(char *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = _Block_copy(aBlock);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = &a1[OBJC_IVAR____TtC13voicebankingd21VoiceBankingXPCServer_delegate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = *(v12 + 1);
    ObjectType = swift_getObjectType();
    v15 = swift_allocObject();
    *(v15 + 16) = a6;
    *(v15 + 24) = v11;
    v16 = *(v13 + 8);
    v17 = a1;

    v16(a7, v15, ObjectType, v13);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t VoiceBankingXPCServer.createSupplementaryModelForVoice(voiceID:sourceVersion:targetVersion:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a4;
  v36 = a6;
  v34 = a2;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v7 + OBJC_IVAR____TtC13voicebankingd21VoiceBankingXPCServer_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v31 = *(v16 + 8);
    v33 = result;
    ObjectType = swift_getObjectType();
    (*(v13 + 16))(&v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v12);
    v18 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v19 = (v14 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
    v20 = a3;
    v21 = (v19 + 23) & 0xFFFFFFFFFFFFFFF8;
    v30 = a7;
    v22 = swift_allocObject();
    (*(v13 + 32))(v22 + v18, v15, v12);
    v23 = (v22 + v19);
    v24 = v35;
    *v23 = v34;
    v23[1] = v20;
    v25 = (v22 + v21);
    *v25 = v24;
    v25[1] = a5;
    v26 = (v22 + ((v21 + 23) & 0xFFFFFFFFFFFFFFF8));
    v27 = v30;
    v28 = v31;
    *v26 = v36;
    v26[1] = v27;
    v29 = *(v28 + 8);

    v29(sub_10000EA64, v22, ObjectType, v28);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10000BC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20[0] = a2;
  v20[1] = a1;
  v10 = type metadata accessor for TTSVBVoiceModelVersion();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v20 - v15;

  TTSVBVoiceModelVersion.init(rawValue:)();

  TTSVBVoiceModelVersion.init(rawValue:)();
  v17 = swift_allocObject();
  *(v17 + 16) = a7;
  *(v17 + 24) = a8;

  TTSVBVoiceBankingManager.createSupplementaryModelForVoice(voiceID:sourceVersion:targetVersion:startTrainingImmediately:completion:)();

  v18 = *(v11 + 8);
  v18(v14, v10);
  return (v18)(v16, v10);
}

uint64_t sub_10000BE38(uint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)(void), const char *a5)
{
  v41 = a4;
  v42 = a5;
  v47 = a3;
  v44 = type metadata accessor for TTSVBError();
  v7 = *(v44 - 8);
  v8 = __chkstk_darwin(v44);
  v43 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v38 - v10;
  v12 = type metadata accessor for Logger();
  v45 = *(v12 - 8);
  v46 = v12;
  v13 = __chkstk_darwin(v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v38 - v16;
  v18 = sub_100001EE8(&unk_1000351F0, &unk_1000280C0);
  __chkstk_darwin(v18);
  v20 = &v38 - v19;
  sub_100005E54(a1, &v38 - v19, &unk_1000351F0, &unk_1000280C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v41 = a2;
    v21 = v44;
    (*(v7 + 32))(v11, v20, v44);
    static TTSVBLog.daemon.getter();
    v22 = *(v7 + 16);
    v23 = v43;
    v22(v43, v11, v21);
    v40 = v15;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    v26 = v11;
    if (os_log_type_enabled(v24, v25))
    {
      v27 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v27 = 138412290;
      sub_10000F3AC(&qword_100035500, &type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
      swift_allocError();
      v39 = v11;
      v22(v28, v23, v21);
      v29 = _swift_stdlib_bridgeErrorToNSError();
      v30 = *(v7 + 8);
      v30(v23, v21);
      *(v27 + 4) = v29;
      v31 = v38;
      *v38 = v29;
      v26 = v39;
      _os_log_impl(&_mh_execute_header, v24, v25, v42, v27, 0xCu);
      sub_100005EBC(v31, &qword_1000350B0, &qword_100027C40);
    }

    else
    {

      v30 = *(v7 + 8);
      v30(v23, v21);
    }

    (*(v45 + 8))(v40, v46);
    v37 = TTSVBError.boxed.getter();
    v41();

    return (v30)(v26, v21);
  }

  else
  {
    v32 = a2;
    static TTSVBLog.daemon.getter();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, v41, v35, 2u);
    }

    (*(v45 + 8))(v17, v46);
    (v32)(0);
    return sub_100005EBC(v20, &unk_1000351F0, &unk_1000280C0);
  }
}

uint64_t sub_10000C4BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = v5 + OBJC_IVAR____TtC13voicebankingd21VoiceBankingXPCServer_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = *(v12 + 8);
    ObjectType = swift_getObjectType();
    (*(v10 + 16))(&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
    v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v16 = swift_allocObject();
    (*(v10 + 32))(v16 + v15, &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
    v17 = (v16 + ((v11 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v17 = v21;
    v17[1] = a3;
    v18 = *(v14 + 8);

    v18(a5, v16, ObjectType, v14);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10000C678(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = sub_100001EE8(&qword_100035098, &qword_100027BC0);
  __chkstk_darwin(v11 - 8);
  v13 = &v20 - v12;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v9 + 16))(&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v8);
  v15 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  *(v16 + 4) = a1;
  (*(v9 + 32))(&v16[v15], &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v17 = &v16[(v10 + v15 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v17 = a3;
  *(v17 + 1) = a4;
  v18 = a1;

  sub_10000D160(0, 0, v13, &unk_100027EA8, v16);
}

uint64_t sub_10000C880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v7[2] = a5;
  v9 = type metadata accessor for TTSVBError.Problem();
  v7[5] = v9;
  v7[6] = *(v9 - 8);
  v7[7] = swift_task_alloc();
  v10 = type metadata accessor for TTSVBError();
  v7[8] = v10;
  v7[9] = *(v10 - 8);
  v7[10] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v7[11] = v11;
  v7[12] = *(v11 - 8);
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  v7[15] = v12;
  v7[16] = *(v12 - 8);
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();
  v13 = swift_task_alloc();
  v7[19] = v13;
  *v13 = v7;
  v13[1] = sub_10000CAB4;

  return TTSVBVoiceBankingManager.synthesizeAudioForTraining(voiceID:)(a5);
}

uint64_t sub_10000CAB4()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_10000CE04;
  }

  else
  {
    v2 = sub_10000CBC8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000CBC8(uint64_t a1)
{
  v27 = v1;
  v2 = *(v1 + 112);
  v3 = *(v1 + 88);
  v4 = *(v1 + 96);
  v5 = *(v1 + 16);
  static TTSVBLog.daemon.getter();
  (*(v4 + 16))(v2, v5, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v1 + 144);
  v11 = *(v1 + 120);
  v10 = *(v1 + 128);
  v12 = *(v1 + 112);
  v14 = *(v1 + 88);
  v13 = *(v1 + 96);
  if (v8)
  {
    v25 = *(v1 + 120);
    v15 = swift_slowAlloc();
    v23 = v7;
    v16 = swift_slowAlloc();
    v26 = v16;
    *v15 = 136315138;
    v17 = UUID.uuidString.getter();
    v24 = v9;
    v19 = v18;
    (*(v13 + 8))(v12, v14);
    v20 = sub_100004A24(v17, v19, &v26);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v6, v23, "Did synthesize audio samples for voice: %s.", v15, 0xCu);
    sub_100005D40(v16);

    (*(v10 + 8))(v24, v25);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
    (*(v10 + 8))(v9, v11);
  }

  (*(v1 + 24))(0);

  v21 = *(v1 + 8);

  return v21();
}

uint64_t sub_10000CE04(uint64_t a1)
{
  v39 = v1;
  v3 = v1[12];
  v2 = v1[13];
  v4 = v1[11];
  v5 = v1[2];
  static TTSVBLog.daemon.getter();
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v35 = v1[16];
    v36 = v1[15];
    v37 = v1[17];
    v9 = v1[12];
    v8 = v1[13];
    v34 = v1[11];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v38 = v12;
    *v10 = 136315394;
    v13 = UUID.uuidString.getter();
    v15 = v14;
    (*(v9 + 8))(v8, v34);
    v16 = sub_100004A24(v13, v15, &v38);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v17;
    *v11 = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Could not synthesize audio samples for voice: %s. Error: %@", v10, 0x16u);
    sub_100005EBC(v11, &qword_1000350B0, &qword_100027C40);

    sub_100005D40(v12);

    (*(v35 + 8))(v37, v36);
  }

  else
  {
    v19 = v1[16];
    v18 = v1[17];
    v20 = v1[15];
    v22 = v1[12];
    v21 = v1[13];
    v23 = v1[11];

    (*(v22 + 8))(v21, v23);
    (*(v19 + 8))(v18, v20);
  }

  v25 = v1[9];
  v24 = v1[10];
  v27 = v1[7];
  v26 = v1[8];
  v28 = v1[5];
  v29 = v1[6];
  v30 = v1[3];
  (*(v29 + 104))(v27, enum case for TTSVBError.Problem.unspecified(_:), v28);
  static TTSVBError.map(_:_:)();
  (*(v29 + 8))(v27, v28);
  v31 = TTSVBError.boxed.getter();
  (*(v25 + 8))(v24, v26);
  v30(v31);

  v32 = v1[1];

  return v32();
}

uint64_t sub_10000D160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100001EE8(&qword_100035098, &qword_100027BC0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100005E54(a3, v25 - v10, &qword_100035098, &qword_100027BC0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100005EBC(v11, &qword_100035098, &qword_100027BC0);
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

      sub_100005EBC(a3, &qword_100035098, &qword_100027BC0);

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

  sub_100005EBC(a3, &qword_100035098, &qword_100027BC0);
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

Swift::Void __swiftcall VoiceBankingXPCServer.sendMockUserNotification()()
{
  v1 = v0 + OBJC_IVAR____TtC13voicebankingd21VoiceBankingXPCServer_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(sub_10000D52C, 0, ObjectType, v2);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_10000D52C()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTSVBVoiceBankingManager.sendMockUserNotification()();
  static TTSVBLog.daemon.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Did send dummy notification.", v6, 2u);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10000D774(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;

      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

BOOL sub_10000D824(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
    }
  }

  return result;
}

uint64_t sub_10000D898(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static TTSVBLog.daemon.getter();
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138543362;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v9, v10, "Incoming XPC Connection: %{public}@", v11, 0xCu);
    sub_100005EBC(v12, &qword_1000350B0, &qword_100027C40);
  }

  (*(v5 + 8))(v7, v4);
  type metadata accessor for TTSVBService();
  static TTSVBService.serviceName.getter();
  v14 = String._bridgeToObjectiveC()();

  v15 = [v8 valueForEntitlement:v14];

  if (v15)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
  }

  v39 = v37;
  v40 = v38;
  if (*(&v38 + 1))
  {
    sub_10000F9B4(0, &qword_100035290, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v16 = v35;
      v17 = [v35 BOOLValue];

      if (v17)
      {
        goto LABEL_29;
      }
    }
  }

  else
  {
    sub_100005EBC(&v39, &qword_100035278, &qword_100027F70);
  }

  v18 = String._bridgeToObjectiveC()();
  v19 = [v8 valueForEntitlement:v18];

  if (v19)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
  }

  v39 = v37;
  v40 = v38;
  if (*(&v38 + 1))
  {
    v20 = swift_dynamicCast();
    if (v20)
    {
      v21 = v35;
    }

    else
    {
      v21 = 0;
    }

    if (v20)
    {
      v22 = v36;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v20 = sub_100005EBC(&v39, &qword_100035278, &qword_100027F70);
    v21 = 0;
    v22 = 0;
  }

  *&v39 = v21;
  *(&v39 + 1) = v22;
  __chkstk_darwin(v20);
  *(&v34 - 2) = &v39;
  v23 = sub_10000D774(sub_10000F8D8, (&v34 - 4), &off_100031298);
  sub_100001EE8(&qword_100035280, &qword_100027F00);
  swift_arrayDestroy();
  if (v23)
  {
  }

  else
  {
    v24 = static os_log_type_t.fault.getter();
    sub_100001EE8(&qword_100035288, &unk_100027F08);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_100027E30;
    v26 = [v8 processIdentifier];
    *(v25 + 56) = &type metadata for Int32;
    *(v25 + 64) = &protocol witness table for Int32;
    *(v25 + 32) = v26;
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    *(v25 + 96) = sub_10000F9B4(0, &qword_100035290, NSNumber_ptr);
    *(v25 + 104) = sub_10000F8F8();
    *(v25 + 72) = isa;
    *(v25 + 136) = &type metadata for String;
    *(v25 + 144) = sub_10000F960();
    v28 = 0x6E776F6E6B6E55;
    if (v22)
    {
      v28 = v21;
    }

    v29 = 0xE700000000000000;
    if (v22)
    {
      v29 = v22;
    }

    *(v25 + 112) = v28;
    *(v25 + 120) = v29;
    sub_10000F9B4(0, &qword_1000352A8, OS_os_log_ptr);
    v30 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v24, &_mh_execute_header, v30, "WARN: Client (PID=%d) should not be allowed to connect to voicebankingd. Will allow during development but this will be blocked before release. HasEntitlement=%@ AppID=%@", 170, 2, v25);
  }

LABEL_29:
  v31 = static TTSVBService.configuredServiceInterface()();
  [v8 setExportedInterface:v31];

  v32 = static TTSVBService.configuredClientInterface()();
  [v8 setRemoteObjectInterface:v32];

  [v8 setExportedObject:v2];
  [v8 resume];
  return 1;
}

uint64_t sub_10000DE2C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10000DF24(uint64_t a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + v5);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v1 + v6);
  v13 = *(v1 + v6 + 8);

  return sub_100006A88(a1, v7, v8, v1 + v4, v10, v11, v12, v13);
}

uint64_t sub_10000DFD8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 16, v10 | 7);
}

uint64_t sub_10000E140(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for URL() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = (v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return sub_1000079AC(a1, v8, v9, v1 + v4, v1 + v7, v11, v12);
}

uint64_t sub_10000E248()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 9) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10000E2E8()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (((*(v1 + 80) + 16) & ~*(v1 + 80)) + *(v1 + 64) + 9) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v2);
  v3 = *(v0 + v2 + 8);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  TTSVBVoiceBankingManager.exportTrainingData(forVoice:shouldCompressResult:includeEntireScript:completion:)();
}

uint64_t sub_10000E5D4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(unint64_t, uint64_t, uint64_t))
{
  v7 = *(type metadata accessor for UUID() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (v4 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v10;

  a4(v4 + v8, a3, v12);
}

uint64_t sub_10000E6CC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 10) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10000E7A8(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  return sub_100009E7C(a1, v1[2], v1[3], v1[4], v1 + v4, *(v1 + v5), *(v1 + v5 + 1), *(v1 + v5 + 2), *(v1 + ((v5 + 10) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 10) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_10000E904()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000E994()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10000EA64(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v1 + v5);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v1 + v6);
  v11 = *(v1 + v6 + 8);
  v12 = (v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];

  return sub_10000BC8C(a1, v1 + v4, v8, v9, v10, v11, v13, v14);
}

uint64_t sub_10000EB24(void *a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return sub_10000C678(a1, v1 + v4, v6, v7);
}

uint64_t sub_10000EC24()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000EC5C()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10000ECA0()
{
  v1 = *(v0 + 16);
  isa = Data._bridgeToObjectiveC()().super.isa;
  (*(v1 + 16))(v1, isa);
}

uint64_t sub_10000EDA0()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10000EDF8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10000EEDC()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1000035EC;

  return sub_10000C880(v8, v9, v10, v4, v0 + v3, v6, v7);
}

uint64_t sub_10000EFF4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000060AC;

  return sub_100004834(a1, v4);
}

uint64_t sub_10000F0AC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000035EC;

  return sub_100004834(a1, v4);
}

uint64_t sub_10000F1EC()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000F264()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10000F304(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_10000A114(a1, (v1 + v4), v6, v7);
}

uint64_t sub_10000F3AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000F3F4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10000F4A4(uint64_t a1)
{
  v2 = *(v1 + 16);
  type metadata accessor for TTSVBInstalledVoiceModel();
  sub_10000F3AC(&qword_100035238, &type metadata accessor for TTSVBInstalledVoiceModel, &protocol conformance descriptor for TTSVBInstalledVoiceModel);
  sub_10000F3AC(&qword_100035240, &type metadata accessor for TTSVBInstalledVoiceModel, &protocol conformance descriptor for TTSVBInstalledVoiceModel);
  v3 = Array<A>.toData()();
  v5 = v4;
  v2();

  return sub_10000F3F4(v3, v5);
}

uint64_t sub_10000F580()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000F610(uint64_t a1)
{
  v2 = *(v1 + 16);
  type metadata accessor for TTSVBVoiceModel();
  sub_10000F3AC(&qword_100035248, &type metadata accessor for TTSVBVoiceModel, &protocol conformance descriptor for TTSVBVoiceModel);
  sub_10000F3AC(&qword_100035250, &type metadata accessor for TTSVBVoiceModel, &protocol conformance descriptor for TTSVBVoiceModel);
  v3 = Array<A>.toData()();
  v5 = v4;
  v2();

  return sub_10000F3F4(v3, v5);
}

uint64_t sub_10000F6EC(uint64_t a1)
{
  v2 = *(v1 + 16);
  type metadata accessor for TTSVBVoice();
  sub_10000F3AC(&qword_100035258, &type metadata accessor for TTSVBVoice, &protocol conformance descriptor for TTSVBVoice);
  sub_10000F3AC(&qword_100035260, &type metadata accessor for TTSVBVoice, &protocol conformance descriptor for TTSVBVoice);
  v3 = Array<A>.toData()();
  v5 = v4;
  v2();

  return sub_10000F3F4(v3, v5);
}

unint64_t sub_10000F8F8()
{
  result = qword_100035298;
  if (!qword_100035298)
  {
    sub_10000F9B4(255, &qword_100035290, NSNumber_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035298);
  }

  return result;
}

unint64_t sub_10000F960()
{
  result = qword_1000352A0;
  if (!qword_1000352A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000352A0);
  }

  return result;
}

uint64_t sub_10000F9B4(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_10000FB24(void *a1)
{
  v2 = type metadata accessor for URLRequest();
  v100 = *(v2 - 8);
  v101 = v2;
  __chkstk_darwin(v2);
  v99 = &v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for URL.DirectoryHint();
  v4 = *(v94 - 1);
  __chkstk_darwin(v94);
  v6 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for Logger();
  v107 = *(v105 - 8);
  v7 = __chkstk_darwin(v105);
  v97 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v88 - v10;
  __chkstk_darwin(v9);
  v91 = &v88 - v12;
  v13 = sub_100001EE8(&qword_1000352B0, &qword_100027AF0);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v88 - v17;
  v19 = type metadata accessor for URL();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v96 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v95 = &v88 - v24;
  v25 = __chkstk_darwin(v23);
  v108 = &v88 - v26;
  v27 = __chkstk_darwin(v25);
  v93 = &v88 - v28;
  __chkstk_darwin(v27);
  v30 = &v88 - v29;
  v113 = sub_100010710;
  v114 = 0;
  aBlock = _NSConcreteStackBlock;
  v110 = 1107296256;
  v111 = sub_100010844;
  v112 = &unk_100031E50;
  v31 = _Block_copy(&aBlock);
  v98 = a1;
  [a1 setExpirationHandler:v31];
  v32 = v31;
  v33 = v19;
  _Block_release(v32);
  URL.init(string:)();
  v34 = *(v20 + 48);
  result = v34(v18, 1, v33);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v102 = v20;
    v92 = *(v20 + 32);
    v92(v30, v18, v33);
    v36 = TTSVBIsInternalUIBuild();
    v103 = v30;
    v104 = v33;
    if (v36)
    {
      v37 = [objc_opt_self() processInfo];
      v38 = [v37 environment];

      v39 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      if (*(v39 + 16))
      {
        v40 = sub_1000117EC(0xD000000000000027, 0x800000010002B330);
        v33 = v104;
        if (v41)
        {
          v90 = v11;
          v42 = (*(v39 + 56) + 16 * v40);
          v43 = *v42;
          v44 = v42[1];

          v45 = v44;
          v46 = v43;

          URL.init(string:)();
          if (v34(v16, 1, v33) == 1)
          {

            sub_100005EBC(v16, &qword_1000352B0, &qword_100027AF0);
            v11 = v90;
          }

          else
          {
            v92(v93, v16, v33);
            v47 = v91;
            static TTSVBLog.daemon.getter();

            v48 = Logger.logObject.getter();
            v49 = static os_log_type_t.default.getter();

            v50 = os_log_type_enabled(v48, v49);
            v11 = v90;
            if (v50)
            {
              v51 = swift_slowAlloc();
              v52 = swift_slowAlloc();
              v89 = v48;
              v53 = v49;
              v54 = v52;
              aBlock = v52;
              *v51 = 136315138;
              v55 = sub_100004A24(v46, v45, &aBlock);

              *(v51 + 4) = v55;
              v56 = v89;
              _os_log_impl(&_mh_execute_header, v89, v53, "Override server config URL was found. Using: %s", v51, 0xCu);
              sub_100005D40(v54);

              v33 = v104;
            }

            else
            {
            }

            (*(v107 + 8))(v47, v105);
            v57 = v103;
            (*(v102 + 8))(v103, v33);
            v92(v57, v93, v33);
          }
        }

        else
        {
        }
      }

      else
      {

        v33 = v104;
      }
    }

    aBlock = 0xD000000000000016;
    v110 = 0x800000010002B2C0;
    v58 = v94;
    (*(v4 + 104))(v6, enum case for URL.DirectoryHint.inferFromPath(_:), v94);
    sub_1000108A0();
    URL.appending<A>(path:directoryHint:)();
    (*(v4 + 8))(v6, v58);
    static TTSVBLog.daemon.getter();
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&_mh_execute_header, v59, v60, "Taking ServerConfigChecker network transaction", v61, 2u);
    }

    v62 = v107 + 8;
    v63 = v11;
    v64 = v105;
    v94 = *(v107 + 8);
    (v94)(v63, v105);
    *(v106 + 16) = os_transaction_create();
    swift_unknownObjectRelease();
    v65 = v97;
    static TTSVBLog.daemon.getter();
    v66 = v102;
    v67 = v95;
    v93 = *(v102 + 16);
    (v93)(v95, v108, v33);
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      aBlock = v71;
      *v70 = 136315138;
      v72 = URL.absoluteString.getter();
      v107 = v62;
      v74 = v73;
      v102 = *(v66 + 8);
      (v102)(v67, v104);
      v75 = sub_100004A24(v72, v74, &aBlock);

      *(v70 + 4) = v75;
      _os_log_impl(&_mh_execute_header, v68, v69, "Fetching server configuration from %s", v70, 0xCu);
      sub_100005D40(v71);
      v33 = v104;

      (v94)(v65, v105);
    }

    else
    {

      v102 = *(v66 + 8);
      (v102)(v67, v33);
      (v94)(v65, v64);
    }

    v76 = v108;
    (v93)(v96, v108, v33);
    v77 = v99;
    URLRequest.init(url:cachePolicy:timeoutInterval:)();
    v78 = [objc_opt_self() sharedSession];
    isa = URLRequest._bridgeToObjectiveC()().super.isa;
    v80 = swift_allocObject();
    v81 = v33;
    v82 = v98;
    v83 = v106;
    *(v80 + 16) = v98;
    *(v80 + 24) = v83;
    v113 = sub_10001155C;
    v114 = v80;
    aBlock = _NSConcreteStackBlock;
    v110 = 1107296256;
    v111 = sub_1000116C4;
    v112 = &unk_100031EA0;
    v84 = _Block_copy(&aBlock);
    v85 = v82;

    v86 = [v78 dataTaskWithRequest:isa completionHandler:v84];
    _Block_release(v84);

    [v86 resume];
    (*(v100 + 8))(v77, v101);
    v87 = v102;
    (v102)(v76, v81);
    return v87(v103, v81);
  }

  return result;
}

uint64_t sub_100010710()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static TTSVBLog.daemon.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "updateServerConfiguration bg task expired", v6, 2u);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100010844(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_100010888(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000108A0()
{
  result = qword_1000352B8;
  if (!qword_1000352B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000352B8);
  }

  return result;
}

void sub_1000108F4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v86 = a1;
  v11 = type metadata accessor for Logger();
  v87 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v83 = &v78 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v78 - v18;
  __chkstk_darwin(v17);
  v21 = &v78 - v20;
  if (a3 && (objc_opt_self(), (v22 = swift_dynamicCastObjCClass()) != 0))
  {
    v23 = [v22 statusCode];
    if (v23 == 404)
    {
      v24 = v11;
      static TTSVBLog.daemon.getter();
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "No ServerConfig XML file found on the server. Assuming no override config to be enforced", v27, 2u);
      }

      (*(v87 + 8))(v21, v24);
      goto LABEL_53;
    }
  }

  else
  {
    v23 = -1;
  }

  v85 = v11;
  if (a2 >> 60 == 15)
  {
    static TTSVBLog.daemon.getter();
    swift_errorRetain();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v82 = a5;
      v30 = a6;
      v31 = 7104878;
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v93[0] = v33;
      *v32 = 134218242;
      *(v32 + 4) = v23;
      *(v32 + 12) = 2080;
      if (a4 && (*&v91 = a4, swift_errorRetain(), sub_100001EE8(&qword_100035390, &unk_100027F60), sub_10000F9B4(0, &qword_100035398, NSError_ptr), (swift_dynamicCast() & 1) != 0))
      {
        v34 = v89;
        v35 = [v89 debugDescription];

        v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v37 = v36;
      }

      else
      {
        v37 = 0xE300000000000000;
      }

      v64 = sub_100004A24(v31, v37, v93);

      *(v32 + 14) = v64;
      _os_log_impl(&_mh_execute_header, v28, v29, "Could not fetch configuration from network. StatusCode=%ld Error=%s", v32, 0x16u);
      sub_100005D40(v33);

      (*(v87 + 8))(v14, v85);
      a6 = v30;
      a5 = v82;
      goto LABEL_53;
    }

    v51 = *(v87 + 8);
    v52 = v14;
    goto LABEL_52;
  }

  sub_100011954(v86, a2);
  v38 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v93[0] = 0;
  v40 = [v38 propertyListWithData:isa options:0 format:0 error:v93];

  v84 = a2;
  if (!v40)
  {
    v53 = v93[0];
    v54 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (!v54)
    {
      goto LABEL_33;
    }

LABEL_49:
    v66 = v83;
    static TTSVBLog.daemon.getter();
    swift_errorRetain();
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v93[0] = v70;
      *v69 = 136315138;
      v71 = _convertErrorToNSError(_:)();
      v72 = [v71 debugDescription];

      v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v74 = a5;
      v76 = v75;

      v77 = sub_100004A24(v73, v76, v93);
      a5 = v74;

      *(v69 + 4) = v77;
      _os_log_impl(&_mh_execute_header, v67, v68, "Could not fetch configuration from network. Parse error: %s", v69, 0xCu);
      sub_100005D40(v70);

      sub_100011940(v86, v84);

      v51 = *(v87 + 8);
      v52 = v83;
    }

    else
    {
      sub_100011940(v86, a2);

      v51 = *(v87 + 8);
      v52 = v66;
    }

LABEL_52:
    v51(v52, v85);
LABEL_53:
    sub_100011564(a5, a6);
    return;
  }

  v82 = a5;
  v41 = v93[0];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10000F9B4(0, &unk_1000353B0, NSDictionary_ptr);
  if (!swift_dynamicCast())
  {
    type metadata accessor for TTSVBError();
    sub_1000119BC();
    v65 = swift_allocError();
    TTSVBError.init(_:_:_:)();
    swift_willThrow();
    a5 = v82;
    if (!v65)
    {
      goto LABEL_33;
    }

    goto LABEL_49;
  }

  v79 = a6;
  v81 = v91;
  v42 = [v91 allKeys];
  v43 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v80 = *(v43 + 16);
  if (!v80)
  {
LABEL_30:

    v50 = 0;
LABEL_48:
    a6 = v79;
    a5 = v82;
    if (v50)
    {
      goto LABEL_49;
    }

LABEL_33:
    static TTSVBLog.daemon.getter();
    v55 = v81;
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *v58 = 138412290;
      *(v58 + 4) = v55;
      *v59 = v55;
      v60 = v55;
      _os_log_impl(&_mh_execute_header, v56, v57, "Did fetch new server config (saving as new ServerConfiguration): %@", v58, 0xCu);
      sub_100005EBC(v59, &qword_1000350B0, &qword_100027C40);
      a2 = v84;
    }

    (*(v87 + 8))(v19, v85);
    sub_10000F9B4(0, &unk_1000353A0, NSUserDefaults_ptr);
    v61 = static NSUserDefaults.voicebankingShared.getter();
    v62 = v55;
    v63 = String._bridgeToObjectiveC()();
    [v61 setObject:v62 forKey:v63];
    sub_100011940(v86, a2);

    goto LABEL_53;
  }

  v44 = 0;
  v45 = v43 + 32;
  while (v44 < *(v43 + 16))
  {
    sub_100005D8C(v45, v93);
    sub_100005D8C(v93, &v91);
    sub_10000F9B4(0, &unk_1000353C0, NSString_ptr);
    if (!swift_dynamicCast())
    {

      type metadata accessor for TTSVBError();
      sub_1000119BC();
      v50 = swift_allocError();
      goto LABEL_44;
    }

    sub_100011A14(v93, v93[3]);
    v46 = [v81 __swift_objectForKeyedSubscript:_bridgeAnythingToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    if (v46)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v89 = 0u;
      v90 = 0u;
    }

    v91 = v89;
    v92 = v90;
    if (!*(&v90 + 1))
    {

      sub_100005EBC(&v91, &qword_100035278, &qword_100027F70);
      goto LABEL_43;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {

LABEL_43:
      type metadata accessor for TTSVBError();
      sub_1000119BC();
      v50 = swift_allocError();
LABEL_44:
      TTSVBError.init(_:_:_:)();
      swift_willThrow();
LABEL_47:

      sub_100005D40(v93);
      goto LABEL_48;
    }

    v47 = v88;
    *&v89 = 0x65776F6C6C417349;
    *(&v89 + 1) = 0xE900000000000064;
    v48 = [v88 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    if (v48)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v89 = 0u;
      v90 = 0u;
    }

    v91 = v89;
    v92 = v90;
    a2 = v84;
    if (!*(&v90 + 1))
    {
      sub_100005EBC(&v91, &qword_100035278, &qword_100027F70);
LABEL_46:

      type metadata accessor for TTSVBError();
      sub_1000119BC();
      v50 = swift_allocError();
      TTSVBError.init(_:_:_:)();
      swift_willThrow();

      goto LABEL_47;
    }

    sub_10000F9B4(0, &qword_100035290, NSNumber_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_46;
    }

    ++v44;
    v49 = v88;

    a2 = v84;
    sub_100005D40(v93);
    v45 += 32;
    if (v80 == v44)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
}

uint64_t sub_10001151C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100011564(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static TTSVBLog.daemon.getter();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Giving up ServerConfigChecker network transaction & marking bg task complete", v10, 2u);
  }

  (*(v5 + 8))(v7, v4);
  [a1 setTaskCompleted];
  *(a2 + 16) = 0;
  return swift_unknownObjectRelease();
}

uint64_t sub_1000116C4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a3;
  v12 = a4;
  v7(v6, v10, a3, a4);

  sub_100011940(v6, v10);
}

uint64_t sub_10001178C()
{
  swift_unknownObjectRelease();

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_1000117C4()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

unint64_t sub_1000117EC(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100011888(a1, a2, v4);
}

unint64_t sub_100011888(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_100011940(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000F3F4(result, a2);
  }

  return result;
}

uint64_t sub_100011954(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100011968(a1, a2);
  }

  return a1;
}

uint64_t sub_100011968(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_1000119BC()
{
  result = qword_100035500;
  if (!qword_100035500)
  {
    type metadata accessor for TTSVBError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035500);
  }

  return result;
}

void *sub_100011A14(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

id VoiceBankingDaemon.init()(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v12 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v12 - 8);
  __chkstk_darwin(v12);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v6);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  *&v2[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___xpcServer] = 0;
  *&v2[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___xpcStore] = 0;
  *&v2[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___liveSpeechSyncController] = 0;
  *&v2[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___userNotificationManager] = 0;
  *&v2[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___serverConfigChecker] = 0;
  *&v2[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_startupTransaction] = 0;
  v11 = OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_queue;
  v8 = sub_10000F9B4(0, &qword_100035408, OS_dispatch_queue_ptr);
  v10[0] = "elled";
  v10[1] = v8;
  static DispatchQoS.userInteractive.getter();
  v15 = &_swiftEmptyArrayStorage;
  sub_10001EA80(&qword_100035410, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100001EE8(&qword_100035418, &qword_100027F80);
  sub_100020814(&qword_100035420, &qword_100035418, &qword_100027F80, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v12);
  *&v2[v11] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v2[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___voiceBankingManager] = 0;
  *&v2[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_datastoreEventSubscription] = 0;
  *&v2[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___accessManager] = 0;
  *&v2[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_notificationObserverTokens] = &_swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___assetsService] = 0;
  *&v2[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___vdbXpc] = 0;
  v14.receiver = v2;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, "init");
}

uint64_t variable initialization expression of VoiceBankingDaemon.queue()
{
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_10000F9B4(0, &qword_100035408, OS_dispatch_queue_ptr);
  static DispatchQoS.userInteractive.getter();
  v8 = &_swiftEmptyArrayStorage;
  sub_10001EA80(&qword_100035410, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100001EE8(&qword_100035418, &qword_100027F80);
  sub_100020814(&qword_100035420, &qword_100035418, &qword_100027F80, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v7);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

char *sub_100012044()
{
  v1 = OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___xpcServer;
  v2 = *(v0 + OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___xpcServer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___xpcServer);
  }

  else
  {
    v4 = v0;
    type metadata accessor for VoiceBankingXPCServer();
    v5 = VoiceBankingXPCServer.__allocating_init()();
    v6 = &v5[OBJC_IVAR____TtC13voicebankingd21VoiceBankingXPCServer_delegate];
    swift_beginAccess();
    *(v6 + 1) = &protocol witness table for VoiceBankingDaemon;
    swift_unknownObjectWeakAssign();
    v7 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

uint64_t sub_1000120FC()
{
  v1 = OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___xpcStore;
  if (*(v0 + OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___xpcStore))
  {
    v2 = *(v0 + OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___xpcStore);
  }

  else
  {
    type metadata accessor for VoiceBankingXPCStore();
    v3 = sub_100012250(&OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___voiceBankingManager, &type metadata accessor for TTSVBVoiceBankingManager);
    v2 = sub_100001AB0(v3);
    *(v0 + v1) = v2;
  }

  return v2;
}

id sub_100012190(uint64_t *a1, void (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v8 = v3;
    a2(0);
    v9 = a3();
    v10 = *(v3 + v4);
    *(v8 + v4) = v9;
    v6 = v9;

    v5 = 0;
  }

  v11 = v5;
  return v6;
}

uint64_t sub_100012208(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

id sub_100012250(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = [objc_allocWithZone(a2(0)) init];
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

Swift::Void __swiftcall VoiceBankingDaemon.run()()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v103 = *(v0 - 8);
  v104 = v0;
  __chkstk_darwin(v0);
  v102 = &v88 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for DispatchQoS();
  v100 = *(v2 - 8);
  v101 = v2;
  __chkstk_darwin(v2);
  v99 = &v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for DispatchTimeInterval();
  v96 = *(v97 - 1);
  __chkstk_darwin(v97);
  v95 = (&v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v106 = type metadata accessor for DispatchTime();
  v98 = *(v106 - 8);
  v5 = __chkstk_darwin(v106);
  v94 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v105 = &v88 - v7;
  v91 = type metadata accessor for Date();
  v8 = *(v91 - 8);
  v9 = __chkstk_darwin(v91);
  v11 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v88 - v12;
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for Logger();
  v110 = *(v108 - 8);
  v18 = __chkstk_darwin(v108);
  v109 = (&v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __chkstk_darwin(v18);
  v22 = &v88 - v21;
  v23 = __chkstk_darwin(v20);
  v93 = &v88 - v24;
  v25 = __chkstk_darwin(v23);
  v92 = &v88 - v26;
  v27 = __chkstk_darwin(v25);
  v89 = &v88 - v28;
  v29 = __chkstk_darwin(v27);
  v31 = &v88 - v30;
  __chkstk_darwin(v29);
  v33 = &v88 - v32;
  v34 = getuid();
  v35 = v34;
  if (v34 == 248 || !v34)
  {
    static TTSVBLog.daemon.getter();
    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 67109120;
      *(v87 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v85, v86, "voicebankingd is not allowed to run as user: %u. Will exit(0) now.", v87, 8u);
    }

    (*(v110 + 8))(v33, v108);
    exit(0);
  }

  static TTSVBPath.requireGroupContainerURL()();
  v90 = v22;
  (*(v15 + 8))(v17, v14);
  static TTSVBLog.daemon.getter();
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 67109120;
    *(v38 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v36, v37, "Starting up with uid=%u", v38, 8u);
  }

  v39 = v108;
  v109 = *(v110 + 8);
  v110 += 8;
  v109(v31, v108);
  v40 = sub_100012250(&OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___voiceBankingManager, &type metadata accessor for TTSVBVoiceBankingManager);
  Date.init()();
  Date.addingTimeInterval(_:)();
  v41 = *(v8 + 8);
  v42 = v11;
  v43 = v91;
  v41(v42, v91);
  TTSVBVoiceBankingManager.discardLongTermLogs(olderThan:)();

  v44 = (v41)(v13, v43);
  __chkstk_darwin(v44);
  *(&v88 - 4) = v35;
  v46 = v45;
  TTSVBVoiceBankingManager.logLongTermMessage(_:)();

  v47 = TTSVBIsPersonalVoiceVersion2Enabled();
  v48 = v93;
  v49 = v92;
  if (v47)
  {
    v50 = v89;
    static TTSVBLog.daemon.getter();
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v51, v52, "Personal Voice v2 is enabled", v53, 2u);
    }

    v109(v50, v39);
  }

  static TTSVBLog.daemon.getter();
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 67109120;
    *(v56 + 4) = TTSVBDeviceSupportsV2Voices()();
    _os_log_impl(&_mh_execute_header, v54, v55, "Device supports v2 Personal Voices: %{BOOL}d", v56, 8u);
  }

  v109(v49, v39);
  static TTSVBLog.daemon.getter();
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 0;
    _os_log_impl(&_mh_execute_header, v57, v58, "Taking boostrap transaction", v59, 2u);
  }

  v109(v48, v39);
  v60 = os_transaction_create();
  v61 = v107;
  *&v107[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_startupTransaction] = v60;
  swift_unknownObjectRelease();
  v93 = OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_queue;
  v62 = *(v61 + OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_queue);
  v63 = v94;
  static DispatchTime.now()();
  v64 = v95;
  *v95 = 5;
  v65 = v96;
  v66 = v97;
  (v96[13])(v64, enum case for DispatchTimeInterval.seconds(_:), v97);
  + infix(_:_:)();
  v65[1](v64, v66);
  v98 = *(v98 + 8);
  (v98)(v63, v106);
  v67 = swift_allocObject();
  *(v67 + 16) = v61;
  v116 = sub_10001EA60;
  v117 = v67;
  aBlock = _NSConcreteStackBlock;
  v113 = 1107296256;
  v97 = &v114;
  v114 = sub_1000218B0;
  v115 = &unk_100031FB8;
  v68 = _Block_copy(&aBlock);
  v96 = v61;
  v69 = v99;
  static DispatchQoS.unspecified.getter();
  v111 = &_swiftEmptyArrayStorage;
  v94 = sub_10001EA80(&qword_100035458, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  v92 = sub_100001EE8(&qword_100035460, &qword_100027F88);
  v95 = sub_100020814(&qword_100035468, &qword_100035460, &qword_100027F88, &protocol conformance descriptor for [A]);
  v70 = v102;
  v71 = v104;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v72 = v105;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v68);

  v103 = *(v103 + 8);
  (v103)(v70, v71);
  v73 = v101;
  v100 = *(v100 + 8);
  (v100)(v69, v101);
  (v98)(v72, v106);

  v74 = *&v93[v61];
  v75 = swift_allocObject();
  v76 = v96;
  *(v75 + 16) = v96;
  v116 = sub_10001EAC8;
  v117 = v75;
  aBlock = _NSConcreteStackBlock;
  v113 = 1107296256;
  v114 = sub_1000218B0;
  v115 = &unk_100032008;
  v77 = _Block_copy(&aBlock);
  v78 = v76;
  v79 = v74;
  static DispatchQoS.unspecified.getter();
  v111 = &_swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v77);

  (v103)(v70, v71);
  (v100)(v69, v73);

  v80 = v90;
  static TTSVBLog.daemon.getter();
  v81 = Logger.logObject.getter();
  v82 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    *v83 = 0;
    _os_log_impl(&_mh_execute_header, v81, v82, "Will enter run loop", v83, 2u);
  }

  v109(v80, v108);
  v84 = [objc_opt_self() currentRunLoop];
  [v84 run];
}

uint64_t sub_100013174(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static TTSVBLog.daemon.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Giving up boostrap transaction", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  *(a1 + OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_startupTransaction) = 0;
  return swift_unknownObjectRelease();
}

uint64_t sub_1000132C8()
{
  v2 = v0;
  v3 = sub_100001EE8(&qword_100035510, &qword_1000280A8);
  __chkstk_darwin(v3 - 8);
  v161 = &v153 - v4;
  v5 = sub_100001EE8(&qword_100035518, &qword_1000280B0);
  v163 = *(v5 - 8);
  v164 = v5;
  __chkstk_darwin(v5);
  v162 = &v153 - v6;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v160 = (&v153 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v9);
  v165 = (&v153 - v12);
  v13 = __chkstk_darwin(v11);
  v158 = (&v153 - v14);
  v15 = __chkstk_darwin(v13);
  v168 = (&v153 - v16);
  v17 = __chkstk_darwin(v15);
  v156 = (&v153 - v18);
  v19 = __chkstk_darwin(v17);
  v157 = (&v153 - v20);
  v21 = __chkstk_darwin(v19);
  v23 = &v153 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v153 - v25;
  __chkstk_darwin(v24);
  v28 = &v153 - v27;
  v29 = type metadata accessor for DispatchPredicate();
  v30 = *(v29 - 1);
  __chkstk_darwin(v29);
  v32 = (&v153 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v159 = OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_queue;
  v33 = *&v2[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_queue];
  *v32 = v33;
  (*(v30 + 104))(v32, enum case for DispatchPredicate.onQueue(_:), v29);
  v34 = v33;
  v35 = _dispatchPreconditionTest(_:)();
  (*(v30 + 8))(v32, v29);
  if ((v35 & 1) == 0)
  {
    __break(1u);
LABEL_59:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    goto LABEL_51;
  }

  static TTSVBLog.daemon.getter();
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "Beginning daemon boostrap process", v38, 2u);
  }

  v39 = *(v8 + 8);
  v39(v28, v7);
  static TTSVBLog.daemon.getter();
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.info.getter();
  v42 = os_log_type_enabled(v40, v41);
  v166 = v8 + 8;
  v167 = v39;
  if (v42)
  {
    v155 = v7;
    v154 = v2;
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    aBlock = v44;
    *v43 = 136315138;
    v45 = [objc_opt_self() mainBundle];
    v46 = [v45 bundleIdentifier];

    if (v46)
    {
      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v48;
    }

    else
    {
      v49 = 0xE700000000000000;
      v47 = 0x3E7465736E753CLL;
    }

    v52 = sub_100004A24(v47, v49, &aBlock);

    *(v43 + 4) = v52;
    _os_log_impl(&_mh_execute_header, v40, v41, "Main Bundle ID: %s", v43, 0xCu);
    sub_100005D40(v44);

    v7 = v155;
    v51 = v167;
    v167(v26, v155);
    v2 = v154;
    v50 = v165;
    if (!TTSVBIsInternalUIBuild())
    {
      goto LABEL_36;
    }
  }

  else
  {

    v39(v26, v7);
    v50 = v165;
    v51 = v39;
    if (!TTSVBIsInternalUIBuild())
    {
      goto LABEL_36;
    }
  }

  v53 = SecTaskCreateFromSelf(0);
  if (v53 && (v54 = v53, v55 = String._bridgeToObjectiveC()(), v56 = SecTaskCopyValueForEntitlement(v54, v55, 0), v54, v55, v56))
  {
    v175 = v56;
    v57 = swift_dynamicCast();
    if (v57)
    {
      v58 = aBlock;
    }

    else
    {
      v58 = 0;
    }

    if (v57)
    {
      v59 = v170;
    }

    else
    {
      v59 = 0;
    }
  }

  else
  {
    v58 = 0;
    v59 = 0;
  }

  if (v59)
  {
    v60 = v59;
  }

  else
  {
    v60 = 0xE700000000000000;
  }

  static TTSVBLog.daemon.getter();

  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v61, v62))
  {
    if (!v59)
    {
      v58 = 0x6E776F6E6B6E55;
    }

    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    aBlock = v64;
    *v63 = 136315138;
    v65 = sub_100004A24(v58, v60, &aBlock);

    *(v63 + 4) = v65;
    _os_log_impl(&_mh_execute_header, v61, v62, "CloudKit environment: %s", v63, 0xCu);
    sub_100005D40(v64);
  }

  else
  {
  }

  v51 = v167;
  v167(v23, v7);
  sub_10000F9B4(0, &unk_1000353A0, NSUserDefaults_ptr);
  v66 = static NSUserDefaults.voicebankingShared.getter();
  v67 = v157;
  static TTSVBLog.daemon.getter();
  v68 = v66;
  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.info.getter();

  v71 = os_log_type_enabled(v69, v70);
  v154 = v68;
  if (v71)
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    aBlock = v73;
    *v72 = 136315138;
    v74 = [v68 dictionaryRepresentation];
    v155 = v7;
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v75 = v165;
    v76 = Dictionary.description.getter();
    v78 = v77;

    v79 = sub_100004A24(v76, v78, &aBlock);
    v7 = v155;

    *(v72 + 4) = v79;
    _os_log_impl(&_mh_execute_header, v69, v70, "Check shared defaults can be read: %s", v72, 0xCu);
    sub_100005D40(v73);

    v51 = v167;

    v80 = v157;
    v50 = v75;
  }

  else
  {

    v80 = v67;
  }

  v51(v80, v7);
  v81 = v156;
  v82 = static NSUserDefaults.voicebankingSandboxedShared.getter();
  if (v82)
  {
    v83 = v82;
    static TTSVBLog.daemon.getter();
    v84 = v83;
    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v157 = swift_slowAlloc();
      aBlock = v157;
      *v87 = 136315138;
      v88 = [v84 dictionaryRepresentation];
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v89 = Dictionary.description.getter();
      v91 = v90;
      v50 = v165;

      v92 = sub_100004A24(v89, v91, &aBlock);

      *(v87 + 4) = v92;
      _os_log_impl(&_mh_execute_header, v85, v86, "Check shared sandboxed defaults can be read: %s", v87, 0xCu);
      sub_100005D40(v157);

      v51 = v167;

      v51(v156, v7);
    }

    else
    {

      v51(v81, v7);
    }
  }

  else
  {
  }

LABEL_36:
  static TTSVBLog.daemon.getter();
  v93 = Logger.logObject.getter();
  v94 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    *v95 = 67109120;
    *(v95 + 4) = TTSVBHasDeviceBeenUnlockedSinceBoot();
    _os_log_impl(&_mh_execute_header, v93, v94, "Has been unlocked since first boot: %{BOOL}d", v95, 8u);
  }

  v51(v168, v7);
  v173 = sub_1000149E4;
  v174 = 0;
  aBlock = _NSConcreteStackBlock;
  v1 = 1107296256;
  v170 = 1107296256;
  v171 = sub_100010844;
  v172 = &unk_1000322C0;
  v96 = _Block_copy(&aBlock);
  TTSVBRegisterForFirstUnlockSinceBoot();
  _Block_release(v96);
  v97 = sub_100012250(&OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___accessManager, &type metadata accessor for TTSVBAccessManager);
  dispatch thunk of TTSVBAccessManager.tccCloudKitAccess.getter();

  v98 = TTSVBTCCCloudKitAccess.rawValue.getter();
  v100 = v99;
  if (v98 == TTSVBTCCCloudKitAccess.rawValue.getter() && v100 == v101)
  {
  }

  else
  {
    v102 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v102 & 1) == 0)
    {
      goto LABEL_46;
    }
  }

  v103 = OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___accessManager;
  v104 = *&v2[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___accessManager];
  v105 = dispatch thunk of TTSVBAccessManager.isCloudSyncAvailable.getter();

  if (v105)
  {
    static TTSVBLog.daemon.getter();
    v106 = Logger.logObject.getter();
    v107 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      *v108 = 0;
      _os_log_impl(&_mh_execute_header, v106, v107, "User has granted tccCloudKitAccess and has iCloudSync available. Attempting to apply for cloudkit syncing.", v108, 2u);
    }

    v51(v158, v7);
    v109 = sub_100012250(&OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___voiceBankingManager, &type metadata accessor for TTSVBVoiceBankingManager);
    TTSVBVoiceBankingManager.logLongTermMessage(_:)();

    v110 = *&v2[v103];
    dispatch thunk of TTSVBAccessManager.applyCloudKitAccessForCurrentConditions()();
  }

LABEL_46:
  v111 = OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___accessManager;
  v112 = *&v2[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___accessManager];
  dispatch thunk of TTSVBAccessManager.startMonitoringForAccountChanges(_:)();

  static TTSVBLog.daemon.getter();
  v29 = v2;
  v113 = Logger.logObject.getter();
  v114 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v113, v114))
  {
    v115 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    aBlock = v116;
    *v115 = 136315138;
    v117 = *&v2[v111];
    dispatch thunk of TTSVBAccessManager.tccCloudKitAccess.getter();

    v118 = TTSVBTCCCloudKitAccess.rawValue.getter();
    v120 = sub_100004A24(v118, v119, &aBlock);

    *(v115 + 4) = v120;
    _os_log_impl(&_mh_execute_header, v113, v114, "iCloud TCC access: %s", v115, 0xCu);
    sub_100005D40(v116);

    v51 = v167;
  }

  v51(v50, v7);
  v121 = v160;
  static TTSVBLog.daemon.getter();
  v122 = Logger.logObject.getter();
  v123 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v122, v123))
  {
    v124 = swift_slowAlloc();
    *v124 = 0;
    _os_log_impl(&_mh_execute_header, v122, v123, "Will load data stores", v124, 2u);
  }

  v51(v121, v7);
  v125 = sub_100012250(&OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___voiceBankingManager, &type metadata accessor for TTSVBVoiceBankingManager);
  v126 = TTSVBVoiceBankingManager.dataStoreEventPublisher.getter();

  aBlock = v126;
  v175 = *&v2[v159];
  v127 = v175;
  v128 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v129 = v161;
  (*(*(v128 - 8) + 56))(v161, 1, 1, v128);
  v130 = v127;
  sub_100001EE8(&qword_100035520, &qword_1000280B8);
  sub_10000F9B4(0, &qword_100035408, OS_dispatch_queue_ptr);
  sub_100020814(&qword_100035528, &qword_100035520, &qword_1000280B8, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_10002076C();
  v131 = v162;
  Publisher.receive<A>(on:options:)();
  sub_100005EBC(v129, &qword_100035510, &qword_1000280A8);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100020814(&unk_100035538, &qword_100035518, &qword_1000280B0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v132 = v164;
  v133 = Publisher<>.sink(receiveValue:)();

  (*(v163 + 8))(v131, v132);
  *&v29[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_datastoreEventSubscription] = v133;

  v23 = [objc_opt_self() defaultCenter];
  v134 = static NSNotificationName.ttsvbDidImportVoiceModel.getter();
  v135 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v173 = sub_10002085C;
  v174 = v135;
  aBlock = _NSConcreteStackBlock;
  v170 = 1107296256;
  v171 = sub_1000158A0;
  v172 = &unk_100032310;
  v136 = _Block_copy(&aBlock);

  v35 = &VoiceBankingXPCStore;
  v137 = [v23 addObserverForName:v134 object:0 queue:0 usingBlock:v136];
  _Block_release(v136);

  v2 = OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_notificationObserverTokens;
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*&v2[v29] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v2[v29] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_59;
  }

LABEL_51:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v138 = static NSNotificationName.ttsvbDidDeleteVoice.getter();
  v139 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v173 = sub_10002089C;
  v174 = v139;
  aBlock = _NSConcreteStackBlock;
  v170 = v1;
  v171 = sub_1000158A0;
  v172 = &unk_100032338;
  v140 = _Block_copy(&aBlock);

  v141 = [v23 *(v35 + 2496)];
  _Block_release(v140);

  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*&v2[v29] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v2[v29] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v142 = static NSNotificationName.ttsvbDidPotentiallyDownloadVoiceModel.getter();
  v143 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v173 = sub_1000208DC;
  v174 = v143;
  aBlock = _NSConcreteStackBlock;
  v170 = v1;
  v171 = sub_1000158A0;
  v172 = &unk_100032360;
  v144 = _Block_copy(&aBlock);

  v145 = [v23 *(v35 + 2496)];
  _Block_release(v144);

  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*&v2[v29] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v2[v29] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v146 = static NSNotificationName.internal_ttsvbDidRequestMockUserNotification.getter();
  v147 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v173 = sub_10002091C;
  v174 = v147;
  aBlock = _NSConcreteStackBlock;
  v170 = v1;
  v171 = sub_1000158A0;
  v172 = &unk_100032388;
  v148 = _Block_copy(&aBlock);

  v149 = [v23 *(v35 + 2496)];
  _Block_release(v148);

  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*&v2[v29] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v2[v29] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v150 = *&v29[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___voiceBankingManager];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v151 = v150;

  TTSVBVoiceBankingManager.loadStores(_:)();
}

uint64_t sub_1000149E4()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static TTSVBLog.daemon.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Received notification that iphone was unlocked since first boot", v6, 2u);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100014B1C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x656E696665646E75;
  v4 = a1;
  v5 = 0xE400000000000000;
  v6 = 1701736292;
  if (a1 != 5)
  {
    v6 = 0x646573756170;
    v5 = 0xE600000000000000;
  }

  v7 = 0x656C6C65636E6163;
  v8 = 0xE600000000000000;
  if (a1 == 3)
  {
    v8 = 0xE900000000000064;
  }

  else
  {
    v7 = 0x64656C696166;
  }

  if (a1 <= 4u)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0x657474696D627573;
  v10 = 0xE700000000000000;
  if (a1 == 1)
  {
    v10 = 0xE900000000000064;
  }

  else
  {
    v9 = 0x676E696E6E7572;
  }

  if (!a1)
  {
    v9 = 0x656E696665646E75;
    v10 = 0xE900000000000064;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v6;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        if (v11 != 0x657474696D627573)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v2 = 0xE700000000000000;
        if (v11 != 0x676E696E6E7572)
        {
          goto LABEL_38;
        }
      }

      goto LABEL_35;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xE400000000000000;
        if (v11 != 1701736292)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v2 = 0xE600000000000000;
        if (v11 != 0x646573756170)
        {
          goto LABEL_38;
        }
      }

      goto LABEL_35;
    }

    if (a2 == 3)
    {
      if (v11 != 0x656C6C65636E6163)
      {
        goto LABEL_38;
      }

      goto LABEL_35;
    }

    v2 = 0xE600000000000000;
    v3 = 0x64656C696166;
  }

  if (v11 != v3)
  {
LABEL_38:
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_39;
  }

LABEL_35:
  if (v12 != v2)
  {
    goto LABEL_38;
  }

  v13 = 1;
LABEL_39:

  return v13 & 1;
}

uint64_t sub_100014D2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTSVBDataStoreEvent();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTSVBDataStoreEvent.CloudKitSyncEvent();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = sub_100012250(&OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___voiceBankingManager, &type metadata accessor for TTSVBVoiceBankingManager);
    v22[1] = a2;
    v15 = v11;
    v16 = v9;
    v17 = v14;

    __chkstk_darwin(v18);
    v22[-2] = a1;
    TTSVBVoiceBankingManager.logLongTermMessage(_:)();

    v9 = v16;
    v11 = v15;
  }

  (*(v5 + 16))(v7, a1, v4);
  if ((*(v5 + 88))(v7, v4) != enum case for TTSVBDataStoreEvent.cloudKitSync(_:))
  {
    return (*(v5 + 8))(v7, v4);
  }

  (*(v5 + 96))(v7, v4);
  (*(v9 + 32))(v11, v7, v8);
  swift_beginAccess();
  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
    v20 = v19;
    sub_100015004();
  }

  return (*(v9 + 8))(v11, v8);
}

void sub_100015004()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v35 - v7;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *&v0[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_queue];
  *v12 = v13;
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v12, v9);
  if (v13)
  {
    v15 = TTSVBDataStoreEvent.CloudKitSyncEvent.event.getter();
    v16 = [v15 type];

    if (v16 == 1 && (TTSVBDataStoreEvent.CloudKitSyncEvent.isFinished.getter() & 1) != 0 && (v17 = TTSVBDataStoreEvent.CloudKitSyncEvent.event.getter(), v18 = [v17 succeeded], v17, v18))
    {
      v19 = sub_100012250(&OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___voiceBankingManager, &type metadata accessor for TTSVBVoiceBankingManager);
      TTSVBVoiceBankingManager.logLongTermMessage(_:)();

      static TTSVBLog.daemon.getter();
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "CloudKit import did finish. Will schedule sync of file-backed futures", v22, 2u);
      }

      (*(v3 + 8))(v8, v2);
      v23 = *&v1[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___voiceBankingManager];
      *(swift_allocObject() + 16) = v1;
      v24 = v23;
      v25 = v1;
      TTSVBVoiceBankingManager.synchronizeFileBackedFuturesForAllModels(completion:)();
    }

    else
    {
      v26 = TTSVBDataStoreEvent.CloudKitSyncEvent.event.getter();
      v27 = [v26 type];

      if (!v27 && (TTSVBDataStoreEvent.CloudKitSyncEvent.isFinished.getter() & 1) != 0)
      {
        v28 = TTSVBDataStoreEvent.CloudKitSyncEvent.event.getter();
        v29 = [v28 succeeded];

        if ((v29 & 1) == 0)
        {
          v30 = sub_100012250(&OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___voiceBankingManager, &type metadata accessor for TTSVBVoiceBankingManager);
          TTSVBVoiceBankingManager.logLongTermMessage(_:)();

          static TTSVBLog.daemon.getter();
          v31 = Logger.logObject.getter();
          v32 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v31, v32))
          {
            v33 = swift_slowAlloc();
            *v33 = 0;
            _os_log_impl(&_mh_execute_header, v31, v32, "Handling failed sync wetup event. Will restore Personal Voices still found locally on device", v33, 2u);
          }

          (*(v3 + 8))(v6, v2);
          v34 = *&v1[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___voiceBankingManager];
          TTSVBVoiceBankingManager.repairDatastoreVoicesFromFilesystem(completion:)();
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100015498(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v31 = a1;
  v5 = sub_100001EE8(&qword_100035098, &qword_100027BC0);
  __chkstk_darwin(v5 - 8);
  v7 = &v29 - v6;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *&v3[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_queue];
  *v15 = v16;
  (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  result = (*(v13 + 8))(v15, v12);
  if (v16)
  {
    v30 = v7;
    static TTSVBLog.daemon.getter();

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v32 = v22;
      *v21 = 136315138;
      v23 = v31;
      *(v21 + 4) = sub_100004A24(v31, a2, &v32);
      _os_log_impl(&_mh_execute_header, v19, v20, "Will rebuild the voice cache now: %s", v21, 0xCu);
      sub_100005D40(v22);

      (*(v9 + 8))(v11, v8);
    }

    else
    {

      (*(v9 + 8))(v11, v8);
      v23 = v31;
    }

    v24 = sub_100012250(&OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___voiceBankingManager, &type metadata accessor for TTSVBVoiceBankingManager);
    __chkstk_darwin(v24);
    *(&v29 - 2) = v23;
    *(&v29 - 1) = a2;
    TTSVBVoiceBankingManager.logLongTermMessage(_:)();

    v25 = type metadata accessor for TaskPriority();
    v26 = v30;
    (*(*(v25 - 8) + 56))(v30, 1, 1, v25);
    v27 = swift_allocObject();
    v27[2] = 0;
    v27[3] = 0;
    v27[4] = v3;
    v28 = v3;
    sub_10000D160(0, 0, v26, &unk_100028098, v27);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000158A0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

char *sub_100015994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v23 = v7;
    v15 = *&result[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_queue];
    v16 = result;
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    aBlock[4] = a3;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000218B0;
    aBlock[3] = a4;
    v18 = _Block_copy(aBlock);
    v19 = v15;
    v22 = v16;
    static DispatchQoS.unspecified.getter();
    v24 = &_swiftEmptyArrayStorage;
    sub_10001EA80(&qword_100035458, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    v21 = v10;
    sub_100001EE8(&qword_100035460, &qword_100027F88);
    sub_100020814(&qword_100035468, &qword_100035460, &qword_100027F88, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v18);

    (*(v23 + 8))(v9, v6);
    (*(v11 + 8))(v13, v21);
  }

  return result;
}

void *sub_100015C9C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v37 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v35 - v7;
  v9 = type metadata accessor for TTSVBError();
  v38 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v35 - v13;
  v15 = sub_100001EE8(&unk_1000351F0, &unk_1000280C0);
  __chkstk_darwin(v15);
  v17 = &v35 - v16;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v19 = result;
    sub_100005E54(a1, v17, &unk_1000351F0, &unk_1000280C0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v22 = v38;
      (*(v38 + 32))(v14, v17, v9);
      v23 = sub_100012250(&OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___voiceBankingManager, &type metadata accessor for TTSVBVoiceBankingManager);
      __chkstk_darwin(v23);
      *(&v35 - 2) = v14;
      TTSVBVoiceBankingManager.logLongTermError(_:)();

      static TTSVBLog.daemon.getter();
      (*(v22 + 16))(v12, v14, v9);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v39 = v27;
        *v26 = 136315138;
        v36 = TTSVBError.description.getter();
        v29 = v28;
        (*(v38 + 8))(v12, v9);
        v30 = sub_100004A24(v36, v29, &v39);

        *(v26 + 4) = v30;
        _os_log_impl(&_mh_execute_header, v24, v25, "Error loading data stores: %s", v26, 0xCu);
        sub_100005D40(v27);
      }

      else
      {

        (*(v38 + 8))(v12, v9);
      }

      v31 = *(v37 + 8);
      v31(v8, v3);
      static TTSVBLog.daemon.getter();
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "voicebankingd will now exit with error 1", v34, 2u);
      }

      v31(v6, v3);
      exit(1);
    }

    v20 = sub_100012250(&OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___voiceBankingManager, &type metadata accessor for TTSVBVoiceBankingManager);
    *(swift_allocObject() + 16) = v19;
    v21 = v19;
    TTSVBVoiceBankingManager.performVoiceDatastoreMigrationV1IfNeeded(completion:)();

    return sub_100005EBC(v17, &unk_1000351F0, &unk_1000280C0);
  }

  return result;
}

uint64_t sub_1000161D4(char *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v5 = *(v15 - 8);
  __chkstk_darwin(v15);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&a1[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_queue];
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  aBlock[4] = sub_1000209EC;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000218B0;
  aBlock[3] = &unk_100032400;
  v10 = _Block_copy(aBlock);
  v11 = v8;
  v12 = a1;
  static DispatchQoS.unspecified.getter();
  v17 = &_swiftEmptyArrayStorage;
  sub_10001EA80(&qword_100035458, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100001EE8(&qword_100035460, &qword_100027F88);
  sub_100020814(&qword_100035468, &qword_100035460, &qword_100027F88, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);

  (*(v16 + 8))(v4, v2);
  (*(v5 + 8))(v7, v15);
}

void sub_1000164B4()
{
  v1 = type metadata accessor for TTSVBPath();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v90 = v5;
  v91 = v6;
  v7 = __chkstk_darwin(v5);
  v84 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v89 = &v84 - v10;
  v11 = __chkstk_darwin(v9);
  v88 = &v84 - v12;
  v13 = __chkstk_darwin(v11);
  v87 = &v84 - v14;
  v15 = __chkstk_darwin(v13);
  v86 = &v84 - v16;
  __chkstk_darwin(v15);
  v18 = &v84 - v17;
  v19 = type metadata accessor for DispatchPredicate();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = (&v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_queue;
  v92 = v0;
  v24 = *(v0 + OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_queue);
  *v22 = v24;
  (*(v20 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v19);
  v25 = v24;
  LOBYTE(v24) = _dispatchPreconditionTest(_:)();
  (*(v20 + 8))(v22, v19);
  if (v24)
  {
    v85 = v23;
    static TTSVBLog.daemon.getter();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Did load data stores.", v28, 2u);
    }

    v29 = v91 + 1;
    v30 = v91[1];
    v31 = v18;
    v32 = v90;
    v30(v31, v90);
    (*(v2 + 104))(v4, enum case for TTSVBPath.root(_:), v1);
    TTSVBPath.markAsExcludedFromBackup()();
    if (v33)
    {
      (*(v2 + 8))(v4, v1);
      v34 = v84;
      static TTSVBLog.daemon.getter();
      swift_errorRetain();
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        aBlock = v91;
        *v37 = 136315138;
        v38 = _convertErrorToNSError(_:)();
        v39 = v32;
        v40 = v30;
        v41 = v29;
        v42 = [v38 debugDescription];

        v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v45 = v44;

        v29 = v41;
        v30 = v40;
        v32 = v39;
        v46 = sub_100004A24(v43, v45, &aBlock);

        *(v37 + 4) = v46;
        _os_log_impl(&_mh_execute_header, v35, v36, "Could not mark root path as excluded from backups: %s", v37, 0xCu);
        sub_100005D40(v91);

        v30(v84, v39);
      }

      else
      {

        v30(v34, v32);
      }
    }

    else
    {
      (*(v2 + 8))(v4, v1);
    }

    v47 = v86;
    static TTSVBLog.daemon.getter();
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.info.getter();
    v50 = os_log_type_enabled(v48, v49);
    v51 = v87;
    if (v50)
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v48, v49, "Will start monitoring for Live Speech preference changes", v52, 2u);
    }

    v30(v47, v32);
    v53 = sub_100012190(&OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___liveSpeechSyncController, type metadata accessor for LiveSpeechSyncController, VoiceBankingXPCServer.__allocating_init());
    sub_100021E7C();

    static TTSVBLog.daemon.getter();
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&_mh_execute_header, v54, v55, "Will check in for notifyd and BackgroundSystemTask events", v56, 2u);
    }

    v91 = v29;
    v87 = v30;
    v30(v51, v32);
    v57 = objc_opt_self();
    v58 = [v57 sharedScheduler];
    v59 = String._bridgeToObjectiveC()();
    v60 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v97 = sub_100020A10;
    v98 = v60;
    aBlock = _NSConcreteStackBlock;
    v94 = 1107296256;
    v95 = sub_100002FFC;
    v96 = &unk_100032428;
    v61 = _Block_copy(&aBlock);

    [v58 registerForTaskWithIdentifier:v59 usingQueue:0 launchHandler:v61];
    _Block_release(v61);

    v62 = [v57 sharedScheduler];
    v63 = String._bridgeToObjectiveC()();
    v64 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v97 = sub_100020A18;
    v98 = v64;
    aBlock = _NSConcreteStackBlock;
    v94 = 1107296256;
    v95 = sub_100002FFC;
    v96 = &unk_100032450;
    v65 = _Block_copy(&aBlock);

    v66 = v92;
    [v62 registerForTaskWithIdentifier:v63 usingQueue:0 launchHandler:v65];
    _Block_release(v65);

    v67 = *(v66 + v85);
    v68 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v97 = sub_100020A20;
    v98 = v68;
    aBlock = _NSConcreteStackBlock;
    v94 = 1107296256;
    v95 = sub_10001B034;
    v96 = &unk_100032478;
    v69 = _Block_copy(&aBlock);
    v70 = v67;

    xpc_set_event_stream_handler("com.apple.notifyd.matching", v70, v69);
    _Block_release(v69);

    v71 = v88;
    static TTSVBLog.daemon.getter();
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&_mh_execute_header, v72, v73, "Will register for user notifications", v74, 2u);
    }

    v75 = v71;
    v76 = v90;
    v77 = v87;
    (v87)(v75, v90);
    v78 = sub_100012190(&OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___userNotificationManager, type metadata accessor for VoiceBankingUserNotificationManager, VoiceBankingXPCServer.__allocating_init());
    sub_1000020E0();

    v79 = v89;
    static TTSVBLog.daemon.getter();
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&_mh_execute_header, v80, v81, "Will start XPC services", v82, 2u);
    }

    v77(v79, v76);
    sub_1000120FC();
    sub_100001AFC();

    v83 = sub_100012044();
    VoiceBankingXPCServer.start()();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100016FB8(uint64_t a1, void *a2)
{
  v40 = a2;
  v3 = type metadata accessor for TTSVBError();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v37 = &v36 - v8;
  v9 = type metadata accessor for Logger();
  v38 = *(v9 - 8);
  v39 = v9;
  v10 = __chkstk_darwin(v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v36 - v13;
  v15 = sub_100001EE8(&unk_1000351F0, &unk_1000280C0);
  __chkstk_darwin(v15);
  v17 = &v36 - v16;
  sub_100005E54(a1, &v36 - v16, &unk_1000351F0, &unk_1000280C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = v37;
    (*(v4 + 32))(v37, v17, v3);
    static TTSVBLog.daemon.getter();
    (*(v4 + 16))(v7, v18, v3);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v41 = v22;
      *v21 = 136315138;
      v23 = TTSVBError.description.getter();
      v25 = v24;
      v26 = *(v4 + 8);
      v26(v7);
      v27 = sub_100004A24(v23, v25, &v41);

      *(v21 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v19, v20, "Error synchronizing file-backed futures: %s", v21, 0xCu);
      sub_100005D40(v22);

      (*(v38 + 8))(v12, v39);
      (v26)(v37, v3);
    }

    else
    {

      v31 = *(v4 + 8);
      v31(v7, v3);
      (*(v38 + 8))(v12, v39);
      v31(v37, v3);
    }
  }

  else
  {
    static TTSVBLog.daemon.getter();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Successfully finished synchronizing file-backed futures", v30, 2u);
    }

    (*(v38 + 8))(v14, v39);
    sub_100005EBC(v17, &unk_1000351F0, &unk_1000280C0);
  }

  v32 = v40;
  v33 = sub_100012250(&OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___voiceBankingManager, &type metadata accessor for TTSVBVoiceBankingManager);
  *(swift_allocObject() + 16) = v32;
  v34 = v32;
  TTSVBVoiceBankingManager.synchronizeAudioFileBackedFuturesForAllVoices(completion:)();
}

void sub_100017488(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v3 = type metadata accessor for TTSVBError();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v34 = &v33 - v8;
  v9 = type metadata accessor for Logger();
  v35 = *(v9 - 8);
  v36 = v9;
  v10 = __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v33 - v13;
  v15 = sub_100001EE8(&unk_1000351F0, &unk_1000280C0);
  __chkstk_darwin(v15);
  v17 = &v33 - v16;
  sub_100005E54(a1, &v33 - v16, &unk_1000351F0, &unk_1000280C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = v34;
    (*(v4 + 32))(v34, v17, v3);
    static TTSVBLog.daemon.getter();
    (*(v4 + 16))(v7, v18, v3);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v38 = v22;
      *v21 = 136315138;
      v23 = TTSVBError.description.getter();
      v25 = v24;
      v26 = *(v4 + 8);
      v26(v7);
      v27 = sub_100004A24(v23, v25, &v38);

      *(v21 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v19, v20, "Error synchronizing audio file-backed sample futures: %s", v21, 0xCu);
      sub_100005D40(v22);

      (*(v35 + 8))(v12, v36);
      (v26)(v34, v3);
    }

    else
    {

      v31 = *(v4 + 8);
      v31(v7, v3);
      (*(v35 + 8))(v12, v36);
      v31(v34, v3);
    }
  }

  else
  {
    static TTSVBLog.daemon.getter();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Successfully finished synchronizing audio file-backed sample futures", v30, 2u);
    }

    (*(v35 + 8))(v14, v36);
    sub_100005EBC(v17, &unk_1000351F0, &unk_1000280C0);
  }

  v32 = sub_100012250(&OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___voiceBankingManager, &type metadata accessor for TTSVBVoiceBankingManager);
  TTSVBVoiceBankingManager.importCloudVoicesIntoLocalDatastore(completion:)();
}

uint64_t sub_10001792C(uint64_t a1)
{
  v2 = type metadata accessor for TTSVBError();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v32 = &v32 - v7;
  v8 = type metadata accessor for Logger();
  v33 = *(v8 - 8);
  v34 = v8;
  v9 = __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v32 - v12;
  v14 = sub_100001EE8(&unk_1000351F0, &unk_1000280C0);
  __chkstk_darwin(v14);
  v16 = &v32 - v15;
  sub_100005E54(a1, &v32 - v15, &unk_1000351F0, &unk_1000280C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = v32;
    (*(v3 + 32))(v32, v16, v2);
    static TTSVBLog.daemon.getter();
    (*(v3 + 16))(v6, v17, v2);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v35 = v21;
      *v20 = 136315138;
      v22 = TTSVBError.description.getter();
      v24 = v23;
      v25 = *(v3 + 8);
      v25(v6);
      v26 = sub_100004A24(v22, v24, &v35);

      *(v20 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v18, v19, "Error importing iCloud data into local stores: %s", v20, 0xCu);
      sub_100005D40(v21);

      (*(v33 + 8))(v11, v34);
      return (v25)(v32, v2);
    }

    else
    {

      v31 = *(v3 + 8);
      v31(v6, v2);
      (*(v33 + 8))(v11, v34);
      return (v31)(v32, v2);
    }
  }

  else
  {
    static TTSVBLog.daemon.getter();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Successfully finished importing iCloud data into local store", v30, 2u);
    }

    (*(v33 + 8))(v13, v34);
    return sub_100005EBC(v16, &unk_1000351F0, &unk_1000280C0);
  }
}

uint64_t sub_100017DA0(uint64_t a1)
{
  v2 = type metadata accessor for TTSVBError();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v32 = &v31 - v7;
  v8 = type metadata accessor for Logger();
  v33 = *(v8 - 8);
  v34 = v8;
  v9 = __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v31 - v12;
  v14 = sub_100001EE8(&unk_1000351F0, &unk_1000280C0);
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  sub_100005E54(a1, &v31 - v15, &unk_1000351F0, &unk_1000280C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = v32;
    (*(v3 + 32))(v32, v16, v2);
    static TTSVBLog.daemon.getter();
    v18 = *(v3 + 16);
    v18(v6, v17, v2);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v21 = 138412290;
      sub_10001EA80(&qword_100035500, &type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
      swift_allocError();
      v18(v22, v6, v2);
      v23 = _swift_stdlib_bridgeErrorToNSError();
      v24 = *(v3 + 8);
      v24(v6, v2);
      *(v21 + 4) = v23;
      v25 = v31;
      *v31 = v23;
      _os_log_impl(&_mh_execute_header, v19, v20, "Could not repair datastore. Error: %@", v21, 0xCu);
      sub_100005EBC(v25, &qword_1000350B0, &qword_100027C40);

      (*(v33 + 8))(v11, v34);
      return (v24)(v32, v2);
    }

    else
    {

      v30 = *(v3 + 8);
      v30(v6, v2);
      (*(v33 + 8))(v11, v34);
      return (v30)(v32, v2);
    }
  }

  else
  {
    static TTSVBLog.daemon.getter();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Succesfully completed datastore repair.", v29, 2u);
    }

    (*(v33 + 8))(v13, v34);
    return sub_100005EBC(v16, &unk_1000351F0, &unk_1000280C0);
  }
}

void *sub_10001824C(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static TTSVBLog.daemon.getter();
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  v10 = os_log_type_enabled(v8, v9);
  v24 = v7;
  if (v10)
  {
    v11 = swift_slowAlloc();
    v23 = v3;
    v12 = v11;
    v13 = swift_slowAlloc();
    v25[0] = v13;
    *v12 = 136315138;
    v14 = [v7 description];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = sub_100004A24(v15, v17, v25);

    *(v12 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v8, v9, "Wake event received: [BGSystemTask] ServerConfigCheck state=%s", v12, 0xCu);
    sub_100005D40(v13);

    (*(v4 + 8))(v6, v23);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v20 = result;
    v21 = sub_10001D7C4(&OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___serverConfigChecker, type metadata accessor for VoiceBankingServerConfigChecker, sub_1000117C4);

    (*(*v21 + 112))(v24);
  }

  return result;
}

id sub_1000184E0(void *a1, uint64_t a2)
{
  v4 = sub_100001EE8(&qword_100035098, &qword_100027BC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v39 - v5;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v39 - v12;
  static TTSVBLog.daemon.getter();
  v14 = a1;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  v17 = os_log_type_enabled(v15, v16);
  v43 = v14;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v41 = v11;
    v19 = v18;
    v20 = swift_slowAlloc();
    v42 = a2;
    v40 = v20;
    v44 = v20;
    *v19 = 136315138;
    v21 = [v14 description];
    v22 = v8;
    v23 = v7;
    v24 = v6;
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28 = v25;
    v6 = v24;
    v7 = v23;
    v8 = v22;
    v29 = sub_100004A24(v28, v27, &v44);

    *(v19 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v15, v16, "Wake event received: [BGSystemTask] V1ToV2UpgradeCheck state=%s", v19, 0xCu);
    sub_100005D40(v40);
    a2 = v42;

    v11 = v41;
  }

  v30 = *(v8 + 8);
  v30(v13, v7);
  if (TTSVBIsPersonalVoiceVersion2Enabled() && TTSVBDeviceSupportsV2Voices()())
  {
    v31 = type metadata accessor for TaskPriority();
    (*(*(v31 - 8) + 56))(v6, 1, 1, v31);
    v32 = swift_allocObject();
    v32[2] = 0;
    v32[3] = 0;
    v33 = v43;
    v32[4] = a2;
    v32[5] = v33;
    v34 = v33;

    sub_1000196F8(0, 0, v6, &unk_1000280E8, v32);
  }

  else
  {
    static TTSVBLog.daemon.getter();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "[BGSystemTask] V1ToV2UpgradeCheck: Device does not support PV2 model upgrade. Setting task complete.", v38, 2u);
    }

    v30(v11, v7);
    return [v43 setTaskCompleted];
  }
}

uint64_t sub_1000188AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return _swift_task_switch(sub_1000188D0, 0, 0);
}

uint64_t sub_1000188D0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 72) = v2;
    *v2 = v0;
    v2[1] = sub_1000189CC;
    v3 = *(v0 + 56);

    return sub_100018B08(v3);
  }

  else
  {
    **(v0 + 40) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_1000189CC()
{
  v1 = *(*v0 + 64);

  return _swift_task_switch(sub_100018AE0, 0, 0);
}

uint64_t sub_100018B08(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for Logger();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_100018BE0, 0, 0);
}

uint64_t sub_100018BE0()
{
  v31 = v0;
  v1 = v0[8];
  static TTSVBLog.common.getter();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[14];
  v8 = v0[10];
  v7 = v0[11];
  if (v5)
  {
    v9 = v0[8];
    v29 = v0[14];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v30 = v11;
    *v10 = 136315138;
    v12 = [v9 identifier];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_100004A24(v13, v15, &v30);

    *(v10 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v3, v4, "performV1ToV2VoiceMigrationTask: Will perform V1->V2 voice migration bg task. ID=%s", v10, 0xCu);
    sub_100005D40(v11);

    v17 = *(v7 + 8);
    v17(v29, v8);
  }

  else
  {

    v17 = *(v7 + 8);
    v17(v6, v8);
  }

  v0[15] = v17;
  v19 = v0[8];
  v18 = v0[9];
  v20 = sub_100012250(&OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___voiceBankingManager, &type metadata accessor for TTSVBVoiceBankingManager);
  *(swift_task_alloc() + 16) = v19;
  TTSVBVoiceBankingManager.logLongTermMessage(_:)();

  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  *(v21 + 24) = v18;
  v0[6] = sub_100021378;
  v0[7] = v21;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100010844;
  v0[5] = &unk_100032810;
  v22 = _Block_copy(v0 + 2);
  v23 = v19;
  v24 = v18;

  [v23 setExpirationHandler:v22];
  _Block_release(v22);
  v25 = OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___voiceBankingManager;
  v0[16] = OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___voiceBankingManager;
  v26 = *&v24[v25];
  v0[17] = v26;
  v26;
  v27 = swift_task_alloc();
  v0[18] = v27;
  *v27 = v0;
  v27[1] = sub_100018F10;

  return TTSVBVoiceBankingManager.startV1ToV2VoiceMigrationIfNeeded()();
}

uint64_t sub_100018F10()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_100019278;
  }

  else
  {

    v3 = sub_10001902C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10001902C()
{
  v25 = v0;
  v1 = v0[8];
  static TTSVBLog.common.getter();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[15];
  v7 = v0[13];
  v8 = v0[10];
  if (v5)
  {
    v9 = v0[8];
    v23 = v0[15];
    v10 = swift_slowAlloc();
    v22 = v7;
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136315138;
    v12 = [v9 identifier];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_100004A24(v13, v15, &v24);

    *(v10 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v3, v4, "performV1ToV2VoiceMigrationTask: Marking bg task complete. ID=%s", v10, 0xCu);
    sub_100005D40(v11);

    v23(v22, v8);
  }

  else
  {

    v6(v7, v8);
  }

  v17 = v0[8];
  v18 = *(v0[9] + v0[16]);
  *(swift_task_alloc() + 16) = v17;
  v19 = v18;
  TTSVBVoiceBankingManager.logLongTermMessage(_:)();

  [v17 setTaskCompleted];

  v20 = v0[1];

  return v20();
}

uint64_t sub_100019278()
{
  v50 = v0;
  v1 = *(v0 + 64);

  static TTSVBLog.daemon.getter();
  v2 = v1;
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v45 = *(v0 + 96);
    v47 = *(v0 + 120);
    v44 = *(v0 + 80);
    v5 = *(v0 + 64);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v49 = v8;
    *v6 = 136315394;
    v9 = [v5 identifier];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = sub_100004A24(v10, v12, &v49);

    *(v6 + 4) = v13;
    *(v6 + 12) = 2112;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v14;
    *v7 = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "performV1ToV2VoiceMigrationTask bg task failed. ID=%s. Error=%@", v6, 0x16u);
    sub_100005EBC(v7, &qword_1000350B0, &qword_100027C40);

    sub_100005D40(v8);

    v47(v45, v44);
  }

  else
  {
    v15 = *(v0 + 120);
    v16 = *(v0 + 96);
    v17 = *(v0 + 80);

    v15(v16, v17);
  }

  v18 = *(v0 + 152);
  v19 = *(v0 + 64);
  v20 = *(*(v0 + 72) + *(v0 + 128));
  v21 = swift_task_alloc();
  *(v21 + 16) = v19;
  *(v21 + 24) = v18;
  v22 = v20;
  TTSVBVoiceBankingManager.logLongTermError(_:)();

  v23 = *(v0 + 64);
  static TTSVBLog.common.getter();
  v24 = v23;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  v27 = os_log_type_enabled(v25, v26);
  v28 = *(v0 + 120);
  v29 = *(v0 + 104);
  v30 = *(v0 + 80);
  if (v27)
  {
    v31 = *(v0 + 64);
    v48 = *(v0 + 120);
    v32 = swift_slowAlloc();
    v46 = v29;
    v33 = swift_slowAlloc();
    v49 = v33;
    *v32 = 136315138;
    v34 = [v31 identifier];
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    v38 = sub_100004A24(v35, v37, &v49);

    *(v32 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v25, v26, "performV1ToV2VoiceMigrationTask: Marking bg task complete. ID=%s", v32, 0xCu);
    sub_100005D40(v33);

    v48(v46, v30);
  }

  else
  {

    v28(v29, v30);
  }

  v39 = *(v0 + 64);
  v40 = *(*(v0 + 72) + *(v0 + 128));
  *(swift_task_alloc() + 16) = v39;
  v41 = v40;
  TTSVBVoiceBankingManager.logLongTermMessage(_:)();

  [v39 setTaskCompleted];

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_1000196F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100001EE8(&qword_100035098, &qword_100027BC0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100005E54(a3, v25 - v10, &qword_100035098, &qword_100027BC0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100005EBC(v11, &qword_100035098, &qword_100027BC0);
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

      sub_100001EE8(&qword_100035570, &qword_100028100);
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

      sub_100005EBC(a3, &qword_100035098, &qword_100027BC0);

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

  sub_100005EBC(a3, &qword_100035098, &qword_100027BC0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_100001EE8(&qword_100035570, &qword_100028100);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

char *sub_100019A0C(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchTime();
  v83 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v84 = &v80 - v8;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  v88 = v9;
  v89 = v10;
  __chkstk_darwin(v9);
  v87 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Logger();
  v90 = *(v16 - 8);
  v17 = __chkstk_darwin(v16);
  v19 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v80 - v20;
  result = xpc_dictionary_get_string(a1, _xpc_event_key_name);
  if (!result)
  {
    return result;
  }

  v81 = v19;
  v82 = v4;
  v85 = a2;
  v86 = v15;
  v23 = String.init(cString:)();
  v25 = v24;
  static TTSVBLog.daemon.getter();

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v80 = v7;
    v29 = v13;
    v30 = v28;
    v31 = v16;
    v32 = v12;
    v33 = swift_slowAlloc();
    aBlock = v33;
    *v30 = 136315138;
    *(v30 + 4) = sub_100004A24(v23, v25, &aBlock);
    _os_log_impl(&_mh_execute_header, v26, v27, "Wake event received: [notifyd] %s", v30, 0xCu);
    sub_100005D40(v33);
    v12 = v32;
    v16 = v31;

    v13 = v29;
    v7 = v80;

    v34 = *(v90 + 8);
    v34(v21, v31);
  }

  else
  {

    v34 = *(v90 + 8);
    v34(v21, v16);
  }

  if (v23 == 0xD000000000000013 && 0x800000010002B950 == v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v35 = v85;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    v36 = v86;
    if (result)
    {
      v37 = result;
      v38 = *&result[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_queue];

      v96 = sub_100020B48;
      v97 = v35;
      aBlock = _NSConcreteStackBlock;
      v93 = 1107296256;
      v39 = &unk_1000325E0;
LABEL_10:
      v94 = sub_1000218B0;
      v95 = v39;
      v40 = _Block_copy(&aBlock);

      static DispatchQoS.unspecified.getter();
      v91 = &_swiftEmptyArrayStorage;
      sub_10001EA80(&qword_100035458, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100001EE8(&qword_100035460, &qword_100027F88);
      sub_100020814(&qword_100035468, &qword_100035460, &qword_100027F88, &protocol conformance descriptor for [A]);
      v42 = v87;
      v41 = v88;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v40);

      (*(v89 + 8))(v42, v41);
      (*(v13 + 8))(v36, v12);
    }
  }

  else
  {
    if (v23 == 0xD00000000000001ELL && 0x800000010002B970 == v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
    }

    if (v23 == 0xD00000000000001ELL && 0x800000010002B990 == v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v43 = v85;
      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      v44 = v82;
      if (result)
      {
        v45 = result;
        v81 = *&result[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_queue];

        static DispatchTime.now()();
        + infix(_:_:)();
        v90 = *(v83 + 8);
        (v90)(v7, v44);
        v96 = sub_100020AB8;
        v97 = v43;
        aBlock = _NSConcreteStackBlock;
        v93 = 1107296256;
        v94 = sub_1000218B0;
        v95 = &unk_1000325B8;
        v46 = _Block_copy(&aBlock);

        static DispatchQoS.unspecified.getter();
        v91 = &_swiftEmptyArrayStorage;
        sub_10001EA80(&qword_100035458, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_100001EE8(&qword_100035460, &qword_100027F88);
        sub_100020814(&qword_100035468, &qword_100035460, &qword_100027F88, &protocol conformance descriptor for [A]);
        v47 = v44;
        v49 = v87;
        v48 = v88;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v50 = v84;
        v51 = v86;
        v52 = v81;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v46);

        (*(v89 + 8))(v49, v48);
        (*(v13 + 8))(v51, v12);
        (v90)(v50, v47);
      }
    }

    else if (v23 == 0xD00000000000001ELL && 0x800000010002B9B0 == v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v53 = v85;
      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      v36 = v86;
      if (result)
      {
        v54 = result;
        v38 = *&result[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_queue];

        v96 = sub_100020A58;
        v97 = v53;
        aBlock = _NSConcreteStackBlock;
        v93 = 1107296256;
        v39 = &unk_100032590;
        goto LABEL_10;
      }
    }

    else if (v23 == 0xD00000000000001ELL && 0x800000010002B9D0 == v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v55 = v85;
      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      v36 = v86;
      if (result)
      {
        v56 = result;
        v38 = *&result[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_queue];

        v96 = sub_100020A50;
        v97 = v55;
        aBlock = _NSConcreteStackBlock;
        v93 = 1107296256;
        v39 = &unk_100032568;
        goto LABEL_10;
      }
    }

    else if (v23 == 0xD00000000000001CLL && 0x800000010002B9F0 == v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v57 = v85;
      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      v36 = v86;
      if (result)
      {
        v58 = result;
        v38 = *&result[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_queue];

        v96 = sub_100020A48;
        v97 = v57;
        aBlock = _NSConcreteStackBlock;
        v93 = 1107296256;
        v39 = &unk_100032540;
        goto LABEL_10;
      }
    }

    else
    {
      if ((v23 != 0xD00000000000001ELL || 0x800000010002BA10 != v25) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        v61 = v23;
        if (v23 == 0xD00000000000001BLL && 0x800000010002BA30 == v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v62 = v85;
          swift_beginAccess();
          result = swift_unknownObjectWeakLoadStrong();
          v63 = v86;
          if (!result)
          {
            return result;
          }

          v64 = result;
          v65 = v12;
          v66 = *&result[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_queue];

          v96 = sub_100020A38;
          v97 = v62;
          aBlock = _NSConcreteStackBlock;
          v93 = 1107296256;
          v67 = &unk_1000324F0;
        }

        else if (v23 == 0xD000000000000019 && 0x800000010002BA50 == v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v71 = v85;
          swift_beginAccess();
          result = swift_unknownObjectWeakLoadStrong();
          v63 = v86;
          if (!result)
          {
            return result;
          }

          v72 = result;
          v65 = v12;
          v66 = *&result[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_queue];

          v96 = sub_100020A30;
          v97 = v71;
          aBlock = _NSConcreteStackBlock;
          v93 = 1107296256;
          v67 = &unk_1000324C8;
        }

        else
        {
          if ((v23 != 0xD00000000000001BLL || 0x800000010002BA70 != v25) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            static TTSVBLog.daemon.getter();

            v75 = Logger.logObject.getter();
            v76 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v75, v76))
            {
              v77 = swift_slowAlloc();
              v78 = swift_slowAlloc();
              aBlock = v78;
              *v77 = 136315138;
              v79 = sub_100004A24(v61, v25, &aBlock);

              *(v77 + 4) = v79;
              _os_log_impl(&_mh_execute_header, v75, v76, "Received unknown notifyd event: %s", v77, 0xCu);
              sub_100005D40(v78);
            }

            else
            {
            }

            return (v34)(v81, v16);
          }

          v73 = v85;
          swift_beginAccess();
          result = swift_unknownObjectWeakLoadStrong();
          v63 = v86;
          if (!result)
          {
            return result;
          }

          v74 = result;
          v65 = v12;
          v66 = *&result[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_queue];

          v96 = sub_100020A28;
          v97 = v73;
          aBlock = _NSConcreteStackBlock;
          v93 = 1107296256;
          v67 = &unk_1000324A0;
        }

        v94 = sub_1000218B0;
        v95 = v67;
        v68 = _Block_copy(&aBlock);

        static DispatchQoS.unspecified.getter();
        v91 = &_swiftEmptyArrayStorage;
        sub_10001EA80(&qword_100035458, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_100001EE8(&qword_100035460, &qword_100027F88);
        sub_100020814(&qword_100035468, &qword_100035460, &qword_100027F88, &protocol conformance descriptor for [A]);
        v70 = v87;
        v69 = v88;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v68);

        (*(v89 + 8))(v70, v69);
        (*(v13 + 8))(v63, v65);
      }

      v59 = v85;
      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      v36 = v86;
      if (result)
      {
        v60 = result;
        v38 = *&result[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_queue];

        v96 = sub_100020A40;
        v97 = v59;
        aBlock = _NSConcreteStackBlock;
        v93 = 1107296256;
        v39 = &unk_100032518;
        goto LABEL_10;
      }
    }
  }

  return result;
}

char *sub_10001AAD4(uint64_t a1)
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = *&result[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_queue];
    *v4 = v7;
    (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
    v8 = v7;
    LOBYTE(v7) = _dispatchPreconditionTest(_:)();
    result = (*(v2 + 8))(v4, v1);
    if (v7)
    {
      v9 = swift_allocObject();
      *(v9 + 16) = v6;
      v10 = v6;
      sub_10001CBF4(0x6E55207473726946, 0xEC0000006B636F6CLL, sub_100020B50, v9);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10001AC78(unsigned __int8 a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *&v2[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_queue];
  *v7 = v8;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v7, v4);
  if (v8)
  {
    static TTSVBAnalytics.trainingEventOccurred(eventName:)();

    v11 = sub_100012250(&OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___voiceBankingManager, &type metadata accessor for TTSVBVoiceBankingManager);
    __chkstk_darwin(v11);
    *(&v25 - 16) = a1;
    TTSVBVoiceBankingManager.logLongTermMessage(_:)();

    v25 = 0;
    v26 = 0xE000000000000000;
    _StringGuts.grow(_:)(32);

    v25 = 0xD00000000000001ELL;
    v26 = 0x800000010002BA90;
    v12 = 0xE400000000000000;
    v13 = 1701736292;
    if (a1 != 5)
    {
      v13 = 0x646573756170;
      v12 = 0xE600000000000000;
    }

    v14 = 0x656C6C65636E6163;
    v15 = 0xE600000000000000;
    if (a1 == 3)
    {
      v15 = 0xE900000000000064;
    }

    else
    {
      v14 = 0x64656C696166;
    }

    if (a1 <= 4u)
    {
      v13 = v14;
      v12 = v15;
    }

    v16 = 0x657474696D627573;
    v17 = 0xE700000000000000;
    if (a1 == 1)
    {
      v17 = 0xE900000000000064;
    }

    else
    {
      v16 = 0x676E696E6E7572;
    }

    if (!a1)
    {
      v16 = 0x656E696665646E75;
      v17 = 0xE900000000000064;
    }

    if (a1 <= 2u)
    {
      v18 = v16;
    }

    else
    {
      v18 = v13;
    }

    if (a1 <= 2u)
    {
      v19 = v17;
    }

    else
    {
      v19 = v12;
    }

    v20 = v19;
    String.append(_:)(*&v18);

    v21 = v25;
    v22 = v26;
    v23 = swift_allocObject();
    *(v23 + 16) = v2;
    *(v23 + 24) = a1;
    v24 = v2;
    sub_10001CBF4(v21, v22, sub_100020D8C, v23);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001B034(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_10001B0AC(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10001B1B0(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10001B2C0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000200D8(*a1);
  *a2 = result;
  return result;
}

void sub_10001B2F0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x656E696665646E75;
  v4 = 0xE400000000000000;
  v5 = 1701736292;
  if (v2 != 5)
  {
    v5 = 0x646573756170;
    v4 = 0xE600000000000000;
  }

  v6 = 0x656C6C65636E6163;
  v7 = 0xE600000000000000;
  if (v2 == 3)
  {
    v7 = 0xE900000000000064;
  }

  else
  {
    v6 = 0x64656C696166;
  }

  if (*v1 <= 4u)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x657474696D627573;
  v9 = 0xE700000000000000;
  if (v2 == 1)
  {
    v9 = 0xE900000000000064;
  }

  else
  {
    v8 = 0x676E696E6E7572;
  }

  if (*v1)
  {
    v3 = v8;
    v10 = v9;
  }

  else
  {
    v10 = 0xE900000000000064;
  }

  if (*v1 <= 2u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (*v1 <= 2u)
  {
    v12 = v10;
  }

  else
  {
    v12 = v4;
  }

  *a1 = v11;
  a1[1] = v12;
}

uint64_t sub_10001B3BC(uint64_t a1, char *a2, char a3, char a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v11 = *(v21 - 8);
  __chkstk_darwin(v21);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *&a2[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_queue];
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a2;
  *(v15 + 32) = a1;
  *(v15 + 40) = a4;
  aBlock[4] = sub_100020EE0;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000218B0;
  aBlock[3] = &unk_1000326F8;
  v16 = _Block_copy(aBlock);
  v17 = v14;
  v18 = a2;

  static DispatchQoS.unspecified.getter();
  v23 = &_swiftEmptyArrayStorage;
  sub_10001EA80(&qword_100035458, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100001EE8(&qword_100035460, &qword_100027F88);
  sub_100020814(&qword_100035468, &qword_100035460, &qword_100027F88, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v22 + 8))(v10, v8);
  (*(v11 + 8))(v13, v21);
}

uint64_t sub_10001B6B8(char a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v97 = a4;
  v106 = a2;
  v6 = sub_100001EE8(&unk_1000351E0, &unk_100027E90);
  __chkstk_darwin(v6 - 8);
  v95 = &v94 - v7;
  v8 = type metadata accessor for UUID();
  v99 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v108 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v100 = &v94 - v12;
  v13 = __chkstk_darwin(v11);
  v115 = &v94 - v14;
  __chkstk_darwin(v13);
  v113 = &v94 - v15;
  v116 = type metadata accessor for TTSVBVoiceModelVersion();
  v16 = *(v116 - 1);
  v17 = __chkstk_darwin(v116);
  v19 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v114 = &v94 - v20;
  v21 = type metadata accessor for TTSVBVoiceModel();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v103 = &v94 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v94 - v25;
  v27 = sub_100001EE8(&qword_100035548, &qword_1000280D0);
  __chkstk_darwin(v27 - 8);
  v29 = &v94 - v28;
  if (a1)
  {
    sub_100015498(0xD000000000000019, 0x800000010002BAB0);
  }

  v30 = *(a3 + 16);
  if (v30)
  {
    v94 = v29;
    v98 = v22;
    v31 = *(v22 + 16);
    v32 = a3 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v110 = *(v22 + 72);
    v111 = v31;
    v105 = (v16 + 8);
    v112 = v22 + 16;
    v109 = (v22 + 8);
    v107 = v32;
    v33 = v32;
    v102 = v30;
    v104 = v21;
    v101 = v26;
    v31(v26, v32, v21);
    while (1)
    {
      if (TTSVBVoiceModel.isTraining()())
      {
        TTSVBVoiceModel.typedVersion.getter();
        static TTSVBVoiceModelVersion.version2_LLASSI.getter();
        sub_10001EA80(&qword_100035560, &type metadata accessor for TTSVBVoiceModelVersion, &protocol conformance descriptor for TTSVBVoiceModelVersion);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        if (v119 == v117 && v120 == v118)
        {
          v40 = *v105;
          v41 = v116;
          (*v105)(v19, v116);
          v40(v114, v41);

          v26 = v101;
LABEL_12:
          v42 = v98;
          v43 = v94;
          (*(v98 + 32))(v94, v26, v21);
          v44 = 0;
          v96 = 1;
LABEL_15:
          v45 = *(v42 + 56);
          LODWORD(v98) = 1;
          v45(v43, v44, 1, v21);
          result = sub_100005EBC(v43, &qword_100035548, &qword_1000280D0);
          v47 = 0;
          v101 = OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___userNotificationManager;
          v114 = (v99 + 16);
          v116 = (v99 + 8);
          v48 = v103;
          v49 = v102;
          while (2)
          {
            if (v47 >= v49)
            {
              __break(1u);
LABEL_57:
              __break(1u);
              return result;
            }

            v54 = v47;
            if (__OFADD__(v47++, 1))
            {
              goto LABEL_57;
            }

            v111(v48, v107 + v54 * v110, v21);
            v56 = TTSVBVoiceModel.creationDeviceUDID.getter();
            v58 = v57;
            v59 = MobileGestalt_get_current_device();
            if (v59 && (v60 = v59, v61 = MobileGestalt_copy_uniqueDeviceID_obj(), v60, v61))
            {
              v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v64 = v63;

              if (!v58)
              {
                goto LABEL_24;
              }

LABEL_27:
              if (v64)
              {
                if (v56 == v62 && v58 == v64)
                {

                  goto LABEL_18;
                }

                v90 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v90 & 1) == 0)
                {
LABEL_32:
                  if (TTSVBVoiceModel.isTraining()())
                  {
                    v105 = v47;
                    v65 = sub_100012190(&OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___userNotificationManager, type metadata accessor for VoiceBankingUserNotificationManager, VoiceBankingXPCServer.__allocating_init());
                    v66 = OBJC_IVAR____TtC13voicebankingd35VoiceBankingUserNotificationManager_modelIDsQueuedToSkipNotifications;
                    swift_beginAccess();
                    v67 = *&v65[v66];

                    TTSVBVoiceModel.modelID.getter();
                    if (*(v67 + 16))
                    {
                      sub_10001EA80(&qword_100035550, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
                      v68 = dispatch thunk of Hashable._rawHashValue(seed:)();
                      v69 = -1 << *(v67 + 32);
                      v70 = v68 & ~v69;
                      if ((*(v67 + 56 + ((v70 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v70))
                      {
                        v71 = ~v69;
                        v72 = *(v99 + 72);
                        v73 = *(v99 + 16);
                        while (1)
                        {
                          v74 = v115;
                          v73(v115, *(v67 + 48) + v72 * v70, v8);
                          sub_10001EA80(&qword_100035558, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
                          v75 = dispatch thunk of static Equatable.== infix(_:_:)();
                          v76 = *v116;
                          (*v116)(v74, v8);
                          if (v75)
                          {
                            break;
                          }

                          v70 = (v70 + 1) & v71;
                          if (((*(v67 + 56 + ((v70 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v70) & 1) == 0)
                          {
                            goto LABEL_16;
                          }
                        }

                        v76(v113, v8);
                        goto LABEL_49;
                      }
                    }

LABEL_16:

                    v50 = *v116;
                    (*v116)(v113, v8);
                    v51 = *(v106 + v101);
                    v52 = v100;
                    v48 = v103;
                    TTSVBVoiceModel.modelID.getter();
                    swift_beginAccess();
                    v53 = v115;
                    sub_10001EAEC(v115, v52);
                    swift_endAccess();

                    v50(v53, v8);
                    v21 = v104;
LABEL_17:
                    v49 = v102;
                    v47 = v105;
                    goto LABEL_18;
                  }

                  if (TTSVBVoiceModel.status.getter() == 7)
                  {
                    v77 = sub_100012190(&OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___userNotificationManager, type metadata accessor for VoiceBankingUserNotificationManager, VoiceBankingXPCServer.__allocating_init());
                    v78 = OBJC_IVAR____TtC13voicebankingd35VoiceBankingUserNotificationManager_modelIDsQueuedToSkipNotifications;
                    swift_beginAccess();
                    v79 = *&v77[v78];

                    v80 = v108;
                    TTSVBVoiceModel.modelID.getter();
                    if (*(v79 + 16))
                    {
                      v105 = v47;
                      sub_10001EA80(&qword_100035550, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
                      v81 = dispatch thunk of Hashable._rawHashValue(seed:)();
                      v82 = -1 << *(v79 + 32);
                      v83 = v81 & ~v82;
                      if ((*(v79 + 56 + ((v83 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v83))
                      {
                        v84 = ~v82;
                        v85 = *(v99 + 72);
                        v86 = *(v99 + 16);
                        while (1)
                        {
                          v87 = v115;
                          v86(v115, *(v79 + 48) + v85 * v83, v8);
                          sub_10001EA80(&qword_100035558, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
                          v88 = dispatch thunk of static Equatable.== infix(_:_:)();
                          v89 = *v116;
                          (*v116)(v87, v8);
                          if (v88)
                          {
                            break;
                          }

                          v83 = (v83 + 1) & v84;
                          if (((*(v79 + 56 + ((v83 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v83) & 1) == 0)
                          {
                            goto LABEL_45;
                          }
                        }

                        v89(v108, v8);
                        v91 = *(v106 + v101);
                        v92 = v115;
                        v48 = v103;
                        TTSVBVoiceModel.modelID.getter();
                        swift_beginAccess();
                        v93 = v95;
                        sub_10001EDCC(v92, v95);
                        swift_endAccess();

                        v89(v92, v8);
                        sub_100005EBC(v93, &unk_1000351E0, &unk_100027E90);
                        v21 = v104;
                        result = (*v109)(v48, v104);
                        LODWORD(v98) = 0;
                        v49 = v102;
                        v47 = v105;
                        if (v105 == v102)
                        {
                          return result;
                        }

                        continue;
                      }

LABEL_45:

                      (*v116)(v108, v8);
LABEL_49:
                      v21 = v104;
                      v48 = v103;
                      goto LABEL_17;
                    }

                    (*v116)(v80, v8);
                  }
                }

LABEL_18:
                result = (*v109)(v48, v21);
                if (v47 == v49)
                {
                  if ((v98 & 1) == 0)
                  {
                    return result;
                  }

                  return sub_10001C470(v97, v96);
                }

                continue;
              }
            }

            else
            {
              v62 = 0;
              v64 = 0;
              if (v58)
              {
                goto LABEL_27;
              }

LABEL_24:
              if (!v64)
              {
                goto LABEL_18;
              }
            }

            break;
          }

          goto LABEL_32;
        }

        v34 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v35 = *v105;
        v36 = v19;
        v37 = v19;
        v38 = v116;
        (*v105)(v36, v116);
        v39 = v38;
        v19 = v37;
        v35(v114, v39);
        v21 = v104;

        v26 = v101;
        if (v34)
        {
          goto LABEL_12;
        }
      }

      (*v109)(v26, v21);
      v33 += v110;
      if (!--v30)
      {
        v96 = 0;
        v44 = 1;
        v42 = v98;
        v43 = v94;
        goto LABEL_15;
      }

      v111(v26, v33, v21);
    }
  }

  (*(v22 + 56))(v29, 1, 1, v21);
  sub_100005EBC(v29, &qword_100035548, &qword_1000280D0);
  v96 = 0;
  return sub_10001C470(v97, v96);
}

uint64_t sub_10001C470(unsigned __int8 a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v61 = *(v6 - 8);
  v62 = v6;
  __chkstk_darwin(v6);
  v59 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for DispatchQoS();
  v58 = *(v60 - 8);
  __chkstk_darwin(v60);
  v57 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for DispatchTime();
  v56 = *(v63 - 8);
  v9 = __chkstk_darwin(v63);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v55 - v12;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_queue;
  v19 = *&v3[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_queue];
  *v17 = v19;
  (*(v15 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
  v20 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  result = (*(v15 + 8))(v17, v14);
  if (v19)
  {
    v22 = sub_100012190(&OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___userNotificationManager, type metadata accessor for VoiceBankingUserNotificationManager, VoiceBankingXPCServer.__allocating_init());
    v23 = sub_100003404();
    v24 = sub_10000340C(0xD000000000000010, 0x800000010002BAD0, v23 & 1);
    v26 = v25;

    if (a1 > 2u)
    {
      if (a1 <= 4u)
      {
        v55 = v24;
        v27 = v26;
        v28 = *&v3[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___userNotificationManager];
        if (a1 == 3)
        {
          v29 = sub_100003404();
          v30 = 0xD00000000000001FLL;
          v31 = 0x800000010002BB50;
          v32 = v29 & 1;
        }

        else
        {
          v44 = sub_100003404();
          v31 = 0x800000010002BB30;
          v32 = v44 & 1;
          v30 = 0xD00000000000001CLL;
        }

        v39 = sub_10000340C(v30, v31, v32);
        v41 = v45;

        goto LABEL_17;
      }

      if (a1 == 5)
      {
        v55 = v24;
        v27 = v26;
        v37 = *&v3[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___userNotificationManager];
        v38 = sub_100003404();
        v39 = sub_10000340C(0xD00000000000001ELL, 0x800000010002BB10, v38 & 1);
        v41 = v40;

LABEL_17:
        v34 = 1;
        goto LABEL_18;
      }

      if (a2)
      {
      }

      v55 = v24;
      v27 = v26;
      v33 = *&v3[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___userNotificationManager];
      v34 = 1;
      v36 = 0x800000010002BAF0;
      v35 = 0xD00000000000001CLL;
LABEL_22:
      v39 = sub_10000340C(v35, v36, 1);
      v41 = v54;

      goto LABEL_18;
    }

    if (!a1)
    {
      v55 = v24;
      v27 = v26;
      v41 = 0x800000010002BBB0;
      v39 = 0xD000000000000031;
      goto LABEL_17;
    }

    if (a1 == 1)
    {
      if ((a2 & 1) == 0)
      {
        v55 = v24;
        v27 = v26;
        v33 = *&v3[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___userNotificationManager];
        v34 = 1;
        v35 = 0xD00000000000001FLL;
        v36 = 0x800000010002BB90;
        goto LABEL_22;
      }
    }

    else if ((a2 & 1) == 0)
    {
      v55 = v24;
      v27 = v26;
      v42 = *&v3[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___userNotificationManager];
      v39 = sub_10000340C(0xD00000000000001DLL, 0x800000010002BB70, 1);
      v41 = v43;

      v34 = _AXSVoiceOverTouchEnabled() == 0;
LABEL_18:
      v46 = *&v3[v18];
      static DispatchTime.now()();
      + infix(_:_:)();
      v56 = *(v56 + 8);
      (v56)(v11, v63);
      v47 = swift_allocObject();
      v48 = v55;
      v47[2] = v3;
      v47[3] = v48;
      v47[4] = v27;
      v47[5] = v39;
      v47[6] = v41;
      v47[7] = v34;
      aBlock[4] = sub_100020F38;
      aBlock[5] = v47;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000218B0;
      aBlock[3] = &unk_100032748;
      v49 = _Block_copy(aBlock);
      v50 = v3;
      v51 = v57;
      static DispatchQoS.unspecified.getter();
      v64 = &_swiftEmptyArrayStorage;
      sub_10001EA80(&qword_100035458, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100001EE8(&qword_100035460, &qword_100027F88);
      sub_100020814(&qword_100035468, &qword_100035460, &qword_100027F88, &protocol conformance descriptor for [A]);
      v52 = v59;
      v53 = v62;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v49);

      (*(v61 + 8))(v52, v53);
      (*(v58 + 8))(v51, v60);
      (v56)(v13, v63);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10001CBF4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v30 = a3;
  v31 = a4;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *&v5[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_queue];
  *v15 = v16;
  (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  result = (*(v13 + 8))(v15, v12);
  if (v16)
  {
    static TTSVBLog.daemon.getter();

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v32 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_100004A24(a1, a2, &v32);
      _os_log_impl(&_mh_execute_header, v19, v20, "Refreshing voice models for reason: %s", v21, 0xCu);
      sub_100005D40(v22);
    }

    (*(v9 + 8))(v11, v8);
    v23 = sub_100012250(&OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___voiceBankingManager, &type metadata accessor for TTSVBVoiceBankingManager);
    __chkstk_darwin(v23);
    *(&v29 - 2) = a1;
    *(&v29 - 1) = a2;
    TTSVBVoiceBankingManager.logLongTermMessage(_:)();

    v24 = *&v5[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___voiceBankingManager];
    v25 = swift_allocObject();
    v26 = v31;
    v25[2] = v30;
    v25[3] = v26;
    v25[4] = a1;
    v25[5] = a2;
    v25[6] = v5;

    v27 = v24;

    v28 = v5;
    TTSVBVoiceBankingManager.refreshModels(completion:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001CF6C(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t (**a5)(char *, char *, uint64_t), uint64_t a6)
{
  v71 = a6;
  v72 = a3;
  v76 = a5;
  v77 = a1;
  *&v73 = a4;
  v82 = type metadata accessor for TTSVBVoiceModelStateTransition();
  v75 = *(v82 - 8);
  v7 = __chkstk_darwin(v82);
  v81 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v80 = &v69 - v9;
  v83 = type metadata accessor for Logger();
  v10 = *(v83 - 8);
  v11 = __chkstk_darwin(v83);
  v74 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v69 - v14;
  __chkstk_darwin(v13);
  v78 = &v69 - v16;
  v79 = type metadata accessor for TTSVBError();
  v17 = *(v79 - 1);
  v18 = __chkstk_darwin(v79);
  v20 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v69 - v21;
  v23 = sub_100001EE8(&qword_100035230, &qword_100027EE0);
  __chkstk_darwin(v23);
  v25 = (&v69 - v24);
  sub_100005E54(v77, &v69 - v24, &qword_100035230, &qword_100027EE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v82 = v10;
    v70 = a2;
    v26 = v79;
    (*(v17 + 32))(v22, v25, v79);
    static TTSVBLog.daemon.getter();
    (*(v17 + 16))(v20, v22, v26);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    v29 = v22;
    if (os_log_type_enabled(v27, v28))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v81 = v22;
      v32 = v31;
      v84 = v31;
      *v30 = 136315138;
      sub_10001EA80(&qword_100035500, &type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
      v33 = Error.localizedDescription.getter();
      v35 = v34;
      v36 = *(v17 + 8);
      v36(v20, v79);
      v37 = sub_100004A24(v33, v35, &v84);
      v26 = v79;

      *(v30 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v27, v28, "Could not refresh voice models: %s", v30, 0xCu);
      sub_100005D40(v32);
      v29 = v81;
    }

    else
    {

      v36 = *(v17 + 8);
      v36(v20, v26);
    }

    (*(v82 + 8))(v78, v83);
    v70(0);
    return (v36)(v29, v26);
  }

  else
  {
    v38 = *v25;
    v39 = v15;
    static TTSVBLog.daemon.getter();
    v40 = v76;

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v84 = v44;
      *v43 = 136315138;
      *(v43 + 4) = sub_100004A24(v73, v40, &v84);
      _os_log_impl(&_mh_execute_header, v41, v42, "Voice model status after refresh for reason: %s", v43, 0xCu);
      sub_100005D40(v44);
    }

    v45 = v10;
    v79 = *(v10 + 8);
    (v79)(v39, v83);
    v47 = v74;
    v48 = *(v38 + 16);
    if (v48)
    {
      v69 = v38;
      v70 = a2;
      v50 = v75 + 16;
      v49 = *(v75 + 16);
      v51 = v38 + ((*(v75 + 80) + 32) & ~*(v75 + 80));
      v77 = *(v75 + 72);
      v78 = v49;
      v52 = (v75 + 8);
      v75 = v45 + 8;
      v76 = (v50 + 16);
      *&v46 = 136315138;
      v73 = v46;
      v54 = v81;
      v53 = v82;
      do
      {
        v62 = v80;
        (v78)(v80, v51, v53);
        static TTSVBLog.daemon.getter();
        (*v76)(v54, v62, v53);
        v63 = Logger.logObject.getter();
        v64 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v63, v64))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v84 = v56;
          *v55 = v73;
          v57 = TTSVBVoiceModelStateTransition.description.getter();
          v58 = v50;
          v60 = v59;
          (*v52)(v81, v82);
          v61 = sub_100004A24(v57, v60, &v84);
          v50 = v58;
          v54 = v81;

          *(v55 + 4) = v61;
          _os_log_impl(&_mh_execute_header, v63, v64, "%s", v55, 0xCu);
          sub_100005D40(v56);
          v53 = v82;

          v47 = v74;
        }

        else
        {

          (*v52)(v54, v53);
        }

        (v79)(v47, v83);
        v51 += v77;
        --v48;
      }

      while (v48);

      v65 = v72;
      a2 = v70;
    }

    else
    {

      v65 = v72;
    }

    v67 = sub_100012250(&OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___voiceBankingManager, &type metadata accessor for TTSVBVoiceBankingManager);
    v68 = swift_allocObject();
    *(v68 + 16) = a2;
    *(v68 + 24) = v65;

    TTSVBVoiceBankingManager.fetchInstalledVoiceModels(completion:)();
  }
}

uint64_t sub_10001D7C4(uint64_t *a1, void (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    a2();
    v6 = a3();
    *(v3 + v4) = v6;
  }

  return v6;
}

uint64_t sub_10001D83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = type metadata accessor for Logger();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();

  return _swift_task_switch(sub_10001D8FC, 0, 0);
}

uint64_t sub_10001D8FC()
{
  v0[10] = sub_10001D7C4(&OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___vdbXpc, &type metadata accessor for VoiceDatabaseXPC.Client, &VoiceDatabaseXPC.Client.__allocating_init());
  type metadata accessor for TTSVBVoiceLoader();
  v1 = static TTSVBVoiceLoader.loaderIdentifier.getter();
  v3 = v2;
  v0[11] = v2;
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_10001D9FC;

  return VoiceDatabaseXPC.Client.load(loaderId:)(v1, v3);
}

uint64_t sub_10001D9FC()
{
  v2 = *v1;
  *(v2 + 104) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10001DB48, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10001DB48()
{
  v17 = v0;

  static TTSVBLog.daemon.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[8];
    v15 = v0[9];
    v4 = v0[7];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = sub_100004A24(v7, v8, &v16);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed reload voice cache: %s", v5, 0xCu);
    sub_100005D40(v6);

    (*(v3 + 8))(v15, v4);
  }

  else
  {
    v11 = v0[8];
    v10 = v0[9];
    v12 = v0[7];

    (*(v11 + 8))(v10, v12);
  }

  v13 = v0[1];

  return v13();
}

void sub_10001DD34(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static TTSVBLog.daemon.getter();
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v19 = v2;
    v10 = v9;
    v18 = swift_slowAlloc();
    v20 = v18;
    *v10 = 136315138;
    v11 = [v6 identifier];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_100004A24(v12, v14, &v20);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "performV1ToV2VoiceMigrationTask: bg task expired. ID=%s", v10, 0xCu);
    sub_100005D40(v18);

    (*(v3 + 8))(v5, v19);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  v16 = sub_100012250(&OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___voiceBankingManager, &type metadata accessor for TTSVBVoiceBankingManager);
  __chkstk_darwin(v16);
  *(&v17 - 2) = v6;
  TTSVBVoiceBankingManager.logLongTermError(_:)();
}

uint64_t sub_10001E0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a5;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v12 = *(v22 - 8);
  __chkstk_darwin(v22);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *&v5[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_queue];
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = v5;
  aBlock[4] = a4;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000218B0;
  aBlock[3] = v21;
  v17 = _Block_copy(aBlock);
  v18 = v15;

  v19 = v5;
  static DispatchQoS.unspecified.getter();
  v24 = &_swiftEmptyArrayStorage;
  sub_10001EA80(&qword_100035458, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100001EE8(&qword_100035460, &qword_100027F88);
  sub_100020814(&qword_100035468, &qword_100035460, &qword_100027F88, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v23 + 8))(v11, v9);
  (*(v12 + 8))(v14, v22);
}

Swift::Void __swiftcall VoiceBankingDaemon.requestVoiceCacheRebuildIfNeeded()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v4 = *(v13 - 8);
  __chkstk_darwin(v13);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&v0[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_queue];
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_100020204;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000218B0;
  aBlock[3] = &unk_1000320F8;
  v9 = _Block_copy(aBlock);
  v10 = v7;
  v11 = v0;
  static DispatchQoS.unspecified.getter();
  v15 = &_swiftEmptyArrayStorage;
  sub_10001EA80(&qword_100035458, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100001EE8(&qword_100035460, &qword_100027F88);
  sub_100020814(&qword_100035468, &qword_100035460, &qword_100027F88, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);

  (*(v14 + 8))(v3, v1);
  (*(v4 + 8))(v6, v13);
}

uint64_t sub_10001E6B0(char a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v12 = *(v22 - 8);
  __chkstk_darwin(v22);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *&a2[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_queue];
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  aBlock[4] = a4;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000218B0;
  aBlock[3] = a5;
  v17 = _Block_copy(aBlock);
  v18 = v15;
  v19 = a2;
  static DispatchQoS.unspecified.getter();
  v24 = &_swiftEmptyArrayStorage;
  sub_10001EA80(&qword_100035458, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100001EE8(&qword_100035460, &qword_100027F88);
  sub_100020814(&qword_100035468, &qword_100035460, &qword_100027F88, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v23 + 8))(v11, v9);
  (*(v12 + 8))(v14, v22);
}

unint64_t sub_10001E994()
{
  _StringGuts.grow(_:)(37);

  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  return 0xD000000000000023;
}

uint64_t sub_10001EA28()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001EA68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001EA80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10001EAEC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10001EA80(&qword_100035550, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_10001EA80(&qword_100035558, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_10001FC2C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_10001EDCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10001EA80(&qword_100035550, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v31 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_10001EA80(&qword_100035558, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10001F074();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_10001F924(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

void *sub_10001F074()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001EE8(&qword_100035568, &qword_1000280D8);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_10001F2AC(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for UUID();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100001EE8(&qword_100035568, &qword_1000280D8);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_10001EA80(&qword_100035550, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_10001F5C8(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for UUID();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_100001EE8(&qword_100035568, &qword_1000280D8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_10001EA80(&qword_100035550, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_10001F924(int64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  result = __chkstk_darwin(v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = _HashTable.previousHole(before:)();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v14 = v12;
      v15 = (v13 + 1) & v12;
      v35 = *(v4 + 16);
      v36 = v4 + 16;
      v16 = *(v4 + 72);
      v33 = (v4 + 8);
      v34 = v9;
      v17 = v16;
      do
      {
        v18 = v17;
        v19 = v17 * v11;
        v35(v7, *(v8 + 48) + v17 * v11, v3);
        v20 = v8;
        v21 = v15;
        v22 = v14;
        v23 = v20;
        sub_10001EA80(&qword_100035550, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v33)(v7, v3);
        v25 = v24 & v22;
        v14 = v22;
        v15 = v21;
        if (a1 >= v21)
        {
          if (v25 >= v21 && a1 >= v25)
          {
LABEL_16:
            v8 = v23;
            v28 = *(v23 + 48);
            v17 = v18;
            v29 = v18 * a1;
            if (v18 * a1 < v19 || v28 + v18 * a1 >= (v28 + v19 + v18))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v29 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v25 >= v21 || a1 >= v25)
        {
          goto LABEL_16;
        }

        v8 = v23;
        v17 = v18;
LABEL_5:
        v11 = (v11 + 1) & v14;
        v9 = v34;
      }

      while (((*(v34 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v30 = *(v8 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v32;
    ++*(v8 + 36);
  }

  return result;
}

uint64_t sub_10001FC2C(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10001F5C8(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_10001F074();
      goto LABEL_12;
    }

    sub_10001F2AC(v10 + 1);
  }

  v12 = *v3;
  sub_10001EA80(&qword_100035550, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_10001EA80(&qword_100035558, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}