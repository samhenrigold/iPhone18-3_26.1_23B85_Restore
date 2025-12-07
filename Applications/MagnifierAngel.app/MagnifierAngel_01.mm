uint64_t sub_100022134(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MAGOutputEventEnvironment();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v53 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for MAGOutputEventSource();
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MAGOutputEvent.EventType();
  v44 = *(v8 - 8);
  v45 = v8;
  __chkstk_darwin(v8);
  v47 = (&v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for MAGOutputEvent();
  v48 = *(v10 - 8);
  v49 = v10;
  __chkstk_darwin(v10);
  v46 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MAGSimulatedEvent.EventType();
  v57 = *(v12 - 8);
  v58 = v12;
  __chkstk_darwin(v12);
  v56 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MAGSimulatedEvent();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Logger();
  v54 = *(v18 - 8);
  v55 = v18;
  __chkstk_darwin(v18);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  static AXLog.magangel.getter();
  v21 = *(v15 + 16);
  v59 = a1;
  v21(v17, a1, v14);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v42 = v5;
    v25 = v24;
    v26 = swift_slowAlloc();
    v43 = v2;
    v41 = v26;
    v60 = v26;
    *v25 = 136315138;
    sub_10002904C(&qword_1000504A0, &type metadata accessor for MAGSimulatedEvent, &protocol conformance descriptor for MAGSimulatedEvent);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v4;
    v30 = v29;
    (*(v15 + 8))(v17, v14);
    v31 = sub_100034404(v27, v30, &v60);
    v4 = v28;

    *(v25 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v22, v23, "Handling simulated event: %s", v25, 0xCu);
    sub_100029000(v41);

    v5 = v42;
  }

  else
  {

    (*(v15 + 8))(v17, v14);
  }

  (*(v54 + 8))(v20, v55);
  v32 = v56;
  MAGSimulatedEvent.eventType.getter();
  v34 = v57;
  v33 = v58;
  if ((*(v57 + 88))(v32, v58) != enum case for MAGSimulatedEvent.EventType.announcement(_:))
  {
    return (*(v34 + 8))(v32, v33);
  }

  (*(v34 + 96))(v32, v33);
  v35 = *v32;
  v36 = v32[1];
  v37 = v47;
  *v47 = v35;
  v37[1] = v36;
  (*(v44 + 104))(v37, enum case for MAGOutputEvent.EventType.testSpeech(_:), v45);
  (*(v50 + 104))(v51, enum case for MAGOutputEventSource.magAction(_:), v52);
  (*(v5 + 104))(v53, enum case for MAGOutputEventEnvironment.angel(_:), v4);
  v38 = v46;
  MAGOutputEvent.init(_:source:environment:)();

  dispatch thunk of MAGOutputEngine.schedule(_:)();

  return (*(v48 + 8))(v38, v49);
}

void sub_1000227C0()
{
  v1 = v0;
  v2 = type metadata accessor for MAGOutputEventEnvironment();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MAGOutputEventSource();
  v43 = *(v6 - 8);
  __chkstk_darwin(v6);
  v40 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MAGOutputEvent();
  v41 = *(v8 - 8);
  v42 = v8;
  __chkstk_darwin(v8);
  v39 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for Logger();
  v10 = *(v38 - 8);
  __chkstk_darwin(v38);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);

  dispatch thunk of MAGOutputEngine.stopSpeechImmediately()();

  dispatch thunk of MAGOutputEngine.clearEventQueue()();

  dispatch thunk of MAGOutputEngine.resetSpeechContent()();

  static AXLog.magangel.getter();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v37 = v6;
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Deactivating Scene Session and/or Jindo Activity and stopping arSession", v15, 2u);
    v6 = v37;
  }

  (*(v10 + 8))(v12, v38);
  v16 = v43;
  v17 = v40;
  (*(v43 + 104))(v40, enum case for MAGOutputEventSource.liveDetection(_:), v6);
  (*(v3 + 104))(v5, enum case for MAGOutputEventEnvironment.angel(_:), v2);

  v18 = v39;
  static MAGOutputEvent.liveRecognitionStopped(source:environment:)();
  (*(v3 + 8))(v5, v2);
  (*(v16 + 8))(v17, v6);
  dispatch thunk of MAGOutputEngine.schedule(_:)();

  (*(v41 + 8))(v18, v42);
  v19 = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_arService;
  v20 = *(v1 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_arService);
  dispatch thunk of MAGARService.stopARSession()();

  v21 = *(v1 + v19);
  dispatch thunk of MAGARService.arSession.setter();

  v22 = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_figCameraViewFinder;
  swift_beginAccess();
  v23 = *(v1 + v22);
  *(v1 + v22) = 0;

  MSNMonitorEndException();
  sub_100024068();
  swift_getKeyPath();
  swift_getKeyPath();
  v44 = 0;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v44 = 0;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v44 = 0;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v44 = 0;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v44 = 0;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v44 = 0;

  static Published.subscript.setter();
  v24 = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_angelDetectionManager;
  v25 = *(*(v1 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_angelDetectionManager) + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_pulseFeedbackProcessor);
  v26 = dispatch thunk of MAGPulseFeedbackProcessor.toneGenerator.getter();

  [v26 stopPulse];
  v27 = *(*(v1 + v24) + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_pulseFeedbackProcessor);
  v28 = dispatch thunk of MAGPulseFeedbackProcessor.toneGenerator.getter();

  [v28 stopPulse];
  v29 = *(*(v1 + v24) + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_pulseFeedbackProcessor);
  v30 = dispatch thunk of MAGPulseFeedbackProcessor.doorToneGenerator.getter();

  [v30 stopPulse];
  v31 = *(*(v1 + v24) + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_pulseFeedbackProcessor);
  v32 = dispatch thunk of MAGPulseFeedbackProcessor.objectUnderstandingToneGenerator.getter();

  [v32 stopPulse];
  v33 = *(*(v1 + v24) + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_pulseFeedbackProcessor);
  v34 = dispatch thunk of MAGPulseFeedbackProcessor.pointSpeakDistanceToneGenerator.getter();

  [v34 stopPulse];
  v35 = [objc_opt_self() sharedInstance];
  [v35 setLiveRecognitionActivity:0];

  sub_100024394();
}

void sub_100022F10()
{
  v1 = v0;
  v2 = type metadata accessor for MFFeatureFlags();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v1 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_arService);
  if (*(v1 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_activeSessionPid))
  {
    v8 = v7;
    dispatch thunk of MAGARService.stopARSession()();

    sub_1000232D4();
  }

  else
  {
    v9 = v4;
    swift_getKeyPath();
    swift_getKeyPath();
    v10 = v7;

    static Published.subscript.getter();

    if ((v11[15] & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      if ((v11[14] & 1) == 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();

        static Published.subscript.getter();

        if (v11[13] == 1)
        {
          (*(v3 + 104))(v6, enum case for MFFeatureFlags.groupTextDetections(_:), v9);
          MFFeatureFlags.isEnabled.getter();
          (*(v3 + 8))(v6, v9);
        }
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if ((v11[12] & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();
    }

    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    dispatch thunk of MAGARService.startARSession(sceneDepth:personSegmentation:sceneReconstruction:)();
  }
}

uint64_t sub_1000232D4()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v57 = *(v1 - 8);
  v58 = v1;
  __chkstk_darwin(v1);
  v56 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v54 = *(v3 - 8);
  v55 = v3;
  __chkstk_darwin(v3);
  v53 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for DispatchTime();
  v52 = *(v59 - 8);
  v5 = __chkstk_darwin(v59);
  v50 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v51 = &v47 - v7;
  v8 = type metadata accessor for Logger();
  __chkstk_darwin(v8);
  String.localized.getter();
  v9 = [objc_opt_self() identifierWithPid:*(v0 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_activeSessionPid)];
  if (v9)
  {
    v10 = v9;
    sub_10000E844(0, &qword_100050440, RBSProcessHandle_ptr);
    v11 = v10;
    v12 = sub_1000289FC(v11);

    v13 = [v12 bundle];
    if (v13 && (v14 = v13, v15 = [v13 identifier], v14, v15))
    {

      String.localized.getter();
      sub_10000D3B8(&qword_100050448, &qword_1000396C0);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_100037F70;
      v17 = AXAppNameForBundleId();

      if (v17)
      {
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;
      }

      else
      {
        v18 = 0;
        v20 = 0;
      }

      aBlock = v18;
      v62 = v20;
      sub_10000D3B8(&qword_100050450, &qword_1000396C8);
      v21 = String.init<A>(describing:)();
      v23 = v22;
      *(v16 + 56) = &type metadata for String;
      *(v16 + 64) = sub_100028DB4(v21, v22, v24);
      *(v16 + 32) = v21;
      *(v16 + 40) = v23;
      static String.localizedStringWithFormat(_:_:)();
    }

    else
    {
    }
  }

  String.localized.getter();
  v25 = String._bridgeToObjectiveC()();

  v26 = String._bridgeToObjectiveC()();

  v27 = [objc_opt_self() alertControllerWithTitle:v25 message:v26 preferredStyle:1];

  String.localized.getter();
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v29 = String._bridgeToObjectiveC()();

  v65 = sub_100028D84;
  v66 = v28;
  aBlock = _NSConcreteStackBlock;
  v62 = 1107296256;
  v63 = sub_10002688C;
  v64 = &unk_10004A580;
  v30 = _Block_copy(&aBlock);

  v31 = objc_opt_self();
  v32 = [v31 actionWithTitle:v29 style:2 handler:v30];
  v49 = v32;
  _Block_release(v30);

  String.localized.getter();
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v34 = String._bridgeToObjectiveC()();

  v65 = sub_100028DA4;
  v66 = v33;
  aBlock = _NSConcreteStackBlock;
  v62 = 1107296256;
  v63 = sub_10002688C;
  v64 = &unk_10004A5A8;
  v35 = _Block_copy(&aBlock);

  v36 = [v31 actionWithTitle:v34 style:1 handler:v35];
  v48 = v36;
  _Block_release(v35);

  [v27 addAction:v32];
  [v27 addAction:v36];
  sub_10000E844(0, &qword_100050420, OS_dispatch_queue_ptr);
  v37 = static OS_dispatch_queue.main.getter();
  v38 = v50;
  static DispatchTime.now()();
  v39 = v51;
  + infix(_:_:)();
  v52 = *(v52 + 8);
  (v52)(v38, v59);
  v40 = swift_allocObject();
  *(v40 + 16) = v27;
  v65 = sub_100028DAC;
  v66 = v40;
  aBlock = _NSConcreteStackBlock;
  v62 = 1107296256;
  v63 = sub_10000288C;
  v64 = &unk_10004A5F8;
  v41 = _Block_copy(&aBlock);
  v42 = v27;
  v43 = v53;
  static DispatchQoS.unspecified.getter();
  v60 = &_swiftEmptyArrayStorage;
  sub_10002904C(&qword_10004F880, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000D3B8(&unk_100050430, &unk_100038570);
  sub_10000E1A4();
  v44 = v56;
  v45 = v58;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v41);

  (*(v57 + 8))(v44, v45);
  (*(v54 + 8))(v43, v55);
  (v52)(v39, v59);
}

uint64_t sub_100023C9C(void *a1)
{
  v2 = type metadata accessor for UISceneSessionActivationRequest();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static AXLog.magangel.getter();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "activateUIScene() activateSceneSession", v12, 2u);
  }

  (*(v7 + 8))(v9, v6);
  v13 = a1;
  UISceneSessionActivationRequest.init(role:userActivity:options:)();
  v14 = [objc_opt_self() sharedApplication];
  UIApplication.activateSceneSession(for:errorHandler:)();

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100023ED0(uint64_t a1)
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static AXLog.magangel.getter();
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
    _os_log_impl(&_mh_execute_header, v5, v6, "Could not open scene %@", v7, 0xCu);
    sub_100028E94(v8);
  }

  return (*(v2 + 8))(v4, v1);
}

void sub_100024068()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_sceneActive;
  if (*(v0 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_sceneActive) == 1)
  {
    sub_10000E844(0, &qword_100050420, OS_dispatch_queue_ptr);
    v18 = v0;
    v17 = static OS_dispatch_queue.main.getter();
    aBlock[4] = sub_100024990;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000288C;
    aBlock[3] = &unk_10004A620;
    v10 = _Block_copy(aBlock);
    static DispatchQoS.unspecified.getter();
    v19 = &_swiftEmptyArrayStorage;
    sub_10002904C(&qword_10004F880, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000D3B8(&unk_100050430, &unk_100038570);
    sub_10000E1A4();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v11 = v17;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v10);

    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v8, v5);
    v12 = v18;
    *(v18 + v9) = 0;
    *(v12 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_startedLiveRecognition) = 0;
    v13 = objc_opt_self();
    v14 = [v13 sharedInstance];
    [v14 setLiveRecognitionActive:0];

    v15 = [v13 sharedInstance];
    [v15 setLiveRecognitionOverlayOpen:0];
  }
}

void sub_100024394()
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if (v8 == 1)
  {
    UInt32._bridgeToObjectiveC()();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if (v7 == 1)
  {
    UInt32._bridgeToObjectiveC()();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if (v6 == 1)
  {
    UInt32._bridgeToObjectiveC()();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if (v5 == 1)
  {
    UInt32._bridgeToObjectiveC()();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if (v4 == 1)
  {
    UInt32._bridgeToObjectiveC()();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if (v3 == 1)
  {
    UInt32._bridgeToObjectiveC()();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if (v2 == 1)
  {
    UInt32._bridgeToObjectiveC()();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v0 = [objc_opt_self() sharedInstance];
  sub_10000E844(0, &qword_10004F8D0, NSNumber_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v0 setEnabledLiveRecognitionModes:isa];
}

void sub_100024990()
{
  v0 = [objc_allocWithZone(SBSUIMagnifierSceneSpecification) init];
  v30 = [v0 uiSceneSessionRole];

  v29 = objc_opt_self();
  v1 = [v29 sharedApplication];
  v2 = [v1 connectedScenes];

  sub_10000E844(0, &qword_100050460, UIScene_ptr);
  sub_100028E08();
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v3 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v3 = aBlock[6];
    v4 = aBlock[7];
    v5 = aBlock[8];
    v6 = aBlock[9];
    v7 = aBlock[10];
  }

  else
  {
    v6 = 0;
    v8 = -1 << *(v3 + 32);
    v4 = v3 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v3 + 56);
  }

  v28 = v5;
  v11 = (v5 + 64) >> 6;
  while (v3 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (swift_dynamicCast(), v15 = aBlock[0], v18 = v6, v19 = v7, !aBlock[0]))
    {
LABEL_26:
      sub_100028E8C(v3);

      return;
    }

LABEL_20:
    v20 = [v15 session];
    v21 = [v20 role];

    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;
    if (v22 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v24 == v25)
    {

LABEL_9:
      v12 = [v29 sharedApplication];
      v13 = [v15 session];
      aBlock[4] = sub_100024D68;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100024F24;
      aBlock[3] = &unk_10004A648;
      v14 = _Block_copy(aBlock);
      [v12 requestSceneSessionDestruction:v13 options:0 errorHandler:v14];
      _Block_release(v14);

      v15 = v13;
      goto LABEL_10;
    }

    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v27)
    {
      goto LABEL_9;
    }

LABEL_10:

    v6 = v18;
    v7 = v19;
  }

  v16 = v6;
  v17 = v7;
  v18 = v6;
  if (v7)
  {
LABEL_16:
    v19 = (v17 - 1) & v17;
    v15 = *(*(v3 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));
    if (!v15)
    {
      goto LABEL_26;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v11)
    {
      goto LABEL_26;
    }

    v17 = *(v4 + 8 * v18);
    ++v16;
    if (v17)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_100024D68(uint64_t a1)
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static AXLog.magangel.getter();
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
    _os_log_impl(&_mh_execute_header, v5, v6, "~~~~ Could not close scene %@", v7, 0xCu);
    sub_100028E94(v8);
  }

  (*(v2 + 8))(v4, v1);
  v10 = [objc_opt_self() sharedInstance];
  [v10 setLiveRecognitionActive:0];

  exit(0);
}

uint64_t sub_100024F2C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if (v6)
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if (v5)
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if (v4)
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if (v3)
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if (v2)
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  return v1;
}

void sub_100025194()
{
  if ((*(v0 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_sceneActive) & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if ((v6 & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      if ((v5 & 1) == 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();

        static Published.subscript.getter();

        if ((v4 & 1) == 0)
        {
          swift_getKeyPath();
          swift_getKeyPath();

          static Published.subscript.getter();

          if ((v3 & 1) == 0)
          {
            swift_getKeyPath();
            swift_getKeyPath();

            static Published.subscript.getter();

            if ((v2 & 1) == 0)
            {
              swift_getKeyPath();
              swift_getKeyPath();

              static Published.subscript.getter();

              if ((v1 & 1) == 0)
              {
                sub_1000227C0();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_10002540C(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_1000254CC, 0, 0);
}

uint64_t sub_1000254CC()
{
  *(v0 + 48) = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_angelDetectionManager;
  type metadata accessor for MainActor();
  *(v0 + 56) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10002556C, v2, v1);
}

uint64_t sub_10002556C()
{
  v1 = v0[6];
  v2 = v0[2];

  v3 = *(v2 + v1);
  v0[8] = v3;
  v4 = v3;

  return _swift_task_switch(sub_1000255E8, 0, 0);
}

uint64_t sub_1000255E8()
{
  v1 = v0[8];
  v0[9] = *&v1[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_videoCaptioningService];

  v4 = (&async function pointer to dispatch thunk of MAGVideoCaptioningService.resetState() + async function pointer to dispatch thunk of MAGVideoCaptioningService.resetState());
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_1000256B0;

  return v4();
}

uint64_t sub_1000256B0()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000257F4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1000257F4()
{

  static AXLog.magvideoCaptionService.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[3];
  if (v3)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Could not reset video captioning state", v7, 2u);
  }

  (*(v5 + 8))(v4, v6);

  v8 = v0[1];

  return v8();
}

void sub_100025918(uint64_t a1)
{
  v1 = sub_10000D3B8(&unk_10004F870, &qword_100038BF0);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_arService);
    v7 = dispatch thunk of MAGARService.arSession.getter();

    if (v7 && (v8 = [v7 currentFrame], v7, v8))
    {
      v9 = type metadata accessor for TaskPriority();
      (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
      type metadata accessor for MainActor();
      v10 = v5;
      v5 = v8;
      v11 = static MainActor.shared.getter();
      v12 = swift_allocObject();
      v12[2] = v11;
      v12[3] = &protocol witness table for MainActor;
      v12[4] = v10;
      v12[5] = v5;
      sub_1000107D4(0, 0, v3, &unk_1000397E8, v12);
    }

    else
    {
      *(v5 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_generatingImageCaption) = 0;
      sub_1000215BC();
    }
  }
}

uint64_t sub_100025AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = type metadata accessor for Date();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[10] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[11] = v8;
  v5[12] = v7;

  return _swift_task_switch(sub_100025BDC, v8, v7);
}

uint64_t sub_100025BDC()
{
  v1 = v0[6];
  v2 = *(v0[5] + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_angelDetectionManager);
  v0[13] = v2;
  v2;
  v3 = [v1 capturedImage];
  v0[14] = v3;
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_100025CAC;

  return sub_10000B58C(v3);
}

uint64_t sub_100025CAC()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);

  v4 = *(v1 + 96);
  v5 = *(v1 + 88);

  return _swift_task_switch(sub_100025E04, v5, v4);
}

uint64_t sub_100025E04()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[5];

  *(v4 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_generatingImageCaption) = 0;
  Date.init()();
  v5 = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_lastDescribeSceneRequestTime;
  swift_beginAccess();
  (*(v3 + 40))(v4 + v5, v1, v2);
  swift_endAccess();
  sub_100025EDC();

  v6 = v0[1];

  return v6();
}

uint64_t sub_100025EDC()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v19 = *(v3 - 8);
  v20 = v3;
  __chkstk_darwin(v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchTime();
  v18 = v6;
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v17 - v11;
  sub_10000E844(0, &qword_100050420, OS_dispatch_queue_ptr);
  v13 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v17 = *(v7 + 8);
  v17(v10, v6);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_10002962C;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000288C;
  aBlock[3] = &unk_10004A7D8;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v22 = &_swiftEmptyArrayStorage;
  sub_10002904C(&qword_10004F880, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000D3B8(&unk_100050430, &unk_100038570);
  sub_10000E1A4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v15);

  (*(v21 + 8))(v2, v0);
  (*(v19 + 8))(v5, v20);
  v17(v12, v18);
}

void sub_1000262F4(uint64_t a1)
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v14[-v6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    Date.init()();
    v10 = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_lastDescribeSceneRequestTime;
    swift_beginAccess();
    (*(v2 + 16))(v5, &v9[v10], v1);
    Date.timeIntervalSince(_:)();
    v12 = v11;
    v13 = *(v2 + 8);
    v13(v5, v1);
    v13(v7, v1);
    if (*&v9[OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_sceneRequestDeactivationDelay] <= v12)
    {
      sub_1000227C0();
    }
  }
}

uint64_t sub_10002648C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  *(v5 + 32) = a4;
  type metadata accessor for MainActor();
  *(v5 + 24) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100026528, v7, v6);
}

uint64_t sub_100026528()
{
  v1 = *(v0 + 32);

  if (getpid() != v1)
  {
    *(*(v0 + 16) + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_activeSessionPid) = *(v0 + 32);
    sub_100022F10();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100026644(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  *(v5 + 32) = a4;
  type metadata accessor for MainActor();
  *(v5 + 24) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000266E0, v7, v6);
}

uint64_t sub_1000266E0()
{
  v1 = *(v0 + 32);

  if (getpid() != v1)
  {
    v2 = *(v0 + 16);
    if (*(v2 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_activeSessionPid) == *(v0 + 32))
    {
      *(v2 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_activeSessionPid) = 0;
      sub_100022F10();
    }
  }

  v3 = *(v0 + 8);

  return v3();
}

void sub_100026808(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *&Strong[OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_activeSessionPid] = 0;
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    sub_100022F10();
  }
}

void sub_100026894(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_100026900(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1000227C0();
  }
}

void sub_100026954(uint64_t a1)
{
  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 connectedScenes];

  sub_10000E844(0, &qword_100050460, UIScene_ptr);
  sub_100028E08();
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = sub_10001DC5C(v4);

  if (v9)
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = [v5 keyWindow];
      if (v6)
      {
        v7 = v6;
        v8 = [v6 rootViewController];

        if (v8)
        {
          [v8 presentViewController:a1 animated:1 completion:0];
        }
      }
    }
  }
}

id sub_100026AB8()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_arService;
  if (qword_10004F5C0 != -1)
  {
    swift_once();
  }

  v3 = qword_100050DD0;
  *&v0[v2] = qword_100050DD0;
  v4 = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_outputEngine;
  v5 = qword_10004F580;
  v6 = v3;
  if (v5 != -1)
  {
    swift_once();
  }

  *&v0[v4] = qword_100050D90;
  v7 = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_angelPreferences;
  v8 = qword_10004F5F0;

  if (v8 != -1)
  {
    swift_once();
  }

  *&v0[v7] = qword_100050E00;
  v9 = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_angelDetectionManager;
  v10 = qword_10004F630;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_100050E40;
  *&v0[v9] = qword_100050E40;
  v12 = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_advancedEventHandler;
  v13 = qword_10004F628;
  v14 = v11;
  if (v13 != -1)
  {
    swift_once();
  }

  *&v0[v12] = static MAGAngelCompositionRoot.advancedEventHandler;
  v0[OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_startedLiveRecognition] = 0;
  v0[OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_generatingImageCaption] = 0;
  v0[OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_sceneActive] = 0;
  *&v0[OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_figCameraViewFinder] = 0;
  *&v0[OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_activeSessionPid] = 0;
  *&v0[OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_sceneRequestFrameCheckDelay] = 0x3FD6666666666666;
  *&v0[OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_sceneRequestDeactivationDelay] = 0x4024000000000000;

  Date.init()();
  v15 = &v0[OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_MagnifierSceneUIShowActivity];
  *v15 = 0xD000000000000027;
  v15[1] = 0x800000010003E4B0;
  v16 = &v0[OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_MagnifierAngelBundleID];
  *v16 = 0xD000000000000026;
  v16[1] = 0x800000010003E4E0;
  *&v0[OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_clientRequestStreamMonitorTask] = 0;
  v18.receiver = v0;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, "init");
}

id sub_100026D5C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MAGAngelAppDelegate(uint64_t a1)
{
  result = qword_100050400;
  if (!qword_100050400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100026EEC(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DetectionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DetectionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10002714C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100050410;
  if (!qword_100050410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100050410);
  }

  return result;
}

unint64_t sub_1000271A0(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100027A58(a1, a2, v4);
}

Swift::Int sub_100027218(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000D3B8(&qword_100050498, &qword_1000397F0);
  v35 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

Swift::Int sub_1000274BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000D3B8(&qword_1000504A8, &qword_1000397F8);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100027764(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000271A0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100027218(v16, a4 & 1);
      v11 = sub_1000271A0(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_100027B10();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return _objc_release_x1();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

uint64_t sub_1000278DC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000271A0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1000274BC(v16, a4 & 1);
      v11 = sub_1000271A0(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_100027C7C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

unint64_t sub_100027A58(uint64_t a1, uint64_t a2, uint64_t a3)
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

id sub_100027B10()
{
  v1 = v0;
  sub_10000D3B8(&qword_100050498, &qword_1000397F0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_100027C7C()
{
  v1 = v0;
  sub_10000D3B8(&qword_1000504A8, &qword_1000397F8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_100027DEC(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_10000E844(0, &qword_100050460, UIScene_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_10000E844(0, &qword_100050460, UIScene_ptr);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v14;
    v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

uint64_t sub_100028010(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_100028064()
{
  v1 = v0;
  v2 = sub_10000D3B8(&unk_10004F870, &qword_100038BF0);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - v3;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static AXLog.magangel.getter();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_100034404(0xD00000000000002DLL, 0x800000010003E660, &v27);
    _os_log_impl(&_mh_execute_header, v9, v10, "%s", v11, 0xCu);
    sub_100029000(v12);
  }

  (*(v6 + 8))(v8, v5);
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  type metadata accessor for MainActor();
  v14 = v1;
  v15 = static MainActor.shared.getter();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = &protocol witness table for MainActor;
  v16[4] = v14;
  *&v14[OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_clientRequestStreamMonitorTask] = sub_1000107D4(0, 0, v4, &unk_100039780, v16);

  v17 = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_angelDetectionManager;
  v18 = *&v14[OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_angelDetectionManager];

  v19 = [v18 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  MAGAREventHandler.register(_:asActionHandler:)();

  v20 = *&v14[v17];

  v21 = [v20 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  MAGOUEventHandler.register(_:handler:)();

  v22 = v14;

  v23 = [v22 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  MAGAdvancedEventHandler.register(_:asActionHandler:)();

  *(swift_allocObject() + 16) = v22;
  v24 = v22;

  dispatch thunk of AXSerialQueue.async(_:)();

  return 1;
}

id sub_100028758(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static AXLog.magangel.getter();
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  p_base_props = &MAGAngelLeadingView.base_props;
  if (os_log_type_enabled(v7, v8))
  {
    v10 = swift_slowAlloc();
    v23 = v2;
    v11 = v10;
    v24 = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_100034404(0xD000000000000032, 0x800000010003E600, &v24);
    *(v11 + 12) = 2080;
    v12 = [v6 role];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = v13;
    p_base_props = (&MAGAngelLeadingView + 64);
    v17 = sub_100034404(v16, v15, &v24);

    *(v11 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s role=%s", v11, 0x16u);
    swift_arrayDestroy();

    (*(v3 + 8))(v5, v23);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  v18 = [v6 p_base_props[421]];
  v19 = objc_allocWithZone(UISceneConfiguration);
  v20 = String._bridgeToObjectiveC()();
  v21 = [v19 initWithName:v20 sessionRole:v18];

  return v21;
}

id sub_1000289FC(uint64_t a1)
{
  v5 = 0;
  v1 = [swift_getObjCClassFromMetadata() handleForIdentifier:a1 error:&v5];
  if (v1)
  {
    v2 = v5;
  }

  else
  {
    v3 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v1;
}

void *sub_100028AC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000D3B8(&unk_10004F870, &qword_100038BF0);
  result = __chkstk_darwin(a1);
  v8 = &v16 - v7;
  if (result)
  {
    [result clientAuditToken];
    v16 = v19;
    v17 = v18;
    v9 = objc_allocWithZone(BSAuditToken);
    v18 = v17;
    v19 = v16;
    v10 = [v9 initWithAuditToken:&v18];
    v11 = [v10 pid];
    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
    type metadata accessor for MainActor();
    v13 = v3;
    v14 = static MainActor.shared.getter();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = &protocol witness table for MainActor;
    *(v15 + 32) = v11;
    *(v15 + 40) = v13;
    sub_1000107D4(0, 0, v8, a3, v15);
  }

  return result;
}

uint64_t sub_100028C60(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000EC40;

  return sub_100026644(a1, v4, v5, v6, v7);
}

uint64_t sub_100028D4C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100028D8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100028DB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100050458;
  if (!qword_100050458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100050458);
  }

  return result;
}

unint64_t sub_100028E08()
{
  result = qword_100050468;
  if (!qword_100050468)
  {
    sub_10000E844(255, &qword_100050460, UIScene_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100050468);
  }

  return result;
}

uint64_t sub_100028E70(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_100028E94(uint64_t a1)
{
  v2 = sub_10000D3B8(&unk_100050B50, &qword_100039760);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100028EFC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100028F3C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000EC40;

  return sub_10002648C(a1, v4, v5, v6, v7);
}

uint64_t sub_100029000(void *a1)
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

uint64_t sub_10002904C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100029094()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000290D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000EC40;

  return sub_10001E574(a1, v4, v5, v6);
}

uint64_t sub_100029188(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000EC40;

  return sub_100002E80(a1, v1);
}

uint64_t sub_100029220(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000EC40;

  return sub_100004BFC(a1, v1);
}

uint64_t sub_1000292B8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000DDD4;

  return sub_10000F3DC(a1, v1);
}

uint64_t sub_100029350()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000DDD4;

  return sub_10001DEC0(v2);
}

uint64_t sub_1000293E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MAGAngelClientRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100029450()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000EC40;

  return sub_10002540C(v2);
}

uint64_t sub_1000294E4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100029524()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10002956C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000EC40;

  return sub_100025AE8(a1, v4, v5, v7, v6);
}

void sub_100029898()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for MAGAngelSystemApertureViewController();
  objc_msgSendSuper2(&v11, "viewDidLoad");
  v1 = *&v0[OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_leadingView];
  if (v1)
  {
    String.localized.getter();
    v2 = String._bridgeToObjectiveC()();

    [v1 setAccessibilityLabel:v2];

    [v1 setTintColor:*&v0[OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_keyColor]];
    v3 = v1;
    v4 = [v0 view];
    if (!v4)
    {
      __break(1u);
      goto LABEL_9;
    }

    v5 = v4;
    [v4 addSubview:v3];
  }

  v6 = *&v0[OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_minimalView];
  if (!v6)
  {
LABEL_7:
    sub_100029AA0();
    return;
  }

  String.localized.getter();
  v7 = String._bridgeToObjectiveC()();

  [v6 setAccessibilityLabel:v7];

  [v6 setTintColor:*&v0[OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_keyColor]];
  v8 = v6;
  v9 = [v0 view];
  if (v9)
  {
    v10 = v9;
    [v9 addSubview:v8];

    goto LABEL_7;
  }

LABEL_9:
  __break(1u);
}

void sub_100029AA0()
{
  v1 = v0;
  v2 = type metadata accessor for UIButton.Configuration();
  __chkstk_darwin(v2 - 8);
  v4 = &v172 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_allocWithZone(type metadata accessor for MAGAngelLeadingView());
  v6 = sub_10002BA88(0);
  v7 = OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_leadingCustomView;
  v8 = *&v0[OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_leadingCustomView];
  *&v1[OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_leadingCustomView] = v6;
  v9 = v6;

  [v9 setHidden:1];
  [*&v1[v7] setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = *&v1[v7];
  v11 = [v1 view];
  if (!v11)
  {
    __break(1u);
    goto LABEL_32;
  }

  v12 = v11;
  [v11 frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  [v10 setFrame:{v14, v16, v18, v20}];
  v21 = *&v1[v7];
  String.localized.getter();
  v22 = String._bridgeToObjectiveC()();

  [v21 setAccessibilityLabel:v22];

  v23 = *&v1[v7];
  v175 = *&v1[OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_keyColor];
  [v23 setTintColor:?];
  v24 = [v1 view];
  if (!v24)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v25 = v24;
  v172 = v4;
  [v24 addSubview:{*&v1[v7], v4}];

  v179 = sub_10000D3B8(&qword_1000506C8, "\n?");
  v26 = swift_allocObject();
  v176 = xmmword_100039800;
  *(v26 + 16) = xmmword_100039800;
  v27 = [*&v1[v7] leadingAnchor];
  v28 = [v1 view];
  if (!v28)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v29 = v28;
  v30 = [v28 leadingAnchor];

  v31 = [v27 constraintEqualToAnchor:v30 constant:30.0];
  *(v26 + 32) = v31;
  v32 = [*&v1[v7] topAnchor];
  v33 = [v1 view];
  if (!v33)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v34 = v33;
  v35 = objc_opt_self();
  v36 = [v34 SBUISA_systemApertureObstructedAreaLayoutGuide];

  v37 = [v36 bottomAnchor];
  v38 = [v32 constraintEqualToAnchor:v37];

  *(v26 + 40) = v38;
  v177 = sub_10000E844(0, &qword_1000506D0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v178 = v35;
  [v35 activateConstraints:isa];

  v40 = OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_magAngelLabel;
  [*&v1[OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_magAngelLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  v41 = *&v1[v40];
  String.localized.getter();
  v42 = String._bridgeToObjectiveC()();

  [v41 setText:v42];

  [*&v1[v40] setTextColor:v175];
  [*&v1[v40] setHidden:1];
  [*&v1[v40] sizeToFit];
  v43 = *&v1[v40];
  v44 = objc_allocWithZone(UIFontMetrics);
  v45 = v43;
  v46 = [v44 initForTextStyle:UIFontTextStyleBody];
  v47 = objc_opt_self();
  v48 = [v47 preferredFontDescriptorWithTextStyle:UIFontTextStyleBody];
  [v48 pointSize];
  if (v49 <= 20.0)
  {
    v50 = v49;
  }

  else
  {
    v50 = 20.0;
  }

  v51 = objc_opt_self();
  v52 = [v51 systemFontOfSize:v50 weight:UIFontWeightMedium];
  v53 = [v46 scaledFontForFont:v52];

  [v45 setFont:v53];
  [*&v1[v40] setAdjustsFontForContentSizeCategory:1];
  [*&v1[v40] setUserInteractionEnabled:0];
  v54 = [v1 view];
  if (!v54)
  {
    goto LABEL_35;
  }

  v55 = v54;
  [v54 addSubview:*&v1[v40]];

  v56 = swift_allocObject();
  *(v56 + 16) = v176;
  v57 = [*&v1[v40] topAnchor];
  v58 = [v1 view];
  if (!v58)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v59 = v58;
  v173 = v51;
  v174 = v47;
  v60 = [v58 SBUISA_systemApertureObstructedAreaLayoutGuide];

  v61 = [v60 bottomAnchor];
  v62 = [v57 constraintEqualToAnchor:v61];

  *(v56 + 32) = v62;
  v63 = [*&v1[v40] leadingAnchor];
  v64 = [v1 view];
  if (!v64)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v65 = v64;
  v66 = [v64 leadingAnchor];

  v67 = [v63 constraintEqualToAnchor:v66 constant:72.0];
  *(v56 + 40) = v67;
  v68 = Array._bridgeToObjectiveC()().super.isa;

  [v178 activateConstraints:v68];

  v69 = OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_magAngelSubtitleLabel;
  [*&v1[OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_magAngelSubtitleLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  v70 = *&v1[v69];
  String.localized.getter();
  v71 = String._bridgeToObjectiveC()();

  [v70 setText:v71];

  v72 = *&v1[v69];
  v73 = objc_opt_self();
  v74 = v72;
  v75 = [v73 grayColor];
  [v74 setTextColor:v75];

  [*&v1[v69] setHidden:1];
  [*&v1[v69] sizeToFit];
  v76 = *&v1[v69];
  v77 = objc_allocWithZone(UIFontMetrics);
  v78 = v76;
  v79 = [v77 initForTextStyle:UIFontTextStyleFootnote];
  v80 = [v174 preferredFontDescriptorWithTextStyle:UIFontTextStyleFootnote];
  [v80 pointSize];
  if (v81 > 20.0)
  {
    v81 = 20.0;
  }

  v82 = [v173 systemFontOfSize:v81 weight:UIFontWeightMedium];
  v83 = [v79 scaledFontForFont:v82];

  [v78 setFont:v83];
  [*&v1[v69] setAdjustsFontForContentSizeCategory:1];
  [*&v1[v69] setUserInteractionEnabled:0];
  v84 = [v1 view];
  if (!v84)
  {
    goto LABEL_38;
  }

  v85 = v84;
  [v84 addSubview:*&v1[v69]];

  v86 = swift_allocObject();
  *(v86 + 16) = v176;
  v87 = [*&v1[v69] leadingAnchor];
  v88 = [v1 view];
  if (!v88)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v89 = v88;
  v90 = [v88 leadingAnchor];

  v91 = [v87 constraintEqualToAnchor:v90 constant:72.0];
  *(v86 + 32) = v91;
  v92 = [*&v1[v69] topAnchor];
  v93 = [*&v1[v40] bottomAnchor];
  v94 = [v92 constraintEqualToAnchor:v93 constant:2.0];

  *(v86 + 40) = v94;
  v95 = Array._bridgeToObjectiveC()().super.isa;

  [v178 activateConstraints:v95];

  v96 = *&v1[OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_trailingCustomView];
  [v96 setTintColor:v175];
  [v96 setHidden:1];
  [v96 setTranslatesAutoresizingMaskIntoConstraints:0];
  v97 = [v1 view];
  if (!v97)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v98 = v97;
  [v97 frame];
  v100 = v99;
  v102 = v101;
  v104 = v103;
  v106 = v105;

  [v96 setFrame:{v100, v102, v104, v106}];
  String.localized.getter();
  v107 = String._bridgeToObjectiveC()();

  [v96 setAccessibilityLabel:v107];

  v108 = [v1 view];
  if (!v108)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v109 = v108;
  [v108 addSubview:v96];

  v110 = [v1 view];
  if (!v110)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v111 = v110;
  [v110 bringSubviewToFront:v96];

  v112 = swift_allocObject();
  *(v112 + 16) = v176;
  v113 = [v96 trailingAnchor];
  v114 = [v1 view];
  if (!v114)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v115 = v114;
  v116 = [v114 trailingAnchor];

  v117 = [v113 constraintEqualToAnchor:v116 constant:-34.0];
  *(v112 + 32) = v117;
  v118 = [v96 topAnchor];
  v119 = [v1 view];
  if (!v119)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v120 = v119;
  v121 = [v119 topAnchor];

  v122 = [v118 constraintEqualToAnchor:v121 constant:50.0];
  *(v112 + 40) = v122;
  v123 = Array._bridgeToObjectiveC()().super.isa;

  [v178 activateConstraints:v123];

  v124 = objc_opt_self();
  v125 = [objc_opt_self() traitCollectionWithLegibilityWeight:1];
  v126 = [v124 sbui_systemApertureTextButtonConfigurationCompatibleWithTraitCollection:v125];

  v127 = v175;
  [v126 setBaseBackgroundColor:v175];
  [v126 setBaseForegroundColor:v127];
  String.localized.getter();
  v128 = String._bridgeToObjectiveC()();

  [v126 setTitle:v128];

  sub_10000E844(0, &qword_1000506D8, SBUISystemApertureButton_ptr);
  static UIButton.Configuration._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000E844(0, &unk_1000506E0, UIAction_ptr);
  *(swift_allocObject() + 16) = v1;
  v129 = v1;
  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v130 = UIButton.init(configuration:primaryAction:)();
  v131 = OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_stopButton;
  v132 = *&v129[OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_stopButton];
  *&v129[OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_stopButton] = v130;
  v133 = v130;

  [v133 setHidden:1];
  v134 = *&v129[v131];
  if (!v134)
  {
    goto LABEL_30;
  }

  [v134 setTranslatesAutoresizingMaskIntoConstraints:0];
  v135 = *&v129[v131];
  if (!v135)
  {
    goto LABEL_30;
  }

  v136 = v135;
  v137 = [v129 view];
  if (!v137)
  {
    goto LABEL_45;
  }

  v138 = v137;
  [v137 frame];
  v140 = v139;
  v142 = v141;
  v144 = v143;
  v146 = v145;

  [v136 setFrame:{v140, v142, v144, v146}];
  v147 = *&v129[v131];
  if (!v147)
  {
    goto LABEL_30;
  }

  v148 = v147;
  String.localized.getter();
  v149 = String._bridgeToObjectiveC()();

  [v148 setAccessibilityLabel:v149];

  v150 = *&v129[v131];
  if (!v150)
  {
    goto LABEL_30;
  }

  v151 = v150;
  v152 = [v129 view];
  if (!v152)
  {
    goto LABEL_46;
  }

  v153 = v152;
  v154 = v151;
  [v153 addSubview:v154];

  v155 = swift_allocObject();
  *(v155 + 16) = xmmword_100039810;
  v156 = [v154 leadingAnchor];

  v157 = [v129 view];
  if (!v157)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v158 = v157;
  v159 = [v157 leadingAnchor];

  v160 = [v156 constraintEqualToAnchor:v159 constant:20.0];
  *(v155 + 32) = v160;
  v161 = [v154 trailingAnchor];

  v162 = [v129 view];
  if (!v162)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v163 = v162;
  v164 = [v162 trailingAnchor];

  v165 = [v161 constraintEqualToAnchor:v164 constant:-20.0];
  *(v155 + 40) = v165;
  v166 = [v154 bottomAnchor];

  v167 = [v129 view];
  if (v167)
  {
    v168 = v167;
    v169 = [v167 bottomAnchor];

    v170 = [v166 constraintEqualToAnchor:v169 constant:-20.0];
    *(v155 + 48) = v170;
    v171 = Array._bridgeToObjectiveC()().super.isa;

    [v178 activateConstraints:v171];

LABEL_30:
    return;
  }

LABEL_49:
  __break(1u);
}

uint64_t sub_10002AD2C(uint64_t a1, uint64_t a2)
{
  v2 = sub_10000D3B8(&unk_10004F860, &qword_1000383D0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - v4;
  v6 = type metadata accessor for MAGAngelClientRequest(0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v14 - v10;
  v12 = type metadata accessor for MAGSimulatedEvent();
  (*(*(v12 - 8) + 56))(v11, 2, 13, v12);
  sub_10000DF00(v11, v9);

  sub_10000D3B8(&unk_1000506F0, &unk_100038540);
  AsyncStream.Continuation.yield(_:)();

  (*(v3 + 8))(v5, v2);
  return sub_10000DF64(v11);
}

void sub_10002AF04(void *a1, double a2, double a3)
{
  v17.receiver = v3;
  v17.super_class = type metadata accessor for MAGAngelSystemApertureViewController();
  objc_msgSendSuper2(&v17, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  v15 = sub_10002C6C8;
  v16 = v7;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_10002B290;
  v14 = &unk_10004A878;
  v8 = _Block_copy(&v11);
  v9 = v3;

  v15 = MAGAngelContentState.hash(into:);
  v16 = 0;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_10002B290;
  v14 = &unk_10004A8A0;
  v10 = _Block_copy(&v11);
  [a1 animateAlongsideTransition:v8 completion:v10];
  _Block_release(v10);
  _Block_release(v8);
}

void sub_10002B078(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_activeLayoutMode);
  switch(v3)
  {
    case 4:
      v9 = *(a2 + OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_leadingView);
      if (v9)
      {
        [v9 setHidden:1];
      }

      v10 = *(a2 + OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_trailingView);
      if (v10)
      {
        [v10 setHidden:1];
      }

      v11 = *(a2 + OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_minimalView);
      if (v11)
      {
        [v11 setHidden:1];
      }

      [*(a2 + OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_leadingCustomView) setHidden:0];
      [*(a2 + OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_trailingCustomView) setHidden:0];
      v12 = *(a2 + OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_stopButton);
      if (v12)
      {
        [v12 setHidden:0];
      }

      [*(a2 + OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_magAngelLabel) setHidden:0];
      v4 = *(a2 + OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_magAngelSubtitleLabel);
      break;
    case 3:
      v5 = *(a2 + OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_leadingView);
      if (v5)
      {
        [v5 setHidden:0];
      }

      v6 = *(a2 + OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_trailingView);
      if (v6)
      {
        [v6 setHidden:0];
      }

      [*(a2 + OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_leadingCustomView) setHidden:1];
      [*(a2 + OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_trailingCustomView) setHidden:1];
      v7 = *(a2 + OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_stopButton);
      if (v7)
      {
        [v7 setHidden:1];
      }

      [*(a2 + OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_magAngelLabel) setHidden:1];
      v4 = *(a2 + OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_magAngelSubtitleLabel);
      v8 = 1;
      goto LABEL_23;
    case 2:
      v4 = *(a2 + OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_minimalView);
      if (!v4)
      {
        return;
      }

      break;
    default:
      return;
  }

  v8 = 0;
LABEL_23:

  [v4 setHidden:v8];
}

uint64_t sub_10002B290(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

id sub_10002B378(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_angelPreferences;
  if (qword_10004F5F0 != -1)
  {
    swift_once();
  }

  *&v4[v7] = qword_100050E00;
  v8 = OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_clientRequestStream;
  v9 = qword_10004F568;

  if (v9 != -1)
  {
    swift_once();
  }

  *&v4[v8] = qword_100050D78;
  *&v4[OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_activeLayoutMode] = 0;
  *&v4[OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_contentRole] = 2;
  *&v4[OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_preferredLayoutMode] = 3;
  *&v4[OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_maximumLayoutMode] = 4;
  v10 = SBUISystemApertureElementIdentifierUnknown;
  *&v4[OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_elementIdentifier] = SBUISystemApertureElementIdentifierUnknown;
  v11 = &v4[OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_associatedAppBundleIdentifier];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_preferredHeightForBottomSafeArea;

  v13 = v10;
  *&v4[v12] = sub_10002C278();
  v14 = OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_leadingView;
  v15 = type metadata accessor for MAGAngelLeadingView();
  v16 = objc_allocWithZone(v15);
  *&v4[v14] = sub_10002BA88(1);
  v17 = OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_trailingView;
  *&v4[v17] = [objc_allocWithZone(type metadata accessor for MAGAngelTrailingView()) init];
  v18 = OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_minimalView;
  v19 = objc_allocWithZone(v15);
  *&v4[v18] = sub_10002BA88(1);
  v20 = OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_leadingCustomView;
  *&v4[v20] = [objc_allocWithZone(UIView) init];
  v21 = OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_trailingCustomView;
  *&v4[v21] = [objc_allocWithZone(type metadata accessor for MAGAngelCustomTrailingView()) init];
  v22 = OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_magAngelLabel;
  *&v4[v22] = [objc_allocWithZone(UILabel) init];
  v23 = OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_magAngelSubtitleLabel;
  *&v4[v23] = [objc_allocWithZone(UILabel) init];
  *&v4[OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_stopButton] = 0;
  v24 = OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_keyColor;
  *&v4[v24] = [objc_opt_self() systemYellowColor];
  if (a2)
  {
    v25 = String._bridgeToObjectiveC()();
  }

  else
  {
    v25 = 0;
  }

  v28.receiver = v4;
  v28.super_class = type metadata accessor for MAGAngelSystemApertureViewController();
  v26 = objc_msgSendSuper2(&v28, "initWithNibName:bundle:", v25, a3);

  return v26;
}

id sub_10002B694(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_angelPreferences;
  if (qword_10004F5F0 != -1)
  {
    swift_once();
  }

  *&v2[v4] = qword_100050E00;
  v5 = OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_clientRequestStream;
  v6 = qword_10004F568;

  if (v6 != -1)
  {
    swift_once();
  }

  *&v2[v5] = qword_100050D78;
  *&v2[OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_activeLayoutMode] = 0;
  *&v2[OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_contentRole] = 2;
  *&v2[OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_preferredLayoutMode] = 3;
  *&v2[OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_maximumLayoutMode] = 4;
  v7 = SBUISystemApertureElementIdentifierUnknown;
  *&v2[OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_elementIdentifier] = SBUISystemApertureElementIdentifierUnknown;
  v8 = &v2[OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_associatedAppBundleIdentifier];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_preferredHeightForBottomSafeArea;

  v10 = v7;
  *&v2[v9] = sub_10002C278();
  v11 = OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_leadingView;
  v12 = type metadata accessor for MAGAngelLeadingView();
  v13 = objc_allocWithZone(v12);
  *&v2[v11] = sub_10002BA88(1);
  v14 = OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_trailingView;
  *&v2[v14] = [objc_allocWithZone(type metadata accessor for MAGAngelTrailingView()) init];
  v15 = OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_minimalView;
  v16 = objc_allocWithZone(v12);
  *&v2[v15] = sub_10002BA88(1);
  v17 = OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_leadingCustomView;
  *&v2[v17] = [objc_allocWithZone(UIView) init];
  v18 = OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_trailingCustomView;
  *&v2[v18] = [objc_allocWithZone(type metadata accessor for MAGAngelCustomTrailingView()) init];
  v19 = OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_magAngelLabel;
  *&v2[v19] = [objc_allocWithZone(UILabel) init];
  v20 = OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_magAngelSubtitleLabel;
  *&v2[v20] = [objc_allocWithZone(UILabel) init];
  *&v2[OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_stopButton] = 0;
  v21 = OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_keyColor;
  *&v2[v21] = [objc_opt_self() systemYellowColor];
  v24.receiver = v2;
  v24.super_class = type metadata accessor for MAGAngelSystemApertureViewController();
  v22 = objc_msgSendSuper2(&v24, "initWithCoder:", a1);

  if (v22)
  {
  }

  return v22;
}

id sub_10002BA88(char a1)
{
  v3 = &v1[OBJC_IVAR____TtC14MagnifierAngel19MAGAngelLeadingView_compressedElementSize];
  MAGAngelContentState.hash(into:)();
  *v3 = v4;
  *(v3 + 1) = v5;
  v6 = &v1[OBJC_IVAR____TtC14MagnifierAngel19MAGAngelLeadingView_customElementSize];
  MAGAngelContentState.hash(into:)();
  *v6 = v7;
  v6[1] = v8;
  if (a1)
  {
    v9 = *v3;
    v10 = v3[1];
  }

  else
  {
    v9 = v7;
    v10 = v8;
  }

  v18.receiver = v1;
  v18.super_class = type metadata accessor for MAGAngelLeadingView();
  v11 = objc_msgSendSuper2(&v18, "initWithFrame:", 0.0, 0.0, v9, v10);
  v12 = String._bridgeToObjectiveC()();
  v13 = [objc_opt_self() systemImageNamed:v12];

  if (v13)
  {
    v14 = [v13 imageWithRenderingMode:2];
  }

  else
  {
    v14 = 0;
  }

  v15 = [objc_allocWithZone(UIImageView) initWithImage:v14];
  [v15 setFrame:{0.0, 0.0, v9, v10}];
  v16 = [objc_opt_self() systemYellowColor];
  [v15 setTintColor:v16];

  [v11 addSubview:v15];
  return v11;
}

char *sub_10002BDA0()
{
  v1 = &v0[OBJC_IVAR____TtC14MagnifierAngel20MAGAngelTrailingView_compressedElementSize];
  MAGAngelContentState.hash(into:)();
  v3 = v2;
  v5 = v4;
  *v1 = v2;
  v1[1] = v4;
  v13.receiver = v0;
  v13.super_class = type metadata accessor for MAGAngelTrailingView();
  v6 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, v3, v5);
  v7 = String._bridgeToObjectiveC()();
  v8 = [objc_opt_self() systemImageNamed:v7];

  if (v8)
  {
    v9 = [v8 imageWithRenderingMode:2];
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(UIImageView) initWithImage:v9];
  [v10 setFrame:{0.0, 0.0, *&v6[OBJC_IVAR____TtC14MagnifierAngel20MAGAngelTrailingView_compressedElementSize], *&v6[OBJC_IVAR____TtC14MagnifierAngel20MAGAngelTrailingView_compressedElementSize + 8]}];
  v11 = [objc_opt_self() systemYellowColor];
  [v10 setTintColor:v11];

  [v6 addSubview:v10];
  return v6;
}

id sub_10002C1DC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10002C238()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_10002C278()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 preferredContentSizeCategory];

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    goto LABEL_14;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
LABEL_6:

    return 160.0;
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (v8 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v10 == v11)
  {
    goto LABEL_14;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v13)
  {
    goto LABEL_6;
  }

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
  {
    goto LABEL_14;
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v20)
  {
    goto LABEL_6;
  }

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;
  if (v21 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v23 == v24)
  {
LABEL_14:

    return 160.0;
  }

  v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v25)
  {
    goto LABEL_6;
  }

  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;
  if (v26 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v28 == v29)
  {

    return 145.0;
  }

  v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v30)
  {

    return 145.0;
  }

  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;
  if (v31 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v33 == v34)
  {

    return 150.0;
  }

  v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v35)
  {

    return 150.0;
  }

  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;
  if (v36 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v38 == v39)
  {

    return 140.0;
  }

  v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v40)
  {

    return 140.0;
  }

  v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v42;
  if (v41 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v43 == v44)
  {
  }

  else
  {
    v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v45 & 1) == 0)
    {
      return 120.0;
    }
  }

  return 130.0;
}

uint64_t sub_10002C6D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002C70C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002C8E4(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_10002C748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002C8E4(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t MAGAngelContentState.encode(to:)(void *a1)
{
  v2 = sub_10000D3B8(&qword_100050708, &qword_1000398D0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - v4;
  v6 = sub_10002C8A0(a1, a1[3]);
  sub_10002C8E4(v6, v7, v8);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v5, v2);
}

void *sub_10002C8A0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_10002C8E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100050710;
  if (!qword_100050710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100050710);
  }

  return result;
}

uint64_t sub_10002CA10@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_10002CA40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002FAC0(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_10002CA7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002FAC0(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_10002CAFC(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t a7)
{
  v9 = sub_10000D3B8(a4, a5);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v14 - v11;
  sub_10002C8A0(a1, a1[3]);
  a6();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_10002CC1C()
{
  isUniquelyReferenced_nonNull_native = v0;
  *(v0 + 16) = &_swiftEmptyDictionarySingleton;
  v2 = (v0 + 16);
  sub_10000D3B8(&qword_100050948, &qword_100039C20);
  v3 = static Activity.activities.getter();
  v4 = v3;
  if (v3 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    v30 = v4;
    v31 = v4 & 0xC000000000000001;
    v28 = isUniquelyReferenced_nonNull_native;
    v29 = v4 & 0xFFFFFFFFFFFFFF8;
    while (v31)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_23;
      }

LABEL_12:
      v4 = i;
      v11 = Activity.id.getter();
      v13 = v12;
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v2;
      v32 = *v2;
      v15 = v2;
      *v2 = 0x8000000000000000;
      v16 = sub_1000271A0(v11, v13);
      v18 = v14[2];
      v19 = (v17 & 1) == 0;
      v20 = __OFADD__(v18, v19);
      v21 = v18 + v19;
      if (v20)
      {
        goto LABEL_24;
      }

      v2 = v17;
      if (v14[3] < v21)
      {
        sub_1000274BC(v21, isUniquelyReferenced_nonNull_native);
        v16 = sub_1000271A0(v11, v13);
        if ((v2 & 1) != (v22 & 1))
        {
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

LABEL_17:
        if (v2)
        {
          goto LABEL_4;
        }

        goto LABEL_18;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_17;
      }

      v26 = v16;
      sub_100027C7C();
      v16 = v26;
      if (v2)
      {
LABEL_4:
        v7 = v16;

        isUniquelyReferenced_nonNull_native = v32;
        *(v32[7] + 8 * v7) = v9;

        goto LABEL_5;
      }

LABEL_18:
      isUniquelyReferenced_nonNull_native = v32;
      v32[(v16 >> 6) + 8] |= 1 << v16;
      v23 = (v32[6] + 16 * v16);
      *v23 = v11;
      v23[1] = v13;
      *(v32[7] + 8 * v16) = v9;
      v24 = v32[2];
      v20 = __OFADD__(v24, 1);
      v25 = v24 + 1;
      if (v20)
      {
        goto LABEL_25;
      }

      v32[2] = v25;
LABEL_5:
      v2 = v15;
      *v15 = isUniquelyReferenced_nonNull_native;
      swift_endAccess();

      ++v6;
      i = v4;
      v8 = v10 == v4;
      v4 = v30;
      if (v8)
      {

        return v28;
      }
    }

    if (v6 >= *(v29 + 16))
    {
      goto LABEL_26;
    }

    v9 = *(v4 + 8 * v6 + 32);

    v10 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_12;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

  return isUniquelyReferenced_nonNull_native;
}

void *sub_10002CEC8()
{
  type metadata accessor for ActivityStore();
  swift_allocObject();
  result = sub_10002CC1C();
  off_100050700 = result;
  return result;
}

uint64_t sub_10002CF08()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_10002CF40()
{
  type metadata accessor for MAGAngelGateway(0);
  v0 = swift_allocObject();
  result = sub_10002CF80();
  qword_100050E68 = v0;
  return result;
}

uint64_t sub_10002CF80()
{
  v1 = v0;
  *(v0 + 16) = 0;
  Logger.init(subsystem:category:)();
  if (qword_10004F650 != -1)
  {
    swift_once();
  }

  v2 = off_100050700;
  swift_beginAccess();
  if (*(v2[2] + 16))
  {

    v4 = sub_10001DD78(v3);
    v6 = v5;

    if (v6)
    {
      v7 = v2[2];
      if (*(v7 + 16))
      {

        v8 = sub_1000271A0(v4, v6);
        v10 = v9;

        if (v10)
        {
          v11 = *(*(v7 + 56) + 8 * v8);
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }

      *(v1 + 16) = v11;
    }
  }

  return v1;
}

uint64_t sub_10002D0E8()
{
  v1[9] = v0;
  sub_10000D3B8(&qword_100050930, &qword_100039C08);
  v1[10] = swift_task_alloc();
  v2 = sub_10000D3B8(&qword_100050940, &qword_100039C18);
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();
  v3 = type metadata accessor for ActivityPresentationOptions();
  v1[14] = v3;
  v1[15] = *(v3 - 8);
  v1[16] = swift_task_alloc();

  return _swift_task_switch(sub_10002D248, 0, 0);
}

uint64_t sub_10002D248()
{
  v36 = v0;
  if (*(v0[9] + 16))
  {
    v1 = swift_task_alloc();
    v0[17] = v1;
    *v1 = v0;
    v1[1] = sub_10002D864;

    return sub_10002ED5C();
  }

  else
  {
    v3 = v0[10];
    sub_10000D3B8(&qword_100050950, &qword_100039C28);
    v4 = type metadata accessor for ActivityPresentationOptions.ActivityPresentationDestination();
    v5 = *(v4 - 8);
    v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100037F70;
    (*(v5 + 104))(v7 + v6, enum case for ActivityPresentationOptions.ActivityPresentationDestination.systemAperture(_:), v4);
    ActivityPresentationOptions.init(destinations:)();
    sub_10000D3B8(&qword_100050948, &qword_100039C20);
    Date.init(timeIntervalSinceNow:)();
    v8 = type metadata accessor for Date();
    v9 = (*(*(v8 - 8) + 56))(v3, 0, 1, v8);
    v12 = sub_10002F90C(v9, v10, v11);
    v15 = sub_10002F964(v12, v13, v14);
    sub_10002F9BC(v15, v16, v17);
    ActivityContent.init(state:staleDate:relevanceScore:)();
    v18 = static Activity.request(attributes:content:presentationOptions:platterTarget:contentSourceRequests:isEphemeral:isUnbounded:)();
    (*(v0[12] + 8))(v0[13], v0[11]);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v35 = v22;
      *v21 = 136315138;
      v23 = Activity.id.getter();
      v25 = sub_100034404(v23, v24, &v35);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v19, v20, "Requested activity (%s) successfully.", v21, 0xCu);
      sub_100029000(v22);
    }

    *(v0[9] + 16) = v18;

    if (qword_10004F650 != -1)
    {
      swift_once();
    }

    v27 = v0[15];
    v26 = v0[16];
    v28 = v0[14];
    v29 = off_100050700;
    v30 = Activity.id.getter();
    v32 = v31;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = v29[2];
    v29[2] = 0x8000000000000000;
    sub_1000278DC(v18, v30, v32, isUniquelyReferenced_nonNull_native);

    v29[2] = v35;
    swift_endAccess();

    (*(v27 + 8))(v26, v28);

    v34 = v0[1];

    return v34();
  }
}

uint64_t sub_10002D864()
{

  return _swift_task_switch(sub_10002D960, 0, 0);
}

uint64_t sub_10002D960()
{
  v35 = v0;
  v1 = v0[10];
  sub_10000D3B8(&qword_100050950, &qword_100039C28);
  v2 = type metadata accessor for ActivityPresentationOptions.ActivityPresentationDestination();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100037F70;
  (*(v3 + 104))(v5 + v4, enum case for ActivityPresentationOptions.ActivityPresentationDestination.systemAperture(_:), v2);
  ActivityPresentationOptions.init(destinations:)();
  sub_10000D3B8(&qword_100050948, &qword_100039C20);
  Date.init(timeIntervalSinceNow:)();
  v6 = type metadata accessor for Date();
  v7 = (*(*(v6 - 8) + 56))(v1, 0, 1, v6);
  v10 = sub_10002F90C(v7, v8, v9);
  v13 = sub_10002F964(v10, v11, v12);
  sub_10002F9BC(v13, v14, v15);
  ActivityContent.init(state:staleDate:relevanceScore:)();
  v16 = static Activity.request(attributes:content:presentationOptions:platterTarget:contentSourceRequests:isEphemeral:isUnbounded:)();
  (*(v0[12] + 8))(v0[13], v0[11]);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v34 = v20;
    *v19 = 136315138;
    v21 = Activity.id.getter();
    v23 = sub_100034404(v21, v22, &v34);

    *(v19 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v17, v18, "Requested activity (%s) successfully.", v19, 0xCu);
    sub_100029000(v20);
  }

  *(v0[9] + 16) = v16;

  if (qword_10004F650 != -1)
  {
    swift_once();
  }

  v25 = v0[15];
  v24 = v0[16];
  v26 = v0[14];
  v27 = off_100050700;
  v28 = Activity.id.getter();
  v30 = v29;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = v27[2];
  v27[2] = 0x8000000000000000;
  sub_1000278DC(v16, v28, v30, isUniquelyReferenced_nonNull_native);

  v27[2] = v34;
  swift_endAccess();

  (*(v25 + 8))(v24, v26);

  v32 = v0[1];

  return v32();
}

uint64_t sub_10002DEE8()
{

  v1 = OBJC_IVAR____TtC14MagnifierAngel15MAGAngelGateway_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t sub_10002DFA8()
{
  if (qword_10004F658 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000DDD4;

  return sub_10002D0E8();
}

uint64_t sub_10002E1E0(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);

  return _swift_task_switch(sub_10002E248, 0, 0);
}

uint64_t sub_10002E248()
{
  if (qword_10004F658 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_10002E30C;

  return sub_10002D0E8();
}

uint64_t sub_10002E30C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10002E448()
{
  if (qword_10004F658 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000EC40;

  return sub_10002ED5C();
}

uint64_t sub_10002E68C(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);

  return _swift_task_switch(sub_10002E6F4, 0, 0);
}

uint64_t sub_10002E6F4()
{
  if (qword_10004F658 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1000300FC;

  return sub_10002ED5C();
}

id MAGAngelProxy.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MAGAngelProxy.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MAGAngelProxy();
  return objc_msgSendSuper2(&v2, "init");
}

id MAGAngelProxy.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MAGAngelProxy();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10002E8A0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_10000EC40;

  return v6();
}

uint64_t sub_10002E988(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_10000EC40;

  return v7();
}

uint64_t sub_10002EA70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000D3B8(&unk_10004F870, &qword_100038BF0);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_100012760(a3, v23 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10000E35C(v11, &unk_10004F870, &qword_100038BF0);
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

    sub_10000E35C(a3, &unk_10004F870, &qword_100038BF0);

    return v21;
  }

LABEL_8:
  sub_10000E35C(a3, &unk_10004F870, &qword_100038BF0);
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

uint64_t sub_10002ED5C()
{
  v1 = type metadata accessor for ActivityUIDismissalPolicy();
  v0[5] = v1;
  v0[6] = *(v1 - 8);
  v0[7] = swift_task_alloc();
  sub_10000D3B8(&qword_100050930, &qword_100039C08);
  v0[8] = swift_task_alloc();
  sub_10000D3B8(&qword_100050938, &qword_100039C10);
  v0[9] = swift_task_alloc();

  return _swift_task_switch(sub_10002EE88, 0, 0);
}

uint64_t sub_10002EE88()
{
  if (qword_10004F650 != -1)
  {
LABEL_22:
    swift_once();
  }

  v1 = off_100050700;
  *(v0 + 80) = off_100050700;
  swift_beginAccess();
  v2 = v1[2];
  *(v0 + 88) = v2;
  v3 = *(v2 + 32);
  *(v0 + 128) = v3;
  v4 = 1 << v3;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v2 + 64);

  v7 = 0;
  while (v6)
  {
    v8 = v6;
LABEL_12:
    *(v0 + 96) = v8;
    *(v0 + 104) = v7;
    v6 = (v8 - 1) & v8;
    v10 = *(*(v0 + 80) + 16);
    if (*(v10 + 16))
    {
      v11 = (*(*(v0 + 88) + 48) + ((v7 << 10) | (16 * __clz(__rbit64(v8)))));
      v13 = *v11;
      v12 = v11[1];

      v14 = sub_1000271A0(v13, v12);
      v16 = v15;

      if (v16)
      {
        v20 = *(v0 + 64);
        v19 = *(v0 + 72);
        *(v0 + 112) = *(*(v10 + 56) + 8 * v14);

        Date.init(timeIntervalSinceNow:)();
        v21 = type metadata accessor for Date();
        v22 = (*(*(v21 - 8) + 56))(v20, 0, 1, v21);
        v25 = sub_10002F90C(v22, v23, v24);
        v28 = sub_10002F964(v25, v26, v27);
        sub_10002F9BC(v28, v29, v30);
        ActivityContent.init(state:staleDate:relevanceScore:)();
        v31 = sub_10000D3B8(&qword_100050940, &qword_100039C18);
        (*(*(v31 - 8) + 56))(v19, 0, 1, v31);
        static ActivityUIDismissalPolicy.immediate.getter();
        v35 = (&async function pointer to dispatch thunk of Activity.end(_:dismissalPolicy:) + async function pointer to dispatch thunk of Activity.end(_:dismissalPolicy:));
        v32 = swift_task_alloc();
        *(v0 + 120) = v32;
        *v32 = v0;
        v32[1] = sub_10002F1F8;
        v33 = *(v0 + 72);
        v34 = *(v0 + 56);

        return v35(v33, v34);
      }
    }
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v9 >= (((1 << *(v0 + 128)) + 63) >> 6))
    {
      break;
    }

    v8 = *(*(v0 + 88) + 8 * v9 + 64);
    ++v7;
    if (v8)
    {
      v7 = v9;
      goto LABEL_12;
    }
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_10002F1F8()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);

  (*(v3 + 8))(v2, v4);
  sub_10000E35C(v1, &qword_100050938, &qword_100039C10);

  return _swift_task_switch(sub_10002F3A0, 0, 0);
}

void sub_10002F3A0()
{
  v1 = *(v0 + 104);
  v2 = (*(v0 + 96) - 1) & *(v0 + 96);
  while (v2)
  {
    v3 = v2;
LABEL_8:
    *(v0 + 96) = v3;
    *(v0 + 104) = v1;
    v2 = (v3 - 1) & v3;
    v5 = *(*(v0 + 80) + 16);
    if (*(v5 + 16))
    {
      v6 = (*(*(v0 + 88) + 48) + ((v1 << 10) | (16 * __clz(__rbit64(v3)))));
      v8 = *v6;
      v7 = v6[1];

      v9 = sub_1000271A0(v8, v7);
      v11 = v10;

      if (v11)
      {
        v14 = *(v0 + 64);
        v13 = *(v0 + 72);
        *(v0 + 112) = *(*(v5 + 56) + 8 * v9);

        Date.init(timeIntervalSinceNow:)();
        v15 = type metadata accessor for Date();
        v16 = (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
        v19 = sub_10002F90C(v16, v17, v18);
        v22 = sub_10002F964(v19, v20, v21);
        sub_10002F9BC(v22, v23, v24);
        ActivityContent.init(state:staleDate:relevanceScore:)();
        v25 = sub_10000D3B8(&qword_100050940, &qword_100039C18);
        (*(*(v25 - 8) + 56))(v13, 0, 1, v25);
        static ActivityUIDismissalPolicy.immediate.getter();
        v29 = (&async function pointer to dispatch thunk of Activity.end(_:dismissalPolicy:) + async function pointer to dispatch thunk of Activity.end(_:dismissalPolicy:));
        v26 = swift_task_alloc();
        *(v0 + 120) = v26;
        *v26 = v0;
        v26[1] = sub_10002F1F8;
        v27 = *(v0 + 72);
        v28 = *(v0 + 56);

        v29(v27, v28);
        return;
      }
    }
  }

  while (1)
  {
    v4 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      return;
    }

    if (v4 >= (((1 << *(v0 + 128)) + 63) >> 6))
    {
      break;
    }

    v3 = *(*(v0 + 88) + 8 * v4 + 64);
    ++v1;
    if (v3)
    {
      v1 = v4;
      goto LABEL_8;
    }
  }

  v12 = *(v0 + 8);

  v12();
}

unint64_t sub_10002F6C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100050718;
  if (!qword_100050718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100050718);
  }

  return result;
}

uint64_t type metadata accessor for MAGAngelGateway(uint64_t a1)
{
  result = qword_100050808;
  if (!qword_100050808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002F79C(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_10002F85C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000508E8;
  if (!qword_1000508E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000508E8);
  }

  return result;
}

unint64_t sub_10002F8B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000508F0;
  if (!qword_1000508F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000508F0);
  }

  return result;
}

unint64_t sub_10002F90C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000508F8;
  if (!qword_1000508F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000508F8);
  }

  return result;
}

unint64_t sub_10002F964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100050900;
  if (!qword_100050900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100050900);
  }

  return result;
}

unint64_t sub_10002F9BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100050908;
  if (!qword_100050908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100050908);
  }

  return result;
}

unint64_t sub_10002FA14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100050910;
  if (!qword_100050910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100050910);
  }

  return result;
}

unint64_t sub_10002FA6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100050918;
  if (!qword_100050918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100050918);
  }

  return result;
}

unint64_t sub_10002FAC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100050928;
  if (!qword_100050928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100050928);
  }

  return result;
}

uint64_t sub_10002FB18()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000EC40;

  return sub_10002E68C(v2);
}

uint64_t sub_10002FBC8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000EC40;

  return sub_10002E8A0(v2, v3, v4);
}

uint64_t sub_10002FC88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000EC40;

  return sub_10002E988(a1, v4, v5, v6);
}

uint64_t sub_10002FD54()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002FD8C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000EC40;

  return sub_100012838(a1, v4);
}

uint64_t sub_10002FE44(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000DDD4;

  return sub_100012838(a1, v4);
}

uint64_t sub_10002FEFC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002FF3C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000DDD4;

  return sub_10002E1E0(v2);
}

uint64_t sub_10002FFE8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_10003003C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100050958;
  if (!qword_100050958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100050958);
  }

  return result;
}

unint64_t sub_100030094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100050960;
  if (!qword_100050960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100050960);
  }

  return result;
}

void sub_1000303B0(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v28 - v9;
  static AXLog.magangel.getter();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v29 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_100034404(0xD00000000000001FLL, 0x800000010003EF00, &v29);
    _os_log_impl(&_mh_execute_header, v11, v12, "%s", v13, 0xCu);
    sub_100029000(v14);
  }

  v15 = *(v5 + 8);
  v15(v10, v4);
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (v16)
  {
    v17 = v16;
    v18 = objc_allocWithZone(type metadata accessor for MAGAngelWindow());
    v19 = a1;
    v20 = [v18 initWithWindowScene:v17];
    v21 = OBJC_IVAR____TtC14MagnifierAngel21MAGAngelSceneDelegate_window;
    v22 = *(v2 + OBJC_IVAR____TtC14MagnifierAngel21MAGAngelSceneDelegate_window);
    *(v2 + OBJC_IVAR____TtC14MagnifierAngel21MAGAngelSceneDelegate_window) = v20;

    v23 = *(v2 + v21);
    if (v23)
    {
      v24 = v23;
      [v24 makeKeyAndVisible];
    }
  }

  else
  {
    static AXLog.magangel.getter();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "SessionSceneDelegate: Received a UIScene that is not of type UIWindowScene.", v27, 2u);
    }

    v15(v8, v4);
  }
}

void sub_100030694(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v50 = &v46 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = &v46 - v10;
  __chkstk_darwin(v9);
  v13 = &v46 - v12;
  static AXLog.magangel.getter();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v51 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_100034404(0xD00000000000001FLL, 0x800000010003EF00, &v51);
    _os_log_impl(&_mh_execute_header, v14, v15, "%s", v16, 0xCu);
    sub_100029000(v17);
  }

  v18 = *(v3 + 8);
  v18(v13, v2);
  type metadata accessor for ActivityScene();
  v19 = swift_dynamicCastClass();
  if (v19)
  {
    v20 = v19;
    v21 = a1;
    static AXLog.magangel.getter();
    v22 = v21;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v47 = v22;
      v27 = v26;
      v51 = v26;
      *v25 = 136315138;
      v28 = [v20 description];
      v48 = v20;
      v29 = v28;
      v30 = v2;
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v11;
      v33 = v32;

      v34 = v31;
      v2 = v30;
      v35 = sub_100034404(v34, v33, &v51);

      *(v25 + 4) = v35;
      v20 = v48;
      _os_log_impl(&_mh_execute_header, v23, v24, "SessionSceneDelegate: Connecting session scene: %s", v25, 0xCu);
      sub_100029000(v27);
      v22 = v47;

      v18(v46, v30);
    }

    else
    {

      v18(v11, v2);
    }

    v39 = v22;
    if ([v20 SBUI_isHostedBySystemAperture])
    {
      static AXLog.magangel.getter();
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v40, v41, "Returning system aperture view controller", v42, 2u);
      }

      v18(v50, v2);
      v43 = OBJC_IVAR____TtC14MagnifierAngel35MAGAngelSystemApertureSceneDelegate_systemApertureElementProvider;
      v44 = v49;
      [*(v49 + OBJC_IVAR____TtC14MagnifierAngel35MAGAngelSystemApertureSceneDelegate_systemApertureElementProvider) loadViewIfNeeded];
      v45 = *(v44 + v43);
      [v20 setSystemApertureElementViewControllerProvider:v45];
    }
  }

  else
  {
    static AXLog.magangel.getter();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "SessionSceneDelegate: Received a UIScene that is not of type SessionScene.", v38, 2u);
    }

    v18(v6, v2);
  }
}

char *sub_100030BDC(uint64_t a1)
{
  v19 = a1;
  v18 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v18 - 8);
  __chkstk_darwin(v18);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  *&v1[OBJC_IVAR____TtC14MagnifierAngel25MAGAngelConnectionManager_listener] = 0;
  *&v1[OBJC_IVAR____TtC14MagnifierAngel25MAGAngelConnectionManager_connection] = 0;
  v17 = OBJC_IVAR____TtC14MagnifierAngel25MAGAngelConnectionManager_queue;
  v16 = sub_10000FC70();
  static MAGAngelConstants.MachService.dispatchQueueLabel.getter();
  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100035054();
  sub_10000D3B8(&qword_100050BD8, qword_100039D68);
  sub_1000350AC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v18);
  *&v1[v17] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v1[OBJC_IVAR____TtC14MagnifierAngel25MAGAngelConnectionManager_clientRequestStream] = v19;
  v7 = type metadata accessor for MAGAngelConnectionManager();
  v23.receiver = v1;
  v23.super_class = v7;

  v8 = objc_msgSendSuper2(&v23, "init");
  v21 = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_100035110;
  *(v9 + 24) = &v20;
  aBlock[4] = sub_10003514C;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100035148;
  aBlock[3] = &unk_10004AC18;
  v10 = _Block_copy(aBlock);
  v11 = objc_opt_self();
  v12 = v8;

  v13 = [v11 listenerWithConfigurator:v10];

  _Block_release(v10);

  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  else
  {
    v15 = *&v12[OBJC_IVAR____TtC14MagnifierAngel25MAGAngelConnectionManager_listener];
    *&v12[OBJC_IVAR____TtC14MagnifierAngel25MAGAngelConnectionManager_listener] = v13;

    return v12;
  }

  return result;
}

id sub_100030F84(void *a1, uint64_t a2)
{
  static MAGAngelConstants.MachService.launchAngelMachServiceDomain.getter();
  v4 = String._bridgeToObjectiveC()();

  [a1 setDomain:v4];

  static MAGAngelConstants.MachService.launchAngelMachServiceID.getter();
  v5 = String._bridgeToObjectiveC()();

  [a1 setService:v5];

  return [a1 setDelegate:a2];
}

id sub_100031030()
{
  v1 = OBJC_IVAR____TtC14MagnifierAngel25MAGAngelConnectionManager_listener;
  v2 = *&v0[OBJC_IVAR____TtC14MagnifierAngel25MAGAngelConnectionManager_listener];
  if (v2)
  {
    [v2 invalidate];
    v3 = *&v0[v1];
    *&v0[v1] = 0;
  }

  v5.receiver = v0;
  v5.super_class = type metadata accessor for MAGAngelConnectionManager();
  return objc_msgSendSuper2(&v5, "dealloc");
}

id sub_100031180()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static AXLog.magService.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Service will start listening for clients", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  result = *(v1 + OBJC_IVAR____TtC14MagnifierAngel25MAGAngelConnectionManager_listener);
  if (result)
  {
    return [result activate];
  }

  __break(1u);
  return result;
}

void sub_1000312E0(void *a1, char *a2)
{
  [a1 setTargetQueue:*&a2[OBJC_IVAR____TtC14MagnifierAngel25MAGAngelConnectionManager_queue]];
  v4 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality:v4];

  v5 = MAGMakeServiceInterface()();
  [a1 setInterface:v5];

  [a1 setInterfaceTarget:a2];
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  v19 = sub_10003503C;
  v20 = v6;
  v15 = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_100031714;
  v18 = &unk_10004AB28;
  v7 = _Block_copy(&v15);
  v8 = a2;

  [a1 setActivationHandler:v7];
  _Block_release(v7);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v19 = sub_100035044;
  v20 = v9;
  v15 = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_100031714;
  v18 = &unk_10004AB78;
  v10 = _Block_copy(&v15);
  v11 = v8;

  [a1 setInvalidationHandler:v10];
  _Block_release(v10);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v19 = sub_10003504C;
  v20 = v12;
  v15 = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_100031714;
  v18 = &unk_10004ABC8;
  v13 = _Block_copy(&v15);
  v14 = v11;

  [a1 setInterruptionHandler:v13];
  _Block_release(v13);
}

uint64_t sub_10003158C(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static AXLog.magService.getter();
  v7 = a2;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, "%@ activation handler called", v10, 0xCu);
    sub_100028E94(v11);
  }

  return (*(v4 + 8))(v6, v3);
}

void sub_100031714(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_10003177C(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static AXLog.magService.getter();
  v7 = a2;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, "%@ invalidation handler called", v10, 0xCu);
    sub_100028E94(v11);
  }

  (*(v4 + 8))(v6, v3);
  v13 = *&v7[OBJC_IVAR____TtC14MagnifierAngel25MAGAngelConnectionManager_connection];
  *&v7[OBJC_IVAR____TtC14MagnifierAngel25MAGAngelConnectionManager_connection] = 0;
}

id sub_100031918(void *a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static AXLog.magService.getter();
  v8 = a2;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v9, v10, "%@ interruption handler called", v11, 0xCu);
    sub_100028E94(v12);
  }

  (*(v5 + 8))(v7, v4);
  return [a1 activate];
}

uint64_t sub_100031AC0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_100031BFC()
{
  v0 = sub_10000D3B8(&unk_10004F860, &qword_1000383D0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v22 - v2;
  v4 = type metadata accessor for MAGAngelClientRequest(0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static AXLog.magService.getter();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v22 = v1;
    v17 = v16;
    v18 = swift_slowAlloc();
    v23 = v0;
    v19 = v18;
    v24 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_100034404(0xD000000000000014, 0x800000010003F080, &v24);
    _os_log_impl(&_mh_execute_header, v14, v15, "Recv client message: '%s'", v17, 0xCu);
    sub_100029000(v19);
    v0 = v23;

    v1 = v22;
  }

  (*(v11 + 8))(v13, v10);
  v20 = type metadata accessor for MAGSimulatedEvent();
  (*(*(v20 - 8) + 56))(v9, 1, 13, v20);
  sub_10000DF00(v9, v7);
  sub_10000D3B8(&unk_1000506F0, &unk_100038540);
  AsyncStream.Continuation.yield(_:)();
  (*(v1 + 8))(v3, v0);
  return sub_10000DF64(v9);
}

uint64_t sub_1000320C0()
{
  v0 = sub_10000D3B8(&unk_10004F860, &qword_1000383D0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v22 - v2;
  v4 = type metadata accessor for MAGAngelClientRequest(0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static AXLog.magService.getter();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v22 = v1;
    v17 = v16;
    v18 = swift_slowAlloc();
    v23 = v0;
    v19 = v18;
    v24 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_100034404(0xD000000000000015, 0x800000010003F060, &v24);
    _os_log_impl(&_mh_execute_header, v14, v15, "Recv client message: '%s'", v17, 0xCu);
    sub_100029000(v19);
    v0 = v23;

    v1 = v22;
  }

  (*(v11 + 8))(v13, v10);
  v20 = type metadata accessor for MAGSimulatedEvent();
  (*(*(v20 - 8) + 56))(v9, 5, 13, v20);
  sub_10000DF00(v9, v7);
  sub_10000D3B8(&unk_1000506F0, &unk_100038540);
  AsyncStream.Continuation.yield(_:)();
  (*(v1 + 8))(v3, v0);
  return sub_10000DF64(v9);
}

uint64_t sub_10003244C()
{
  v0 = sub_10000D3B8(&unk_10004F860, &qword_1000383D0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v22 - v2;
  v4 = type metadata accessor for MAGAngelClientRequest(0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static AXLog.magService.getter();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v22 = v1;
    v17 = v16;
    v18 = swift_slowAlloc();
    v23 = v0;
    v19 = v18;
    v24 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_100034404(0xD00000000000001ALL, 0x800000010003F040, &v24);
    _os_log_impl(&_mh_execute_header, v14, v15, "Recv client message: '%s'", v17, 0xCu);
    sub_100029000(v19);
    v0 = v23;

    v1 = v22;
  }

  (*(v11 + 8))(v13, v10);
  v20 = type metadata accessor for MAGSimulatedEvent();
  (*(*(v20 - 8) + 56))(v9, 6, 13, v20);
  sub_10000DF00(v9, v7);
  sub_10000D3B8(&unk_1000506F0, &unk_100038540);
  AsyncStream.Continuation.yield(_:)();
  (*(v1 + 8))(v3, v0);
  return sub_10000DF64(v9);
}

uint64_t sub_1000327D8()
{
  v0 = sub_10000D3B8(&unk_10004F860, &qword_1000383D0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v22 - v2;
  v4 = type metadata accessor for MAGAngelClientRequest(0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static AXLog.magService.getter();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v22 = v1;
    v17 = v16;
    v18 = swift_slowAlloc();
    v23 = v0;
    v19 = v18;
    v24 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_100034404(0xD000000000000017, 0x800000010003F020, &v24);
    _os_log_impl(&_mh_execute_header, v14, v15, "Recv client message: '%s'", v17, 0xCu);
    sub_100029000(v19);
    v0 = v23;

    v1 = v22;
  }

  (*(v11 + 8))(v13, v10);
  v20 = type metadata accessor for MAGSimulatedEvent();
  (*(*(v20 - 8) + 56))(v9, 7, 13, v20);
  sub_10000DF00(v9, v7);
  sub_10000D3B8(&unk_1000506F0, &unk_100038540);
  AsyncStream.Continuation.yield(_:)();
  (*(v1 + 8))(v3, v0);
  return sub_10000DF64(v9);
}

uint64_t sub_100032B64()
{
  v0 = sub_10000D3B8(&unk_10004F860, &qword_1000383D0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v22 - v2;
  v4 = type metadata accessor for MAGAngelClientRequest(0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static AXLog.magService.getter();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v22 = v1;
    v17 = v16;
    v18 = swift_slowAlloc();
    v23 = v0;
    v19 = v18;
    v24 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_100034404(0xD000000000000015, 0x800000010003F000, &v24);
    _os_log_impl(&_mh_execute_header, v14, v15, "Recv client message: '%s'", v17, 0xCu);
    sub_100029000(v19);
    v0 = v23;

    v1 = v22;
  }

  (*(v11 + 8))(v13, v10);
  v20 = type metadata accessor for MAGSimulatedEvent();
  (*(*(v20 - 8) + 56))(v9, 8, 13, v20);
  sub_10000DF00(v9, v7);
  sub_10000D3B8(&unk_1000506F0, &unk_100038540);
  AsyncStream.Continuation.yield(_:)();
  (*(v1 + 8))(v3, v0);
  return sub_10000DF64(v9);
}

uint64_t sub_100032EF0()
{
  v0 = sub_10000D3B8(&unk_10004F860, &qword_1000383D0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v22 - v2;
  v4 = type metadata accessor for MAGAngelClientRequest(0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static AXLog.magService.getter();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v22 = v1;
    v17 = v16;
    v18 = swift_slowAlloc();
    v23 = v0;
    v19 = v18;
    v24 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_100034404(0xD000000000000019, 0x800000010003EFE0, &v24);
    _os_log_impl(&_mh_execute_header, v14, v15, "Recv client message: '%s'", v17, 0xCu);
    sub_100029000(v19);
    v0 = v23;

    v1 = v22;
  }

  (*(v11 + 8))(v13, v10);
  v20 = type metadata accessor for MAGSimulatedEvent();
  (*(*(v20 - 8) + 56))(v9, 9, 13, v20);
  sub_10000DF00(v9, v7);
  sub_10000D3B8(&unk_1000506F0, &unk_100038540);
  AsyncStream.Continuation.yield(_:)();
  (*(v1 + 8))(v3, v0);
  return sub_10000DF64(v9);
}

uint64_t sub_10003327C()
{
  v0 = sub_10000D3B8(&unk_10004F860, &qword_1000383D0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v22 - v2;
  v4 = type metadata accessor for MAGAngelClientRequest(0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static AXLog.magService.getter();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v22 = v1;
    v17 = v16;
    v18 = swift_slowAlloc();
    v23 = v0;
    v19 = v18;
    v24 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_100034404(0xD000000000000015, 0x800000010003EFC0, &v24);
    _os_log_impl(&_mh_execute_header, v14, v15, "Recv client message: '%s'", v17, 0xCu);
    sub_100029000(v19);
    v0 = v23;

    v1 = v22;
  }

  (*(v11 + 8))(v13, v10);
  v20 = type metadata accessor for MAGSimulatedEvent();
  (*(*(v20 - 8) + 56))(v9, 10, 13, v20);
  sub_10000DF00(v9, v7);
  sub_10000D3B8(&unk_1000506F0, &unk_100038540);
  AsyncStream.Continuation.yield(_:)();
  (*(v1 + 8))(v3, v0);
  return sub_10000DF64(v9);
}

uint64_t sub_1000336C0(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v30 = a3;
  v28 = a1;
  v29 = a2;
  v3 = sub_10000D3B8(&unk_10004F860, &qword_1000383D0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25 - v5;
  v7 = type metadata accessor for MAGAngelClientRequest(0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v25 - v11;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static AXLog.magService.getter();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v27 = v3;
    v20 = v19;
    v21 = swift_slowAlloc();
    v26 = v4;
    v22 = v21;
    v31 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_100034404(v28, v29, &v31);
    _os_log_impl(&_mh_execute_header, v17, v18, "Recv client message: '%s'", v20, 0xCu);
    sub_100029000(v22);
    v4 = v26;

    v3 = v27;
  }

  (*(v14 + 8))(v16, v13);
  v23 = type metadata accessor for MAGSimulatedEvent();
  (*(*(v23 - 8) + 56))(v12, v30, 13, v23);
  sub_10000DF00(v12, v10);
  sub_10000D3B8(&unk_1000506F0, &unk_100038540);
  AsyncStream.Continuation.yield(_:)();
  (*(v4 + 8))(v6, v3);
  return sub_10000DF64(v12);
}

uint64_t sub_100033A64()
{
  v0 = sub_10000D3B8(&unk_10004F860, &qword_1000383D0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v22 - v2;
  v4 = type metadata accessor for MAGAngelClientRequest(0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static AXLog.magService.getter();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v22 = v1;
    v17 = v16;
    v18 = swift_slowAlloc();
    v23 = v0;
    v19 = v18;
    v24 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_100034404(0xD000000000000017, 0x800000010003EFA0, &v24);
    _os_log_impl(&_mh_execute_header, v14, v15, "Recv client message: '%s'", v17, 0xCu);
    sub_100029000(v19);
    v0 = v23;

    v1 = v22;
  }

  (*(v11 + 8))(v13, v10);
  v20 = type metadata accessor for MAGSimulatedEvent();
  (*(*(v20 - 8) + 56))(v9, 13, 13, v20);
  sub_10000DF00(v9, v7);
  sub_10000D3B8(&unk_1000506F0, &unk_100038540);
  AsyncStream.Continuation.yield(_:)();
  (*(v1 + 8))(v3, v0);
  return sub_10000DF64(v9);
}

uint64_t sub_100033DF0(uint64_t a1, uint64_t a2)
{
  v34 = a1;
  v35 = a2;
  v2 = sub_10000D3B8(&unk_10004F860, &qword_1000383D0);
  v33 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v27 - v3;
  v5 = type metadata accessor for MAGAngelClientRequest(0);
  v6 = __chkstk_darwin(v5 - 8);
  v30 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v32 = &v27 - v8;
  v31 = type metadata accessor for MAGSimulatedEvent();
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  __chkstk_darwin(v13);
  v15 = &v27 - v14;
  static AXLog.magService.getter();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v28 = v4;
    v19 = v11;
    v20 = v2;
    v21 = v18;
    v22 = swift_slowAlloc();
    v36 = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_100034404(0xD000000000000011, 0x800000010003EF80, &v36);
    _os_log_impl(&_mh_execute_header, v16, v17, "Recv client message: '%s'", v21, 0xCu);
    sub_100029000(v22);

    v2 = v20;
    v11 = v19;
    v4 = v28;
  }

  (*(v12 + 8))(v15, v11);
  static MAGSimulatedEvent.decode(_:)();
  v23 = v32;
  v24 = v29;
  v25 = v31;
  (*(v29 + 16))(v32, v10, v31);
  (*(v24 + 56))(v23, 0, 13, v25);
  sub_10000DF00(v23, v30);
  sub_10000D3B8(&unk_1000506F0, &unk_100038540);
  AsyncStream.Continuation.yield(_:)();
  (*(v33 + 8))(v4, v2);
  sub_10000DF64(v23);
  return (*(v24 + 8))(v10, v25);
}

uint64_t sub_1000343B0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_100034404(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000344D0(v11, 0, 0, 1, a1, a2);
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
    sub_1000345DC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100029000(v11);
  return v7;
}

unint64_t sub_1000344D0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100034638(a5, a6);
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

uint64_t sub_1000345DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

char *sub_100034638(uint64_t a1, unint64_t a2)
{
  v3 = sub_100034684(a1, a2);
  sub_1000347B4(&off_100049BD8);
  return v3;
}

char *sub_100034684(uint64_t a1, unint64_t a2)
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

  v6 = sub_1000348A0(v5, 0);
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
        v7 = sub_1000348A0(v10, 0);
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

uint64_t sub_1000347B4(uint64_t result)
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

  result = sub_100034914(result, v11, 1, v3);
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

void *sub_1000348A0(uint64_t a1, uint64_t a2)
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

  sub_10000D3B8(&qword_100050B60, "0<");
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100034914(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000D3B8(&qword_100050B60, "0<");
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

void sub_100034A0C(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 remoteProcess];
  static MAGAngelConstants.MachService.clientEntitlement.getter();
  v8 = String._bridgeToObjectiveC()();

  v9 = [v7 hasEntitlement:v8];

  if (v9)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v1;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_100034FE4;
    *(v11 + 24) = v10;
    aBlock[4] = sub_100034FFC;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100035148;
    aBlock[3] = &unk_10004AAD8;
    v12 = _Block_copy(aBlock);
    v13 = v1;

    [a1 configureConnection:v12];
    _Block_release(v12);
    LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

    if (v12)
    {
      __break(1u);
    }

    else
    {
      [a1 activate];
      v14 = *&v13[OBJC_IVAR____TtC14MagnifierAngel25MAGAngelConnectionManager_connection];
      *&v13[OBJC_IVAR____TtC14MagnifierAngel25MAGAngelConnectionManager_connection] = a1;
      v15 = a1;
    }
  }

  else
  {
    static AXLog.magService.getter();
    v16 = a1;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      aBlock[0] = v20;
      *v19 = 136315138;
      v21 = [v16 remoteProcess];
      v22 = [v21 description];
      v29 = v3;
      v23 = v22;

      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v27 = sub_100034404(v24, v26, aBlock);

      *(v19 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v17, v18, "%s is not entitled. invalidating connection", v19, 0xCu);
      sub_100029000(v20);

      (*(v4 + 8))(v6, v29);
    }

    else
    {

      (*(v4 + 8))(v6, v3);
    }

    [v16 invalidate];
  }
}

unint64_t sub_100034DD0()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static AXLog.magService.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_100034404(0x53746E6572727563, 0xEE00292865746174, &v10);
    _os_log_impl(&_mh_execute_header, v4, v5, "Recv client message: '%s'", v6, 0xCu);
    sub_100029000(v7);
  }

  (*(v1 + 8))(v3, v0);
  if (qword_10004F560 != -1)
  {
    swift_once();
  }

  return sub_10000FF60();
}

uint64_t sub_100034FAC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100035024(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100035054()
{
  result = qword_100050BD0;
  if (!qword_100050BD0)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100050BD0);
  }

  return result;
}

unint64_t sub_1000350AC()
{
  result = qword_100050BE0;
  if (!qword_100050BE0)
  {
    sub_10000E208(&qword_100050BD8, qword_100039D68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100050BE0);
  }

  return result;
}

uint64_t sub_10003518C(int a1, int a2, int a3, int a4)
{
  if (qword_1000524F8 == -1)
  {
    if (qword_100052500)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_100035654();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_100052500)
    {
      return _availability_version_check();
    }
  }

  if (qword_1000524F0 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_10003566C();
    a3 = v10;
    a4 = v9;
    v8 = dword_1000524E0 < v11;
    if (dword_1000524E0 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_1000524E4 > a3)
      {
        return 1;
      }

      if (dword_1000524E4 >= a3)
      {
        return dword_1000524E8 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_1000524E0 < a2;
  if (dword_1000524E0 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_100035320(uint64_t result)
{
  v1 = qword_100052500;
  if (qword_100052500)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_100052500 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_1000524E0, &dword_1000524E4, &dword_1000524E8);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t + infix(_:_:)()
{
  return + infix(_:_:)();
}

{
  return + infix(_:_:)();
}