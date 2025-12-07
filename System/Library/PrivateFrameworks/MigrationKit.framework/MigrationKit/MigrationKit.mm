int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_autoreleasePoolPush();
  v4 = [objc_allocWithZone(type metadata accessor for Listener()) init];
  sub_100001528();
  v5 = [objc_opt_self() currentRunLoop];
  [v5 run];

  objc_autoreleasePoolPop(v3);
  return 0;
}

uint64_t sub_100001528()
{
  v1 = *(v0 + OBJC_IVAR____TtC10migrationd8Listener_listener);
  [v1 setDelegate:v0];
  [v1 resume];
  sub_1000073B0();
  v2 = static OS_dispatch_queue.main.getter();
  v5[4] = sub_100001948;
  v5[5] = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_1000021FC;
  v5[3] = &unk_10001D028;
  v3 = _Block_copy(v5);
  xpc_set_event_stream_handler("com.apple.notifyd.matching", v2, v3);
  _Block_release(v3);

  type metadata accessor for AppInstallObserver();
  static AppInstallObserver.shared.getter();
}

uint64_t sub_100001628()
{
  v0 = type metadata accessor for Logger();
  sub_1000067DC(v0, qword_100020970);
  sub_1000067A4(v0, qword_100020970);
  return static Log.loggerForFile(flair:sourceFile:)();
}

id sub_10000173C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  if (qword_100020890 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000067A4(v5, qword_100020970);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "deinit", v8, 2u);
  }

  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, "dealloc");
}

void sub_1000018EC(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = a1;
  v4 = a3();
  sub_100006880(v4, v5);
}

const char *sub_100001948(void *a1)
{
  v2 = sub_10000507C(&unk_100020A20, &qword_1000175E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v25 - v3;
  type = xpc_get_type(a1);
  result = XPC_TYPE_DICTIONARY.getter();
  if (type == result)
  {
    v7 = XPC_EVENT_KEY_NAME.getter();
    result = xpc_dictionary_get_string(a1, v7);
    if (result)
    {
      v8 = String.init(cString:)();
      v10 = v9;
      v11._countAndFlagsBits = v8;
      v11._object = v10;
      v12 = _findStringSwitchCase(cases:string:)(&off_10001CBA0, v11);

      if (v12)
      {
        if (v12 != 1)
        {
          return result;
        }

        v13 = 1;
      }

      else
      {
        v13 = 0;
      }

      if (qword_100020890 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_1000067A4(v14, qword_100020970);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v26 = v18;
        *v17 = 136315138;
        if (v13)
        {
          v19 = 0xD000000000000031;
        }

        else
        {
          v19 = 0xD000000000000021;
        }

        if (v13)
        {
          v20 = "buddy.setupexited";
        }

        else
        {
          v20 = &off_100016990;
        }

        v21 = sub_1000060DC(v19, v20 | 0x8000000000000000, &v26);

        *(v17 + 4) = v21;
        _os_log_impl(&_mh_execute_header, v15, v16, "received a new notification. notification=%s", v17, 0xCu);
        sub_100007304(v18);
      }

      v22 = type metadata accessor for TaskPriority();
      (*(*(v22 - 8) + 56))(v4, 1, 1, v22);
      type metadata accessor for MainActor();
      v23 = static MainActor.shared.getter();
      v24 = swift_allocObject();
      *(v24 + 16) = v23;
      *(v24 + 24) = &protocol witness table for MainActor;
      sub_100001F0C(0, 0, v4, &unk_100017708, v24);
    }
  }

  return result;
}

uint64_t sub_100001C1C()
{
  type metadata accessor for MainActor();
  v0[2] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[3] = v2;
  v0[4] = v1;

  return _swift_task_switch(sub_100001CB0, v2, v1);
}

uint64_t sub_100001CB0()
{
  result = os_transaction_create();
  *(v0 + 40) = result;
  if (result)
  {
    v2 = swift_task_alloc();
    *(v0 + 48) = v2;
    *v2 = v0;
    v2[1] = sub_100001D68;

    return sub_10001458C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100001D68()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 32);
  v3 = *(v1 + 24);

  return _swift_task_switch(sub_100001EAC, v3, v2);
}

uint64_t sub_100001EAC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100001F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000507C(&unk_100020A20, &qword_1000175E0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100005CB0(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000071FC(v11, &unk_100020A20, &qword_1000175E0);
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

      sub_1000071FC(a3, &unk_100020A20, &qword_1000175E0);

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

  sub_1000071FC(a3, &unk_100020A20, &qword_1000175E0);
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

uint64_t sub_1000021FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_10000225C(const char *a1)
{
  v3 = v1;
  if (qword_100020890 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000067A4(v4, qword_100020970);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, a1, v7, 2u);
  }

  if (*(v3 + OBJC_IVAR____TtC10migrationd8Listener_actor))
  {

    sub_1000078C4();
  }
}

uint64_t sub_100002384(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_100002428(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = OBJC_IVAR____TtC10migrationd8Listener_actor;
  if (*(v2 + OBJC_IVAR____TtC10migrationd8Listener_actor))
  {

    sub_1000078C4();
  }

  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for ListenerActor();
  swift_allocObject();
  v7 = swift_unknownObjectRetain();
  v8 = sub_100013C14(v7, v4, sub_1000076B4, v6);
  swift_unknownObjectRelease();
  *(v3 + v5) = v8;

  if (*(v3 + v5))
  {

    sub_1000076B8();
  }

  return result;
}

void sub_100002540(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = OBJC_IVAR____TtC10migrationd8Listener_actor;
    v5 = *&Strong[OBJC_IVAR____TtC10migrationd8Listener_actor];
    if (v5 && v5 == a1)
    {
      v6 = Strong;
      v7 = qword_100020890;

      if (v7 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_1000067A4(v8, qword_100020970);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, v10, "will stop the listener.", v11, 2u);
      }

      *&v6[v4] = 0;

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "stopped the listener.", v14, 2u);
      }
    }

    else
    {
    }
  }
}

void sub_100002834(char *a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (*&a1[OBJC_IVAR____TtC10migrationd8Listener_actor])
  {
    v5 = a1;

    a3(v4);
  }
}

uint64_t sub_100002A24(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return _swift_task_switch(sub_100002A9C, 0, 0);
}

uint64_t sub_100002A9C()
{
  v1 = v0[2];
  v2 = *&v1[OBJC_IVAR____TtC10migrationd8Listener_actor];
  v0[4] = v2;
  if (v2)
  {

    v3 = swift_task_alloc();
    v0[5] = v3;
    *v3 = v0;
    v3[1] = sub_100002BA0;

    return sub_100007AA4();
  }

  else
  {

    v5 = v0[3];
    v5[2](v5, 0);
    _Block_release(v5);
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_100002BA0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  v8 = *v1;

  isa = Set._bridgeToObjectiveC()().super.isa;

  v5 = *(v2 + 24);
  (v5)[2](v5, isa);

  _Block_release(v5);
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_100002EAC(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return _swift_task_switch(sub_100002F24, 0, 0);
}

uint64_t sub_100002F24()
{
  v1 = v0[2];
  v2 = *&v1[OBJC_IVAR____TtC10migrationd8Listener_actor];
  v0[4] = v2;
  if (v2)
  {

    v3 = swift_task_alloc();
    v0[5] = v3;
    *v3 = v0;
    v3[1] = sub_100003028;

    return sub_100007E5C();
  }

  else
  {

    v5 = v0[3];
    v5[2](v5, 0);
    _Block_release(v5);
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_100003028(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = *v1;

  if (a1)
  {
    v6.super.isa = Set._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  v7 = *(v3 + 24);
  (v7)[2](v7, v6.super.isa);

  _Block_release(v7);
  v8 = *(v5 + 8);

  return v8();
}

uint64_t sub_100003338(uint64_t a1, const void *a2, void *a3)
{
  v3[2] = a3;
  v6 = type metadata accessor for Server.PreflightStatus();
  v3[3] = v6;
  v3[4] = *(v6 - 8);
  v3[5] = swift_task_alloc();
  v3[6] = _Block_copy(a2);
  v3[7] = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;

  return _swift_task_switch(sub_10000343C, 0, 0);
}

uint64_t sub_10000343C()
{
  v1 = v0[2];
  v2 = *&v1[OBJC_IVAR____TtC10migrationd8Listener_actor];
  v0[8] = v2;
  if (v2)
  {

    v3 = swift_task_alloc();
    v0[9] = v3;
    *v3 = v0;
    v3[1] = sub_1000035C4;
    v4 = v0[7];

    return sub_100008208(v4);
  }

  else
  {
    v7 = v0[4];
    v6 = v0[5];
    v8 = v0[3];

    (*(v7 + 104))(v6, enum case for Server.PreflightStatus.indeterminate(_:), v8);
    v9 = Server.PreflightStatus.rawValue.getter();

    (*(v7 + 8))(v6, v8);
    v10 = v0[6];
    v10[2](v10, v9, 0);
    _Block_release(v10);

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1000035C4(char a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 80) = a2;

  return _swift_task_switch(sub_1000036E8, 0, 0);
}

uint64_t sub_1000036E8()
{

  v1 = *(v0 + 48);
  v1[2](v1, *(v0 + 88), *(v0 + 80));
  _Block_release(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100003848(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for XPCScheme();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v44 - v10;
  __chkstk_darwin(v9);
  v13 = &v44 - v12;
  v14 = OBJC_IVAR____TtC10migrationd8Listener_actor;
  v15 = *(v2 + OBJC_IVAR____TtC10migrationd8Listener_actor);
  if (v15)
  {
    v47 = v2;
    v48 = OBJC_IVAR____TtC10migrationd8Listener_actor;
    v49 = a1;
    v16 = *(v15 + 32);
    v46 = *(v5 + 104);
    v46(&v44 - v12, enum case for XPCScheme.migration(_:), v4);

    v17 = XPCScheme.rawValue.getter();
    v45 = *(v5 + 8);
    v45(v13, v4);
    if (v16 != v17)
    {
      if (qword_100020890 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_1000067A4(v25, qword_100020970);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "found the existing esim actor and will create a new one.", v28, 2u);
      }

      v46(v11, enum case for XPCScheme.esim(_:), v4);
      v29 = XPCScheme.rawValue.getter();
      v45(v11, v4);
      v30 = v47;
      v31 = v48;
      if (*(v47 + v48))
      {

        sub_1000078C4();
      }

      v32 = swift_allocObject();
      swift_unknownObjectWeakInit();
      type metadata accessor for ListenerActor();
      swift_allocObject();
      v33 = swift_unknownObjectRetain();
      v34 = sub_100013C14(v33, v29, sub_1000076B4, v32);
      swift_unknownObjectRelease();
      *(v30 + v31) = v34;

      if (*(v30 + v31))
      {

        sub_1000076B8();
      }
    }

    if (*(v15 + 88))
    {
      v18 = v49;
      if (qword_100020890 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_1000067A4(v19, qword_100020970);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "found the existing actor and will reuse it.", v22, 2u);
      }

      v23 = swift_allocObject();
      swift_weakInit();
      v24 = swift_allocObject();
      *(v24 + 16) = v23;
      *(v24 + 24) = v18;
      type metadata accessor for ListenerActor();
      sub_10000674C();
      swift_unknownObjectRetain();

      NonReentrantTaskExecutable.task(_:)();
    }

    v14 = v48;
    v2 = v47;
  }

  if (qword_100020890 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_1000067A4(v35, qword_100020970);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "could not find any existing actor and will create a new one.", v38, 2u);
  }

  (*(v5 + 104))(v8, enum case for XPCScheme.esim(_:), v4);
  v39 = XPCScheme.rawValue.getter();
  (*(v5 + 8))(v8, v4);
  if (*(v2 + v14))
  {

    sub_1000078C4();
  }

  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for ListenerActor();
  swift_allocObject();
  v41 = swift_unknownObjectRetain();
  v42 = sub_100013C14(v41, v39, sub_100006878, v40);
  swift_unknownObjectRelease();
  *(v2 + v14) = v42;

  if (*(v2 + v14))
  {

    sub_1000076B8();
  }

  return result;
}

uint64_t sub_100003F2C(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for XPCScheme();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC10migrationd8Listener_actor;
  v10 = *(v2 + OBJC_IVAR____TtC10migrationd8Listener_actor);
  if (v10)
  {
    v11 = *(v10 + 32);
    (*(v5 + 104))(v8, enum case for XPCScheme.migration(_:), v4);

    v12 = XPCScheme.rawValue.getter();
    (*(v5 + 8))(v8, v4);
    if (v11 == v12)
    {

      if (*(v2 + v9))
      {
        swift_allocObject();
        swift_weakInit();
        type metadata accessor for ListenerActor();
        sub_10000674C();

        NonReentrantTaskExecutable.task(_:)();
      }

      return result;
    }

    if (qword_100020890 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000067A4(v13, qword_100020970);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 67109120;
      *(v16 + 4) = a1 & 1;
      _os_log_impl(&_mh_execute_header, v14, v15, "found the existing esim actor and will cancel the existing esim actor. cancelled=%{BOOL}d", v16, 8u);
    }

    v17 = *(v2 + v9);
    if (a1)
    {
      if (v17)
      {

        sub_1000078C4();
LABEL_14:
      }
    }

    else if (v17)
    {

      sub_100007A84();
      goto LABEL_14;
    }
  }

  return result;
}

uint64_t sub_1000043C8(void *a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v3[4] = v8;
  v3[5] = v10;

  return _swift_task_switch(sub_10000446C, 0, 0);
}

uint64_t sub_10000446C()
{
  v1 = v0[2];
  v2 = *&v1[OBJC_IVAR____TtC10migrationd8Listener_actor];
  v0[6] = v2;
  if (v2)
  {

    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_100004580;
    v5 = v0[4];
    v4 = v0[5];

    return sub_100008AE4(v5, v4);
  }

  else
  {
    sub_100005FC0(v0[4], v0[5]);

    v7 = v0[3];
    v7[2](v7, 0);
    _Block_release(v7);
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_100004580(uint64_t a1, unint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 16);
  v9 = *v2;

  sub_100005FC0(v7, v6);

  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1000060C8(a1, a2);
  }

  v11 = *(v5 + 24);
  (v11)[2](v11, isa);

  _Block_release(v11);
  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_1000048D8(void *a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v3[4] = v8;
  v3[5] = v10;

  return _swift_task_switch(sub_10000497C, 0, 0);
}

uint64_t sub_10000497C()
{
  v1 = v0[2];
  v3 = v0[4];
  v2 = v0[5];
  if (*&v1[OBJC_IVAR____TtC10migrationd8Listener_actor])
  {

    sub_100008E44(v3, v2);

    sub_100005FC0(v3, v2);
  }

  else
  {

    sub_100005FC0(v3, v2);
  }

  v4 = v0[3];
  v4[2](v4);
  _Block_release(v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_100004A50()
{
  v1[2] = v0;
  v2 = type metadata accessor for AppContentCellItem();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_100004B1C, 0, 0);
}

uint64_t sub_100004B1C()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC10migrationd8Listener_actor);
  v0[7] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_100004C10;

    return sub_100009030();
  }

  else
  {

    v4 = v0[1];

    return v4(0);
  }
}

uint64_t sub_100004C10(uint64_t a1)
{
  *(*v1 + 72) = a1;

  return _swift_task_switch(sub_100004D30, 0, 0);
}

uint64_t sub_100004D30()
{
  v1 = v0[9];
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = v0[4];
      specialized ContiguousArray.reserveCapacity(_:)();
      v6 = *(v3 + 16);
      v4 = v3 + 16;
      v5 = v6;
      v7 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
      v15 = *(v4 + 56);
      do
      {
        v8 = v0[5];
        v9 = v0[6];
        v10 = v0[3];
        v5(v9, v7, v10);
        v5(v8, v9, v10);
        v11 = objc_allocWithZone(type metadata accessor for AppContentCellItem.XPCHelper());
        AppContentCellItem.XPCHelper.init(appContentCellItem:)();
        (*(v4 - 8))(v9, v10);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v7 += v15;
        --v2;
      }

      while (v2);
    }

    v12 = _swiftEmptyArrayStorage;
  }

  else
  {
    v12 = 0;
  }

  v13 = v0[1];

  return v13(v12);
}

uint64_t sub_10000507C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000050C4(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_10000516C;

  return sub_100004A50();
}

uint64_t sub_10000516C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = *v1;

  if (a1)
  {
    type metadata accessor for AppContentCellItem.XPCHelper();
    v6.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  v7 = *(v3 + 24);
  (v7)[2](v7, v6.super.isa);

  _Block_release(v7);
  v8 = *(v5 + 8);

  return v8();
}

uint64_t sub_1000052D8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000076A4;

  return sub_1000050C4(v2, v3);
}

uint64_t sub_100005384(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000547C;

  return v6(a1);
}

uint64_t sub_10000547C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100005574(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1000076A4;

  return v6();
}

uint64_t sub_10000565C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000076A4;

  return sub_100005574(v2, v3, v4);
}

uint64_t sub_10000571C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_100005804;

  return v7();
}

uint64_t sub_100005804()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000058F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000076A4;

  return sub_10000571C(a1, v4, v5, v6);
}

uint64_t sub_1000059C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000507C(&unk_100020A20, &qword_1000175E0);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_100005CB0(a3, v23 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000071FC(v11, &unk_100020A20, &qword_1000175E0);
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

    sub_1000071FC(a3, &unk_100020A20, &qword_1000175E0);

    return v21;
  }

LABEL_8:
  sub_1000071FC(a3, &unk_100020A20, &qword_1000175E0);
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

uint64_t sub_100005CB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000507C(&unk_100020A20, &qword_1000175E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100005D20(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000076A8;

  return v6(a1);
}

uint64_t sub_100005E18()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100005E50(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000076A4;

  return sub_100005D20(a1, v4);
}

uint64_t sub_100005F0C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000076A4;

  return sub_1000048D8(v2, v3, v4);
}

uint64_t sub_100005FC0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100006014()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000076A4;

  return sub_1000043C8(v2, v3, v4);
}

uint64_t sub_1000060C8(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100005FC0(result, a2);
  }

  return result;
}

unint64_t sub_1000060DC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000061A8(v11, 0, 0, 1, a1, a2);
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
    sub_100007350(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100007304(v11);
  return v7;
}

unint64_t sub_1000061A8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000062B4(a5, a6);
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

void *sub_1000062B4(uint64_t a1, unint64_t a2)
{
  v3 = sub_100006300(a1, a2);
  sub_100006430(&off_10001CB78);
  return v3;
}

void *sub_100006300(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_10000651C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
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
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000651C(v10, 0);
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

uint64_t sub_100006430(uint64_t result)
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

  result = sub_100006590(result, v11, 1, v3);
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

void *sub_10000651C(uint64_t a1, uint64_t a2)
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

  sub_10000507C(&qword_100020BF0, &qword_1000176F8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100006590(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000507C(&qword_100020BF0, &qword_1000176F8);
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

uint64_t sub_100006684()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000066BC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1000076A4;

  return sub_10000EAF4(v0);
}

unint64_t sub_10000674C()
{
  result = qword_100020B60;
  if (!qword_100020B60)
  {
    type metadata accessor for ListenerActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020B60);
  }

  return result;
}

uint64_t sub_1000067A4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_1000067DC(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100006840()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100006880(uint64_t a1, unint64_t a2)
{
  v4 = CFNotificationCenterGetDarwinNotifyCenter();
  if (v4)
  {
    center = v4;
    v5 = String._bridgeToObjectiveC()();
    CFNotificationCenterPostNotification(center, v5, 0, 0, 1u);
    if (qword_100020890 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000067A4(v6, qword_100020970);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_1000060DC(a1, a2, &v15);
      _os_log_impl(&_mh_execute_header, v7, v8, "Posted Darwin notification: %s", v9, 0xCu);
      sub_100007304(v10);
    }
  }

  else
  {
    if (qword_100020890 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000067A4(v11, qword_100020970);
    center = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(center, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, center, v12, "Failed to get Darwin notification center", v13, 2u);
    }
  }
}

uint64_t sub_100006AD8(void *a1)
{
  v3 = String._bridgeToObjectiveC()();
  v4 = [a1 valueForEntitlement:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  v18 = v23;
  v19 = v24;
  if (*(&v24 + 1))
  {
    if (swift_dynamicCast())
    {
      if (v22 != 1)
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    }
  }

  else
  {
    sub_1000071FC(&v18, &unk_100020A30, &qword_1000176F0);
  }

  v5 = String._bridgeToObjectiveC()();
  v6 = [a1 valueForEntitlement:{v5, v18, v19}];

  if (v6)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  v18 = v23;
  v19 = v24;
  if (!*(&v24 + 1))
  {
    sub_1000071FC(&v18, &unk_100020A30, &qword_1000176F0);
LABEL_17:
    v15 = 0;
    v16 = &selRef_invalidate;
    goto LABEL_18;
  }

  if ((swift_dynamicCast() & 1) == 0 || (v22 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_15:
  type metadata accessor for XPCInterface();
  v7 = v1;
  v8 = static XPCInterface.interface()();
  [a1 setExportedInterface:v8];

  [a1 setExportedObject:v7];
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v20 = sub_100007294;
  v21 = v9;
  *&v18 = _NSConcreteStackBlock;
  *(&v18 + 1) = 1107296256;
  *&v19 = sub_100002384;
  *(&v19 + 1) = &unk_10001CFB0;
  v10 = _Block_copy(&v18);
  v11 = v7;

  [a1 setInvalidationHandler:v10];
  _Block_release(v10);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v20 = sub_1000072D8;
  v21 = v12;
  *&v18 = _NSConcreteStackBlock;
  *(&v18 + 1) = 1107296256;
  *&v19 = sub_100002384;
  *(&v19 + 1) = &unk_10001D000;
  v13 = _Block_copy(&v18);
  v14 = v11;

  [a1 setInterruptionHandler:v13];
  _Block_release(v13);
  v15 = 1;
  v16 = &selRef_resume;
LABEL_18:
  [a1 *v16];
  return v15;
}

uint64_t sub_100006E4C()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100006E8C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100005804;

  return sub_10000DB28(v2, v3);
}

uint64_t sub_100006F24()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100006F6C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000076A4;

  return sub_100003338(v2, v3, v4);
}

uint64_t sub_100007020()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000076A4;

  return sub_100002EAC(v2, v3);
}

uint64_t sub_1000070CC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000710C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000076A4;

  return sub_100002A24(v2, v3);
}

uint64_t sub_1000071BC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000071FC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000507C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000725C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000072C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007304(void *a1)
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

uint64_t sub_100007350(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1000073B0()
{
  result = qword_100020A40;
  if (!qword_100020A40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100020A40);
  }

  return result;
}

uint64_t sub_1000073FC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100007434()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000076A4;

  return sub_100001C1C();
}

uint64_t sub_1000074E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000076A4;

  return sub_100005384(a1, v4);
}

uint64_t sub_100007598(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005804;

  return sub_100005384(a1, v4);
}

uint64_t sub_1000076D8(uint64_t a1, uint64_t a2)
{
  if (qword_100020898 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000067A4(v4, qword_100020A50);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "connect()", v7, 2u);
  }

  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a1;
  v9[4] = a2;
  sub_100013E84(&qword_100020B60, v10, type metadata accessor for ListenerActor, &unk_1000177B0);

  NonReentrantTaskExecutable.task(_:)();
}

uint64_t sub_1000078E4(const char *a1, uint64_t a2)
{
  if (qword_100020898 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000067A4(v3, qword_100020A50);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, a1, v6, 2u);
  }

  swift_allocObject();
  swift_weakInit();
  sub_100013E84(&qword_100020B60, v7, type metadata accessor for ListenerActor, &unk_1000177B0);

  NonReentrantTaskExecutable.task(_:)();
}

uint64_t sub_100007AC4()
{
  if (qword_100020898 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000067A4(v1, qword_100020A50);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "will return supported selections.", v4, 2u);
  }

  v5 = swift_allocObject();
  *(v0 + 32) = v5;
  swift_weakInit();
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  v7 = sub_10000507C(&qword_100020BE0, &qword_100017908);
  *v6 = v0;
  v6[1] = sub_100007C94;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000015, 0x8000000100016EB0, sub_10001422C, v5, v7);
}

uint64_t sub_100007C94()
{

  return _swift_task_switch(sub_100007DAC, 0, 0);
}

uint64_t sub_100007DAC()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v1 = &_swiftEmptySetSingleton;
  }

  v2 = sub_100009350(v1);

  v3 = sub_100013ECC(v2);

  sub_10000CC88("returned supported selections.");
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_100007E7C()
{
  if (qword_100020898 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000067A4(v1, qword_100020A50);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "will return peer supported selections.", v4, 2u);
  }

  v5 = swift_allocObject();
  *(v0 + 32) = v5;
  swift_weakInit();
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  v7 = sub_10000507C(&qword_100020BE0, &qword_100017908);
  *v6 = v0;
  v6[1] = sub_10000804C;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000019, 0x8000000100016E90, sub_1000140EC, v5, v7);
}

uint64_t sub_10000804C()
{

  return _swift_task_switch(sub_100008164, 0, 0);
}

uint64_t sub_100008164()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = sub_100009350(*(v0 + 16));

    v1 = sub_100013ECC(v2);
  }

  sub_10000CC88("returned peer supported selections.");
  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t sub_100008208(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = sub_10000507C(&qword_100020BD0, &qword_1000178F0);
  v2[8] = swift_task_alloc();
  v3 = type metadata accessor for Server.PreflightStatus();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_100008310, 0, 0);
}

uint64_t sub_100008310()
{
  if (qword_100020898 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000067A4(v1, qword_100020A50);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "preflightSelection()", v4, 2u);
  }

  v5 = v0[5];

  v6 = sub_100009650(v5);
  v0[13] = sub_100013F40(v6);

  type metadata accessor for APIActor();
  v0[14] = static APIActor.shared.getter();
  sub_100013E84(&qword_100020B68, 255, &type metadata accessor for APIActor, &protocol conformance descriptor for APIActor);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000084B8, v8, v7);
}

uint64_t sub_1000084B8()
{
  v1 = *(v0 + 48);

  swift_beginAccess();
  v2 = *(v1 + 64);
  *(v0 + 120) = v2;
  if (v2)
  {
    *(v0 + 144) = *(*(v0 + 56) + 48);
    v7 = (&async function pointer to dispatch thunk of Server.preflightSelection(selections:) + async function pointer to dispatch thunk of Server.preflightSelection(selections:));

    v3 = swift_task_alloc();
    *(v0 + 128) = v3;
    *v3 = v0;
    v3[1] = sub_1000085F0;
    v4 = *(v0 + 104);
    v5 = *(v0 + 64);

    return v7(v5, v4);
  }

  else
  {

    return _swift_task_switch(sub_100008818, 0, 0);
  }
}

uint64_t sub_1000085F0(uint64_t a1)
{
  *(*v1 + 136) = a1;

  return _swift_task_switch(sub_10000872C, 0, 0);
}

uint64_t sub_10000872C()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  *(v3 + *(v0 + 144)) = *(v0 + 136);
  v5 = *(v3 + *(v4 + 48));
  (*(v2 + 32))(v1);
  v6 = *(v0 + 96);
  v7 = *(v0 + 72);
  v8 = *(v0 + 80);
  v9 = Server.PreflightStatus.rawValue.getter();
  (*(v8 + 8))(v6, v7);

  v10 = *(v0 + 8);

  return v10(v9, v5);
}

uint64_t sub_100008818()
{
  (*(v0[10] + 104))(v0[11], enum case for Server.PreflightStatus.indeterminate(_:), v0[9]);
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[10];
  v4 = Server.PreflightStatus.rawValue.getter();
  (*(v3 + 8))(v1, v2);

  v5 = v0[1];

  return v5(v4, 0);
}

uint64_t sub_1000088F0(uint64_t a1, uint64_t a2)
{
  if (qword_100020898 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000067A4(v4, qword_100020A50);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "confirmSelection()", v7, 2u);
  }

  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a1;
  v9[4] = a2;
  sub_100013E84(&qword_100020B60, v10, type metadata accessor for ListenerActor, &unk_1000177B0);

  NonReentrantTaskExecutable.task(_:)();
}

uint64_t sub_100008AE4(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return _swift_task_switch(sub_100008B08, 0, 0);
}

uint64_t sub_100008B08()
{
  if (qword_100020898 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000067A4(v1, qword_100020A50);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "send()", v4, 2u);
  }

  v5 = v0[5];
  v6 = v0[4];

  v7 = swift_allocObject();
  v0[7] = v7;
  swift_weakInit();
  v8 = swift_task_alloc();
  v0[8] = v8;
  v8[2] = v7;
  v8[3] = v6;
  v8[4] = v5;
  v9 = swift_task_alloc();
  v0[9] = v9;
  v10 = sub_10000507C(&qword_100020B70, &qword_100017818);
  *v9 = v0;
  v9[1] = sub_100008CF8;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0x74616428646E6573, 0xEB00000000293A61, sub_100011D7C, v8, v10);
}

uint64_t sub_100008CF8()
{

  return _swift_task_switch(sub_100008E2C, 0, 0);
}

uint64_t sub_100008E44(uint64_t a1, unint64_t a2)
{
  if (qword_100020898 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000067A4(v4, qword_100020A50);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "sendNotification()", v7, 2u);
  }

  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a1;
  v9[4] = a2;

  sub_100011D28(a1, a2);
  sub_100013E84(&qword_100020B60, v10, type metadata accessor for ListenerActor, &unk_1000177B0);
  NonReentrantTaskExecutable.task(_:)();
}

uint64_t sub_100009050()
{
  if (qword_100020898 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000067A4(v1, qword_100020A50);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "fetchAppContentList()", v4, 2u);
  }

  v5 = swift_allocObject();
  *(v0 + 32) = v5;
  swift_weakInit();
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  v7 = sub_10000507C(&qword_100020B50, &qword_1000177E0);
  *v6 = v0;
  v6[1] = sub_100009220;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000015, 0x8000000100016E40, sub_100011B00, v5, v7);
}

uint64_t sub_100009220()
{

  return _swift_task_switch(sub_100009338, 0, 0);
}

void *sub_100009350(uint64_t a1)
{
  v31 = type metadata accessor for Selection();
  v3 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v5)
  {
    v24[1] = v1;
    v35 = _swiftEmptyArrayStorage;
    sub_100013908(0, v5, 0);
    v33 = a1 + 56;
    v34 = v35;
    result = _HashTable.startBucket.getter();
    v7 = result;
    v8 = 0;
    v28 = v3 + 8;
    v29 = v3 + 16;
    v25 = a1 + 64;
    v26 = v5;
    v27 = v3;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v33 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_22;
      }

      v32 = *(a1 + 36);
      v11 = v30;
      v12 = v31;
      (*(v3 + 16))(v30, *(a1 + 48) + *(v3 + 72) * v7, v31);
      v13 = Selection.rawValue.getter();
      result = (*(v3 + 8))(v11, v12);
      v14 = v34;
      v35 = v34;
      v16 = v34[2];
      v15 = v34[3];
      if (v16 >= v15 >> 1)
      {
        result = sub_100013908((v15 > 1), v16 + 1, 1);
        v14 = v35;
      }

      v14[2] = v16 + 1;
      *(v14 + v16 + 32) = v13;
      v9 = 1 << *(a1 + 32);
      if (v7 >= v9)
      {
        goto LABEL_23;
      }

      v17 = *(v33 + 8 * v10);
      if ((v17 & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      v34 = v14;
      if (v32 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v18 = v17 & (-2 << (v7 & 0x3F));
      if (v18)
      {
        v9 = __clz(__rbit64(v18)) | v7 & 0x7FFFFFFFFFFFFFC0;
        v3 = v27;
      }

      else
      {
        v19 = v10 << 6;
        v20 = v10 + 1;
        v21 = (v25 + 8 * v10);
        v3 = v27;
        while (v20 < (v9 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            result = sub_1000140E0(v7, v32, 0);
            v9 = __clz(__rbit64(v22)) + v19;
            goto LABEL_4;
          }
        }

        result = sub_1000140E0(v7, v32, 0);
      }

LABEL_4:
      ++v8;
      v7 = v9;
      if (v8 == v26)
      {
        return v34;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

void *sub_100009650(uint64_t a1)
{
  v3 = sub_10000507C(&qword_100020BB0, &qword_1000178D8);
  __chkstk_darwin(v3 - 8);
  v5 = &v33 - v4;
  v6 = type metadata accessor for Selection();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = _swiftEmptyArrayStorage;
  if (!v10)
  {
    return v11;
  }

  v40 = v9;
  v35 = v1;
  v47 = _swiftEmptyArrayStorage;
  sub_100013928(0, v10, 0);
  v11 = v47;
  v46 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v13 = result;
  v14 = 0;
  v41 = v7;
  v42 = (v7 + 48);
  v38 = v5;
  v39 = (v7 + 32);
  v36 = a1 + 64;
  v37 = v10;
  while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(a1 + 32))
  {
    v18 = v13 >> 6;
    if ((*(v46 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
    {
      goto LABEL_23;
    }

    v19 = *(a1 + 36);
    v43 = v14;
    v44 = v19;
    Selection.init(rawValue:)();
    result = (*v42)(v5, 1, v6);
    if (result == 1)
    {
      goto LABEL_27;
    }

    v20 = v40;
    v45 = *v39;
    v45(v40, v5, v6);
    v47 = v11;
    v22 = v11[2];
    v21 = v11[3];
    v23 = v22 + 1;
    if (v22 >= v21 >> 1)
    {
      v34 = v22 + 1;
      sub_100013928((v21 > 1), v22 + 1, 1);
      v23 = v34;
      v11 = v47;
    }

    v11[2] = v23;
    v24 = v20;
    v25 = v6;
    result = (v45)(v11 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v22, v24, v6);
    v15 = 1 << *(a1 + 32);
    if (v13 >= v15)
    {
      goto LABEL_24;
    }

    v26 = *(v46 + 8 * v18);
    if ((v26 & (1 << v13)) == 0)
    {
      goto LABEL_25;
    }

    if (v44 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v27 = v26 & (-2 << (v13 & 0x3F));
    if (v27)
    {
      v15 = __clz(__rbit64(v27)) | v13 & 0x7FFFFFFFFFFFFFC0;
      v16 = v37;
      v17 = v43;
    }

    else
    {
      v28 = v18 << 6;
      v29 = v18 + 1;
      v16 = v37;
      v30 = (v36 + 8 * v18);
      while (v29 < (v15 + 63) >> 6)
      {
        v32 = *v30++;
        v31 = v32;
        v28 += 64;
        ++v29;
        if (v32)
        {
          result = sub_1000140E0(v13, v44, 0);
          v15 = __clz(__rbit64(v31)) + v28;
          goto LABEL_20;
        }
      }

      result = sub_1000140E0(v13, v44, 0);
LABEL_20:
      v17 = v43;
    }

    v14 = v17 + 1;
    v13 = v15;
    v5 = v38;
    v6 = v25;
    if (v14 == v16)
    {
      return v11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1000099E8()
{
  v0 = type metadata accessor for Logger();
  sub_1000067DC(v0, qword_100020A50);
  sub_1000067A4(v0, qword_100020A50);
  return static Log.loggerForFile(flair:sourceFile:)();
}

void *sub_100009A4C()
{
  v1 = v0;
  if (qword_100020898 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000067A4(v2, qword_100020A50);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "deinit", v5, 2u);
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v1;
}

uint64_t sub_100009B64()
{
  sub_100009A4C();

  return _swift_deallocClassInstance(v0, 89, 7);
}

char *sub_100009BBC()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_10000507C(&qword_100020B48, &qword_1000177A8);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_100009BEC(uint64_t a1)
{
  v1[21] = a1;
  sub_10000507C(&qword_100020B90, &qword_100017870);
  v1[22] = swift_task_alloc();
  v2 = type metadata accessor for XPCDaemonRole();
  v1[23] = v2;
  v1[24] = *(v2 - 8);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v3 = sub_10000507C(&qword_100020B98, &qword_100017878);
  v1[27] = v3;
  v1[28] = *(v3 - 8);
  v1[29] = swift_task_alloc();

  return _swift_task_switch(sub_100009D58, 0, 0);
}

uint64_t sub_100009D58()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[30] = Strong;
  if (Strong)
  {
    v3 = v0[28];
    v2 = v0[29];
    v4 = v0[27];
    v5 = *(Strong + 16);
    v0[31] = v5;
    v0[2] = v0;
    v0[7] = v0 + 34;
    v0[3] = sub_100009F94;
    swift_continuation_init();
    v0[17] = v4;
    v6 = sub_100012124(v0 + 14);
    swift_unknownObjectRetain();
    CheckedContinuation.init(continuation:function:)();
    (*(v3 + 32))(v6, v2, v4);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10000A5AC;
    v0[13] = &unk_10001D190;
    [v5 roleWithCompletionHandler:v0 + 10];
    (*(v3 + 8))(v6, v4);

    return _swift_continuation_await(v0 + 2);
  }

  else
  {

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_100009F94()
{

  return _swift_task_switch(sub_10000A074, 0, 0);
}

uint64_t sub_10000A074()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];
  swift_unknownObjectRelease();
  XPCDaemonRole.init(rawValue:)();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[22];

    sub_1000121A0(v4);
LABEL_3:

    v5 = v0[1];

    return v5();
  }

  v7 = v0[25];
  v8 = v0[26];
  v9 = v0[23];
  v10 = v0[24];
  (*(v10 + 32))(v8, v0[22], v9);
  (*(v10 + 16))(v7, v8, v9);
  v11 = (*(v10 + 88))(v7, v9);
  if (v11 == enum case for XPCDaemonRole.server(_:))
  {
    v12 = swift_task_alloc();
    v0[32] = v12;
    *v12 = v0;
    v12[1] = sub_10000A304;

    return sub_10000A608();
  }

  else
  {
    if (v11 != enum case for XPCDaemonRole.client(_:))
    {
      v14 = v0[25];
      v15 = v0[23];
      v16 = *(v0[24] + 8);
      v16(v0[26], v15);

      v16(v14, v15);
      goto LABEL_3;
    }

    v13 = swift_task_alloc();
    v0[33] = v13;
    *v13 = v0;
    v13[1] = sub_10000A4B0;

    return sub_10000AD24();
  }
}

uint64_t sub_10000A304()
{

  return _swift_task_switch(sub_10000A400, 0, 0);
}

uint64_t sub_10000A400()
{
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[24];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10000A4B0()
{

  return _swift_task_switch(sub_10001450C, 0, 0);
}

uint64_t sub_10000A5AC(uint64_t a1, char a2)
{
  sub_100012208((a1 + 32), *(a1 + 56));
  sub_10000507C(&qword_100020B98, &qword_100017878);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_10000A608()
{
  v1[5] = v0;
  v2 = type metadata accessor for XPCScheme();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = type metadata accessor for Scheme();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = type metadata accessor for APIActor();
  v1[13] = static APIActor.shared.getter();
  v1[14] = static APIActor.shared.getter();
  v1[15] = sub_100013E84(&qword_100020B68, 255, &type metadata accessor for APIActor, &protocol conformance descriptor for APIActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[16] = v5;
  v1[17] = v4;

  return _swift_task_switch(sub_10000A7A0, v5, v4);
}

uint64_t sub_10000A7A0()
{
  v1 = v0[5];
  swift_beginAccess();
  v2 = *(v1 + 64);
  v0[18] = v2;
  if (v2)
  {

    dispatch thunk of Server.stateUpdateHandler.setter();
    v7 = (&async function pointer to dispatch thunk of Server.shutdown() + async function pointer to dispatch thunk of Server.shutdown());
    v3 = swift_task_alloc();
    v0[19] = v3;
    *v3 = v0;
    v3[1] = sub_10000A8CC;

    return v7();
  }

  else
  {

    v6 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10000AA74, v6, v5);
  }
}

uint64_t sub_10000A8CC()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return _swift_task_switch(sub_10000A9EC, v3, v2);
}

uint64_t sub_10000A9EC()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000AA74, v1, v0);
}

uint64_t sub_10000AA74()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[5];

  v8 = *(v7 + 32);
  (*(v6 + 104))(v3, enum case for XPCScheme.migration(_:), v5);
  v9 = XPCScheme.rawValue.getter();
  (*(v6 + 8))(v3, v5);
  v10 = &enum case for Scheme.migration(_:);
  if (v8 != v9)
  {
    v10 = &enum case for Scheme.esim(_:);
  }

  (*(v2 + 104))(v1, *v10, v4);
  type metadata accessor for Server();
  swift_allocObject();
  *(v7 + 64) = Server.init(scheme:)();

  if (*(v7 + 64))
  {
    v11 = v0[5];
    swift_allocObject();
    swift_weakInit();

    dispatch thunk of Server.stateUpdateHandler.setter();

    if (*(v11 + 64))
    {
      v12 = v0[5];
      swift_allocObject();
      swift_weakInit();

      dispatch thunk of Server.shutdownHandler.setter();

      if (*(v12 + 64))
      {
        v13 = v0[5];
        type metadata accessor for XPCCrossPlatformCellularPlanServerMiddleware();
        swift_allocObject();

        swift_unknownObjectRetain();
        XPCCrossPlatformCellularPlanServerMiddleware.init(client:)();
        dispatch thunk of Server.middleware.setter();

        if (*(v13 + 64))
        {

          dispatch thunk of Server.run()();
        }
      }
    }
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_10000AD24()
{
  v1[5] = v0;
  v2 = type metadata accessor for XPCScheme();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = type metadata accessor for Scheme();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = type metadata accessor for APIActor();
  v1[13] = static APIActor.shared.getter();
  v1[14] = static APIActor.shared.getter();
  v1[15] = sub_100013E84(&qword_100020B68, 255, &type metadata accessor for APIActor, &protocol conformance descriptor for APIActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[16] = v5;
  v1[17] = v4;

  return _swift_task_switch(sub_10000AEBC, v5, v4);
}

uint64_t sub_10000AEBC()
{
  v1 = v0[5];
  swift_beginAccess();
  v2 = *(v1 + 72);
  v0[18] = v2;
  if (v2)
  {

    dispatch thunk of Client.stateUpdateHandler.setter();
    v7 = (&async function pointer to dispatch thunk of Client.shutdown() + async function pointer to dispatch thunk of Client.shutdown());
    v3 = swift_task_alloc();
    v0[19] = v3;
    *v3 = v0;
    v3[1] = sub_10000AFE8;

    return v7();
  }

  else
  {

    v6 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10000B190, v6, v5);
  }
}

uint64_t sub_10000AFE8()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return _swift_task_switch(sub_10000B108, v3, v2);
}

uint64_t sub_10000B108()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000B190, v1, v0);
}

uint64_t sub_10000B190()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[5];

  v8 = *(v7 + 32);
  (*(v6 + 104))(v3, enum case for XPCScheme.migration(_:), v5);
  v9 = XPCScheme.rawValue.getter();
  (*(v6 + 8))(v3, v5);
  v10 = &enum case for Scheme.migration(_:);
  if (v8 != v9)
  {
    v10 = &enum case for Scheme.esim(_:);
  }

  (*(v2 + 104))(v1, *v10, v4);
  type metadata accessor for Client();
  swift_allocObject();
  *(v7 + 72) = Client.init(scheme:)();

  if (*(v7 + 72))
  {
    v11 = v0[5];
    swift_allocObject();
    swift_weakInit();

    dispatch thunk of Client.stateUpdateHandler.setter();

    if (*(v11 + 72))
    {
      v12 = v0[5];
      swift_allocObject();
      swift_weakInit();

      dispatch thunk of Client.shutdownHandler.setter();

      if (*(v12 + 72))
      {
        v13 = v0[5];
        type metadata accessor for XPCCrossPlatformCellularPlanClientMiddleware();
        swift_allocObject();

        swift_unknownObjectRetain();
        XPCCrossPlatformCellularPlanClientMiddleware.init(client:)();
        dispatch thunk of Client.middleware.setter();

        if (*(v13 + 72))
        {

          dispatch thunk of Client.run()();
        }
      }
    }
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_10000B460()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 88) = 0;
  }

  swift_beginAccess();
  v2 = swift_weakLoadStrong();
  v0[18] = v2;
  if (v2)
  {
    type metadata accessor for APIActor();
    v0[19] = static APIActor.shared.getter();
    sub_100013E84(&qword_100020B68, 255, &type metadata accessor for APIActor, &protocol conformance descriptor for APIActor);
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v5 = v4;
    v0[20] = v3;
    v0[21] = v4;
    v6 = sub_10000B650;
LABEL_7:

    return _swift_task_switch(v6, v3, v5);
  }

  swift_beginAccess();
  v7 = swift_weakLoadStrong();
  v0[24] = v7;
  if (v7)
  {
    type metadata accessor for APIActor();
    v0[25] = static APIActor.shared.getter();
    sub_100013E84(&qword_100020B68, 255, &type metadata accessor for APIActor, &protocol conformance descriptor for APIActor);
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v5 = v8;
    v0[26] = v3;
    v0[27] = v8;
    v6 = sub_10000BA2C;
    goto LABEL_7;
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_10000B650()
{
  v1 = v0[18];
  swift_beginAccess();
  v2 = *(v1 + 64);
  v0[22] = v2;
  if (v2)
  {

    dispatch thunk of Server.stateUpdateHandler.setter();
    v5 = (&async function pointer to dispatch thunk of Server.cancel() + async function pointer to dispatch thunk of Server.cancel());
    v3 = swift_task_alloc();
    v0[23] = v3;
    *v3 = v0;
    v3[1] = sub_10000B770;

    return v5();
  }

  else
  {

    return _swift_task_switch(sub_10000B90C, 0, 0);
  }
}

uint64_t sub_10000B770()
{
  v1 = *v0;

  v2 = *(v1 + 168);
  v3 = *(v1 + 160);

  return _swift_task_switch(sub_10000B890, v3, v2);
}

uint64_t sub_10000B890()
{

  return _swift_task_switch(sub_10000B90C, 0, 0);
}

uint64_t sub_10000B90C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[24] = Strong;
  if (Strong)
  {
    type metadata accessor for APIActor();
    v0[25] = static APIActor.shared.getter();
    sub_100013E84(&qword_100020B68, 255, &type metadata accessor for APIActor, &protocol conformance descriptor for APIActor);
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v0[26] = v3;
    v0[27] = v2;

    return _swift_task_switch(sub_10000BA2C, v3, v2);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_10000BA2C()
{
  v1 = v0[24];
  swift_beginAccess();
  v2 = *(v1 + 72);
  v0[28] = v2;
  if (v2)
  {

    dispatch thunk of Client.stateUpdateHandler.setter();
    v6 = (&async function pointer to dispatch thunk of Client.cancel() + async function pointer to dispatch thunk of Client.cancel());
    v3 = swift_task_alloc();
    v0[29] = v3;
    *v3 = v0;
    v3[1] = sub_10000BB44;

    return v6();
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_10000BB44()
{
  v1 = *v0;

  v2 = *(v1 + 216);
  v3 = *(v1 + 208);

  return _swift_task_switch(sub_10000BC64, v3, v2);
}

uint64_t sub_10000BC64()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000BCF8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 88) = 0;
  }

  swift_beginAccess();
  v2 = swift_weakLoadStrong();
  v0[18] = v2;
  if (v2)
  {
    type metadata accessor for APIActor();
    v0[19] = static APIActor.shared.getter();
    sub_100013E84(&qword_100020B68, 255, &type metadata accessor for APIActor, &protocol conformance descriptor for APIActor);
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v5 = v4;
    v0[20] = v3;
    v0[21] = v4;
    v6 = sub_10000BEE8;
LABEL_7:

    return _swift_task_switch(v6, v3, v5);
  }

  swift_beginAccess();
  v7 = swift_weakLoadStrong();
  v0[24] = v7;
  if (v7)
  {
    type metadata accessor for APIActor();
    v0[25] = static APIActor.shared.getter();
    sub_100013E84(&qword_100020B68, 255, &type metadata accessor for APIActor, &protocol conformance descriptor for APIActor);
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v5 = v8;
    v0[26] = v3;
    v0[27] = v8;
    v6 = sub_10000C2C4;
    goto LABEL_7;
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_10000BEE8()
{
  v1 = v0[18];
  swift_beginAccess();
  v2 = *(v1 + 64);
  v0[22] = v2;
  if (v2)
  {

    dispatch thunk of Server.stateUpdateHandler.setter();
    v5 = (&async function pointer to dispatch thunk of Server.shutdown() + async function pointer to dispatch thunk of Server.shutdown());
    v3 = swift_task_alloc();
    v0[23] = v3;
    *v3 = v0;
    v3[1] = sub_10000C008;

    return v5();
  }

  else
  {

    return _swift_task_switch(sub_10000C1A4, 0, 0);
  }
}

uint64_t sub_10000C008()
{
  v1 = *v0;

  v2 = *(v1 + 168);
  v3 = *(v1 + 160);

  return _swift_task_switch(sub_10000C128, v3, v2);
}

uint64_t sub_10000C128()
{

  return _swift_task_switch(sub_10000C1A4, 0, 0);
}

uint64_t sub_10000C1A4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[24] = Strong;
  if (Strong)
  {
    type metadata accessor for APIActor();
    v0[25] = static APIActor.shared.getter();
    sub_100013E84(&qword_100020B68, 255, &type metadata accessor for APIActor, &protocol conformance descriptor for APIActor);
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v0[26] = v3;
    v0[27] = v2;

    return _swift_task_switch(sub_10000C2C4, v3, v2);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_10000C2C4()
{
  v1 = v0[24];
  swift_beginAccess();
  v2 = *(v1 + 72);
  v0[28] = v2;
  if (v2)
  {

    dispatch thunk of Client.stateUpdateHandler.setter();
    v6 = (&async function pointer to dispatch thunk of Client.shutdown() + async function pointer to dispatch thunk of Client.shutdown());
    v3 = swift_task_alloc();
    v0[29] = v3;
    *v3 = v0;
    v3[1] = sub_10000C3DC;

    return v6();
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_10000C3DC()
{
  v1 = *v0;

  v2 = *(v1 + 216);
  v3 = *(v1 + 208);

  return _swift_task_switch(sub_100014520, v3, v2);
}

uint64_t sub_10000C4FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  return _swift_task_switch(sub_10000C520, 0, 0);
}

uint64_t sub_10000C520()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    type metadata accessor for APIActor();
    v0[12] = static APIActor.shared.getter();
    sub_100013E84(&qword_100020B68, 255, &type metadata accessor for APIActor, &protocol conformance descriptor for APIActor);
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10000C640, v3, v2);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_10000C640()
{
  v1 = *(v0 + 88);

  swift_beginAccess();
  v2 = *(v1 + 64);
  *(v0 + 104) = v2;
  if (v2)
  {

    v3 = sub_10000C6E4;
  }

  else
  {
    v3 = sub_100014524;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000C6E4()
{

  v5 = (&async function pointer to dispatch thunk of Server.connect(code:) + async function pointer to dispatch thunk of Server.connect(code:));
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_10001451C;
  v3 = v0[9];
  v2 = v0[10];

  return v5(v3, v2);
}

uint64_t sub_10000C798(uint64_t a1, uint64_t a2)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return _swift_task_switch(sub_10000C7B8, 0, 0);
}

uint64_t sub_10000C7B8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    type metadata accessor for APIActor();
    v0[12] = static APIActor.shared.getter();
    sub_100013E84(&qword_100020B68, 255, &type metadata accessor for APIActor, &protocol conformance descriptor for APIActor);
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10000C904, v3, v2);
  }

  else
  {
    v0[8] = 0;
    sub_10000507C(&qword_100020BF8, &qword_100017918);
    CheckedContinuation.resume(returning:)();
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_10000C904()
{
  v1 = *(v0 + 88);

  swift_beginAccess();
  v2 = *(v1 + 64);
  *(v0 + 104) = v2;
  if (v2)
  {

    v3 = sub_10000CA34;
  }

  else
  {
    v3 = sub_10000C9A8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000C9A8()
{

  *(v0 + 64) = 0;
  sub_10000507C(&qword_100020BF8, &qword_100017918);
  CheckedContinuation.resume(returning:)();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000CA34()
{

  v3 = (&async function pointer to dispatch thunk of Server.supportedSelections.getter + async function pointer to dispatch thunk of Server.supportedSelections.getter);
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_10000CAE0;

  return v3();
}

uint64_t sub_10000CAE0(uint64_t a1)
{
  *(*v1 + 120) = a1;

  return _swift_task_switch(sub_10000CC00, 0, 0);
}

uint64_t sub_10000CC00()
{
  v0[8] = v0[15];
  sub_10000507C(&qword_100020BF8, &qword_100017918);
  CheckedContinuation.resume(returning:)();
  v1 = v0[1];

  return v1();
}

void sub_10000CC88(const char *a1)
{
  if (qword_100020898 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000067A4(v2, qword_100020A50);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v3, a1, v4, 2u);
  }
}

uint64_t sub_10000CD78(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_10000507C(a3, a4);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16[-v9];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    (*(v8 + 16))(v10, a1, v7);
    v13 = (*(v8 + 80) + 24) & ~*(v8 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    (*(v8 + 32))(v14 + v13, v10, v7);
    type metadata accessor for ListenerActor();
    sub_100013E84(&qword_100020B60, v15, type metadata accessor for ListenerActor, &unk_1000177B0);

    NonReentrantTaskExecutable.task(_:)();
  }

  return result;
}

uint64_t sub_10000CF8C(uint64_t a1, uint64_t a2)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return _swift_task_switch(sub_10000CFAC, 0, 0);
}

uint64_t sub_10000CFAC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v0[12] = type metadata accessor for APIActor();
    v0[13] = static APIActor.shared.getter();
    v0[14] = sub_100013E84(&qword_100020B68, 255, &type metadata accessor for APIActor, &protocol conformance descriptor for APIActor);
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10000D100, v3, v2);
  }

  else
  {
    v0[8] = 0;
    sub_10000507C(&qword_100020BF8, &qword_100017918);
    CheckedContinuation.resume(returning:)();
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_10000D100()
{
  v1 = *(v0 + 88);

  swift_beginAccess();
  v2 = *(v1 + 64);
  *(v0 + 120) = v2;
  if (v2)
  {

    v3 = sub_10000D1A8;
  }

  else
  {
    v3 = sub_100014508;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000D1A8()
{

  *(v0 + 128) = static APIActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000D240, v2, v1);
}

uint64_t sub_10000D240()
{

  *(v0 + 136) = dispatch thunk of Server.peerSupportedSelections.getter();

  return _swift_task_switch(sub_10000D2B8, 0, 0);
}

uint64_t sub_10000D2B8()
{
  v0[8] = v0[17];
  sub_10000507C(&qword_100020BF8, &qword_100017918);
  CheckedContinuation.resume(returning:)();
  v1 = v0[1];

  return v1();
}

uint64_t sub_10000D340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return _swift_task_switch(sub_10000D364, 0, 0);
}

uint64_t sub_10000D364()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = sub_10000D454;
    v4 = v0[6];
    v3 = v0[7];

    return sub_10000D564(v4, v3);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_10000D454()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000D564(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  sub_10000507C(&qword_100020BB0, &qword_1000178D8);
  v3[9] = swift_task_alloc();
  v4 = type metadata accessor for Selection();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  type metadata accessor for APIActor();
  v3[13] = static APIActor.shared.getter();
  sub_100013E84(&qword_100020B68, 255, &type metadata accessor for APIActor, &protocol conformance descriptor for APIActor);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[14] = v6;
  v3[15] = v5;

  return _swift_task_switch(sub_10000D6C8, v6, v5);
}

uint64_t sub_10000D6C8()
{
  *(v0 + 40) = &_swiftEmptySetSingleton;
  v1 = *(v0 + 88);
  v2 = *(v0 + 48);
  v5 = *(v2 + 56);
  v4 = v2 + 56;
  v3 = v5;
  v6 = -1;
  v7 = -1 << *(*(v0 + 48) + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v3;
  v9 = (63 - v7) >> 6;
  v10 = (v1 + 48);
  v11 = (v1 + 8);

  v13 = 0;
  if (v8)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v16 = *(v0 + 72);
      v15 = *(v0 + 80);
      Selection.init(rawValue:)();
      result = (*v10)(v16, 1, v15);
      if (result == 1)
      {
        break;
      }

      v17 = *(v0 + 96);
      v18 = *(v0 + 80);
      v8 &= v8 - 1;
      sub_100012434(v17, *(v0 + 72));
      result = (*v11)(v17, v18);
      v13 = v14;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

LABEL_19:
    __break(1u);
  }

  else
  {
    while (1)
    {
LABEL_5:
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_19;
      }

      if (v14 >= v9)
      {
        break;
      }

      v8 = *(v4 + 8 * v14);
      ++v13;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    v19 = *(v0 + 64);

    swift_beginAccess();
    v20 = *(v19 + 64);
    *(v0 + 128) = v20;
    if (v20)
    {
      v21 = *(v0 + 40);
      *(v0 + 136) = v21;
      v25 = (&async function pointer to dispatch thunk of Server.confirmSelection(selections:disabledBundleIDs:) + async function pointer to dispatch thunk of Server.confirmSelection(selections:disabledBundleIDs:));

      v22 = swift_task_alloc();
      *(v0 + 144) = v22;
      *v22 = v0;
      v22[1] = sub_10000D954;
      v23 = *(v0 + 56);

      return v25(v21, v23);
    }

    else
    {

      v24 = *(v0 + 8);

      return v24();
    }
  }

  return result;
}

uint64_t sub_10000D954()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return _swift_task_switch(sub_10000DAB4, v3, v2);
}

uint64_t sub_10000DAB4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000DB28(uint64_t a1, uint64_t a2)
{
  v2[24] = a1;
  v2[25] = a2;
  sub_10000507C(&qword_100020B90, &qword_100017870);
  v2[26] = swift_task_alloc();
  v3 = type metadata accessor for XPCDaemonRole();
  v2[27] = v3;
  v2[28] = *(v3 - 8);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v4 = sub_10000507C(&qword_100020B98, &qword_100017878);
  v2[31] = v4;
  v2[32] = *(v4 - 8);
  v2[33] = swift_task_alloc();

  return _swift_task_switch(sub_10000DC94, 0, 0);
}

uint64_t sub_10000DC94()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[34] = Strong;
  if (Strong)
  {
    v2 = *(Strong + 40);
    v0[35] = v2;

    return _swift_task_switch(sub_10000DD84, v2, 0);
  }

  else
  {

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_10000DD84()
{
  v1 = *(v0 + 200);
  swift_beginAccess();
  sub_100011890(v1);
  swift_endAccess();

  return _swift_task_switch(sub_10000DE14, 0, 0);
}

uint64_t sub_10000DE14()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 39;
  v7 = v0[33];
  v6 = v0[34];
  v10 = v0 + 31;
  v8 = v0[31];
  v9 = v10[1];
  v11 = *(v6 + 16);
  v1[36] = v11;
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_10000DFC4;
  swift_continuation_init();
  v1[17] = v8;
  v12 = sub_100012124(v1 + 14);
  swift_unknownObjectRetain();
  CheckedContinuation.init(continuation:function:)();
  (*(v9 + 32))(v12, v7, v8);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_10000A5AC;
  v1[13] = &unk_10001D168;
  [v11 roleWithCompletionHandler:v4];
  (*(v9 + 8))(v12, v8);

  return _swift_continuation_await(v3);
}

uint64_t sub_10000DFC4()
{

  return _swift_task_switch(sub_10000E0A4, 0, 0);
}

uint64_t sub_10000E0A4()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[26];
  swift_unknownObjectRelease();
  XPCDaemonRole.init(rawValue:)();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[26];

    sub_1000121A0(v4);
LABEL_3:

    v5 = v0[1];

    return v5();
  }

  v7 = v0[29];
  v8 = v0[30];
  v9 = v0[27];
  v10 = v0[28];
  (*(v10 + 32))(v8, v0[26], v9);
  (*(v10 + 16))(v7, v8, v9);
  v11 = (*(v10 + 88))(v7, v9);
  if (v11 == enum case for XPCDaemonRole.server(_:))
  {
    v12 = swift_task_alloc();
    v0[37] = v12;
    *v12 = v0;
    v12[1] = sub_10000E344;
    v13 = v0[25];

    return sub_10000E5EC(v13);
  }

  else
  {
    if (v11 != enum case for XPCDaemonRole.client(_:))
    {
      v16 = v0[29];
      v17 = v0[27];
      v18 = *(v0[28] + 8);
      v18(v0[30], v17);

      v18(v16, v17);
      goto LABEL_3;
    }

    v14 = swift_task_alloc();
    v0[38] = v14;
    *v14 = v0;
    v14[1] = sub_10000E4F0;
    v15 = v0[25];

    return sub_10000E870(v15);
  }
}

uint64_t sub_10000E344()
{

  return _swift_task_switch(sub_10000E440, 0, 0);
}

uint64_t sub_10000E440()
{
  v1 = v0[30];
  v2 = v0[27];
  v3 = v0[28];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10000E4F0()
{

  return _swift_task_switch(sub_100014510, 0, 0);
}

uint64_t sub_10000E5EC(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for XPCDaemonState();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  type metadata accessor for APIActor();
  v2[10] = static APIActor.shared.getter();
  sub_100013E84(&qword_100020B68, 255, &type metadata accessor for APIActor, &protocol conformance descriptor for APIActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000E714, v5, v4);
}

uint64_t sub_10000E714()
{
  v1 = v0[6];

  swift_beginAccess();
  if (*(v1 + 64))
  {
    type metadata accessor for XPCCrossPlatformCellularPlanServerMiddleware();
    swift_allocObject();

    swift_unknownObjectRetain();
    XPCCrossPlatformCellularPlanServerMiddleware.init(client:)();
    dispatch thunk of Server.middleware.setter();
  }

  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  v5 = v0[5];
  (*(v3 + 104))(v2, enum case for XPCDaemonState.secured(_:), v4);
  v6 = XPCDaemonState.rawValue.getter();
  (*(v3 + 8))(v2, v4);
  [v5 didUpdateStateWithState:v6];

  v7 = v0[1];

  return v7();
}

uint64_t sub_10000E870(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for XPCDaemonState();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  type metadata accessor for APIActor();
  v2[10] = static APIActor.shared.getter();
  sub_100013E84(&qword_100020B68, 255, &type metadata accessor for APIActor, &protocol conformance descriptor for APIActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000E998, v5, v4);
}

uint64_t sub_10000E998()
{
  v1 = v0[6];

  swift_beginAccess();
  if (*(v1 + 72))
  {
    type metadata accessor for XPCCrossPlatformCellularPlanClientMiddleware();
    swift_allocObject();

    swift_unknownObjectRetain();
    XPCCrossPlatformCellularPlanClientMiddleware.init(client:)();
    dispatch thunk of Client.middleware.setter();
  }

  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  v5 = v0[5];
  (*(v3 + 104))(v2, enum case for XPCDaemonState.secured(_:), v4);
  v6 = XPCDaemonState.rawValue.getter();
  (*(v3 + 8))(v2, v4);
  [v5 didUpdateStateWithState:v6];

  v7 = v0[1];

  return v7();
}

uint64_t sub_10000EB14()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {
    v2 = *(Strong + 40);
    v0[16] = v2;

    return _swift_task_switch(sub_10000EBE0, v2, 0);
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_10000EBE0()
{
  v1 = *(v0 + 128);
  swift_beginAccess();
  *(v0 + 136) = *(v1 + 112);

  return _swift_task_switch(sub_10000EC6C, 0, 0);
}

uint64_t sub_10000EC6C()
{
  v1 = v0[15];
  if (v0[17])
  {

    v2 = *(v1 + 40);
    v0[18] = v2;

    return _swift_task_switch(sub_10000ED18, v2, 0);
  }

  else
  {

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_10000ED18()
{
  swift_beginAccess();
  sub_1000119FC();
  swift_endAccess();
  swift_unknownObjectRelease();

  return _swift_task_switch(sub_10000EDD4, 0, 0);
}

uint64_t sub_10000EDD4()
{
  v0[19] = type metadata accessor for APIActor();
  v0[20] = static APIActor.shared.getter();
  v0[21] = sub_100013E84(&qword_100020B68, 255, &type metadata accessor for APIActor, &protocol conformance descriptor for APIActor);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000EEA4, v2, v1);
}

uint64_t sub_10000EEA4()
{
  v1 = *(v0 + 120);

  swift_beginAccess();
  if (*(v1 + 64))
  {

    dispatch thunk of Server.middleware.setter();
  }

  *(v0 + 176) = static APIActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000EF84, v3, v2);
}

uint64_t sub_10000EF84()
{
  v1 = *(v0 + 120);

  swift_beginAccess();
  if (*(v1 + 72))
  {

    dispatch thunk of Client.middleware.setter();
  }

  return _swift_task_switch(sub_10000F030, 0, 0);
}

uint64_t sub_10000F030()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000F090(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = sub_10000507C(&qword_100020B78, &qword_100017820);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16[-v9];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    (*(v8 + 16))(v10, a1, v7);
    v13 = (*(v8 + 80) + 40) & ~*(v8 + 80);
    v14 = swift_allocObject();
    *(v14 + 2) = v12;
    *(v14 + 3) = a3;
    *(v14 + 4) = a4;
    (*(v8 + 32))(&v14[v13], v10, v7);

    sub_100011D28(a3, a4);
    type metadata accessor for ListenerActor();
    sub_100013E84(&qword_100020B60, v15, type metadata accessor for ListenerActor, &unk_1000177B0);
    NonReentrantTaskExecutable.task(_:)();
  }

  return result;
}

uint64_t sub_10000F2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  return _swift_task_switch(sub_10000F2F0, 0, 0);
}

uint64_t sub_10000F2F0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 112) = Strong;
  if (Strong)
  {
    type metadata accessor for APIActor();
    *(v0 + 120) = static APIActor.shared.getter();
    sub_100013E84(&qword_100020B68, 255, &type metadata accessor for APIActor, &protocol conformance descriptor for APIActor);
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10000F444, v3, v2);
  }

  else
  {
    *(v0 + 64) = xmmword_100017730;
    sub_10000507C(&qword_100020B78, &qword_100017820);
    CheckedContinuation.resume(returning:)();
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_10000F444()
{
  v1 = *(v0 + 112);

  swift_beginAccess();
  v2 = *(v1 + 72);
  *(v0 + 128) = v2;
  if (v2)
  {

    v3 = sub_10000F57C;
  }

  else
  {
    v3 = sub_10000F4E8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000F4E8()
{

  *(v0 + 64) = xmmword_100017730;
  sub_10000507C(&qword_100020B78, &qword_100017820);
  CheckedContinuation.resume(returning:)();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000F57C()
{

  v5 = (&async function pointer to dispatch thunk of Client.send(data:) + async function pointer to dispatch thunk of Client.send(data:));
  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_10000F630;
  v3 = v0[11];
  v2 = v0[12];

  return v5(v3, v2);
}

uint64_t sub_10000F630(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = a2;

  return _swift_task_switch(sub_10000F750, 0, 0);
}

uint64_t sub_10000F750()
{
  *(v0 + 64) = *(v0 + 144);
  sub_10000507C(&qword_100020B78, &qword_100017820);
  CheckedContinuation.resume(returning:)();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000F7D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  return _swift_task_switch(sub_10000F7FC, 0, 0);
}

uint64_t sub_10000F7FC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    type metadata accessor for APIActor();
    v0[12] = static APIActor.shared.getter();
    sub_100013E84(&qword_100020B68, 255, &type metadata accessor for APIActor, &protocol conformance descriptor for APIActor);
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10000F91C, v3, v2);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_10000F91C()
{
  v1 = *(v0 + 88);

  swift_beginAccess();
  v2 = *(v1 + 64);
  *(v0 + 104) = v2;
  if (v2)
  {

    v3 = sub_10000FA20;
  }

  else
  {
    v3 = sub_10000F9C0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000F9C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000FA20()
{

  v5 = (&async function pointer to dispatch thunk of Server.sendNotification(data:) + async function pointer to dispatch thunk of Server.sendNotification(data:));
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_10000FAD4;
  v3 = v0[9];
  v2 = v0[10];

  return v5(v3, v2);
}

uint64_t sub_10000FAD4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000FBE4(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return _swift_task_switch(sub_10000FC04, 0, 0);
}

uint64_t sub_10000FC04()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v0[13] = type metadata accessor for APIActor();
    v0[14] = static APIActor.shared.getter();
    v0[15] = sub_100013E84(&qword_100020B68, 255, &type metadata accessor for APIActor, &protocol conformance descriptor for APIActor);
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10000FD58, v3, v2);
  }

  else
  {
    v0[8] = 0;
    sub_10000507C(&qword_100020B58, &qword_1000177E8);
    CheckedContinuation.resume(returning:)();
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_10000FD58()
{
  v1 = *(v0 + 96);

  swift_beginAccess();
  v2 = *(v1 + 64);
  *(v0 + 128) = v2;
  if (v2)
  {

    v3 = sub_10000FE8C;
  }

  else
  {
    v3 = sub_10000FE00;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000FE00()
{

  *(v0 + 64) = 0;
  sub_10000507C(&qword_100020B58, &qword_1000177E8);
  CheckedContinuation.resume(returning:)();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000FE8C()
{

  *(v0 + 136) = static APIActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000FF24, v2, v1);
}

uint64_t sub_10000FF24()
{

  *(v0 + 144) = dispatch thunk of Server.appPropertiesController.getter();

  return _swift_task_switch(sub_10000FF9C, 0, 0);
}

uint64_t sub_10000FF9C()
{
  v1 = v0[18];
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[19] = v2;
    *v2 = v0;
    v2[1] = sub_100010094;

    return static AppContentCellItem.fetchAllItems(appPropertiesController:)(v1);
  }

  else
  {
    v0[8] = 0;
    sub_10000507C(&qword_100020B58, &qword_1000177E8);
    CheckedContinuation.resume(returning:)();
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_100010094(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_10001025C;
  }

  else
  {
    *(v4 + 160) = a1;
    v5 = sub_1000101C0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000101C0()
{
  v0[9] = v0[20];
  sub_10000507C(&qword_100020B58, &qword_1000177E8);
  CheckedContinuation.resume(returning:)();

  v1 = v0[1];

  return v1();
}

uint64_t sub_10001025C()
{
  *(v0 + 72) = 0;
  sub_10000507C(&qword_100020B58, &qword_1000177E8);
  CheckedContinuation.resume(returning:)();

  v1 = *(v0 + 8);

  return v1();
}

id sub_1000102F4(uint64_t a1)
{
  v66 = a1;
  v1 = type metadata accessor for Reason();
  v56 = *(v1 - 8);
  v57 = v1;
  __chkstk_darwin(v1);
  v55 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for MigratorContext.Result();
  v59 = *(v3 - 8);
  v60 = v3;
  __chkstk_darwin(v3);
  v58 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MigratorContext();
  v62 = *(v5 - 8);
  v63 = v5;
  __chkstk_darwin(v5);
  v61 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Selection();
  v65 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Estimation();
  v64 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for XPCDaemonState();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Server.State();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = (&v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v20, v66, v17);
  result = (*(v18 + 88))(v20, v17);
  if (result == enum case for Server.State.found(_:))
  {
    (*(v18 + 96))(v20, v17);
    v22 = v67;
    v23 = *(v67 + 16);
    v24 = String._bridgeToObjectiveC()();

    [v23 didReceiveCodeWithCode:v24];

    (*(v14 + 104))(v16, enum case for XPCDaemonState.found(_:), v13);
    v25 = XPCDaemonState.rawValue.getter();
    (*(v14 + 8))(v16, v13);
    return [*(v22 + 16) didUpdateStateWithState:v25];
  }

  v54 = v16;
  v66 = v14;
  v26 = v67;
  if (result == enum case for Server.State.estimated(_:))
  {
    (*(v18 + 96))(v20, v17);
    v27 = v64;
    (v64)[4](v12, v20, v10);
    v22 = v26;
    v28 = *(v26 + 16);
    Estimation.selection.getter();
    v29 = Selection.rawValue.getter();
    (*(v65 + 8))(v9, v7);
    v30 = Estimation.bytes.getter();
    [v28 didEstimateWithSelection:v29 bytes:v30 items:Estimation.items.getter()];
    v31 = v66;
    v32 = v54;
    (*(v66 + 104))(v54, enum case for XPCDaemonState.estimated(_:), v13);
    v25 = XPCDaemonState.rawValue.getter();
    (*(v31 + 8))(v32, v13);
    (v27[1])(v12, v10);
    return [*(v22 + 16) didUpdateStateWithState:v25];
  }

  if (result == enum case for Server.State.preflightFailed(_:))
  {
    (*(v18 + 96))(v20, v17);
    return [*(v26 + 16) preflightFailedWithAdditionalBytesRequired:*v20];
  }

  if (result == enum case for Server.State.transferred(_:))
  {
    (*(v18 + 96))(v20, v17);
    v33 = v61;
    v34 = v62;
    v35 = v63;
    (*(v62 + 32))(v61, v20, v63);
    v22 = v26;
    v64 = *(v26 + 16);
    MigratorContext.selection.getter();
    v36 = Selection.rawValue.getter();
    (*(v65 + 8))(v9, v7);
    v37 = v58;
    MigratorContext.result.getter();
    v38 = MigratorContext.Result.rawValue.getter();
    (*(v59 + 8))(v37, v60);
    v39 = MigratorContext.bytes.getter();
    v40 = MigratorContext.items.getter();
    [v64 didTransferWithSelection:v36 result:v38 bytes:v39 items:v40 errors:MigratorContext.errors.getter()];
    v41 = v66;
    v42 = v54;
    (*(v66 + 104))(v54, enum case for XPCDaemonState.transferred(_:), v13);
    v25 = XPCDaemonState.rawValue.getter();
    (*(v41 + 8))(v42, v13);
    (*(v34 + 8))(v33, v35);
    return [*(v22 + 16) didUpdateStateWithState:v25];
  }

  if (result == enum case for Server.State.failed(_:))
  {
    (*(v18 + 96))(v20, v17);
    v44 = v55;
    v43 = v56;
    v45 = v57;
    (*(v56 + 32))(v55, v20, v57);
    [*(v26 + 16) didFailWithReason:Reason.rawValue.getter()];
    swift_beginAccess();
    if (*(v26 + 64))
    {
      swift_endAccess();

      dispatch thunk of Server.stateUpdateHandler.setter();

      return (*(v43 + 8))(v44, v45);
    }

    else
    {
      (*(v43 + 8))(v44, v45);
      return swift_endAccess();
    }
  }

  if (result == enum case for Server.State.ready(_:))
  {
    v46 = v66;
    v47 = v54;
    (*(v66 + 104))(v54, enum case for XPCDaemonState.ready(_:), v13);
LABEL_29:
    v25 = XPCDaemonState.rawValue.getter();
    (*(v46 + 8))(v47, v13);
    v22 = v26;
    return [*(v22 + 16) didUpdateStateWithState:v25];
  }

  v46 = v66;
  v47 = v54;
  if (result == enum case for Server.State.connected(_:))
  {
    return result;
  }

  if (result == enum case for Server.State.secured(_:))
  {
    v48 = &enum case for XPCDaemonState.secured(_:);
LABEL_28:
    (*(v66 + 104))(v54, *v48, v13);
    goto LABEL_29;
  }

  if (result == enum case for Server.State.selecting(_:))
  {
    v48 = &enum case for XPCDaemonState.selecting(_:);
    goto LABEL_28;
  }

  if (result == enum case for Server.State.transferring(_:))
  {
    v48 = &enum case for XPCDaemonState.transferring(_:);
    goto LABEL_28;
  }

  if (result == enum case for Server.State.selected(_:))
  {
    v48 = &enum case for XPCDaemonState.selected(_:);
    goto LABEL_28;
  }

  if (result == enum case for Server.State.completed(_:))
  {
    v48 = &enum case for XPCDaemonState.completed(_:);
    goto LABEL_28;
  }

  if (qword_100020898 != -1)
  {
    swift_once();
  }

  v49 = type metadata accessor for Logger();
  sub_1000067A4(v49, qword_100020A50);
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&_mh_execute_header, v50, v51, "received an unexpected state.", v52, 2u);
  }

  return (*(v18 + 8))(v20, v17);
}

uint64_t sub_100010D5C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    [*(result + 16) didShutdown];
    v3 = *(v2 + 48);

    v3(v2);

    swift_beginAccess();
    *(v2 + 64) = 0;
  }

  return result;
}

uint64_t sub_100010E10(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3(a1);
  }

  return result;
}

id sub_100010E84(uint64_t a1)
{
  v2 = type metadata accessor for Reason();
  v54 = *(v2 - 1);
  v55 = v2;
  __chkstk_darwin(v2);
  v53 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MigratorContext.Result();
  v58 = *(v4 - 8);
  v59 = v4;
  __chkstk_darwin(v4);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Selection();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MigratorContext();
  v60 = *(v10 - 8);
  v61 = v10;
  __chkstk_darwin(v10);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for XPCDaemonState();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Client.State();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v20, a1, v17);
  result = (*(v18 + 88))(v20, v17);
  if (result == enum case for Client.State.ready(_:))
  {
    (*(v18 + 96))(v20, v17);
    v22 = v62;
    v23 = *(v62 + 16);
    v24 = String._bridgeToObjectiveC()();

    [v23 didReceiveCodeWithCode:v24];

    (*(v14 + 104))(v16, enum case for XPCDaemonState.ready(_:), v13);
    v25 = XPCDaemonState.rawValue.getter();
    (*(v14 + 8))(v16, v13);
    v26 = v22;
    return [*(v26 + 16) didUpdateStateWithState:v25];
  }

  v51 = v13;
  v52 = v16;
  v26 = v62;
  if (result == enum case for Client.State.progressing(_:))
  {
    (*(v18 + 96))(v20, v17);
    v27 = *(v20 + 1);
    if (v20[16])
    {
      v27 = -1.0;
    }

    return [*(v26 + 16) didUpdateProgressWithPercentComplete:*v20 estimatedSecondsRemaining:v27];
  }

  if (result == enum case for Client.State.transferred(_:))
  {
    (*(v18 + 96))(v20, v17);
    v28 = v60;
    v29 = v20;
    v30 = v61;
    (*(v60 + 32))(v12, v29, v61);
    v55 = *(v26 + 16);
    MigratorContext.selection.getter();
    v31 = Selection.rawValue.getter();
    (*(v56 + 8))(v9, v57);
    MigratorContext.result.getter();
    v32 = MigratorContext.Result.rawValue.getter();
    (*(v58 + 8))(v6, v59);
    v33 = MigratorContext.bytes.getter();
    v34 = MigratorContext.items.getter();
    [v55 didTransferWithSelection:v31 result:v32 bytes:v33 items:v34 errors:MigratorContext.errors.getter()];
    v36 = v51;
    v35 = v52;
    (*(v14 + 104))(v52, enum case for XPCDaemonState.transferred(_:), v51);
    v25 = XPCDaemonState.rawValue.getter();
    (*(v14 + 8))(v35, v36);
    (*(v28 + 8))(v12, v30);
    return [*(v26 + 16) didUpdateStateWithState:v25];
  }

  if (result == enum case for Client.State.failed(_:))
  {
    (*(v18 + 96))(v20, v17);
    v38 = v53;
    v37 = v54;
    v39 = v55;
    (*(v54 + 32))(v53, v20, v55);
    [*(v26 + 16) didFailWithReason:Reason.rawValue.getter()];
    swift_beginAccess();
    if (*(v26 + 72))
    {
      swift_endAccess();

      dispatch thunk of Client.stateUpdateHandler.setter();

      return (*(v37 + 8))(v38, v39);
    }

    else
    {
      (*(v37 + 8))(v38, v39);
      return swift_endAccess();
    }
  }

  if (result == enum case for Client.State.found(_:))
  {
    v40 = enum case for XPCDaemonState.found(_:);
    v41 = v14;
    v42 = *(v14 + 104);
    v43 = v52;
LABEL_16:
    v44 = v51;
    v42(v43, v40, v51);
LABEL_17:
    v25 = XPCDaemonState.rawValue.getter();
    (*(v41 + 8))(v43, v44);
    return [*(v26 + 16) didUpdateStateWithState:v25];
  }

  v43 = v52;
  if (result == enum case for Client.State.connected(_:))
  {
    return result;
  }

  v41 = v14;
  if (result == enum case for Client.State.secured(_:))
  {
    v40 = enum case for XPCDaemonState.secured(_:);
    v42 = *(v14 + 104);
    goto LABEL_16;
  }

  v44 = v51;
  if (result == enum case for Client.State.selecting(_:))
  {
    v45 = &enum case for XPCDaemonState.selecting(_:);
LABEL_28:
    (*(v41 + 104))(v52, *v45, v51);
    goto LABEL_17;
  }

  if (result == enum case for Client.State.selected(_:))
  {
    v45 = &enum case for XPCDaemonState.selected(_:);
    goto LABEL_28;
  }

  if (result == enum case for Client.State.transferring(_:))
  {
    v45 = &enum case for XPCDaemonState.transferring(_:);
    goto LABEL_28;
  }

  if (result == enum case for Client.State.completed(_:))
  {
    (*(v41 + 104))(v52, enum case for XPCDaemonState.completed(_:), v51);
    v25 = XPCDaemonState.rawValue.getter();
    (*(v41 + 8))(v43, v44);
    swift_beginAccess();
    if (*(v26 + 72))
    {

      dispatch thunk of Client.stateUpdateHandler.setter();
    }

    return [*(v26 + 16) didUpdateStateWithState:v25];
  }

  if (qword_100020898 != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  sub_1000067A4(v46, qword_100020A50);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&_mh_execute_header, v47, v48, "received an unexpected state.", v49, 2u);
  }

  return (*(v18 + 8))(v20, v17);
}

uint64_t sub_1000117D4(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    [*(result + 16) didShutdown];
    v3 = *(v2 + 48);

    v3(v2);

    swift_beginAccess();
    *(v2 + 72) = 0;
  }

  return result;
}

uint64_t sub_100011890(uint64_t a1)
{
  sub_10000507C(&qword_100020BA0, &qword_100017890);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  result = swift_weakInit();
  *(v3 + 16) = a1;
  if (*v1)
  {
    v5 = v1[1];
    if (!v5)
    {
      *(*v1 + 24) = v3;
      swift_retain_n();
      swift_unknownObjectRetain();

      swift_weakAssign();

      v1[1] = v3;
      v11 = v1[2];
      v7 = __OFADD__(v11, 1);
      v8 = v11 + 1;
      if (!v7)
      {
LABEL_11:
        v1[2] = v8;
        return result;
      }

      goto LABEL_13;
    }

    swift_weakAssign();
    *(v5 + 24) = v3;
    swift_unknownObjectRetain();

    v1[1] = v3;
    v6 = v1[2];
    v7 = __OFADD__(v6, 1);
    v8 = v6 + 1;
    if (!v7)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  *v1 = v3;
  v9 = v1[2];
  v7 = __OFADD__(v9, 1);
  v10 = v9 + 1;
  if (v7)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v1[2] = v10;

  return swift_unknownObjectRetain();
}

uint64_t sub_1000119FC()
{
  v2 = *v0;
  if (!*v0)
  {
    sub_10000507C(&qword_100020B80, &qword_100017860);
    sub_100012078();
    swift_allocError();
    swift_willThrow();
    return v1;
  }

  v3 = *(v2 + 24);
  *v0 = v3;
  if (v3)
  {
    v4 = v0[1];
    if (v4 && v3 == v4)
    {
      v0[1] = 0;
    }

    else
    {
    }

    swift_weakAssign();
  }

  v1 = *(v2 + 16);
  swift_unknownObjectRetain();

  v6 = v0[2];
  v7 = __OFSUB__(v6, 1);
  v8 = v6 - 1;
  if (!v7)
  {
    v0[2] = v8;
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_100011AC8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100011B5C()
{
  v2 = *(sub_10000507C(&qword_100020B58, &qword_1000177E8) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000076A4;

  return sub_10000FBE4(v4, v0 + v3);
}

uint64_t sub_100011C40()
{

  sub_100005FC0(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100011C80()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000076A4;

  return sub_10000F7D8(v2, v3, v4);
}

uint64_t sub_100011D28(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100011D88()
{
  v1 = sub_10000507C(&qword_100020B78, &qword_100017820);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  sub_100005FC0(*(v0 + 24), *(v0 + 32));
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100011E60()
{
  v2 = *(sub_10000507C(&qword_100020B78, &qword_100017820) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000076A4;

  return sub_10000F2CC(v4, v5, v6, v0 + v3);
}

uint64_t sub_100011F58()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1000076A4;

  return sub_10000B440(v0);
}

uint64_t sub_100011FE8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1000076A4;

  return sub_10000BCD8(v0);
}

unint64_t sub_100012078()
{
  result = qword_100020B88;
  if (!qword_100020B88)
  {
    sub_1000120DC(&qword_100020B80, &qword_100017860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020B88);
  }

  return result;
}

uint64_t sub_1000120DC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t *sub_100012124(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1000121A0(uint64_t a1)
{
  v2 = sub_10000507C(&qword_100020B90, &qword_100017870);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_100012208(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10001224C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1000076A4;

  return sub_100009BEC(v0);
}

uint64_t sub_10001234C(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = static Hasher._hash(seed:bytes:count:)();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_100012CAC(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_100012434(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Selection();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100013E84(&qword_100020BB8, 255, &type metadata accessor for Selection, &protocol conformance descriptor for Selection);
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
      sub_100013E84(&qword_100020BC0, 255, &type metadata accessor for Selection, &protocol conformance descriptor for Selection);
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
    sub_100012DD0(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_10001271C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000507C(&qword_100020BE8, &qword_100017910);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      result = static Hasher._hash(seed:bytes:count:)();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_10001294C(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for Selection();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_10000507C(&qword_100020BC8, &qword_1000178E0);
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
      sub_100013E84(&qword_100020BB8, 255, &type metadata accessor for Selection, &protocol conformance descriptor for Selection);
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

uint64_t sub_100012CAC(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10001271C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_10001307C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1000133F4(v5 + 1);
  }

  v8 = *v3;
  result = static Hasher._hash(seed:bytes:count:)();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100012DD0(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for Selection();
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
    sub_10001294C(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1000131BC();
      goto LABEL_12;
    }

    sub_1000135E8(v10 + 1);
  }

  v12 = *v3;
  sub_100013E84(&qword_100020BB8, 255, &type metadata accessor for Selection, &protocol conformance descriptor for Selection);
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
      sub_100013E84(&qword_100020BC0, 255, &type metadata accessor for Selection, &protocol conformance descriptor for Selection);
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

void *sub_10001307C()
{
  v1 = v0;
  sub_10000507C(&qword_100020BE8, &qword_100017910);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1000131BC()
{
  v1 = v0;
  v2 = type metadata accessor for Selection();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000507C(&qword_100020BC8, &qword_1000178E0);
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

uint64_t sub_1000133F4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000507C(&qword_100020BE8, &qword_100017910);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      result = static Hasher._hash(seed:bytes:count:)();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_1000135E8(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for Selection();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_10000507C(&qword_100020BC8, &qword_1000178E0);
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
      sub_100013E84(&qword_100020BB8, 255, &type metadata accessor for Selection, &protocol conformance descriptor for Selection);
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

char *sub_100013908(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100013948(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100013928(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100013A3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100013948(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000507C(&qword_100020BF0, &qword_1000176F8);
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

void *sub_100013A3C(void *result, int64_t a2, char a3, void *a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000507C(&qword_100020BD8, &qword_1000178F8);
  v10 = *(type metadata accessor for Selection() - 8);
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
  v15 = *(type metadata accessor for Selection() - 8);
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

uint64_t sub_100013C14(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  if (qword_100020898 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000067A4(v10, qword_100020A50);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "init()", v13, 2u);
  }

  *(v5 + 16) = a1;
  *(v5 + 32) = a2;
  swift_unknownObjectRetain();
  result = os_transaction_create();
  if (result)
  {
    *(v5 + 24) = result;
    type metadata accessor for NonReentrantActor();
    *(v5 + 80) = NonReentrantActor.__allocating_init()();
    sub_10000507C(&qword_100020BA8, &qword_1000178B8);
    v15 = swift_allocObject();
    swift_defaultActor_initialize();
    v15[16] = 0;
    v15[17] = 1;
    v15[14] = 0;
    v15[15] = 0;
    *(v5 + 88) = 1;
    *(v5 + 40) = v15;
    *(v5 + 48) = a3;
    *(v5 + 56) = a4;
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100013D94()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100013DDC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100005804;

  return sub_10000D340(v2, v3, v4);
}

uint64_t sub_100013E84(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100013ECC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_10001234C(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_100013F40(uint64_t a1)
{
  v2 = type metadata accessor for Selection();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_100013E84(&qword_100020BB8, 255, &type metadata accessor for Selection, &protocol conformance descriptor for Selection);
  result = Set.init(minimumCapacity:)();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      sub_100012434(v8, v6);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_1000140E0(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_100014148()
{
  v2 = *(sub_10000507C(&qword_100020BF8, &qword_100017918) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000076A4;

  return sub_10000CF8C(v4, v0 + v3);
}

uint64_t sub_100014274(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_10000507C(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 24) & ~v5;
  v7 = *(v4 + 64);

  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

uint64_t sub_100014334()
{
  v2 = *(sub_10000507C(&qword_100020BF8, &qword_100017918) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000076A4;

  return sub_10000C798(v4, v0 + v3);
}

uint64_t sub_100014418()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100014458()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000076A4;

  return sub_10000C4FC(v2, v3, v4);
}

uint64_t sub_100014528()
{
  v0 = type metadata accessor for Logger();
  sub_1000067DC(v0, qword_100020C00);
  sub_1000067A4(v0, qword_100020C00);
  return static Log.loggerForFile(flair:sourceFile:)();
}

uint64_t sub_10001458C()
{
  v1 = type metadata accessor for LazyMigratorGroup();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return _swift_task_switch(sub_100014648, 0, 0);
}

uint64_t sub_100014648()
{
  if (qword_1000208A0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 40) = sub_1000067A4(v1, qword_100020C00);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "will run lazy jobs.", v4, 2u);
  }

  LazyMigratorGroup.init()();
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_1000147A8;

  return LazyMigratorGroup.run()();
}

uint64_t sub_1000147A8()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 56) = v3;
  *v3 = v2;
  v3[1] = sub_1000148EC;

  return LazyMigratorGroup.clean()();
}

uint64_t sub_1000148EC()
{

  return _swift_task_switch(sub_1000149E8, 0, 0);
}

uint64_t sub_1000149E8(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "finished lazy jobs.", v4, 2u);
  }

  v6 = v1[3];
  v5 = v1[4];
  v7 = v1[2];

  (*(v6 + 8))(v5, v7);

  v8 = v1[1];

  return v8();
}

uint64_t sub_100014B90(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v2[8] = *v1;
  return _swift_task_switch(sub_100014BD8, v1, 0);
}

uint64_t sub_100014BD8()
{
  v3 = sub_100014B3C((v0 + 2));
  v5 = v0[8];
  v6 = v0[6];
  if (*v4 == 1)
  {
    (v3)(v0 + 2, 0);
    (*(*(*(v5 + 80) - 8) + 56))(v6, 1, 1);
  }

  else
  {
    v7 = type metadata accessor for LinkedList.LinkedListIterator(0, *(v5 + 80), v1, v2);
    sub_10001518C(v7, v6);
    (v3)(v0 + 2, 0);
  }

  v8 = v0[1];

  return v8();
}

void *sub_100014CEC()
{

  sub_1000150A0(*(v0 + 136));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100014D2C()
{
  sub_100014CEC();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100014DA4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_100015098();

  *a1 = v2;
  return result;
}

uint64_t sub_100014DE8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100005804;

  return sub_100014B90(a1);
}

uint64_t sub_100014E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = swift_task_alloc();
  *(v6 + 32) = v12;
  v15 = type metadata accessor for ConcurrentQueue(0, *(a5 + 80), v13, v14);
  *v12 = v6;
  v12[1] = sub_100014F6C;

  return __sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF(a1, a2, a3, v15, a6, v6 + 16);
}

uint64_t sub_100014F6C()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    **(v2 + 24) = *(v2 + 16);
  }

  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_1000150A0(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1000150E0(uint64_t a1)
{
  result = swift_checkMetadataState();
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

uint64_t sub_10001518C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  if (*v2)
  {
    v4 = *(a1 + 16);
    v5 = *(v4 - 8);
    (*(v5 + 16))(a2, v3 + *(*v3 + 88), v4);
    (*(v5 + 56))(a2, 0, 1, v4);
    *v2 = *(v3 + *(*v3 + 96));
  }

  else
  {
    v8 = *(*(*(a1 + 16) - 8) + 56);

    return v8(a2, 1, 1);
  }
}

uint64_t sub_1000152F8()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  swift_weakDestroy();
  v1 = *(*v0 + 96);
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;

  if (v2)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v3 = *(v2 + *(*v2 + 96));
      swift_retain_n();

      v2 = v3;
    }

    while (v3);
  }

  return v0;
}

uint64_t sub_10001540C()
{
  v0 = sub_1000152F8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_100015478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1000154CC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100015528(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_100015590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_1000155CC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000155E0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10001563C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

Swift::Int sub_1000156DC()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100015748(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_100015798@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  j__swift_retain(*v1);

  *a1 = v3;
  return result;
}

uint64_t sub_1000157EC(uint64_t a1, uint64_t a2)
{
  v3 = j___ss30_copySequenceToContiguousArrayys0dE0Vy7ElementQzGxSTRzlF(v2, a1, a2);

  return v3;
}

uint64_t sub_10001586C(unsigned int *a1, int a2)
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

_WORD *sub_1000158BC(_WORD *result, int a2, int a3)
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