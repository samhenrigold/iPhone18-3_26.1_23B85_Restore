id sub_1000019A8(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_100001A04(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for PhotoGridViewModel.PickerMode();
  v21 = *(v2 - 8);
  v22 = v2;
  __chkstk_darwin(v2);
  v20 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for CreationViewStyle();
  v4 = *(v19 - 8);
  __chkstk_darwin(v19);
  v18 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ExecutionContext.GPClientIdentity();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ObservableDebugSettings();
  v23 = static ObservableDebugSettings.shared.getter();
  State.init(wrappedValue:)();
  v10 = v25;
  a1[1] = v24;
  a1[2] = v10;
  type metadata accessor for GenerativePlaygroundApp(0);
  type metadata accessor for AppDelegate();
  UIApplicationDelegateAdaptor.init(_:)();
  v17 = [objc_allocWithZone(type metadata accessor for AppleConnectAuthenticator()) init];
  v16[2] = [objc_allocWithZone(GPAppleConnectTokenProvider) initWithAuthenticatingProtocol:v17];
  type metadata accessor for SessionUndoManager();
  swift_allocObject();
  v16[1] = SessionUndoManager.init(undoManager:)();
  type metadata accessor for ServicesFetcher();
  swift_allocObject();
  v11 = ServicesFetcher.init()();
  v12 = [objc_opt_self() standardUserDefaults];
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v14 = String._bridgeToObjectiveC()();
  [v12 setValue:isa forKey:v14];

  (*(v7 + 104))(v9, enum case for ExecutionContext.GPClientIdentity.currentProcess(_:), v6);
  static ExecutionContext.setClientIdentity(_:)();
  (*(v7 + 8))(v9, v6);
  static ObservableDebugSettings.shared.getter();
  swift_getKeyPath();
  v24 = v11;

  ObservableDebugSettings.subscript.setter();

  (*(v4 + 104))(v18, enum case for CreationViewStyle.generativePlaygroundApp(_:), v19);
  (*(v21 + 104))(v20, enum case for PhotoGridViewModel.PickerMode.none(_:), v22);
  type metadata accessor for PlaygroundHomeViewModel();
  swift_allocObject();
  v15 = PlaygroundHomeViewModel.init(servicesFetcher:appleConnectTokenProvider:creationViewStyle:pickerMode:forceDarkMode:sessionUndoManager:visionOSHideStylePicker:)();

  *a1 = v15;
}

uint64_t sub_100001E14@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v44 = a1;
  v3 = type metadata accessor for WindowResizability();
  v42 = *(v3 - 8);
  v43 = v3;
  __chkstk_darwin(v3);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for GenerativePlaygroundApp(0);
  v34 = *(v6 - 8);
  v7 = *(v34 + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_1000026DC(&qword_100018A68, &qword_100010C28);
  v36 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v33 - v9;
  v11 = sub_1000026DC(&qword_100018A70, &qword_100010C30);
  v37 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v33 - v12;
  v14 = sub_1000026DC(&qword_100018A78, &qword_100010C38);
  v15 = *(v14 - 8);
  v38 = v14;
  v39 = v15;
  __chkstk_darwin(v14);
  v17 = &v33 - v16;
  v18 = sub_1000026DC(&qword_100018A80, &qword_100010C40);
  v19 = *(v18 - 8);
  v40 = v18;
  v41 = v19;
  __chkstk_darwin(v18);
  v21 = &v33 - v20;
  sub_1000029BC(v2, &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v23 = swift_allocObject();
  sub_100002B24(&v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
  sub_1000026DC(&qword_100018A88, &qword_100010C48);
  v24 = sub_100002BF8();
  v46 = &type metadata for AppWindowContentView;
  v47 = v24;
  swift_getOpaqueTypeConformance2();
  WindowGroup.init(id:title:lazyContent:)();
  static WindowResizability.contentMinSize.getter();
  v25 = sub_100002C4C();
  Scene.windowResizability(_:)();
  (*(v42 + 8))(v5, v43);
  (*(v36 + 8))(v10, v8);
  v46 = v8;
  v47 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  Scene.extendedLaunchTestName(_:)();
  (*(v37 + 8))(v13, v11);
  v45 = v35;
  v27 = type metadata accessor for GenerativePlaygroundCommands(0);
  v46 = v11;
  v47 = OpaqueTypeConformance2;
  v28 = swift_getOpaqueTypeConformance2();
  v29 = sub_100002D00(&qword_100018AA0, type metadata accessor for GenerativePlaygroundCommands, "9:");
  v30 = v38;
  Scene.commands<A>(content:)();
  (*(v39 + 8))(v17, v30);
  v46 = v30;
  v47 = v27;
  v48 = v28;
  v49 = v29;
  swift_getOpaqueTypeConformance2();
  v31 = v40;
  static SceneBuilder.buildBlock<A>(_:)();
  return (*(v41 + 8))(v21, v31);
}

uint64_t sub_1000023EC(uint64_t *a1)
{
  swift_getKeyPath();

  sub_1000026DC(&qword_100018AB8, &qword_100010D20);
  State.wrappedValue.getter();
  sub_100002BF8();
  View.debugSettings(_:)();
}

uint64_t sub_1000024B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  type metadata accessor for GenerativePlaygroundCommands(0);

  FocusedValue.init(_:)();
  swift_getKeyPath();
  FocusedValue.init(_:)();
  swift_getKeyPath();
  result = FocusedValue.init(_:)();
  *a2 = v3;
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for GenerativePlaygroundApp(0);
  sub_100002D00(&qword_1000189B0, type metadata accessor for GenerativePlaygroundApp, &unk_100010BB8);
  static App.main()();
  return 0;
}

uint64_t type metadata accessor for GenerativePlaygroundApp(uint64_t a1)
{
  result = qword_100018A18;
  if (!qword_100018A18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100002620(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000026DC(&qword_1000189B8, &unk_100010B90);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000026DC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *sub_100002738(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1000026DC(&qword_1000189B8, &unk_100010B90);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000027E8(uint64_t a1)
{
  type metadata accessor for PlaygroundHomeViewModel();
  if (v1 <= 0x3F)
  {
    sub_1000028E4(319, &qword_100018A28, &type metadata accessor for ObservableDebugSettings, &type metadata accessor for State);
    if (v2 <= 0x3F)
    {
      sub_1000028E4(319, &unk_100018A30, type metadata accessor for AppDelegate, &type metadata accessor for UIApplicationDelegateAdaptor);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000028E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_100002964@<X0>(uint64_t *a1@<X8>)
{
  result = DebugSettings.servicesFetcher.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000029BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativePlaygroundApp(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100002A20()
{
  v1 = (type metadata accessor for GenerativePlaygroundApp(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  v6 = sub_1000026DC(&qword_1000189B8, &unk_100010B90);
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100002B24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativePlaygroundApp(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100002B88()
{
  v1 = *(type metadata accessor for GenerativePlaygroundApp(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1000023EC(v2);
}

unint64_t sub_100002BF8()
{
  result = qword_100018A90;
  if (!qword_100018A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018A90);
  }

  return result;
}

unint64_t sub_100002C4C()
{
  result = qword_100018A98;
  if (!qword_100018A98)
  {
    sub_100002CB0(&qword_100018A68, &qword_100010C28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018A98);
  }

  return result;
}

uint64_t sub_100002CB0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002D00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100002DA8@<X0>(uint64_t *a1@<X8>)
{
  result = FocusedValues.composingViewActions.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100002E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = sub_1000026DC(a5, a6);
  __chkstk_darwin(v11 - 8);
  v13 = &v15 - v12;
  sub_100002F0C(a1, &v15 - v12, a5, a6);
  return a7(v13);
}

uint64_t sub_100002F0C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000026DC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100002F74@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.undoManager.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100002FA0()
{
  sub_100002CB0(&qword_100018A78, &qword_100010C38);
  type metadata accessor for GenerativePlaygroundCommands(255);
  sub_100002CB0(&qword_100018A70, &qword_100010C30);
  sub_100002CB0(&qword_100018A68, &qword_100010C28);
  sub_100002C4C();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_100002D00(&qword_100018AA0, type metadata accessor for GenerativePlaygroundCommands, "9:");
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000030CC()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1000030FC()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[7] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[8] = v4;
  v1[9] = v3;

  return _swift_task_switch(sub_1000031FC, v4, v3);
}

uint64_t sub_1000031FC()
{
  static GPLog.authentication.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Fetching auth token", v3, 2u);
  }

  v4 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];

  v8 = *(v6 + 8);
  v8(v4, v5);
  v9 = *(v7 + OBJC_IVAR____TtC16Image_Playground25AppleConnectAuthenticator_token + 8);
  if (v9)
  {
    v10 = *(v7 + OBJC_IVAR____TtC16Image_Playground25AppleConnectAuthenticator_token);

    static GPLog.authentication.getter();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[5];
    v15 = v0[3];
    if (v13)
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Reusing cached authentication token", v16, 2u);
    }

    v8(v14, v15);

    v17 = v0[1];

    return v17(v10, v9);
  }

  else
  {
    v19 = swift_task_alloc();
    v0[10] = v19;
    *v19 = v0;
    v19[1] = sub_10000346C;

    return sub_1000036A0();
  }
}

uint64_t sub_10000346C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 88) = v2;

  if (v2)
  {
    v7 = v6[8];
    v8 = v6[9];
    v9 = sub_100003628;
  }

  else
  {
    v6[12] = a2;
    v6[13] = a1;
    v7 = v6[8];
    v8 = v6[9];
    v9 = sub_1000035A0;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_1000035A0()
{

  v1 = v0[12];
  v2 = v0[13];

  v3 = v0[1];

  return v3(v2, v1);
}

uint64_t sub_100003628()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000036A0()
{
  v1[23] = v0;
  type metadata accessor for MainActor();
  v1[24] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[25] = v3;
  v1[26] = v2;

  return _swift_task_switch(sub_100003738, v3, v2);
}

uint64_t sub_100003738()
{
  v1 = type metadata accessor for Logger();
  v0[27] = v1;
  v2 = *(v1 - 8);
  v3 = v2;
  v0[28] = v2;
  v0[29] = *(v2 + 64);
  v4 = swift_task_alloc();
  static GPLog.authentication.getter();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Starting Apple Connect authentication", v7, 2u);
  }

  v8 = *(v3 + 8);
  v0[30] = v8;
  v8(v4, v1);

  if (ACAuthenticationRequest)
  {
    v9 = v0[23];
    v10 = [objc_allocWithZone(ACAuthenticationRequest) init];
    v0[31] = v10;
    [v10 setAuthType:3];
    v11 = *(v9 + OBJC_IVAR____TtC16Image_Playground25AppleConnectAuthenticator_context);
    v0[2] = v0;
    v0[7] = v0 + 21;
    v0[3] = sub_100003A28;
    v12 = swift_continuation_init();
    v0[17] = sub_1000026DC(&qword_100018B68, &qword_100010E38);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100003EAC;
    v0[13] = &unk_100014DE0;
    v0[14] = v12;
    [v11 authenticateWithRequest:v10 completion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {

    sub_100005124();
    swift_allocError();
    *v13 = xmmword_100010D40;
    swift_willThrow();
    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_100003A28()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);

  return _swift_task_switch(sub_100003B30, v2, v1);
}

uint64_t sub_100003B30()
{

  v1 = v0[21];
  v2 = [v1 serviceTicket];
  if (v2)
  {
    v3 = v0[31];
    v4 = v0[23];
    v5 = v2;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9 = (v4 + OBJC_IVAR____TtC16Image_Playground25AppleConnectAuthenticator_token);
    *v9 = v6;
    v9[1] = v8;

    v10 = v0[1];

    return v10(v6, v8);
  }

  else
  {
    v12 = swift_task_alloc();
    static GPLog.authentication.getter();
    v13 = v1;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = [v13 error];
      if (v18)
      {
        v18 = _swift_stdlib_bridgeErrorToNSError();
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      *(v16 + 4) = v18;
      *v17 = v19;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to authenticate: %@", v16, 0xCu);
      sub_100005238(v17, &qword_100018B70, &qword_100010E40);
    }

    v20 = v0[30];
    v21 = v0[27];

    v20(v12, v21);

    v22 = [v13 error];
    if (v22)
    {
      v23 = v22;
      swift_getErrorValue();
      v24 = v0[18];
      v25 = v0[19];
      v26 = *(v25 - 8);
      v27 = swift_task_alloc();
      (*(v26 + 16))(v27, v24, v25);

      v28 = Error.localizedDescription.getter();
      v30 = v29;
      (*(v26 + 8))(v27, v25);
    }

    else
    {
      v28 = 0;
      v30 = 0;
    }

    v31 = v0[31];
    sub_100005124();
    swift_allocError();
    *v32 = v28;
    v32[1] = v30;
    swift_willThrow();

    v33 = v0[1];

    return v33();
  }
}

uint64_t sub_100003EAC(uint64_t a1, void *a2)
{
  v3 = sub_100005298((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return _swift_continuation_resume(v4);
}

uint64_t sub_100003F10(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    return static String.localizedStringWithFormat(_:_:)();
  }

  sub_1000026DC(&qword_100018B78, &unk_100010F30);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100010D50;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_1000053FC();
  if (a2)
  {
    *(v5 + 32) = a1;
    *(v5 + 40) = a2;
  }

  else
  {
    *(v5 + 32) = 0x6E776F6E6B6E75;
    *(v5 + 40) = 0xE700000000000000;
    sub_100005450(a1, 0);
  }

  sub_100005464(a1, a2);
  v6 = static String.localizedStringWithFormat(_:_:)();

  return v6;
}

id sub_100004048(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = &v2[OBJC_IVAR____TtC16Image_Playground25AppleConnectAuthenticator_token];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC16Image_Playground25AppleConnectAuthenticator_context;
  v6 = [objc_allocWithZone(ACMobileAuthenticationContext) init];
  v7 = objc_allocWithZone(NSNumber);
  v8 = v6;
  v9 = [v7 initWithInteger:191000];
  [v8 setAppID:v9];

  [v8 setEnvironment:0];
  *&v2[v5] = v8;
  v11.receiver = v2;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, "init");
}

uint64_t sub_1000041CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v6[4] = type metadata accessor for MainActor();
  v6[5] = static MainActor.shared.getter();
  v7 = swift_task_alloc();
  v6[6] = v7;
  *v7 = v6;
  v7[1] = sub_10000427C;

  return sub_1000030FC();
}

uint64_t sub_10000427C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 56) = v2;

  if (v2)
  {
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
    v10 = sub_100004494;
  }

  else
  {
    *(v6 + 64) = a2;
    *(v6 + 72) = a1;
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v11;
    v10 = sub_100004408;
  }

  return _swift_task_switch(v10, v7, v9);
}

uint64_t sub_100004408()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[2];

  v3(v2, v1, 0);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100004494()
{
  v1 = v0[7];
  v2 = v0[2];

  swift_errorRetain();
  v2(0, 0, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100004530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000026DC(&qword_100018B58, &qword_100010DF8);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100004D1C(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100005238(v11, &qword_100018B58, &qword_100010DF8);
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

      sub_100005238(a3, &qword_100018B58, &qword_100010DF8);

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

  sub_100005238(a3, &qword_100018B58, &qword_100010DF8);
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

__n128 sub_1000049A8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000049B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000049FC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_100004A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = String._bridgeToObjectiveC()();
    if (a3)
    {
LABEL_3:
      v7 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

uint64_t sub_100004AD8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100004B18()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100004B60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100004C28;

  return sub_1000041CC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100004C28()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100004D1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000026DC(&qword_100018B58, &qword_100010DF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100004D8C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100004E84;

  return v6(a1);
}

uint64_t sub_100004E84()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100004F7C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000547C;

  return sub_100004D8C(a1, v4);
}

uint64_t sub_100005034()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000506C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100004C28;

  return sub_100004D8C(a1, v4);
}

unint64_t sub_100005124()
{
  result = qword_100018B60;
  if (!qword_100018B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018B60);
  }

  return result;
}

uint64_t sub_100005188(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000051EC(void *a1)
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

uint64_t sub_100005238(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000026DC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_100005298(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000052DC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100005300(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000535C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_1000053BC(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

unint64_t sub_1000053FC()
{
  result = qword_100018B80;
  if (!qword_100018B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018B80);
  }

  return result;
}

uint64_t sub_100005450(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_100005464(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

__n128 sub_10000548C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000054A0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1000054E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100005554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v49 = a3;
  v53 = a2;
  v54 = a4;
  v5 = sub_1000026DC(&qword_100018BA0, &qword_100011028);
  __chkstk_darwin(v5 - 8);
  v7 = &v40 - v6;
  v42 = type metadata accessor for PlaygroundHomeView();
  v43 = *(v42 - 8);
  __chkstk_darwin(v42);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1000026DC(&qword_100018BA8, &qword_100011030) - 8;
  __chkstk_darwin(v41);
  v11 = &v40 - v10;
  v44 = sub_1000026DC(&qword_100018BB0, &qword_100011038);
  __chkstk_darwin(v44);
  v45 = &v40 - v12;
  v48 = sub_1000026DC(&qword_100018BB8, &qword_100011040);
  __chkstk_darwin(v48);
  v46 = &v40 - v13;
  v14 = sub_1000026DC(&qword_100018BC0, &qword_100011048);
  v50 = *(v14 - 8);
  v51 = v14;
  __chkstk_darwin(v14);
  v47 = &v40 - v15;

  v52 = a1;
  PlaygroundHomeView.init(viewModel:)();
  v16 = enum case for ColorScheme.dark(_:);
  v17 = type metadata accessor for ColorScheme();
  v18 = *(v17 - 8);
  v19 = *(v18 + 104);
  v19(v7, v16, v17);
  v20 = *(v18 + 56);
  v20(v7, 0, 1, v17);
  sub_1000065D8(&qword_100018BC8, &type metadata accessor for PlaygroundHomeView, &protocol conformance descriptor for PlaygroundHomeView);
  v21 = v42;
  View.dialogColorScheme(_:)();
  sub_100005DF0(v7);
  (*(v43 + 8))(v9, v21);
  v22 = *(v41 + 44);
  v19(&v11[v22], v16, v17);
  v20(&v11[v22], 0, 1, v17);
  if (qword_1000188C0 != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v23 = v45;
  sub_100006070(v11, v45, &qword_100018BA8, &qword_100011030);
  v24 = (v23 + *(v44 + 36));
  v25 = v62;
  v24[4] = v61;
  v24[5] = v25;
  v24[6] = v63;
  v26 = v58;
  *v24 = v57;
  v24[1] = v26;
  v27 = v60;
  v24[2] = v59;
  v24[3] = v27;
  v28 = swift_allocObject();
  v30 = v52;
  v29 = v53;
  *(v28 + 16) = v52;
  *(v28 + 24) = v29;
  v31 = v49 & 1;
  *(v28 + 32) = v49 & 1;
  v32 = v46;
  sub_100006070(v23, v46, &qword_100018BB0, &qword_100011038);
  v33 = v48;
  v34 = (v32 + *(v48 + 36));
  *v34 = sub_100006064;
  v34[1] = v28;
  v34[2] = 0;
  v34[3] = 0;

  sub_100006240(v29, v31);
  sub_1000060D8(&off_100014C38);
  sub_10000624C(&unk_100014C58);
  sub_1000060D8(&off_100014C68);
  sub_10000624C(&unk_100014C88);
  v35 = sub_1000062A0();
  v36 = v47;
  View.handlesExternalEvents(preferring:allowing:)();

  sub_100006508(v32);
  v37 = swift_allocObject();
  *(v37 + 16) = v30;
  *(v37 + 24) = v29;
  *(v37 + 32) = v31;

  sub_100006240(v29, v31);
  v55 = v33;
  v56 = v35;
  swift_getOpaqueTypeConformance2();
  v38 = v51;
  View.onOpenURL(perform:)();

  return (*(v50 + 8))(v36, v38);
}

void sub_100005C58(uint64_t a1, void *a2, char a3)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v10 = a2;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100006058(a2, 0);
    (*(v6 + 8))(v8, v5);
    v10 = v13;
    a2 = v13;
  }

  v9.value.super.isa = a2;
  PlaygroundHomeViewModel.setUndoManager(_:)(v9);
}

uint64_t sub_100005DF0(uint64_t a1)
{
  v2 = sub_1000026DC(&qword_100018BA0, &qword_100011028);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100005E58()
{
  v0 = type metadata accessor for DeviceClass();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v11 - v5;
  static DeviceClass.current.getter();
  (*(v1 + 104))(v4, enum case for DeviceClass.ipad(_:), v0);
  sub_1000065D8(&qword_100018C00, &type metadata accessor for DeviceClass, &protocol conformance descriptor for DeviceClass);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v11[2] == v11[0] && v11[3] == v11[1])
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);

  v10 = 0x4080E00000000000;
  if ((v7 & 1) == 0)
  {
    v10 = 0;
  }

  qword_100018B90 = v10;
  byte_100018B98 = (v7 & 1) == 0;
  return result;
}

void sub_100006058(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_100006070(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000026DC(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

Swift::Int sub_1000060D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000026DC(&qword_100018BF8, qword_100011058);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

id sub_100006240(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

unint64_t sub_1000062A0()
{
  result = qword_100018BD0;
  if (!qword_100018BD0)
  {
    sub_100002CB0(&qword_100018BB8, &qword_100011040);
    sub_10000632C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018BD0);
  }

  return result;
}

unint64_t sub_10000632C()
{
  result = qword_100018BD8;
  if (!qword_100018BD8)
  {
    sub_100002CB0(&qword_100018BB0, &qword_100011038);
    sub_1000063B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018BD8);
  }

  return result;
}

unint64_t sub_1000063B8()
{
  result = qword_100018BE0;
  if (!qword_100018BE0)
  {
    sub_100002CB0(&qword_100018BA8, &qword_100011030);
    type metadata accessor for PlaygroundHomeView();
    sub_1000065D8(&qword_100018BC8, &type metadata accessor for PlaygroundHomeView, &protocol conformance descriptor for PlaygroundHomeView);
    swift_getOpaqueTypeConformance2();
    sub_1000064A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018BE0);
  }

  return result;
}

unint64_t sub_1000064A4()
{
  result = qword_100018BE8;
  if (!qword_100018BE8)
  {
    sub_100002CB0(&qword_100018BF0, &qword_100011050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018BE8);
  }

  return result;
}

uint64_t sub_100006508(uint64_t a1)
{
  v2 = sub_1000026DC(&qword_100018BB8, &qword_100011040);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100006570()
{

  sub_100006058(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_1000065D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100006620()
{
  sub_100002CB0(&qword_100018BC0, &qword_100011048);
  sub_100002CB0(&qword_100018BB8, &qword_100011040);
  sub_1000062A0();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000066D8(unint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1000026DC(&qword_100018C08, &qword_100011080);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_1000026DC(&qword_100018C10, &qword_100011088);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = sub_1000026DC(&qword_100018C18, &unk_100011090);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[7];

  return v15(v16, a2, v14);
}

char *sub_10000687C(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_1000026DC(&qword_100018C08, &qword_100011080);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_1000026DC(&qword_100018C10, &qword_100011088);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = sub_1000026DC(&qword_100018C18, &unk_100011090);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[7]];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for GenerativePlaygroundCommands(uint64_t a1)
{
  result = qword_100018C78;
  if (!qword_100018C78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100006A58(uint64_t a1)
{
  type metadata accessor for PlaygroundHomeViewModel();
  if (v1 <= 0x3F)
  {
    sub_100006B60(319, &qword_100018C88, &type metadata accessor for PhotoGridActions);
    if (v2 <= 0x3F)
    {
      sub_100006B60(319, &qword_100018C90, &type metadata accessor for ComposingViewActions);
      if (v3 <= 0x3F)
      {
        sub_100006B60(319, &unk_100018C98, &type metadata accessor for DetailViewActions);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100006B60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for FocusedValue();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100006BD0@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v45 = sub_1000026DC(&qword_100018CD0, &qword_100011108);
  __chkstk_darwin(v45);
  v33 = &v26 - v2;
  v36 = sub_1000026DC(&qword_100018CD8, &qword_100011110);
  v35 = *(v36 - 8);
  __chkstk_darwin(v36);
  v31 = &v26 - v3;
  v34 = sub_1000026DC(&qword_100018CE0, &qword_100011118);
  v32 = *(v34 - 8);
  __chkstk_darwin(v34);
  v43 = &v26 - v4;
  v30 = sub_1000026DC(&qword_100018CE8, &qword_100011120);
  v29 = *(v30 - 8);
  __chkstk_darwin(v30);
  v38 = &v26 - v5;
  v28 = type metadata accessor for PrintingCommands();
  v44 = *(v28 - 8);
  __chkstk_darwin(v28);
  v39 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CommandGroupPlacement();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000026DC(&qword_100018CF0, &qword_100011128);
  v41 = *(v8 - 8);
  v42 = v8;
  __chkstk_darwin(v8);
  v40 = &v26 - v9;
  static CommandGroupPlacement.newItem.getter();
  v49 = v1;
  sub_1000026DC(&qword_100018CF8, &qword_100011130);
  sub_10000E958(&qword_100018D00, &qword_100018CF8, &qword_100011130, &protocol conformance descriptor for TupleView<A>);
  CommandGroup.init(replacing:addition:)();
  PrintingCommands.init()();
  LocalizedStringKey.init(stringLiteral:)();
  v48 = v1;
  sub_1000026DC(&qword_100018D08, &qword_100011138);
  sub_10000E958(&qword_100018D10, &qword_100018D08, &qword_100011138, &protocol conformance descriptor for TupleView<A>);
  v10 = v38;
  CommandMenu.init(_:content:)();
  static CommandGroupPlacement.pasteboard.getter();
  v47 = v1;
  sub_1000026DC(&qword_100018D18, &qword_100011140);
  sub_10000E958(&qword_100018D20, &qword_100018D18, &qword_100011140, &protocol conformance descriptor for TupleView<A>);
  CommandGroup.init(after:addition:)();
  static CommandGroupPlacement.sidebar.getter();
  v46 = v1;
  sub_1000026DC(&qword_100018D28, &qword_100011148);
  sub_10000E958(&qword_100018D30, &qword_100018D28, &qword_100011148, &protocol conformance descriptor for TupleView<A>);
  v11 = v31;
  CommandGroup.init(replacing:addition:)();
  v12 = v45[12];
  v13 = v45[16];
  v14 = v45[20];
  v27 = v45[24];
  v15 = v33;
  (*(v41 + 16))(v33, v40, v42);
  v16 = v28;
  (*(v44 + 16))(&v15[v12], v39, v28);
  v17 = v29;
  v18 = v30;
  (*(v29 + 16))(&v15[v13], v10, v30);
  v19 = v32;
  v20 = &v15[v14];
  v21 = v43;
  v22 = v34;
  (*(v32 + 16))(v20, v43, v34);
  v23 = v35;
  v24 = v36;
  (*(v35 + 16))(&v15[v27], v11, v36);
  TupleCommandContent.init(_:)();
  (*(v23 + 8))(v11, v24);
  (*(v19 + 8))(v21, v22);
  (*(v17 + 8))(v38, v18);
  (*(v44 + 8))(v39, v16);
  return (*(v41 + 8))(v40, v42);
}

uint64_t sub_100007328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v263 = a2;
  v237 = sub_1000026DC(&qword_100018DB8, &unk_1000111E8);
  __chkstk_darwin(v237);
  v238 = &v233 - v3;
  v4 = sub_1000026DC(&qword_100018AA8, &unk_100010CE0);
  __chkstk_darwin(v4 - 8);
  v242 = &v233 - v5;
  v258 = sub_1000026DC(&qword_100018DD8, &qword_100011208);
  __chkstk_darwin(v258);
  v260 = &v233 - v6;
  v259 = sub_1000026DC(&qword_100018DE0, &qword_100011210);
  __chkstk_darwin(v259);
  v236 = &v233 - v7;
  v264 = sub_1000026DC(&qword_100018DB0, &qword_1000111D8);
  v8 = __chkstk_darwin(v264);
  v234 = &v233 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v256 = &v233 - v10;
  v11 = sub_1000026DC(&qword_100018AB0, &qword_1000111E0);
  v12 = __chkstk_darwin(v11 - 8);
  v235 = &v233 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v257 = &v233 - v14;
  v15 = sub_1000026DC(&qword_100018DE8, &qword_100011218);
  v16 = __chkstk_darwin(v15 - 8);
  v273 = &v233 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v284 = &v233 - v18;
  v270 = sub_1000026DC(&qword_100018D40, &qword_100011158);
  v19 = __chkstk_darwin(v270);
  v287 = &v233 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v286 = &v233 - v22;
  v23 = __chkstk_darwin(v21);
  v285 = &v233 - v24;
  v25 = __chkstk_darwin(v23);
  v240 = &v233 - v26;
  v27 = __chkstk_darwin(v25);
  v241 = &v233 - v28;
  v29 = __chkstk_darwin(v27);
  v255 = &v233 - v30;
  v31 = __chkstk_darwin(v29);
  v283 = &v233 - v32;
  v33 = __chkstk_darwin(v31);
  v253 = &v233 - v34;
  v35 = __chkstk_darwin(v33);
  v282 = &v233 - v36;
  v37 = __chkstk_darwin(v35);
  v251 = &v233 - v38;
  __chkstk_darwin(v37);
  v281 = &v233 - v39;
  v262 = type metadata accessor for Divider();
  v261 = *(v262 - 8);
  v40 = __chkstk_darwin(v262);
  v271 = &v233 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v40);
  v272 = &v233 - v43;
  v44 = __chkstk_darwin(v42);
  v279 = &v233 - v45;
  __chkstk_darwin(v44);
  v280 = &v233 - v46;
  v267 = type metadata accessor for KeyEquivalent();
  v288 = *(v267 - 8);
  v47 = __chkstk_darwin(v267);
  v249 = &v233 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v245 = &v233 - v49;
  v274 = type metadata accessor for GenerativePlaygroundCommands(0);
  v294 = *(v274 - 8);
  v50 = *(v294 + 64);
  __chkstk_darwin(v274);
  v51 = sub_1000026DC(&qword_100018D38, &qword_100011150);
  v295 = *(v51 - 8);
  v296 = v51;
  v52 = __chkstk_darwin(v51);
  v239 = &v233 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __chkstk_darwin(v52);
  v254 = &v233 - v55;
  v56 = __chkstk_darwin(v54);
  v252 = &v233 - v57;
  v58 = __chkstk_darwin(v56);
  v250 = &v233 - v59;
  v60 = __chkstk_darwin(v58);
  v246 = &v233 - v61;
  __chkstk_darwin(v60);
  v63 = &v233 - v62;
  v266 = sub_1000026DC(&qword_100018D90, &qword_1000111B8);
  v275 = *(v266 - 8);
  v64 = __chkstk_darwin(v266);
  v248 = &v233 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v64);
  v67 = &v233 - v66;
  v265 = sub_1000026DC(&qword_100018D98, &qword_1000111C0);
  v68 = __chkstk_darwin(v265);
  v269 = &v233 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __chkstk_darwin(v68);
  v268 = &v233 - v71;
  v72 = __chkstk_darwin(v70);
  v247 = &v233 - v73;
  v74 = __chkstk_darwin(v72);
  v278 = &v233 - v75;
  v76 = __chkstk_darwin(v74);
  v78 = &v233 - v77;
  __chkstk_darwin(v76);
  v277 = &v233 - v79;
  v80 = LocalizedStringKey.init(stringLiteral:)();
  v82 = v81;
  v84 = v83;
  v86 = v85;
  v276 = a1;
  sub_10000DE34(a1, &v233 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  v87 = *(v294 + 80);
  v88 = (v87 + 16) & ~v87;
  v293 = v50;
  v290 = v87;
  v89 = swift_allocObject();
  v291 = v88;
  v294 = &v233 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000DE9C(v294, v89 + v88);
  v297 = v80;
  v298 = v82;
  v299 = v84 & 1;
  v300 = v86;
  v301 = 0x7269632E73756C70;
  v302 = 0xEB00000000656C63;
  v90 = sub_1000026DC(&qword_100018D50, &qword_100011168);
  v91 = sub_10000E958(&qword_100018D58, &qword_100018D50, &qword_100011168, &protocol conformance descriptor for Label<A, B>);
  v292 = v90;
  v92 = v245;
  v289 = v91;
  Button.init(action:label:)();

  KeyEquivalent.init(extendedGraphemeClusterLiteral:)();
  v93 = static EventModifiers.command.getter();
  EventModifiers.init(rawValue:)();
  EventModifiers.init(rawValue:)();
  if (EventModifiers.init(rawValue:)() != v93)
  {
    EventModifiers.init(rawValue:)();
  }

  v94 = sub_10000E958(&qword_100018D68, &qword_100018D38, &qword_100011150, &protocol conformance descriptor for Button<A>);
  v95 = v296;
  v244 = v94;
  View.keyboardShortcut(_:modifiers:)();
  v96 = *(v288 + 8);
  v288 += 8;
  v243 = v96;
  v96(v92, v267);
  v97 = *(v295 + 8);
  v97(v63, v95);
  v98 = v276;
  v99 = PlaygroundHomeViewModel.composingViewDidAppear.getter();
  KeyPath = swift_getKeyPath();
  v101 = swift_allocObject();
  *(v101 + 16) = v99 & 1;
  v102 = *(v275 + 4);
  v275 += 32;
  v245 = v102;
  (v102)(v78, v67, v266);
  v103 = &v78[*(v265 + 36)];
  *v103 = KeyPath;
  v103[1] = sub_10000EA44;
  v103[2] = v101;
  sub_10000E1F8(v78, v277);
  LocalizedStringKey.init(stringLiteral:)();
  v104 = v98;
  v105 = v294;
  sub_10000DE34(v104, v294);
  v106 = v291;
  v107 = swift_allocObject();
  v108 = sub_10000DE9C(v105, v107 + v106);
  __chkstk_darwin(v108);
  v109 = v246;
  Button.init(action:label:)();

  v110 = v249;
  KeyEquivalent.init(extendedGraphemeClusterLiteral:)();
  v111 = static EventModifiers.command.getter();
  EventModifiers.init(rawValue:)();
  EventModifiers.init(rawValue:)();
  if (EventModifiers.init(rawValue:)() != v111)
  {
    EventModifiers.init(rawValue:)();
  }

  v112 = v248;
  v113 = v296;
  View.keyboardShortcut(_:modifiers:)();
  v243(v110, v267);
  v97(v109, v113);
  v114 = *(v274 + 24);
  sub_1000026DC(&qword_100018C10, &qword_100011088);
  v115 = v276;
  v288 = v114;
  FocusedValue.content.getter();
  v116 = v303;
  if ((v304 & 1) == 0)
  {
    j__swift_release(v303);
    goto LABEL_10;
  }

  if (!v303)
  {
LABEL_10:
    v120 = 1;
    goto LABEL_11;
  }

  v117 = ComposingViewActions.saveImage.getter();
  v119 = v118;
  v120 = 1;
  j__swift_release(v116);
  if (v117)
  {
    sub_10000E3E8(v117, v119);
    v120 = 0;
  }

LABEL_11:
  v121 = swift_getKeyPath();
  v122 = swift_allocObject();
  *(v122 + 16) = v120;
  v123 = v247;
  (v245)(v247, v112, v266);
  v124 = (v123 + *(v265 + 36));
  *v124 = v121;
  v124[1] = sub_10000EA44;
  v124[2] = v122;
  sub_10000E1F8(v123, v278);
  Divider.init()();
  LocalizedStringKey.init(stringLiteral:)();
  v125 = v294;
  sub_10000DE34(v115, v294);
  v126 = v291;
  v127 = swift_allocObject();
  v128 = sub_10000DE9C(v125, v127 + v126);
  __chkstk_darwin(v128);
  v129 = v250;
  Button.init(action:label:)();

  FocusedValue.content.getter();
  v130 = v303;
  if (v304 == 1)
  {
    v131 = v270;
    if (v303)
    {
      v132 = ComposingViewActions.choosePhoto.getter();
      v134 = v133;
      v135 = 1;
      j__swift_release(v130);
      if (v132)
      {
        sub_10000E3E8(v132, v134);
        v135 = 0;
      }
    }

    else
    {
      v135 = 1;
    }
  }

  else
  {
    j__swift_release(v303);
    v135 = 1;
    v131 = v270;
  }

  v136 = swift_getKeyPath();
  v137 = swift_allocObject();
  *(v137 + 16) = v135;
  v138 = *(v295 + 32);
  v139 = v251;
  v295 += 32;
  v275 = v138;
  (v138)(v251, v129, v296);
  v140 = (v139 + *(v131 + 36));
  *v140 = v136;
  v140[1] = sub_10000EA44;
  v140[2] = v137;
  sub_100006070(v139, v281, &qword_100018D40, &qword_100011158);
  LocalizedStringKey.init(stringLiteral:)();
  v141 = v294;
  sub_10000DE34(v115, v294);
  v142 = v291;
  v143 = swift_allocObject();
  v144 = sub_10000DE9C(v141, v143 + v142);
  __chkstk_darwin(v144);
  v145 = v252;
  Button.init(action:label:)();

  FocusedValue.content.getter();
  v146 = v303;
  if (v304 != 1)
  {
    j__swift_release(v303);
    goto LABEL_22;
  }

  if (!v303)
  {
LABEL_22:
    v150 = 1;
    goto LABEL_23;
  }

  v147 = ComposingViewActions.takePhoto.getter();
  v149 = v148;
  v150 = 1;
  j__swift_release(v146);
  if (v147)
  {
    sub_10000E3E8(v147, v149);
    v150 = 0;
  }

LABEL_23:
  v151 = swift_getKeyPath();
  v152 = swift_allocObject();
  *(v152 + 16) = v150;
  v153 = v253;
  (v275)(v253, v145, v296);
  v154 = (v153 + *(v131 + 36));
  *v154 = v151;
  v154[1] = sub_10000EA44;
  v154[2] = v152;
  sub_100006070(v153, v282, &qword_100018D40, &qword_100011158);
  LocalizedStringKey.init(stringLiteral:)();
  v155 = v294;
  sub_10000DE34(v115, v294);
  v156 = v291;
  v157 = swift_allocObject();
  v158 = sub_10000DE9C(v155, v157 + v156);
  __chkstk_darwin(v158);
  v159 = v254;
  Button.init(action:label:)();

  FocusedValue.content.getter();
  v160 = v303;
  if (v304 != 1)
  {
    j__swift_release(v303);
    goto LABEL_28;
  }

  if (!v303)
  {
LABEL_28:
    v164 = 1;
    goto LABEL_29;
  }

  v161 = ComposingViewActions.chooseFile.getter();
  v163 = v162;
  v164 = 1;
  j__swift_release(v160);
  if (v161)
  {
    sub_10000E3E8(v161, v163);
    v164 = 0;
  }

LABEL_29:
  v165 = swift_getKeyPath();
  v166 = swift_allocObject();
  *(v166 + 16) = v164;
  v167 = v255;
  (v275)(v255, v159, v296);
  v168 = (v167 + *(v131 + 36));
  *v168 = v165;
  v168[1] = sub_10000EA44;
  v168[2] = v166;
  sub_100006070(v167, v283, &qword_100018D40, &qword_100011158);
  Divider.init()();
  sub_1000026DC(&qword_100018C08, &qword_100011080);
  v169 = v256;
  FocusedValue.content.getter();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v170 = v169;
    v171 = v257;
    sub_100006070(v170, v257, &qword_100018AB0, &qword_1000111E0);
    v172 = type metadata accessor for PhotoGridActions();
    v173 = *(v172 - 8);
    v174 = *(v173 + 48);
    if (v174(v171, 1, v172) != 1)
    {
      v175 = v171;
      v176 = PhotoGridActions.shareData.getter();
      v177 = *(v173 + 8);
      v177(v175, v172);
      v178 = v234;
      FocusedValue.content.getter();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v179 = v178;
        v180 = v235;
        sub_100006070(v179, v235, &qword_100018AB0, &qword_1000111E0);
        if (v174(v180, 1, v172) != 1)
        {
          v181 = PhotoGridActions.shareOnPresentationChange.getter();
          v183 = v182;
          v177(v180, v172);
LABEL_51:
          v303 = v176;
          v214 = swift_allocObject();
          *(v214 + 16) = v181;
          *(v214 + 24) = v183;

          sub_10000E2B0(v181, v183);
          sub_1000026DC(&qword_100018E10, &qword_100011230);
          type metadata accessor for DisplayableImage();
          sub_10000E958(&qword_100018E18, &qword_100018E10, &qword_100011230, &protocol conformance descriptor for [A]);
          sub_10000E8BC();
          v215 = v236;
          ShareLink<>.init(items:subject:message:preview:onPresentationChanged:)();
          v216 = *(v176 + 16);

          v217 = swift_getKeyPath();
          v218 = swift_allocObject();
          *(v218 + 16) = v216 == 0;
          v219 = (v215 + *(v259 + 36));
          *v219 = v217;
          v219[1] = sub_10000EA44;
          v219[2] = v218;
          sub_100002F0C(v215, v260, &qword_100018DE0, &qword_100011210);
          swift_storeEnumTagMultiPayload();
          sub_10000E78C();
          sub_10000E038();
          _ConditionalContent<>.init(storage:)();
          sub_10000E3E8(v181, v183);
          v211 = v215;
          v212 = &qword_100018DE0;
          v213 = &qword_100011210;
          goto LABEL_52;
        }
      }

      else
      {
        sub_100005238(v178, &qword_100018DB0, &qword_1000111D8);
        v180 = v235;
        (*(v173 + 56))(v235, 1, 1, v172);
      }

      sub_100005238(v180, &qword_100018AB0, &qword_1000111E0);
      v181 = 0;
      v183 = 0;
      goto LABEL_51;
    }
  }

  else
  {
    sub_100005238(v169, &qword_100018DB0, &qword_1000111D8);
    v184 = type metadata accessor for PhotoGridActions();
    v171 = v257;
    (*(*(v184 - 8) + 56))(v257, 1, 1, v184);
  }

  sub_100005238(v171, &qword_100018AB0, &qword_1000111E0);
  LocalizedStringKey.init(stringLiteral:)();
  v185 = v294;
  sub_10000DE34(v276, v294);
  v186 = v291;
  v187 = swift_allocObject();
  v188 = sub_10000DE9C(v185, v187 + v186);
  __chkstk_darwin(v188);
  v189 = v239;
  Button.init(action:label:)();

  FocusedValue.content.getter();
  v190 = v303;
  if (v304 != 1)
  {
    j__swift_release(v303);
    v191 = v270;
    v192 = v242;
    goto LABEL_40;
  }

  v191 = v270;
  v192 = v242;
  if (!v303 || (v193 = ComposingViewActions.share.getter(), v195 = v194, j__swift_release(v190), !v193))
  {
LABEL_40:
    sub_1000026DC(&qword_100018C18, &unk_100011090);
    v198 = v238;
    FocusedValue.content.getter();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100006070(v198, v192, &qword_100018AA8, &unk_100010CE0);
      v199 = type metadata accessor for DetailViewActions();
      v200 = *(v199 - 8);
      if ((*(v200 + 48))(v192, 1, v199) != 1)
      {
        v201 = DetailViewActions.share.getter();
        v203 = v202;
        (*(v200 + 8))(v192, v199);
        if (v201)
        {
          v196 = v201;
          v197 = v203;
          goto LABEL_44;
        }

LABEL_47:
        v204 = 1;
        goto LABEL_48;
      }
    }

    else
    {
      sub_100005238(v198, &qword_100018DB8, &unk_1000111E8);
      v205 = type metadata accessor for DetailViewActions();
      (*(*(v205 - 8) + 56))(v192, 1, 1, v205);
    }

    sub_100005238(v192, &qword_100018AA8, &unk_100010CE0);
    goto LABEL_47;
  }

  v196 = v193;
  v197 = v195;
LABEL_44:
  sub_10000E3E8(v196, v197);
  v204 = 0;
LABEL_48:
  v206 = swift_getKeyPath();
  v207 = swift_allocObject();
  *(v207 + 16) = v204;
  v208 = v240;
  (v275)(v240, v189, v296);
  v209 = (v208 + *(v191 + 36));
  *v209 = v206;
  v209[1] = sub_10000EA44;
  v209[2] = v207;
  v210 = v241;
  sub_100006070(v208, v241, &qword_100018D40, &qword_100011158);
  sub_100002F0C(v210, v260, &qword_100018D40, &qword_100011158);
  swift_storeEnumTagMultiPayload();
  sub_10000E78C();
  sub_10000E038();
  _ConditionalContent<>.init(storage:)();
  v211 = v210;
  v212 = &qword_100018D40;
  v213 = &qword_100011158;
LABEL_52:
  sub_100005238(v211, v212, v213);
  v220 = v268;
  sub_100002F0C(v277, v268, &qword_100018D98, &qword_1000111C0);
  v221 = v269;
  sub_100002F0C(v278, v269, &qword_100018D98, &qword_1000111C0);
  v222 = v261;
  v223 = *(v261 + 16);
  v224 = v272;
  v225 = v262;
  v223(v272, v280, v262);
  sub_100002F0C(v281, v285, &qword_100018D40, &qword_100011158);
  sub_100002F0C(v282, v286, &qword_100018D40, &qword_100011158);
  sub_100002F0C(v283, v287, &qword_100018D40, &qword_100011158);
  v223(v271, v279, v225);
  sub_100002F0C(v284, v273, &qword_100018DE8, &qword_100011218);
  v226 = v220;
  v227 = v263;
  sub_100002F0C(v226, v263, &qword_100018D98, &qword_1000111C0);
  v228 = sub_1000026DC(&qword_100018E08, &qword_100011228);
  sub_100002F0C(v221, v227 + v228[12], &qword_100018D98, &qword_1000111C0);
  v223((v227 + v228[16]), v224, v225);
  sub_100002F0C(v285, v227 + v228[20], &qword_100018D40, &qword_100011158);
  sub_100002F0C(v286, v227 + v228[24], &qword_100018D40, &qword_100011158);
  sub_100002F0C(v287, v227 + v228[28], &qword_100018D40, &qword_100011158);
  v229 = v271;
  v223((v227 + v228[32]), v271, v225);
  v230 = v273;
  sub_100002F0C(v273, v227 + v228[36], &qword_100018DE8, &qword_100011218);
  sub_100005238(v284, &qword_100018DE8, &qword_100011218);
  v231 = *(v222 + 8);
  v231(v279, v225);
  sub_100005238(v283, &qword_100018D40, &qword_100011158);
  sub_100005238(v282, &qword_100018D40, &qword_100011158);
  sub_100005238(v281, &qword_100018D40, &qword_100011158);
  v231(v280, v225);
  sub_100005238(v278, &qword_100018D98, &qword_1000111C0);
  sub_100005238(v277, &qword_100018D98, &qword_1000111C0);
  sub_100005238(v230, &qword_100018DE8, &qword_100011218);
  v231(v229, v225);
  sub_100005238(v287, &qword_100018D40, &qword_100011158);
  sub_100005238(v286, &qword_100018D40, &qword_100011158);
  sub_100005238(v285, &qword_100018D40, &qword_100011158);
  v231(v272, v225);
  sub_100005238(v269, &qword_100018D98, &qword_1000111C0);
  return sub_100005238(v268, &qword_100018D98, &qword_1000111C0);
}

void *sub_100009678(uint64_t a1, uint64_t (*a2)(void *))
{
  type metadata accessor for GenerativePlaygroundCommands(0);
  sub_1000026DC(&qword_100018C10, &qword_100011088);
  result = FocusedValue.content.getter();
  if (v8 != 1)
  {
    return j__swift_release(v7);
  }

  if (v7)
  {
    v4 = a2(result);
    v6 = v5;
    result = j__swift_release(v7);
    if (v4)
    {
      v4(result);
      return sub_10000E3E8(v4, v6);
    }
  }

  return result;
}

uint64_t sub_100009734(uint64_t a1)
{
  v2 = type metadata accessor for DisplayableImage();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  LocalizedStringKey.init(stringLiteral:)();
  Text.init(_:tableName:bundle:comment:)();
  (*(v3 + 16))(v5, a1, v2);
  sub_10000E8BC();
  return SharePreview<>.init(_:image:)();
}

uint64_t sub_100009894(uint64_t result, void (*a2)(void), uint64_t a3)
{
  if (a2)
  {
    v5 = result;

    a2(v5 & 1);

    return sub_10000E3E8(a2, a3);
  }

  return result;
}

uint64_t sub_1000098F8()
{
  v0 = sub_1000026DC(&qword_100018DB8, &unk_1000111E8);
  __chkstk_darwin(v0);
  v2 = &v18 - v1;
  v3 = sub_1000026DC(&qword_100018AA8, &unk_100010CE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v18 - v4;
  type metadata accessor for GenerativePlaygroundCommands(0);
  sub_1000026DC(&qword_100018C10, &qword_100011088);
  FocusedValue.content.getter();
  v6 = v18;
  if (v19 == 1)
  {
    if (v18)
    {
      v7 = ComposingViewActions.share.getter();
      v9 = v8;
      v10 = j__swift_release(v6);
      if (v7)
      {
        v7(v10);
        return sub_10000E3E8(v7, v9);
      }
    }
  }

  else
  {
    j__swift_release(v18);
  }

  sub_1000026DC(&qword_100018C18, &unk_100011090);
  FocusedValue.content.getter();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100005238(v2, &qword_100018DB8, &unk_1000111E8);
    v17 = type metadata accessor for DetailViewActions();
    (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
    return sub_100005238(v5, &qword_100018AA8, &unk_100010CE0);
  }

  sub_100006070(v2, v5, &qword_100018AA8, &unk_100010CE0);
  v12 = type metadata accessor for DetailViewActions();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v5, 1, v12) == 1)
  {
    return sub_100005238(v5, &qword_100018AA8, &unk_100010CE0);
  }

  v14 = DetailViewActions.share.getter();
  v16 = v15;
  result = (*(v13 + 8))(v5, v12);
  if (v14)
  {
    v14(result);
    return sub_10000E3E8(v14, v16);
  }

  return result;
}

uint64_t sub_100009BC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v277 = a2;
  v288 = sub_1000026DC(&qword_100018D40, &qword_100011158);
  v3 = __chkstk_darwin(v288);
  v308 = v257 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v307 = v257 - v6;
  v7 = __chkstk_darwin(v5);
  v289 = v257 - v8;
  v9 = __chkstk_darwin(v7);
  v305 = v257 - v10;
  __chkstk_darwin(v9);
  v274 = v257 - v11;
  v291 = sub_1000026DC(&qword_100018D48, &qword_100011160);
  v290 = *(v291 - 8);
  v12 = __chkstk_darwin(v291);
  v306 = v257 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v302 = v257 - v14;
  v279 = type metadata accessor for Divider();
  v278 = *(v279 - 8);
  v15 = __chkstk_darwin(v279);
  v303 = v257 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v304 = v257 - v18;
  v19 = __chkstk_darwin(v17);
  v300 = v257 - v20;
  __chkstk_darwin(v19);
  v301 = v257 - v21;
  v286 = sub_1000026DC(&qword_100018D98, &qword_1000111C0);
  v22 = __chkstk_darwin(v286);
  v299 = v257 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v292 = v257 - v24;
  v293 = sub_1000026DC(&qword_100018DA8, &qword_1000111D0);
  __chkstk_darwin(v293);
  v294 = v257 - v25;
  v296 = type metadata accessor for KeyEquivalent();
  v285 = *(v296 - 8);
  v26 = __chkstk_darwin(v296);
  v273 = v257 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v284 = v257 - v28;
  v283 = sub_1000026DC(&qword_100018D38, &qword_100011150);
  v282 = *(v283 - 8);
  __chkstk_darwin(v283);
  v281 = v257 - v29;
  v270 = sub_1000026DC(&qword_100018D90, &qword_1000111B8);
  v30 = *(v270 - 8);
  __chkstk_darwin(v270);
  v258 = v257 - v31;
  v297 = sub_1000026DC(&qword_100018DB0, &qword_1000111D8);
  v32 = __chkstk_darwin(v297);
  v263 = v257 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v261 = v257 - v35;
  v36 = __chkstk_darwin(v34);
  v260 = v257 - v37;
  __chkstk_darwin(v36);
  v39 = v257 - v38;
  v40 = sub_1000026DC(&qword_100018AB0, &qword_1000111E0);
  v41 = __chkstk_darwin(v40 - 8);
  v264 = v257 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v41);
  v262 = v257 - v44;
  v45 = __chkstk_darwin(v43);
  v47 = v257 - v46;
  __chkstk_darwin(v45);
  v49 = v257 - v48;
  v50 = sub_1000026DC(&qword_100018DB8, &unk_1000111E8);
  v51 = __chkstk_darwin(v50);
  v275 = v257 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __chkstk_darwin(v51);
  v271 = v257 - v54;
  v55 = __chkstk_darwin(v53);
  v267 = v257 - v56;
  v57 = __chkstk_darwin(v55);
  v266 = v257 - v58;
  __chkstk_darwin(v57);
  v60 = v257 - v59;
  v61 = sub_1000026DC(&qword_100018AA8, &unk_100010CE0);
  v62 = __chkstk_darwin(v61 - 8);
  v276 = v257 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __chkstk_darwin(v62);
  v66 = v257 - v65;
  v67 = __chkstk_darwin(v64);
  v268 = v257 - v68;
  v69 = __chkstk_darwin(v67);
  v269 = (v257 - v70);
  __chkstk_darwin(v69);
  v72 = v257 - v71;
  v73 = sub_1000026DC(&qword_100018DC0, &qword_1000111F8);
  v74 = __chkstk_darwin(v73 - 8);
  v287 = v257 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v74);
  v298 = v257 - v76;
  v295 = type metadata accessor for GenerativePlaygroundCommands(0);
  v77 = *(v295 + 28);
  v78 = sub_1000026DC(&qword_100018C18, &unk_100011090);
  v312 = a1;
  v309 = v78;
  v310 = v77;
  FocusedValue.content.getter();
  v311 = v50;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v272 = v66;
  if (EnumCaseMultiPayload == 1)
  {
    sub_100006070(v60, v72, &qword_100018AA8, &unk_100010CE0);
    v80 = type metadata accessor for DetailViewActions();
    v81 = *(v80 - 8);
    if ((*(v81 + 48))(v72, 1, v80) != 1)
    {
      v82 = DetailViewActions.close.getter();
      v84 = v83;
      (*(v81 + 8))(v72, v80);
      v85 = LocalizedStringKey.init(stringLiteral:)();
      v87 = v86;
      v89 = v88;
      v91 = v90;
      v92 = swift_allocObject();
      *(v92 + 16) = v82;
      *(v92 + 24) = v84;
      v257[1] = v84;
      __chkstk_darwin(v92);
      v257[-6] = v85;
      v257[-5] = v87;
      LOBYTE(v257[-4]) = v89 & 1;
      v257[-3] = v91;
      v257[-2] = 0x6F746F6870;
      v257[-1] = 0xE500000000000000;

      sub_1000026DC(&qword_100018D50, &qword_100011168);
      sub_10000E958(&qword_100018D58, &qword_100018D50, &qword_100011168, &protocol conformance descriptor for Label<A, B>);
      v93 = v281;
      Button.init(action:label:)();

      v94 = v284;
      static KeyEquivalent.space.getter();
      EventModifiers.init(rawValue:)();
      v95 = sub_10000E958(&qword_100018D68, &qword_100018D38, &qword_100011150, &protocol conformance descriptor for Button<A>);
      v96 = v258;
      v97 = v283;
      View.keyboardShortcut(_:modifiers:)();
      v280 = *(v285 + 1);
      v280(v94, v296);
      v265 = *(v282 + 8);
      v265(v93, v97);
      v98 = v270;
      (*(v30 + 16))(v294, v96, v270);
      swift_storeEnumTagMultiPayload();
      v313 = v97;
      v314 = v95;
      swift_getOpaqueTypeConformance2();
      sub_10000E2C0();
      _ConditionalContent<>.init(storage:)();

      (*(v30 + 8))(v96, v98);
      goto LABEL_11;
    }
  }

  else
  {
    sub_100005238(v60, &qword_100018DB8, &unk_1000111E8);
    v99 = type metadata accessor for DetailViewActions();
    (*(*(v99 - 8) + 56))(v72, 1, 1, v99);
  }

  sub_100005238(v72, &qword_100018AA8, &unk_100010CE0);
  sub_1000026DC(&qword_100018C08, &qword_100011080);
  FocusedValue.content.getter();
  v100 = swift_getEnumCaseMultiPayload();
  v259 = v47;
  if (v100 != 1)
  {
    sub_100005238(v39, &qword_100018DB0, &qword_1000111D8);
    v106 = type metadata accessor for PhotoGridActions();
    (*(*(v106 - 8) + 56))(v49, 1, 1, v106);
    goto LABEL_9;
  }

  sub_100006070(v39, v49, &qword_100018AB0, &qword_1000111E0);
  v101 = type metadata accessor for PhotoGridActions();
  v102 = *(v101 - 8);
  if ((*(v102 + 48))(v49, 1, v101) == 1)
  {
LABEL_9:
    sub_100005238(v49, &qword_100018AB0, &qword_1000111E0);
    v103 = 0;
    v105 = 0;
    goto LABEL_10;
  }

  v103 = PhotoGridActions.open.getter();
  v105 = v104;
  (*(v102 + 8))(v49, v101);
LABEL_10:
  v258 = v105;
  v107 = LocalizedStringKey.init(stringLiteral:)();
  v109 = v108;
  v111 = v110;
  v113 = v112;
  v114 = swift_allocObject();
  *(v114 + 16) = v103;
  *(v114 + 24) = v105;
  __chkstk_darwin(v114);
  v257[-6] = v107;
  v257[-5] = v109;
  LOBYTE(v257[-4]) = v111 & 1;
  v257[-3] = v113;
  v257[-2] = 0x6F746F6870;
  v257[-1] = 0xE500000000000000;
  sub_10000E2B0(v103, v105);
  sub_1000026DC(&qword_100018D50, &qword_100011168);
  sub_10000E958(&qword_100018D58, &qword_100018D50, &qword_100011168, &protocol conformance descriptor for Label<A, B>);
  v115 = v281;
  Button.init(action:label:)();

  v116 = v284;
  static KeyEquivalent.space.getter();
  EventModifiers.init(rawValue:)();
  v117 = sub_10000E958(&qword_100018D68, &qword_100018D38, &qword_100011150, &protocol conformance descriptor for Button<A>);
  v118 = v292;
  v119 = v283;
  View.keyboardShortcut(_:modifiers:)();
  v280 = *(v285 + 1);
  v280(v116, v296);
  v265 = *(v282 + 8);
  v265(v115, v119);
  KeyPath = swift_getKeyPath();
  v121 = swift_allocObject();
  *(v121 + 16) = v103 == 0;
  v122 = (v118 + *(v286 + 36));
  *v122 = KeyPath;
  v122[1] = sub_10000EA44;
  v122[2] = v121;
  sub_100002F0C(v118, v294, &qword_100018D98, &qword_1000111C0);
  swift_storeEnumTagMultiPayload();
  v313 = v119;
  v314 = v117;
  swift_getOpaqueTypeConformance2();
  sub_10000E2C0();
  _ConditionalContent<>.init(storage:)();
  sub_10000E3E8(v103, v258);
  sub_100005238(v118, &qword_100018D98, &qword_1000111C0);
  v47 = v259;
LABEL_11:
  Divider.init()();
  v123 = v266;
  FocusedValue.content.getter();
  v124 = swift_getEnumCaseMultiPayload();
  v125 = v269;
  if (v124 == 1)
  {
    sub_100006070(v123, v269, &qword_100018AA8, &unk_100010CE0);
    v126 = type metadata accessor for DetailViewActions();
    v127 = *(v126 - 8);
    if ((*(v127 + 48))(v125, 1, v126) != 1)
    {
      v128 = DetailViewActions.edit.getter();
      v130 = v129;
      (*(v127 + 8))(v125, v126);
LABEL_18:
      v136 = swift_allocObject();
      *(v136 + 16) = v128;
      *(v136 + 24) = v130;
      v137 = swift_allocObject();
      v138 = 0;
      *(v137 + 16) = sub_10000EA48;
      *(v137 + 24) = v136;
      v139 = sub_10000EA3C;
      goto LABEL_21;
    }
  }

  else
  {
    sub_100005238(v123, &qword_100018DB8, &unk_1000111E8);
    v131 = type metadata accessor for DetailViewActions();
    (*(*(v131 - 8) + 56))(v125, 1, 1, v131);
  }

  sub_100005238(v125, &qword_100018AA8, &unk_100010CE0);
  sub_1000026DC(&qword_100018C08, &qword_100011080);
  v132 = v260;
  FocusedValue.content.getter();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100006070(v132, v47, &qword_100018AB0, &qword_1000111E0);
    v133 = type metadata accessor for PhotoGridActions();
    v134 = *(v133 - 8);
    if ((*(v134 + 48))(v47, 1, v133) != 1)
    {
      v128 = PhotoGridActions.edit.getter();
      v130 = v135;
      (*(v134 + 8))(v47, v133);
      goto LABEL_18;
    }
  }

  else
  {
    sub_100005238(v132, &qword_100018DB0, &qword_1000111D8);
    v140 = type metadata accessor for PhotoGridActions();
    (*(*(v140 - 8) + 56))(v47, 1, 1, v140);
  }

  sub_100005238(v47, &qword_100018AB0, &qword_1000111E0);
  v139 = 0;
  v137 = 0;
  v138 = 1;
LABEL_21:
  v141 = LocalizedStringKey.init(stringLiteral:)();
  v143 = v142;
  v145 = v144;
  v147 = v146;
  v148 = swift_allocObject();
  *(v148 + 16) = v139;
  *(v148 + 24) = v137;
  __chkstk_darwin(v148);
  v257[-6] = v141;
  v257[-5] = v143;
  LOBYTE(v257[-4]) = v145 & 1;
  v257[-3] = v147;
  v257[-2] = 0x6C69636E6570;
  v257[-1] = 0xE600000000000000;
  v269 = v139;
  v270 = v137;
  sub_10000E2B0(v139, v137);
  v149 = sub_1000026DC(&qword_100018D50, &qword_100011168);
  v150 = sub_10000E958(&qword_100018D58, &qword_100018D50, &qword_100011168, &protocol conformance descriptor for Label<A, B>);
  v151 = v281;
  v294 = v149;
  v293 = v150;
  Button.init(action:label:)();

  v152 = v284;
  static KeyEquivalent.return.getter();
  EventModifiers.init(rawValue:)();
  sub_10000E958(&qword_100018D68, &qword_100018D38, &qword_100011150, &protocol conformance descriptor for Button<A>);
  v153 = v299;
  v154 = v283;
  View.keyboardShortcut(_:modifiers:)();
  v284 = v285 + 8;
  v280(v152, v296);
  v265(v151, v154);
  v155 = swift_getKeyPath();
  v156 = swift_allocObject();
  *(v156 + 16) = v138;
  v157 = (v153 + *(v286 + 36));
  *v157 = v155;
  v157[1] = sub_10000EA44;
  v157[2] = v156;
  v158 = v267;
  FocusedValue.content.getter();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v159 = v268;
    sub_100006070(v158, v268, &qword_100018AA8, &unk_100010CE0);
    v160 = type metadata accessor for DetailViewActions();
    v161 = *(v160 - 8);
    if ((*(v161 + 48))(v159, 1, v160) != 1)
    {
      v162 = DetailViewActions.duplicate.getter();
      v164 = v163;
      (*(v161 + 8))(v159, v160);
LABEL_28:
      v171 = swift_allocObject();
      *(v171 + 16) = v162;
      *(v171 + 24) = v164;
      v172 = swift_allocObject();
      LODWORD(v283) = 0;
      *(v172 + 16) = sub_10000EA48;
      *(v172 + 24) = v171;
      v173 = sub_10000EA3C;
      goto LABEL_31;
    }
  }

  else
  {
    sub_100005238(v158, &qword_100018DB8, &unk_1000111E8);
    v165 = type metadata accessor for DetailViewActions();
    v159 = v268;
    (*(*(v165 - 8) + 56))(v268, 1, 1, v165);
  }

  sub_100005238(v159, &qword_100018AA8, &unk_100010CE0);
  sub_1000026DC(&qword_100018C08, &qword_100011080);
  v166 = v261;
  FocusedValue.content.getter();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v167 = v262;
    sub_100006070(v166, v262, &qword_100018AB0, &qword_1000111E0);
    v168 = type metadata accessor for PhotoGridActions();
    v169 = *(v168 - 8);
    if ((*(v169 + 48))(v167, 1, v168) != 1)
    {
      v162 = PhotoGridActions.duplicate.getter();
      v164 = v170;
      (*(v169 + 8))(v167, v168);
      goto LABEL_28;
    }
  }

  else
  {
    sub_100005238(v166, &qword_100018DB0, &qword_1000111D8);
    v174 = type metadata accessor for PhotoGridActions();
    v167 = v262;
    (*(*(v174 - 8) + 56))(v262, 1, 1, v174);
  }

  sub_100005238(v167, &qword_100018AB0, &qword_1000111E0);
  v173 = 0;
  v172 = 0;
  LODWORD(v283) = 1;
LABEL_31:
  v175 = LocalizedStringKey.init(stringLiteral:)();
  v177 = v176;
  v179 = v178;
  v181 = v180;
  v182 = swift_allocObject();
  *(v182 + 16) = v173;
  *(v182 + 24) = v172;
  __chkstk_darwin(v182);
  v257[-6] = v175;
  v257[-5] = v177;
  LOBYTE(v257[-4]) = v179 & 1;
  v257[-3] = v181;
  v257[-2] = 0xD000000000000015;
  v257[-1] = 0x800000010000FDD0;
  v286 = v172;
  sub_10000E2B0(v173, v172);
  v183 = v274;
  Button.init(action:label:)();

  v184 = swift_getKeyPath();
  v185 = swift_allocObject();
  *(v185 + 16) = v283;
  v186 = v288;
  v187 = (v183 + *(v288 + 36));
  *v187 = v184;
  v187[1] = sub_10000EA44;
  v187[2] = v185;
  v188 = v273;
  KeyEquivalent.init(extendedGraphemeClusterLiteral:)();
  v189 = static EventModifiers.command.getter();
  EventModifiers.init(rawValue:)();
  EventModifiers.init(rawValue:)();
  if (EventModifiers.init(rawValue:)() != v189)
  {
    EventModifiers.init(rawValue:)();
  }

  sub_10000E038();
  View.keyboardShortcut(_:modifiers:)();
  v280(v188, v296);
  sub_100005238(v183, &qword_100018D40, &qword_100011158);
  Divider.init()();
  v190 = v271;
  FocusedValue.content.getter();
  v191 = swift_getEnumCaseMultiPayload();
  v192 = v272;
  v285 = v173;
  if (v191 == 1)
  {
    sub_100006070(v190, v272, &qword_100018AA8, &unk_100010CE0);
    v193 = type metadata accessor for DetailViewActions();
    v194 = *(v193 - 8);
    if ((*(v194 + 48))(v192, 1, v193) != 1)
    {
      v195 = DetailViewActions.addCaption.getter();
      v197 = v196;
      (*(v194 + 8))(v192, v193);
      v198 = sub_10000EA48;
LABEL_40:
      v205 = swift_allocObject();
      *(v205 + 16) = v195;
      *(v205 + 24) = v197;
      v206 = swift_allocObject();
      v207 = 0;
      *(v206 + 16) = v198;
      *(v206 + 24) = v205;
      v208 = sub_10000E420;
      goto LABEL_43;
    }
  }

  else
  {
    sub_100005238(v190, &qword_100018DB8, &unk_1000111E8);
    v199 = type metadata accessor for DetailViewActions();
    (*(*(v199 - 8) + 56))(v192, 1, 1, v199);
  }

  sub_100005238(v192, &qword_100018AA8, &unk_100010CE0);
  sub_1000026DC(&qword_100018C08, &qword_100011080);
  v200 = v263;
  FocusedValue.content.getter();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v201 = v264;
    sub_100006070(v200, v264, &qword_100018AB0, &qword_1000111E0);
    v202 = type metadata accessor for PhotoGridActions();
    v203 = *(v202 - 8);
    if ((*(v203 + 48))(v201, 1, v202) != 1)
    {
      v195 = PhotoGridActions.addCaption.getter();
      v197 = v204;
      (*(v203 + 8))(v201, v202);
      v198 = sub_10000E3F8;
      goto LABEL_40;
    }
  }

  else
  {
    sub_100005238(v200, &qword_100018DB0, &qword_1000111D8);
    v209 = type metadata accessor for PhotoGridActions();
    v201 = v264;
    (*(*(v209 - 8) + 56))(v264, 1, 1, v209);
  }

  sub_100005238(v201, &qword_100018AB0, &qword_1000111E0);
  v208 = 0;
  v206 = 0;
  v207 = 1;
LABEL_43:
  v210 = LocalizedStringKey.init(stringLiteral:)();
  v212 = v211;
  v214 = v213;
  v216 = v215;
  v217 = swift_allocObject();
  *(v217 + 16) = v208;
  *(v217 + 24) = v206;
  __chkstk_darwin(v217);
  v257[-6] = v210;
  v257[-5] = v212;
  LOBYTE(v257[-4]) = v214 & 1;
  v257[-3] = v216;
  strcpy(&v257[-2], "accessibility");
  HIWORD(v257[-1]) = -4864;
  v296 = v208;
  sub_10000E2B0(v208, v206);
  v218 = v305;
  Button.init(action:label:)();

  v219 = swift_getKeyPath();
  v220 = swift_allocObject();
  *(v220 + 16) = v207;
  v221 = (v218 + *(v186 + 36));
  *v221 = v219;
  v221[1] = sub_10000EA44;
  v221[2] = v220;
  v222 = v275;
  FocusedValue.content.getter();
  v223 = swift_getEnumCaseMultiPayload();
  v297 = v206;
  if (v223 != 1)
  {
    sub_100005238(v222, &qword_100018DB8, &unk_1000111E8);
    v230 = type metadata accessor for DetailViewActions();
    v224 = v276;
    (*(*(v230 - 8) + 56))(v276, 1, 1, v230);
    goto LABEL_47;
  }

  v224 = v276;
  sub_100006070(v222, v276, &qword_100018AA8, &unk_100010CE0);
  v225 = type metadata accessor for DetailViewActions();
  v226 = *(v225 - 8);
  if ((*(v226 + 48))(v224, 1, v225) == 1)
  {
LABEL_47:
    sub_100005238(v224, &qword_100018AA8, &unk_100010CE0);
    v227 = 0;
    v229 = 0;
    goto LABEL_48;
  }

  v227 = DetailViewActions.reportAConcern.getter();
  v229 = v228;
  (*(v226 + 8))(v224, v225);
LABEL_48:
  v231 = LocalizedStringKey.init(stringLiteral:)();
  v233 = v232;
  v235 = v234;
  v237 = v236;
  v238 = swift_allocObject();
  *(v238 + 16) = v227;
  *(v238 + 24) = v229;
  __chkstk_darwin(v238);
  v311 = v227;
  v312 = v229;
  v257[-6] = v231;
  v257[-5] = v233;
  LOBYTE(v257[-4]) = v235 & 1;
  v257[-3] = v237;
  v257[-2] = 0xD000000000000016;
  v257[-1] = 0x800000010000FE10;
  v239 = v227;
  sub_10000E2B0(v227, v229);
  v240 = v289;
  Button.init(action:label:)();

  v241 = swift_getKeyPath();
  v242 = swift_allocObject();
  *(v242 + 16) = v239 == 0;
  v243 = (v240 + *(v288 + 36));
  v244 = v240;
  *v243 = v241;
  v243[1] = sub_10000EA44;
  v243[2] = v242;
  v245 = v287;
  sub_100002F0C(v298, v287, &qword_100018DC0, &qword_1000111F8);
  v246 = v278;
  v247 = *(v278 + 16);
  v248 = v279;
  v247(v304, v301, v279);
  v249 = v292;
  sub_100002F0C(v299, v292, &qword_100018D98, &qword_1000111C0);
  v310 = *(v290 + 16);
  v310(v306, v302, v291);
  v247(v303, v300, v248);
  sub_100002F0C(v305, v307, &qword_100018D40, &qword_100011158);
  sub_100002F0C(v244, v308, &qword_100018D40, &qword_100011158);
  v250 = v245;
  v251 = v277;
  sub_100002F0C(v250, v277, &qword_100018DC0, &qword_1000111F8);
  v252 = sub_1000026DC(&qword_100018DD0, &qword_100011200);
  v247((v251 + v252[12]), v304, v248);
  sub_100002F0C(v249, v251 + v252[16], &qword_100018D98, &qword_1000111C0);
  v253 = v291;
  v310((v251 + v252[20]), v306, v291);
  v247((v251 + v252[24]), v303, v248);
  sub_100002F0C(v307, v251 + v252[28], &qword_100018D40, &qword_100011158);
  sub_100002F0C(v308, v251 + v252[32], &qword_100018D40, &qword_100011158);
  sub_10000E3E8(v311, v312);
  sub_10000E3E8(v296, v297);
  sub_10000E3E8(v285, v286);
  sub_10000E3E8(v269, v270);
  sub_100005238(v289, &qword_100018D40, &qword_100011158);
  sub_100005238(v305, &qword_100018D40, &qword_100011158);
  v254 = *(v246 + 8);
  v254(v300, v248);
  v255 = *(v290 + 8);
  v255(v302, v253);
  sub_100005238(v299, &qword_100018D98, &qword_1000111C0);
  v254(v301, v248);
  sub_100005238(v298, &qword_100018DC0, &qword_1000111F8);
  sub_100005238(v308, &qword_100018D40, &qword_100011158);
  sub_100005238(v307, &qword_100018D40, &qword_100011158);
  v254(v303, v248);
  v255(v306, v253);
  sub_100005238(v292, &qword_100018D98, &qword_1000111C0);
  v254(v304, v248);
  return sub_100005238(v287, &qword_100018DC0, &qword_1000111F8);
}

void (*sub_10000C3D4(void (*result)(uint64_t), uint64_t a2))(uint64_t)
{
  if (result)
  {
    v3 = result;

    v3(v4);

    return sub_10000E3E8(v3, a2);
  }

  return result;
}

uint64_t sub_10000C428@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v109 = a2;
  v116 = type metadata accessor for KeyEquivalent();
  v120 = *(v116 - 8);
  v3 = __chkstk_darwin(v116);
  v104 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v92 = &v90 - v5;
  v98 = type metadata accessor for GenerativePlaygroundCommands(0);
  v6 = *(v98 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v98);
  v110 = sub_1000026DC(&qword_100018D38, &qword_100011150);
  v118 = *(v110 - 8);
  v8 = __chkstk_darwin(v110);
  v101 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v90 - v10;
  v113 = sub_1000026DC(&qword_100018D90, &qword_1000111B8);
  v121 = *(v113 - 8);
  v12 = __chkstk_darwin(v113);
  v103 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v97 = &v90 - v14;
  v111 = sub_1000026DC(&qword_100018D98, &qword_1000111C0);
  v15 = __chkstk_darwin(v111);
  v108 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v117 = &v90 - v18;
  v19 = __chkstk_darwin(v17);
  v102 = &v90 - v20;
  v21 = __chkstk_darwin(v19);
  v105 = &v90 - v22;
  v23 = __chkstk_darwin(v21);
  v96 = &v90 - v24;
  __chkstk_darwin(v23);
  v122 = &v90 - v25;
  v106 = type metadata accessor for Divider();
  v107 = *(v106 - 8);
  v26 = __chkstk_darwin(v106);
  v114 = &v90 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v115 = &v90 - v29;
  v30 = __chkstk_darwin(v28);
  v119 = &v90 - v31;
  __chkstk_darwin(v30);
  v112 = &v90 - v32;
  Divider.init()();
  v33 = LocalizedStringKey.init(stringLiteral:)();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v123 = a1;
  sub_10000DE34(a1, &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v99 = v7;
  v41 = swift_allocObject();
  v100 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000DE9C(v100, v41 + v40);
  v124 = v33;
  v125 = v35;
  v126 = v37 & 1;
  v127 = v39;
  v128 = 0xD000000000000012;
  v129 = 0x800000010000FD90;
  v42 = sub_1000026DC(&qword_100018D50, &qword_100011168);
  v43 = v92;
  v44 = sub_10000E958(&qword_100018D58, &qword_100018D50, &qword_100011168, &protocol conformance descriptor for Label<A, B>);
  v95 = v42;
  v94 = v44;
  Button.init(action:label:)();

  KeyEquivalent.init(extendedGraphemeClusterLiteral:)();
  v45 = static EventModifiers.command.getter();
  EventModifiers.init(rawValue:)();
  EventModifiers.init(rawValue:)();
  if (EventModifiers.init(rawValue:)() != v45)
  {
    EventModifiers.init(rawValue:)();
  }

  v46 = sub_10000E958(&qword_100018D68, &qword_100018D38, &qword_100011150, &protocol conformance descriptor for Button<A>);
  v47 = v97;
  v48 = v110;
  v93 = v46;
  View.keyboardShortcut(_:modifiers:)();
  v49 = *(v120 + 8);
  v120 += 8;
  v92 = v49;
  (v49)(v43, v116);
  v50 = *(v118 + 8);
  v118 += 8;
  v91 = v50;
  v50(v11, v48);
  v51 = *(v98 + 24);
  sub_1000026DC(&qword_100018C10, &qword_100011088);
  v98 = v51;
  FocusedValue.content.getter();
  if (v131)
  {
    if (v130)
    {
      j__swift_release(v130);
      v52 = 0;
    }

    else
    {
      v52 = 1;
      j__swift_release(0);
    }
  }

  else
  {
    j__swift_release(v130);
    v52 = 1;
  }

  KeyPath = swift_getKeyPath();
  v54 = swift_allocObject();
  *(v54 + 16) = v52;
  v55 = *(v121 + 32);
  v56 = v96;
  v121 += 32;
  v55(v96, v47, v113);
  v57 = (v56 + *(v111 + 36));
  *v57 = KeyPath;
  v57[1] = sub_10000EA44;
  v57[2] = v54;
  sub_10000E1F8(v56, v122);
  Divider.init()();
  v58 = LocalizedStringKey.init(stringLiteral:)();
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v65 = v100;
  sub_10000DE34(v123, v100);
  v66 = swift_allocObject();
  v67 = sub_10000DE9C(v65, v66 + v40);
  __chkstk_darwin(v67);
  *(&v90 - 6) = v58;
  *(&v90 - 5) = v60;
  *(&v90 - 32) = v62 & 1;
  *(&v90 - 3) = v64;
  *(&v90 - 2) = 0x6C2E6574656C6564;
  *(&v90 - 1) = 0xEB00000000746665;
  v68 = v101;
  Button.init(action:label:)();

  v69 = v104;
  KeyEquivalent.init(extendedGraphemeClusterLiteral:)();
  v70 = static EventModifiers.command.getter();
  EventModifiers.init(rawValue:)();
  EventModifiers.init(rawValue:)();
  if (EventModifiers.init(rawValue:)() != v70)
  {
    EventModifiers.init(rawValue:)();
  }

  v71 = v103;
  v72 = v110;
  View.keyboardShortcut(_:modifiers:)();
  (v92)(v69, v116);
  v91(v68, v72);
  FocusedValue.content.getter();
  if (v131)
  {
    if (v130)
    {
      j__swift_release(v130);
      v73 = 0;
    }

    else
    {
      v73 = 1;
      j__swift_release(0);
    }
  }

  else
  {
    j__swift_release(v130);
    v73 = 1;
  }

  v74 = swift_getKeyPath();
  v75 = swift_allocObject();
  *(v75 + 16) = v73;
  v76 = v102;
  v55(v102, v71, v113);
  v77 = (v76 + *(v111 + 36));
  *v77 = v74;
  v77[1] = sub_10000EA44;
  v77[2] = v75;
  v78 = v105;
  sub_10000E1F8(v76, v105);
  v79 = v107;
  v80 = *(v107 + 16);
  v81 = v115;
  v82 = v106;
  v80(v115, v112, v106);
  v83 = v117;
  sub_100002F0C(v122, v117, &qword_100018D98, &qword_1000111C0);
  v80(v114, v119, v82);
  v84 = v108;
  sub_100002F0C(v78, v108, &qword_100018D98, &qword_1000111C0);
  v85 = v109;
  v80(v109, v81, v82);
  v86 = sub_1000026DC(&qword_100018DA0, &qword_1000111C8);
  sub_100002F0C(v83, &v85[v86[12]], &qword_100018D98, &qword_1000111C0);
  v87 = v114;
  v80(&v85[v86[16]], v114, v82);
  sub_100002F0C(v84, &v85[v86[20]], &qword_100018D98, &qword_1000111C0);
  sub_100005238(v78, &qword_100018D98, &qword_1000111C0);
  v88 = *(v79 + 8);
  v88(v119, v82);
  sub_100005238(v122, &qword_100018D98, &qword_1000111C0);
  v88(v112, v82);
  sub_100005238(v84, &qword_100018D98, &qword_1000111C0);
  v88(v87, v82);
  sub_100005238(v117, &qword_100018D98, &qword_1000111C0);
  return (v88)(v115, v82);
}

uint64_t sub_10000D118@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v91[0] = a1;
  v104 = a2;
  v106 = type metadata accessor for Divider();
  v105 = *(v106 - 8);
  v3 = __chkstk_darwin(v106);
  v113 = v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v112 = v91 - v5;
  v111 = type metadata accessor for KeyEquivalent();
  v116 = *(v111 - 8);
  v6 = __chkstk_darwin(v111);
  v103 = v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v95 = v91 - v8;
  v9 = type metadata accessor for GenerativePlaygroundCommands(0);
  v10 = v9 - 8;
  v97 = *(v9 - 8);
  v11 = *(v97 + 64);
  __chkstk_darwin(v9);
  v107 = sub_1000026DC(&qword_100018D38, &qword_100011150);
  v114 = *(v107 - 8);
  v12 = __chkstk_darwin(v107);
  v98 = v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = v91 - v14;
  v108 = sub_1000026DC(&qword_100018D40, &qword_100011158);
  v16 = __chkstk_darwin(v108);
  v99 = v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v94 = v91 - v18;
  v102 = sub_1000026DC(&qword_100018D48, &qword_100011160);
  v101 = *(v102 - 8);
  v19 = __chkstk_darwin(v102);
  v100 = v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v110 = v91 - v22;
  v23 = __chkstk_darwin(v21);
  v109 = v91 - v24;
  __chkstk_darwin(v23);
  v115 = v91 - v25;
  v26 = LocalizedStringKey.init(stringLiteral:)();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  sub_10000DE34(a1, v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = *(v97 + 80);
  v34 = (v33 + 16) & ~v33;
  v96 = v11;
  v91[4] = v33;
  v35 = swift_allocObject();
  v92 = v34;
  v36 = v35 + v34;
  v37 = v15;
  v97 = v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000DE9C(v97, v36);
  v117 = v26;
  v118 = v28;
  v119 = v30 & 1;
  v120 = v32;
  v121 = 0xD000000000000012;
  v122 = 0x800000010000FD50;
  v38 = sub_1000026DC(&qword_100018D50, &qword_100011168);
  v39 = sub_10000E958(&qword_100018D58, &qword_100018D50, &qword_100011168, &protocol conformance descriptor for Label<A, B>);
  v93 = v38;
  v91[3] = v39;
  Button.init(action:label:)();

  v40 = *(v10 + 32);
  v41 = sub_1000026DC(&qword_100018C10, &qword_100011088);
  v42 = v91[0];
  v91[2] = v40;
  v91[1] = v41;
  FocusedValue.content.getter();
  if (v124 == 1)
  {
    if (v123)
    {
      j__swift_release(v123);
      v43 = 0;
    }

    else
    {
      v43 = 1;
      j__swift_release(0);
    }
  }

  else
  {
    j__swift_release(v123);
    v43 = 1;
  }

  v44 = v108;
  v45 = v94;
  KeyPath = swift_getKeyPath();
  v47 = swift_allocObject();
  *(v47 + 16) = v43;
  v48 = *(v114 + 32);
  v114 += 32;
  v48(v45, v37, v107);
  v49 = (v45 + *(v44 + 36));
  *v49 = KeyPath;
  v49[1] = sub_10000E020;
  v49[2] = v47;
  v50 = v95;
  static KeyEquivalent.upArrow.getter();
  v51 = static EventModifiers.command.getter();
  EventModifiers.init(rawValue:)();
  EventModifiers.init(rawValue:)();
  if (EventModifiers.init(rawValue:)() != v51)
  {
    EventModifiers.init(rawValue:)();
  }

  v94 = sub_10000E038();
  View.keyboardShortcut(_:modifiers:)();
  v52 = *(v116 + 8);
  v116 += 8;
  v95 = v52;
  (v52)(v50, v111);
  sub_100005238(v45, &qword_100018D40, &qword_100011158);
  v53 = LocalizedStringKey.init(stringLiteral:)();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v60 = v97;
  sub_10000DE34(v42, v97);
  v61 = v92;
  v62 = swift_allocObject();
  v63 = sub_10000DE9C(v60, v62 + v61);
  __chkstk_darwin(v63);
  v91[-6] = v53;
  v91[-5] = v55;
  LOBYTE(v91[-4]) = v57 & 1;
  v91[-3] = v59;
  v91[-2] = 0xD00000000000001DLL;
  v91[-1] = 0x800000010000FD70;
  v64 = v98;
  Button.init(action:label:)();

  FocusedValue.content.getter();
  if (v124)
  {
    v65 = v103;
    v66 = v99;
    if (v123)
    {
      j__swift_release(v123);
      v67 = 0;
    }

    else
    {
      v67 = 1;
      j__swift_release(0);
    }
  }

  else
  {
    j__swift_release(v123);
    v67 = 1;
    v65 = v103;
    v66 = v99;
  }

  v68 = v108;
  v69 = swift_getKeyPath();
  v70 = swift_allocObject();
  *(v70 + 16) = v67;
  v48(v66, v64, v107);
  v71 = (v66 + *(v68 + 36));
  *v71 = v69;
  v71[1] = sub_10000EA44;
  v71[2] = v70;
  KeyEquivalent.init(extendedGraphemeClusterLiteral:)();
  sub_1000026DC(&qword_100018D80, &qword_1000111A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100011070;
  v73 = static EventModifiers.command.getter();
  *(inited + 32) = v73;
  v74 = static EventModifiers.shift.getter();
  *(inited + 40) = v74;
  EventModifiers.init(rawValue:)();
  EventModifiers.init(rawValue:)();
  if (EventModifiers.init(rawValue:)() != v73)
  {
    EventModifiers.init(rawValue:)();
  }

  EventModifiers.init(rawValue:)();
  if (EventModifiers.init(rawValue:)() != v74)
  {
    EventModifiers.init(rawValue:)();
  }

  v75 = v109;
  View.keyboardShortcut(_:modifiers:)();
  (v95)(v65, v111);
  sub_100005238(v66, &qword_100018D40, &qword_100011158);
  v76 = v112;
  Divider.init()();
  v77 = v101;
  v78 = *(v101 + 16);
  v79 = v110;
  v80 = v102;
  v78(v110, v115, v102);
  v81 = v100;
  v78(v100, v75, v80);
  v82 = v105;
  v116 = *(v105 + 16);
  v83 = v76;
  v84 = v106;
  (v116)(v113, v83, v106);
  v85 = v104;
  v78(v104, v79, v80);
  v86 = sub_1000026DC(&qword_100018D88, &qword_1000111B0);
  v78(&v85[*(v86 + 48)], v81, v80);
  v87 = v113;
  (v116)(&v85[*(v86 + 64)], v113, v84);
  v88 = *(v82 + 8);
  v88(v112, v84);
  v89 = *(v77 + 8);
  v89(v109, v80);
  v89(v115, v80);
  v88(v87, v84);
  v89(v81, v80);
  return (v89)(v110, v80);
}

void *sub_10000DD74(uint64_t a1, void (*a2)(void *))
{
  type metadata accessor for GenerativePlaygroundCommands(0);
  sub_1000026DC(&qword_100018C10, &qword_100011088);
  result = FocusedValue.content.getter();
  if (v6 == 1)
  {
    if (!v5)
    {
      return result;
    }

    a2(result);
    v4 = v5;
  }

  else
  {
    v4 = v5;
  }

  return j__swift_release(v4);
}

uint64_t sub_10000DE34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativePlaygroundCommands(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000DE9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativePlaygroundCommands(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000DF2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return Label<>.init(_:systemImage:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_10000DFC8@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

unint64_t sub_10000E038()
{
  result = qword_100018D60;
  if (!qword_100018D60)
  {
    sub_100002CB0(&qword_100018D40, &qword_100011158);
    sub_10000E958(&qword_100018D68, &qword_100018D38, &qword_100011150, &protocol conformance descriptor for Button<A>);
    sub_10000E958(&qword_100018D70, &qword_100018D78, &qword_1000111A0, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018D60);
  }

  return result;
}

uint64_t sub_10000E1F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000026DC(&qword_100018D98, &qword_1000111C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000E2B0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_10000E2C0()
{
  result = qword_100018DC8;
  if (!qword_100018DC8)
  {
    sub_100002CB0(&qword_100018D98, &qword_1000111C0);
    sub_100002CB0(&qword_100018D38, &qword_100011150);
    sub_10000E958(&qword_100018D68, &qword_100018D38, &qword_100011150, &protocol conformance descriptor for Button<A>);
    swift_getOpaqueTypeConformance2();
    sub_10000E958(&qword_100018D70, &qword_100018D78, &qword_1000111A0, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018DC8);
  }

  return result;
}

uint64_t sub_10000E3E8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000E448()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000E58C()
{
  v1 = (type metadata accessor for GenerativePlaygroundCommands(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_1000026DC(&qword_100018C08, &qword_100011080);
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = v1[8];
  v8 = sub_1000026DC(&qword_100018C10, &qword_100011088);
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = v1[9];
  v10 = sub_1000026DC(&qword_100018C18, &unk_100011090);
  (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000E718()
{
  type metadata accessor for GenerativePlaygroundCommands(0);

  return sub_1000098F8();
}

unint64_t sub_10000E78C()
{
  result = qword_100018DF0;
  if (!qword_100018DF0)
  {
    sub_100002CB0(&qword_100018DE0, &qword_100011210);
    sub_10000E958(&qword_100018DF8, &qword_100018E00, &qword_100011220, &protocol conformance descriptor for ShareLink<A, B, C, D>);
    sub_10000E958(&qword_100018D70, &qword_100018D78, &qword_1000111A0, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018DF0);
  }

  return result;
}

uint64_t sub_10000E874()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10000E8BC()
{
  result = qword_100018E20;
  if (!qword_100018E20)
  {
    type metadata accessor for DisplayableImage();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018E20);
  }

  return result;
}

uint64_t sub_10000E958(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100002CB0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}