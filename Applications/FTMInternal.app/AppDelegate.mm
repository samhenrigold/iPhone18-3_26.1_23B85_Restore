@interface AppDelegate
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (_TtC11FTMInternal11AppDelegate)init;
- (double)applicationDidEnterBackground:(uint64_t)background;
- (void)applicationDidBecomeActive:(uint64_t)active;
- (void)applicationWillTerminate:(id)terminate;
- (void)setWindow:(id)window;
@end

@implementation AppDelegate

- (void)setWindow:(id)window
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC11FTMInternal11AppDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC11FTMInternal11AppDelegate_window) = window;
  windowCopy = window;
}

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  if (options)
  {
    type metadata accessor for LaunchOptionsKey(0);
    sub_10021FE34(&qword_100377E20, type metadata accessor for LaunchOptionsKey, &unk_1002EEC8C);
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  applicationCopy = application;
  selfCopy = self;
  v8 = sub_10021F79C(selfCopy);

  return v8 & 1;
}

- (void)applicationWillTerminate:(id)terminate
{
  v4 = qword_100374FA8;
  terminateCopy = terminate;
  selfCopy = self;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = qword_100382490;
  v7 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Appdelegate - applicationWillTerminate", 38, 2, &_mh_execute_header, v6, v7, _swiftEmptyArrayStorage);
  sharedInstance = [objc_opt_self() sharedInstance];
  if (sharedInstance)
  {
    v9 = sharedInstance;
    v10 = String._bridgeToObjectiveC()();
    [v9 removeAWDConfigForAppid:v10];

    terminateCopy = v9;
    selfCopy = v10;
  }
}

- (_TtC11FTMInternal11AppDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC11FTMInternal11AppDelegate_window) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC11FTMInternal11AppDelegate_abmManager) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for AppDelegate();
  return [(AppDelegate *)&v3 init];
}

- (double)applicationDidEnterBackground:(uint64_t)background
{
  if (qword_100374FA8 != -1)
  {
    swift_once();
  }

  v1 = qword_100382490;
  v2 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Appdelegate - applicationDidEnterBackground", 43, 2, &_mh_execute_header, v1, v2, _swiftEmptyArrayStorage);
  sharedInstance = [objc_opt_self() sharedInstance];
  if (sharedInstance)
  {
    v4 = sharedInstance;
    v5 = String._bridgeToObjectiveC()();
    [v4 removeAWDConfigForAppid:v5];

    if (qword_100375020 != -1)
    {
      swift_once();
    }

    v6 = qword_100382508;
    sub_100211D70(0, v7);

    v8 = qword_100382508;
    v9 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricModelsArray;
    swift_beginAccess();
    *&v8[v9] = _swiftEmptyArrayStorage;
    v10 = v8;

    sub_10020D3C0(0);

    v11 = qword_100382508;
    *&v11[OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricModelsGraphArray] = _swiftEmptyArrayStorage;
  }

  else
  {
    v13 = static os_log_type_t.default.getter();

    return os_log(_:dso:log:type:_:)("Appdelegate - applicationDidEnterBackground ABMWrapper.sharedInstance  returned nil", 83, 2, &_mh_execute_header, v1, v13, _swiftEmptyArrayStorage);
  }

  return result;
}

- (void)applicationDidBecomeActive:(uint64_t)active
{
  if (qword_100374FA8 != -1)
  {
    swift_once();
  }

  v1 = qword_100382490;
  v2 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Appdelegate - applicationDidBecomeActive", 40, 2, &_mh_execute_header, v1, v2, _swiftEmptyArrayStorage);
  sharedInstance = [objc_opt_self() sharedInstance];
  if (sharedInstance)
  {
    v17 = sharedInstance;
    mainBundle = [objc_opt_self() mainBundle];
    if (qword_100375018 != -1)
    {
      swift_once();
    }

    v5 = qword_100382500;

    v6 = String._bridgeToObjectiveC()();

    v7 = String._bridgeToObjectiveC()();
    v8 = [mainBundle pathForResource:v6 ofType:v7];

    if (v8)
    {
      v9 = String._bridgeToObjectiveC()();
      v10 = [v17 addAWDConfigForAppId:v9 andProtofFilePath:v8];

      if (v10)
      {
        [v17 listen];
        v11 = String._bridgeToObjectiveC()();
        [v17 querySpecificMetric:v11 triggerRef:9999 triggerType:0 triggerID:*(v5 + 192) profileID:0 metricID:0];

        if (qword_100374F98 != -1)
        {
          swift_once();
        }

        v12 = qword_100382480;
        v13 = static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("successfully started listening ABM applicationDidBecomeActive", 61, 2, &_mh_execute_header, v12, v13, _swiftEmptyArrayStorage);
      }
    }

    else
    {
      if (qword_100374F98 != -1)
      {
        swift_once();
      }

      v15 = qword_100382480;
      v16 = static os_log_type_t.error.getter();
      os_log(_:dso:log:type:_:)("Metric Log File path doesn't exist", 34, 2, &_mh_execute_header, v15, v16, _swiftEmptyArrayStorage);
    }
  }

  else
  {
    v14 = static os_log_type_t.default.getter();

    os_log(_:dso:log:type:_:)("Appdelegate - applicationDidBecomeActive ABMWrapper.sharedInstance returned nil", 79, 2, &_mh_execute_header, v1, v14, _swiftEmptyArrayStorage);
  }
}

@end