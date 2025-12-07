@interface AppDelegate
+ (uint64_t)main;
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
@end

@implementation AppDelegate

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  if (options)
  {
    type metadata accessor for LaunchOptionsKey(0);
    sub_10000CD38(&qword_100021CA0, type metadata accessor for LaunchOptionsKey, &unk_10001489C);
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  applicationCopy = application;
  selfCopy = self;
  v8 = sub_10000C034();

  return v8 & 1;
}

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  applicationCopy = application;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  v12 = sub_10000C1F8(sessionCopy);

  return v12;
}

+ (uint64_t)main
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v3 = __chkstk_darwin(v0, v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3, v6);
  v8 = &v35 - v7;
  static Logger.angel.getter();
  v9._countAndFlagsBits = 0x29286E69616DLL;
  v10._object = 0x8000000100017DC0;
  v10._countAndFlagsBits = 0xD000000000000062;
  v9._object = 0xE600000000000000;
  Logger.debugMarker(_:file:line:function:)(0, v10, 46, v9);
  v38 = *(v1 + 8);
  v38(v8, v0);
  type metadata accessor for AngelServer();
  v11 = static AngelServer.sharedInstance.getter();
  AngelServer.startUp()();

  v12 = type metadata accessor for LiveActivityDisplayingVendor();
  v13 = swift_allocObject();
  v40[3] = v12;
  v40[4] = sub_10000CD38(&unk_100021D40, type metadata accessor for LiveActivityDisplayingVendor, &unk_100014BB0);
  v40[0] = v13;
  v14 = static AngelServer.sharedInstance.getter();
  AngelServer.provideLiveActivityVendor(_:)();

  v15 = objc_opt_self();
  static RunningBoardServiceSpecification.serviceDomain.getter();
  v16 = String._bridgeToObjectiveC()();

  v17 = [v15 activateManualDomain:v16];

  type metadata accessor for AppDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v19)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = String._bridgeToObjectiveC()();
  }

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;
  type metadata accessor for Application();
  v23 = swift_getObjCClassFromMetadata();
  v24 = NSStringFromClass(v23);
  if (!v24)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = String._bridgeToObjectiveC()();
  }

  static Logger.angel.getter();

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v36 = v0;
    v28 = v27;
    v29 = swift_slowAlloc();
    v37 = v17;
    v30 = v29;
    v39 = v29;
    *v28 = 136446210;
    v31 = sub_100007624(v20, v22, &v39);

    *(v28 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v25, v26, "appDelegateClassString: %{public}s", v28, 0xCu);
    sub_1000043B8(v30);

    v38(v5, v36);
    v17 = v37;
  }

  else
  {

    v38(v5, v0);
  }

  v32 = static CommandLine.argc.getter();
  v33 = static CommandLine.unsafeArgv.getter();
  UIApplicationMain(v32, v33, v24, v19);

  if (v17)
  {
    [v17 invalidate];
    swift_unknownObjectRelease();
  }

  return sub_1000043B8(v40);
}

@end