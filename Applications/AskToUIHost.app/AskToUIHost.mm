uint64_t sub_1000017D8()
{
  v0 = type metadata accessor for Logger();
  sub_100001864(v0, qword_10000CED8);
  sub_1000018C8(v0, qword_10000CED8);
  return Logger.init(subsystem:category:)();
}

uint64_t *sub_100001864(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1000018C8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id sub_1000019F8(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v4, "dealloc");
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for AppDelegate();
  static CommandLine.unsafeArgv.getter();
  static CommandLine.argc.getter();
  static CommandLine.argc.getter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LODWORD(v4) = UIApplicationMain(_:_:_:_:)();

  exit(v4);
}

uint64_t sub_100001ADC()
{
  v1 = [*v0 actions];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_100003874(0, &qword_10000CDD0, BSAction_ptr);
  sub_1000038BC(&qword_10000CDD8, &qword_10000CDD0, BSAction_ptr, &protocol conformance descriptor for NSObject);
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id sub_100001C78(uint64_t a1)
{
  v2 = v1;
  if (qword_10000CB80 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000018C8(v4, qword_10000CED8);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100002958(0xD000000000000016, 0x80000001000046D0, &v21);
    _os_log_impl(&_mh_execute_header, v5, v6, "%s called", v7, 0xCu);
    sub_100003760(v8);
  }

  if (a1)
  {
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v21 = v13;
      *v11 = 136315394;
      *(v11 + 4) = sub_100002958(0xD000000000000016, 0x80000001000046D0, &v21);
      *(v11 + 12) = 2112;
      swift_errorRetain();
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v14;
      *v12 = v14;
      _os_log_impl(&_mh_execute_header, v9, v10, "%s Encountered error %@", v11, 0x16u);
      sub_100003010(v12, &qword_10000CDB0, &unk_100004570);

      sub_100003760(v13);
    }

    sub_100002014(a1);

    return _swift_errorRelease(a1);
  }

  else
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v21 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_100002958(0xD000000000000016, 0x80000001000046D0, &v21);
      _os_log_impl(&_mh_execute_header, v15, v16, "%s No error, tearing down the connection without additional UI", v17, 0xCu);
      sub_100003760(v18);
    }

    v19 = *(v2 + OBJC_IVAR____TtC11AskToUIHost13SceneDelegate_remoteAlertScene);

    return [v19 invalidate];
  }
}

void sub_100002014(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100002910(&qword_10000CD88, &qword_100004548);
  __chkstk_darwin(v4 - 8);
  v5 = sub_100002910(&qword_10000CD90, &qword_100004550);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v31[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v31[-1] - v9;
  v11 = *(v1 + OBJC_IVAR____TtC11AskToUIHost13SceneDelegate_window);
  if (v11)
  {
    v12 = OBJC_IVAR____TtC11AskToUIHost13SceneDelegate_flowKind;
    swift_beginAccess();
    sub_100002F00(v1 + v12, v10);
    v13 = type metadata accessor for FlowKind();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v10, 1, v13) == 1)
    {
      v15 = v11;
    }

    else
    {
      sub_100002F00(v10, v8);
      if ((*(v14 + 88))(v8, v13) == enum case for FlowKind.sendAsk(_:))
      {
        v22 = v11;
        LocalizedStringKey.init(stringLiteral:)();
        sub_100003010(v10, &qword_10000CD90, &qword_100004550);
        goto LABEL_15;
      }

      v23 = *(v14 + 8);
      v24 = v11;
      v23(v8, v13);
    }

    sub_100003010(v10, &qword_10000CD90, &qword_100004550);
    LocalizedStringKey.init(stringLiteral:)();
LABEL_15:
    v30 = a1;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_errorRetain();
    sub_100002910(&qword_10000CD98, &qword_100004558);
    ErrorView.init(title:error:onDismiss:)();
    v25 = objc_allocWithZone(sub_100002910(&qword_10000CDA0, &qword_100004560));
    v26 = UIHostingController.init(rootView:)();
    v27 = [v26 view];
    if (v27)
    {
      v28 = v27;
      v29 = [objc_opt_self() clearColor];
      [v28 setBackgroundColor:v29];

      [v11 setRootViewController:v26];
      if (([v11 isKeyWindow] & 1) == 0)
      {
        [v11 makeKeyAndVisible];
      }
    }

    else
    {
      __break(1u);
    }

    return;
  }

  if (qword_10000CB80 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1000018C8(v16, qword_10000CED8);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v31[0] = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_100002958(0xD000000000000016, 0x80000001000046B0, v31);
    _os_log_impl(&_mh_execute_header, v17, v18, "%s No window to present error off of", v19, 0xCu);
    sub_100003760(v20);
  }

  v21 = *(v2 + OBJC_IVAR____TtC11AskToUIHost13SceneDelegate_remoteAlertScene);

  [v21 invalidate];
}

void sub_100002560(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC11AskToUIHost13SceneDelegate_remoteAlertScene);

    [v3 invalidate];
  }
}

id sub_1000025D8()
{
  v1 = v0;
  *&v0[OBJC_IVAR____TtC11AskToUIHost13SceneDelegate_remoteAlertScene] = 0;
  v2 = OBJC_IVAR____TtC11AskToUIHost13SceneDelegate_flowKind;
  v3 = type metadata accessor for FlowKind();
  (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *&v1[OBJC_IVAR____TtC11AskToUIHost13SceneDelegate_window] = 0;
  v4 = &v1[OBJC_IVAR____TtC11AskToUIHost13SceneDelegate_flowCoordinator];
  v7[3] = type metadata accessor for HostSendAskToQuestionFlowCoordinatorFactory();
  v7[4] = &protocol witness table for HostSendAskToQuestionFlowCoordinatorFactory;
  sub_100003070(v7);
  HostSendAskToQuestionFlowCoordinatorFactory.init()();
  type metadata accessor for SceneBasedSendAskFlowController();
  swift_allocObject();
  *v4 = SceneBasedSendAskFlowController.init(flowCoordinatorFactory:)();
  v4[1] = &protocol witness table for SceneBasedSendAskFlowController;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for SceneDelegate(0);
  return objc_msgSendSuper2(&v6, "init");
}

id sub_100002704()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneDelegate(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SceneDelegate(uint64_t a1)
{
  result = qword_10000CD70;
  if (!qword_10000CD70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000280C(uint64_t a1)
{
  sub_1000028B4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000028B4(uint64_t a1)
{
  if (!qword_10000CD80)
  {
    type metadata accessor for FlowKind();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10000CD80);
    }
  }
}

uint64_t sub_100002910(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100002958(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100002A24(v11, 0, 0, 1, a1, a2);
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
    sub_100002FB0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100003760(v11);
  return v7;
}

unint64_t sub_100002A24(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100002B30(a5, a6);
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

char *sub_100002B30(uint64_t a1, unint64_t a2)
{
  v3 = sub_100002B7C(a1, a2);
  sub_100002CAC(&off_100008460);
  return v3;
}

char *sub_100002B7C(uint64_t a1, unint64_t a2)
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

  v6 = sub_100002D98(v5, 0);
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
        v7 = sub_100002D98(v10, 0);
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

uint64_t sub_100002CAC(uint64_t result)
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

  result = sub_100002E0C(result, v11, 1, v3);
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

void *sub_100002D98(uint64_t a1, uint64_t a2)
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

  sub_100002910(&qword_10000CDA8, &qword_100004568);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100002E0C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002910(&qword_10000CDA8, &qword_100004568);
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

uint64_t sub_100002F00(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002910(&qword_10000CD90, &qword_100004550);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100002F70()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100002FB0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100003010(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002910(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t *sub_100003070(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void sub_1000030D4(void *a1)
{
  v2 = v1;
  v4 = sub_100002910(&qword_10000CD90, &qword_100004550);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v47 - v8;
  v10 = type metadata accessor for FlowKind();
  v54 = *(v10 - 8);
  __chkstk_darwin(v10);
  v53 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10000CB80 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000018C8(v12, qword_10000CED8);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v56[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_100002958(0xD00000000000001FLL, 0x80000001000046F0, v56);
    _os_log_impl(&_mh_execute_header, v13, v14, "%s called", v15, 0xCu);
    sub_100003760(v16);
  }

  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (v17)
  {
    v18 = a1;
  }

  v19 = *(v2 + OBJC_IVAR____TtC11AskToUIHost13SceneDelegate_remoteAlertScene);
  *(v2 + OBJC_IVAR____TtC11AskToUIHost13SceneDelegate_remoteAlertScene) = v17;
  v55 = v17;

  if (v17)
  {
    v20 = objc_allocWithZone(UIWindow);
    v21 = [v20 initWithWindowScene:v55];
    v22 = *(v2 + OBJC_IVAR____TtC11AskToUIHost13SceneDelegate_window);
    *(v2 + OBJC_IVAR____TtC11AskToUIHost13SceneDelegate_window) = v21;
    v23 = v21;

    if (v23)
    {
      v24 = [v55 configurationContext];
      if (v24)
      {
        v25 = v24;
        v49 = a1;
        v51 = v7;
        v52 = v23;
        v26 = v10;
        ObjectType = swift_getObjectType();
        v48 = sub_100003874(0, &qword_10000CDB8, SBSRemoteAlertConfigurationContext_ptr);
        v57 = v48;
        v47 = sub_1000038BC(&qword_10000CDC0, &qword_10000CDB8, SBSRemoteAlertConfigurationContext_ptr, "q>");
        v58 = v47;
        v56[0] = v25;
        v28 = v25;
        v50 = ObjectType;
        v29 = v26;
        dispatch thunk of SceneBasedFlowController.flowKind(for:)();
        sub_100003760(v56);
        v30 = v54;
        if ((*(v54 + 48))(v9, 1, v26) != 1)
        {
          v41 = v53;
          (*(v30 + 32))(v53, v9, v29);
          v42 = v51;
          (*(v30 + 16))(v51, v41, v29);
          (*(v30 + 56))(v42, 0, 1, v29);
          v43 = v28;
          v44 = OBJC_IVAR____TtC11AskToUIHost13SceneDelegate_flowKind;
          swift_beginAccess();
          sub_1000037AC(v42, v2 + v44);
          swift_endAccess();
          sub_10000381C();
          swift_unknownObjectRetain();
          dispatch thunk of SceneBasedFlowController.delegate.setter();
          v57 = v48;
          v58 = v47;
          v56[0] = v43;
          v45 = v43;
          v46 = v52;
          dispatch thunk of SceneBasedFlowController.handle(remoteAlertConfigurationContext:window:)();

          (*(v30 + 8))(v41, v29);
          sub_100003760(v56);
          return;
        }

        sub_100003010(v9, &qword_10000CD90, &qword_100004550);
        v23 = v52;
        a1 = v49;
      }

      v31 = a1;
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *v34 = 138412290;
        *(v34 + 4) = v31;
        *v35 = v31;
        v36 = v31;
        _os_log_impl(&_mh_execute_header, v32, v33, "flowCoordinator cannot handle scene! %@", v34, 0xCu);
        sub_100003010(v35, &qword_10000CDB0, &unk_100004570);
      }
    }

    else
    {
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&_mh_execute_header, v37, v38, "No window!", v39, 2u);
      }

      v40 = v55;
    }
  }
}

uint64_t sub_100003760(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return _swift_release(*a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1000037AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002910(&qword_10000CD90, &qword_100004550);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_10000381C()
{
  result = qword_10000CDC8;
  if (!qword_10000CDC8)
  {
    type metadata accessor for SceneDelegate(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000CDC8);
  }

  return result;
}

uint64_t sub_100003874(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_1000038BC(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100003874(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}