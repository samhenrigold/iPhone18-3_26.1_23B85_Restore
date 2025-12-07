uint64_t start(int a1, char **a2)
{
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = UIApplicationMain(a1, a2, v5, v7);

  return v8;
}

void sub_100001FF0()
{
  v3[0] = FBSOpenApplicationOptionKeyPromptUnlockDevice;
  v3[1] = FBSOpenApplicationOptionKeyUnlockDevice;
  v4[0] = &__kCFBooleanTrue;
  v4[1] = &__kCFBooleanTrue;
  v3[2] = FBSOpenApplicationOptionKeyPayloadURL;
  v4[2] = @"music://show-now-playing";
  v0 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
  v1 = SBSCreateOpenApplicationService();
  v2 = [FBSOpenApplicationOptions optionsWithDictionary:v0];
  [v1 openApplication:@"com.apple.Music" withOptions:v2 completion:&stru_100014BA0];
}

uint64_t sub_100002154(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_100002198(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (qword_10001A938 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003AD4(v5, qword_10001B6D8);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100005AD4(a1, a2, v14);
    _os_log_impl(&_mh_execute_header, v6, v7, "Custom row did tap: %s", v8, 0xCu);
    sub_100003C80(v9);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = *(Strong + OBJC_IVAR____TtC20MediaRemoteUIService24RoutePickerSceneDelegate_hostProxy);
    v12 = Strong;
    swift_unknownObjectRetain();

    if (v11)
    {
      v13 = String._bridgeToObjectiveC()();
      [v11 setTappedCustomRowIdentifier:v13];

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_10000235C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v2(v3, v5);
}

id sub_1000024E0(void *a1)
{
  v2 = v1;
  result = [a1 xpcEndpoint];
  if (result)
  {
    v4 = sub_1000028D8(result);
    aBlock[4] = sub_100002714;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100002870;
    aBlock[3] = &unk_100014D70;
    v5 = _Block_copy(aBlock);
    v6 = [v4 remoteObjectProxyWithErrorHandler:v5];
    _Block_release(v5);

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100003B8C(&qword_10001ABA8, &qword_10000E518);
    if (swift_dynamicCast())
    {
      v7 = v12;
    }

    else
    {
      v7 = 0;
    }

    if (qword_10001A938 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100003AD4(v8, qword_10001B6D8);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Attempting to open connection to host app.", v11, 2u);
    }

    if (v7)
    {
      [swift_unknownObjectRetain() openConnection];
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    *(v2 + OBJC_IVAR____TtC20MediaRemoteUIService24RoutePickerSceneDelegate_hostProxy) = v7;
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100002714(uint64_t a1)
{
  if (qword_10001A938 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003AD4(v1, qword_10001B6D8);
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
    _os_log_impl(&_mh_execute_header, oslog, v2, "Error occurred while attempting to retrieve remote proxy to open connection: %@", v3, 0xCu);
    sub_1000043A4(v4, &qword_10001ABB0, &unk_10000E520);
  }
}

void sub_100002870(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_1000028D8(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC20MediaRemoteUIService24RoutePickerSceneDelegate_connection;
  v3 = *(v1 + OBJC_IVAR____TtC20MediaRemoteUIService24RoutePickerSceneDelegate_connection);
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC20MediaRemoteUIService24RoutePickerSceneDelegate_connection);
  }

  else
  {
    v6 = [objc_allocWithZone(NSXPCListenerEndpoint) init];
    [v6 _setEndpoint:a1];
    v7 = [objc_allocWithZone(NSXPCConnection) initWithListenerEndpoint:v6];
    v8 = objc_opt_self();
    v9 = [v8 interfaceWithProtocol:&OBJC_PROTOCOL___MPMediaControlsProtocol];
    [v7 setRemoteObjectInterface:v9];

    v10 = [v8 interfaceWithProtocol:&OBJC_PROTOCOL___MPMediaControlsRemoteViewControllerProtocol];
    [v7 setExportedInterface:v10];

    [v7 setExportedObject:v1];
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16[4] = sub_100003D74;
    v16[5] = v11;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 1107296256;
    v16[2] = sub_100002154;
    v16[3] = &unk_100014D48;
    v12 = _Block_copy(v16);

    [v7 setInvalidationHandler:v12];
    _Block_release(v12);
    [v7 resume];

    v13 = *(v1 + v2);
    *(v1 + v2) = v7;
    v4 = v7;

    v3 = 0;
  }

  v14 = v3;
  return v4;
}

void sub_100002AF4(uint64_t a1)
{
  if (qword_10001A938 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003AD4(v1, qword_10001B6D8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "XPC connection to host app invalidated.", v4, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *&Strong[OBJC_IVAR____TtC20MediaRemoteUIService24RoutePickerSceneDelegate_connection];
    *&Strong[OBJC_IVAR____TtC20MediaRemoteUIService24RoutePickerSceneDelegate_connection] = 0;
  }
}

id sub_100002C80()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RoutePickerSceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100002D44(void *a1, uint64_t a2)
{
  v2 = a2;
  if ((a2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100004568(0, &qword_10001AB90, SBUIRemoteAlertButtonAction_ptr);
    sub_100003CCC();
    Set.Iterator.init(_cocoa:)();
    v2 = v26;
    v3 = v27;
    v4 = v28;
    v5 = v29;
    v6 = v30;
  }

  else
  {
    v7 = -1 << *(a2 + 32);
    v3 = a2 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a2 + 56);

    v5 = 0;
  }

  v22 = v4;
  v10 = (v4 + 64) >> 6;
  while (1)
  {
    if (v2 < 0)
    {
      if (!__CocoaSet.Iterator.next()() || (sub_100004568(0, &qword_10001AB90, SBUIRemoteAlertButtonAction_ptr), swift_dynamicCast(), (v13 = v25) == 0))
      {
LABEL_27:
        sub_100003D34(v2);
        return;
      }

      goto LABEL_20;
    }

    v11 = v5;
    v12 = v6;
    if (!v6)
    {
      break;
    }

LABEL_16:
    v6 = (v12 - 1) & v12;
    v13 = *(*(v2 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v13)
    {
      goto LABEL_27;
    }

LABEL_20:
    if (([v13 events] & 0x10) == 0)
    {
      goto LABEL_10;
    }

    v14 = [a1 keyWindow];
    v15 = [v14 rootViewController];

    v16 = *(v24 + OBJC_IVAR____TtC20MediaRemoteUIService24RoutePickerSceneDelegate_routePickerViewController);
    if (v15)
    {
      if (v16)
      {
        sub_100004568(0, &qword_10001ABA0, UIViewController_ptr);
        v17 = v16;
        v18 = static NSObject.== infix(_:_:)();

        if ((v18 & 1) == 0)
        {
          goto LABEL_10;
        }

        v19 = *(v24 + OBJC_IVAR____TtC20MediaRemoteUIService24RoutePickerSceneDelegate_routePickerViewController);
        if (!v19)
        {
          goto LABEL_10;
        }

        [v19 transitionToVisible:0 animated:1];
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      if (!v16)
      {
        v21 = 0;
      }

LABEL_10:
    }
  }

  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_27;
    }

    v12 = *(v3 + 8 * v5);
    ++v11;
    if (v12)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_1000030AC(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v33 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10001A938 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100003AD4(v9, qword_10001B6D8);
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v29 = v6;
    v30 = v3;
    v31 = v2;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    aBlock[0] = v14;
    *v13 = 136315138;
    v15 = [v10 presentingAppBundleID];
    if (v15)
    {
      v16 = v15;
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;
    }

    else
    {
      v19 = 0xE300000000000000;
      v17 = 7104878;
    }

    v20 = sub_100005AD4(v17, v19, aBlock);

    *(v13 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "Received updated media controls configuration from: %s", v13, 0xCu);
    sub_100003C80(v14);

    v3 = v30;
    v2 = v31;
    v6 = v29;
  }

  else
  {
  }

  sub_100004568(0, &qword_10001AB70, OS_dispatch_queue_ptr);
  v21 = static OS_dispatch_queue.main.getter();
  v22 = swift_allocObject();
  v23 = v32;
  *(v22 + 16) = v32;
  *(v22 + 24) = v10;
  aBlock[4] = sub_100003B4C;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002154;
  aBlock[3] = &unk_100014CF8;
  v24 = _Block_copy(aBlock);
  v25 = v10;
  v26 = v23;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000044B8(&qword_10001AB78, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003B8C(&qword_10001AB80, &qword_10000E510);
  sub_100003BD4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);

  (*(v3 + 8))(v5, v2);
  return (*(v33 + 8))(v8, v6);
}

Swift::Int sub_1000035FC(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10000366C(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_1000036E4(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100003764@<X0>(void *a2@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_1000037A8()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_1000037E4(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100003838()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

uint64_t sub_1000038B0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)(v4, v5, a3, WitnessTable);
}

uint64_t sub_10000391C(void *a1, uint64_t *a2)
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

uint64_t sub_1000039A4@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000039D0@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_100003A18(uint64_t a1)
{
  v2 = sub_1000044B8(&qword_10001AC28, type metadata accessor for MRGroupSessionEventOption, &unk_10000E764);
  v3 = sub_1000044B8(&unk_10001AC30, type metadata accessor for MRGroupSessionEventOption, &unk_10000E618);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003AD4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100003B0C()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_100003B4C()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC20MediaRemoteUIService24RoutePickerSceneDelegate_routePickerViewController);
  if (result)
  {
    return [result setConfiguration:*(v0 + 24)];
  }

  return result;
}

uint64_t sub_100003B74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003B8C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100003BD4()
{
  result = qword_10001AB88;
  if (!qword_10001AB88)
  {
    sub_100003C38(&qword_10001AB80, &qword_10000E510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001AB88);
  }

  return result;
}

uint64_t sub_100003C38(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100003C80(void *a1)
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

unint64_t sub_100003CCC()
{
  result = qword_10001AB98;
  if (!qword_10001AB98)
  {
    sub_100004568(255, &qword_10001AB90, SBUIRemoteAlertButtonAction_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001AB98);
  }

  return result;
}

uint64_t sub_100003D3C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100003D7C(void *a1)
{
  v1 = [a1 userInfo];
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = kMRMediaRemoteMediaControlsConfigurationKey;
  sub_100003B8C(&qword_10001ABC8, &qword_10000E530);
  sub_100004404();
  AnyHashable.init<A>(_:)();
  if (!*(v3 + 16) || (v5 = sub_100006100(v11), (v6 & 1) == 0))
  {

    sub_100004514(v11);
LABEL_8:
    v12 = 0u;
    v13 = 0u;
    goto LABEL_9;
  }

  sub_100004604(*(v3 + 56) + 32 * v5, &v12);
  sub_100004514(v11);

  if (!*(&v13 + 1))
  {
LABEL_9:
    sub_1000043A4(&v12, &qword_10001ABC0, &qword_10000E8D0);
    return 0;
  }

  if (swift_dynamicCast())
  {
    v7 = v11[0];
    v8 = v11[1];
    sub_100004568(0, &qword_10001ABE0, NSKeyedUnarchiver_ptr);
    sub_100004568(0, &qword_10001ABE8, MPMediaControlsConfiguration_ptr);
    v9 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    sub_1000045B0(v7, v8);
    return v9;
  }

  return 0;
}

void sub_100003F40(void *a1)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v25 = a1;
  v5 = [v4 configurationContext];
  if (v5)
  {
    v6 = v5;
    v7 = sub_100003D7C(v5);
    if (v7)
    {
      v8 = v7;
      sub_1000024E0(v6);
      v9 = [objc_opt_self() viewControllerForConfiguration:v8];
      v10 = OBJC_IVAR____TtC20MediaRemoteUIService24RoutePickerSceneDelegate_routePickerViewController;
      v11 = *(v1 + OBJC_IVAR____TtC20MediaRemoteUIService24RoutePickerSceneDelegate_routePickerViewController);
      *(v1 + OBJC_IVAR____TtC20MediaRemoteUIService24RoutePickerSceneDelegate_routePickerViewController) = v9;
      v12 = v9;

      if (v12)
      {
        v13 = swift_allocObject();
        *(v13 + 16) = v4;
        v30 = sub_10000438C;
        v31 = v13;
        aBlock = _NSConcreteStackBlock;
        v27 = 1107296256;
        v28 = sub_100002154;
        v29 = &unk_100014DC0;
        v14 = _Block_copy(&aBlock);
        v15 = v25;

        [v12 setDismissalBlock:v14];
        _Block_release(v14);
      }

      v16 = *(v1 + v10);
      if (v16)
      {
        v17 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v30 = sub_10000439C;
        v31 = v17;
        aBlock = _NSConcreteStackBlock;
        v27 = 1107296256;
        v28 = sub_10000235C;
        v29 = &unk_100014DE8;
        v18 = _Block_copy(&aBlock);
        v19 = v16;

        [v19 setCustomRowTappedBlock:v18];
        _Block_release(v18);
      }

      v20 = [objc_allocWithZone(type metadata accessor for SecureWindow()) initWithWindowScene:v4];
      v21 = *(v1 + v10);
      v22 = v20;
      [v22 setRootViewController:v21];
      [v22 makeKeyAndVisible];
      v23 = *(v1 + OBJC_IVAR____TtC20MediaRemoteUIService24RoutePickerSceneDelegate_window);
      *(v1 + OBJC_IVAR____TtC20MediaRemoteUIService24RoutePickerSceneDelegate_window) = v22;

      [v4 setDelegate:v1];
      [v4 setAllowsMenuButtonDismissal:1];
      [v4 setDesiredHardwareButtonEvents:16];
      sub_100004568(0, &qword_10001ABB8, NSNumber_ptr);
      isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
      [v4 setSceneDeactivationReason:isa];

      [v4 setOrientationChangedEventsDisabled:1];
      return;
    }
  }

  [v4 invalidate];
}

void sub_1000042E0()
{
  v1 = *(v0 + OBJC_IVAR____TtC20MediaRemoteUIService24RoutePickerSceneDelegate_window);
  *(v0 + OBJC_IVAR____TtC20MediaRemoteUIService24RoutePickerSceneDelegate_window) = 0;

  v2 = *(v0 + OBJC_IVAR____TtC20MediaRemoteUIService24RoutePickerSceneDelegate_routePickerViewController);
  *(v0 + OBJC_IVAR____TtC20MediaRemoteUIService24RoutePickerSceneDelegate_routePickerViewController) = 0;

  v3 = OBJC_IVAR____TtC20MediaRemoteUIService24RoutePickerSceneDelegate_connection;
  [*(v0 + OBJC_IVAR____TtC20MediaRemoteUIService24RoutePickerSceneDelegate_connection) invalidate];
  v4 = *(v0 + v3);
  *(v0 + v3) = 0;
}

uint64_t sub_100004354()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000043A4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003B8C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_100004404()
{
  result = qword_10001ABD0;
  if (!qword_10001ABD0)
  {
    sub_100003C38(&qword_10001ABC8, &qword_10000E530);
    sub_1000044B8(&qword_10001ABD8, type metadata accessor for CFString, &unk_10000E720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001ABD0);
  }

  return result;
}

uint64_t sub_1000044B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100004568(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_1000045B0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100004604(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_100004688(uint64_t a1, unint64_t *a2, uint64_t a3)
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

void sub_100004864(void *a1, uint64_t a2, uint64_t a3)
{
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {
    return;
  }

  v8 = v7;
  v17 = a1;
  v9 = [v8 configurationIdentifier];
  if (v9)
  {
    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    if (v11 == 0x69702D6574756F72 && v13 == 0xEC00000072656B63)
    {
    }

    else
    {
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    *(v3 + OBJC_IVAR____TtC20MediaRemoteUIService24RemoteAlertSceneDelegate_underlyingSceneDelegate) = [objc_allocWithZone(type metadata accessor for RoutePickerSceneDelegate()) init];
    swift_unknownObjectRelease();
  }

LABEL_12:
  v16 = *(v3 + OBJC_IVAR____TtC20MediaRemoteUIService24RemoteAlertSceneDelegate_underlyingSceneDelegate);
  if (v16 && ([v16 respondsToSelector:"scene:willConnectToSession:options:"] & 1) != 0)
  {
    [v16 scene:v17 willConnectToSession:a2 options:a3];
  }
}

char *sub_100004AE0(char *result, uint64_t a2, uint64_t a3, const char **a4)
{
  v4 = *&result[OBJC_IVAR____TtC20MediaRemoteUIService24RemoteAlertSceneDelegate_underlyingSceneDelegate];
  if (v4)
  {
    result = [*&result[OBJC_IVAR____TtC20MediaRemoteUIService24RemoteAlertSceneDelegate_underlyingSceneDelegate] respondsToSelector:*a4];
    if (result)
    {
      v7 = *a4;

      return [v4 v7];
    }
  }

  return result;
}

id sub_100004BAC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteAlertSceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100004C14(void *a1)
{
  sub_100003B8C(&unk_10001AE00, &qword_10000E8D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10000E800;
  v3 = MRGroupSessionEventOptionDiscoveredSessionIdentifier;
  *(inited + 32) = MRGroupSessionEventOptionDiscoveredSessionIdentifier;
  v4 = v3;
  v5 = [a1 identifier];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  *(inited + 40) = v6;
  *(inited + 48) = v8;
  v9 = MRGroupSessionEventOptionEventType;
  *(inited + 64) = &type metadata for String;
  *(inited + 72) = v9;
  v10 = objc_allocWithZone(NSNumber);
  v11 = v9;
  v12 = [v10 initWithInteger:1];
  *(inited + 104) = sub_100004568(0, &qword_10001ABB8, NSNumber_ptr);
  *(inited + 80) = v12;
  sub_100007618(inited);
  swift_setDeallocating();
  sub_100003B8C(&qword_10001AE10, &unk_10000E8E0);
  swift_arrayDestroy();
  type metadata accessor for MRGroupSessionEventOption(0);
  sub_100007720(&qword_10001AC28, type metadata accessor for MRGroupSessionEventOption, &unk_10000E764);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v15[4] = sub_100004E40;
  v15[5] = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_100004F80;
  v15[3] = &unk_100014EB0;
  v14 = _Block_copy(v15);
  MRGroupSessionSendEvent();
  _Block_release(v14);
}

uint64_t sub_100004E40(uint64_t result)
{
  if (result)
  {
    swift_errorRetain();
    v1 = static os_log_type_t.error.getter();
    if (qword_10001A940 != -1)
    {
      swift_once();
    }

    v2 = qword_10001B6F0;
    if (os_log_type_enabled(qword_10001B6F0, v1))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      *v3 = 138412290;
      swift_errorRetain();
      v5 = _swift_stdlib_bridgeErrorToNSError();
      *(v3 + 4) = v5;
      *v4 = v5;
      _os_log_impl(&_mh_execute_header, v2, v1, "MRGroupSessionSendEvent error: %@", v3, 0xCu);
      sub_1000043A4(v4, &qword_10001ABB0, &unk_10000E520);
    }
  }

  return result;
}

void sub_100004F80(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_10000507C(void *a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v5 = Strong, sub_100004568(0, &qword_10001ADB8, UIScene_ptr), v6 = a1, v7 = static NSObject.== infix(_:_:)(), v5, v6, (v7 & 1) != 0))
  {
    v8 = &OBJC_IVAR____TtC20MediaRemoteUIService21ActivitySceneDelegate_groupSessionLowPowerWindow;
  }

  else
  {
    v9 = swift_unknownObjectWeakLoadStrong();
    if (!v9)
    {
      return;
    }

    v10 = v9;
    sub_100004568(0, &qword_10001ADB8, UIScene_ptr);
    v11 = a1;
    v12 = static NSObject.== infix(_:_:)();

    if ((v12 & 1) == 0)
    {
      return;
    }

    v8 = &OBJC_IVAR____TtC20MediaRemoteUIService21ActivitySceneDelegate_routeRecommendationWindow;
  }

  v13 = *v8;
  v14 = *(v2 + v13);
  *(v2 + v13) = 0;
}

void sub_100005204(void *a1)
{
  v2 = v1;
  v4 = static os_log_type_t.default.getter();
  if (qword_10001A940 != -1)
  {
    v15 = v4;
    swift_once();
    v4 = v15;
  }

  v5 = qword_10001B6F0;
  os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, qword_10001B6F0, "Scene will enter foreground", 27, 2, &_swiftEmptyArrayStorage);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_100004568(0, &qword_10001ADB8, UIScene_ptr);
    v8 = a1;
    v9 = static NSObject.== infix(_:_:)();

    if (v9)
    {
      v10 = static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v5, "RouteRecommendationScene will enter foreground", 46, 2, &_swiftEmptyArrayStorage);
      v11 = OBJC_IVAR____TtC20MediaRemoteUIService21ActivitySceneDelegate_routeRecommendationWindow;
      v12 = *(v2 + OBJC_IVAR____TtC20MediaRemoteUIService21ActivitySceneDelegate_routeRecommendationWindow);
      if (v12)
      {
        v13 = [v12 rootViewController];
        if (v13)
        {
          v14 = v13;
          [v13 beginAppearanceTransition:1 animated:0];
        }
      }

      v16 = [*(v2 + v11) rootViewController];
      [v16 endAppearanceTransition];
    }
  }
}

void sub_100005430(void *a1)
{
  v2 = v1;
  v4 = static os_log_type_t.default.getter();
  if (qword_10001A940 != -1)
  {
    v15 = v4;
    swift_once();
    v4 = v15;
  }

  v5 = qword_10001B6F0;
  os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, qword_10001B6F0, "Scene did enter background", 26, 2, &_swiftEmptyArrayStorage);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_100004568(0, &qword_10001ADB8, UIScene_ptr);
    v8 = a1;
    v9 = static NSObject.== infix(_:_:)();

    if (v9)
    {
      v10 = static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v5, "RouteRecommendationScene did enter background", 45, 2, &_swiftEmptyArrayStorage);
      v11 = OBJC_IVAR____TtC20MediaRemoteUIService21ActivitySceneDelegate_routeRecommendationWindow;
      v12 = *(v2 + OBJC_IVAR____TtC20MediaRemoteUIService21ActivitySceneDelegate_routeRecommendationWindow);
      if (v12)
      {
        v13 = [v12 rootViewController];
        if (v13)
        {
          v14 = v13;
          [v13 beginAppearanceTransition:0 animated:0];
        }
      }

      v16 = [*(v2 + v11) rootViewController];
      [v16 endAppearanceTransition];
    }
  }
}

id sub_10000565C()
{
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC20MediaRemoteUIService21ActivitySceneDelegate_groupSessionLowPowerWindow] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC20MediaRemoteUIService21ActivitySceneDelegate_groupSessionNearbyViewController] = 0;
  *&v0[OBJC_IVAR____TtC20MediaRemoteUIService21ActivitySceneDelegate_groupSessionNearbyWindow] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC20MediaRemoteUIService21ActivitySceneDelegate_routeRecommendationWindow] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivitySceneDelegate();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_100005948(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1000059A4(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1000059F0(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_100005A78(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_100005AD4(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_100005AD4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100005BA0(v11, 0, 0, 1, a1, a2);
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
    sub_100004604(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100003C80(v11);
  return v7;
}

unint64_t sub_100005BA0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100005CAC(a5, a6);
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

char *sub_100005CAC(uint64_t a1, unint64_t a2)
{
  v3 = sub_100005CF8(a1, a2);
  sub_100005E28(&off_100014CA8);
  return v3;
}

char *sub_100005CF8(uint64_t a1, unint64_t a2)
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

  v6 = sub_100005F14(v5, 0);
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
        v7 = sub_100005F14(v10, 0);
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

uint64_t sub_100005E28(uint64_t result)
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

  result = sub_100005F88(result, v11, 1, v3);
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

void *sub_100005F14(uint64_t a1, uint64_t a2)
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

  sub_100003B8C(&unk_10001AE20, qword_10000E8F8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100005F88(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003B8C(&unk_10001AE20, qword_10000E8F8);
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

_BYTE **sub_10000607C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_10000608C(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

unint64_t sub_100006100(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000061D8(a1, v4);
}

unint64_t sub_100006144(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_1000062A0(a1, v2);
}

unint64_t sub_1000061D8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000077F4(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100004514(v8);
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

unint64_t sub_1000062A0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

void sub_1000063A4(void *a1)
{
  v2 = v1;
  v4 = sub_100003B8C(&qword_10001ADC0, &qword_10000E858);
  __chkstk_darwin(v4 - 8);
  v125 = (&v115 - v5);
  v6 = type metadata accessor for MediaLiveActivityAttributes();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v115 - v11;
  v13 = sub_100003B8C(&qword_10001ADC8, &qword_10000E860);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v115 - v17;
  v126 = type metadata accessor for ActivityDescriptor();
  v19 = *(v126 - 8);
  __chkstk_darwin(v126);
  v21 = &v115 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ActivityScene();
  v22 = swift_dynamicCastClass();
  if (v22)
  {
    v122 = v10;
    v123 = v7;
    v124 = v21;
    v23 = v22;
    swift_getKeyPath();
    v24 = a1;
    dispatch thunk of ActivityScene.subscript.getter();

    v25 = *(&v129 + 1);
    if (*(&v129 + 1))
    {
      v119 = v129;
      swift_getKeyPath();
      v120 = v23;
      dispatch thunk of ActivityScene.subscript.getter();

      v26 = v129;
      if (!v129)
      {

        (*(v19 + 56))(v18, 1, 1, v126);
        goto LABEL_13;
      }

      v118 = v12;
      v116 = v2;
      v117 = v6;
      v27 = *(v19 + 56);
      v28 = 1;
      v29 = v126;
      v27(v16, 1, 1, v126);
      sub_100007720(&qword_10001ADD0, &type metadata accessor for ActivityDescriptor, &protocol conformance descriptor for ActivityDescriptor);
      dispatch thunk of static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:)();

      v121 = v19;
      v30 = v19;
      v31 = v29;
      v32 = *(v30 + 48);
      if (v32(v16, 1, v31) != 1)
      {
        (*(v121 + 32))(v18, v16, v31);
        v28 = 0;
      }

      v27(v18, v28, 1, v31);
      if (v32(v18, 1, v31) == 1)
      {

LABEL_13:
        sub_1000043A4(v18, &qword_10001ADC8, &qword_10000E860);
        v34 = static os_log_type_t.error.getter();
        if (qword_10001A940 != -1)
        {
          v112 = v34;
          swift_once();
          v34 = v112;
        }

        os_log(_:dso:log:_:_:)(v34, &_mh_execute_header, qword_10001B6F0, "Did not receive activity scene attributes.", 42, 2, &_swiftEmptyArrayStorage);

        return;
      }

      (*(v121 + 32))(v124, v18, v31);
      type metadata accessor for JSONDecoder();
      swift_allocObject();
      JSONDecoder.init()();
      v35 = ActivityDescriptor.attributesData.getter();
      v37 = v36;
      sub_100007720(&qword_10001ADD8, &type metadata accessor for MediaLiveActivityAttributes, &protocol conformance descriptor for MediaLiveActivityAttributes);
      v38 = v125;
      v39 = v117;
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      sub_1000045B0(v35, v37);

      v40 = v123;
      (*(v123 + 56))(v38, 0, 1, v39);
      (*(v40 + 32))(v118, v38, v39);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      MediaLiveActivityAttributes.subscript.getter();
      if (!v128)
      {
        __break(1u);
        goto LABEL_44;
      }

      v41 = v25;

      sub_10000750C(&v127, &v129);
      swift_dynamicCast();
      v42 = String._bridgeToObjectiveC()();

      v43 = static os_log_type_t.default.getter();
      if (qword_10001A940 != -1)
      {
        swift_once();
      }

      v44 = qword_10001B6F0;
      sub_100003B8C(&qword_10001ADE0, &qword_10000E8C8);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_10000E800;
      *(v45 + 56) = &type metadata for String;
      v46 = sub_10000751C();
      *(v45 + 64) = v46;
      *(v45 + 32) = v119;
      *(v45 + 40) = v41;
      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v45 + 96) = &type metadata for String;
      *(v45 + 104) = v46;
      *(v45 + 72) = v47;
      *(v45 + 80) = v48;
      v49 = v42;

      os_log(_:dso:log:_:_:)(v43, &_mh_execute_header, v44, "Configuring scene for identifier: %{public}@, context: %{public}@.", 66, 2, v45);

      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v51;
      if (v50 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v52 == v53)
      {

        goto LABEL_24;
      }

      v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v54)
      {

LABEL_24:
        v55 = [objc_opt_self() mainScreen];
        [v55 bounds];
        v57 = v56;
        v59 = v58;
        v61 = v60;
        v63 = v62;

        v131.origin.x = v57;
        v131.origin.y = v59;
        v131.size.width = v61;
        v131.size.height = v63;
        CGRectGetWidth(v131);
        v64 = objc_allocWithZone(type metadata accessor for ActivitySceneMetrics());
        ActivitySceneMetrics.init(size:cornerRadius:)();
        dispatch thunk of ActivityScene.resolvedMetrics.setter();
        swift_unknownObjectWeakAssign();
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        MediaLiveActivityAttributes.subscript.getter();

        if (v130)
        {
          if (swift_dynamicCast())
          {
            v65 = Data.init(base64Encoded:options:)();
            v67 = v66;

            if (v67 >> 60 != 15)
            {
              v68 = objc_allocWithZone(MRDiscoveredGroupSession);
              sub_100007570(v65, v67);
              isa = Data._bridgeToObjectiveC()().super.isa;
              v70 = [v68 initWithData:isa];

              sub_1000075C4(v65, v67);
              if (v70)
              {

                v71 = swift_allocObject();
                *(v71 + 16) = v70;
                v72 = (objc_allocWithZone(type metadata accessor for MRUGroupSessionNearbyViewController(0)) + qword_10001AE30);
                *v72 = sub_100007610;
                v72[1] = v71;
                *&v129 = v70;
                v73 = v70;
                v74 = UIHostingController.init(rootView:)();
                v75 = v116;
                v76 = *(v116 + OBJC_IVAR____TtC20MediaRemoteUIService21ActivitySceneDelegate_groupSessionNearbyViewController);
                *(v116 + OBJC_IVAR____TtC20MediaRemoteUIService21ActivitySceneDelegate_groupSessionNearbyViewController) = v74;
                v77 = v74;

                v78 = objc_allocWithZone(type metadata accessor for SecureWindow());
                v79 = [v78 initWithWindowScene:v120];
                [v79 setRootViewController:v77];
                [v79 makeKeyAndVisible];

                sub_1000075C4(v65, v67);
                (*(v123 + 8))(v118, v39);
                (*(v121 + 8))(v124, v126);
                v80 = *(v75 + OBJC_IVAR____TtC20MediaRemoteUIService21ActivitySceneDelegate_groupSessionNearbyWindow);
                *(v75 + OBJC_IVAR____TtC20MediaRemoteUIService21ActivitySceneDelegate_groupSessionNearbyWindow) = v79;

                return;
              }

              sub_1000075C4(v65, v67);
            }
          }

          goto LABEL_46;
        }

LABEL_44:
        sub_1000043A4(&v129, &qword_10001ABC0, &qword_10000E8D0);
LABEL_46:
        *&v129 = 0;
        *(&v129 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(54);
        v113._object = 0x800000010000E120;
        v113._countAndFlagsBits = 0xD000000000000034;
        String.append(_:)(v113);
        sub_100007720(&qword_10001ADF8, &type metadata accessor for MediaLiveActivityAttributes, &protocol conformance descriptor for MediaLiveActivityAttributes);
        v114._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v114);

        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return;
      }

      v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v83 = v82;
      if (v81 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v83 == v84)
      {
      }

      else
      {
        v85 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v86 = v126;
        if ((v85 & 1) == 0)
        {

          (*(v123 + 8))(v118, v39);
          (*(v121 + 8))(v124, v86);
          return;
        }
      }

      swift_unknownObjectWeakAssign();
      v87 = [objc_opt_self() mainScreen];
      [v87 bounds];
      v89 = v88;
      v91 = v90;
      v93 = v92;
      v95 = v94;

      v132.origin.x = v89;
      v132.origin.y = v91;
      v132.size.width = v93;
      v132.size.height = v95;
      CGRectGetWidth(v132);
      v96 = objc_allocWithZone(type metadata accessor for ActivitySceneMetrics());
      ActivitySceneMetrics.init(size:cornerRadius:)();
      dispatch thunk of ActivityScene.resolvedMetrics.setter();
      v97 = static os_log_type_t.default.getter();
      v98 = v122;
      v99 = v123;
      (*(v123 + 16))(v122, v118, v39);
      if (os_log_type_enabled(v44, v97))
      {
        v100 = swift_slowAlloc();
        v125 = swift_slowAlloc();
        *&v129 = v125;
        *v100 = 136315138;
        sub_100007720(&qword_10001ADF8, &type metadata accessor for MediaLiveActivityAttributes, &protocol conformance descriptor for MediaLiveActivityAttributes);
        v101 = dispatch thunk of CustomStringConvertible.description.getter();
        v103 = v102;
        v104 = *(v99 + 8);
        v104(v98, v39);
        v105 = sub_100005AD4(v101, v103, &v129);

        *(v100 + 4) = v105;
        _os_log_impl(&_mh_execute_header, v44, v97, ">>+ vs attrs are %s", v100, 0xCu);
        sub_100003C80(v125);
      }

      else
      {
        v104 = *(v99 + 8);
        v104(v98, v39);
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      MediaLiveActivityAttributes.subscript.getter();

      if (v130)
      {
        if (swift_dynamicCast())
        {
          v106 = String._bridgeToObjectiveC()();

LABEL_41:
          v107 = [objc_allocWithZone(MRURouteRecommendationPlatterViewController) initWithRouteIdentifier:v106];

          v108 = objc_allocWithZone(type metadata accessor for SecureWindow());
          v109 = [v108 initWithWindowScene:v120];
          [v109 setRootViewController:v107];
          [v109 makeKeyAndVisible];

          v104(v118, v39);
          (*(v121 + 8))(v124, v126);
          v110 = *(v116 + OBJC_IVAR____TtC20MediaRemoteUIService21ActivitySceneDelegate_routeRecommendationWindow);
          *(v116 + OBJC_IVAR____TtC20MediaRemoteUIService21ActivitySceneDelegate_routeRecommendationWindow) = v109;

          return;
        }
      }

      else
      {
        sub_1000043A4(&v129, &qword_10001ABC0, &qword_10000E8D0);
      }

      v106 = 0;
      goto LABEL_41;
    }
  }

  v33 = static os_log_type_t.error.getter();
  if (qword_10001A940 != -1)
  {
    v111 = v33;
    swift_once();
    v33 = v111;
  }

  os_log(_:dso:log:_:_:)(v33, &_mh_execute_header, qword_10001B6F0, "Did not receive activity scene with identifier.", 47, 2, &_swiftEmptyArrayStorage);
}

_OWORD *sub_10000750C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_10000751C()
{
  result = qword_10001ADE8;
  if (!qword_10001ADE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001ADE8);
  }

  return result;
}

uint64_t sub_100007570(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1000075C4(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000045B0(result, a2);
  }

  return result;
}

uint64_t sub_1000075D8()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100007618(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003B8C(&qword_10001AE18, &qword_10000E8F0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100007780(v4, &v11);
      v5 = v11;
      result = sub_100006144(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10000750C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

uint64_t sub_100007720(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100007768(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007780(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003B8C(&qword_10001AE10, &unk_10000E8E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for MRUGroupSessionNearbyViewController(uint64_t a1)
{
  result = qword_10001AE38;
  if (!qword_10001AE38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_1000078EC@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100003B8C(&qword_10001AE88, &qword_10000EA00);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = v15 - v6;
  *v7 = static VerticalAlignment.center.getter();
  *(v7 + 1) = 0x4028000000000000;
  v7[16] = 0;
  v8 = sub_100003B8C(&qword_10001AE90, &qword_10000EA08);
  sub_100007A58(a1, &v7[*(v8 + 44)]);
  v9 = static Edge.Set.all.getter();
  v10 = &v7[*(v5 + 44)];
  *v10 = v9;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  v10[40] = 1;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100008428(v7, a2);
  v11 = a2 + *(sub_100003B8C(&qword_10001AE98, &qword_10000EA10) + 36);
  v12 = v15[5];
  *(v11 + 64) = v15[4];
  *(v11 + 80) = v12;
  *(v11 + 96) = v15[6];
  v13 = v15[1];
  *v11 = v15[0];
  *(v11 + 16) = v13;
  result = v15[3];
  *(v11 + 32) = v15[2];
  *(v11 + 48) = result;
  return result;
}

uint64_t sub_100007A58@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100003B8C(&qword_10001AEA0, &qword_10000EA18);
  v5 = v4 - 8;
  v6 = __chkstk_darwin(v4);
  v8 = &v32[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v32[-v9];
  v11 = [a1 hostInfo];
  v12 = [v11 routeType];

  *v10 = swift_getKeyPath();
  sub_100003B8C(&qword_10001AEA8, &qword_10000EA50);
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for GroupSessionRouteView(0);
  v14 = *(v13 + 20);
  v37[0] = 0;
  sub_100003B8C(&qword_10001AEB0, &qword_10000EA58);
  State.init(wrappedValue:)();
  *(v10 + v14) = v39;
  *(v10 + *(v13 + 24)) = v12;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v15 = (v10 + *(sub_100003B8C(&qword_10001AEB8, &qword_10000EA60) + 36));
  v16 = v34;
  *v15 = v33;
  v15[1] = v16;
  v15[2] = v35;
  LOBYTE(v13) = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v17 = v10 + *(v5 + 44);
  *v17 = v13;
  *(v17 + 1) = v18;
  *(v17 + 2) = v19;
  *(v17 + 3) = v20;
  *(v17 + 4) = v21;
  v17[40] = 0;
  v22 = static HorizontalAlignment.leading.getter();
  LOBYTE(v39) = 1;
  sub_100007DB0(a1, v36);
  *&v32[7] = v36[0];
  *&v32[23] = v36[1];
  *&v32[39] = v36[2];
  *&v32[55] = v36[3];
  LOBYTE(v13) = v39;
  sub_100008588(v10, v8, &qword_10001AEA0, &qword_10000EA18);
  sub_100008588(v8, a2, &qword_10001AEA0, &qword_10000EA18);
  v23 = sub_100003B8C(&qword_10001AEC0, &qword_10000EA68);
  v24 = a2 + *(v23 + 48);
  v37[0] = v22;
  v37[1] = 0;
  v38[0] = v13;
  *&v38[1] = *v32;
  *&v38[17] = *&v32[16];
  *&v38[33] = *&v32[32];
  *&v38[49] = *&v32[48];
  v25 = *&v32[63];
  *&v38[64] = *&v32[63];
  v26 = *v38;
  *v24 = v22;
  *(v24 + 16) = v26;
  v27 = *&v38[16];
  v28 = *&v38[32];
  v29 = *&v38[48];
  *(v24 + 80) = v25;
  *(v24 + 48) = v28;
  *(v24 + 64) = v29;
  *(v24 + 32) = v27;
  v30 = a2 + *(v23 + 64);
  *v30 = 0;
  *(v30 + 8) = 1;
  sub_100008588(v37, &v39, &qword_10001AEC8, &qword_10000EA70);
  sub_1000043A4(v10, &qword_10001AEA0, &qword_10000EA18);
  v39 = v22;
  v40 = v13;
  v42 = *&v32[16];
  v43 = *&v32[32];
  *v44 = *&v32[48];
  *&v44[15] = *&v32[63];
  v41 = *v32;
  sub_1000043A4(&v39, &qword_10001AEC8, &qword_10000EA70);
  return sub_1000043A4(v8, &qword_10001AEA0, &qword_10000EA18);
}

uint64_t sub_100007DB0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v4 - 8);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._countAndFlagsBits = 0x616C506572616853;
  v5._object = 0xEF20687469772079;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v5);
  v6 = [a1 hostInfo];
  v7 = [v6 displayName];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11._countAndFlagsBits = v8;
  v11._object = v10;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v11);

  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v12);
  LocalizedStringKey.init(stringInterpolation:)();
  v13 = Text.init(_:tableName:bundle:comment:)();
  v15 = v14;
  v17 = v16;
  v36 = Text.bold()();
  v37 = v18;
  v20 = v19;
  v35 = v21;
  sub_1000085F0(v13, v15, v17 & 1);

  LocalizedStringKey.init(stringLiteral:)();
  v22 = Text.init(_:tableName:bundle:comment:)();
  v24 = v23;
  v26 = v25;
  static HierarchicalShapeStyle.secondary.getter();
  v27 = Text.foregroundStyle<A>(_:)();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_1000085F0(v22, v24, v26 & 1);

  *a2 = v36;
  *(a2 + 8) = v20;
  *(a2 + 16) = v35 & 1;
  *(a2 + 24) = v37;
  *(a2 + 32) = v27;
  *(a2 + 40) = v29;
  *(a2 + 48) = v31 & 1;
  *(a2 + 56) = v33;
  sub_100008600(v36, v20, v35 & 1);

  sub_100008600(v27, v29, v31 & 1);

  sub_1000085F0(v27, v29, v31 & 1);

  sub_1000085F0(v36, v20, v35 & 1);
}

void sub_1000080D0()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for MRUGroupSessionNearbyViewController(0);
  objc_msgSendSuper2(&v10, "viewDidLoad");
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = v1;
  v3 = [objc_opt_self() clearColor];
  [v2 setBackgroundColor:v3];

  v4 = [v0 view];
  if (!v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = v4;
  v6 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"handleTap:"];
  [v5 addGestureRecognizer:v6];

  v7 = [v0 view];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 layer];

    [v9 setHitTestsAsOpaque:1];
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_100008238(void *a1)
{
  v1 = a1;
  sub_1000080D0();
}

void sub_1000082DC(char *a1)
{
  v1 = *&a1[qword_10001AE30];
  v2 = a1;
  v1();
}

id sub_100008348()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MRUGroupSessionNearbyViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100008428(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003B8C(&qword_10001AE88, &qword_10000EA00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000084BC(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.colorScheme.setter();
}

uint64_t sub_100008588(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003B8C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000085F0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100008600(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_100008614()
{
  result = qword_10001AED0;
  if (!qword_10001AED0)
  {
    sub_100003C38(&qword_10001AE98, &qword_10000EA10);
    sub_1000086A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001AED0);
  }

  return result;
}

unint64_t sub_1000086A0()
{
  result = qword_10001AED8;
  if (!qword_10001AED8)
  {
    sub_100003C38(&qword_10001AE88, &qword_10000EA00);
    sub_10000872C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001AED8);
  }

  return result;
}

unint64_t sub_10000872C()
{
  result = qword_10001AEE0;
  if (!qword_10001AEE0)
  {
    sub_100003C38(&qword_10001AEE8, qword_10000EA78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001AEE0);
  }

  return result;
}

id sub_1000087D0(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10000883C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003B8C(&qword_10001AF80, qword_10000EAB0);
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_100008924(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100003B8C(&qword_10001AF80, qword_10000EAB0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t type metadata accessor for GroupSessionRouteView(uint64_t a1)
{
  result = qword_10001AFE0;
  if (!qword_10001AFE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100008A34(uint64_t a1)
{
  sub_100008AD0(319);
  if (v1 <= 0x3F)
  {
    sub_100008B28(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for MRGroupSessionRouteType(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100008AD0(uint64_t a1)
{
  if (!qword_10001AFF0)
  {
    type metadata accessor for ColorScheme();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_10001AFF0);
    }
  }
}

void sub_100008B28(uint64_t a1)
{
  if (!qword_10001AFF8)
  {
    sub_100003C38(&qword_10001AEB0, &qword_10000EA58);
    v1 = type metadata accessor for State();
    if (!v2)
    {
      atomic_store(v1, &qword_10001AFF8);
    }
  }
}

uint64_t sub_100008BA8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003B8C(&qword_10001AEA8, &qword_10000EA50);
  __chkstk_darwin(v8);
  v10 = &v15 - v9;
  sub_100008588(v2, &v15 - v9, &qword_10001AEA8, &qword_10000EA50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorScheme();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, &_swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

__n128 sub_100008DA8@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for GroupSessionRouteView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = static Alignment.bottomTrailing.getter();
  v9 = v8;
  sub_100008FD8(v2, &v28);
  v24 = v34;
  v25 = v35;
  v26 = v36;
  v20 = v30;
  v21 = v31;
  v22 = v32;
  v23 = v33;
  v18 = v28;
  v19 = v29;
  v27[6] = v34;
  v27[7] = v35;
  v27[8] = v36;
  v27[2] = v30;
  v27[3] = v31;
  v27[4] = v32;
  v27[5] = v33;
  v27[0] = v28;
  v27[1] = v29;
  sub_100008588(&v18, v17, &qword_10001B030, &qword_10000EB50);
  sub_1000043A4(v27, &qword_10001B030, &qword_10000EB50);
  v34 = v24;
  v35 = v25;
  v36 = v26;
  v30 = v20;
  v31 = v21;
  v32 = v22;
  v33 = v23;
  v28 = v18;
  v29 = v19;
  sub_100009A38(v2, &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  sub_100009BC8(&v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v11 + v10);
  v12 = (a1 + *(sub_100003B8C(&qword_10001B038, &qword_10000EB70) + 36));
  type metadata accessor for _TaskModifier();
  static TaskPriority.userInitiated.getter();
  *v12 = &unk_10000EB68;
  v12[1] = v11;
  *a1 = v7;
  *(a1 + 8) = v9;
  v13 = v35;
  *(a1 + 112) = v34;
  *(a1 + 128) = v13;
  *(a1 + 144) = v36;
  v14 = v31;
  *(a1 + 48) = v30;
  *(a1 + 64) = v14;
  v15 = v33;
  *(a1 + 80) = v32;
  *(a1 + 96) = v15;
  result = v29;
  *(a1 + 16) = v28;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100008FD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v3 = type metadata accessor for Color.RGBColorSpace();
  v31 = *(v3 - 8);
  v32 = v3;
  __chkstk_darwin(v3);
  v30 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Image.ResizingMode();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for GroupSessionRouteView(0);
  v10 = MRGroupCompositionForMRGroupSessionRouteType();
  v11 = [objc_opt_self() symbolNameForComposition:v10];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  Image.init(_internalSystemName:)();
  v12 = enum case for Image.ResizingMode.stretch(_:);
  v27 = *(v6 + 104);
  v27(v8, enum case for Image.ResizingMode.stretch(_:), v5);
  v33 = Image.resizable(capInsets:resizingMode:)();

  v13 = *(v6 + 8);
  v13(v8, v5);
  v29 = static HierarchicalShapeStyle.secondary.getter();
  v40 = *(v28 + *(v9 + 20));
  sub_100003B8C(&qword_10001B040, &qword_10000EB78);
  State.wrappedValue.getter();
  if (!v35)
  {
    [objc_allocWithZone(UIImage) init];
  }

  Image.init(uiImage:)();
  v27(v8, v12, v5);
  v14 = Image.resizable(capInsets:resizingMode:)();

  v13(v8, v5);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v50 = 1;
  *&v49[6] = v51[0];
  *&v49[22] = v51[1];
  *&v49[38] = v51[2];
  (*(v31 + 104))(v30, enum case for Color.RGBColorSpace.sRGBLinear(_:), v32);
  v15 = Color.init(_:white:opacity:)();
  v35 = v14;
  LOWORD(v36[0]) = 1;
  *&v36[3] = *&v49[46];
  v16 = *&v49[16];
  *(&v36[2] + 2) = *&v49[32];
  *(v36 + 2) = *v49;
  v17 = *v49;
  *(&v36[1] + 2) = *&v49[16];
  __asm { FMOV            V0.2D, #10.0 }

  *(&v36[3] + 8) = _Q0;
  *(&v36[4] + 1) = v15;
  v37 = 0x4014000000000000;
  v38 = 0;
  *(a2 + 120) = 0x4014000000000000uLL;
  v23 = v36[3];
  *(a2 + 104) = v36[4];
  *(a2 + 88) = v23;
  v24 = v36[0];
  *(a2 + 24) = v35;
  *(a2 + 40) = v24;
  v25 = v36[2];
  *(a2 + 56) = v36[1];
  *(a2 + 72) = v25;
  *&v44[7] = *&v49[46];
  *v44 = *&v49[32];
  v43 = v16;
  v34[120] = 1;
  v39 = 0;
  *&v40 = v14;
  *a2 = v33;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 20) = v29;
  *(a2 + 136) = 0;
  *(&v40 + 1) = 0;
  v41 = 1;
  v42 = v17;
  *&v44[11] = _Q0;
  v45 = v15;
  v46 = 0x4014000000000000;
  v47 = 0;
  v48 = 0;

  sub_100008588(&v35, v34, &qword_10001B050, &qword_10000EB88);
  sub_1000043A4(&v40, &qword_10001B050, &qword_10000EB88);
}

uint64_t sub_100009458(uint64_t a1)
{
  v1[25] = a1;
  v2 = type metadata accessor for ColorScheme();
  v1[26] = v2;
  v1[27] = *(v2 - 8);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[30] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[31] = v4;
  v1[32] = v3;

  return _swift_task_switch(sub_100009558, v4, v3);
}

uint64_t sub_100009558()
{
  v1 = v0[25];
  v2 = (v1 + *(type metadata accessor for GroupSessionRouteView(0) + 20));
  v3 = *v2;
  v0[33] = *v2;
  v4 = v2[1];
  v0[18] = v3;
  v0[34] = v4;
  v0[19] = v4;
  v0[35] = sub_100003B8C(&qword_10001B040, &qword_10000EB78);
  State.wrappedValue.getter();
  v5 = v0[22];
  if (v5)
  {

    v6 = v0[1];

    return v6();
  }

  else
  {
    v9 = v0[28];
    v8 = v0[29];
    v10 = v0[26];
    v11 = v0[27];
    v12 = [objc_opt_self() sharedAssetsProvider];
    v0[36] = v12;
    v13 = String._bridgeToObjectiveC()();
    v0[37] = v13;
    sub_100008BA8(v8);
    (*(v11 + 104))(v9, enum case for ColorScheme.dark(_:), v10);
    v14 = static ColorScheme.== infix(_:_:)();
    v15 = *(v11 + 8);
    v15(v9, v10);
    v15(v8, v10);
    v0[2] = v0;
    v0[7] = v0 + 23;
    v0[3] = sub_100009814;
    v16 = swift_continuation_init();
    v0[17] = sub_100003B8C(&qword_10001B048, &qword_10000EB80);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_1000099D0;
    v0[13] = &unk_100014F28;
    v0[14] = v16;
    [v12 applicationIconForBundleIdentifier:v13 appearance:v14 & 1 completion:?];

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_100009814()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);

  return _swift_task_switch(sub_10000991C, v2, v1);
}

uint64_t sub_10000991C()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[34];
  v4 = v0[33];

  v5 = v0[23];
  v0[20] = v4;
  v0[21] = v3;
  v0[24] = v5;
  State.wrappedValue.setter();

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000099D0(uint64_t a1, void *a2)
{
  v3 = sub_100009E04((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return _swift_continuation_resume(v4);
}

uint64_t sub_100009A38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GroupSessionRouteView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100009A9C()
{
  v1 = type metadata accessor for GroupSessionRouteView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  sub_100003B8C(&qword_10001AEA8, &qword_10000EA50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for ColorScheme();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100009BC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GroupSessionRouteView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100009C2C()
{
  v2 = *(type metadata accessor for GroupSessionRouteView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100009CF8;

  return sub_100009458(v0 + v3);
}

uint64_t sub_100009CF8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_100009E04(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100009E4C()
{
  result = qword_10001B058;
  if (!qword_10001B058)
  {
    sub_100003C38(&qword_10001B038, &qword_10000EB70);
    sub_100009ED8();
    sub_100009F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001B058);
  }

  return result;
}

unint64_t sub_100009ED8()
{
  result = qword_10001B060;
  if (!qword_10001B060)
  {
    sub_100003C38(&qword_10001B068, qword_10000EB90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001B060);
  }

  return result;
}

unint64_t sub_100009F3C()
{
  result = qword_10001B070;
  if (!qword_10001B070)
  {
    type metadata accessor for _TaskModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001B070);
  }

  return result;
}

uint64_t sub_100009F94()
{
  sub_10000A198();
  result = OS_os_log.init(subsystem:category:)();
  static OS_os_log.routePicker = result;
  return result;
}

uint64_t *OS_os_log.routePicker.unsafeMutableAddressor()
{
  if (qword_10001A930 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.routePicker;
}

id static OS_os_log.routePicker.getter()
{
  if (qword_10001A930 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.routePicker;

  return v1;
}

uint64_t sub_10000A0A8()
{
  v0 = type metadata accessor for Logger();
  sub_10000A134(v0, qword_10001B6D8);
  sub_100003AD4(v0, qword_10001B6D8);
  if (qword_10001A930 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.routePicker;
  return Logger.init(_:)();
}

uint64_t *sub_10000A134(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_10000A198()
{
  result = qword_10001B078;
  if (!qword_10001B078)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10001B078);
  }

  return result;
}

uint64_t sub_10000A1E4()
{
  sub_10000A198();
  result = OS_os_log.init(subsystem:category:)();
  qword_10001B6F0 = result;
  return result;
}