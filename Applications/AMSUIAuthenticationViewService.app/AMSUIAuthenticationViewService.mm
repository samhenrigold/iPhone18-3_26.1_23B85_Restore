id sub_100001708(int a1, id a2)
{
  v2 = [a2 role];
  v3 = objc_allocWithZone(UISceneConfiguration);
  return sub_1000019D4(0xD000000000000015, 0x800000010000A5F0, v2);
}

id sub_100001884()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, "init");
}

void sub_1000018DC()
{
  type metadata accessor for AppDelegate();
  static CommandLine.unsafeArgv.getter();
  static CommandLine.argc.getter();
  static CommandLine.argc.getter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = NSStringFromClass(ObjCClassFromMetadata);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LODWORD(v1) = UIApplicationMain(_:_:_:_:)();

  exit(v1);
}

id sub_100001968()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1000019D4(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithName:v5 sessionRole:a3];

  return v6;
}

unint64_t sub_100001A44()
{
  result = qword_100015208;
  if (!qword_100015208)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100015208);
  }

  return result;
}

void type metadata accessor for LaunchOptionsKey()
{
  if (!qword_100015220)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100015220);
    }
  }
}

uint64_t sub_100001AE0()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_100001B20(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100001B7C(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_100001C00(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100001C7C(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

NSString sub_100001CFC@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_100001D24(a2);
  *a1 = result;
  return result;
}

NSString sub_100001D24(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = String._bridgeToObjectiveC()();

  return v1;
}

uint64_t sub_100001D68(uint64_t a1, uint64_t a2)
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

uint64_t sub_100001DEC@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_100001E34@<X0>(uint64_t *a1@<X8>)
{
  result = j___sSS10FoundationE36_unconditionallyBridgeFromObjectiveCySSSo8NSStringCSgFZ(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100001E64(uint64_t a1)
{
  v2 = sub_100001FF8(&qword_100015218, type metadata accessor for LaunchOptionsKey, &unk_10000A364);
  v3 = sub_100001FF8(&unk_100015240, type metadata accessor for LaunchOptionsKey, &unk_10000A2B8);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100001FF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100002040(void *a1)
{
  v3 = type metadata accessor for Log();
  sub_10000386C();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_10000389C();
  v9 = v8 - v7;
  v10 = (*((swift_isaMask & *v1) + 0x98))();
  [a1 setExportedInterface:v10];

  v11 = (*((swift_isaMask & *v1) + 0xA0))();
  [a1 setRemoteObjectInterface:v11];

  [a1 setExportedObject:v1];
  sub_100003880();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = sub_100003718;
  v33 = v12;
  aBlock = _NSConcreteStackBlock;
  v29 = 1107296256;
  v30 = sub_1000055D0;
  v31 = &unk_100010790;
  v13 = _Block_copy(&aBlock);

  [a1 setInvalidationHandler:v13];
  _Block_release(v13);
  sub_100003880();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = sub_100003720;
  v33 = v14;
  aBlock = _NSConcreteStackBlock;
  v29 = 1107296256;
  v30 = sub_1000055D0;
  v31 = &unk_1000107B8;
  v15 = _Block_copy(&aBlock);

  [a1 setInterruptionHandler:v15];
  _Block_release(v15);
  [a1 resume];
  v16 = *(v1 + OBJC_IVAR___BaseRemoteViewController_connection);
  *(v1 + OBJC_IVAR___BaseRemoteViewController_connection) = a1;
  v17 = a1;

  sub_100003880();
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = sub_100003728;
  v33 = v18;
  aBlock = _NSConcreteStackBlock;
  v29 = 1107296256;
  v30 = sub_100002CB8;
  v31 = &unk_1000107E0;
  v19 = _Block_copy(&aBlock);

  v20 = [v17 remoteObjectProxyWithErrorHandler:v19];
  _Block_release(v19);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100003730(&aBlock, v27);
  sub_1000035E8(&qword_1000152F0, qword_10000A420);
  if (swift_dynamicCast())
  {
    static Log.accounts.getter();
    sub_1000035E8(&qword_1000152E8, &unk_10000A410);
    v21 = type metadata accessor for LogInterpolation();
    sub_10000388C(v21);
    *(swift_allocObject() + 16) = xmmword_10000A3B0;
    v27[3] = type metadata accessor for BaseRemoteViewController();
    v27[0] = v1;
    v22 = v1;
    v23 = AMSLogKey();
    if (v23)
    {
      v24 = v23;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100003630(v27);
    LogInterpolation.init(stringLiteral:)();
    Log.default(_:)();

    (*(v5 + 8))(v9, v3);
    [v26 initializeClientToViewServiceConnection];
    swift_unknownObjectRelease();
  }

  return sub_100003630(&aBlock);
}

char *sub_100002568(uint64_t a1)
{
  v1 = type metadata accessor for Log();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = *&result[OBJC_IVAR___BaseRemoteViewController_connection];
    *&result[OBJC_IVAR___BaseRemoteViewController_connection] = 0;

    static Log.accounts.getter();
    sub_1000035E8(&qword_1000152E8, &unk_10000A410);
    type metadata accessor for LogInterpolation();
    *(swift_allocObject() + 16) = xmmword_10000A3B0;
    v12[3] = type metadata accessor for BaseRemoteViewController();
    v12[0] = v6;
    v8 = v6;
    v9 = AMSLogKey();
    if (v9)
    {
      v10 = v9;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100003630(v12);
    LogInterpolation.init(stringLiteral:)();
    Log.error(_:)();

    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

char *sub_1000027AC(uint64_t a1)
{
  v1 = type metadata accessor for Log();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = OBJC_IVAR___BaseRemoteViewController_connection;
    [*&result[OBJC_IVAR___BaseRemoteViewController_connection] invalidate];
    v8 = *&v6[v7];
    *&v6[v7] = 0;

    static Log.accounts.getter();
    sub_1000035E8(&qword_1000152E8, &unk_10000A410);
    type metadata accessor for LogInterpolation();
    *(swift_allocObject() + 16) = xmmword_10000A3B0;
    v13[3] = type metadata accessor for BaseRemoteViewController();
    v13[0] = v6;
    v9 = v6;
    v10 = AMSLogKey();
    if (v10)
    {
      v11 = v10;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100003630(v13);
    LogInterpolation.init(stringLiteral:)();
    Log.error(_:)();

    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

char *sub_100002A00(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Log();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v16[0] = a1;
    v9 = *&result[OBJC_IVAR___BaseRemoteViewController_connection];
    *&result[OBJC_IVAR___BaseRemoteViewController_connection] = 0;

    static Log.accounts.getter();
    sub_1000035E8(&qword_1000152E8, &unk_10000A410);
    type metadata accessor for LogInterpolation();
    *(swift_allocObject() + 16) = xmmword_10000A3C0;
    v19 = type metadata accessor for BaseRemoteViewController();
    v18[0] = v8;
    v10 = v8;
    v11 = AMSLogKey();
    if (v11)
    {
      v12 = v11;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100003630(v18);
    LogInterpolation.init(stringLiteral:)();
    swift_getErrorValue();
    v13 = v16[1];
    v14 = v17;
    v19 = v17;
    v15 = sub_10000378C(v18);
    (*(*(v14 - 8) + 16))(v15, v13, v14);
    static LogInterpolation.traceableSensitive(_:)();
    sub_1000037EC(v18);
    Log.error(_:)();

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

void sub_100002CB8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_100002DD8()
{
  v1 = type metadata accessor for Log();
  sub_10000386C();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_10000389C();
  v7 = v6 - v5;
  static Log.accounts.getter();
  sub_1000035E8(&qword_1000152E8, &unk_10000A410);
  v8 = type metadata accessor for LogInterpolation();
  sub_10000388C(v8);
  *(swift_allocObject() + 16) = xmmword_10000A3B0;
  v16 = type metadata accessor for BaseRemoteViewController();
  aBlock[0] = v0;
  v9 = v0;
  v10 = AMSLogKey();
  if (v10)
  {
    v11 = v10;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100003630(aBlock);
  LogInterpolation.init(stringLiteral:)();
  Log.default(_:)();

  (*(v3 + 8))(v7, v1);
  sub_100003880();
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  v17 = sub_1000036B0;
  v18 = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000055D0;
  v16 = &unk_100010740;
  v13 = _Block_copy(aBlock);
  v14 = v9;

  [v14 dismissViewControllerAnimated:1 completion:v13];
  _Block_release(v13);
}

id sub_100003070(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR___BaseRemoteViewController_connection] = 0;
  *&v3[OBJC_IVAR___BaseRemoteViewController_remoteScene] = 0;
  if (a2)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for BaseRemoteViewController();
  v6 = objc_msgSendSuper2(&v8, "initWithNibName:bundle:", v5, a3);

  return v6;
}

id sub_100003168(void *a1)
{
  *&v1[OBJC_IVAR___BaseRemoteViewController_connection] = 0;
  *&v1[OBJC_IVAR___BaseRemoteViewController_remoteScene] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for BaseRemoteViewController();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_100003210(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BaseRemoteViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1000032B4()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for BaseRemoteViewController();
  objc_msgSendSuper2(&v4, "viewDidLoad");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() clearColor];
    [v2 setBackgroundColor:v3];
  }

  else
  {
    __break(1u);
  }
}

void sub_10000339C(uint64_t a1)
{
  v2 = type metadata accessor for Log();
  sub_10000386C();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_10000389C();
  v8 = v7 - v6;
  static Log.accounts.getter();
  sub_1000035E8(&qword_1000152E8, &unk_10000A410);
  v9 = type metadata accessor for LogInterpolation();
  sub_10000388C(v9);
  *(swift_allocObject() + 16) = xmmword_10000A3B0;
  v15[3] = type metadata accessor for BaseRemoteViewController();
  v15[0] = v1;
  v1;
  v10 = AMSLogKey();
  if (v10)
  {
    v11 = v10;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100003630(v15);
  LogInterpolation.init(stringLiteral:)();
  Log.default(_:)();

  (*(v4 + 8))(v8, v2);
  v12 = [objc_allocWithZone(NSXPCListenerEndpoint) init];
  [v12 _setEndpoint:a1];
  v13 = [objc_allocWithZone(NSXPCConnection) initWithListenerEndpoint:v12];
  sub_100002040(v13);
}

uint64_t sub_1000035E8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100003630(void *a1)
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

uint64_t sub_10000367C()
{
  sub_100003880();

  return _swift_deallocObject(v1);
}

uint64_t sub_1000036CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000036E4()
{
  swift_unknownObjectWeakDestroy();
  sub_100003880();

  return _swift_deallocObject(v0);
}

uint64_t sub_100003730(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_10000378C(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_1000037EC(uint64_t a1)
{
  v2 = sub_1000035E8(&qword_1000152F8, &qword_10000A4F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1000038E0()
{
  v1 = *(v0 + OBJC_IVAR____TtC30AMSUIAuthenticationViewService13SceneDelegate_window);
  v2 = v1;
  return v1;
}

void sub_100003980(void *a1)
{
  v2 = v1;
  v4 = sub_1000035E8(&unk_100015400, qword_10000A480);
  __chkstk_darwin(v4 - 8);
  v6 = v35 - v5;
  v7 = type metadata accessor for AuthenticationViewServiceAction();
  sub_10000386C();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_10000389C();
  v13 = v12 - v11;
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = v14;
    v35[0] = a1;
    v16 = [v15 configurationContext];
    if (v16 && (v17 = sub_1000054A8(v16)) != 0)
    {
      v18 = v17;
      v35[1] = static AuthenticationViewServiceAction.userInfoKey.getter();
      v35[2] = v19;
      AnyHashable.init<A>(_:)();
      sub_100003D08(v18, &v37, v36);

      sub_100005520(v36);
      if (!v38)
      {

        v20 = &qword_1000152F8;
        v21 = &qword_10000A4F0;
        v22 = &v37;
        goto LABEL_12;
      }

      if (swift_dynamicCast())
      {
        AuthenticationViewServiceAction.init(rawValue:)();
        if (sub_100004AB0(v6, 1, v7) == 1)
        {

          v20 = &unk_100015400;
          v21 = qword_10000A480;
          v22 = v6;
LABEL_12:
          sub_100004AD8(v22, v20, v21);
          return;
        }

        (*(v9 + 32))(v13, v6, v7);
        v24 = sub_100003DFC(v13);
        (*(v9 + 8))(v13, v7);
        v25 = *&v24[OBJC_IVAR___BaseRemoteViewController_remoteScene];
        *&v24[OBJC_IVAR___BaseRemoteViewController_remoteScene] = v15;
        v26 = v35[0];

        v27 = [v15 configurationContext];
        if (v27)
        {
          v28 = v27;
          v29 = [v27 xpcEndpoint];

          if (v29)
          {
            sub_10000339C(v29);
            swift_unknownObjectRelease();
          }
        }

        v30 = [objc_allocWithZone(UIWindow) initWithWindowScene:v15];
        v31 = OBJC_IVAR____TtC30AMSUIAuthenticationViewService13SceneDelegate_window;
        v32 = *(v2 + OBJC_IVAR____TtC30AMSUIAuthenticationViewService13SceneDelegate_window);
        *(v2 + OBJC_IVAR____TtC30AMSUIAuthenticationViewService13SceneDelegate_window) = v30;
        v33 = v30;

        if (v33)
        {
          [v33 setRootViewController:v24];
        }

        v34 = *(v2 + v31);
        [v34 makeKeyAndVisible];
      }

      else
      {
      }
    }

    else
    {
      v23 = v35[0];
    }
  }
}

double sub_100003D08@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>, uint64_t a3@<X0>)
{
  if (*(a1 + 16) && (v5 = sub_1000047A4(a3), (v6 & 1) != 0))
  {
    v7 = *(a1 + 56) + 32 * v5;

    sub_100003730(v7, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

id sub_100003DFC(uint64_t a1)
{
  v2 = type metadata accessor for AuthenticationViewServiceAction();
  sub_10000386C();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_10000389C();
  v8 = v7 - v6;
  (*(v4 + 16))(v7 - v6, a1, v2);
  v9 = (*(v4 + 88))(v8, v2);
  if (v9 == enum case for AuthenticationViewServiceAction.signInAction(_:))
  {
    type metadata accessor for SignInController();
    return [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  }

  if (v9 == enum case for AuthenticationViewServiceAction.verifyDevicePasscodeAction(_:))
  {
    type metadata accessor for VerifyDevicePasscodeController();
    return [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  }

  _StringGuts.grow(_:)(27);
  v11._countAndFlagsBits = 0x203A6E6F69746341;
  v11._object = 0xE800000000000000;
  String.append(_:)(v11);
  _print_unlocked<A, B>(_:_:)();
  v12._object = 0x800000010000A980;
  v12._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v12);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id sub_100003FC8()
{
  *&v0[OBJC_IVAR____TtC30AMSUIAuthenticationViewService13SceneDelegate_window] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneDelegate();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_10000402C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100004094(uint64_t a1)
{
  v2 = sub_1000035E8(&unk_100015400, qword_10000A480);
  __chkstk_darwin(v2 - 8);
  v4 = &v36 - v3;
  type metadata accessor for AuthenticationViewServiceAction();
  sub_10000386C();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_10000389C();
  v43 = v9 - v8;
  v50[0] = &_swiftEmptySetSingleton;
  v41 = v4;
  v44 = v10;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100004700();
    sub_100004744();
    Set.Iterator.init(_cocoa:)();
    a1 = v50[1];
    v11 = v50[2];
    v13 = v50[3];
    v12 = v50[4];
    v14 = v50[5];
  }

  else
  {
    v15 = -1 << *(a1 + 32);
    v11 = a1 + 56;
    v13 = ~v15;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v14 = v17 & *(a1 + 56);

    v12 = 0;
  }

  v18 = (v13 + 64) >> 6;
  v40 = (v6 + 4);
  v39 = (v6 + 1);
  if (a1 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v19 = v12;
  v20 = v14;
  v21 = v12;
  if (v14)
  {
LABEL_12:
    v22 = (v20 - 1) & v20;
    v23 = *(*(a1 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));
    if (!v23)
    {
LABEL_39:
      sub_10000479C(a1);
      return v50[0];
    }

    while (1)
    {
      v25 = [v23 info];
      if (v25)
      {
        break;
      }

LABEL_34:
      v12 = v21;
      v14 = v22;
      if ((a1 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      v6 = (a1 & 0x7FFFFFFFFFFFFFFFLL);
      v24 = __CocoaSet.Iterator.next()();
      if (v24)
      {
        *&v46 = v24;
        sub_100004700();
        swift_dynamicCast();
        v23 = v48;
        v21 = v12;
        v22 = v14;
        if (v48)
        {
          continue;
        }
      }

      goto LABEL_39;
    }

    v26 = v25;
    if ([v25 objectForSetting:AuthenticationViewServiceBSSetting.rawValue.getter()])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v46 = 0u;
      v47 = 0u;
    }

    v48 = v46;
    v49 = v47;
    if (*(&v47 + 1))
    {
      sub_1000035E8(&qword_100015470, &qword_10000A498);
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_33:
        v33 = v23;
        v6 = v50;
        sub_1000048AC(&v48, v33);

        goto LABEL_34;
      }

      v27 = v45;
      if ([v26 objectForSetting:AuthenticationViewServiceBSSetting.rawValue.getter()])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v46 = 0u;
        v47 = 0u;
      }

      v48 = v46;
      v49 = v47;
      if (*(&v47 + 1))
      {
        if (swift_dynamicCast())
        {
          v38 = v27;
          v37 = v13;
          v6 = v41;
          AuthenticationViewServiceAction.init(rawValue:)();
          v28 = v44;
          if (sub_100004AB0(v6, 1, v44) == 1)
          {
            goto LABEL_41;
          }

          v29 = v43;
          (*v40)(v43, v6, v28);
          v6 = sub_100003DFC(v29);
          sub_10000339C(v38);
          v30 = *(v42 + OBJC_IVAR____TtC30AMSUIAuthenticationViewService13SceneDelegate_window);
          if (v30)
          {
            v31 = v42;
            [v30 setRootViewController:v6];
            v32 = *(v31 + OBJC_IVAR____TtC30AMSUIAuthenticationViewService13SceneDelegate_window);
          }

          else
          {
            v32 = 0;
          }

          v13 = v37;
          v34 = v32;
          [v34 makeKeyAndVisible];

          swift_unknownObjectRelease();
          (*v39)(v43, v44);
          goto LABEL_34;
        }

        swift_unknownObjectRelease();
        goto LABEL_33;
      }

      swift_unknownObjectRelease();
    }

    sub_100004AD8(&v48, &qword_1000152F8, &qword_10000A4F0);
    goto LABEL_33;
  }

  while (1)
  {
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v21 >= v18)
    {
      goto LABEL_39;
    }

    v20 = *(v11 + 8 * v21);
    ++v19;
    if (v20)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_41:
  sub_100004AD8(v6, &unk_100015400, qword_10000A480);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t sub_100004700()
{
  result = qword_1000153F0;
  if (!qword_1000153F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000153F0);
  }

  return result;
}

unint64_t sub_100004744()
{
  result = qword_1000153F8;
  if (!qword_1000153F8)
  {
    sub_100004700();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000153F8);
  }

  return result;
}

unint64_t sub_1000047A4(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000047E8(a1, v4);
}

unint64_t sub_1000047E8(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_100005574(*(v2 + 48) + 40 * i, v7);
    v5 = static AnyHashable.== infix(_:_:)();
    sub_100005520(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1000048AC(uint64_t *a1, void *a2)
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

      sub_100004700();
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
    }

    else
    {
      result = __CocoaSet.count.getter();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v16 = sub_100004B38(v7, result + 1);
        v17 = v16[2];
        if (v16[3] <= v17)
        {
          sub_100004CF4(v17 + 1);
        }

        v18 = v8;
        sub_100004F18(v18, v16);

        *v3 = v16;
LABEL_16:
        *a1 = v18;
        return 1;
      }
    }
  }

  else
  {
    sub_100004700();
    v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
    v12 = ~(-1 << *(v6 + 32));
    while (1)
    {
      v13 = v11 & v12;
      if (((*(v6 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23 = *v3;
        v18 = a2;
        sub_100004F9C(v18, v13, isUniquelyReferenced_nonNull_native);
        *v3 = v23;
        goto LABEL_16;
      }

      v14 = *(*(v6 + 48) + 8 * v13);
      v15 = static NSObject.== infix(_:_:)();

      if (v15)
      {
        break;
      }

      v11 = v13 + 1;
    }

    v20 = *(*(v6 + 48) + 8 * v13);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  return result;
}

uint64_t sub_100004AD8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000035E8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

Swift::Int sub_100004B38(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000035E8(&qword_100015478, &unk_10000A4A0);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    while (1)
    {
      if (!__CocoaSet.Iterator.next()())
      {

        return v2;
      }

      sub_100004700();
      swift_dynamicCast();
      v3 = *(v2 + 16);
      if (*(v2 + 24) <= v3)
      {
        sub_100004CF4(v3 + 1);
      }

      v2 = v15;
      result = NSObject._rawHashValue(seed:)(*(v15 + 40));
      v5 = v15 + 56;
      v6 = -1 << *(v15 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6))) == 0)
      {
        break;
      }

      v9 = __clz(__rbit64((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      *(*(v15 + 48) + 8 * v9) = v14;
      ++*(v15 + 16);
    }

    v10 = 0;
    v11 = (63 - v6) >> 6;
    while (++v8 != v11 || (v10 & 1) == 0)
    {
      v12 = v8 == v11;
      if (v8 == v11)
      {
        v8 = 0;
      }

      v10 |= v12;
      v13 = *(v5 + 8 * v8);
      if (v13 != -1)
      {
        v9 = __clz(__rbit64(~v13)) + (v8 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return result;
}

Swift::Int sub_100004CF4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000035E8(&qword_100015478, &unk_10000A4A0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_1000050E4(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    result = NSObject._rawHashValue(seed:)(*(v5 + 40));
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + 8 * v20) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_100004F18(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

unint64_t sub_100004F9C(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100004CF4(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_100005298(v6 + 1);
LABEL_10:
      v12 = *v3;
      result = NSObject._rawHashValue(seed:)(*(*v3 + 40));
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        sub_100004700();
        v14 = *(*(v12 + 48) + 8 * a2);
        v15 = static NSObject.== infix(_:_:)();

        if (v15)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_100005148();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

uint64_t sub_1000050E4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_10000A440;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

id sub_100005148()
{
  v1 = v0;
  sub_1000035E8(&qword_100015478, &unk_10000A4A0);
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

Swift::Int sub_100005298(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000035E8(&qword_100015478, &unk_10000A4A0);
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(v5 + 40);
        v16 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        result = NSObject._rawHashValue(seed:)(v15);
        v17 = -1 << *(v5 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        *(*(v5 + 48) + 8 * v20) = v16;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v11 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v25;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1000054A8(void *a1)
{
  v2 = [a1 userInfo];

  if (!v2)
  {
    return 0;
  }

  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1000055D0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void *sub_100005614()
{
  v1 = *(v0 + OBJC_IVAR___SignInController_navController);
  v2 = v1;
  return v1;
}

id sub_10000565C(void *a1)
{
  v1 = [objc_opt_self() interfaceWithProtocol:*a1];

  return v1;
}

uint64_t sub_1000056AC(void *a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v26 = a3;
  v23 = a1;
  v4 = sub_1000035E8(&qword_100015510, &unk_10000A4D0);
  __chkstk_darwin(v4 - 8);
  v24 = &v23 - v5;
  v6 = type metadata accessor for Log();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.accounts.getter();
  sub_1000035E8(&qword_1000152E8, &unk_10000A410);
  v10 = type metadata accessor for LogInterpolation();
  sub_10000388C(v10);
  *(swift_allocObject() + 16) = xmmword_10000A3B0;
  v27[3] = type metadata accessor for SignInController();
  v27[0] = v3;
  v11 = v3;
  v12 = AMSLogKey();
  if (v12)
  {
    v13 = v12;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100003630(v27);
  LogInterpolation.init(stringLiteral:)();
  Log.default(_:)();

  (*(v7 + 8))(v9, v6);
  v14 = type metadata accessor for TaskPriority();
  v15 = v24;
  sub_100007024(v24, 1, 1, v14);
  type metadata accessor for MainActor();
  v16 = v11;
  v17 = v26;

  v18 = v23;
  v19 = static MainActor.shared.getter();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = &protocol witness table for MainActor;
  v21 = v25;
  v20[4] = v16;
  v20[5] = v21;
  v20[6] = v17;
  v20[7] = v18;
  sub_100007500(0, 0, v15, &unk_10000A4E8, v20);
}

uint64_t sub_1000059B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[36] = a6;
  v7[37] = a7;
  v7[34] = a4;
  v7[35] = a5;
  v8 = type metadata accessor for Log();
  v7[38] = v8;
  v7[39] = *(v8 - 8);
  v7[40] = swift_task_alloc();
  v7[41] = swift_task_alloc();
  v7[42] = swift_task_alloc();
  v7[43] = type metadata accessor for MainActor();
  v7[44] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[45] = v10;
  v7[46] = v9;

  return _swift_task_switch(sub_100005AC4, v10, v9);
}

uint64_t sub_100005AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = v14[34];
  v16 = [objc_allocWithZone(UIViewController) init];
  v17 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v16];
  v14[47] = v17;

  v18 = *(v15 + OBJC_IVAR___SignInController_navController);
  *(v15 + OBJC_IVAR___SignInController_navController) = v17;
  v19 = v17;

  v20 = static MainActor.shared.getter();
  v14[48] = v20;
  v21 = swift_task_alloc();
  v14[49] = v21;
  *(v21 + 16) = v15;
  *(v21 + 24) = v19;
  v22 = swift_task_alloc();
  v14[50] = v22;
  *v22 = v14;
  v22[1] = sub_100005C34;

  return withCheckedContinuation<A>(isolation:function:_:)(v22, v20, &protocol witness table for MainActor, 0xD00000000000002CLL, 0x800000010000A9F0, sub_10000725C, v21, &type metadata for () + 8, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100005C34()
{
  sub_1000074D8();
  v1 = *v0;
  v2 = *v0;
  sub_100007494();
  *v3 = v2;

  v4 = *(v1 + 368);
  v5 = *(v1 + 360);

  return _swift_task_switch(sub_100005D88, v5, v4);
}

uint64_t sub_100005D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1000074E4();
  v15 = sub_100005614();
  v14[51] = v15;
  if (v15)
  {
    v16 = v15;
    v17 = v14[37];
    type metadata accessor for ServiceOwnerSignInTask();
    swift_allocObject();
    v18 = v16;
    v19 = v17;
    v14[52] = ServiceOwnerSignInTask.init(request:presenter:)();
    v54 = &async function pointer to dispatch thunk of ServiceOwnerSignInTask.perform() + async function pointer to dispatch thunk of ServiceOwnerSignInTask.perform();
    v20 = swift_task_alloc();
    v14[53] = v20;
    *v20 = v14;
    v20[1] = sub_100006114;
    sub_1000074A4();

    return v21(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, v54, a12, a13, a14);
  }

  else
  {
    v30 = v14[34];

    v31 = String._bridgeToObjectiveC()();
    v32 = AMSError();

    static Log.accounts.getter();
    sub_1000035E8(&qword_1000152E8, &unk_10000A410);
    v33 = type metadata accessor for LogInterpolation();
    sub_10000388C(v33);
    *(swift_allocObject() + 16) = xmmword_10000A3C0;
    v14[5] = type metadata accessor for SignInController();
    v14[2] = v30;
    v34 = v30;
    v35 = AMSLogKey();
    if (v35)
    {
      v36 = v35;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v37 = v14[42];
    v39 = v14[38];
    v38 = v14[39];
    v53 = v14[36];
    v55 = v14[47];
    v52 = v14[35];
    static LogInterpolation.prefix(_:_:)();

    sub_100003630(v14 + 2);
    LogInterpolation.init(stringLiteral:)();
    swift_getErrorValue();
    v40 = v14[26];
    v41 = v14[27];
    v14[9] = v41;
    v42 = sub_10000378C(v14 + 6);
    (*(*(v41 - 8) + 16))(v42, v40, v41);
    static LogInterpolation.safe(_:)();
    sub_1000037EC((v14 + 6));
    Log.error(_:)();

    (*(v38 + 8))(v37, v39);
    v43 = v32;
    v52(0, v32);

    sub_1000074A4();

    return v45(v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v55, a12, a13, a14);
  }
}

uint64_t sub_100006114()
{
  sub_1000074D8();
  v2 = *v1;
  v3 = *v1;
  *(v3 + 432) = v4;
  *(v3 + 440) = v0;

  v5 = *(v2 + 368);
  v6 = *(v2 + 360);
  if (v0)
  {
    v7 = sub_1000066A0;
  }

  else
  {
    v7 = sub_100006254;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100006254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t, void), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1000074E4();
  v15 = v14[34];
  static Log.accounts.getter();
  sub_1000035E8(&qword_1000152E8, &unk_10000A410);
  v16 = type metadata accessor for LogInterpolation();
  sub_10000388C(v16);
  *(sub_100007468() + 16) = xmmword_10000A3C0;
  v17 = type metadata accessor for SignInController();
  v14[18] = v15;
  v14[21] = v17;
  v18 = v15;
  v19 = AMSLogKey();
  if (v19)
  {
    v20 = v19;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v21 = v14[54];
  v22 = v14[41];
  v23 = v14[39];
  sub_10000743C();

  sub_100003630(v14 + 18);
  LogInterpolation.init(stringLiteral:)();
  v14[25] = sub_1000035E8(&qword_100015518, &qword_10000A4F8);
  v14[22] = v21;

  static LogInterpolation.traceableSensitive(_:)();
  sub_1000037EC((v14 + 22));
  Log.default(_:)();

  (*(v23 + 8))(v22, a9);
  a10(v21, 0);

  v24 = v14[47];
  v14[56] = static MainActor.shared.getter();
  v25 = swift_task_alloc();
  v14[57] = v25;
  *(v25 + 16) = v24;
  v26 = swift_task_alloc();
  v14[58] = v26;
  *v26 = v14;
  sub_100007404(v26);
  sub_100007424();
  sub_1000074C0();
  sub_1000074A4();

  return withCheckedContinuation<A>(isolation:function:_:)(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1000064AC()
{
  sub_1000074D8();
  v1 = *v0;
  v2 = *v0;
  sub_100007494();
  *v3 = v2;

  v4 = *(v1 + 368);
  v5 = *(v1 + 360);

  return _swift_task_switch(sub_100006600, v5, v4);
}

uint64_t sub_100006600()
{
  sub_1000074D8();
  v1 = v0[51];
  v2 = v0[47];

  sub_100002DD8();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000066A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(void, uint64_t), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1000074E4();
  v15 = v14[34];
  static Log.accounts.getter();
  sub_1000035E8(&qword_1000152E8, &unk_10000A410);
  v16 = type metadata accessor for LogInterpolation();
  sub_10000388C(v16);
  *(sub_100007468() + 16) = xmmword_10000A3C0;
  v17 = type metadata accessor for SignInController();
  v14[10] = v15;
  v14[13] = v17;
  v18 = v15;
  v19 = AMSLogKey();
  if (v19)
  {
    v20 = v19;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v21 = v14[55];
  v23 = v14[39];
  v22 = v14[40];
  sub_10000743C();

  sub_100003630(v14 + 10);
  LogInterpolation.init(stringLiteral:)();
  swift_getErrorValue();
  v24 = v14[29];
  v25 = v14[30];
  v14[17] = v25;
  v26 = sub_10000378C(v14 + 14);
  (*(*(v25 - 8) + 16))(v26, v24, v25);
  static LogInterpolation.traceableSensitive(_:)();
  sub_1000037EC((v14 + 14));
  Log.error(_:)();

  (*(v23 + 8))(v22, a9);
  swift_errorRetain();
  a10(0, v21);

  v27 = v14[47];
  v14[56] = static MainActor.shared.getter();
  v28 = swift_task_alloc();
  v14[57] = v28;
  *(v28 + 16) = v27;
  v29 = swift_task_alloc();
  v14[58] = v29;
  *v29 = v14;
  sub_100007404(v29);
  sub_100007424();
  sub_1000074C0();
  sub_1000074A4();

  return withCheckedContinuation<A>(isolation:function:_:)(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14);
}

void sub_100006930(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_1000035E8(&qword_100015520, &unk_10000A500);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - v8;
  (*(v7 + 16))(aBlock - v8, a1, v6);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, v9, v6);
  aBlock[4] = sub_100007270;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000055D0;
  aBlock[3] = &unk_1000108A8;
  v12 = _Block_copy(aBlock);

  [a2 presentViewController:a3 animated:1 completion:v12];
  _Block_release(v12);
}

void sub_100006AEC(uint64_t a1, void *a2)
{
  v4 = sub_1000035E8(&qword_100015520, &unk_10000A500);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  aBlock[4] = sub_100007270;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000055D0;
  aBlock[3] = &unk_100010858;
  v10 = _Block_copy(aBlock);

  [a2 dismissViewControllerAnimated:1 completion:v10];
  _Block_release(v10);
}

void sub_100006D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    if (a2)
    {
LABEL_3:
      v6 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    v5.super.isa = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5.super.isa);
}

id sub_100006E24(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR___SignInController_navController] = 0;
  if (a2)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for SignInController();
  v6 = objc_msgSendSuper2(&v8, "initWithNibName:bundle:", v5, a3);

  return v6;
}

id sub_100006F10(void *a1)
{
  *&v1[OBJC_IVAR___SignInController_navController] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SignInController();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_100006FBC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SignInController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10000704C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0);
}

uint64_t sub_10000709C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100007170;

  return sub_1000059B0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100007170()
{
  v1 = *v0;
  sub_100007494();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_100007288(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000072A0()
{
  v1 = sub_1000035E8(&qword_100015520, &unk_10000A500);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return _swift_deallocObject(v0);
}

uint64_t sub_100007334(uint64_t (*a1)(uint64_t))
{
  v2 = *(sub_1000035E8(&qword_100015520, &unk_10000A500) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1000073B4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0);
}

uint64_t sub_10000743C()
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_100007468()
{

  return swift_allocObject();
}

uint64_t sub_100007500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000035E8(&qword_100015510, &unk_10000A4D0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100008DDC(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = sub_100004AB0(v11, 1, v12);

  if (v13 == 1)
  {
    sub_100009188(v11, &qword_100015510, &unk_10000A4D0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    sub_100009280();
    (*(v14 + 8))(v11, v12);
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

      sub_100009188(a3, &qword_100015510, &unk_10000A4D0);

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

  sub_100009188(a3, &qword_100015510, &unk_10000A4D0);
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

uint64_t sub_1000077DC(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v24 = a2;
  v3 = sub_1000035E8(&qword_100015510, &unk_10000A4D0);
  __chkstk_darwin(v3 - 8);
  v22 = &v21 - v4;
  v5 = type metadata accessor for Log();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.accounts.getter();
  sub_1000035E8(&qword_1000152E8, &unk_10000A410);
  v9 = type metadata accessor for LogInterpolation();
  sub_10000388C(v9);
  *(swift_allocObject() + 16) = xmmword_10000A3B0;
  v25[3] = type metadata accessor for VerifyDevicePasscodeController();
  v25[0] = v2;
  v10 = v2;
  v11 = AMSLogKey();
  if (v11)
  {
    v12 = v11;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100003630(v25);
  LogInterpolation.init(stringLiteral:)();
  Log.default(_:)();

  (*(v6 + 8))(v8, v5);
  v13 = type metadata accessor for TaskPriority();
  v14 = v22;
  sub_100007024(v22, 1, 1, v13);
  type metadata accessor for MainActor();
  v15 = v10;
  v16 = v24;

  v17 = static MainActor.shared.getter();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = &protocol witness table for MainActor;
  v19 = v23;
  v18[4] = v15;
  v18[5] = v19;
  v18[6] = v16;
  sub_100007500(0, 0, v14, &unk_10000A558, v18);
}

uint64_t sub_100007AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[14] = a4;
  v7 = type metadata accessor for Log();
  v6[17] = v7;
  v6[18] = *(v7 - 8);
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = type metadata accessor for MainActor();
  v6[22] = static MainActor.shared.getter();
  v8 = swift_task_alloc();
  v6[23] = v8;
  *v8 = v6;
  v8[1] = sub_100007BEC;

  return sub_100008254();
}

uint64_t sub_100007BEC()
{
  sub_1000074D8();
  sub_100009268();
  v2 = *v1;
  sub_100007494();
  *v3 = v2;
  *(v4 + 192) = v0;

  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v7 = sub_100007EBC;
  }

  else
  {
    v7 = sub_100007D38;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100007D38()
{
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[15];

  static Log.accounts.getter();
  sub_1000035E8(&qword_1000152E8, &unk_10000A410);
  v5 = type metadata accessor for LogInterpolation();
  sub_10000388C(v5);
  *(swift_allocObject() + 16) = xmmword_10000A510;
  LogInterpolation.init(stringLiteral:)();
  Log.default(_:)();

  (*(v3 + 8))(v1, v2);
  v4(1, 0);
  sub_100002DD8();

  sub_100009274();

  return v6();
}

uint64_t sub_100007EBC()
{
  v1 = v0[14];

  static Log.accounts.getter();
  sub_1000035E8(&qword_1000152E8, &unk_10000A410);
  v2 = type metadata accessor for LogInterpolation();
  sub_10000388C(v2);
  *(swift_allocObject() + 16) = xmmword_10000A3C0;
  v3 = type metadata accessor for VerifyDevicePasscodeController();
  v0[2] = v1;
  v0[5] = v3;
  v4 = v1;
  v5 = AMSLogKey();
  if (v5)
  {
    v6 = v5;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = v0[24];
  v9 = v0[18];
  v8 = v0[19];
  v13 = v0[17];
  v14 = v0[15];
  static LogInterpolation.prefix(_:_:)();

  sub_100003630(v0 + 2);
  LogInterpolation.init(stringLiteral:)();
  swift_getErrorValue();
  v0[9] = v0[11];
  sub_10000378C(v0 + 6);
  sub_100009280();
  (*(v10 + 16))();
  static LogInterpolation.traceableSensitive(_:)();
  sub_100009188((v0 + 6), &qword_1000152F8, &qword_10000A4F0);
  Log.error(_:)();

  (*(v9 + 8))(v8, v13);
  swift_errorRetain();
  v14(0, v7);

  sub_100002DD8();

  sub_100009274();

  return v11();
}

void sub_1000081E4(char a1, uint64_t a2, uint64_t a3)
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
  (*(a3 + 16))(a3, a1 & 1);
}

uint64_t sub_100008254()
{
  sub_10000924C();
  v1[2] = v0;
  v1[3] = type metadata accessor for MainActor();
  v1[4] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[5] = v3;
  v1[6] = v2;

  return _swift_task_switch(sub_1000082EC, v3, v2);
}

uint64_t sub_1000082EC()
{
  v1 = v0[2];
  v2 = [objc_allocWithZone(LAPasscodeVerificationService) init];
  v0[7] = v2;
  v3 = static MainActor.shared.getter();
  v0[8] = v3;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_10000841C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 12, v3, &protocol witness table for MainActor, 0xD00000000000001CLL, 0x800000010000ABA0, sub_100008AB8, v4, &type metadata for Bool);
}

uint64_t sub_10000841C()
{
  sub_10000924C();
  sub_100009268();
  v3 = v2;
  v4 = *v1;
  sub_100007494();
  *v5 = v4;
  v3[11] = v0;

  if (v0)
  {
    v6 = v3[5];
    v7 = v3[6];
    v8 = sub_1000085A0;
  }

  else
  {

    v6 = v3[5];
    v7 = v3[6];
    v8 = sub_100008530;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_100008530()
{
  sub_10000924C();

  v1 = *(v0 + 96);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1000085A0()
{
  sub_1000074D8();
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2(0);
}

void sub_100008628(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_1000035E8(&qword_100015550, &qword_10000A548);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - v8;
  (*(v7 + 16))(aBlock - v8, a1, v6);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, v9, v6);
  aBlock[4] = sub_100008B50;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008864;
  aBlock[3] = &unk_100010920;
  v12 = _Block_copy(aBlock);

  [a2 startInParentVC:a3 completion:v12];
  _Block_release(v12);
}

uint64_t sub_1000087E0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    sub_1000035E8(&qword_100015550, &qword_10000A548);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_1000035E8(&qword_100015550, &qword_10000A548);
    return CheckedContinuation.resume(returning:)();
  }
}

void sub_100008864(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

id sub_1000088F0(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for VerifyDevicePasscodeController();
  v6 = objc_msgSendSuper2(&v8, "initWithNibName:bundle:", v5, a3);

  return v6;
}

id sub_1000089D0(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for VerifyDevicePasscodeController();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_100008A60(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for VerifyDevicePasscodeController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100008AC0()
{
  sub_1000035E8(&qword_100015550, &qword_10000A548);
  sub_100009280();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return _swift_deallocObject(v0);
}

uint64_t sub_100008B50(uint64_t a1, uint64_t a2)
{
  sub_1000035E8(&qword_100015550, &qword_10000A548);

  return sub_1000087E0(a1, a2);
}

uint64_t sub_100008BDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100008BF4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0);
}

uint64_t sub_100008C3C(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = swift_task_alloc();
  v9 = sub_100009258(v8);
  *v9 = v10;
  v9[1] = sub_100008CFC;

  return sub_100007AD0(a1, v3, v4, v5, v6, v7);
}

uint64_t sub_100008CFC()
{
  sub_10000924C();
  sub_100009268();
  v1 = *v0;
  sub_100007494();
  *v2 = v1;

  sub_100009274();

  return v3();
}

uint64_t sub_100008DDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000035E8(&qword_100015510, &unk_10000A4D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100008E4C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100008F44;

  return v6(a1);
}

uint64_t sub_100008F44()
{
  sub_10000924C();
  sub_100009268();
  v1 = *v0;
  sub_100007494();
  *v2 = v1;

  sub_100009274();

  return v3();
}

uint64_t sub_100009028()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100009060()
{
  sub_1000074D8();
  v0 = swift_task_alloc();
  v1 = sub_100009258(v0);
  *v1 = v2;
  v3 = sub_10000922C(v1);

  return v4(v3);
}

uint64_t sub_1000090F4()
{
  sub_1000074D8();
  v0 = swift_task_alloc();
  v1 = sub_100009258(v0);
  *v1 = v2;
  v3 = sub_10000922C(v1);

  return v4(v3);
}

uint64_t sub_100009188(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_1000035E8(a2, a3);
  sub_100009280();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1000091E4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0);
}