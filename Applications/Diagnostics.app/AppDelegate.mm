@interface AppDelegate
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
- (id)sceneDidDisconnect:;
- (void)application:(id)application didDiscardSceneSessions:(id)sessions;
- (void)applicationWillTerminate:;
- (void)scene:(id)scene openURLContexts:(id)contexts;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)setWindow:(id)window;
@end

@implementation AppDelegate

- (void)setWindow:(id)window
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC11Diagnostics11AppDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC11Diagnostics11AppDelegate_window) = window;
  windowCopy = window;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_1000F82D4(sceneCopy, optionsCopy);
}

- (void)scene:(id)scene openURLContexts:(id)contexts
{
  sub_10003E110(0, &qword_100201298, UIOpenURLContext_ptr);
  sub_1000AC8BC(&qword_1002012A0, &qword_100201298, UIOpenURLContext_ptr, &protocol conformance descriptor for NSObject);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  sceneCopy = scene;
  selfCopy = self;
  sub_1000F9680(v6);

  v6, v9, v10, v11, v12, v13, v14, v15;
}

- (void)sceneWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  selfCopy = self;
  sub_1000F994C();
}

- (void)sceneDidEnterBackground:(id)background
{
  backgroundCopy = background;
  selfCopy = self;
  sub_1000F9B80();
}

- (void)application:(id)application didDiscardSceneSessions:(id)sessions
{
  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  v4 = qword_10020A4F8;
  sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10017EC00;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_10003DFBC();
  *(v5 + 32) = 0xD000000000000027;
  *(v5 + 40) = 0x8000000100191D20;
  v6 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("## %@", 5, 2, &_mh_execute_header, v4, v6, v5);

  v5, v7, v8, v9, v10, v11, v12, v13;
}

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  sessionCopy = session;
  role = [sessionCopy role];
  v7 = [objc_allocWithZone(UISceneConfiguration) initWithName:0 sessionRole:role];

  type metadata accessor for AppDelegate();
  [v7 setDelegateClass:swift_getObjCClassFromMetadata()];

  return v7;
}

- (id)sceneDidDisconnect:
{
  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  v0 = qword_10020A4F8;
  sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10017EC00;
  *(v1 + 56) = &type metadata for String;
  *(v1 + 64) = sub_10003DFBC();
  *(v1 + 32) = 0xD000000000000016;
  *(v1 + 40) = 0x8000000100191D50;
  v2 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("## %@", 5, 2, &_mh_execute_header, v0, v2, v1);
  v1, v3, v4, v5, v6, v7, v8, v9;
  result = sub_1000660CC();
  if (result)
  {
    v11 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("## App is running in RVC context, terminating..", 47, 2, &_mh_execute_header, v0, v11, &_swiftEmptyArrayStorage);
    result = UIApp;
    if (UIApp)
    {

      return [result terminateWithSuccess];
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

- (void)applicationWillTerminate:
{
  sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10017EC00;
  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  v1 = qword_10020A4F8;
  v2 = sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);
  *(v0 + 56) = v2;
  v3 = sub_1000AC8BC(&qword_100201280, &qword_1001FD6F0, OS_os_log_ptr, &protocol conformance descriptor for NSObject);
  *(v0 + 64) = v3;
  *(v0 + 32) = v1;
  v43 = v1;
  v4 = static OS_os_log.default.getter();
  v5 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("## Application will terminate", 29, 2, &_mh_execute_header, v4, v5, v0);
  v0, v6, v7, v8, v9, v10, v11, v12;

  if (qword_1001FC740 != -1)
  {
    swift_once();
  }

  sub_10009E188();
  sharedApplication = [objc_opt_self() sharedApplication];
  [sharedApplication setIdleTimerDisabled:0];

  if (qword_1001FC6B8 != -1)
  {
    swift_once();
  }

  v14 = qword_10020A368;
  v15 = *(qword_10020A368 + OBJC_IVAR____TtC11Diagnostics10Assertions_isVoiceControlEnabled);
  *(qword_10020A368 + OBJC_IVAR____TtC11Diagnostics10Assertions_isVoiceControlEnabled) = 1;
  if ((v15 & 1) == 0)
  {
    SBSSpringBoardServerPort();
    SBSetVoiceControlEnabled();
  }

  v16 = *&v14[OBJC_IVAR____TtC11Diagnostics10Assertions_preventProxCardsQueue];
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1000FADCC;
  *(v18 + 24) = v17;
  v48 = sub_10003DAA4;
  v49 = v18;
  aBlock = _NSConcreteStackBlock;
  v45 = 1107296256;
  v46 = sub_100060C48;
  v47 = &unk_1001C5E38;
  v19 = _Block_copy(&aBlock);
  v20 = v14;

  dispatch_sync(v16, v19);
  _Block_release(v19);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
    goto LABEL_23;
  }

  v21 = *&v20[OBJC_IVAR____TtC11Diagnostics10Assertions_preventTaskSuspendQueue];
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1000FADD4;
  *(v23 + 24) = v22;
  v48 = sub_10003E41C;
  v49 = v23;
  aBlock = _NSConcreteStackBlock;
  v45 = 1107296256;
  v46 = sub_100060C48;
  v47 = &unk_1001C5EB0;
  v24 = _Block_copy(&aBlock);
  v25 = v20;

  dispatch_sync(v21, v24);
  _Block_release(v24);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_23:
    __break(1u);
    return;
  }

  sub_10004FE88();
  v27 = sub_100050814();
  [v27 setDiscoverableMode:*&v25[OBJC_IVAR____TtC11Diagnostics10Assertions_airDropUserSetting]];

  if (v25[OBJC_IVAR____TtC11Diagnostics10Assertions_reachabilityState] != 2)
  {
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_10017EC00;
    *(v28 + 56) = v2;
    *(v28 + 64) = v3;
    *(v28 + 32) = v43;
    v29 = v43;
    v30 = static OS_os_log.default.getter();
    v31 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Reverting Reachability state", 28, 2, &_mh_execute_header, v30, v31, v28);
    v28, v32, v33, v34, v35, v36, v37, v38;

    SBSSetReachabilityEnabled();
  }

  if (v25[OBJC_IVAR____TtC11Diagnostics10Assertions_invertClassicColorsUserSetting] != 2)
  {
    _AXSClassicInvertColorsSetEnabled();
  }

  v39 = v25[OBJC_IVAR____TtC11Diagnostics10Assertions_voiceOverCaptionsUserSetting];
  if (v39 != 2)
  {
    sharedInstance = [objc_opt_self() sharedInstance];
    [sharedInstance setEnableVoiceOverCaptions:v39 & 1];
  }

  if ((v25[OBJC_IVAR____TtC11Diagnostics10Assertions_motionCuesUserSetting + 4] & 1) == 0)
  {
    _AXSSetMotionCuesModeAndShowBanner();
  }

  if (v25[OBJC_IVAR____TtC11Diagnostics10Assertions_assistiveTouchUserSetting] != 2)
  {
    _AXSAssistiveTouchSetEnabled();
  }

  sub_1000F9F38();
  v41 = OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingAssertionEnabled;
  v25[OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingAssertionEnabled] = (v25[OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingPreferencesState] & 1) == 0;
  v42 = sub_100050814();
  [v42 setNearbySharingEnabled:(v25[v41] & 1) == 0];
}

@end