id sub_100001D94()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100001DC8()
{
  result = [objc_allocWithZone(type metadata accessor for ProximityReaderSceneUI()) init];
  qword_100022970 = result;
  return result;
}

uint64_t *sub_100001DF8()
{
  if (qword_1000221C0 != -1)
  {
    swift_once();
  }

  return &qword_100022970;
}

void *sub_100001E48()
{
  v1 = OBJC_IVAR____TtC22ProximityReaderSceneUI22ProximityReaderSceneUI_listener;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_100001E94(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22ProximityReaderSceneUI22ProximityReaderSceneUI_listener;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_100001F4C()
{
  v1 = OBJC_IVAR____TtC22ProximityReaderSceneUI22ProximityReaderSceneUI_handle;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_100001F98(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22ProximityReaderSceneUI22ProximityReaderSceneUI_handle;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

char *sub_100002054()
{
  v1 = sub_100002388(&qword_100021930, &unk_100013460);
  __chkstk_darwin(v1 - 8);
  v3 = aBlock - v2;
  *&v0[OBJC_IVAR____TtC22ProximityReaderSceneUI22ProximityReaderSceneUI_listener] = 0;
  *&v0[OBJC_IVAR____TtC22ProximityReaderSceneUI22ProximityReaderSceneUI_handle] = 0;
  v4 = type metadata accessor for ProximityReaderSceneUI();
  v21.receiver = v0;
  v21.super_class = v4;
  v5 = objc_msgSendSuper2(&v21, "init");
  v6 = sub_100008C08();
  sub_1000023F4(v6, v3);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v3, 1, v7) == 1)
  {
    v9 = sub_100002FAC(v3, &qword_100021930, &unk_100013460);
  }

  else
  {
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "ProximityReaderSceneUI server init", v12, 2u);
    }

    v9 = (*(v8 + 8))(v3, v7);
  }

  __chkstk_darwin(v9);
  aBlock[-2] = v5;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_100002464;
  *(v13 + 24) = &aBlock[-4];
  aBlock[4] = sub_100002540;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002568;
  aBlock[3] = &unk_10001C938;
  v14 = _Block_copy(aBlock);
  v15 = objc_opt_self();

  v16 = [v15 listenerWithConfigurator:v14];
  _Block_release(v14);

  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
  }

  else
  {
    v18 = OBJC_IVAR____TtC22ProximityReaderSceneUI22ProximityReaderSceneUI_listener;
    swift_beginAccess();
    v19 = *&v5[v18];
    *&v5[v18] = v16;

    return v5;
  }

  return result;
}

uint64_t sub_100002388(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000023F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002388(&qword_100021930, &unk_100013460);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_100002464(void *a1)
{
  v3 = *(v1 + 16);
  sub_100008B48();

  v4 = String._bridgeToObjectiveC()();

  [a1 setDomain:v4];

  sub_100008B54();

  v5 = String._bridgeToObjectiveC()();

  [a1 setService:v5];

  return [a1 setDelegate:v3];
}

uint64_t sub_100002568(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_1000025BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000025F8()
{
  v1 = sub_100002388(&qword_100021930, &unk_100013460);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - v2;
  v4 = sub_100008C08();
  sub_1000023F4(v4, v3);
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    v7 = sub_100002FAC(v3, &qword_100021930, &unk_100013460);
  }

  else
  {
    v8 = sub_100008DA0();
    v9 = sub_100008DA8();
    sub_100008DB4(v8 & 1, v0, 0x6574617669746361, 0xEA00000000002928, v9, v10);

    v7 = (*(v6 + 8))(v3, v5);
  }

  v11 = (*((swift_isaMask & *v0) + 0x60))(v7);
  if (v11)
  {
    v12 = v11;
    [v11 activate];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000027B0()
{
  v1 = sub_100002388(&qword_100021930, &unk_100013460);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = sub_100008C08();
  sub_1000023F4(v4, v3);
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    sub_100002FAC(v3, &qword_100021930, &unk_100013460);
  }

  else
  {
    v7 = sub_100008DA0();
    v8 = sub_100008DA8();
    sub_100008DB4(v7 & 1, v0, 0x6164696C61766E69, 0xEC00000029286574, v8, v9);

    (*(v6 + 8))(v3, v5);
  }

  return (*((swift_isaMask & *v0) + 0x80))(0);
}

id sub_1000029F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProximityReaderSceneUI();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100002A70(void *a1)
{
  v2 = v1;
  v4 = sub_100002388(&qword_100021930, &unk_100013460);
  v5 = __chkstk_darwin(v4 - 8);
  v46 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v42 - v8;
  __chkstk_darwin(v7);
  v11 = &v42 - v10;
  v12 = sub_100008C08();
  sub_1000023F4(v12, v11);
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  v16 = v15(v11, 1, v13);
  v47 = v9;
  if (v16 == 1)
  {
    sub_100002FAC(v11, &qword_100021930, &unk_100013460);
  }

  else
  {
    v43 = v14;
    v44 = v2;
    v45 = a1;
    v17 = a1;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v17;
      *v21 = v17;
      v22 = v17;
      _os_log_impl(&_mh_execute_header, v18, v19, "ProximityReaderSceneServerHandle listener: %@", v20, 0xCu);
      sub_100002FAC(v21, &unk_100021A20, &qword_1000134C0);
    }

    v14 = v43;
    (*(v43 + 8))(v11, v13);
    v2 = v44;
    a1 = v45;
  }

  v23 = [a1 remoteToken];
  sub_100008B54();

  v24 = String._bridgeToObjectiveC()();

  v25 = [v23 hasEntitlement:v24];

  v26 = v12;
  if (v25)
  {
    v27 = v47;
    sub_1000023F4(v12, v47);
    if (v15(v27, 1, v13) == 1)
    {
      sub_100002FAC(v27, &qword_100021930, &unk_100013460);
    }

    else
    {
      v29 = a1;
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = v27;
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *v33 = 138412290;
        *(v33 + 4) = v29;
        *v34 = v29;
        v35 = v29;
        _os_log_impl(&_mh_execute_header, v30, v31, "ProximityReaderSceneServerHandle accepting: %@", v33, 0xCu);
        sub_100002FAC(v34, &unk_100021A20, &qword_1000134C0);

        v27 = v32;
      }

      (*(v14 + 8))(v27, v13);
    }

    type metadata accessor for SceneUIServerHandle();
    v36 = sub_1000037B4(a1);
    v37 = *((swift_isaMask & *v2) + 0x80);
    v38 = v36;
    v37(v36);
  }

  else
  {
    v28 = v46;
    sub_1000023F4(v26, v46);
    if (v15(v28, 1, v13) == 1)
    {
      sub_100002FAC(v28, &qword_100021930, &unk_100013460);
    }

    else
    {
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&_mh_execute_header, v39, v40, "ProximityReaderSceneUIServer connection to service denied", v41, 2u);
      }

      (*(v14 + 8))(v28, v13);
    }

    [a1 invalidate];
  }
}

uint64_t sub_100002FAC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002388(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = sub_100001DF8();
  v4 = *((swift_isaMask & **v3) + 0x90);
  v5 = *v3;
  v4();

  v6 = static CommandLine.argc.getter();
  v7 = static CommandLine.unsafeArgv.getter();
  type metadata accessor for ProximityReaderSceneUIAppDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = String._bridgeToObjectiveC()();
  }

  UIApplicationMain(v6, v7, 0, v9);

  return 0;
}

void *sub_1000030E0()
{
  v1 = OBJC_IVAR____TtC22ProximityReaderSceneUI19SceneUIServerHandle_connection;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_10000312C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22ProximityReaderSceneUI19SceneUIServerHandle_connection;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1000031E4()
{
  v1 = OBJC_IVAR____TtC22ProximityReaderSceneUI19SceneUIServerHandle_currentScene;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_100003230(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22ProximityReaderSceneUI19SceneUIServerHandle_currentScene;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1000032E8()
{
  v1 = OBJC_IVAR____TtC22ProximityReaderSceneUI19SceneUIServerHandle_readerServiceEndpoint;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_100003334(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22ProximityReaderSceneUI19SceneUIServerHandle_readerServiceEndpoint;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_100003434(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22ProximityReaderSceneUI19SceneUIServerHandle_userInfo;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void *sub_1000034EC()
{
  v1 = OBJC_IVAR____TtC22ProximityReaderSceneUI19SceneUIServerHandle_uiSessionRole;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_100003538(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22ProximityReaderSceneUI19SceneUIServerHandle_uiSessionRole;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_1000035F0()
{
  v1 = OBJC_IVAR____TtC22ProximityReaderSceneUI19SceneUIServerHandle____lazy_storage___interface;
  v2 = *(v0 + OBJC_IVAR____TtC22ProximityReaderSceneUI19SceneUIServerHandle____lazy_storage___interface);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC22ProximityReaderSceneUI19SceneUIServerHandle____lazy_storage___interface);
  }

  else
  {
    sub_100008B54();

    v4 = String._bridgeToObjectiveC()();

    v5 = [objc_opt_self() interfaceWithIdentifier:v4];

    v6 = objc_opt_self();
    v7 = [v6 protocolForProtocol:&OBJC_PROTOCOL___ProximityReaderSceneUIServerInterface];
    [v5 setServer:v7];

    v8 = [v6 protocolForProtocol:&OBJC_PROTOCOL___ProximityReaderSceneUIClientInterface];
    [v5 setClient:v8];

    [v5 setClientMessagingExpectation:0];
    v9 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

void (*sub_100003754(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1000035F0();
  return sub_10000379C;
}

void sub_10000379C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC22ProximityReaderSceneUI19SceneUIServerHandle____lazy_storage___interface);
  *(v1 + OBJC_IVAR____TtC22ProximityReaderSceneUI19SceneUIServerHandle____lazy_storage___interface) = v2;
}

char *sub_1000037E8(void *a1)
{
  v3 = sub_100002388(&qword_100021930, &unk_100013460);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v29 - v7;
  *&v1[OBJC_IVAR____TtC22ProximityReaderSceneUI19SceneUIServerHandle_connection] = 0;
  *&v1[OBJC_IVAR____TtC22ProximityReaderSceneUI19SceneUIServerHandle_currentScene] = 0;
  *&v1[OBJC_IVAR____TtC22ProximityReaderSceneUI19SceneUIServerHandle_readerServiceEndpoint] = 0;
  *&v1[OBJC_IVAR____TtC22ProximityReaderSceneUI19SceneUIServerHandle_userInfo] = 0;
  *&v1[OBJC_IVAR____TtC22ProximityReaderSceneUI19SceneUIServerHandle_uiSessionRole] = 0;
  *&v1[OBJC_IVAR____TtC22ProximityReaderSceneUI19SceneUIServerHandle____lazy_storage___interface] = 0;
  v9 = type metadata accessor for SceneUIServerHandle();
  v33.receiver = v1;
  v33.super_class = v9;
  v10 = objc_msgSendSuper2(&v33, "init");
  v30 = sub_100008C08();
  sub_1000023F4(v30, v8);
  v11 = type metadata accessor for Logger();
  v31 = *(v11 - 8);
  v12 = *(v31 + 48);
  if (v12(v8, 1, v11) == 1)
  {
    sub_100002FAC(v8, &qword_100021930, &unk_100013460);
  }

  else
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "SceneUIServerHandle init", v15, 2u);
    }

    (*(v31 + 8))(v8, v11);
  }

  v16 = OBJC_IVAR____TtC22ProximityReaderSceneUI19SceneUIServerHandle_connection;
  swift_beginAccess();
  v17 = *&v10[v16];
  *&v10[v16] = a1;
  v18 = a1;

  v19 = swift_allocObject();
  *(v19 + 16) = v10;
  *(v19 + 24) = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_100003CD8;
  *(v20 + 24) = v19;
  aBlock[4] = sub_100002540;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002568;
  aBlock[3] = &unk_10001C9B0;
  v21 = _Block_copy(aBlock);
  v22 = v18;
  v23 = v10;
  v24 = v22;

  [v24 configureConnection:v21];

  _Block_release(v21);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
  }

  else
  {
    sub_1000023F4(v30, v6);
    if (v12(v6, 1, v11) == 1)
    {
      sub_100002FAC(v6, &qword_100021930, &unk_100013460);
    }

    else
    {
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "SceneUIServerHandle connection activate", v28, 2u);
      }

      (*(v31 + 8))(v6, v11);
    }

    [v24 activate];

    return v23;
  }

  return result;
}

uint64_t sub_100003C98()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100003CD8(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = (*((swift_isaMask & *v3) + 0xF8))();
  [a1 setInterface:v5];

  sub_1000088DC(0, &qword_100021B90, OS_dispatch_queue_ptr);
  v6 = static OS_dispatch_queue.main.getter();
  [a1 setTargetQueue:v6];

  v7 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality:v7];

  [a1 setInterfaceTarget:v3];
  v18 = sub_100003FA8;
  v19 = 0;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_10000412C;
  v17 = &unk_10001CC70;
  v8 = _Block_copy(&v14);
  [a1 setActivationHandler:v8];
  _Block_release(v8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v4;
  *(v10 + 24) = v9;
  v18 = sub_100008AE8;
  v19 = v10;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_10000412C;
  v17 = &unk_10001CCE8;
  v11 = _Block_copy(&v14);
  v12 = v4;

  [a1 setInvalidationHandler:v11];
  _Block_release(v11);
  v18 = sub_100004534;
  v19 = 0;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_10000412C;
  v17 = &unk_10001CD10;
  v13 = _Block_copy(&v14);
  [a1 setInterruptionHandler:v13];
  _Block_release(v13);
}

uint64_t sub_100003FA8()
{
  v0 = sub_100002388(&qword_100021930, &unk_100013460);
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_100008C08();
  sub_1000023F4(v3, v2);
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v2, 1, v4) == 1)
  {
    return sub_100002FAC(v2, &qword_100021930, &unk_100013460);
  }

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "activation handler", v9, 2u);
  }

  return (*(v5 + 8))(v2, v4);
}

void sub_100004134(void *a1, uint64_t a2)
{
  v3 = sub_100002388(&qword_100021930, &unk_100013460);
  __chkstk_darwin(v3 - 8);
  v5 = &v16[-v4];
  v6 = sub_100008C08();
  sub_1000023F4(v6, v5);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    sub_100002FAC(v5, &qword_100021930, &unk_100013460);
  }

  else
  {
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "invalidation handler - remote client disconnected", v11, 2u);
    }

    (*(v8 + 8))(v5, v7);
  }

  [a1 invalidate];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    (*((swift_isaMask & *Strong) + 0x88))(0);
  }

  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    (*((swift_isaMask & *v14) + 0x120))(sub_1000043B0, 0);
  }
}

uint64_t sub_1000043B0()
{
  v0 = sub_100002388(&qword_100021930, &unk_100013460);
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_100008C08();
  sub_1000023F4(v3, v2);
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v2, 1, v4) == 1)
  {
    return sub_100002FAC(v2, &qword_100021930, &unk_100013460);
  }

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "could not invalidate remote ui", v9, 2u);
  }

  return (*(v5 + 8))(v2, v4);
}

id sub_100004534(void *a1)
{
  v2 = sub_100002388(&qword_100021930, &unk_100013460);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_100008C08();
  sub_1000023F4(v5, v4);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_100002FAC(v4, &qword_100021930, &unk_100013460);
  }

  else
  {
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "interruption handler", v10, 2u);
    }

    (*(v7 + 8))(v4, v6);
  }

  return [a1 activate];
}

uint64_t sub_1000046E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1000046FC()
{
  v1 = v0;
  v2 = sub_100002388(&qword_100021930, &unk_100013460);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_100008C08();
  sub_1000023F4(v5, v4);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_100002FAC(v4, &qword_100021930, &unk_100013460);
  }

  else
  {
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "SceneUIServerHandle destroyed", v10, 2u);
    }

    (*(v7 + 8))(v4, v6);
  }

  v11 = type metadata accessor for SceneUIServerHandle();
  v13.receiver = v1;
  v13.super_class = v11;
  return objc_msgSendSuper2(&v13, "dealloc");
}

uint64_t sub_10000495C(void *a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v114 = a4;
  v112 = a1;
  v108 = type metadata accessor for DispatchWorkItemFlags();
  v107 = *(v108 - 8);
  __chkstk_darwin(v108);
  v105 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for DispatchQoS();
  v104 = *(v106 - 8);
  __chkstk_darwin(v106);
  v103 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for XPCUserInfoKey();
  v10 = *(v111 - 8);
  __chkstk_darwin(v111);
  v12 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100002388(&qword_100021930, &unk_100013460);
  v14 = __chkstk_darwin(v13 - 8);
  v110 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v99 = &v97 - v17;
  v18 = __chkstk_darwin(v16);
  v102 = &v97 - v19;
  v20 = __chkstk_darwin(v18);
  v100 = &v97 - v21;
  v22 = __chkstk_darwin(v20);
  v101 = &v97 - v23;
  __chkstk_darwin(v22);
  v25 = &v97 - v24;
  v116 = sub_100008C08();
  sub_1000023F4(v116, v25);
  v26 = type metadata accessor for Logger();
  v27 = *(v26 - 8);
  v28 = *(v27 + 48);
  v113 = v27 + 48;
  v117 = v28;
  v29 = v28(v25, 1, v26);
  v115 = a3;
  v109 = v27;
  if (v29 == 1)
  {
    v30 = v26;
    sub_100002FAC(v25, &qword_100021930, &unk_100013460);
  }

  else
  {
    v98 = v5;
    v31 = [a2 debugDescription];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    v35 = sub_100008DA0();
    v5 = v98;
    sub_100008DB4(v35 & 1, v98, 0xD00000000000002BLL, 0x8000000100014ED0, v32, v34);

    v30 = v26;
    (*(v27 + 8))(v25, v26);
  }

  v36 = *((swift_isaMask & *v5) + 0xB8);
  v37 = a2;
  v98 = a2;
  v36(a2);
  v38 = *((swift_isaMask & *v5) + 0xD0);
  v39 = v112;

  v38(v40);
  v41 = v111;
  (*(v10 + 104))(v12, enum case for XPCUserInfoKey.uiMode(_:), v111);
  v42 = XPCUserInfoKey.rawValue.getter();
  v44 = v43;
  (*(v10 + 8))(v12, v41);
  v119 = v42;
  v120 = v44;
  AnyHashable.init<A>(_:)();
  if (!v39[2] || (v45 = sub_100007448(aBlock), (v46 & 1) == 0))
  {
    sub_10000748C(aBlock);
    v47 = v30;
    goto LABEL_11;
  }

  sub_100007534(v39[7] + 32 * v45, v121);
  sub_10000748C(aBlock);
  v47 = v30;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v55 = v110;
    sub_1000023F4(v116, v110);
    if (v117(v55, 1, v47) == 1)
    {
      sub_100002FAC(v55, &qword_100021930, &unk_100013460);
    }

    else
    {
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&_mh_execute_header, v56, v57, "Couldn't get ui mode from userInfo", v58, 2u);
      }

      (*(v109 + 8))(v55, v47);
    }

    sub_1000074E0();
    v59 = swift_allocError();
    *v60 = 0;
    goto LABEL_17;
  }

  v48 = v119;
  v49 = UIMode.init(rawValue:)();
  v50 = v109;
  if (v49 >= 2)
  {
    if (v49 == 2)
    {
      v112 = v37;
      v62 = v100;
      sub_1000023F4(v116, v100);
      v63 = v117(v62, 1, v30);
      v111 = v48;
      v53 = v5;
      if (v63 == 1)
      {
        sub_100002FAC(v62, &qword_100021930, &unk_100013460);
        v54 = SBSUIProximityReaderIDVerifierSceneSpecification_ptr;
        goto LABEL_23;
      }

      v65 = v115;
      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        *v72 = 0;
        _os_log_impl(&_mh_execute_header, v70, v71, "activateRemoteUI - ui role = identity", v72, 2u);
      }

      (*(v50 + 8))(v100, v30);
      v54 = SBSUIProximityReaderIDVerifierSceneSpecification_ptr;
LABEL_32:
      v64 = v65;
      goto LABEL_33;
    }

    v69 = v99;
    sub_1000023F4(v116, v99);
    if (v117(v69, 1, v30) == 1)
    {
      sub_100002FAC(v69, &qword_100021930, &unk_100013460);
    }

    else
    {
      v93 = Logger.logObject.getter();
      v94 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        *v95 = 0;
        _os_log_impl(&_mh_execute_header, v93, v94, "Invalid ui mode", v95, 2u);
      }

      (*(v50 + 8))(v69, v30);
    }

    sub_1000074E0();
    v59 = swift_allocError();
    *v96 = 1;
LABEL_17:
    (v115)(v59);
  }

  v112 = v37;
  v51 = v101;
  sub_1000023F4(v116, v101);
  v52 = v117(v51, 1, v30);
  v111 = v48;
  v53 = v5;
  if (v52 != 1)
  {
    v65 = v115;
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&_mh_execute_header, v66, v67, "activateRemoteUI - ui role = transaction", v68, 2u);
    }

    (*(v50 + 8))(v101, v30);
    v54 = SBSUIProximityReaderSceneSpecification_ptr;
    goto LABEL_32;
  }

  sub_100002FAC(v51, &qword_100021930, &unk_100013460);
  v54 = SBSUIProximityReaderSceneSpecification_ptr;
LABEL_23:
  v64 = v115;
LABEL_33:
  v73 = [objc_allocWithZone(*v54) init];
  v74 = [v73 uiSceneSessionRole];

  v75 = v74;
  v76 = v53;
  (*((swift_isaMask & *v53) + 0xE8))();
  v77 = v102;
  sub_1000023F4(v116, v102);
  if (v117(v77, 1, v30) == 1)
  {
    sub_100002FAC(v77, &qword_100021930, &unk_100013460);
  }

  else
  {
    v117 = v30;
    v78 = v112;
    v79 = v75;
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      *v82 = 138412802;
      *(v82 + 4) = v78;
      *(v82 + 12) = 2112;
      *(v82 + 14) = v79;
      *v83 = v98;
      v83[1] = v75;
      *(v82 + 22) = 2048;
      *(v82 + 24) = v111;
      v84 = v78;
      v85 = v79;
      _os_log_impl(&_mh_execute_header, v80, v81, "activateRemoteUI ep: %@ role: %@ mode: %ld", v82, 0x20u);
      sub_100002388(&unk_100021A20, &qword_1000134C0);
      swift_arrayDestroy();
    }

    (*(v109 + 8))(v77, v117);
    v64 = v115;
  }

  (*((swift_isaMask & *v76) + 0xA0))(0);
  sub_1000088DC(0, &qword_100021B90, OS_dispatch_queue_ptr);
  v86 = static OS_dispatch_queue.main.getter();
  v87 = swift_allocObject();
  v87[2] = v75;
  v87[3] = v64;
  v87[4] = v114;
  aBlock[4] = sub_100007590;
  aBlock[5] = v87;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000059F4;
  aBlock[3] = &unk_10001CA00;
  v88 = _Block_copy(aBlock);
  v89 = v75;

  v90 = v103;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000078C0(&qword_100021B98, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100002388(&qword_100021BA0, &qword_1000134B8);
  sub_10000759C();
  v91 = v105;
  v92 = v108;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v88);

  (*(v107 + 8))(v91, v92);
  return (*(v104 + 8))(v90, v106);
}

uint64_t sub_100005728(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UISceneSessionActivationRequest();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100002388(&qword_100021930, &unk_100013460);
  __chkstk_darwin(v10 - 8);
  v12 = &v23 - v11;
  v13 = sub_100008C08();
  sub_1000023F4(v13, v12);
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v12, 1, v14) == 1)
  {
    sub_100002FAC(v12, &qword_100021930, &unk_100013460);
  }

  else
  {
    v24 = a1;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v23 = a2;
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "activateRemoteUI() activateSceneSession", v18, 2u);
      a2 = v23;
    }

    (*(v15 + 8))(v12, v14);
    a1 = v24;
  }

  v19 = a1;
  UISceneSessionActivationRequest.init(role:userActivity:options:)();
  v20 = [objc_opt_self() sharedApplication];
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;

  UIApplication.activateSceneSession(for:errorHandler:)();

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1000059F4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_100005AF4(uint64_t a1, uint64_t a2)
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

void sub_100005B58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v36 = type metadata accessor for DispatchWorkItemFlags();
  v39 = *(v36 - 8);
  __chkstk_darwin(v36);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v37 = *(v8 - 8);
  v38 = v8;
  __chkstk_darwin(v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100002388(&qword_100021930, &unk_100013460);
  __chkstk_darwin(v11 - 8);
  v13 = &v34 - v12;
  v14 = sub_100008C08();
  sub_1000023F4(v14, v13);
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v13, 1, v15) == 1)
  {
    v17 = sub_100002FAC(v13, &qword_100021930, &unk_100013460);
  }

  else
  {
    v35 = v10;
    v18 = sub_100008DA0();
    v19 = sub_100008DA8();
    v10 = v35;
    sub_100008DB4(v18 & 1, v3, 0xD000000000000016, 0x8000000100014F00, v19, v20);

    v17 = (*(v16 + 8))(v13, v15);
  }

  v21 = (*((swift_isaMask & *v3) + 0xE0))(v17);
  if (v21)
  {
    v22 = v21;
    sub_1000088DC(0, &qword_100021B90, OS_dispatch_queue_ptr);
    v23 = static OS_dispatch_queue.main.getter();
    v24 = swift_allocObject();
    v24[2] = v22;
    v24[3] = a1;
    v24[4] = a2;
    aBlock[4] = sub_10000764C;
    aBlock[5] = v24;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000059F4;
    aBlock[3] = &unk_10001CA50;
    v25 = _Block_copy(aBlock);
    v26 = v22;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_1000078C0(&qword_100021B98, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100002388(&qword_100021BA0, &qword_1000134B8);
    sub_10000759C();
    v27 = v36;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v25);

    (*(v39 + 8))(v7, v27);
    (*(v37 + 8))(v10, v38);
  }

  v28 = (*((swift_isaMask & *v3) + 0xA0))(0);
  v29 = (*((swift_isaMask & *v3) + 0x80))(v28);
  if (v29)
  {
    v30 = v29;
    [v29 invalidate];
  }

  v31 = sub_100001DF8();
  v32 = *((swift_isaMask & **v31) + 0x98);
  v33 = *v31;
  v32();
}

void sub_100006070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = a2;
  v49 = a3;
  v50 = a1;
  v3 = sub_100002388(&qword_100021930, &unk_100013460);
  __chkstk_darwin(v3 - 8);
  v51 = &v43 - v4;
  v47 = objc_opt_self();
  v5 = [v47 sharedApplication];
  v6 = [v5 connectedScenes];

  v7 = sub_1000088DC(0, &qword_100021C78, UIScene_ptr);
  sub_100008924();
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v44 = v7;
  if ((v8 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v8 = v54[4];
    v9 = v54[5];
    v10 = v54[6];
    v11 = v54[7];
    v12 = v54[8];
  }

  else
  {
    v11 = 0;
    v13 = -1 << *(v8 + 32);
    v9 = v8 + 56;
    v10 = ~v13;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v12 = v15 & *(v8 + 56);
  }

  v43 = v10;
  v16 = (v10 + 64) >> 6;
  v46 = v54;
  v45 = v8;
  while (v8 < 0)
  {
    v27 = __CocoaSet.Iterator.next()();
    if (!v27 || (v52 = v27, swift_dynamicCast(), v22 = aBlock[0], v25 = v11, v26 = v12, !aBlock[0]))
    {
LABEL_31:
      sub_10000898C(v8);
      return;
    }

LABEL_20:
    v28 = [v22 session];
    v29 = [v28 role];

    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;
    if (v30 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v32 == v33)
    {
    }

    else
    {
      v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v35 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v36 = sub_100008C08();
    v37 = v51;
    sub_1000023F4(v36, v51);
    v38 = type metadata accessor for Logger();
    v39 = *(v38 - 8);
    if ((*(v39 + 48))(v37, 1, v38) == 1)
    {
      sub_100002FAC(v37, &qword_100021930, &unk_100013460);
    }

    else
    {
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v40, v41, "invalidateRemoteUI destroying scene", v42, 2u);
      }

      (*(v39 + 8))(v51, v38);
    }

    v17 = [v47 sharedApplication];
    v18 = [v22 session];
    v19 = swift_allocObject();
    v20 = v49;
    *(v19 + 16) = v48;
    *(v19 + 24) = v20;
    v54[2] = sub_1000089CC;
    v54[3] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    v54[0] = sub_1000067D8;
    v54[1] = &unk_10001CC20;
    v21 = _Block_copy(aBlock);

    [v17 requestSceneSessionDestruction:v18 options:0 errorHandler:v21];
    _Block_release(v21);

    v22 = v18;
    v8 = v45;
LABEL_10:

    v11 = v25;
    v12 = v26;
  }

  v23 = v11;
  v24 = v12;
  v25 = v11;
  if (v12)
  {
LABEL_16:
    v26 = (v24 - 1) & v24;
    v22 = *(*(v8 + 48) + ((v25 << 9) | (8 * __clz(__rbit64(v24)))));
    if (!v22)
    {
      goto LABEL_31;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v25 >= v16)
    {
      goto LABEL_31;
    }

    v24 = *(v9 + 8 * v25);
    ++v23;
    if (v24)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_1000065B8(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, const char *a4)
{
  v7 = sub_100002388(&qword_100021930, &unk_100013460);
  __chkstk_darwin(v7 - 8);
  v9 = &v20 - v8;
  v10 = sub_100008C08();
  sub_1000023F4(v10, v9);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    sub_100002FAC(v9, &qword_100021930, &unk_100013460);
  }

  else
  {
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v21 = a4;
      v16 = v15;
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      swift_errorRetain();
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v18;
      *v17 = v18;
      _os_log_impl(&_mh_execute_header, v13, v14, v21, v16, 0xCu);
      sub_100002FAC(v17, &unk_100021A20, &qword_1000134C0);
    }

    (*(v12 + 8))(v9, v11);
  }

  return a2(a1);
}

void sub_1000067E0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1000068D8()
{
  v1 = sub_100002388(&qword_100021930, &unk_100013460);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = sub_100008C08();
  sub_1000023F4(v4, v3);
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    return sub_100002FAC(v3, &qword_100021930, &unk_100013460);
  }

  v8 = sub_100008DA0();
  v9 = sub_100008DA8();
  sub_100008DB4(v8 & 1, v0, 0xD000000000000016, 0x8000000100014F20, v9, v10);

  return (*(v6 + 8))(v3, v5);
}

BOOL sub_100006BB8(void *a1)
{
  v3 = (*((swift_isaMask & *v1) + 0x98))();
  v4 = v3;
  if (v3)
  {

    v5 = [objc_opt_self() sharedApplication];
    v6 = [a1 session];
    v11[4] = sub_100006D40;
    v11[5] = 0;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_1000067D8;
    v11[3] = &unk_10001CA78;
    v7 = _Block_copy(v11);
    [v5 requestSceneSessionDestruction:v6 options:0 errorHandler:v7];
    _Block_release(v7);
  }

  else
  {
    v8 = *((swift_isaMask & *v1) + 0xA0);
    v9 = a1;
    v8(a1);
  }

  return v4 == 0;
}

uint64_t sub_100006D40(uint64_t a1)
{
  v1 = sub_100002388(&qword_100021930, &unk_100013460);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - v2;
  v4 = sub_100008C08();
  sub_1000023F4(v4, v3);
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    return sub_100002FAC(v3, &qword_100021930, &unk_100013460);
  }

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
    _os_log_impl(&_mh_execute_header, v8, v9, "~~~~ Could not close scene %@", v10, 0xCu);
    sub_100002FAC(v11, &unk_100021A20, &qword_1000134C0);
  }

  return (*(v6 + 8))(v3, v5);
}

Swift::Int sub_100006F80()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100006FF4(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_100007050(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_1000070C8(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100007148@<X0>(void *a3@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = String._bridgeToObjectiveC()();

  *a3 = v4;
  return result;
}

uint64_t sub_10000718C@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_1000071D4@<X0>(uint64_t *a2@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100007200(uint64_t a1)
{
  v2 = sub_1000078C0(&qword_100021C68, type metadata accessor for Role, &unk_1000136B0);
  v3 = sub_1000078C0(&qword_100021C70, type metadata accessor for Role, &unk_100013650);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000072BC(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_1000072F8(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_10000734C(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_1000073C0(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

unint64_t sub_100007448(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000079D8(a1, v4);
}

unint64_t sub_1000074E0()
{
  result = qword_100021B88;
  if (!qword_100021B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021B88);
  }

  return result;
}

uint64_t sub_100007534(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_10000759C()
{
  result = qword_100021BA8;
  if (!qword_100021BA8)
  {
    sub_100007600(&qword_100021BA0, &qword_1000134B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021BA8);
  }

  return result;
}

uint64_t sub_100007600(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10000765C()
{
  result = qword_100021BB8;
  if (!qword_100021BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021BB8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UISceneError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UISceneError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void type metadata accessor for Role()
{
  if (!qword_100021C48)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100021C48);
    }
  }
}

uint64_t sub_1000078C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100007998()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1000079D8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100008A14(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10000748C(v8);
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

uint64_t sub_100007AA0(uint64_t a1, void *a2, void *a3, void (**a4)(const void *, void *))
{
  v115 = a1;
  v101 = type metadata accessor for DispatchWorkItemFlags();
  v107 = *(v101 - 8);
  __chkstk_darwin(v101);
  v105 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for DispatchQoS();
  v104 = *(v106 - 8);
  __chkstk_darwin(v106);
  v103 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for XPCUserInfoKey();
  v113 = *(v9 - 8);
  v114 = v9;
  __chkstk_darwin(v9);
  v112 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100002388(&qword_100021930, &unk_100013460);
  v12 = __chkstk_darwin(v11 - 8);
  v108 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v102 = &v96 - v15;
  v16 = __chkstk_darwin(v14);
  v99 = &v96 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v96 - v19;
  v21 = __chkstk_darwin(v18);
  v109 = &v96 - v22;
  __chkstk_darwin(v21);
  v24 = &v96 - v23;
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  v110 = a4;
  _Block_copy(a4);
  v118 = sub_100008C08();
  sub_1000023F4(v118, v24);
  v26 = type metadata accessor for Logger();
  v27 = *(v26 - 8);
  v117 = *(v27 + 48);
  v28 = v117(v24, 1, v26);
  v116 = v27 + 48;
  v98 = v20;
  v111 = v27;
  if (v28 == 1)
  {
    sub_100002FAC(v24, &qword_100021930, &unk_100013460);
    v29 = a2;
  }

  else
  {
    v30 = v27;
    v31 = [a2 debugDescription];
    v29 = a2;
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v25;
    v35 = v34;

    v36 = sub_100008DA0();
    sub_100008DB4(v36 & 1, a3, 0xD00000000000002BLL, 0x8000000100014ED0, v32, v35);
    v25 = v33;

    (*(v30 + 8))(v24, v26);
  }

  v37 = *((swift_isaMask & *a3) + 0xB8);
  v100 = v29;
  v97 = v29;
  v37(v29);
  v38 = *((swift_isaMask & *a3) + 0xD0);
  v39 = v115;

  v38(v40);
  v41 = v112;
  v42 = v113;
  v43 = v114;
  (*(v113 + 104))(v112, enum case for XPCUserInfoKey.uiMode(_:), v114);
  v44 = XPCUserInfoKey.rawValue.getter();
  v46 = v45;
  (*(v42 + 8))(v41, v43);
  v120 = v44;
  v121 = v46;
  AnyHashable.init<A>(_:)();
  if (!*(v39 + 16) || (v47 = sub_100007448(aBlock), (v48 & 1) == 0))
  {
    sub_10000748C(aBlock);
    v50 = v117;
    goto LABEL_11;
  }

  sub_100007534(*(v39 + 56) + 32 * v47, v122);
  sub_10000748C(aBlock);
  v49 = swift_dynamicCast();
  v50 = v117;
  if (!v49)
  {
LABEL_11:
    v54 = v109;
    sub_1000023F4(v118, v109);
    v55 = v50(v54, 1, v26);
    v56 = v111;
    if (v55 == 1)
    {
      sub_100002FAC(v54, &qword_100021930, &unk_100013460);
    }

    else
    {
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&_mh_execute_header, v57, v58, "Couldn't get ui mode from userInfo", v59, 2u);
      }

      (*(v56 + 8))(v54, v26);
    }

    sub_1000074E0();
    swift_allocError();
    *v60 = 0;
    goto LABEL_17;
  }

  v51 = v120;
  v52 = UIMode.init(rawValue:)();
  if (v52 >= 2)
  {
    if (v52 == 2)
    {
      v115 = v51;
      v63 = v99;
      sub_1000023F4(v118, v99);
      if (v50(v63, 1, v26) == 1)
      {
        sub_100002FAC(v63, &qword_100021930, &unk_100013460);
      }

      else
      {
        v69 = Logger.logObject.getter();
        v70 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          *v71 = 0;
          _os_log_impl(&_mh_execute_header, v69, v70, "activateRemoteUI - ui role = identity", v71, 2u);
          v50 = v117;
        }

        (*(v111 + 8))(v99, v26);
      }

      v67 = SBSUIProximityReaderIDVerifierSceneSpecification_ptr;
      goto LABEL_33;
    }

    v68 = v98;
    sub_1000023F4(v118, v98);
    if (v50(v68, 1, v26) == 1)
    {
      sub_100002FAC(v68, &qword_100021930, &unk_100013460);
    }

    else
    {
      v92 = Logger.logObject.getter();
      v93 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        *v94 = 0;
        _os_log_impl(&_mh_execute_header, v92, v93, "Invalid ui mode", v94, 2u);
      }

      (*(v111 + 8))(v68, v26);
    }

    sub_1000074E0();
    swift_allocError();
    *v95 = 1;
LABEL_17:
    v61 = _convertErrorToNSError(_:)();
    v110[2](v110, v61);
  }

  v115 = v51;
  v53 = v102;
  sub_1000023F4(v118, v102);
  if (v50(v53, 1, v26) == 1)
  {
    sub_100002FAC(v53, &qword_100021930, &unk_100013460);
  }

  else
  {
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&_mh_execute_header, v64, v65, "activateRemoteUI - ui role = transaction", v66, 2u);
      v50 = v117;
    }

    (*(v111 + 8))(v102, v26);
  }

  v67 = SBSUIProximityReaderSceneSpecification_ptr;
LABEL_33:
  v72 = [objc_allocWithZone(*v67) init];
  v73 = [v72 uiSceneSessionRole];

  v74 = v73;
  (*((swift_isaMask & *a3) + 0xE8))();
  v75 = v108;
  sub_1000023F4(v118, v108);
  if (v50(v75, 1, v26) == 1)
  {
    sub_100002FAC(v75, &qword_100021930, &unk_100013460);
  }

  else
  {
    v118 = a3;
    v76 = v100;
    v77 = v74;
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v116 = v26;
      v81 = v80;
      v82 = swift_slowAlloc();
      v117 = v25;
      *v81 = 138412802;
      *(v81 + 4) = v76;
      *(v81 + 12) = 2112;
      *(v81 + 14) = v77;
      *v82 = v97;
      v82[1] = v74;
      *(v81 + 22) = 2048;
      *(v81 + 24) = v115;
      v83 = v76;
      v84 = v77;
      _os_log_impl(&_mh_execute_header, v78, v79, "activateRemoteUI ep: %@ role: %@ mode: %ld", v81, 0x20u);
      sub_100002388(&unk_100021A20, &qword_1000134C0);
      swift_arrayDestroy();
      v25 = v117;

      v26 = v116;
    }

    (*(v111 + 8))(v108, v26);
    a3 = v118;
  }

  (*((swift_isaMask & *a3) + 0xA0))(0);
  sub_1000088DC(0, &qword_100021B90, OS_dispatch_queue_ptr);
  v85 = static OS_dispatch_queue.main.getter();
  v86 = swift_allocObject();
  v86[2] = v74;
  v86[3] = sub_100008B40;
  v86[4] = v25;
  aBlock[4] = sub_100008B44;
  aBlock[5] = v86;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000059F4;
  aBlock[3] = &unk_10001CBD0;
  v87 = _Block_copy(aBlock);
  v88 = v74;

  v89 = v103;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000078C0(&qword_100021B98, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100002388(&qword_100021BA0, &qword_1000134B8);
  sub_10000759C();
  v90 = v105;
  v91 = v101;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v87);

  (*(v107 + 8))(v90, v91);
  (*(v104 + 8))(v89, v106);
}

uint64_t sub_10000889C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000088DC(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_100008924()
{
  result = qword_100021C80;
  if (!qword_100021C80)
  {
    sub_1000088DC(255, &qword_100021C78, UIScene_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021C80);
  }

  return result;
}

uint64_t sub_100008994()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100008A70()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008AA8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100008B70(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100008C2C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_100002388(&qword_100021930, &unk_100013460);
  sub_1000098D0(v5, a2);
  v6 = sub_100008B70(v5, a2);
  Logger.init(subsystem:category:)();
  v7 = type metadata accessor for Logger();
  v8 = *(*(v7 - 8) + 56);

  return v8(v6, 0, 1, v7);
}

uint64_t sub_100008D00(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = sub_100002388(&qword_100021930, &unk_100013460);

  return sub_100008B70(v4, a2);
}

uint64_t sub_100008D60()
{
  result = MCGestaltIsInternalBuild();
  byte_1000229A8 = result;
  return result;
}

void sub_100008DB4(char a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  if (qword_100022660 != -1)
  {
    v30 = a1;
    v31 = a6;
    v32 = a5;
    swift_once();
    a1 = v30;
    a5 = v32;
    a6 = v31;
  }

  v8 = byte_1000229A8;
  if (byte_1000229A8 & 1) != 0 || (a1)
  {
    v9 = HIBYTE(a6) & 0xF;
    if ((a6 & 0x2000000000000000) == 0)
    {
      v9 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      v37 = a3;
      v38 = a4;
      v10 = a6;
      v11 = a5;

      v12._countAndFlagsBits = 8250;
      v12._object = 0xE200000000000000;
      String.append(_:)(v12);
      v13._countAndFlagsBits = v11;
      v13._object = v10;
      String.append(_:)(v13);
      a4 = v38;
    }

    else
    {
    }

    swift_unknownObjectRetain();

    oslog = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    swift_unknownObjectRelease();
    if (os_log_type_enabled(oslog, v14))
    {
      v33 = v14;
      v34 = a3;
      v15 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v15 = 136446466;
      ObjectIdentifier.debugDescription.getter();
      sub_100009808();
      v16 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v18 = v17;

      sub_10000974C(8, v16, v18);

      swift_getObjectType();
      sub_100002388(&qword_100021DB8, &qword_100013758);
      v37 = String.init<A>(describing:)();
      v38 = v19;
      v20._countAndFlagsBits = 45;
      v20._object = 0xE100000000000000;
      String.append(_:)(v20);
      v21 = static String._fromSubstring(_:)();
      v23 = v22;

      v24._countAndFlagsBits = v21;
      v24._object = v23;
      String.append(_:)(v24);

      v25 = v37;
      v26 = v38;
      v37 = 2715432;
      v38 = 0xE300000000000000;
      if (v8)
      {
        v27 = v26;
      }

      else
      {
        String.hashValue.getter();

        v25 = dispatch thunk of CustomStringConvertible.description.getter();
      }

      String.append(_:)(*&v25);

      v28 = sub_1000091A4(v37, v38, &v36);

      *(v15 + 4) = v28;
      *(v15 + 12) = 2082;
      v29 = sub_1000091A4(v34, a4, &v36);

      *(v15 + 14) = v29;
      _os_log_impl(&_mh_execute_header, oslog, v33, "%{public}s.%{public}s", v15, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

unint64_t sub_1000091A4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100009270(v11, 0, 0, 1, a1, a2);
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
    sub_100007534(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100009880(v11);
  return v7;
}

unint64_t sub_100009270(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000937C(a5, a6);
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

char *sub_10000937C(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000093C8(a1, a2);
  sub_1000094F8(&off_10001CD78);
  return v3;
}

char *sub_1000093C8(uint64_t a1, unint64_t a2)
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

  v6 = sub_1000095E4(v5, 0);
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
        v7 = sub_1000095E4(v10, 0);
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

uint64_t sub_1000094F8(uint64_t result)
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

  result = sub_100009658(result, v11, 1, v3);
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

void *sub_1000095E4(uint64_t a1, uint64_t a2)
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

  sub_100002388(&unk_100021F50, ">$");
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100009658(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002388(&unk_100021F50, ">$");
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

uint64_t sub_10000974C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return String.subscript.getter();
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = String.index(_:offsetBy:limitedBy:)();
  if (v5)
  {
    v4 = 15;
  }

  if (4 * v3 < v4 >> 14)
  {
    goto LABEL_12;
  }

  return String.subscript.getter();
}

unint64_t sub_100009808()
{
  result = qword_100021DB0;
  if (!qword_100021DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021DB0);
  }

  return result;
}

uint64_t sub_100009880(void *a1)
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

uint64_t *sub_1000098D0(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void sub_100009934(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = sub_100002388(&qword_100021930, &unk_100013460);
  __chkstk_darwin(v10 - 8);
  v12 = v25 - v11;
  v13 = sub_100008C08();
  sub_1000023F4(v13, v12);
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v12, 1, v14) == 1)
  {
    sub_100009BB0(v12);
  }

  else
  {
    v25[0] = a4;
    v25[1] = a3;
    v16 = sub_100008DA0();
    v17 = sub_100008DA8();
    sub_100008DB4(v16 & 1, v6, 0xD000000000000042, 0x8000000100015140, v17, v18);

    (*(v15 + 8))(v12, v14);
  }

  type metadata accessor for IdentityRemoteSceneController();
  v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  dispatch thunk of BaseRemoteSceneController.setup(scene:userInfo:endpoint:handle:)();
  v20 = v19;
  [a1 setRootViewController:v20];
  [a1 setContentsPosition:0];
  v21 = *((swift_isaMask & *v6) + 0x68);
  v22 = a1;
  v23 = v21(a1);
  v24 = (*((swift_isaMask & *v6) + 0x60))(v23);
  [v24 setRootViewController:v20];
}

uint64_t sub_100009BB0(uint64_t a1)
{
  v2 = sub_100002388(&qword_100021930, &unk_100013460);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_100009CBC(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for IdentityUISceneDelegate();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_100009CF0()
{
  v1 = sub_100002388(&qword_100021930, &unk_100013460);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v27 - v6;
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = sub_100008C08();
  sub_1000023F4(v10, v9);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(v9, 1, v11) == 1)
  {
    v14 = sub_100009BB0(v9);
  }

  else
  {
    v28 = v10;
    v15 = sub_100008DA0();
    v16 = sub_100008DA8();
    v27 = v13;
    v10 = v28;
    sub_100008DB4(v15 & 1, v0, 0xD000000000000016, 0x80000001000151E0, v16, v17);
    v13 = v27;

    v14 = (*(v12 + 8))(v9, v11);
  }

  v18 = (*((swift_isaMask & *v0) + 0x60))(v14);
  if (v18)
  {
    v19 = v18;
    v20 = [v18 rootViewController];

    if (v20)
    {
      type metadata accessor for IdentityRemoteSceneController();
      if (swift_dynamicCastClass())
      {
        sub_1000023F4(v10, v7);
        if (v13(v7, 1, v11) == 1)
        {
          sub_100009BB0(v7);
        }

        else
        {
          v24 = Logger.logObject.getter();
          v25 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v24, v25))
          {
            v26 = swift_slowAlloc();
            *v26 = 0;
            _os_log_impl(&_mh_execute_header, v24, v25, "IdentityUISceneDelegate:scene() didDisconnect: CLEANUP!!!", v26, 2u);
          }

          (*(v12 + 8))(v7, v11);
        }

        dispatch thunk of BaseRemoteSceneController.disconnected()();

        return;
      }
    }
  }

  sub_1000023F4(v10, v4);
  if (v13(v4, 1, v11) == 1)
  {
    sub_100009BB0(v4);
  }

  else
  {
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "IdentityUISceneDelegate:scene() didDisconnect: cannot get root controller", v23, 2u);
    }

    (*(v12 + 8))(v4, v11);
  }
}

uint64_t sub_10000A108()
{
  v1 = sub_100002388(&qword_100021930, &unk_100013460);
  __chkstk_darwin(v1 - 8);
  v3 = &v17 - v2;
  v4 = sub_100008C08();
  sub_10000DA34(v4, v3, &qword_100021930, &unk_100013460);
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    return sub_100002FAC(v3, &qword_100021930, &unk_100013460);
  }

  v8 = v0;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 136315138;
    v17 = *&v8[OBJC_IVAR____TtC22ProximityReaderSceneUI20UISceneActionHandler_action];
    v18 = v12;
    v13 = v17;
    sub_100002388(&qword_100021F48, &qword_100013808);
    v14 = String.init<A>(describing:)();
    v16 = sub_1000091A4(v14, v15, &v18);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "UISceneActionHandler - Received action: %s", v11, 0xCu);
    sub_100009880(v12);
  }

  return (*(v6 + 8))(v3, v5);
}

void sub_10000A340(void *a1)
{
  v3 = sub_100002388(&qword_100021930, &unk_100013460);
  __chkstk_darwin(v3 - 8);
  v5 = &v25 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC22ProximityReaderSceneUI20UISceneActionHandler_action);
  if (v6)
  {
    v28 = v6;
    if ([v28 canSendResponse])
    {
      v7 = sub_100008C08();
      sub_10000DA34(v7, v5, &qword_100021930, &unk_100013460);
      v8 = type metadata accessor for Logger();
      v9 = *(v8 - 8);
      if ((*(v9 + 48))(v5, 1, v8) == 1)
      {
        sub_100002FAC(v5, &qword_100021930, &unk_100013460);
        v10 = a1;
      }

      else
      {
        v10 = a1;
        v12 = v28;
        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v29 = a1;
          v30 = v27;
          *v15 = 136315394;
          v16 = v10;
          sub_100002388(&unk_100021E90, &qword_1000137B8);
          v17 = String.init<A>(describing:)();
          v19 = sub_1000091A4(v17, v18, &v30);
          v25 = v13;
          v20 = v14;
          v21 = v19;

          *(v15 + 4) = v21;
          *(v15 + 12) = 2112;
          *(v15 + 14) = v12;
          v22 = v26;
          *v26 = v6;
          v23 = v12;
          v24 = v25;
          _os_log_impl(&_mh_execute_header, v25, v20, "UISceneActionHandler - Sending response: %s action %@", v15, 0x16u);
          sub_100002FAC(v22, &unk_100021A20, &qword_1000134C0);

          sub_100009880(v27);
        }

        else
        {
        }

        (*(v9 + 8))(v5, v8);
      }

      [v28 sendResponse:v10];
    }

    else
    {
      v11 = v28;
    }
  }
}

uint64_t sub_10000A750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_100002388(&qword_100021930, &unk_100013460);
  v4[3] = swift_task_alloc();
  v4[4] = swift_task_alloc();
  v4[5] = swift_task_alloc();

  return _swift_task_switch(sub_10000A804, 0, 0);
}

uint64_t sub_10000A804()
{
  type metadata accessor for AppManager();
  static AppManager.shared.getter();
  v1 = dispatch thunk of AppManager.callHandler.getter();
  v3 = v2;

  *(v0 + 48) = v1;
  *(v0 + 56) = v3;
  if (v1)
  {
    v15 = (v1 + *v1);
    v4 = swift_task_alloc();
    *(v0 + 64) = v4;
    *v4 = v0;
    v4[1] = sub_10000AABC;

    return v15();
  }

  else
  {
    v6 = *(v0 + 32);
    v7 = sub_100008C08();
    sub_10000DA34(v7, v6, &qword_100021930, &unk_100013460);
    v8 = type metadata accessor for Logger();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v6, 1, v8) == 1)
    {
      sub_100002FAC(*(v0 + 32), &qword_100021930, &unk_100013460);
    }

    else
    {
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "BSAction activity can't continue, ignore", v12, 2u);
      }

      v13 = *(v0 + 32);

      (*(v9 + 8))(v13, v8);
    }

    [*(v0 + 16) setProceed:0];

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_10000AABC(char a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_10000AF0C;
  }

  else
  {
    *(v4 + 80) = a1 & 1;
    v5 = sub_10000ABE8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10000ABE8()
{
  if (*(v0 + 80) == 1)
  {
    v1 = *(v0 + 40);
    v2 = sub_100008C08();
    sub_10000DA34(v2, v1, &qword_100021930, &unk_100013460);
    v3 = type metadata accessor for Logger();
    v4 = *(v3 - 8);
    if ((*(v4 + 48))(v1, 1, v3) == 1)
    {
      sub_100002FAC(*(v0 + 40), &qword_100021930, &unk_100013460);
    }

    else
    {
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, v10, "BSAction activity handling success, proceed ", v11, 2u);
      }

      v12 = *(v0 + 40);

      (*(v4 + 8))(v12, v3);
    }

    v13 = *(v0 + 48);
    v14 = *(v0 + 56);
    [*(v0 + 16) setProceed:1];
    sub_10000DA24(v13, v14);
  }

  else
  {
    sub_10000DA24(*(v0 + 48), *(v0 + 56));
    v5 = *(v0 + 32);
    v6 = sub_100008C08();
    sub_10000DA34(v6, v5, &qword_100021930, &unk_100013460);
    v7 = type metadata accessor for Logger();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v5, 1, v7) == 1)
    {
      sub_100002FAC(*(v0 + 32), &qword_100021930, &unk_100013460);
    }

    else
    {
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v15, v16, "BSAction activity can't continue, ignore", v17, 2u);
      }

      v18 = *(v0 + 32);

      (*(v8 + 8))(v18, v7);
    }

    [*(v0 + 16) setProceed:0];
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_10000AF0C()
{
  v1 = *(v0 + 24);
  sub_10000DA24(*(v0 + 48), *(v0 + 56));
  v2 = sub_100008C08();
  sub_10000DA34(v2, v1, &qword_100021930, &unk_100013460);
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    sub_100002FAC(*(v0 + 24), &qword_100021930, &unk_100013460);
  }

  else
  {
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      swift_errorRetain();
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v9;
      *v8 = v9;
      _os_log_impl(&_mh_execute_header, v5, v6, "BSAction activity handling failed, do not proceed, thrown %@", v7, 0xCu);
      sub_100002FAC(v8, &unk_100021A20, &qword_1000134C0);
    }

    v10 = *(v0 + 24);

    (*(v4 + 8))(v10, v3);
  }

  [*(v0 + 16) setProceed:0];

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10000B154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002388(&qword_100021F40, &qword_1000137E0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000DA34(a3, v25 - v10, &qword_100021F40, &qword_1000137E0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100002FAC(v11, &qword_100021F40, &qword_1000137E0);
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

      sub_100002FAC(a3, &qword_100021F40, &qword_1000137E0);

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

  sub_100002FAC(a3, &qword_100021F40, &qword_1000137E0);
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

uint64_t sub_10000B454()
{
  sub_100002388(&qword_100021930, &unk_100013460);
  v0[2] = swift_task_alloc();
  v0[3] = swift_task_alloc();
  v0[4] = swift_task_alloc();

  return _swift_task_switch(sub_10000B504, 0, 0);
}

uint64_t sub_10000B504()
{
  type metadata accessor for AppManager();
  static AppManager.shared.getter();
  v1 = dispatch thunk of AppManager.homeButtonHandler.getter();
  v3 = v2;

  v0[5] = v1;
  v0[6] = v3;
  if (v1)
  {
    v15 = (v1 + *v1);
    v4 = swift_task_alloc();
    v0[7] = v4;
    *v4 = v0;
    v4[1] = sub_10000B7A8;

    return v15();
  }

  else
  {
    v6 = v0[3];
    v7 = sub_100008C08();
    sub_10000DA34(v7, v6, &qword_100021930, &unk_100013460);
    v8 = type metadata accessor for Logger();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v6, 1, v8) == 1)
    {
      sub_100002FAC(v0[3], &qword_100021930, &unk_100013460);
    }

    else
    {
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "BSAction button can't continue, ignore", v12, 2u);
      }

      v13 = v0[3];

      (*(v9 + 8))(v13, v8);
    }

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_10000B7A8(char a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_10000BBB4;
  }

  else
  {
    *(v4 + 72) = a1 & 1;
    v5 = sub_10000B8D4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10000B8D4()
{
  if (*(v0 + 72) == 1)
  {
    v1 = *(v0 + 32);
    v2 = sub_100008C08();
    sub_10000DA34(v2, v1, &qword_100021930, &unk_100013460);
    v3 = type metadata accessor for Logger();
    v4 = *(v3 - 8);
    if ((*(v4 + 48))(v1, 1, v3) == 1)
    {
      v5 = *(v0 + 32);
      sub_10000DA24(*(v0 + 40), *(v0 + 48));
      sub_100002FAC(v5, &qword_100021930, &unk_100013460);
      goto LABEL_13;
    }

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "BSAction button handling success, proceed ", v10, 2u);
    }

    v11 = *(v0 + 32);
    sub_10000DA24(*(v0 + 40), *(v0 + 48));
  }

  else
  {
    sub_10000DA24(*(v0 + 40), *(v0 + 48));
    v6 = *(v0 + 24);
    v7 = sub_100008C08();
    sub_10000DA34(v7, v6, &qword_100021930, &unk_100013460);
    v3 = type metadata accessor for Logger();
    v4 = *(v3 - 8);
    if ((*(v4 + 48))(v6, 1, v3) == 1)
    {
      sub_100002FAC(*(v0 + 24), &qword_100021930, &unk_100013460);
      goto LABEL_13;
    }

    v8 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v8, v12, "BSAction button can't continue, ignore", v13, 2u);
    }

    v11 = *(v0 + 24);
  }

  (*(v4 + 8))(v11, v3);
LABEL_13:

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_10000BBB4()
{
  v1 = v0[2];
  sub_10000DA24(v0[5], v0[6]);
  v2 = sub_100008C08();
  sub_10000DA34(v2, v1, &qword_100021930, &unk_100013460);
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = v0[2];
  if (v5 == 1)
  {

    sub_100002FAC(v6, &qword_100021930, &unk_100013460);
  }

  else
  {
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      swift_errorRetain();
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v11;
      *v10 = v11;
      _os_log_impl(&_mh_execute_header, v7, v8, "BSAction button handling failed, do not proceed, thrown %@", v9, 0xCu);
      sub_100002FAC(v10, &unk_100021A20, &qword_1000134C0);
    }

    else
    {
    }

    (*(v4 + 8))(v0[2], v3);
  }

  v12 = v0[1];

  return v12();
}

id sub_10000BDF8()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_10000BE78()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000BEC0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000BFB8;

  return v6(a1);
}

uint64_t sub_10000BFB8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000C0B0(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      sub_10000D6F4();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_10000C2C8(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      sub_10000C4A8(v20 + 1);
    }

    v18 = v8;
    sub_10000C6D0(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_10000D6F4();
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_10000C754(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

Swift::Int sub_10000C2C8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100002388(&qword_100021F38, "&$");
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_10000D6F4();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_10000C4A8(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_10000C4A8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100002388(&qword_100021F38, "&$");
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
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v5 + 40));
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
      *(*(v5 + 48) + 8 * v13) = v17;
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

unint64_t sub_10000C6D0(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

void sub_10000C754(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10000C4A8(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_10000C8B4();
      goto LABEL_12;
    }

    sub_10000CA04(v6 + 1);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_10000D6F4();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

id sub_10000C8B4()
{
  v1 = v0;
  sub_100002388(&qword_100021F38, "&$");
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
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

Swift::Int sub_10000CA04(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100002388(&qword_100021F38, "&$");
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v1;
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
      v16 = *(v5 + 40);
      v17 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = NSObject._rawHashValue(seed:)(v16);
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v17;
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

        v2 = v25;
        goto LABEL_26;
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
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_10000CC18(void *a1)
{
  v3 = sub_100002388(&qword_100021F40, &qword_1000137E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v47 - v4;
  v6 = sub_100002388(&qword_100021930, &unk_100013460);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v47 - v11;
  __chkstk_darwin(v10);
  v14 = &v47 - v13;
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (v15)
  {
    v16 = v15;
    v17 = sub_100008C08();
    sub_10000DA34(v17, v14, &qword_100021930, &unk_100013460);
    v18 = type metadata accessor for Logger();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v14, 1, v18) == 1)
    {
      sub_100002FAC(v14, &qword_100021930, &unk_100013460);
    }

    else
    {
      v25 = v1;
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "BSAction: SBUIBackgroundActivityAction received", v28, 2u);
      }

      (*(v19 + 8))(v14, v18);
      v1 = v25;
    }

    v29 = type metadata accessor for TaskPriority();
    (*(*(v29 - 8) + 56))(v5, 1, 1, v29);
    v30 = swift_allocObject();
    v30[2] = 0;
    v30[3] = 0;
    v30[4] = v16;
    v31 = a1;
    sub_10000B154(0, 0, v5, &unk_100013800, v30);

LABEL_21:
    v45 = *(v1 + OBJC_IVAR____TtC22ProximityReaderSceneUI20UISceneActionHandler_action);
    *(v1 + OBJC_IVAR____TtC22ProximityReaderSceneUI20UISceneActionHandler_action) = a1;
    v46 = a1;

    sub_10000A108();
    return 1;
  }

  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (v20)
  {
    v48 = v20;
    v21 = a1;
    v22 = sub_100008C08();
    sub_10000DA34(v22, v12, &qword_100021930, &unk_100013460);
    v23 = type metadata accessor for Logger();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v12, 1, v23) == 1)
    {
      sub_100002FAC(v12, &qword_100021930, &unk_100013460);
    }

    else
    {
      v47 = v1;
      v36 = v21;
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 134217984;
        *(v39 + 4) = [v48 buttonEvents];

        _os_log_impl(&_mh_execute_header, v37, v38, "BSAction: SBUIButtonAction received, %lu", v39, 0xCu);
      }

      else
      {

        v37 = v36;
      }

      v1 = v47;

      (*(v24 + 8))(v12, v23);
    }

    v43 = type metadata accessor for TaskPriority();
    (*(*(v43 - 8) + 56))(v5, 1, 1, v43);
    v44 = swift_allocObject();
    *(v44 + 16) = 0;
    *(v44 + 24) = 0;
    sub_10000B154(0, 0, v5, &unk_1000137F0, v44);

    goto LABEL_21;
  }

  v32 = sub_100008C08();
  sub_10000DA34(v32, v9, &qword_100021930, &unk_100013460);
  v33 = type metadata accessor for Logger();
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v9, 1, v33) == 1)
  {
    sub_100002FAC(v9, &qword_100021930, &unk_100013460);
    return 0;
  }

  else
  {
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "Unknown action", v42, 2u);
    }

    (*(v34 + 8))(v9, v33);
    return 0;
  }
}

void sub_10000D264(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_100002388(&qword_100021930, &unk_100013460);
  __chkstk_darwin(v6 - 8);
  v8 = &v36 - v7;
  v9 = sub_100008C08();
  sub_10000DA34(v9, v8, &qword_100021930, &unk_100013460);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    sub_100002FAC(v8, &qword_100021930, &unk_100013460);
  }

  else
  {

    v12 = a2;
    v13 = a3;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v41[0] = v38;
      *v16 = 136315650;
      sub_10000D6F4();
      HIDWORD(v36) = v15;
      sub_10000D740();
      v17 = Set.description.getter();
      v19 = sub_1000091A4(v17, v18, v41);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2112;
      *(v16 + 14) = v12;
      *(v16 + 22) = 2112;
      *(v16 + 24) = v13;
      v20 = v37;
      *v37 = v12;
      v20[1] = v13;
      v21 = v12;
      v22 = v13;
      _os_log_impl(&_mh_execute_header, v14, BYTE4(v36), "UISceneActionHandler:  Responding to BSActions:%s, for fbsScene %@ uiScene %@", v16, 0x20u);
      sub_100002388(&unk_100021A20, &qword_1000134C0);
      swift_arrayDestroy();

      sub_100009880(v38);
    }

    (*(v11 + 8))(v8, v10);
  }

  v40[1] = &_swiftEmptySetSingleton;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_10000D6F4();
    sub_10000D740();
    Set.Iterator.init(_cocoa:)();
    a1 = v41[0];
    v23 = v41[1];
    v24 = v41[2];
    v25 = v41[3];
    v26 = v41[4];
  }

  else
  {
    v27 = -1 << *(a1 + 32);
    v23 = a1 + 56;
    v24 = ~v27;
    v28 = -v27;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    else
    {
      v29 = -1;
    }

    v26 = v29 & *(a1 + 56);

    v25 = 0;
  }

  while (a1 < 0)
  {
    v35 = __CocoaSet.Iterator.next()();
    if (!v35 || (v39 = v35, sub_10000D6F4(), swift_dynamicCast(), v34 = v40[0], v32 = v25, v33 = v26, !v40[0]))
    {
LABEL_25:
      sub_10000898C(a1);
      return;
    }

LABEL_23:
    if (sub_10000CC18(v34))
    {
    }

    else
    {
      sub_10000C0B0(v40, v34);
    }

    v25 = v32;
    v26 = v33;
  }

  v30 = v25;
  v31 = v26;
  v32 = v25;
  if (v26)
  {
LABEL_19:
    v33 = (v31 - 1) & v31;
    v34 = *(*(a1 + 48) + ((v32 << 9) | (8 * __clz(__rbit64(v31)))));
    if (!v34)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  while (1)
  {
    v32 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v32 >= ((v24 + 64) >> 6))
    {
      goto LABEL_25;
    }

    v31 = *(v23 + 8 * v32);
    ++v30;
    if (v31)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
}

unint64_t sub_10000D6F4()
{
  result = qword_100021F28;
  if (!qword_100021F28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100021F28);
  }

  return result;
}

unint64_t sub_10000D740()
{
  result = qword_100021F30;
  if (!qword_100021F30)
  {
    sub_10000D6F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021F30);
  }

  return result;
}

uint64_t sub_10000D798()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000D7D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000D85C;

  return sub_10000B454();
}

uint64_t sub_10000D85C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000D950()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000D990()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000DC48;

  return sub_10000A750(v3, v4, v5, v2);
}

uint64_t sub_10000DA24(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000DA34(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002388(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000DA9C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000DAD4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000DC48;

  return sub_10000BEC0(a1, v4);
}

uint64_t sub_10000DB8C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000D85C;

  return sub_10000BEC0(a1, v4);
}

void sub_10000DC4C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = sub_100002388(&qword_100021930, &unk_100013460);
  __chkstk_darwin(v10 - 8);
  v12 = v25 - v11;
  v13 = sub_100008C08();
  sub_1000023F4(v13, v12);
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v12, 1, v14) == 1)
  {
    sub_100009BB0(v12);
  }

  else
  {
    v25[0] = a4;
    v25[1] = a3;
    v16 = sub_100008DA0();
    v17 = sub_100008DA8();
    sub_100008DB4(v16 & 1, v6, 0xD000000000000042, 0x8000000100015140, v17, v18);

    (*(v15 + 8))(v12, v14);
  }

  type metadata accessor for TapRemoteSceneController();
  v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  dispatch thunk of BaseRemoteSceneController.setup(scene:userInfo:endpoint:handle:)();
  v20 = v19;
  [a1 setRootViewController:v20];
  [a1 setContentsPosition:0];
  v21 = *((swift_isaMask & *v6) + 0x68);
  v22 = a1;
  v23 = v21(a1);
  v24 = (*((swift_isaMask & *v6) + 0x60))(v23);
  [v24 setRootViewController:v20];
}

id sub_10000DF6C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for TapUISceneDelegate();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_10000DFA0()
{
  v1 = sub_100002388(&qword_100021930, &unk_100013460);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v27 - v6;
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = sub_100008C08();
  sub_1000023F4(v10, v9);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(v9, 1, v11) == 1)
  {
    v14 = sub_100009BB0(v9);
  }

  else
  {
    v28 = v10;
    v15 = sub_100008DA0();
    v16 = sub_100008DA8();
    v27 = v13;
    v10 = v28;
    sub_100008DB4(v15 & 1, v0, 0xD000000000000016, 0x80000001000151E0, v16, v17);
    v13 = v27;

    v14 = (*(v12 + 8))(v9, v11);
  }

  v18 = (*((swift_isaMask & *v0) + 0x60))(v14);
  if (v18)
  {
    v19 = v18;
    v20 = [v18 rootViewController];

    if (v20)
    {
      type metadata accessor for TapRemoteSceneController();
      if (swift_dynamicCastClass())
      {
        sub_1000023F4(v10, v7);
        if (v13(v7, 1, v11) == 1)
        {
          sub_100009BB0(v7);
        }

        else
        {
          v24 = Logger.logObject.getter();
          v25 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v24, v25))
          {
            v26 = swift_slowAlloc();
            *v26 = 0;
            _os_log_impl(&_mh_execute_header, v24, v25, "TapUISceneDelegate:scene() didDisconnect: CLEANUP!!!", v26, 2u);
          }

          (*(v12 + 8))(v7, v11);
        }

        dispatch thunk of BaseRemoteSceneController.disconnected()();

        return;
      }
    }
  }

  sub_1000023F4(v10, v4);
  if (v13(v4, 1, v11) == 1)
  {
    sub_100009BB0(v4);
  }

  else
  {
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "TapUISceneDelegate:scene() didDisconnect: cannot get root controller", v23, 2u);
    }

    (*(v12 + 8))(v4, v11);
  }
}

id sub_10000E49C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ProximityReaderSceneUIAppDelegate();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_10000E4D0(void *a1)
{
  v2 = sub_100002388(&qword_100021930, &unk_100013460);
  __chkstk_darwin(v2 - 8);
  v4 = &v19 - v3;
  v5 = sub_100008C08();
  sub_1000023F4(v5, v4);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_100002FAC(v4, &qword_100021930, &unk_100013460);
  }

  else
  {
    v8 = a1;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = [v8 role];
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&_mh_execute_header, v9, v10, "ProximityReaderSceneUIApplicationDelegate: SBUIProximityReader Configuration - connecting scene session role = %@", v11, 0xCu);
      sub_100002FAC(v12, &unk_100021A20, &qword_1000134C0);
    }

    (*(v7 + 8))(v4, v6);
  }

  v14 = [a1 role];
  v15 = objc_allocWithZone(UISceneConfiguration);
  v16 = String._bridgeToObjectiveC()();
  v17 = [v15 initWithName:v16 sessionRole:v14];

  return v17;
}

void *sub_10000E7B4()
{
  v1 = OBJC_IVAR____TtC22ProximityReaderSceneUI19BaseUISceneDelegate_window;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_10000E860(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22ProximityReaderSceneUI19BaseUISceneDelegate_window;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_10000E920(uint64_t a1)
{
  v1 = sub_100002388(&qword_100021930, &unk_100013460);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - v2;
  v4 = sub_100008C08();
  sub_1000023F4(v4, v3);
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    return sub_100002FAC(v3, &qword_100021930, &unk_100013460);
  }

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
    _os_log_impl(&_mh_execute_header, v8, v9, "Could not destroy scene %@", v10, 0xCu);
    sub_100002FAC(v11, &unk_100021A20, &qword_1000134C0);
  }

  return (*(v6 + 8))(v3, v5);
}

void sub_10000EB18(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_10000EBF4()
{
  v1 = sub_100002388(&qword_100021930, &unk_100013460);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = sub_100008C08();
  sub_1000023F4(v4, v3);
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    return sub_100002FAC(v3, &qword_100021930, &unk_100013460);
  }

  v8 = sub_100008DA0();
  v9 = sub_100008DA8();
  sub_100008DB4(v8 & 1, v0, 0xD000000000000042, 0x8000000100015140, v9, v10);

  return (*(v6 + 8))(v3, v5);
}

void sub_10000ED5C(void *a1)
{
  v2 = v1;
  v4 = sub_100002388(&qword_100021930, &unk_100013460);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_100008C08();
  sub_1000023F4(v7, v6);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    sub_100002FAC(v6, &qword_100021930, &unk_100013460);
  }

  else
  {
    v10 = a1;
    v11 = v2;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v24 = v2;
      v15 = v14;
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v26 = v23;
      *v15 = 136315394;
      ObjectType = swift_getObjectType();
      sub_100002388(&unk_100022038, &qword_1000138A8);
      v16 = String.init<A>(describing:)();
      v18 = sub_1000091A4(v16, v17, &v26);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2112;
      *(v15 + 14) = v10;
      v19 = v22;
      *v22 = a1;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, v12, v13, "%s sendActionResponse: %@", v15, 0x16u);
      sub_100002FAC(v19, &unk_100021A20, &qword_1000134C0);

      sub_100009880(v23);
    }

    (*(v9 + 8))(v6, v8);
  }

  sub_10000A340(a1);
}

uint64_t sub_10000F000()
{
  v1 = sub_100002388(&qword_100021930, &unk_100013460);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = sub_100008C08();
  sub_1000023F4(v4, v3);
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    return sub_100002FAC(v3, &qword_100021930, &unk_100013460);
  }

  v8 = sub_100008DA0();
  v9 = sub_100008DA8();
  sub_100008DB4(v8 & 1, v0, 0xD000000000000016, 0x80000001000151E0, v9, v10);

  return (*(v6 + 8))(v3, v5);
}

uint64_t sub_10000F2E0()
{
  v1 = sub_100002388(&qword_100021930, &unk_100013460);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = sub_100008C08();
  sub_1000023F4(v4, v3);
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    return sub_100002FAC(v3, &qword_100021930, &unk_100013460);
  }

  v8 = sub_100008DA0();
  v9 = sub_100008DA8();
  sub_100008DB4(v8 & 1, v0, 0xD000000000000018, 0x8000000100015350, v9, v10);

  return (*(v6 + 8))(v3, v5);
}

uint64_t sub_10000F5C0()
{
  v1 = sub_100002388(&qword_100021930, &unk_100013460);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = sub_100008C08();
  sub_1000023F4(v4, v3);
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    return sub_100002FAC(v3, &qword_100021930, &unk_100013460);
  }

  v8 = sub_100008DA0();
  v9 = sub_100008DA8();
  sub_100008DB4(v8 & 1, v0, 0xD000000000000019, 0x8000000100015370, v9, v10);

  return (*(v6 + 8))(v3, v5);
}

uint64_t sub_10000F8A0()
{
  v1 = sub_100002388(&qword_100021930, &unk_100013460);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = sub_100008C08();
  sub_1000023F4(v4, v3);
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    return sub_100002FAC(v3, &qword_100021930, &unk_100013460);
  }

  v8 = sub_100008DA0();
  v9 = sub_100008DA8();
  sub_100008DB4(v8 & 1, v0, 0xD00000000000001CLL, 0x8000000100015390, v9, v10);

  return (*(v6 + 8))(v3, v5);
}

uint64_t sub_10000FB80()
{
  v1 = sub_100002388(&qword_100021930, &unk_100013460);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = sub_100008C08();
  sub_1000023F4(v4, v3);
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    return sub_100002FAC(v3, &qword_100021930, &unk_100013460);
  }

  v8 = sub_100008DA0();
  v9 = sub_100008DA8();
  sub_100008DB4(v8 & 1, v0, 0xD00000000000001BLL, 0x80000001000153B0, v9, v10);

  return (*(v6 + 8))(v3, v5);
}

id sub_10000FED0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseUISceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000FF50(uint64_t a1)
{
  v2 = sub_100011874(&qword_1000220F0, &unk_100013A44);
  v3 = sub_100011874(&unk_100022120, &unk_1000139A4);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

void *sub_10000FFE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002388(&qword_1000220F8, &qword_1000138F0);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v27 = v7;
      String.hash(into:)();
      v8 = Hasher._finalize()();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;
        if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void sub_1000101DC(id a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_100002388(&qword_100021930, &unk_100013460);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = (&v143 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __chkstk_darwin(v5);
  v153 = &v143 - v9;
  v10 = __chkstk_darwin(v8);
  v151 = &v143 - v11;
  v12 = __chkstk_darwin(v10);
  v150 = &v143 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v143 - v15;
  __chkstk_darwin(v14);
  v18 = &v143 - v17;
  v154 = sub_100008C08();
  sub_1000023F4(v154, v18);
  v19 = type metadata accessor for Logger();
  v20 = *(v19 - 8);
  v155 = *(v20 + 6);
  if ((v155)(v18, 1, v19) == 1)
  {
    sub_100002FAC(v18, &qword_100021930, &unk_100013460);
  }

  else
  {
    v152 = v16;
    v21 = v2;
    v148 = a1;
    v22 = a1;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v146 = v19;
      v26 = v25;
      v27 = swift_slowAlloc();
      v147 = v20;
      v144 = v27;
      v145 = swift_slowAlloc();
      aBlock = v145;
      *v26 = 136315394;
      v162 = swift_getObjectType();
      sub_100002388(&unk_100022038, &qword_1000138A8);
      v28 = String.init<A>(describing:)();
      v30 = v7;
      v31 = v2;
      v32 = sub_1000091A4(v28, v29, &aBlock);

      *(v26 + 4) = v32;
      v2 = v31;
      v7 = v30;
      *(v26 + 12) = 2112;
      *(v26 + 14) = v22;
      v33 = v144;
      *v144 = v22;
      v34 = v22;
      _os_log_impl(&_mh_execute_header, v23, v24, "%s:scene() with: %@", v26, 0x16u);
      sub_100002FAC(v33, &unk_100021A20, &qword_1000134C0);
      v20 = v147;

      sub_100009880(v145);

      v19 = v146;
    }

    (*(v20 + 1))(v18, v19);
    v16 = v152;
    a1 = v148;
  }

  objc_opt_self();
  v35 = swift_dynamicCastObjCClass();
  if (!v35)
  {
    sub_1000023F4(v154, v7);
    if ((v155)(v7, 1, v19) != 1)
    {
      v86 = v2;
      v87 = a1;
      v88 = Logger.logObject.getter();
      v89 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v155 = v7;
        v91 = v90;
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        aBlock = v93;
        *v91 = 136315394;
        v162 = swift_getObjectType();
        sub_100002388(&unk_100022038, &qword_1000138A8);
        v94 = String.init<A>(describing:)();
        v96 = v20;
        v97 = sub_1000091A4(v94, v95, &aBlock);

        *(v91 + 4) = v97;
        v20 = v96;
        *(v91 + 12) = 2112;
        *(v91 + 14) = v87;
        *v92 = v87;
        v98 = v87;
        _os_log_impl(&_mh_execute_header, v88, v89, "%s:scene() Got a non UIWindowScene: %@", v91, 0x16u);
        sub_100002FAC(v92, &unk_100021A20, &qword_1000134C0);

        sub_100009880(v93);

        v7 = v155;
      }

      (*(v20 + 1))(v7, v19);
      return;
    }

    v84 = v7;
LABEL_16:
    sub_100002FAC(v84, &qword_100021930, &unk_100013460);
    return;
  }

  v36 = v35;
  v152 = a1;
  v37 = sub_100001DF8();
  v38 = *((swift_isaMask & **v37) + 0x78);
  v39 = *v37;
  v40 = v38();

  if (!v40)
  {
    v85 = v153;
    sub_1000023F4(v154, v153);
    if ((v155)(v85, 1, v19) == 1)
    {
      sub_100002FAC(v85, &qword_100021930, &unk_100013460);
    }

    else
    {
      v100 = v2;
      v101 = Logger.logObject.getter();
      v102 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v101, v102))
      {
        v103 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        aBlock = v104;
        *v103 = 136315138;
        v162 = swift_getObjectType();
        sub_100002388(&unk_100022038, &qword_1000138A8);
        v105 = String.init<A>(describing:)();
        v107 = sub_1000091A4(v105, v106, &aBlock);

        *(v103 + 4) = v107;
        _os_log_impl(&_mh_execute_header, v101, v102, "%s:scene() Unusable scene handle = nil", v103, 0xCu);
        sub_100009880(v104);
        v85 = v153;
      }

      (*(v20 + 1))(v85, v19);
    }

    v108 = [objc_opt_self() sharedApplication];
    v109 = [v36 session];
    v160 = sub_1000118C4;
    v161 = 0;
    aBlock = _NSConcreteStackBlock;
    v157 = 1107296256;
    v158 = sub_1000067D8;
    v159 = &unk_10001CE40;
    v110 = _Block_copy(&aBlock);
    [v108 requestSceneSessionDestruction:v109 options:0 errorHandler:v110];
    _Block_release(v110);

    goto LABEL_40;
  }

  v153 = v2;
  v41 = (*((swift_isaMask & *v40) + 0xB0))();
  if (!v41)
  {
    v99 = v151;
    sub_1000023F4(v154, v151);
    if ((v155)(v99, 1, v19) == 1)
    {
      sub_100002FAC(v99, &qword_100021930, &unk_100013460);
    }

    else
    {
      v113 = v153;
      v114 = Logger.logObject.getter();
      v115 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v114, v115))
      {
        v116 = swift_slowAlloc();
        v117 = swift_slowAlloc();
        aBlock = v117;
        *v116 = 136315138;
        v162 = swift_getObjectType();
        sub_100002388(&unk_100022038, &qword_1000138A8);
        v118 = String.init<A>(describing:)();
        v120 = sub_1000091A4(v118, v119, &aBlock);

        *(v116 + 4) = v120;
        _os_log_impl(&_mh_execute_header, v114, v115, "%s:scene() Unusable scene endpoint = nil", v116, 0xCu);
        sub_100009880(v117);

        v99 = v151;
      }

      (*(v20 + 1))(v99, v19);
    }

    v108 = [objc_opt_self() sharedApplication];
    v109 = [v36 session];
    v160 = sub_10000E91C;
    v161 = 0;
    aBlock = _NSConcreteStackBlock;
    v157 = 1107296256;
    v158 = sub_1000067D8;
    v159 = &unk_10001CE68;
    v121 = _Block_copy(&aBlock);
    [v108 requestSceneSessionDestruction:v109 options:0 errorHandler:v121];
    _Block_release(v121);

    goto LABEL_40;
  }

  v42 = v41;
  v43 = (*((swift_isaMask & *v40) + 0xC8))();
  if (!v43)
  {
    v111 = v150;
    sub_1000023F4(v154, v150);
    if ((v155)(v111, 1, v19) == 1)
    {
      sub_100002FAC(v111, &qword_100021930, &unk_100013460);
    }

    else
    {
      v122 = v153;
      v123 = Logger.logObject.getter();
      v124 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v123, v124))
      {
        v125 = swift_slowAlloc();
        v155 = swift_slowAlloc();
        aBlock = v155;
        *v125 = 136315138;
        v162 = swift_getObjectType();
        sub_100002388(&unk_100022038, &qword_1000138A8);
        v126 = String.init<A>(describing:)();
        v128 = v42;
        v129 = sub_1000091A4(v126, v127, &aBlock);

        *(v125 + 4) = v129;
        v42 = v128;
        _os_log_impl(&_mh_execute_header, v123, v124, "%s:scene() Unusable scene userInfo = nil", v125, 0xCu);
        sub_100009880(v155);
      }

      (*(v20 + 1))(v150, v19);
    }

    v108 = [objc_opt_self() sharedApplication];
    v109 = [v36 session];
    v160 = sub_1000118C4;
    v161 = 0;
    aBlock = _NSConcreteStackBlock;
    v157 = 1107296256;
    v158 = sub_1000067D8;
    v159 = &unk_10001CE90;
    v130 = _Block_copy(&aBlock);
    [v108 requestSceneSessionDestruction:v109 options:0 errorHandler:v130];
    _Block_release(v130);

LABEL_40:
    return;
  }

  v151 = v43;
  v44 = *((swift_isaMask & *v40) + 0x130);
  v152 = v152;
  if ((v44(v36) & 1) == 0)
  {

    v112 = v152;

    sub_1000023F4(v154, v16);
    if ((v155)(v16, 1, v19) != 1)
    {
      v147 = v20;
      v131 = v153;
      v132 = v112;
      v152 = v16;
      v133 = Logger.logObject.getter();
      v134 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v133, v134))
      {
        v135 = swift_slowAlloc();
        v136 = swift_slowAlloc();
        v155 = v42;
        v137 = v136;
        v154 = swift_slowAlloc();
        aBlock = v154;
        *v135 = 136315394;
        v162 = swift_getObjectType();
        sub_100002388(&unk_100022038, &qword_1000138A8);
        v138 = String.init<A>(describing:)();
        v140 = v19;
        v141 = sub_1000091A4(v138, v139, &aBlock);

        *(v135 + 4) = v141;
        v19 = v140;
        *(v135 + 12) = 2112;
        *(v135 + 14) = v36;
        *v137 = v36;
        v142 = v132;
        _os_log_impl(&_mh_execute_header, v133, v134, "%s:scene() Duplicate scene: %@", v135, 0x16u);
        sub_100002FAC(v137, &unk_100021A20, &qword_1000134C0);

        sub_100009880(v154);
      }

      else
      {
      }

      (v147)[1](v152, v19);
      return;
    }

    v84 = v16;
    goto LABEL_16;
  }

  v155 = v42;
  v146 = [objc_allocWithZone(UIWindow) initWithWindowScene:v36];
  sub_100002388(&qword_1000220D8, &qword_1000138D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100013880;
  v46 = STBackgroundActivityIdentifierInCall;
  *(inited + 32) = STBackgroundActivityIdentifierInCall;
  v154 = (inited + 32);
  v47 = STBackgroundActivityIdentifierInVideoConference;
  v48 = STBackgroundActivityIdentifierCallRinging;
  *(inited + 40) = STBackgroundActivityIdentifierInVideoConference;
  *(inited + 48) = v48;
  v49 = STBackgroundActivityIdentifierVideoConferenceRinging;
  v50 = STBackgroundActivityIdentifierSharePlay;
  *(inited + 56) = STBackgroundActivityIdentifierVideoConferenceRinging;
  *(inited + 64) = v50;
  v150 = v36;
  v51 = STBackgroundActivityIdentifierSharePlayInactive;
  v52 = STBackgroundActivityIdentifierActivePushToTalkCall;
  *(inited + 72) = STBackgroundActivityIdentifierSharePlayInactive;
  *(inited + 80) = v52;
  v53 = STBackgroundActivityIdentifierIdlePushToTalkCall;
  v54 = STBackgroundActivityIdentifierCallHandoff;
  *(inited + 88) = STBackgroundActivityIdentifierIdlePushToTalkCall;
  *(inited + 96) = v54;
  v147 = STBackgroundActivityIdentifierCallScreening;
  v55 = STBackgroundActivityIdentifierVideoConferenceHandoff;
  v148 = STBackgroundActivityIdentifierVideoConferenceHandoff;
  *(inited + 104) = STBackgroundActivityIdentifierCallScreening;
  *(inited + 112) = v55;
  v56 = v46;
  v57 = v47;
  v58 = v48;
  v59 = v49;
  v60 = v50;
  v61 = v51;
  v62 = v52;
  v63 = v53;
  v64 = v54;
  v65 = v147;
  v66 = v148;
  v67 = sub_10000FFE8(inited);
  swift_setDeallocating();
  type metadata accessor for STBackgroundActivityIdentifier();
  swift_arrayDestroy();
  v68 = v150;
  v69 = [v150 _FBSScene];
  v70 = v152;

  v71 = swift_allocObject();
  *(v71 + 16) = v67;
  v72 = swift_allocObject();
  *(v72 + 16) = sub_10001171C;
  *(v72 + 24) = v71;
  v160 = sub_100002540;
  v161 = v72;
  aBlock = _NSConcreteStackBlock;
  v157 = 1107296256;
  v158 = sub_10000EB18;
  v159 = &unk_10001CF08;
  v73 = _Block_copy(&aBlock);

  [v69 updateClientSettingsWithBlock:v73];

  _Block_release(v73);
  LOBYTE(v69) = swift_isEscapingClosureAtFileLocation();

  if (v69)
  {
    __break(1u);
  }

  else
  {
    sub_100002388(&qword_1000220E0, &unk_1000138D8);
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_100013890;
    v75 = v153;
    v76 = *&v153[OBJC_IVAR____TtC22ProximityReaderSceneUI19BaseUISceneDelegate_actionHandler];
    *(v74 + 32) = v76;
    v77 = v76;
    sub_100002388(&qword_1000220E8, &qword_1000138E8);
    v78.super.isa = Array._bridgeToObjectiveC()().super.isa;

    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v80 = NSStringFromClass(ObjCClassFromMetadata);
    if (v80)
    {
      v81 = v80;

      [v68 _registerBSActionResponderArray:v78.super.isa forKey:v81];

      v82 = v146;
      v83 = v155;
      (*((swift_isaMask & *v75) + 0x80))(v146, v70, v151, v155, v40);

      [v82 makeKeyAndVisible];

      return;
    }
  }

  __break(1u);
}

uint64_t sub_10001167C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void type metadata accessor for STBackgroundActivityIdentifier()
{
  if (!qword_100022100)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100022100);
    }
  }
}

uint64_t sub_1000116E4()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10001171C(void *a1)
{
  [a1 setDesiredHardwareButtonEvents:16];
  type metadata accessor for STBackgroundActivityIdentifier();
  sub_100011874(&qword_1000220F0, &unk_100013A44);
  isa = Set._bridgeToObjectiveC()().super.isa;
  [a1 setDesiredBackgroundActivities:isa];
}

uint64_t sub_100011874(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for STBackgroundActivityIdentifier();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_100011920()
{
  v1 = OBJC_IVAR____TtC22ProximityReaderSceneUI20DefaultSceneDelegate_window;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1000119CC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22ProximityReaderSceneUI20DefaultSceneDelegate_window;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_100011B7C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DefaultSceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100011BC0(void *a1, void *a2)
{
  v5 = sub_100002388(&qword_100021930, &unk_100013460);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v47[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v47[-v9];
  v11 = sub_100008BC4();
  sub_1000023F4(v11, v10);
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (v14(v10, 1, v12) == 1)
  {
    sub_100002FAC(v10, &qword_100021930, &unk_100013460);
  }

  else
  {
    v52 = v2;
    v15 = a2;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v51 = v8;
      v19 = v18;
      v49 = swift_slowAlloc();
      v50 = v13;
      v53 = v49;
      *v19 = 136315138;
      v20 = [v15 role];
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v48 = v17;
      v22 = v14;
      v23 = v21;
      v24 = a1;
      v26 = v25;

      v27 = v23;
      v14 = v22;
      v28 = sub_1000091A4(v27, v26, &v53);
      a1 = v24;

      *(v19 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v16, v48, "DefaultSceneDelegate: Scene will connect called with role: %s", v19, 0xCu);
      sub_100009880(v49);
      v13 = v50;

      v8 = v51;
    }

    (*(v13 + 8))(v10, v12);
    v2 = v52;
  }

  objc_opt_self();
  v29 = swift_dynamicCastObjCClass();
  if (v29)
  {
    v30 = v29;
    v31 = objc_allocWithZone(UIWindow);
    v32 = a1;
    v33 = [v31 initWithWindowScene:v30];
    v34 = [objc_allocWithZone(UIViewController) init];
    v35 = [v34 view];
    if (v35)
    {
      v36 = v35;
      v37 = [objc_opt_self() redColor];
      [v36 setBackgroundColor:v37];

      [v33 setRootViewController:v34];
      [v33 makeKeyAndVisible];
      v38 = *((swift_isaMask & *v2) + 0x60);
      v39 = v33;
      v38(v33);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v40 = sub_100008C08();
    sub_1000023F4(v40, v8);
    if (v14(v8, 1, v12) == 1)
    {
      sub_100002FAC(v8, &qword_100021930, &unk_100013460);
    }

    else
    {
      v41 = a1;
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *v44 = 138412290;
        *(v44 + 4) = v41;
        *v45 = v41;
        v46 = v41;
        _os_log_impl(&_mh_execute_header, v42, v43, "DefaultSceneDelegate: Got a non UIWindowScene: %@", v44, 0xCu);
        sub_100002FAC(v45, &unk_100021A20, &qword_1000134C0);
      }

      (*(v13 + 8))(v8, v12);
    }
  }
}