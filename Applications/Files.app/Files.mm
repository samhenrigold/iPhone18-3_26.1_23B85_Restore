int main(int argc, const char **argv, const char **envp)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v7 = *(v24 - 8);
  __chkstk_darwin(v24);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  qword_1000945C8 = CFAbsoluteTimeGetCurrent();
  v14 = static CommandLine.unsafeArgv.getter();
  static CommandLine.argc.getter();
  qword_1000945D0 = v14;
  if (DOCIsInternalBuild())
  {
    v15 = objc_autoreleasePoolPush();
    sub_100002688();
    objc_autoreleasePoolPop(v15);
  }

  sub_10000623C();
  (*(v11 + 104))(v13, enum case for DispatchQoS.QoSClass.userInitiated(_:), v10);
  v16 = static OS_dispatch_queue.global(qos:)();
  (*(v11 + 8))(v13, v10);
  aBlock[4] = j__StartFINode;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002DB0;
  aBlock[3] = &unk_100089920;
  v17 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v25 = &_swiftEmptyArrayStorage;
  sub_100002C6C(&unk_100093410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000DB4C(&unk_100093A80, &qword_1000736E0);
  sub_1000035DC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v24);
  v18 = static CommandLine.argc.getter();
  v19 = static CommandLine.unsafeArgv.getter();
  type metadata accessor for AppDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v21)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = String._bridgeToObjectiveC()();
  }

  UIApplicationMain(v18, v19, 0, v21);

  return 0;
}

void sub_100002688()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 valueForKey:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100002924(v12);
    v4 = [v0 standardUserDefaults];
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 BOOLForKey:v5];

    if ((v6 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    sub_100002924(v12);
  }

  v7 = objc_allocWithZone(NSUserDefaults);
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 initWithSuiteName:v8];

  if (v9)
  {
    sub_10000DB4C(&qword_1000934A0, &qword_1000737B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000736D0;
    *(inited + 32) = 0xD000000000000013;
    *(inited + 40) = 0x8000000100074C10;
    *(inited + 48) = 1;
    *(inited + 72) = &type metadata for Bool;
    *(inited + 80) = 0xD000000000000015;
    *(inited + 88) = 0x8000000100074C30;
    *(inited + 120) = &type metadata for Bool;
    *(inited + 96) = 1;
    sub_10000298C(inited);
    swift_setDeallocating();
    sub_10000DB4C(&qword_1000934A8, &qword_1000737B8);
    swift_arrayDestroy();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v9 registerDefaults:isa];
  }
}

uint64_t sub_100002924(uint64_t a1)
{
  v2 = sub_10000DB4C(&qword_100093498, &qword_100074430);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000298C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000DB4C(&unk_100093CB0, qword_1000744B0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100034850(v4, &v13, &qword_1000934A8, &qword_1000737B8);
      v5 = v13;
      v6 = v14;
      result = sub_100009C94(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100002B74(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_100002ABC(uint64_t a1, uint64_t a2, uint64_t a3)
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

_OWORD *sub_100002B74(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100002B84(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_100002BCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002BDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002BEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002BFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002C0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002C1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002C2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002C3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002C4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002C5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002C6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100002CB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100002CFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100002D44(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10000DB94(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100002DB0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_100002FFC()
{
  v0 = type metadata accessor for DispatchQoS.QoSClass();
  v35 = *(v0 - 8);
  v36 = v0;
  __chkstk_darwin(v0);
  v34 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for DispatchQoS();
  v5 = *(v33 - 8);
  __chkstk_darwin(v33);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OSSignpostID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  setiopolicy_np(3, 0, 1);
  static os_signpost_type_t.event.getter();
  updated = updatePointsOfInterestHandler.getter();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:_:_:)();

  (*(v9 + 8))(v11, v8);
  v32 = sub_100002B84(0, &qword_100093A70, OS_dispatch_queue_ptr);
  v13 = static OS_dispatch_queue.main.getter();
  v44 = sub_100009BC8;
  v45 = 0;
  aBlock = _NSConcreteStackBlock;
  v41 = 1107296256;
  v42 = sub_100002DB0;
  v43 = &unk_10008F5E8;
  v14 = _Block_copy(&aBlock);
  static DispatchQoS.unspecified.getter();
  aBlock = &_swiftEmptyArrayStorage;
  v30 = sub_100002CB4(&unk_100093410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  v29 = sub_10000DB4C(&unk_100093A80, &qword_1000736E0);
  v31 = sub_1000035DC();
  v15 = v2;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  v16 = *(v38 + 8);
  v38 += 8;
  v28 = v16;
  v16(v4, v2);
  v17 = v5 + 8;
  v18 = *(v5 + 8);
  v27 = v17;
  v19 = v33;
  v18(v7, v33);
  v21 = v34;
  v20 = v35;
  v22 = v36;
  (*(v35 + 104))(v34, enum case for DispatchQoS.QoSClass.userInitiated(_:), v36);
  v23 = static OS_dispatch_queue.global(qos:)();
  (*(v20 + 8))(v21, v22);
  v44 = sub_100003644;
  v45 = 0;
  aBlock = _NSConcreteStackBlock;
  v41 = 1107296256;
  v42 = sub_100002DB0;
  v43 = &unk_10008F610;
  v24 = _Block_copy(&aBlock);
  static DispatchQoS.unspecified.getter();
  v39 = &_swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);

  v28(v4, v15);
  v18(v7, v19);
  v25 = [objc_opt_self() defaultCenter];
  [v25 addObserver:v37 selector:"observedApplicationDidEnterBackgroundWithSender:" name:UIApplicationDidEnterBackgroundNotification object:0];

  return 1;
}

unint64_t sub_1000035DC()
{
  result = qword_100093420;
  if (!qword_100093420)
  {
    sub_10000DB94(&unk_100093A80, &qword_1000736E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100093420);
  }

  return result;
}

void sub_100003644()
{
  v0 = [objc_opt_self() sharedInstance];
}

id sub_100003738(void *a1, void *a2)
{
  v4 = type metadata accessor for DOCUserActivityIdentifier();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a2 userActivities];
  sub_100002B84(0, &unk_100093C60, NSUserActivity_ptr);
  sub_100003A30(&qword_1000941C0, &unk_100093C60, NSUserActivity_ptr);
  v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = sub_100005198(v9);

  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = [v10 activityType];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  (*(v5 + 104))(v7, enum case for DOCUserActivityIdentifier.quickLook(_:), v4);
  v15 = DOCUserActivityIdentifier.rawValue.getter();
  v17 = v16;
  (*(v5 + 8))(v7, v4);
  if (v12 == v15 && v14 == v17)
  {

    goto LABEL_10;
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v19)
  {
LABEL_10:
    v20 = [a1 role];
    v24 = objc_allocWithZone(UISceneConfiguration);
    v22 = String._bridgeToObjectiveC()();
    v23 = [v24 initWithName:v22 sessionRole:v20];

    goto LABEL_11;
  }

LABEL_8:
  v20 = [a1 role];
  v21 = objc_allocWithZone(UISceneConfiguration);
  v22 = String._bridgeToObjectiveC()();
  v23 = [v21 initWithName:v22 sessionRole:v20];
LABEL_11:

  return v23;
}

uint64_t sub_100003A30(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100002B84(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100003A80(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v202 = a3;
  v195 = a2;
  v6 = type metadata accessor for Logger();
  v205 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v186[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v7);
  v12 = &v186[-v11];
  v13 = __chkstk_darwin(v10);
  v15 = &v186[-v14];
  v16 = __chkstk_darwin(v13);
  v196 = &v186[-v17];
  v18 = __chkstk_darwin(v16);
  v20 = &v186[-v19];
  v21 = __chkstk_darwin(v18);
  v198 = &v186[-v22];
  v23 = __chkstk_darwin(v21);
  v199 = &v186[-v24];
  v25 = __chkstk_darwin(v23);
  v203 = &v186[-v26];
  v27 = __chkstk_darwin(v25);
  v201 = &v186[-v28];
  __chkstk_darwin(v27);
  v30 = &v186[-v29];
  objc_opt_self();
  v31 = swift_dynamicCastObjCClass();
  if (v31)
  {
    v32 = v31;
    v190 = v15;
    v191 = v20;
    v189 = v12;
    v33 = objc_allocWithZone(UIWindowSceneActivationRequestOptions);
    v34 = a1;

    type metadata accessor for DRIMainViewController(0);
    v35 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v36 = *&v4[OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController];
    v197 = OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController;
    *&v4[OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController] = v35;
    v194 = v35;
    v37 = v35;

    v38 = [objc_allocWithZone(UIWindow) initWithWindowScene:v32];
    v39 = OBJC_IVAR____TtC5Files20BrowserSceneDelegate_window;
    v40 = *&v4[OBJC_IVAR____TtC5Files20BrowserSceneDelegate_window];
    *&v4[OBJC_IVAR____TtC5Files20BrowserSceneDelegate_window] = v38;
    v41 = v38;

    if (v41)
    {
      [v41 setRootViewController:v37];
    }

    static Logger.Application.getter();
    v42 = v34;
    v43 = v37;
    v44 = v4;
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();
    v200 = v44;

    v204 = v42;
    if (os_log_type_enabled(v45, v46))
    {
      v187 = v46;
      v192 = v6;
      v193 = v43;
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v188 = swift_slowAlloc();
      v206[0] = v188;
      *v47 = 136316162;
      *(v47 + 4) = sub_100005D28(0xD00000000000001FLL, 0x8000000100075B50, v206);
      *(v47 + 12) = 2080;
      v49 = [v32 session];
      v50 = [v49 persistentIdentifier];

      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v52;

      v54 = sub_100005D28(v51, v53, v206);

      *(v47 + 14) = v54;
      *(v47 + 22) = 2112;
      *(v47 + 24) = v32;
      *v48 = v32;
      *(v47 + 32) = 2112;
      v55 = *&v4[v39];
      if (!v55)
      {

        __break(1u);
        return;
      }

      v56 = v204;
      v57 = v55;
      v43 = v193;

      *(v47 + 34) = v57;
      *(v47 + 42) = 2112;
      *(v47 + 44) = v43;
      v58 = v194;
      v48[1] = v55;
      v48[2] = v58;
      v59 = v43;
      _os_log_impl(&_mh_execute_header, v45, v187, "%s: sceneIdentifier: %s scene: %@, window: %@, doc vc: %@", v47, 0x34u);
      sub_10000DB4C(&qword_1000937D0, &unk_1000743F0);
      swift_arrayDestroy();

      swift_arrayDestroy();

      v60 = *(v205 + 8);
      v6 = v192;
      v60(v30, v192);
    }

    else
    {

      v60 = *(v205 + 8);
      v60(v30, v6);
    }

    [*&v4[v39] makeKeyAndVisible];
    v69 = *&v4[v39];
    if (v69)
    {
      v70 = objc_allocWithZone(DOCAppearance);
      v71 = v69;
      v72 = [v70 init];
      [v71 setAppearance:v72];
    }

    v73 = objc_opt_self();
    v74 = [v73 sharedApplication];
    type metadata accessor for DOCApplication();
    v75 = swift_dynamicCastClass();
    if (v75)
    {
      v76 = *&v4[v197];
      if (v76)
      {
        v77 = v75;
        v78 = v76;
        [v78 setTabbedBrowserViewControllerDelegate:v77];
      }
    }

    v79 = [v73 sharedApplication];
    v80 = [v79 launchedToTest];

    if (v80)
    {
      v81 = v201;
      static Logger.Application.getter();
      v82 = Logger.logObject.getter();
      v83 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        *v84 = 0;
        _os_log_impl(&_mh_execute_header, v82, v83, "Launched in PPT, disabling scene restoration", v84, 2u);
      }

      v85 = (v60)(v81, v6);
      goto LABEL_38;
    }

    v87 = v202;
    v88 = [v202 URLContexts];
    sub_100002B84(0, &qword_100093C20, UIOpenURLContext_ptr);
    sub_100003A30(&qword_100093C28, &qword_100093C20, UIOpenURLContext_ptr);
    v89 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v89 & 0xC000000000000001) != 0)
    {
      v90 = __CocoaSet.count.getter();
    }

    else
    {
      v90 = *(v89 + 16);
    }

    v91 = v203;

    if (v90)
    {
      static Logger.Application.getter();
      v92 = v87;
      v93 = Logger.logObject.getter();
      v94 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v193 = v43;
        v201 = v96;
        v206[0] = v96;
        *v95 = 136315394;
        *(v95 + 4) = sub_100005D28(0xD00000000000001FLL, 0x8000000100075B50, v206);
        *(v95 + 12) = 2080;
        v97 = [v92 URLContexts];
        v202 = v60;
        v98 = v97;
        static Set._unconditionallyBridgeFromObjectiveC(_:)();
        v192 = v6;

        v99 = Set.description.getter();
        v101 = v100;

        v102 = sub_100005D28(v99, v101, v206);

        *(v95 + 14) = v102;
        _os_log_impl(&_mh_execute_header, v93, v94, "%s: Restore from urlContexts: %s", v95, 0x16u);
        swift_arrayDestroy();
        v43 = v193;

        (v202)(v203, v192);
      }

      else
      {

        v60(v91, v6);
      }

      v114 = [v92 URLContexts];
      v115 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1000373C0(v115);
    }

    else
    {
      sub_1000602D4();
      if (v103)
      {
        v104 = v103;
        v105 = v199;
        static Logger.Application.getter();
        swift_unknownObjectRetain();
        v106 = Logger.logObject.getter();
        v107 = static os_log_type_t.debug.getter();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v106, v107))
        {
          v108 = swift_slowAlloc();
          v203 = swift_slowAlloc();
          v206[0] = v203;
          *v108 = 136315394;
          *(v108 + 4) = sub_100005D28(0xD00000000000001FLL, 0x8000000100075B50, v206);
          *(v108 + 12) = 2080;
          v109 = [v104 description];
          v110 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v202 = v60;
          v112 = v111;

          v113 = sub_100005D28(v110, v112, v206);

          *(v108 + 14) = v113;
          _os_log_impl(&_mh_execute_header, v106, v107, "%s: Restore from folderNode: %s", v108, 0x16u);
          swift_arrayDestroy();

          (v202)(v199, v6);
        }

        else
        {

          v60(v105, v6);
        }

        ObjectType = swift_getObjectType();
        sub_10004BD6C(v104, v200, ObjectType);
        v85 = swift_unknownObjectRelease();
        goto LABEL_38;
      }

      sub_1000612C4();
      if (v116)
      {
        v117 = v116;
        v118 = sub_1000612D0();
        if (v118)
        {
          v119 = v118;
          sub_10000DB4C(&qword_100093F90, &qword_100074650);
          v120 = swift_allocObject();
          *(v120 + 16) = xmmword_1000742D0;
          *(v120 + 32) = v119;

          v121 = v198;
          static Logger.Application.getter();

          v122 = Logger.logObject.getter();
          v123 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v122, v123))
          {
            v124 = swift_slowAlloc();
            v206[0] = swift_slowAlloc();
            *v124 = 136315394;
            *(v124 + 4) = sub_100005D28(0xD00000000000001FLL, 0x8000000100075B50, v206);
            *(v124 + 12) = 2080;
            sub_10000DB4C(&unk_100093BB0, &qword_100074428);
            v125 = Array.description.getter();
            v127 = sub_100005D28(v125, v126, v206);
            v202 = v60;
            v128 = v127;

            *(v124 + 14) = v128;
            _os_log_impl(&_mh_execute_header, v122, v123, "%s: Restore from quick look node: %s", v124, 0x16u);
            swift_arrayDestroy();

            (v202)(v198, v6);
          }

          else
          {

            v60(v121, v6);
          }

          sub_10003E2C8(v120);
          goto LABEL_31;
        }
      }

      v193 = v43;
      sub_1000607C8();
      if (!v136)
      {
        v155 = [v87 shortcutItem];
        if (v155)
        {
          v156 = v155;
          v157 = v196;
          static Logger.Application.getter();
          v158 = v156;
          v159 = Logger.logObject.getter();
          v160 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v159, v160))
          {
            v161 = swift_slowAlloc();
            v162 = swift_slowAlloc();
            v163 = swift_slowAlloc();
            v206[0] = v163;
            *v161 = 136315394;
            *(v161 + 4) = sub_100005D28(0xD00000000000001FLL, 0x8000000100075B50, v206);
            *(v161 + 12) = 2112;
            *(v161 + 14) = v158;
            *v162 = v156;
            v164 = v158;
            _os_log_impl(&_mh_execute_header, v159, v160, "%s: Restore from shortcutItem: %@", v161, 0x16u);
            sub_100005A04(v162, &qword_1000937D0, &unk_1000743F0);

            sub_100034948(v163);
          }

          v60(v157, v6);
          v43 = v193;
          sub_100039484(v158);
        }

        else
        {
          v165 = [v195 stateRestorationActivity];
          v43 = v193;
          if (v165)
          {
            v166 = v165;
            v167 = v190;
            static Logger.Application.getter();
            v168 = v166;
            v169 = Logger.logObject.getter();
            v170 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v169, v170))
            {
              v171 = swift_slowAlloc();
              v203 = v168;
              v172 = v171;
              v173 = swift_slowAlloc();
              v174 = swift_slowAlloc();
              v206[0] = v174;
              *v172 = 136315394;
              *(v172 + 4) = sub_100005D28(0xD00000000000001FLL, 0x8000000100075B50, v206);
              *(v172 + 12) = 2112;
              *(v172 + 14) = v203;
              *v173 = v166;
              v175 = v203;
              _os_log_impl(&_mh_execute_header, v169, v170, "%s: Restore from stateRestorationActivity: %@", v172, 0x16u);
              sub_100005A04(v173, &qword_1000937D0, &unk_1000743F0);
              v43 = v193;

              sub_100034948(v174);

              v168 = v203;
            }

            v60(v167, v6);
            v176 = v168;
            sub_10003F198(v166);

            goto LABEL_38;
          }

          v177 = [v87 userActivities];
          sub_100002B84(0, &unk_100093C60, NSUserActivity_ptr);
          sub_100003A30(&qword_1000941C0, &unk_100093C60, NSUserActivity_ptr);
          v178 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

          v179 = sub_100005198(v178);

          if (!v179)
          {
LABEL_38:
            v130 = sub_1000062FC(v85, v86);
            if (v130)
            {
              v131 = v130;
              sub_10000DB4C(&qword_100093F90, &qword_100074650);
              v132 = swift_allocObject();
              *(v132 + 16) = xmmword_1000742D0;
              *(v132 + 32) = v131;
              sub_100002B84(0, &qword_100093C58, UIDocumentBrowserAction_ptr);
              v133 = v43;
              v134 = v131;
              isa = Array._bridgeToObjectiveC()().super.isa;

              [v133 setCustomActions:isa];
            }

            sub_100006844();
            sub_100006A34();

            return;
          }

          v180 = v189;
          static Logger.Application.getter();
          v158 = v179;
          v181 = Logger.logObject.getter();
          v182 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v181, v182))
          {
            v183 = swift_slowAlloc();
            v184 = swift_slowAlloc();
            v203 = swift_slowAlloc();
            v206[0] = v203;
            *v183 = 136315394;
            *(v183 + 4) = sub_100005D28(0xD00000000000001FLL, 0x8000000100075B50, v206);
            *(v183 + 12) = 2112;
            *(v183 + 14) = v158;
            *v184 = v179;
            v185 = v158;
            _os_log_impl(&_mh_execute_header, v181, v182, "%s: Restore from userActivity: %@", v183, 0x16u);
            sub_100005A04(v184, &qword_1000937D0, &unk_1000743F0);
            v43 = v193;

            sub_100034948(v203);
          }

          v60(v180, v6);
          sub_10004F004(v158);
        }

        goto LABEL_38;
      }

      v139 = v136;
      v140 = v137;
      v141 = v138;
      v142 = v191;
      static Logger.Application.getter();

      v143 = v139;
      v144 = Logger.logObject.getter();
      v145 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v144, v145))
      {
        v146 = swift_slowAlloc();
        v203 = v140;
        v147 = v146;
        v148 = swift_slowAlloc();
        v192 = v6;
        v149 = v148;
        v150 = swift_slowAlloc();
        v202 = v60;
        v206[0] = v150;
        *v147 = 136315650;
        *(v147 + 4) = sub_100005D28(0xD00000000000001FLL, 0x8000000100075B50, v206);
        *(v147 + 12) = 2112;
        *(v147 + 14) = v143;
        *v149 = v139;
        if (v141)
        {
          v151 = v203;
        }

        else
        {
          v151 = 0;
        }

        if (v141)
        {
          v152 = v141;
        }

        else
        {
          v152 = 0xE000000000000000;
        }

        *(v147 + 22) = 2080;
        v153 = v143;

        v154 = sub_100005D28(v151, v152, v206);

        *(v147 + 24) = v154;
        _os_log_impl(&_mh_execute_header, v144, v145, "%s: Restore from concrete location: %@ tag: %s", v147, 0x20u);
        sub_100005A04(v149, &qword_1000937D0, &unk_1000743F0);

        swift_arrayDestroy();

        v140 = v203;

        (v202)(v142, v192);
      }

      else
      {

        v60(v142, v6);
      }

      v43 = v193;
      sub_1000419F8(v143, v140, v141);
    }

LABEL_31:

    goto LABEL_38;
  }

  static Logger.Application.getter();
  v61 = a1;
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v206[0] = v65;
    *v64 = 136315138;
    swift_getObjectType();
    v66 = _typeName(_:qualified:)();
    v68 = sub_100005D28(v66, v67, v206);

    *(v64 + 4) = v68;
    _os_log_impl(&_mh_execute_header, v62, v63, "Denying creation of browser window / scene.  Unexpected scene type received: %s)", v64, 0xCu);
    sub_100034948(v65);
  }

  (*(v205 + 8))(v9, v6);
}

void sub_1000050A4(uint64_t a1)
{
  sub_1000055A0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100005198(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.startIndex.getter();
    v5 = v4;
    v6 = __CocoaSet.endIndex.getter();
    v8 = v7;
    v9 = static __CocoaSet.Index.== infix(_:_:)();
    sub_1000639B8(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_1000639B8(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = _HashTable.startBucket.getter();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_100063068(v3, v5, v2 != 0, a1, &unk_100093C60, NSUserActivity_ptr);
  v12 = v11;
  sub_1000639B8(v3, v5, v2 != 0);
  return v12;
}

id sub_1000052C8()
{
  *&v0[OBJC_IVAR____TtC5Files20BrowserSceneDelegate_window] = 0;
  *&v0[OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController] = 0;
  *&v0[OBJC_IVAR____TtC5Files20BrowserSceneDelegate_fileImportController] = 0;
  *&v0[OBJC_IVAR____TtC5Files20BrowserSceneDelegate_sourceOrderObserver] = 0;
  v1 = &v0[OBJC_IVAR____TtC5Files20BrowserSceneDelegate_newWindowActivityIdentifier];
  *v1 = 0xD000000000000024;
  *(v1 + 1) = 0x8000000100075BF0;
  v2 = &v0[OBJC_IVAR____TtC5Files20BrowserSceneDelegate_stateRestorationActivityIdentifier];
  *v2 = 0xD000000000000026;
  *(v2 + 1) = 0x8000000100075C20;
  v3 = &v0[OBJC_IVAR____TtC5Files20BrowserSceneDelegate_stateRestorationURLKey];
  *v3 = 0xD00000000000002BLL;
  *(v3 + 1) = 0x8000000100075C50;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for BrowserSceneDelegate();
  return objc_msgSendSuper2(&v5, "init");
}

id sub_100005458()
{
  v1 = OBJC_IVAR____TtC5Files21DRIMainViewController____lazy_storage___internalConfiguration;
  v2 = *(v0 + OBJC_IVAR____TtC5Files21DRIMainViewController____lazy_storage___internalConfiguration);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Files21DRIMainViewController____lazy_storage___internalConfiguration);
  }

  else
  {
    v4 = [objc_opt_self() configurationForImportingDocumentContentTypes:0 mode:1];
    [v4 setInProcess:1];
    [v4 setNeverCreateBookmarkForOpenInPlace:1];
    [v4 setUseSharedQuickLook:1];
    [v4 setPickingItemsShouldBumpLastOpenDate:0];
    [v4 setShouldOpenInApp:1];
    [v4 setSupportsRemovableFileProviders:1];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t type metadata accessor for DRIMainViewController(uint64_t a1)
{
  result = qword_100093E90;
  if (!qword_100093E90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000055A0(uint64_t a1)
{
  if (!qword_100093EA0)
  {
    type metadata accessor for URL();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100093EA0);
    }
  }
}

id sub_1000055F8(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController] = 0;
  *&v1[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewItemObserver] = 0;
  *&v1[OBJC_IVAR____TtC5Files21DRIMainViewController_currentLocationTitleObserver] = 0;
  v3 = OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookURL;
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  v5 = &v1[OBJC_IVAR____TtC5Files21DRIMainViewController_quicklookStateRestorationActivityIdentifier];
  *v5 = 0xD000000000000024;
  *(v5 + 1) = 0x8000000100076200;
  *&v1[OBJC_IVAR____TtC5Files21DRIMainViewController____lazy_storage___internalConfiguration] = 0;
  if (a1)
  {
    type metadata accessor for UTType();
    v6.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  v9.receiver = v1;
  v9.super_class = type metadata accessor for DRIMainViewController(0);
  v7 = objc_msgSendSuper2(&v9, "initForOpeningContentTypes:", v6.super.isa);

  return v7;
}

void sub_1000057BC()
{
  v1 = v0;
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.event.getter();
  updated = updatePointsOfInterestHandler.getter();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:_:_:)();

  (*(v3 + 8))(v5, v2);
  v7 = type metadata accessor for DRIMainViewController(0);
  v11.receiver = v1;
  v11.super_class = v7;
  objc_msgSendSuper2(&v11, "viewDidLoad");
  [v1 setAllowsDocumentCreation:0];
  [v1 setDelegate:v1];
  v10[1] = v1;
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  v9 = *&v1[OBJC_IVAR____TtC5Files21DRIMainViewController_currentLocationTitleObserver];
  *&v1[OBJC_IVAR____TtC5Files21DRIMainViewController_currentLocationTitleObserver] = v8;
}

uint64_t sub_1000059C8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100005A04(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000DB4C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_100005A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_100005BC0(v11);

    v5 = v12;
    if (v12)
    {
      v6 = v13;
      sub_100006C6C(v11, v12);
      (*(v6 + 32))(v5, v6);
      sub_100034948(v11);
    }

    else
    {
      sub_100005A04(v11, &unk_100093F30, &unk_1000745C8);
    }
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    sub_100005BC0(v11);

    v9 = v12;
    if (v12)
    {
      v10 = v13;
      sub_100006C6C(v11, v12);
      (*(v10 + 24))(v9, v10);
      sub_100034948(v11);
    }

    else
    {
      sub_100005A04(v11, &unk_100093F30, &unk_1000745C8);
    }
  }
}

double sub_100005BC0@<D0>(uint64_t a1@<X8>)
{
  v3 = [v1 viewIfLoaded];
  v4 = [v3 window];

  v5 = [v4 windowScene];
  if (!v5 || (v6 = [v5 delegate], v5, !v6) || (sub_10000DB4C(&qword_100093F48, qword_1000745E8), sub_10000DB4C(&qword_100093F40, &unk_1000745D8), (swift_dynamicCast() & 1) == 0))
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_100005CC8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100005D28(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100005DF4(v11, 0, 0, 1, a1, a2);
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
    sub_100005CC8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100034948(v11);
  return v7;
}

unint64_t sub_100005DF4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100006030(a5, a6);
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

char *sub_100005F00(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000607C(v5, 0);
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
        v7 = sub_10000607C(v10, 0);
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

char *sub_100006030(uint64_t a1, unint64_t a2)
{
  v3 = sub_100005F00(a1, a2);
  sub_1000060F4(&off_1000898B8);
  return v3;
}

void *sub_10000607C(uint64_t a1, uint64_t a2)
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

  sub_10000DB4C(&qword_100093A58, &unk_1000743D8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_1000060F4(uint64_t result)
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

  result = sub_100047E34(result, v11, 1, v3);
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

unint64_t sub_1000061E8()
{
  result = qword_100094500;
  if (!qword_100094500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100094500);
  }

  return result;
}

unint64_t sub_10000623C()
{
  result = qword_100093A70;
  if (!qword_100093A70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100093A70);
  }

  return result;
}

uint64_t sub_1000062A0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

id sub_1000062FC(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for UTType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() sharedApplication];
  v7 = [v6 supportsMultipleScenes];

  v8 = 0;
  if (!v7)
  {
    return v8;
  }

  result = _DocumentManagerBundle();
  if (result)
  {
    v10 = result;
    v35._object = 0x8000000100075820;
    v11._countAndFlagsBits = 0x617A696C61636F4CLL;
    v12._object = 0x8000000100075800;
    v13._object = 0x8000000100075800;
    v35._countAndFlagsBits = 0xD000000000000043;
    v12._countAndFlagsBits = 0xD000000000000012;
    v11._object = 0xEB00000000656C62;
    v13._countAndFlagsBits = 0xD000000000000012;
    DOCLocalizedString(_:tableName:bundle:value:comment:)(v12, v11, v10, v13, v35);

    v14 = UIDocumentBrowserActionIdentifierNewWindow;
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = objc_allocWithZone(UIDocumentBrowserAction);
    v17 = v14;

    v18 = String._bridgeToObjectiveC()();

    aBlock[4] = sub_100051D40;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100047930;
    aBlock[3] = &unk_10008E8F8;
    v19 = _Block_copy(aBlock);
    v8 = [v16 initWithIdentifier:v17 localizedTitle:v18 resolvedHandler:v19];

    _Block_release(v19);

    if (v8)
    {
      [v8 setMenuSortOrder:9];
      [v8 setAvailability:1];
      [v8 setSupportsMultipleItems:0];
      v20 = String._bridgeToObjectiveC()();
      v21 = [objc_opt_self() systemImageNamed:v20];

      [v8 setImage:v21];
    }

    sub_100002B84(0, &qword_100093B08, NSPredicate_ptr);
    v22 = static NSPredicate.validateAction(_:)();
    if (v8)
    {
      sub_10000DB4C(&qword_100093A28, qword_100074AD0);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_100073FE0;
      static UTType.folder.getter();
      v24 = UTType.identifier.getter();
      v26 = v25;
      (*(v3 + 8))(v5, v2);
      *(v23 + 32) = v24;
      *(v23 + 40) = v26;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v8 setSupportedContentTypes:isa];

      v28 = static NSPredicate.validateAction(_:)();
      sub_10000DB4C(&qword_100093F90, &qword_100074650);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_1000742E0;
      *(v29 + 32) = v22;
      *(v29 + 40) = v28;
      v30 = v22;
      v31 = v28;
      v32 = Array._bridgeToObjectiveC()().super.isa;

      v33 = [objc_opt_self() andPredicateWithSubpredicates:v32];

      [v8 setFilteringPredicate:v33];
    }

    else
    {
      v31 = static NSPredicate.validateAction(_:)();
    }

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_10000680C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100006844()
{
  v1 = v0;
  v2 = type metadata accessor for DOCNavigationBar.Style();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 traitCollection];
  UITraitCollection.preferredNavigationBarStyle.getter();

  LOBYTE(v6) = DOCNavigationBar.Style.hasHistoryButtons.getter();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for NavigateHistoryIntent();
    objc_allocWithZone(type metadata accessor for UIAppIntentInteraction());
    sub_10005D97C(&qword_100093FC0, &type metadata accessor for NavigateHistoryIntent, &protocol conformance descriptor for NavigateHistoryIntent);

    v7 = UIAppIntentInteraction.init<A>(intent:perform:)();
    v8 = [v1 view];
    if (v8)
    {
      v9 = v8;
      [v8 addInteraction:v7];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100006A34()
{
  v1 = v0;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for SearchFileShortcutsIntent();
  v2 = type metadata accessor for UIAppIntentInteraction();
  objc_allocWithZone(v2);
  sub_10005D97C(&qword_100093F98, &type metadata accessor for SearchFileShortcutsIntent, &protocol conformance descriptor for SearchFileShortcutsIntent);

  v3 = UIAppIntentInteraction.init<A>(intent:perform:)();
  v4 = [v1 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = v4;
  [v4 addInteraction:v3];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for SearchInBrowserIntent();
  objc_allocWithZone(v2);
  sub_10005D97C(&qword_100093FA0, &type metadata accessor for SearchInBrowserIntent, &protocol conformance descriptor for SearchInBrowserIntent);

  v6 = UIAppIntentInteraction.init<A>(intent:perform:)();
  v7 = [v1 view];
  if (!v7)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v8 = v7;
  [v7 addInteraction:v6];
}

void *sub_100006C6C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

char *sub_100006CC4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000DB4C(&qword_100093A28, qword_100074AD0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_100006DD0()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController);
  if (!v7)
  {
    return;
  }

  v39 = v4;
  v8 = v7;
  v9 = [v8 presentedViewController];
  if (v9)
  {
    v10 = v9;
    v11 = OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController;
    v12 = *&v8[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController];
    if (v12)
    {
      sub_100002B84(0, &qword_1000937E0, UIViewController_ptr);
      v13 = v10;
      v14 = v12;
      v15 = static NSObject.== infix(_:_:)();

      if ((v15 & 1) != 0 && ([v13 doc_hasDisappearedOrIsDisappearing] & 1) == 0)
      {
        v21 = *&v8[v11];
        if (v21)
        {
          v22 = [v21 currentPreviewItem];
          if (v22)
          {
            v23 = v22;
            if ([v22 respondsToSelector:"previewItemTitle"])
            {
              v24 = [v23 previewItemTitle];
              swift_unknownObjectRelease();
              if (v24)
              {
                v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v20 = v25;

                goto LABEL_17;
              }
            }

            else
            {
              swift_unknownObjectRelease();
            }
          }
        }

LABEL_16:
        v18 = 0;
        v20 = 0;
        goto LABEL_17;
      }
    }
  }

  v16 = [v8 currentLocationTitle];
  if (!v16)
  {
    goto LABEL_16;
  }

  v17 = v16;
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

LABEL_17:

  static Logger.Application.getter();

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v38[1] = v1;
    v42 = v29;
    *v28 = 136315394;
    *(v28 + 4) = sub_100005D28(0xD000000000000013, 0x80000001000754B0, &v42);
    *(v28 + 12) = 2080;
    v40 = v18;
    v41 = v20;
    sub_10000DB4C(&unk_100093A60, &unk_1000740C0);
    v30 = String.init<A>(describing:)();
    v32 = sub_100005D28(v30, v31, &v42);
    v38[0] = v8;
    v33 = v32;

    *(v28 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v26, v27, "[Interaction] %s to: %s", v28, 0x16u);
    swift_arrayDestroy();

    (*(v3 + 8))(v6, v39);
    v8 = v38[0];
  }

  else
  {

    (*(v3 + 8))(v6, v39);
  }

  v34 = [v8 viewIfLoaded];

  if (v34 && (v35 = [v34 window], v34, v35) && (v36 = objc_msgSend(v35, "windowScene"), v35, v36))
  {
    if (v20)
    {
      v37 = String._bridgeToObjectiveC()();
    }

    else
    {
      v37 = 0;
    }

    [v36 setTitle:v37];
  }

  else
  {
  }

  sub_100007284();
}

void sub_100007284()
{
  v1 = v0;
  v2 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v157[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __chkstk_darwin(v3);
  v8 = &v157[-v7];
  __chkstk_darwin(v6);
  v10 = &v157[-v9];
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v173 = &v157[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v174 = &v157[-v15];
  v16 = type metadata accessor for Logger();
  v17 = __chkstk_darwin(v16);
  v19 = &v157[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = __chkstk_darwin(v17);
  v21 = __chkstk_darwin(v20);
  v22 = __chkstk_darwin(v21);
  v24 = &v157[-v23];
  __chkstk_darwin(v22);
  v29 = &v157[-v28];
  v30 = *&v1[OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController];
  if (!v30)
  {
    return;
  }

  v169 = v27;
  v170 = v26;
  v172 = v25;
  v175 = v30;
  v31 = [v175 viewIfLoaded];
  if (v31)
  {
    v168 = v12;
    v171 = v16;
    v32 = v31;
    v33 = [v31 window];

    if (v33)
    {
      v34 = [v33 windowScene];

      if (v34)
      {
        v166 = v34;
        static Logger.Application.getter();
        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.default.getter();
        v37 = os_log_type_enabled(v35, v36);
        v167 = v5;
        v165 = v11;
        if (v37)
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          aBlock[0] = v39;
          *v38 = 136315138;
          *(v38 + 4) = sub_100005D28(0xD000000000000021, 0x80000001000754D0, aBlock);
          _os_log_impl(&_mh_execute_header, v35, v36, "[Interaction] %s", v38, 0xCu);
          sub_100034948(v39);
        }

        v40 = *(v172 + 8);
        v40(v29, v171);
        v41 = [v175 presentedViewController];

        if (!v41)
        {
          goto LABEL_12;
        }

        v163 = OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController;
        v42 = *&v175[OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookPreviewController];
        if (!v42 || (sub_100002B84(0, &qword_1000937E0, UIViewController_ptr), v43 = v41, v44 = v42, v45 = static NSObject.== infix(_:_:)(), v44, v43, (v45 & 1) == 0) || ([v43 doc_hasDisappearedOrIsDisappearing] & 1) != 0)
        {

LABEL_12:
          static Logger.Application.getter();
          v46 = v1;
          v47 = Logger.logObject.getter();
          v48 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v47, v48))
          {
            v49 = swift_slowAlloc();
            v50 = swift_slowAlloc();
            aBlock[0] = v50;
            *v49 = 136315138;
            v51 = v46;
            v52 = [v51 description];
            v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v164 = v40;
            v55 = v54;

            v56 = sub_100005D28(v53, v55, aBlock);

            *(v49 + 4) = v56;
            _os_log_impl(&_mh_execute_header, v47, v48, "[Interaction] update scene activation conditions on: %s for no presented view controller", v49, 0xCu);
            sub_100034948(v50);

            v164(v19, v171);
          }

          else
          {

            v40(v19, v171);
          }

          v59 = v166;
          v58 = v167;
          (*(v168 + 56))(v167, 1, 1, v165);
          sub_100008480(v58, v46, v175, v59);

          v60 = v58;
          goto LABEL_19;
        }

        static Logger.Application.getter();
        v61 = v43;
        v62 = v1;
        v63 = Logger.logObject.getter();
        v64 = static os_log_type_t.default.getter();

        v65 = os_log_type_enabled(v63, v64);
        v164 = v40;
        v161 = v62;
        v162 = v61;
        if (v65)
        {
          v66 = swift_slowAlloc();
          v160 = swift_slowAlloc();
          aBlock[0] = v160;
          *v66 = 136315906;
          *(v66 + 4) = sub_100005D28(0xD000000000000021, 0x80000001000754D0, aBlock);
          *(v66 + 12) = 2080;
          v67 = v62;
          v68 = [v67 description];
          LODWORD(v159) = v64;
          v69 = v61;
          v70 = v68;
          v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v73 = v72;

          v74 = sub_100005D28(v71, v73, aBlock);

          *(v66 + 14) = v74;
          *(v66 + 22) = 2080;
          v75 = v69;
          v76 = [v75 description];
          v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v79 = v78;

          v80 = sub_100005D28(v77, v79, aBlock);

          *(v66 + 24) = v80;
          *(v66 + 32) = 1024;
          LODWORD(v80) = [v75 isBeingDismissed];

          *(v66 + 34) = v80;
          _os_log_impl(&_mh_execute_header, v63, v159, "[Interaction] 1. %s on: %s for QLVC: %s isBeingDismissed: %{BOOL}d", v66, 0x26u);
          swift_arrayDestroy();

          v81 = v171;
          v164(v24, v171);
        }

        else
        {

          v81 = v171;
          v40(v24, v171);
        }

        v82 = v166;
        v83 = v167;
        v84 = v165;
        v85 = v163;
        v86 = *&v163[v175];
        if (v86 && (v87 = [v86 currentPreviewItem]) != 0)
        {
          v88 = [v87 previewItemURL];
          swift_unknownObjectRelease();
          if (v88)
          {
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            v89 = 0;
          }

          else
          {
            v89 = 1;
          }

          v91 = v168;
          v90 = *(v168 + 56);
          (v90)(v8, v89, 1, v84);
          sub_10000B2A8(v8, v10);
          if ((*(v91 + 48))(v10, 1, v84) != 1)
          {
            v163 = v90;
            v121 = v174;
            (*(v91 + 32))(v174, v10, v84);
            static Logger.Application.getter();
            v122 = v91 + 16;
            v123 = v173;
            v160 = *(v91 + 16);
            v160(v173, v121, v84);
            v124 = v162;
            v125 = v161;
            v126 = Logger.logObject.getter();
            v127 = static os_log_type_t.default.getter();
            v169 = v124;

            if (os_log_type_enabled(v126, v127))
            {
              v128 = swift_slowAlloc();
              v162 = swift_slowAlloc();
              aBlock[0] = v162;
              *v128 = 136315906;
              *(v128 + 4) = sub_100005D28(0xD000000000000021, 0x80000001000754D0, aBlock);
              *(v128 + 12) = 2080;
              v129 = v125;
              v158 = v127;
              v130 = v129;
              v131 = [v129 description];
              v132 = v91;
              v133 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v161 = v125;
              v135 = v134;

              v136 = sub_100005D28(v133, v135, aBlock);

              *(v128 + 14) = v136;
              *(v128 + 22) = 2080;
              v137 = v169;
              v138 = [v137 description];
              v139 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v141 = v140;

              v142 = sub_100005D28(v139, v141, aBlock);

              *(v128 + 24) = v142;
              *(v128 + 32) = 2080;
              sub_10004DC20(&unk_1000937B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
              v143 = v173;
              v144 = v165;
              v145 = dispatch thunk of CustomStringConvertible.description.getter();
              v159 = v122;
              v146 = v126;
              v147 = v145;
              v149 = v148;
              v150 = *(v132 + 8);
              v150(v143, v144);
              v151 = sub_100005D28(v147, v149, aBlock);

              *(v128 + 34) = v151;
              _os_log_impl(&_mh_execute_header, v146, v158, "[Interaction] 2. %s on: %s for QLVC: %s with URL: %s", v128, 0x2Au);
              swift_arrayDestroy();

              v164(v170, v171);
              v84 = v144;
              v152 = v161;
            }

            else
            {

              v150 = *(v91 + 8);
              v152 = v125;
              v150(v123, v84);
              v164(v170, v81);
            }

            v153 = v167;
            v154 = v174;
            v160(v167, v174, v84);
            (v163)(v153, 0, 1, v84);
            v155 = v152;
            v156 = v166;
            sub_100008480(v153, v155, v175, v166);

            sub_100005A04(v153, &qword_100093F50, &qword_100074090);
            v150(v154, v84);
            return;
          }

          v85 = v163;
        }

        else
        {
          v90 = *(v168 + 56);
          (v90)(v10, 1, 1, v84);
        }

        sub_100005A04(v10, &qword_100093F50, &qword_100074090);
        v92 = *&v85[v175];
        v93 = v161;
        if (v92 && [v92 currentPreviewItem])
        {
          objc_opt_self();
          v94 = swift_dynamicCastObjCClass();
          if (v94)
          {
            v95 = v94;
            v96 = [v94 fpItem];
            if (v96)
            {
              v174 = v96;
              v163 = v90;
              v97 = v169;
              static Logger.Application.getter();
              v98 = v93;
              v99 = Logger.logObject.getter();
              v100 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v99, v100))
              {
                v101 = swift_slowAlloc();
                LODWORD(v170) = v100;
                v102 = v101;
                v173 = swift_slowAlloc();
                aBlock[0] = v173;
                *v102 = 136315394;
                *(v102 + 4) = sub_100005D28(0xD000000000000021, 0x80000001000754D0, aBlock);
                *(v102 + 12) = 2080;
                v103 = v98;
                v104 = [v103 description];
                v105 = v98;
                v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v108 = v107;

                v83 = v167;
                v84 = v165;
                v109 = sub_100005D28(v106, v108, aBlock);
                v82 = v166;

                *(v102 + 14) = v109;
                v98 = v105;
                _os_log_impl(&_mh_execute_header, v99, v170, "[Interaction] 2.1 %s on: %s setting predicate to nil before doing async fetch URL", v102, 0x16u);
                swift_arrayDestroy();
              }

              v164(v97, v171);
              (v163)(v83, 1, 1, v84);
              sub_100008480(v83, v98, v175, v82);
              sub_100005A04(v83, &qword_100093F50, &qword_100074090);
              v110 = [objc_opt_self() defaultManager];
              v111 = swift_allocObject();
              v112 = v175;
              v111[2] = v95;
              v111[3] = v112;
              v113 = v162;
              v111[4] = v98;
              v111[5] = v113;
              v111[6] = v82;
              aBlock[4] = sub_10004DB98;
              aBlock[5] = v111;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 1107296256;
              aBlock[2] = sub_1000526E0;
              aBlock[3] = &unk_10008E538;
              v114 = v98;
              v115 = _Block_copy(aBlock);
              v116 = v175;
              v117 = v113;
              v118 = v114;
              swift_unknownObjectRetain();
              v119 = v82;

              v120 = v174;
              [v110 fetchURLForItem:v174 completionHandler:v115];

              _Block_release(v115);
              swift_unknownObjectRelease();

              return;
            }
          }

          swift_unknownObjectRelease();
        }

        (v90)(v83, 1, 1, v84);
        sub_100008480(v83, v93, v175, v82);

        v60 = v83;
LABEL_19:
        sub_100005A04(v60, &qword_100093F50, &qword_100074090);
        return;
      }
    }
  }

  v57 = v175;
}

uint64_t sub_100008428()
{

  return _swift_deallocObject(v0, 56, 7);
}

void sub_100008480(uint64_t a1, void *a2, void *a3, void *a4)
{
  v66 = a4;
  v7 = type metadata accessor for URL();
  v64 = *(v7 - 8);
  __chkstk_darwin(v7);
  v61 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  v9 = __chkstk_darwin(v59);
  v63 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v54 - v12;
  __chkstk_darwin(v11);
  v15 = &v54 - v14;
  v16 = type metadata accessor for Logger();
  v62 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.Application.getter();
  sub_100034850(a1, v15, &qword_100093F50, &qword_100074090);
  v19 = a2;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  v22 = os_log_type_enabled(v20, v21);
  v65 = v13;
  v60 = v19;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v55 = v16;
    v24 = v23;
    v54 = swift_slowAlloc();
    v67[0] = v54;
    *v24 = 136315650;
    *(v24 + 4) = sub_100005D28(0xD000000000000019, 0x8000000100075500, v67);
    *(v24 + 12) = 2080;
    v25 = v19;
    v58 = a3;
    v26 = v25;
    v27 = [v25 description];
    v57 = v7;
    v28 = v27;
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = a1;
    v30 = v29;
    v32 = v31;

    v33 = sub_100005D28(v30, v32, v67);

    *(v24 + 14) = v33;
    *(v24 + 22) = 2080;
    sub_100034850(v15, v13, &qword_100093F50, &qword_100074090);
    v34 = String.init<A>(describing:)();
    v36 = v35;
    sub_100005A04(v15, &qword_100093F50, &qword_100074090);
    v37 = v34;
    a3 = v58;
    v38 = sub_100005D28(v37, v36, v67);
    v7 = v57;

    *(v24 + 24) = v38;
    a1 = v56;
    _os_log_impl(&_mh_execute_header, v20, v21, "[Interaction] %s on: %s updatePredicateWith: %s", v24, 0x20u);
    swift_arrayDestroy();

    (*(v62 + 8))(v18, v55);
  }

  else
  {

    sub_100005A04(v15, &qword_100093F50, &qword_100074090);
    (*(v62 + 8))(v18, v16);
  }

  v39 = a1;
  v40 = v63;
  sub_100034850(v39, v63, &qword_100093F50, &qword_100074090);
  v41 = v64;
  if ((*(v64 + 48))(v40, 1, v7) == 1)
  {
    sub_100005A04(v40, &qword_100093F50, &qword_100074090);
    v42 = sub_100008AC8(a3, v60);
    if (!v42)
    {
      v42 = [objc_opt_self() predicateWithValue:0];
    }

    v43 = v42;
    v44 = v65;
    (*(v41 + 56))(v65, 1, 1, v7);
  }

  else
  {
    v45 = *(v41 + 32);
    v46 = v61;
    v45(v61, v40, v7);
    sub_100002B84(0, &qword_100093B08, NSPredicate_ptr);
    sub_10000DB4C(&unk_100093B10, qword_1000749B0);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_100073FE0;
    v48 = URL.absoluteString.getter();
    v50 = v49;
    *(v47 + 56) = &type metadata for String;
    *(v47 + 64) = sub_1000061E8();
    *(v47 + 32) = v48;
    *(v47 + 40) = v50;
    v43 = NSPredicate.init(format:_:)();
    v44 = v65;
    v45(v65, v46, v7);
    (*(v41 + 56))(v44, 0, 1, v7);
  }

  v51 = OBJC_IVAR____TtC5Files21DRIMainViewController_currentQuickLookURL;
  swift_beginAccess();
  v52 = v43;
  sub_1000091C8(v44, a3 + v51);
  swift_endAccess();
  v53 = [v66 activationConditions];
  [v53 setPrefersToActivateForTargetContentIdentifierPredicate:v52];
}

id sub_100008AC8(void *a1, void *a2)
{
  v66 = a2;
  v3 = type metadata accessor for Logger();
  v67 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v59 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v59 - v17;
  v19 = [a1 effectiveFullBrowser];
  v20 = DOCFullDocumentManagerViewController.topMostItemCollectionViewController.getter();

  if (!v20)
  {
    return 0;
  }

  v65 = v3;
  result = DOCItemCollectionViewController.nodeCollection.getter();
  if (!result)
  {
    __break(1u);
    goto LABEL_21;
  }

  v22 = result;
  v23 = dispatch thunk of DOCNodeCollection.observedNode.getter();

  if (!v23)
  {

    (*(v13 + 56))(v11, 1, 1, v12);
LABEL_10:
    sub_100005A04(v11, &qword_100093F50, &qword_100074090);
    return 0;
  }

  v24 = [v23 nodeURL];
  swift_unknownObjectRelease();
  if (v24)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v13 + 56))(v9, 0, 1, v12);
  }

  else
  {
    (*(v13 + 56))(v9, 1, 1, v12);
  }

  sub_10000B2A8(v9, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {

    goto LABEL_10;
  }

  (*(v13 + 32))(v18, v11, v12);
  v25 = objc_allocWithZone(NSURLComponents);
  URL._bridgeToObjectiveC()(v26);
  v28 = v27;
  v29 = [v25 initWithURL:v27 resolvingAgainstBaseURL:0];

  if (!v29)
  {
    (*(v13 + 8))(v18, v12);

    return 0;
  }

  v30 = String._bridgeToObjectiveC()();
  [v29 setScheme:v30];

  v64 = v29;
  result = [v29 URL];
  if (!result)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v31 = result;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v63 = URL.description.getter();
  v61 = v32;
  v62 = *(v13 + 8);
  v62(v16, v12);
  v60 = URL.description.getter();
  v34 = v33;
  sub_100002B84(0, &qword_100093B08, NSPredicate_ptr);
  sub_10000DB4C(&unk_100093B10, qword_1000749B0);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1000736D0;
  *(v35 + 56) = &type metadata for String;
  v36 = sub_1000061E8();
  v37 = v60;
  v38 = v61;
  *(v35 + 32) = v63;
  *(v35 + 40) = v38;
  *(v35 + 96) = &type metadata for String;
  *(v35 + 104) = v36;
  *(v35 + 64) = v36;
  *(v35 + 72) = v37;
  *(v35 + 80) = v34;
  v39 = NSPredicate.init(format:_:)();
  static Logger.Application.getter();
  v40 = v66;
  v41 = v39;
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();
  v66 = v41;

  v63 = v42;
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v68 = v61;
    *v44 = 136315650;
    *(v44 + 4) = sub_100005D28(0xD00000000000001DLL, 0x8000000100075540, &v68);
    *(v44 + 12) = 2080;
    v45 = v40;
    v46 = [v45 description];
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    LODWORD(v60) = v43;
    v48 = v47;
    v50 = v49;

    v51 = sub_100005D28(v48, v50, &v68);

    *(v44 + 14) = v51;
    *(v44 + 22) = 2080;
    v52 = v66;
    v53 = [v52 description];
    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v55;

    v57 = sub_100005D28(v54, v56, &v68);

    *(v44 + 24) = v57;
    v58 = v63;
    _os_log_impl(&_mh_execute_header, v63, v60, "[Interaction] 3 %s on: %s predicate: %s", v44, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  (*(v67 + 8))(v5, v65);
  v62(v18, v12);
  return v66;
}

uint64_t sub_1000091C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_100009318(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v43 - v8;
  static Logger.StateStore.getter();

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  v12 = os_log_type_enabled(v10, v11);
  v47 = v4;
  v48 = v5;
  v44 = a2;
  if (v12)
  {
    v13 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v52[0] = v49;
    *v13 = 136315394;
    *(v13 + 4) = sub_100005D28(0xD000000000000027, 0x80000001000763C0, v52);
    *(v13 + 12) = 2080;
    sub_100002B84(0, &unk_1000941A0, UISceneSession_ptr);
    sub_100003A30(&qword_100093C50, &unk_1000941A0, UISceneSession_ptr);
    v14 = Set.description.getter();
    v16 = sub_100005D28(v14, v15, v52);

    *(v13 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s: %s", v13, 0x16u);
    swift_arrayDestroy();

    v46 = *(v48 + 8);
  }

  else
  {

    v46 = *(v5 + 8);
  }

  v46(v9, v4);
  v17 = [a1 connectedScenes];
  sub_100002B84(0, &qword_100093FF0, UIScene_ptr);
  sub_100003A30(&qword_100093FF8, &qword_100093FF0, UIScene_ptr);
  v18 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100009970(v18, v52);
  v20 = v52[0];
  v19 = v52[1];
  v21 = v54;
  v22 = v55;
  v49 = v53;
  v23 = (v53 + 64) >> 6;
  while (v20 < 0)
  {
    v30 = __CocoaSet.Iterator.next()();
    if (!v30 || (v50 = v30, swift_dynamicCast(), v29 = v51[0], v27 = v21, v28 = v22, !v51[0]))
    {
LABEL_21:
      sub_100052240(v20);
      return;
    }

LABEL_18:
    if (![v29 delegate])
    {
      goto LABEL_7;
    }

    type metadata accessor for BrowserSceneDelegate();
    v31 = swift_dynamicCastClass();
    if (v31)
    {
      v24 = *(v31 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController);
      if (v24)
      {
        v32 = v24;
        v33 = [v32 configuration];
        swift_unknownObjectRelease();

        sub_100052240(v20);
        sub_100062A74(v44);
        v34 = v45;
        static Logger.StateStore.getter();

        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v51[0] = swift_slowAlloc();
          *v37 = 136315394;
          *(v37 + 4) = sub_100005D28(0xD000000000000027, 0x80000001000763C0, v51);
          *(v37 + 12) = 2080;
          v38 = Array.description.getter();
          v40 = sub_100005D28(v38, v39, v51);

          *(v37 + 14) = v40;
          _os_log_impl(&_mh_execute_header, v35, v36, "%s: purging application state for sessionIdentifiers: %s", v37, 0x16u);
          swift_arrayDestroy();
        }

        v46(v34, v47);
        v41 = [objc_opt_self() sharedStore];
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v41 purgeApplicationStateForIdentifiers:isa configuration:v33];

        return;
      }

      swift_unknownObjectRelease();
LABEL_7:

      goto LABEL_8;
    }

    swift_unknownObjectRelease();
LABEL_8:
    v21 = v27;
    v22 = v28;
  }

  v25 = v21;
  v26 = v22;
  v27 = v21;
  if (v22)
  {
LABEL_14:
    v28 = (v26 - 1) & v26;
    v29 = *(*(v20 + 48) + ((v27 << 9) | (8 * __clz(__rbit64(v26)))));
    if (!v29)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v27 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v27 >= v23)
    {
      goto LABEL_21;
    }

    v26 = *(v19 + 8 * v27);
    ++v25;
    if (v26)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_100009970@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if ((result & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_100002B84(0, &qword_100093FF0, UIScene_ptr);
    sub_100003A30(&qword_100093FF8, &qword_100093FF0, UIScene_ptr);
    Set.Iterator.init(_cocoa:)();
    result = v10;
    v3 = v11;
    v5 = v12;
    v4 = v13;
    v6 = v14;
  }

  else
  {
    v4 = 0;
    v7 = -1;
    v8 = -1 << *(result + 32);
    v3 = result + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v7 = ~(-1 << v9);
    }

    v6 = v7 & *(result + 56);
  }

  *a2 = result;
  a2[1] = v3;
  a2[2] = v5;
  a2[3] = v4;
  a2[4] = v6;
  a2[5] = 0;
  return result;
}

char *sub_100009A5C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000DB4C(&qword_100093A28, qword_100074AD0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100009B68(char *a1, int64_t a2, char a3)
{
  result = sub_100009A5C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_100009BC8()
{
  v0 = static DOCLog.UI.getter();
  static os_log_type_t.debug.getter();
  sub_10000DB4C(&unk_100093B10, qword_1000749B0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100073FE0;
  v2 = CFAbsoluteTimeGetCurrent() - *&qword_1000945C8;
  *(v1 + 56) = &type metadata for Double;
  *(v1 + 64) = &protocol witness table for Double;
  *(v1 + 32) = v2;
  os_log(_:dso:log:type:_:)("app launched in: %f sec", v4);
}

unint64_t sub_100009C94(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100002ABC(a1, a2, v4);
}

void sub_100009D78(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController);
  if (v7)
  {
    v25 = v7;
    if ([v25 isAppLaunchOptimizationsActive])
    {
      v8 = v25;
    }

    else
    {
      static Logger.StateStore.getter();
      v9 = a1;
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *v12 = 136315394;
        *(v12 + 4) = sub_100005D28(0xD000000000000018, 0x8000000100075B10, &v26);
        *(v12 + 12) = 2080;
        v13 = [v9 session];
        v14 = [v13 persistentIdentifier];

        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        v18 = sub_100005D28(v15, v17, &v26);

        *(v12 + 14) = v18;
        _os_log_impl(&_mh_execute_header, v10, v11, "%s: identifier: %s became foreground. Updating to most recent scene state.", v12, 0x16u);
        swift_arrayDestroy();
      }

      (*(v4 + 8))(v6, v3);
      v19 = objc_opt_self();
      v20 = [v19 sharedStore];
      v21 = [v25 configuration];
      v22 = [v20 interfaceStateForConfiguration:v21];

      if (v22)
      {
        v23 = [v19 sharedStore];
        v24 = [v25 configuration];
        [v23 updateInterfaceState:v22 forConfiguration:v24];
      }
    }
  }
}

uint64_t sub_10000A0F8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10000A14C()
{

  return _swift_deallocObject(v0, 97, 7);
}

__n128 sub_10000A1C4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

unint64_t sub_10000A1D0()
{
  result = qword_100093878;
  if (!qword_100093878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100093878);
  }

  return result;
}

void sub_10000A2AC(int a1, uint64_t a2)
{
  LODWORD(v4) = a1;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.Tests.getter();
  v9 = v2;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v28 = v4;
    v4 = v12;
    v13 = swift_slowAlloc();
    v29 = v13;
    *v4 = 134218754;
    *(v4 + 4) = a2;
    *(v4 + 12) = 2080;
    v14 = *&v9[OBJC_IVAR____TtC5Files14DOCApplication_currentTestName + 8];
    aBlock = *&v9[OBJC_IVAR____TtC5Files14DOCApplication_currentTestName];
    v31 = v14;

    sub_10000DB4C(&unk_100093A60, &unk_1000740C0);
    v15 = String.init<A>(describing:)();
    v17 = sub_100005D28(v15, v16, &v29);
    v27 = v5;
    v18 = a2;
    v19 = v17;

    *(v4 + 14) = v19;
    *(v4 + 22) = 2048;
    v20 = v9[OBJC_IVAR____TtC5Files14DOCApplication_finishedLaunchTest];

    *(v4 + 24) = v20;
    *(v4 + 32) = 1024;
    v21 = v28;
    *(v4 + 34) = v28 & 1;
    _os_log_impl(&_mh_execute_header, v10, v11, "tabbedBrowserViewControllerDidFinishLoading %lu ; currentTestName %s ; finishedLaunchTest %ld ; initialLoad: %{BOOL}d", v4, 0x26u);
    sub_100034948(v13);

    (*(v6 + 8))(v8, v27);
    LOBYTE(v4) = v21;
  }

  else
  {

    (*(v6 + 8))(v8, v5);
    v18 = a2;
  }

  v22 = objc_opt_self();
  v23 = swift_allocObject();
  *(v23 + 16) = v4 & 1;
  *(v23 + 24) = v9;
  *(v23 + 32) = v18;
  v34 = sub_10000AC48;
  v35 = v23;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_100002DB0;
  v33 = &unk_10008E260;
  v24 = _Block_copy(&aBlock);
  v25 = v9;

  [v22 performAfterCATransactionCommits:v24];
  _Block_release(v24);
}

uint64_t sub_10000A5D0()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_10000A60C(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10000A650(a1, v4);
}

unint64_t sub_10000A650(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10000A718(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10000A774(v8);
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

void sub_10000A7C8(char a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v10 = OBJC_IVAR____TtC5Files14DOCApplication_loadedTabs;
    swift_beginAccess();
    v11 = *&a2[v10];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&a2[v10] = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_10000AC54(0, *(v11 + 2) + 1, 1, v11);
      *&a2[v10] = v11;
    }

    v14 = *(v11 + 2);
    v13 = *(v11 + 3);
    if (v14 >= v13 >> 1)
    {
      v11 = sub_10000AC54((v13 > 1), v14 + 1, 1, v11);
    }

    *(v11 + 2) = v14 + 1;
    *&v11[8 * v14 + 32] = a3;
    *&a2[v10] = v11;
    swift_endAccess();
  }

  v15 = OBJC_IVAR____TtC5Files14DOCApplication_finishedLaunchTest;
  if ((a2[OBJC_IVAR____TtC5Files14DOCApplication_finishedLaunchTest] & 1) == 0)
  {
    v19 = [a2 _launchTestName];
    [a2 finishedTest:v19 waitForCommit:0 extraResults:0];

    a2[v15] = 1;
    if ((a1 & 1) == 0)
    {
      return;
    }

    goto LABEL_13;
  }

  v16 = *&a2[OBJC_IVAR____TtC5Files14DOCApplication_currentTestName + 8];
  if (!v16)
  {
    goto LABEL_28;
  }

  v17 = *&a2[OBJC_IVAR____TtC5Files14DOCApplication_currentTestName];
  if (a3)
  {
    if (a3 == 1)
    {
      v18 = 0x646572616853;
    }

    else
    {
      if (a3 != 2)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return;
      }

      v18 = 0x6573776F7242;
    }

    v21 = v18 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
  }

  else
  {
    v21 = 0xEF73746E65636552;
  }

  v22 = v17 == 0x6F54686374697753 && v16 == v21;
  if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v33 = v7;

    static Logger.Tests.getter();

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v32[1] = v17;
      v27 = v26;
      v34[0] = v26;
      *v25 = 136315138;
      v28 = sub_100005D28(0x6F54686374697753, v21, v34);
      v32[0] = v23;
      v29 = v28;

      *(v25 + 4) = v29;
      v30 = v32[0];
      _os_log_impl(&_mh_execute_header, v32[0], v24, "finishing test %s after commit", v25, 0xCu);
      sub_100034948(v27);
    }

    else
    {
    }

    (*(v33 + 8))(v9, v6);
    v31 = String._bridgeToObjectiveC()();

    [a2 finishedTest:v31 waitForCommit:0 extraResults:0];

LABEL_28:
    if ((a1 & 1) == 0)
    {
      return;
    }

LABEL_13:
    NSLog(_:_:)();
    v20 = [objc_opt_self() shared];
    [v20 signal];

    return;
  }

  if (a1)
  {
    goto LABEL_13;
  }
}

char *sub_10000AC54(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000DB4C(&qword_100093CA8, &qword_1000744A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_10000AD5C()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000ADA8()
{

  return _swift_deallocObject(v0, 73, 7);
}

uint64_t sub_10000AE08(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000DB4C(&qword_100093498, &qword_100074430);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t *sub_10000AE7C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10000AEE8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10000AF3C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_10000AFE8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000B1A0;

  return sub_10000B0A0(a1, v4);
}

uint64_t sub_10000B0A0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000B1A4;

  return v6(a1);
}

uint64_t sub_10000B1A4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000B2A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000B364@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000B39C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000B3BC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_10000B3E8()
{
  if (*(v0 + 40))
  {
    sub_100034948((v0 + 16));
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000B428()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 41) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10000B510()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10000B5F4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000B634()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000B694()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10000B75C()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000B79C()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000B7E4()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10000B844()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000B87C()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000B8CC()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10000B934()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000B97C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000B9D8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000BA30()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000BA80()
{

  return _swift_deallocObject(v0, 73, 7);
}

uint64_t sub_10000C0D4()
{
  v1 = *(sub_10000DB4C(&qword_100093F50, &qword_100074090) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000C214()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 25) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000C2D8()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_10000C318()
{

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_10000C368()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_10000C3B0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000C3F8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000C438()
{

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_10000C488()
{
  sub_10000A0F8(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000C4CC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000C514()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000C554()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000C5DC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000C614()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10000C6F0()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000C7BC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000C804()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000C83C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000C87C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10000C954()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000C99C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000C9DC()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000CA78()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000CAB0()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10000CAF0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000CB30()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 9, v3 | 7);
}

uint64_t sub_10000CC08()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (v4 + *(v2 + 64) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10000CD00()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000CDC4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10000CE60()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000CEBC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000CF38()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000CF70()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000CFA8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000CFE0()
{
  v1 = *(sub_10000DB4C(&qword_100093F50, &qword_100074090) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

id sub_10000D100@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 currentPreviewItemIndex];
  *a2 = result;
  return result;
}

uint64_t sub_10000D148()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000D194()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000D1CC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000D214()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000D24C()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10000D2A4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000D2DC()
{
  v1 = type metadata accessor for URLQueryItem();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for URLComponents();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 16, v10 | 7);
}

uint64_t sub_10000D44C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000D48C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000D550()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_10000D66C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_10000D788()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000D7C0()
{
  v1 = sub_10000DB4C(&qword_100094438, &unk_100074AB8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for URLComponents();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_10000D91C()
{
  v1 = sub_10000DB4C(&qword_100094438, &unk_100074AB8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for URLComponents();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 8, v10 | 7);
}

uint64_t sub_10000DA90()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000DAC8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000DB08()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000DB4C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000DB94(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

__n128 sub_10000DBDC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000DBE8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000DC08(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

void *sub_10000DC34@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_10000DC44(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_10000DCBC(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_10000DD3C@<X0>(void *a2@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_10000DD80(void *a1, uint64_t *a2)
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

uint64_t sub_10000DE08(uint64_t a1)
{
  v2 = sub_100002C6C(&qword_100093578, type metadata accessor for DOCDocumentSourceIdentifier, &unk_100073D6C);
  v3 = sub_100002C6C(&qword_100093580, type metadata accessor for DOCDocumentSourceIdentifier, &unk_100073D14);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10000DEC4(uint64_t a1)
{
  v2 = sub_100002C6C(&unk_1000937A0, type metadata accessor for FPProviderDomainID, &unk_100073EF4);
  v3 = sub_100002C6C(&qword_100093570, type metadata accessor for FPProviderDomainID, &unk_100073E54);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10000DF80(uint64_t a1)
{
  v2 = sub_100002C6C(&qword_100093588, type metadata accessor for DOCIntentLocationType, &unk_100073C2C);
  v3 = sub_100002C6C(&unk_100093590, type metadata accessor for DOCIntentLocationType, &unk_100073BD4);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10000E03C(uint64_t a1)
{
  v2 = sub_100002C6C(&qword_1000935A8, type metadata accessor for URLResourceKey, &unk_1000739C4);
  v3 = sub_100002C6C(&unk_1000935B0, type metadata accessor for URLResourceKey, &unk_100073964);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10000E0F8@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_10000E140(uint64_t a1)
{
  v2 = sub_100002C6C(&unk_1000941D0, type metadata accessor for LaunchOptionsKey, &unk_100073F34);
  v3 = sub_100002C6C(&qword_1000935A0, type metadata accessor for LaunchOptionsKey, &unk_100073AC8);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10000E1FC()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_10000E238(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_10000E28C(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

void sub_10000E378(uint64_t a1, unint64_t *a2, uint64_t a3)
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

id sub_10000E834(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = String._bridgeToObjectiveC()();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSuiteName:v2];

  return v3;
}

uint64_t sub_10000E8A0(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC5Files14DOCApplication_currentTestName);
  *v3 = a1;
  v3[1] = a2;
}

void sub_10000E8BC(void **a1, unint64_t a2, id a3, unsigned int a4, unsigned int a5, uint64_t a6)
{
  v7 = v6;
  v117 = a4;
  v119 = a1;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v115 = *(v12 - 8);
  v116 = v12;
  __chkstk_darwin(v12);
  v113 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for DispatchQoS();
  v112 = *(v114 - 8);
  __chkstk_darwin(v114);
  v111 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for DispatchTimeInterval();
  v106 = *(v107 - 8);
  __chkstk_darwin(v107);
  v16 = (&v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v110 = type metadata accessor for DispatchTime();
  v109 = *(v110 - 8);
  v17 = __chkstk_darwin(v110);
  v105 = &v99 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v108 = &v99 - v19;
  v120 = type metadata accessor for Logger();
  v20 = *(v120 - 8);
  v21 = __chkstk_darwin(v120);
  v22 = __chkstk_darwin(v21);
  v24 = &v99 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = &v99 - v26;
  __chkstk_darwin(v25);
  v30 = &v99 - v29;
  v118 = a6;
  if (a6 >= 31)
  {
    static Logger.Tests.getter();

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = a2;
      v35 = swift_slowAlloc();
      aBlock = v35;
      *v33 = 136315138;
      *(v33 + 4) = sub_100005D28(v119, v34, &aBlock);
      _os_log_impl(&_mh_execute_header, v31, v32, "Waited for more than 30 seconds for the collection view to populate. Failing test %s", v33, 0xCu);
      sub_100034948(v35);
    }

    (*(v20 + 8))(v30, v120);
    v46 = String._bridgeToObjectiveC()();
    [v7 failedTest:v46];
    goto LABEL_11;
  }

  v100 = v28;
  static Logger.Tests.getter();
  v36 = v7;
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.debug.getter();
  v39 = os_log_type_enabled(v37, v38);
  v104 = a5;
  if (v39)
  {
    v101 = a2;
    v40 = swift_slowAlloc();
    *v40 = 67109120;
    v41 = OBJC_IVAR____TtC5Files14DOCApplication_loadedTabs;
    swift_beginAccess();
    v42 = *(&v36->isa + v41);
    v43 = *(v42 + 16);
    v44 = (v42 + 32);
    while (v43)
    {
      v45 = *v44++;
      --v43;
      if (!v45)
      {
        LODWORD(v43) = 1;
        break;
      }
    }

    *(v40 + 4) = v43;

    _os_log_impl(&_mh_execute_header, v37, v38, "recents loaded: %{BOOL}d", v40, 8u);

    a2 = v101;
  }

  else
  {

    v37 = v36;
  }

  v103 = *(v20 + 8);
  v103(v27, v120);
  v47 = dispatch thunk of DOCItemCollectionViewController.collectionView.getter();
  [v47 contentSize];
  v49 = v48;
  v51 = v50;
  v52 = DOCItemCollectionViewController.nodeCollection.getter();
  if (!v52)
  {
    __break(1u);
LABEL_40:

    __break(1u);
    return;
  }

  v53 = v52;
  v54 = [v52 isGathering];

  v102 = v47;
  if (v54)
  {
LABEL_15:
    v100 = v36;
    static Logger.Tests.getter();
    v55 = a3;

    a3 = v55;
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v56, v57))
    {

LABEL_29:
      v103(v24, v120);
      v74 = v107;
      v75 = v106;
      sub_100002B84(0, &qword_100093A70, OS_dispatch_queue_ptr);
      v120 = static OS_dispatch_queue.main.getter();
      v76 = v105;
      static DispatchTime.now()();
      *v16 = 1;
      (*(v75 + 104))(v16, enum case for DispatchTimeInterval.seconds(_:), v74);
      v77 = v108;
      + infix(_:_:)();
      (*(v75 + 8))(v16, v74);
      v78 = *(v109 + 8);
      v79 = v110;
      v78(v76, v110);
      v80 = swift_allocObject();
      v81 = v100;
      v82 = v119;
      *(v80 + 16) = v100;
      *(v80 + 24) = v82;
      *(v80 + 32) = a2;
      *(v80 + 40) = a3;
      LODWORD(v82) = v104;
      *(v80 + 48) = v117;
      *(v80 + 52) = v82;
      *(v80 + 56) = v118;
      v125 = sub_100034BE8;
      v126 = v80;
      aBlock = _NSConcreteStackBlock;
      v122 = 1107296256;
      v123 = sub_100002DB0;
      v124 = &unk_10008ADB8;
      v83 = _Block_copy(&aBlock);

      v84 = v81;
      v85 = a3;

      v86 = v111;
      static DispatchQoS.unspecified.getter();
      aBlock = &_swiftEmptyArrayStorage;
      sub_100030300(&unk_100093410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10000DB4C(&unk_100093A80, &qword_1000736E0);
      sub_1000035DC();
      v87 = v113;
      v88 = v116;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v89 = v120;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v83);

      (*(v115 + 8))(v87, v88);
      (*(v112 + 8))(v86, v114);
      v78(v77, v79);
      return;
    }

    v58 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    aBlock = v99;
    *v58 = 136316162;
    v101 = a2;
    *(v58 + 4) = sub_100005D28(v119, a2, &aBlock);
    *(v58 + 12) = 2048;
    *(v58 + 14) = v118;
    *(v58 + 22) = 1024;
    v59 = DOCItemCollectionViewController.nodeCollection.getter();
    if (v59)
    {
      v60 = v59;
      v61 = [v59 isGathering];

      *(v58 + 24) = v61;
      *(v58 + 28) = 2048;
      *(v58 + 30) = v51;
      *(v58 + 38) = 2048;
      v62 = dispatch thunk of DOCItemCollectionViewController.items.getter();
      if (v62 >> 62)
      {
        v63 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v63 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      a2 = v101;

      *(v58 + 40) = v63;

      _os_log_impl(&_mh_execute_header, v56, v57, "waiting before starting test %s (attempt %ld). collection view is gathering: %{BOOL}d, content size: %f, items count : %ld", v58, 0x30u);
      sub_100034948(v99);

      goto LABEL_29;
    }

    goto LABEL_40;
  }

  v64 = dispatch thunk of DOCItemCollectionViewController.items.getter();
  if (v64 >> 62)
  {
    v98 = _CocoaArrayWrapper.endIndex.getter();

    if (!v98)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v65 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v65)
    {
      goto LABEL_15;
    }
  }

  if (v49 == 0.0 || v51 == 0.0)
  {
    goto LABEL_15;
  }

  [v47 layoutIfNeeded];
  static Logger.Tests.getter();
  v66 = a3;
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    *v69 = 67109888;
    *(v69 + 4) = v117;
    *(v69 + 8) = 1024;
    v70 = v104;
    *(v69 + 10) = v104;
    *(v69 + 14) = 2048;
    *(v69 + 16) = v51;
    *(v69 + 24) = 2048;
    v71 = dispatch thunk of DOCItemCollectionViewController.items.getter();
    v72 = v119;
    if (v71 >> 62)
    {
      v73 = _CocoaArrayWrapper.endIndex.getter();
      v70 = v104;
    }

    else
    {
      v73 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v69 + 26) = v73;

    _os_log_impl(&_mh_execute_header, v67, v68, "performing scroll test. %d iterations, %d delta, content size is %f, item count : %ld", v69, 0x22u);
  }

  else
  {

    v67 = v66;
    v72 = v119;
    v70 = v104;
  }

  v103(v100, v120);
  aBlock = v72;
  v122 = a2;
  v127 = 0x6C61727574614ELL;
  v128 = 0xE700000000000000;
  sub_10000A1D0();
  v90 = StringProtocol.contains<A>(_:)();
  v91 = v102;
  if ((v90 & 1) == 0 || (v92 = objc_opt_self(), ![v92 isRecapAvailable]))
  {
    [v91 _effectiveContentInset];
    [v91 setContentOffset:{0.0, -v97}];
    v46 = String._bridgeToObjectiveC()();
    [v91 _performScrollTest:v46 iterations:v117 delta:v70];

LABEL_11:
    return;
  }

  v93 = objc_allocWithZone(RPTScrollViewTestParameters);

  v94 = v91;
  v95 = String._bridgeToObjectiveC()();

  v96 = [v93 initWithTestName:v95 scrollView:v94 completionHandler:0];

  [v92 runTestWithParameters:v96];
}

unint64_t sub_10000F644(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    v25 = 0;
    LOBYTE(v24) = 1;
LABEL_65:
    LOBYTE(v27[0]) = v24;
    return v25 | ((v24 & 1) << 32);
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = sub_10002CC10(result, a2, 10);

    v24 = (v6 >> 32) & 1;
LABEL_63:
    v25 = v6;
    if (v24)
    {
      v25 = 0;
    }

    goto LABEL_65;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v3 = v26;
    }

    v5 = *result;
    if (v5 == 43)
    {
      if (v3 >= 1)
      {
        if (--v3)
        {
          LODWORD(v6) = 0;
          if (result)
          {
            v13 = (result + 1);
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                goto LABEL_61;
              }

              v15 = 10 * v6;
              if (v15 != v15)
              {
                goto LABEL_61;
              }

              LODWORD(v6) = v15 + v14;
              if (__OFADD__(v15, v14))
              {
                goto LABEL_61;
              }

              ++v13;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_61;
      }

      goto LABEL_71;
    }

    if (v5 != 45)
    {
      if (v3)
      {
        LODWORD(v6) = 0;
        if (result)
        {
          while (1)
          {
            v19 = *result - 48;
            if (v19 > 9)
            {
              goto LABEL_61;
            }

            v20 = 10 * v6;
            if (v20 != v20)
            {
              goto LABEL_61;
            }

            LODWORD(v6) = v20 + v19;
            if (__OFADD__(v20, v19))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_61:
      LODWORD(v6) = 0;
      LOBYTE(v3) = 1;
      goto LABEL_62;
    }

    if (v3 >= 1)
    {
      if (--v3)
      {
        LODWORD(v6) = 0;
        if (result)
        {
          v7 = (result + 1);
          while (1)
          {
            v8 = *v7 - 48;
            if (v8 > 9)
            {
              goto LABEL_61;
            }

            v9 = 10 * v6;
            if (v9 != v9)
            {
              goto LABEL_61;
            }

            LODWORD(v6) = v9 - v8;
            if (__OFSUB__(v9, v8))
            {
              goto LABEL_61;
            }

            ++v7;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v3) = 0;
LABEL_62:
        v28 = v3;
        LOBYTE(v24) = v3;

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v27[0] = result;
  v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v2)
      {
        LODWORD(v6) = 0;
        v21 = v27;
        while (1)
        {
          v22 = *v21 - 48;
          if (v22 > 9)
          {
            break;
          }

          v23 = 10 * v6;
          if (v23 != v23)
          {
            break;
          }

          LODWORD(v6) = v23 + v22;
          if (__OFADD__(v23, v22))
          {
            break;
          }

          ++v21;
          if (!--v2)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v2)
    {
      v3 = v2 - 1;
      if (v2 != 1)
      {
        LODWORD(v6) = 0;
        v10 = v27 + 1;
        while (1)
        {
          v11 = *v10 - 48;
          if (v11 > 9)
          {
            break;
          }

          v12 = 10 * v6;
          if (v12 != v12)
          {
            break;
          }

          LODWORD(v6) = v12 - v11;
          if (__OFSUB__(v12, v11))
          {
            break;
          }

          ++v10;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_70;
  }

  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      LODWORD(v6) = 0;
      v16 = v27 + 1;
      while (1)
      {
        v17 = *v16 - 48;
        if (v17 > 9)
        {
          break;
        }

        v18 = 10 * v6;
        if (v18 != v18)
        {
          break;
        }

        LODWORD(v6) = v18 + v17;
        if (__OFADD__(v18, v17))
        {
          break;
        }

        ++v16;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_72:
  __break(1u);
  return result;
}

void sub_10000F920(void **a1, unint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.Tests.getter();

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v20 = a3;
    v15 = v14;
    v16 = swift_slowAlloc();
    v21 = a4;
    v22 = v16;
    v17 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_100005D28(a1, a2, &v22);
    _os_log_impl(&_mh_execute_header, v12, v13, "performing scrolling test %s", v15, 0xCu);
    sub_100034948(v17);
    a4 = v21;

    a3 = v20;
  }

  (*(v9 + 8))(v11, v8);
  v18 = sub_10002EB80(a3);
  sub_10000E8BC(a1, a2, a4, v18, HIDWORD(v18), 0);
}

void sub_10000FB10(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v42 = a2;
  v35 = a3;
  v41 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v39 = *(v5 - 8);
  v40 = v5;
  __chkstk_darwin(v5);
  v37 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for DispatchQoS();
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTimeInterval();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = type metadata accessor for DispatchTime();
  v13 = *(v44 - 8);
  v14 = __chkstk_darwin(v44);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v33 - v17;
  v19 = [a4 effectiveFullBrowser];
  v20 = DOCFullDocumentManagerViewController.tabbedBrowserController.getter();

  if (v20)
  {
    [v20 switchToTab:2];
    v21 = [v20 splitBrowserViewController];
    [v21 showSidebar];

    sub_100002B84(0, &qword_100093A70, OS_dispatch_queue_ptr);
    v34 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    *v12 = 1;
    (*(v10 + 104))(v12, enum case for DispatchTimeInterval.seconds(_:), v9);
    + infix(_:_:)();
    (*(v10 + 8))(v12, v9);
    v33 = *(v13 + 8);
    v33(v16, v44);
    v22 = swift_allocObject();
    v23 = v43;
    v22[2] = a4;
    v22[3] = v23;
    v24 = a4;
    v25 = v42;
    v22[4] = v41;
    v22[5] = v25;
    v22[6] = v35;
    aBlock[4] = sub_100034BD0;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100002DB0;
    aBlock[3] = &unk_10008AD68;
    v26 = _Block_copy(aBlock);
    v27 = v24;
    v28 = v23;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_100030300(&unk_100093410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000DB4C(&unk_100093A80, &qword_1000736E0);
    sub_1000035DC();
    v29 = v37;
    v30 = v40;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v31 = v34;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v26);

    (*(v39 + 8))(v29, v30);
    (*(v36 + 8))(v8, v38);
    v33(v18, v44);
  }

  else
  {
    v44 = String._bridgeToObjectiveC()();
    [v43 failedTest:v44];
    v32 = v44;
  }
}

void sub_100010088(void *a1, void *a2, void **a3, void *a4, uint64_t a5)
{
  v9 = [a1 effectiveFullBrowser];
  v11 = DOCFullDocumentManagerViewController.sidebarViewController.getter();

  if (v11)
  {
    v10 = sub_10002EB80(a5);
    sub_100010158(a3, a4, v11, v10, HIDWORD(v10));
  }

  else
  {
    v11 = String._bridgeToObjectiveC()();
    [a2 failedTest:?];
  }
}

void sub_100010158(void **a1, NSString a2, void *a3, unsigned int a4, unsigned int a5)
{
  v6 = v5;
  v82 = a4;
  v83 = a5;
  v84 = a2;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v80 = *(v9 - 8);
  v81 = v9;
  __chkstk_darwin(v9);
  v78 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for DispatchQoS();
  v77 = *(v79 - 8);
  __chkstk_darwin(v79);
  v76 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchTimeInterval();
  v71 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = (&v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for DispatchTime();
  v74 = *(v15 - 8);
  v75 = v15;
  v16 = __chkstk_darwin(v15);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v72 = &v67 - v19;
  v20 = type metadata accessor for Logger();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v24 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v67 - v25;
  v73 = a3;
  v27 = [a3 collectionView];
  if (v27)
  {
    v69 = v6;
    v70 = v27;
    [v27 contentSize];
    v30 = v29;
    v31 = v28;
    if (v29 == 0.0 || v28 == 0.0)
    {
      v68 = a1;
      static Logger.Tests.getter();

      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        aBlock = v47;
        *v46 = 136315650;
        *(v46 + 4) = sub_100005D28(v68, v84, &aBlock);
        *(v46 + 12) = 2048;
        *(v46 + 14) = v30;
        *(v46 + 22) = 2048;
        *(v46 + 24) = v31;
        _os_log_impl(&_mh_execute_header, v44, v45, "waiting before starting test %s. content size: {%f, %f}", v46, 0x20u);
        sub_100034948(v47);
      }

      (*(v21 + 8))(v26, v20);
      v48 = v68;
      sub_100002B84(0, &qword_100093A70, OS_dispatch_queue_ptr);
      v68 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      *v14 = 1;
      v49 = v71;
      (*(v71 + 104))(v14, enum case for DispatchTimeInterval.seconds(_:), v12);
      v50 = v72;
      + infix(_:_:)();
      (*(v49 + 8))(v14, v12);
      v51 = v75;
      v52 = *(v74 + 8);
      v52(v18, v75);
      v53 = swift_allocObject();
      v54 = v69;
      *(v53 + 16) = v69;
      *(v53 + 24) = v48;
      v55 = v73;
      *(v53 + 32) = v84;
      *(v53 + 40) = v55;
      v56 = v83;
      *(v53 + 48) = v82;
      *(v53 + 52) = v56;
      v89 = sub_100034BA0;
      v90 = v53;
      aBlock = _NSConcreteStackBlock;
      v86 = 1107296256;
      v87 = sub_100002DB0;
      v88 = &unk_10008AD18;
      v57 = _Block_copy(&aBlock);

      v58 = v54;
      v59 = v55;

      v60 = v76;
      static DispatchQoS.unspecified.getter();
      aBlock = &_swiftEmptyArrayStorage;
      sub_100030300(&unk_100093410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10000DB4C(&unk_100093A80, &qword_1000736E0);
      sub_1000035DC();
      v61 = v78;
      v62 = v81;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v63 = v68;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v57);

      (*(v80 + 8))(v61, v62);
      (*(v77 + 8))(v60, v79);
      v52(v50, v51);
    }

    else
    {
      v32 = v83;
      static Logger.Tests.getter();
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.debug.getter();
      v35 = os_log_type_enabled(v33, v34);
      v36 = v82;
      if (v35)
      {
        v37 = swift_slowAlloc();
        *v37 = 67109632;
        *(v37 + 4) = v36;
        *(v37 + 8) = 1024;
        *(v37 + 10) = v32;
        *(v37 + 14) = 2048;
        *(v37 + 16) = v31;
        _os_log_impl(&_mh_execute_header, v33, v34, "performing scroll test. %d iterations, %d delta, content size is %f", v37, 0x18u);
      }

      (*(v21 + 8))(v24, v20);
      aBlock = a1;
      v86 = v84;
      v91 = 0x6C61727574614ELL;
      v92 = 0xE700000000000000;
      sub_10000A1D0();
      if ((StringProtocol.contains<A>(_:)() & 1) != 0 && (v38 = objc_opt_self(), [v38 isRecapAvailable]))
      {
        v39 = objc_allocWithZone(RPTScrollViewTestParameters);

        v40 = v70;
        v41 = String._bridgeToObjectiveC()();

        v42 = [v39 initWithTestName:v41 scrollView:v40 completionHandler:0];

        [v38 runTestWithParameters:v42];
      }

      else
      {
        v64 = v70;
        [v70 _effectiveContentInset];
        [v64 setContentOffset:{0.0, -v65}];
        v66 = String._bridgeToObjectiveC()();
        [v64 _performScrollTest:v66 iterations:v36 delta:v32];
      }
    }
  }

  else
  {
    v84 = String._bridgeToObjectiveC()();
    [v6 failedTest:v84];
    v43 = v84;
  }
}

void sub_100010AB8(uint64_t a1, uint64_t a2, void *a3, void **a4, unint64_t a5, void *a6, char a7, uint64_t a8)
{
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v39 = String._bridgeToObjectiveC()();
    [a3 failedTest:v39];
LABEL_3:
    v19 = v39;

    return;
  }

  v38 = v16;
  v20 = [a6 effectiveBrowserViewController];
  if (v20)
  {
    v21 = v20;
    v39 = DOCBrowserContainerController.containedItemCollectionViewController.getter();

    if (v39)
    {
      dispatch thunk of DOCItemCollectionViewController.displayMode.setter();
      sub_10000F920(a4, a5, a8, v39);
      goto LABEL_3;
    }
  }

  static Logger.Tests.getter();
  v22 = a6;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v23, v24))
  {
    LODWORD(v39) = v24;
    v25 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v41 = v37;
    *v25 = 136315394;
    v40 = [v22 effectiveBrowserViewController];
    sub_10000DB4C(&unk_1000938A0, &qword_1000740B8);
    v26 = String.init<A>(describing:)();
    v28 = sub_100005D28(v26, v27, &v41);

    *(v25 + 4) = v28;
    *(v25 + 12) = 2080;
    v29 = [v22 effectiveBrowserViewController];
    if (v29)
    {
      v30 = v29;
      v31 = DOCBrowserContainerController.containedItemCollectionViewController.getter();
    }

    else
    {
      v31 = 0;
    }

    v40 = v31;
    sub_10000DB4C(&qword_100093898, &qword_1000740B0);
    v32 = String.init<A>(describing:)();
    v34 = sub_100005D28(v32, v33, &v41);

    *(v25 + 14) = v34;
    _os_log_impl(&_mh_execute_header, v23, v39, "%s's content VC is %s, not a DOCItemCollectionViewController", v25, 0x16u);
    swift_arrayDestroy();
  }

  (*(v15 + 8))(v18, v38);
  v35 = String._bridgeToObjectiveC()();
  [a3 failedTest:v35];
}

uint64_t sub_100010E38(void *a1, void *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v36 = a6;
  v37 = a3;
  v33 = a5;
  v9 = type metadata accessor for Logger();
  v35 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() recentDocumentsLocation];
  static Logger.Tests.getter();
  v13 = v12;
  v14 = a1;
  v34 = v11;
  v15 = Logger.logObject.getter();
  LODWORD(a1) = static os_log_type_t.info.getter();

  v32 = a1;
  v16 = &off_100091000;
  if (os_log_type_enabled(v15, a1))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v31 = v18;
    *v17 = 138412546;
    *(v17 + 4) = v13;
    *v18 = v13;
    *(v17 + 12) = 2112;
    v19 = v13;
    v20 = [v14 fullRecentsViewController];
    v21 = a2;
    v22 = a4;
    v23 = [v20 hierarchyController];

    *(v17 + 14) = v23;
    v31[1] = v23;
    a4 = v22;
    a2 = v21;
    _os_log_impl(&_mh_execute_header, v15, v32, "resetting location %@ to %@", v17, 0x16u);
    sub_10000DB4C(&qword_1000937D0, &unk_1000743F0);
    swift_arrayDestroy();

    v16 = &off_100091000;
  }

  (*(v35 + 8))(v34, v9);
  v24 = [v14 fullRecentsViewController];
  v25 = [v24 v16[293]];

  v26 = swift_allocObject();
  *(v26 + 16) = v14;
  *(v26 + 24) = a2;
  v27 = v36;
  *(v26 + 32) = v37;
  *(v26 + 40) = a4;
  *(v26 + 48) = v33 & 1;
  *(v26 + 56) = v27;
  v28 = v14;
  v29 = a2;

  DOCHierarchyController.reset(with:animated:completionHandler:)();
}

void sub_100011148(void *a1, void *a2, void **a3, unint64_t a4, char a5, uint64_t a6)
{
  v35 = a3;
  v36 = a4;
  v37 = a2;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v34 - v13;
  static Logger.Tests.getter();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "location reset completion block", v17, 2u);
  }

  v18 = *(v9 + 8);
  v18(v14, v8);
  v19 = [a1 effectiveBrowserViewController];
  if (v19 && (v20 = v19, v21 = DOCBrowserContainerController.containedItemCollectionViewController.getter(), v20, v21))
  {
    v22 = [a1 fullRecentsViewController];
    DOCFullDocumentManagerViewController.updateDisplayMode(to:saveAsUserSelection:for:)();

    sub_10000F920(v35, v36, a6, v21);
  }

  else
  {
    static Logger.Tests.getter();
    v23 = a1;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v39 = v27;
      *v26 = 136315138;
      v28 = [v23 effectiveBrowserViewController];
      if (v28)
      {
        v29 = v28;
        v30 = DOCBrowserContainerController.containedItemCollectionViewController.getter();
      }

      else
      {
        v30 = 0;
      }

      v38 = v30;
      sub_10000DB4C(&qword_100093898, &qword_1000740B0);
      v31 = String.init<A>(describing:)();
      v33 = sub_100005D28(v31, v32, &v39);

      *(v26 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v24, v25, "itemCollectionVC %s is not a DOCItemCollectionViewController", v26, 0xCu);
      sub_100034948(v27);
    }

    v18(v12, v8);
    v21 = String._bridgeToObjectiveC()();
    [v37 failedTest:v21];
  }
}

void sub_1000114A8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v63 = a7;
  v64 = a8;
  v13 = type metadata accessor for IndexPath();
  v61 = *(v13 - 8);
  v62 = v13;
  __chkstk_darwin(v13);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for Logger();
  v16 = *(v66 - 8);
  v17 = __chkstk_darwin(v66);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v60 - v20;
  if (a2)
  {
    v22 = String._bridgeToObjectiveC()();
    [a3 failedTest:v22];
  }

  v67 = a4;
  v23 = [a6 effectiveBrowserViewController];
  if (v23 && (v24 = v23, v25 = DOCBrowserContainerController.containedItemCollectionViewController.getter(), v24, v25))
  {
    static Logger.Tests.getter();

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();

    v28 = os_log_type_enabled(v26, v27);
    v65 = a5;
    if (v28)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v60 = a3;
      v31 = v30;
      *&v68[0] = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_100005D28(v67, a5, v68);
      _os_log_impl(&_mh_execute_header, v26, v27, "Navigating to 100item folder for test %s", v29, 0xCu);
      sub_100034948(v31);
      a3 = v60;
    }

    (*(v16 + 8))(v21, v66);
    v32 = [a6 effectiveFullBrowser];
    DOCFullDocumentManagerViewController.updateDisplayMode(to:saveAsUserSelection:for:)();

    v33 = dispatch thunk of DOCItemCollectionViewController.collectionView.getter();
    sub_100011B8C(v33, 2, v15);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    (*(v61 + 8))(v15, v62);
    [v25 collectionView:v33 performPrimaryActionForItemAtIndexPath:isa];

    v45 = v65;
    v46 = v67;
    v47 = DOCFullDocumentManagerViewControllerDidFinishLoadingNotificationName;
    v48 = swift_allocObject();
    v48[2] = a6;
    v48[3] = a3;
    v48[4] = v46;
    v48[5] = v45;
    v48[6] = v64;
    v49 = objc_opt_self();

    v50 = v47;
    v51 = a6;
    v52 = a3;

    v53 = [v49 defaultCenter];
    memset(v68, 0, sizeof(v68));
    v54 = [objc_opt_self() mainQueue];
    v55 = swift_allocObject();
    *(v55 + 16) = sub_100034EA8;
    *(v55 + 24) = v48;

    NSNotificationCenter.doc_observeOnce(forName:object:queue:using:)();

    sub_100005A04(v68, &qword_100093498, &qword_100074430);
  }

  else
  {
    static Logger.Tests.getter();
    v34 = a6;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v65 = a5;
      v60 = a3;
      v37 = swift_slowAlloc();
      *&v68[0] = swift_slowAlloc();
      *v37 = 136315394;
      v69 = [v34 effectiveBrowserViewController];
      sub_10000DB4C(&unk_1000938A0, &qword_1000740B8);
      v38 = String.init<A>(describing:)();
      v40 = sub_100005D28(v38, v39, v68);

      *(v37 + 4) = v40;
      *(v37 + 12) = 2080;
      v41 = [v34 effectiveBrowserViewController];
      if (v41)
      {
        v42 = v41;
        v43 = DOCBrowserContainerController.containedItemCollectionViewController.getter();
      }

      else
      {
        v43 = 0;
      }

      v69 = v43;
      sub_10000DB4C(&qword_100093898, &qword_1000740B0);
      v56 = String.init<A>(describing:)();
      v58 = sub_100005D28(v56, v57, v68);

      *(v37 + 14) = v58;
      _os_log_impl(&_mh_execute_header, v35, v36, "%s's content VC is %s), not a DOCItemCollectionViewController", v37, 0x16u);
      swift_arrayDestroy();

      (*(v16 + 8))(v19, v66);
      a3 = v60;
    }

    else
    {

      (*(v16 + 8))(v19, v66);
    }

    v59 = String._bridgeToObjectiveC()();
    [a3 failedTest:v59];
  }
}

void sub_100011B8C(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v50[1] = a3;
  v59 = a2;
  v4 = type metadata accessor for Logger();
  v52 = *(v4 - 8);
  v53 = v4;
  __chkstk_darwin(v4);
  v6 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 preparedCells];
  if (v7)
  {
    v8 = v7;
    sub_100002B84(0, &qword_1000937E8, UICollectionViewCell_ptr);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v51 = a1;
    if (v9 >> 62)
    {
      goto LABEL_54;
    }

    for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v11 = 0;
      v60 = v9 & 0xC000000000000001;
      v54 = 0x8000000100074D90;
      v55 = v9 & 0xFFFFFFFFFFFFFF8;
      v57 = v6;
      v58 = v9;
      v56 = i;
      while (1)
      {
        if (v60)
        {
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v11 >= *(v55 + 16))
          {
            goto LABEL_53;
          }

          v12 = *(v9 + 8 * v11 + 32);
        }

        v13 = v12;
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        type metadata accessor for DOCItemCollectionCell();
        if (swift_dynamicCastClass())
        {
          v15 = v13;
          v16 = dispatch thunk of DOCItemCollectionCell.cellContent.getter();

          if (!v16)
          {
            goto LABEL_47;
          }

          v17 = dispatch thunk of DOCItemCollectionCellContent.node.getter();
          if (!v17)
          {

LABEL_47:

            sub_100034538();
            swift_allocError();
            swift_willThrow();

            return;
          }

          v61 = v15;
          if (v59 <= 3u)
          {
            v18 = 0x6574493030312D33;
            if (v59 != 2)
            {
              v18 = 3158067;
            }

            v19 = 0xEF7265646C6F466DLL;
            if (v59 != 2)
            {
              v19 = 0xE300000000000000;
            }

            v20 = 0x467974706D452D32;
            if (v59)
            {
              v20 = 0x6D65744936312D31;
            }

            v21 = 0xED00007265646C6FLL;
            if (v59)
            {
              v21 = 0xEE007265646C6F46;
            }

            v22 = v59 <= 1u;
          }

          else
          {
            v18 = 0x6E6F736874696D53;
            if (v59 != 7)
            {
              v18 = 0x6F46747365544C51;
            }

            v19 = 0xEF6664702E6E6169;
            if (v59 != 7)
            {
              v19 = 0xEC0000007265646CLL;
            }

            if (v59 == 6)
            {
              v18 = 0x462072656D6D7553;
              v19 = 0xEE0067706A2E6E75;
            }

            v20 = 0xD000000000000010;
            if (v59 != 4)
            {
              v20 = 0x2073776F646E6957;
            }

            v21 = v54;
            if (v59 != 4)
            {
              v21 = 0xEE00667265502038;
            }

            v22 = v59 <= 5u;
          }

          if (v22)
          {
            v23 = v20;
          }

          else
          {
            v23 = v18;
          }

          if (v22)
          {
            v24 = v21;
          }

          else
          {
            v24 = v19;
          }

          v25 = [v17 filename];
          v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v28 = v27;

          if (v23 == v26 && v24 == v28)
          {

            v30 = v61;
LABEL_49:

            v31 = [v51 indexPathForCell:v30];
            if (v31)
            {
              v32 = v31;
              static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

              swift_unknownObjectRelease();
            }

            else
            {
              sub_100034538();
              swift_allocError();
              swift_willThrow();

              swift_unknownObjectRelease();
            }

            return;
          }

          v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v9 = v58;
          v30 = v61;
          if (v29)
          {
            goto LABEL_49;
          }

          swift_unknownObjectRelease();
          i = v56;
          v6 = v57;
        }

        else
        {
        }

        ++v11;
        if (v14 == i)
        {
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      ;
    }

LABEL_55:

    static Logger.Tests.getter();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v62 = v36;
      *v35 = 136315138;
      if (v59 <= 3u)
      {
        v45 = 0x467974706D452D32;
        v46 = 0xED00007265646C6FLL;
        v47 = 0x6574493030312D33;
        v48 = 0xEF7265646C6F466DLL;
        if (v59 != 2)
        {
          v47 = 3158067;
          v48 = 0xE300000000000000;
        }

        if (v59)
        {
          v45 = 0x6D65744936312D31;
          v46 = 0xEE007265646C6F46;
        }

        if (v59 <= 1u)
        {
          v43 = v45;
        }

        else
        {
          v43 = v47;
        }

        if (v59 <= 1u)
        {
          v44 = v46;
        }

        else
        {
          v44 = v48;
        }
      }

      else
      {
        v37 = 0x462072656D6D7553;
        v38 = 0xEE0067706A2E6E75;
        v39 = 0x6E6F736874696D53;
        v40 = 0xEF6664702E6E6169;
        if (v59 != 7)
        {
          v39 = 0x6F46747365544C51;
          v40 = 0xEC0000007265646CLL;
        }

        if (v59 != 6)
        {
          v37 = v39;
          v38 = v40;
        }

        v41 = 0xD000000000000010;
        v42 = 0x8000000100074D90;
        if (v59 != 4)
        {
          v41 = 0x2073776F646E6957;
          v42 = 0xEE00667265502038;
        }

        if (v59 <= 5u)
        {
          v43 = v41;
        }

        else
        {
          v43 = v37;
        }

        if (v59 <= 5u)
        {
          v44 = v42;
        }

        else
        {
          v44 = v38;
        }
      }

      v49 = sub_100005D28(v43, v44, &v62);

      *(v35 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v33, v34, "index path not found for folder name %s", v35, 0xCu);
      sub_100034948(v36);
    }

    (*(v52 + 8))(v6, v53);
    sub_100034538();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    __break(1u);
  }
}

void sub_1000122D8(void *a1, void *a2, void **a3, unint64_t a4, uint64_t a5)
{
  v9 = [a1 effectiveBrowserViewController];
  if (v9 && (v10 = v9, v11 = DOCBrowserContainerController.containedItemCollectionViewController.getter(), v10, v11))
  {
    sub_10000F920(a3, a4, a5, v11);
  }

  else
  {
    v11 = String._bridgeToObjectiveC()();
    [a2 failedTest:?];
  }
}

void sub_1000123A0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v46 = a5;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v16 = String._bridgeToObjectiveC()();
    [a3 failedTest:v16];
  }

  v17 = [a6 effectiveBrowserViewController];
  if (v17 && (v18 = a4, v19 = v17, v20 = DOCBrowserContainerController.containedItemCollectionViewController.getter(), v19, a4 = v18, v20))
  {
    v21 = [a6 effectiveFullBrowser];
    v22 = objc_opt_self();
    v23 = swift_allocObject();
    v23[2] = a3;
    v23[3] = v20;
    v24 = v46;
    v23[4] = v18;
    v23[5] = v24;
    v23[6] = v21;
    v23[7] = a7;
    aBlock[4] = sub_100034F1C;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100002DB0;
    aBlock[3] = &unk_10008DE78;
    v25 = _Block_copy(aBlock);
    v26 = a3;
    v27 = v20;

    v28 = v21;

    [v22 performAfterCATransactionCommits:v25];
    _Block_release(v25);
  }

  else
  {
    v45 = a3;
    static Logger.Tests.getter();
    v29 = a6;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v44 = a4;
      v32 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      aBlock[0] = v43;
      *v32 = 136315394;
      v48 = [v29 effectiveBrowserViewController];
      sub_10000DB4C(&unk_1000938A0, &qword_1000740B8);
      v33 = String.init<A>(describing:)();
      v35 = sub_100005D28(v33, v34, aBlock);

      *(v32 + 4) = v35;
      *(v32 + 12) = 2080;
      v36 = [v29 effectiveBrowserViewController];
      if (v36)
      {
        v37 = v36;
        v38 = DOCBrowserContainerController.containedItemCollectionViewController.getter();
      }

      else
      {
        v38 = 0;
      }

      v48 = v38;
      sub_10000DB4C(&qword_100093898, &qword_1000740B0);
      v39 = String.init<A>(describing:)();
      v41 = sub_100005D28(v39, v40, aBlock);

      *(v32 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v30, v31, "%s's content VC is %s, not a DOCItemCollectionViewController", v32, 0x16u);
      swift_arrayDestroy();

      (*(v13 + 8))(v15, v12);
    }

    else
    {

      (*(v13 + 8))(v15, v12);
    }

    v28 = String._bridgeToObjectiveC()();
    [v45 failedTest:v28];
  }
}

uint64_t sub_1000127EC(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = a5;
  v12[6] = a6;
  v12[7] = a2;
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = sub_100034F84;
  v13[4] = v12;
  v14 = a2;
  v15 = a1;

  v16 = a5;

  if (sub_10002F5B8(v14))
  {
    sub_100014F3C(v14, sub_100034F84, v12);
  }

  else
  {
    v18 = static NSNotificationName.DOCItemCollectionViewDidLayoutSubviews.getter();
    v19 = swift_allocObject();
    v19[2] = v15;
    v19[3] = v14;
    v19[4] = sub_1000355EC;
    v19[5] = v13;
    v20 = objc_opt_self();
    v21 = v14;
    v22 = v15;

    v23 = [v20 defaultCenter];
    v28[3] = sub_100002B84(0, &qword_1000937E0, UIViewController_ptr);
    v24 = objc_opt_self();
    v25 = v21;
    v26 = [v24 mainQueue];
    v27 = swift_allocObject();
    *(v27 + 16) = sub_1000355DC;
    *(v27 + 24) = v19;

    NSNotificationCenter.doc_observeOnce(forName:object:queue:using:)();

    sub_100005A04(v28, &qword_100093498, &qword_100074430);
  }
}

id sub_100012A88(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = String._bridgeToObjectiveC()();
  [a1 startedTest:v8];

  DOCFullDocumentManagerViewController.updateDisplayMode(to:saveAsUserSelection:for:)();
  result = [a6 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v10 = result;
  [result setNeedsLayout];

  result = [a6 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v11 = result;
  [result layoutIfNeeded];

  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  v13 = swift_allocObject();
  v13[2] = a6;
  v13[3] = sub_100034FB4;
  v13[4] = v12;
  v14 = a1;

  v15 = a6;
  if (sub_10002F5B8(v15))
  {
    sub_100014F3C(v15, sub_100034FB4, v12);
  }

  else
  {
    v16 = static NSNotificationName.DOCItemCollectionViewDidLayoutSubviews.getter();
    v17 = swift_allocObject();
    v17[2] = v14;
    v17[3] = v15;
    v17[4] = sub_1000355EC;
    v17[5] = v13;
    v18 = objc_opt_self();
    v19 = v14;
    v20 = v15;

    v21 = [v18 defaultCenter];
    v26[3] = sub_100002B84(0, &qword_1000937E0, UIViewController_ptr);
    v22 = objc_opt_self();
    v23 = v20;
    v24 = [v22 mainQueue];
    v25 = swift_allocObject();
    *(v25 + 16) = sub_1000355DC;
    *(v25 + 24) = v17;

    NSNotificationCenter.doc_observeOnce(forName:object:queue:using:)();

    sub_100005A04(v26, &qword_100093498, &qword_100074430);
  }
}

uint64_t sub_100012D9C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v23 = *(v7 - 8);
  v24 = v7;
  __chkstk_darwin(v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTime();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v22 - v15;
  sub_100002B84(0, &qword_100093A70, OS_dispatch_queue_ptr);
  v17 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v22 = *(v11 + 8);
  v22(v14, v10);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  aBlock[4] = sub_100034FBC;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002DB0;
  aBlock[3] = &unk_10008E008;
  v19 = _Block_copy(aBlock);
  v20 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100030300(&unk_100093410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000DB4C(&unk_100093A80, &qword_1000736E0);
  sub_1000035DC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v19);

  (*(v25 + 8))(v6, v4);
  (*(v23 + 8))(v9, v24);
  return (v22)(v16, v10);
}

void sub_100013148(char *a1)
{
  if (*&a1[OBJC_IVAR____TtC5Files14DOCApplication_currentTestName + 8])
  {
    v1 = a1;

    v2 = String._bridgeToObjectiveC()();

    a1 = v1;
  }

  else
  {
    v2 = 0;
  }

  [a1 finishedTest:v2 waitForCommit:0 extraResults:0];
}

Swift::Int sub_1000131FC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100013270(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_1000132C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v26 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v26 - 8);
  __chkstk_darwin(v26);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v28 = *(v16 - 8);
  v29 = v16;
  __chkstk_darwin(v16);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002B84(0, &qword_100093A70, OS_dispatch_queue_ptr);
  v27 = static OS_dispatch_queue.main.getter();
  v19 = swift_allocObject();
  v19[2] = a3;
  v19[3] = a2;
  v19[4] = a4;
  v19[5] = a5;
  v19[6] = a6;
  v19[7] = a7;
  v19[8] = a1;
  aBlock[4] = sub_100034B18;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002DB0;
  aBlock[3] = &unk_10008AC28;
  v20 = _Block_copy(aBlock);

  swift_errorRetain();

  v21 = a7;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100030300(&unk_100093410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000DB4C(&unk_100093A80, &qword_1000736E0);
  sub_1000035DC();
  v22 = v26;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v23 = v27;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v30 + 8))(v15, v22);
  return (*(v28 + 8))(v18, v29);
}

void sub_1000135E0(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t), uint64_t a4, uint64_t a5, void *a6, unint64_t a7)
{
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v31[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if ((*(a1 + 16) & 1) == 0)
  {
    if (a2)
    {
      a3(0, a2);
    }

    else
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v17 = Strong, v18 = sub_10002F6EC(a6, a7), v17, v18))
      {
        swift_beginAccess();
        *(a1 + 16) = 1;
        v19 = v18;
        a3(v18, 0);
      }

      else
      {
        static Logger.Tests.getter();
        v20 = a6;

        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v31[0] = swift_slowAlloc();
          *v23 = 136315394;
          v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v26 = sub_100005D28(v24, v25, v31);

          *(v23 + 4) = v26;
          *(v23 + 12) = 2080;
          sub_100002B84(0, &qword_100093880, DOCDocumentSource_ptr);
          v27 = Array.description.getter();
          v29 = sub_100005D28(v27, v28, v31);

          *(v23 + 14) = v29;
          _os_log_impl(&_mh_execute_header, v21, v22, "Sources updated. Did not find: %s in list of sources: %s", v23, 0x16u);
          swift_arrayDestroy();
        }

        (*(v13 + 8))(v15, v12);
      }
    }
  }
}

void sub_1000138C8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  sub_100002B84(0, &qword_100093880, DOCDocumentSource_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_100013978(void **a1, void *a2, int a3)
{
  v55 = a3;
  v5 = type metadata accessor for Logger();
  v56 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v52 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v50 - v9;
  __chkstk_darwin(v8);
  v12 = &v50 - v11;
  v13 = *a1;
  static Logger.Tests.getter();
  v14 = a2;
  v15 = v13;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  v18 = os_log_type_enabled(v16, v17);
  v54 = v14;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v57 = v51;
    *v19 = 136315394;
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v5;
    v22 = sub_100005D28(v20, v21, &v57);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2080;
    v23 = v15;
    v24 = [v15 identifier];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28 = sub_100005D28(v25, v27, &v57);
    v29 = v56;

    *(v19 + 14) = v28;
    v5 = v53;
    _os_log_impl(&_mh_execute_header, v16, v17, "Specified source: %s / Available source: %s", v19, 0x16u);
    swift_arrayDestroy();

    v30 = v29;
  }

  else
  {
    v23 = v15;

    v30 = v56;
  }

  v31 = *(v30 + 8);
  v31(v12, v5);
  if ((v55 & 1) == 0 || ![v23 isiCloudBased])
  {
    v36 = [v23 identifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v37._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = String.hasPrefix(_:)(v37);

    if (!v38)
    {
      return 0;
    }

    v32 = v52;
    static Logger.Tests.getter();
    v33 = v23;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v34, v35))
    {
      goto LABEL_10;
    }

LABEL_12:

    v47 = v32;
    v48 = v5;
    goto LABEL_13;
  }

  static Logger.Tests.getter();
  v32 = v10;
  v33 = v23;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();

  if (!os_log_type_enabled(v34, v35))
  {
    goto LABEL_12;
  }

LABEL_10:
  v39 = swift_slowAlloc();
  v40 = swift_slowAlloc();
  v57 = v40;
  *v39 = 136315138;
  v41 = [v33 identifier];
  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v53 = v5;
  v43 = v42;
  v45 = v44;

  v46 = sub_100005D28(v43, v45, &v57);

  *(v39 + 4) = v46;
  _os_log_impl(&_mh_execute_header, v34, v35, "Source %s is a match", v39, 0xCu);
  sub_100034948(v40);

  v47 = v32;
  v48 = v53;
LABEL_13:
  v31(v47, v48);
  return 1;
}

uint64_t sub_100013E60(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v12 = *(v24 - 8);
  __chkstk_darwin(v24);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002B84(0, &qword_100093A70, OS_dispatch_queue_ptr);
  v23 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  v15[2] = v4;
  v15[3] = a2;
  v15[4] = a1;
  v15[5] = a3;
  v15[6] = a4;
  aBlock[4] = sub_100034B7C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002DB0;
  aBlock[3] = &unk_10008AC78;
  v16 = _Block_copy(aBlock);
  v17 = v4;
  v18 = a2;
  v19 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100030300(&unk_100093410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000DB4C(&unk_100093A80, &qword_1000736E0);
  sub_1000035DC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v20 = v23;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v25 + 8))(v11, v9);
  return (*(v12 + 8))(v14, v24);
}

void sub_100014150(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = [a2 tabBarController];
  if (v13)
  {
    v14 = v13;
    sub_100002B84(0, &qword_100093A70, OS_dispatch_queue_ptr);
    *v12 = static OS_dispatch_queue.main.getter();
    (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
    v15 = _dispatchPreconditionTest(_:)();
    (*(v10 + 8))(v12, v9);
    if (v15)
    {
      [v14 setSelectedIndex:2];

      v16 = [a2 effectiveFullBrowser];
      v17 = swift_allocObject();
      v17[2] = a2;
      v17[3] = a4;
      v17[4] = a5;
      aBlock[4] = sub_100034B94;
      aBlock[5] = v17;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100002DB0;
      aBlock[3] = &unk_10008ACC8;
      v18 = _Block_copy(aBlock);
      v19 = a2;

      [v16 showLocation:a3 animated:0 withCompletionBlock:v18];
      _Block_release(v18);

      return;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1000143AC(void *a1, void (*a2)(void *, uint64_t))
{
  v3 = [a1 effectiveBrowserViewController];
  if (v3 && (v4 = v3, v5 = DOCBrowserContainerController.containedItemCollectionViewController.getter(), v4, v5))
  {
    v8 = v5;
    a2(v5, 0);
  }

  else
  {
    sub_100030284();
    v6 = swift_allocError();
    *v7 = 1;
    a2(0, v6);
  }
}

uint64_t sub_1000144AC(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DispatchQoS();
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchTime();
  v24 = *(v26 - 8);
  __chkstk_darwin(v26);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002B84(0, &qword_100093A70, OS_dispatch_queue_ptr);
  v23 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = v4;
  v16[4] = a1;
  v16[5] = a3;
  v16[6] = a4;
  aBlock[4] = sub_100034ADC;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002DB0;
  aBlock[3] = &unk_10008AB10;
  v17 = _Block_copy(aBlock);
  v18 = a2;
  v19 = v4;
  v20 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100030300(&unk_100093410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000DB4C(&unk_100093A80, &qword_1000736E0);
  sub_1000035DC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v21 = v23;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v17);

  (*(v28 + 8))(v11, v9);
  (*(v25 + 8))(v13, v27);
  return (*(v24 + 8))(v15, v26);
}

void sub_10001483C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = [a1 effectiveFullBrowser];
  v10 = [v9 hierarchyController];
  v11 = DOCHierarchyController.sourceObserver.getter();

  v12 = [a1 configuration];
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  v16[2] = v14;
  v16[3] = sub_100034AF4;
  v16[4] = v13;
  v16[5] = v15;
  v16[6] = a3;
  v20[4] = sub_100034B00;
  v20[5] = v16;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1107296256;
  v20[2] = sub_1000138C8;
  v20[3] = &unk_10008ABD8;
  v17 = _Block_copy(v20);
  v18 = a3;

  v19 = [v11 addSubscriberForConfiguration:v12 usingBlock:v17];
  _Block_release(v17);
}

void sub_100014A5C(void *a1, uint64_t a2, void *a3, void (*a4)(void, void), uint64_t a5)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    static Logger.Tests.getter();
    swift_errorRetain();
    v14 = a3;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v30 = a4;
      v18 = v17;
      v19 = swift_slowAlloc();
      v29 = a5;
      v32 = v19;
      *v18 = 136315394;
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = sub_100005D28(v20, v21, &v32);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      v31 = a2;
      swift_errorRetain();
      sub_10000DB4C(&qword_1000937C0, &unk_100074070);
      v23 = String.init<A>(describing:)();
      v25 = sub_100005D28(v23, v24, &v32);

      *(v18 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v15, v16, "error getting location for source identifier %s: %s", v18, 0x16u);
      swift_arrayDestroy();

      a4 = v30;
    }

    (*(v11 + 8))(v13, v10);
    swift_errorRetain();
    a4(0, a2);
  }

  else if (a1)
  {
    v30 = a1;
    a4(a1, 0);
    v26 = v30;
  }

  else
  {
    sub_100030284();
    v27 = swift_allocError();
    *v28 = 2;
    a4(0, v27);
  }
}

uint64_t sub_100014D98(void *a1, void *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (sub_10002F5B8(a2))
  {
    return a3();
  }

  v9 = static NSNotificationName.DOCItemCollectionViewDidLayoutSubviews.getter();
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  v11 = objc_opt_self();
  v12 = a1;
  v13 = a2;

  v14 = [v11 defaultCenter];
  v19[3] = sub_100002B84(0, &qword_1000937E0, UIViewController_ptr);
  v15 = objc_opt_self();
  v16 = v13;
  v17 = [v15 mainQueue];
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1000355DC;
  *(v18 + 24) = v10;

  NSNotificationCenter.doc_observeOnce(forName:object:queue:using:)();

  sub_100005A04(v19, &qword_100093498, &qword_100074430);
}

uint64_t sub_100014F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v72 = a3;
  v71 = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for Logger();
  v89 = *(v91 - 8);
  v11 = __chkstk_darwin(v91);
  v82 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v71 - v14;
  __chkstk_darwin(v13);
  isa = (&v71 - v16);
  v88 = dispatch_group_create();
  v17 = dispatch thunk of DOCItemCollectionViewController.collectionViewIfLoaded.getter();
  v78 = v3;
  v77 = v4;
  v76 = v7;
  v75 = v6;
  v74 = v8;
  v73 = v10;
  if (v17)
  {
    v18 = v17;
    v19 = [v17 visibleCells];

    sub_100002B84(0, &qword_1000937E8, UICollectionViewCell_ptr);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    aBlock = &_swiftEmptyArrayStorage;
    if (v6 >> 62)
    {
LABEL_24:
      v20 = _CocoaArrayWrapper.endIndex.getter();
      if (v20)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v20 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v20)
      {
LABEL_4:
        v21 = 0;
        v84 = &_swiftEmptyArrayStorage;
        while (1)
        {
          v22 = v21;
          while (1)
          {
            if ((v6 & 0xC000000000000001) != 0)
            {
              v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v22 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_23;
              }

              v23 = *(v6 + 8 * v22 + 32);
            }

            v24 = v23;
            v21 = v22 + 1;
            if (__OFADD__(v22, 1))
            {
              __break(1u);
LABEL_23:
              __break(1u);
              goto LABEL_24;
            }

            type metadata accessor for DOCItemCollectionCell();
            if (swift_dynamicCastClass())
            {
              v25 = dispatch thunk of DOCItemCollectionCell.cellContent.getter();
              if (v25)
              {
                break;
              }
            }

LABEL_7:
            ++v22;
            if (v21 == v20)
            {
              goto LABEL_26;
            }
          }

          v26 = v25;
          v27 = dispatch thunk of DOCItemCollectionCellContent.thumbnail.getter();

          if (!v27)
          {
            goto LABEL_7;
          }

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v84 = aBlock;
          if (v21 == v20)
          {
LABEL_26:

            v28 = v84;
            goto LABEL_27;
          }
        }
      }
    }

    v84 = &_swiftEmptyArrayStorage;
    goto LABEL_26;
  }

  v28 = &_swiftEmptyArrayStorage;
LABEL_27:
  v29 = isa;
  static Logger.Tests.getter();

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();
  v32 = v28 >> 62;
  if (!os_log_type_enabled(v30, v31))
  {

    v30 = v89;
    isa = v89[1].isa;
    isa(v29, v91);
    goto LABEL_32;
  }

  v29 = v28;
  v6 = swift_slowAlloc();
  v28 = swift_slowAlloc();
  aBlock = v28;
  *v6 = 136315394;
  *(v6 + 4) = sub_100005D28(0xD00000000000004DLL, 0x8000000100074DD0, &aBlock);
  *(v6 + 12) = 2048;
  if (v32)
  {
    goto LABEL_55;
  }

  for (i = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    *(v6 + 14) = i;

    _os_log_impl(&_mh_execute_header, v30, v31, "%s START waiting for %ld to load before continuing", v6, 0x16u);
    sub_100034948(v28);

    v30 = v89;
    v34 = isa;
    isa = v89[1].isa;
    isa(v34, v91);
    v28 = v29;
LABEL_32:
    if (v32)
    {
      v36 = _CocoaArrayWrapper.endIndex.getter();
      if (!v36)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v36 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v36)
      {
        goto LABEL_53;
      }
    }

    if (v36 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_55:
    ;
  }

  v37 = 0;
  v89 = v30 + 1;
  v83 = "v24@?0@FPItem8@NSError16";
  v85 = v28 & 0xC000000000000001;
  v86 = &v95;
  *&v35 = 136315650;
  v80 = v35;
  *&v35 = 136315394;
  v79 = v35;
  v84 = v28;
  v81 = v15;
  v87 = v36;
  do
  {
    if (v85)
    {
      v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v38 = *(v28 + 8 * v37 + 32);
      swift_unknownObjectRetain();
    }

    static Logger.Tests.getter();
    swift_unknownObjectRetain();
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v41 = v80;
      *(v41 + 4) = sub_100005D28(0xD00000000000004DLL, v83 | 0x8000000000000000, &aBlock);
      *(v41 + 12) = 2080;
      v92 = v38;
      swift_unknownObjectRetain();
      sub_10000DB4C(&qword_100093850, &qword_100074080);
      v42 = String.init<A>(describing:)();
      v44 = sub_100005D28(v42, v43, &aBlock);

      *(v41 + 14) = v44;
      *(v41 + 22) = 2080;
      v45 = [v38 hasFinishedTryingToFetchCorrectThumbnail];
      v46 = v45 == 0;
      if (v45)
      {
        v47 = 1702195828;
      }

      else
      {
        v47 = 0x65736C6166;
      }

      if (v46)
      {
        v48 = 0xE500000000000000;
      }

      else
      {
        v48 = 0xE400000000000000;
      }

      v49 = sub_100005D28(v47, v48, &aBlock);
      v28 = v84;

      *(v41 + 24) = v49;
      _os_log_impl(&_mh_execute_header, v39, v40, "%s Checking thumbnail: %s. hasFinishedTryingToFetchCorrectThumbnail: %s", v41, 0x20u);
      swift_arrayDestroy();
    }

    isa(v15, v91);
    v50 = v88;
    dispatch_group_enter(v88);
    v51 = swift_allocObject();
    *(v51 + 16) = v38;
    *(v51 + 24) = v50;
    v97 = sub_100030348;
    v98 = v51;
    aBlock = _NSConcreteStackBlock;
    v94 = 1107296256;
    v95 = sub_100002DB0;
    v96 = &unk_100089FD0;
    v52 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();
    v53 = v50;

    v54 = [v38 registerGenerationCompletionHandler:v52];
    _Block_release(v52);
    if ((v54 & 1) == 0)
    {
      v55 = v82;
      static Logger.Tests.getter();
      swift_unknownObjectRetain();
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.debug.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        aBlock = swift_slowAlloc();
        *v58 = v79;
        *(v58 + 4) = sub_100005D28(0xD00000000000004DLL, v83 | 0x8000000000000000, &aBlock);
        *(v58 + 12) = 2080;
        v92 = v38;
        swift_unknownObjectRetain();
        sub_10000DB4C(&qword_100093850, &qword_100074080);
        v59 = String.init<A>(describing:)();
        v61 = sub_100005D28(v59, v60, &aBlock);
        v28 = v84;

        *(v58 + 14) = v61;
        _os_log_impl(&_mh_execute_header, v56, v57, "%s Thumbnail generation already completed for thumbnail: %s", v58, 0x16u);
        swift_arrayDestroy();
      }

      isa(v55, v91);
      dispatch_group_leave(v53);
      v15 = v81;
    }

    ++v37;
    swift_unknownObjectRelease();
  }

  while (v87 != v37);
LABEL_53:
  sub_100002B84(0, &qword_100093A70, OS_dispatch_queue_ptr);
  v62 = static OS_dispatch_queue.main.getter();
  v63 = swift_allocObject();
  v64 = v71;
  v63[2] = v28;
  v63[3] = v64;
  v63[4] = v72;
  v97 = sub_100030350;
  v98 = v63;
  aBlock = _NSConcreteStackBlock;
  v94 = 1107296256;
  v95 = sub_100002DB0;
  v96 = &unk_10008A020;
  v65 = _Block_copy(&aBlock);

  v66 = v73;
  static DispatchQoS.unspecified.getter();
  v92 = &_swiftEmptyArrayStorage;
  sub_100030300(&unk_100093410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000DB4C(&unk_100093A80, &qword_1000736E0);
  sub_1000035DC();
  v67 = v75;
  v68 = v78;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v69 = v88;
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v65);

  (*(v77 + 8))(v67, v68);
  (*(v74 + 8))(v66, v76);
}

void sub_100015B10(uint64_t a1, NSObject *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.Tests.getter();
  swift_unknownObjectRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_100005D28(0xD00000000000004DLL, 0x8000000100074DD0, &v15);
    *(v10 + 12) = 2080;
    v14 = a1;
    swift_unknownObjectRetain();
    sub_10000DB4C(&qword_100093850, &qword_100074080);
    v11 = String.init<A>(describing:)();
    v13 = sub_100005D28(v11, v12, &v15);

    *(v10 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s Thumbnail generation request completed for thumbnail: %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  (*(v5 + 8))(v7, v4);
  dispatch_group_leave(a2);
}

uint64_t sub_100015D30(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.Tests.getter();

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_100005D28(0xD00000000000004DLL, 0x8000000100074DD0, &v16);
    *(v10 + 12) = 2048;
    if (a1 >> 62)
    {
      v12 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v10 + 14) = v12;

    _os_log_impl(&_mh_execute_header, v8, v9, "%s END waiting for %ld. All items loaded, continuing", v10, 0x16u);
    sub_100034948(v11);
  }

  else
  {
  }

  v13 = (*(v5 + 8))(v7, v4);
  return a2(v13);
}

uint64_t sub_100015F38(void *a1, void (*a2)(void), uint64_t a3, void *a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = a2;
    *(v12 + 24) = a3;
    v13 = swift_allocObject();
    v13[2] = a1;
    v13[3] = sub_100035524;
    v13[4] = v12;
    v14 = a1;

    if (sub_10002F5B8(v14))
    {
      sub_100014F3C(v14, sub_100035524, v12);
    }

    else
    {
      v20 = static NSNotificationName.DOCItemCollectionViewDidLayoutSubviews.getter();
      v21 = swift_allocObject();
      v21[2] = a4;
      v21[3] = v14;
      v21[4] = sub_1000355EC;
      v21[5] = v13;
      v22 = objc_opt_self();
      v23 = v14;
      v24 = a4;

      v25 = [v22 defaultCenter];
      v30[3] = sub_100002B84(0, &qword_1000937E0, UIViewController_ptr);
      v30[0] = v23;
      v26 = objc_opt_self();
      v27 = v23;
      v28 = [v26 mainQueue];
      v29 = swift_allocObject();
      *(v29 + 16) = sub_1000355DC;
      *(v29 + 24) = v21;

      NSNotificationCenter.doc_observeOnce(forName:object:queue:using:)();

      sub_100005A04(v30, &qword_100093498, &qword_100074430);
    }
  }

  else
  {
    static Logger.Tests.getter();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "content view controller is nil", v18, 2u);
    }

    (*(v9 + 8))(v11, v8);
    sub_100030284();
    swift_allocError();
    *v19 = 1;
    a2();
  }
}

uint64_t sub_100016310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002B84(0, &qword_100093A70, OS_dispatch_queue_ptr);
  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  aBlock[4] = sub_10003035C;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002DB0;
  aBlock[3] = &unk_10008A070;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100030300(&unk_100093410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000DB4C(&unk_100093A80, &qword_1000736E0);
  sub_1000035DC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v6 + 8))(v8, v5);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1000165DC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, void *a5)
{
  if (a2)
  {
    a3(a2);
  }

  v9 = 0;
  if (a1)
  {
    type metadata accessor for DOCItemCollectionViewController();
    v9 = swift_dynamicCastClass();
  }

  return sub_100015F38(v9, a3, a4, a5);
}

uint64_t sub_100016654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002B84(0, &qword_100093A70, OS_dispatch_queue_ptr);
  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  aBlock[4] = sub_10000B2A4;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002DB0;
  aBlock[3] = &unk_100089F30;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v17[1] = &_swiftEmptyArrayStorage;
  sub_100030300(&unk_100093410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000DB4C(&unk_100093A80, &qword_1000736E0);
  sub_1000035DC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
}

void sub_10001691C(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4, void *a5, void *a6)
{
  if (a2)
  {
    a3(0);
  }

  else if (a1)
  {

    v11 = a1;
    sub_10002FD1C(v11, a6, a5, a3, a4, a1);
  }

  else
  {
    __break(1u);
  }
}

void sub_1000169D8(void *a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, void *a6)
{
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v16 = String._bridgeToObjectiveC()();
    [a3 failedTest:v16];
  }

  static Logger.Tests.getter();

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v26 = a1;
    v20 = v19;
    v21 = swift_slowAlloc();
    v27 = a6;
    v28 = v21;
    v22 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_100005D28(a4, a5, &v28);
    _os_log_impl(&_mh_execute_header, v17, v18, "Starting test %s", v20, 0xCu);
    sub_100034948(v22);
    a6 = v27;

    a1 = v26;
  }

  (*(v13 + 8))(v15, v12);
  v23 = String._bridgeToObjectiveC()();
  [a3 startedTest:v23];

  if (a1)
  {

    v24 = a3;
    sub_1000307FC(a1, a6, v24, v24, a4, a5);
  }

  else
  {
    __break(1u);
  }
}

void sub_100016C30(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v12 = String._bridgeToObjectiveC()();
    [a2 failedTest:v12];
  }

  static Logger.Tests.getter();

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v19 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_100005D28(a3, a4, &v19);
    _os_log_impl(&_mh_execute_header, v13, v14, "Starting test %s", v15, 0xCu);
    sub_100034948(v16);
  }

  (*(v9 + 8))(v11, v8);
  v17 = String._bridgeToObjectiveC()();
  [a2 finishedTest:v17];
}

void sub_100016E34(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, void *a5)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if ((*(a1 + 16) & 1) == 0)
  {
    static Logger.Tests.getter();

    v14 = a4;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v24 = a5;
      v18 = v17;
      v23 = swift_slowAlloc();
      v25 = v23;
      *v18 = 136315394;
      *(v18 + 4) = sub_100005D28(a2, a3, &v25);
      *(v18 + 12) = 2080;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = sub_100005D28(v19, v20, &v25);

      *(v18 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed test %s. Timed-out waiting for source identifier: %s. Note that performHandlerAfterLocationForSourceIsLoaded doesn't error out if the source is not found", v18, 0x16u);
      swift_arrayDestroy();

      a5 = v24;
    }

    (*(v11 + 8))(v13, v10);
    v22 = String._bridgeToObjectiveC()();
    [a5 failedTest:v22];
  }
}

void sub_100017080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6, id a7, void *a8, uint64_t a9, unsigned __int8 a10)
{
  v85 = a8;
  v81 = a9;
  v16 = type metadata accessor for IndexPath();
  v74 = *(v16 - 8);
  v75 = v16;
  __chkstk_darwin(v16);
  v78 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Logger();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v77 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v79 = &v71 - v23;
  v24 = __chkstk_darwin(v22);
  v82 = &v71 - v25;
  __chkstk_darwin(v24);
  v27 = &v71 - v26;
  swift_beginAccess();
  *(a3 + 16) = 1;
  v83 = v19;
  v84 = a7;
  v80 = v18;
  if (a2)
  {
    static Logger.Tests.getter();

    v76 = a6;
    v28 = a6;
    v29 = a5;
    v30 = a7;
    swift_errorRetain();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *&v86[0] = v73;
      *v33 = 136315906;
      *(v33 + 4) = sub_100005D28(a4, v29, v86);
      *(v33 + 12) = 2080;
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = sub_100005D28(v35, v36, v86);
      v72 = v31;
      v38 = v32;
      v39 = v37;

      *(v33 + 14) = v39;
      *(v33 + 22) = 2112;
      *(v33 + 24) = v30;
      *v34 = v30;
      *(v33 + 32) = 2112;
      v40 = v30;
      swift_errorRetain();
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 34) = v41;
      v34[1] = v41;
      v42 = v72;
      _os_log_impl(&_mh_execute_header, v72, v38, "Failed test %s. performHandlerAfterLocationForSourceIsLoaded: %s. mainViewController: %@ returned error: %@", v33, 0x2Au);
      sub_10000DB4C(&qword_1000937D0, &unk_1000743F0);
      swift_arrayDestroy();
      a7 = v84;

      swift_arrayDestroy();

      v19 = v83;
    }

    else
    {
    }

    v18 = v80;
    (*(v19 + 8))(v27, v80);
    v43 = String._bridgeToObjectiveC()();
    [v85 failedTest:v43];

    a5 = v29;
  }

  v44 = [a7 effectiveFullBrowser];
  DOCFullDocumentManagerViewController.updateDisplayMode(to:saveAsUserSelection:for:)();

  v45 = v82;
  static Logger.Tests.getter();

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *&v86[0] = v49;
    *v48 = 136315138;
    *(v48 + 4) = sub_100005D28(a4, a5, v86);
    _os_log_impl(&_mh_execute_header, v46, v47, "Starting test %s", v48, 0xCu);
    sub_100034948(v49);
  }

  v50 = *(v19 + 8);
  v50(v45, v18);
  v51 = String._bridgeToObjectiveC()();
  [v85 startedTest:v51];

  v52 = [v84 effectiveBrowserViewController];
  if (v52 && (v53 = v52, v54 = DOCBrowserContainerController.containedItemCollectionViewController.getter(), v53, v54))
  {
    v55 = static NSNotificationName.DOCItemCollectionViewDidFinishGathering.getter();
    v56 = swift_allocObject();
    v57 = v85;
    *(v56 + 16) = v85;
    v58 = objc_opt_self();
    v85 = v57;
    v59 = [v58 defaultCenter];
    memset(v86, 0, sizeof(v86));
    v60 = [objc_opt_self() mainQueue];
    v61 = swift_allocObject();
    *(v61 + 16) = sub_10003508C;
    *(v61 + 24) = v56;

    NSNotificationCenter.doc_observeOnce(forName:object:queue:using:)();

    sub_100005A04(v86, &qword_100093498, &qword_100074430);

    v62 = dispatch thunk of DOCItemCollectionViewController.collectionView.getter();
    v63 = v78;
    sub_100011B8C(v62, a10, v78);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    (*(v74 + 8))(v63, v75);
    [v54 collectionView:v62 performPrimaryActionForItemAtIndexPath:isa];
  }

  else
  {
    v64 = v79;
    static Logger.Tests.getter();

    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *&v86[0] = v68;
      *v67 = 136315138;
      *(v67 + 4) = sub_100005D28(a4, a5, v86);
      _os_log_impl(&_mh_execute_header, v65, v66, "Failed test %s. mainViewController.effectiveBrowserViewController?.containedItemCollectionViewController was nil", v67, 0xCu);
      sub_100034948(v68);
    }

    v50(v64, v18);
    v69 = String._bridgeToObjectiveC()();
    [v85 failedTest:v69];
  }
}

void sub_1000179E8(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.Tests.getter();
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315138;
    v11 = *&v6[OBJC_IVAR____TtC5Files14DOCApplication_currentTestName + 8];
    v16[1] = *&v6[OBJC_IVAR____TtC5Files14DOCApplication_currentTestName];
    v16[2] = v11;

    sub_10000DB4C(&unk_100093A60, &unk_1000740C0);
    v12 = String.init<A>(describing:)();
    v14 = sub_100005D28(v12, v13, &v17);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "Received finish gathering notification for %s (should be Browse*Folder). Finishing test", v9, 0xCu);
    sub_100034948(v10);
  }

  (*(v3 + 8))(v5, v2);
  if (*&v6[OBJC_IVAR____TtC5Files14DOCApplication_currentTestName + 8])
  {

    v15 = String._bridgeToObjectiveC()();
  }

  else
  {
    v15 = 0;
  }

  [v6 finishedTest:v15 waitForCommit:1 extraResults:0];
}

id sub_100017C28(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = [a4 tabBarController];
  if (result)
  {
    v15 = result;
    sub_100002B84(0, &qword_100093A70, OS_dispatch_queue_ptr);
    *v13 = static OS_dispatch_queue.main.getter();
    (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
    v16 = _dispatchPreconditionTest(_:)();
    result = (*(v11 + 8))(v13, v10);
    if (v16)
    {
      [v15 setSelectedIndex:0];

      v17 = [objc_opt_self() recentDocumentsLocation];
      v18 = [a4 fullRecentsViewController];
      v19 = [v18 hierarchyController];

      v20 = swift_allocObject();
      v20[2] = v17;
      v20[3] = a4;
      v20[4] = v5;
      v20[5] = a3;
      v20[6] = a1;
      v20[7] = a2;
      v21 = v17;
      v22 = a4;
      v23 = v5;

      DOCHierarchyController.reset(with:animated:completionHandler:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_100017E7C(void *a1, void *a2, void *a3, uint64_t a4, void **a5, uint64_t a6)
{
  v67 = a6;
  v68 = a5;
  v63 = a4;
  v66 = a3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v64 = &v61 - v14;
  __chkstk_darwin(v13);
  v16 = &v61 - v15;
  static Logger.Tests.getter();
  v17 = a1;
  v18 = a2;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138412546;
    *(v21 + 4) = v17;
    *v22 = v17;
    *(v21 + 12) = 2112;
    v23 = v17;
    v24 = [v18 fullRecentsViewController];
    *(v21 + 14) = v24;
    v22[1] = v24;
    _os_log_impl(&_mh_execute_header, v19, v20, "did show %@ on %@", v21, 0x16u);
    sub_10000DB4C(&qword_1000937D0, &unk_1000743F0);
    swift_arrayDestroy();
  }

  v25 = *(v9 + 8);
  v25(v16, v8);
  v26 = [v18 effectiveBrowserViewController];
  v27 = v67;
  if (v26)
  {
    v28 = v26;
    v29 = dispatch thunk of DOCBrowserContainerController.contentViewController.getter();

    if (v29)
    {
      v65 = v25;
      type metadata accessor for DOCItemCollectionViewController();
      v30 = swift_dynamicCastClass();
      if (v30)
      {
        v31 = v30;
        v32 = dispatch thunk of DOCItemCollectionViewController.source.getter();
        v33 = [v32 identifier];

        v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = v35;
        if (v34 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v36 == v37)
        {

          v27 = v67;
LABEL_10:
          v39 = v64;
          static Logger.Tests.getter();
          v40 = v29;
          v41 = Logger.logObject.getter();
          v42 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v41, v42))
          {
            v43 = swift_slowAlloc();
            v62 = swift_slowAlloc();
            v70 = v62;
            *v43 = 136315138;
            v61 = v40;
            v44 = [v31 description];
            v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v47 = v46;

            v48 = sub_100005D28(v45, v47, &v70);
            v27 = v67;

            *(v43 + 4) = v48;
            _os_log_impl(&_mh_execute_header, v41, v42, "trying to run scroll test on %s", v43, 0xCu);
            sub_100034948(v62);

            v49 = v64;
          }

          else
          {

            v49 = v39;
          }

          v65(v49, v8);
          v60 = sub_10002EB80(v63);
          sub_10002D600(v68, v27, v31, v60, HIDWORD(v60), v66);
          goto LABEL_20;
        }

        v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v27 = v67;
        if (v38)
        {
          goto LABEL_10;
        }
      }

      v25 = v65;
    }
  }

  static Logger.Tests.getter();
  v50 = v18;

  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v51, v52))
  {
    v65 = v25;
    v53 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    *v53 = 136315394;
    *(v53 + 4) = sub_100005D28(v68, v27, &v70);
    *(v53 + 12) = 2080;
    v54 = [v50 effectiveBrowserViewController];
    if (v54)
    {
      v55 = v54;
      v56 = dispatch thunk of DOCBrowserContainerController.contentViewController.getter();
    }

    else
    {
      v56 = 0;
    }

    v69 = v56;
    sub_10000DB4C(&qword_100093870, &qword_100074098);
    v57 = String.init<A>(describing:)();
    v59 = sub_100005D28(v57, v58, &v70);

    *(v53 + 14) = v59;
    _os_log_impl(&_mh_execute_header, v51, v52, "Failed test %s: %s could not switch to Recents", v53, 0x16u);
    swift_arrayDestroy();

    v65(v12, v8);
  }

  else
  {

    v25(v12, v8);
  }

  v40 = String._bridgeToObjectiveC()();
  [v66 failedTest:v40];
LABEL_20:
}

Swift::Int sub_100018500()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_10001856C(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_1000185AC(void *a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, int a4)
{
  v75 = a2;
  v76 = a3;
  v6 = type metadata accessor for Logger();
  v73 = *(v6 - 8);
  v74 = v6;
  __chkstk_darwin(v6);
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v69 = *(v7 - 8);
  v70 = v7;
  __chkstk_darwin(v7);
  v67 = &v55[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v68 = type metadata accessor for DispatchQoS();
  v66 = *(v68 - 8);
  __chkstk_darwin(v68);
  v65 = &v55[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v61 = type metadata accessor for DispatchTimeInterval();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v59 = &v55[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v64 = type metadata accessor for DispatchTime();
  v63 = *(v64 - 8);
  v11 = __chkstk_darwin(v64);
  v58 = &v55[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v62 = &v55[-v13];
  v14 = sub_10000DB4C(&qword_100093858, &qword_100074088);
  v15 = __chkstk_darwin(v14 - 8);
  v57 = &v55[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __chkstk_darwin(v15);
  v19 = &v55[-v18];
  v20 = __chkstk_darwin(v17);
  v22 = &v55[-v21];
  __chkstk_darwin(v20);
  v24 = &v55[-v23];
  v25 = type metadata accessor for IndexPath();
  v26 = *(v25 - 8);
  v27 = *(v26 + 56);
  v27(v24, 1, 1, v25);
  v71 = a1;
  v72 = a4;
  sub_100011B8C(a1, a4, v22);
  sub_100005A04(v24, &qword_100093858, &qword_100074088);
  v27(v22, 0, 1, v25);
  sub_100033034(v22, v24);
  v28 = v76;
  sub_100034850(v24, v19, &qword_100093858, &qword_100074088);
  v29 = (*(v26 + 48))(v19, 1, v25);
  sub_100005A04(v19, &qword_100093858, &qword_100074088);
  if (v29 == 1)
  {
    v30 = v71;
    [v71 bounds];
    v31 = CGRectGetHeight(v78) * 0.75;
    [v30 contentOffset];
    v33 = v32;
    v34 = v31 + v32;
    [v30 contentSize];
    if (v34 >= v35)
    {
      v52 = v57;
      v27(v57, 1, 1, v25);
      sub_100034538();
      v53 = swift_allocError();
      v75(v52, v53);

      sub_100005A04(v52, &qword_100093858, &qword_100074088);
    }

    else
    {
      [v30 bounds];
      [v30 setContentOffset:{0.0, v33 + CGRectGetHeight(v79) * 0.75}];
      [v30 reloadData];
      sub_100002B84(0, &qword_100093A70, OS_dispatch_queue_ptr);
      v76 = static OS_dispatch_queue.main.getter();
      v36 = v58;
      static DispatchTime.now()();
      v37 = v59;
      *v59 = 1;
      v38 = v60;
      v39 = v61;
      (*(v60 + 104))(v37, enum case for DispatchTimeInterval.seconds(_:), v61);
      v40 = v62;
      + infix(_:_:)();
      (*(v38 + 8))(v37, v39);
      v56 = v24;
      v41 = *(v63 + 8);
      v42 = v36;
      v43 = v64;
      v41(v42, v64);
      v44 = swift_allocObject();
      *(v44 + 16) = v72;
      v45 = v75;
      *(v44 + 24) = v30;
      *(v44 + 32) = v45;
      *(v44 + 40) = v28;
      aBlock[4] = sub_1000355E0;
      aBlock[5] = v44;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100002DB0;
      aBlock[3] = &unk_10008A390;
      v46 = _Block_copy(aBlock);
      v47 = v30;

      v48 = v65;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = &_swiftEmptyArrayStorage;
      sub_100030300(&unk_100093410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10000DB4C(&unk_100093A80, &qword_1000736E0);
      sub_1000035DC();
      v49 = v67;
      v50 = v70;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v51 = v76;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v46);

      (*(v69 + 8))(v49, v50);
      (*(v66 + 8))(v48, v68);
      v41(v40, v43);
      v24 = v56;
    }
  }

  else
  {
    v75(v24, 0);
  }

  return sub_100005A04(v24, &qword_100093858, &qword_100074088);
}

uint64_t sub_100019110(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, void *a5)
{
  v6 = v5;
  v12 = type metadata accessor for Logger();
  __chkstk_darwin(v12);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v15;
  if (a1)
  {
    if (a1 != 2)
    {
      type metadata accessor for DOCTab(0);
      v52[3] = v41;
      v52[0] = a1;
      result = doc_fatalErrorUnrecognizedEnumValueEncountered(_:)();
      __break(1u);
      return result;
    }

    v50 = 0;
  }

  else
  {
    v50 = 2;
  }

  static Logger.Tests.getter();

  v16 = a4;
  v17 = a5;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  v49 = v19;
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v48 = a1;
    v21 = v20;
    v22 = swift_slowAlloc();
    v43 = v22;
    v46 = swift_slowAlloc();
    v52[0] = v46;
    *v21 = 136315650;
    *(v21 + 4) = sub_100005D28(a2, a3, v52);
    *(v21 + 12) = 2112;
    *(v21 + 14) = v16;
    *v22 = v16;
    *(v21 + 22) = 2080;
    v23 = v16;
    v24 = v17;
    v45 = v12;
    v47 = v6;
    v25 = v24;
    v26 = [v24 description];
    v44 = v14;
    v42 = v18;
    v27 = v26;
    v28 = a2;
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v17;
    v32 = v31;

    v6 = v47;
    v33 = v29;
    a2 = v28;
    v34 = sub_100005D28(v33, v32, v52);
    v17 = v30;

    *(v21 + 24) = v34;
    v35 = v42;
    _os_log_impl(&_mh_execute_header, v42, v49, "%s %@ %s", v21, 0x20u);
    sub_100005A04(v43, &qword_1000937D0, &unk_1000743F0);

    swift_arrayDestroy();

    a1 = v48;

    (*(v51 + 8))(v44, v45);
  }

  else
  {

    (*(v51 + 8))(v14, v12);
  }

  v36 = swift_allocObject();
  v36[2] = v6;
  v36[3] = a2;
  v36[4] = a3;
  v36[5] = v17;
  v36[6] = a1;
  v36[7] = v16;

  v37 = v16;
  v38 = v17;
  v39 = v6;
  sub_10001A204(v50, 2, sub_1000348E8, v36);
}

uint64_t sub_100019498(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v24 = a5;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchQoS();
  v14 = *(v26 - 8);
  __chkstk_darwin(v26);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002B84(0, &qword_100093A70, OS_dispatch_queue_ptr);
  v25 = static OS_dispatch_queue.main.getter();
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a4;
  v17[6] = v24;
  v17[7] = a6;
  aBlock[4] = sub_100034900;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002DB0;
  aBlock[3] = &unk_10008A9A8;
  v18 = _Block_copy(aBlock);
  v19 = a1;

  v20 = a4;
  v21 = a6;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100030300(&unk_100093410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000DB4C(&unk_100093A80, &qword_1000736E0);
  sub_1000035DC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v22 = v25;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v27 + 8))(v13, v11);
  return (*(v14 + 8))(v16, v26);
}

uint64_t sub_100019790(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v42 = a6;
  v39 = a4;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v48 = *(v10 - 8);
  v49 = v10;
  __chkstk_darwin(v10);
  v46 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for DispatchQoS();
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v44 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for DispatchTime();
  v13 = *(v41 - 8);
  v14 = __chkstk_darwin(v41);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v38 - v17;
  v19 = type metadata accessor for DispatchPredicate();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = (&v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = a2;
  v43 = a3;
  v23 = String._bridgeToObjectiveC()();
  v24 = a1;
  [a1 startedTest:v23];

  sub_100002B84(0, &qword_100093A70, OS_dispatch_queue_ptr);
  *v22 = static OS_dispatch_queue.main.getter();
  (*(v20 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v19);
  LOBYTE(a1) = _dispatchPreconditionTest(_:)();
  result = (*(v20 + 8))(v22, v19);
  if (a1)
  {
    if ((a5 & 0x8000000000000000) == 0)
    {
      [v39 setSelectedIndex:a5];
      v26 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      v27 = v18;
      + infix(_:_:)();
      v39 = *(v13 + 8);
      v28 = v41;
      (v39)(v16, v41);
      v29 = swift_allocObject();
      v30 = v42;
      v29[2] = v42;
      v29[3] = v24;
      v31 = v40;
      v29[4] = a5;
      v29[5] = v31;
      v29[6] = v43;
      aBlock[4] = sub_100034918;
      aBlock[5] = v29;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100002DB0;
      aBlock[3] = &unk_10008A9F8;
      v32 = _Block_copy(aBlock);
      v33 = v30;
      v34 = v24;

      v35 = v44;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = &_swiftEmptyArrayStorage;
      sub_100030300(&unk_100093410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10000DB4C(&unk_100093A80, &qword_1000736E0);
      sub_1000035DC();
      v36 = v46;
      v37 = v49;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v32);

      (*(v48 + 8))(v36, v37);
      (*(v45 + 8))(v35, v47);
      return (v39)(v27, v28);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_100019CBC(void *a1, char *a2, id a3, uint64_t a4, uint64_t a5)
{
  v52 = a4;
  v53 = a5;
  v54 = a2;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v50 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v47 - v12;
  __chkstk_darwin(v11);
  v15 = &v47 - v14;
  v16 = [a1 effectiveTabSwitcherTab];
  static Logger.Tests.getter();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v56[0] = v20;
    *v19 = 136315138;
    v21 = DOCTab.description.getter();
    v48 = v16;
    v49 = v8;
    v51 = v7;
    v23 = v13;
    v24 = sub_100005D28(v21, v22, v56);
    v7 = v51;
    v25 = v49;

    *(v19 + 4) = v24;
    v13 = v23;
    _os_log_impl(&_mh_execute_header, v17, v18, "Tab after commit effectiveTabSwitcherTab: %s", v19, 0xCu);
    sub_100034948(v20);

    v26 = v25;
    v16 = v48;
  }

  else
  {

    v26 = v8;
  }

  v27 = *(v26 + 8);
  v27(v15, v7);
  v28 = OBJC_IVAR____TtC5Files14DOCApplication_loadedTabs;
  v29 = v54;
  swift_beginAccess();
  v30 = *&v29[v28];
  v31 = *(v30 + 16);
  v32 = (v30 + 32);
  while (v31)
  {
    v33 = *v32++;
    --v31;
    if (v33 == a3)
    {
      static Logger.Tests.getter();
      v34 = v53;

      v35 = Logger.logObject.getter();
      v36 = v13;
      v37 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v35, v37))
      {
        v38 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        *v38 = 136315394;
        *(v38 + 4) = sub_100005D28(0xD000000000000047, 0x8000000100074E40, &v55);
        *(v38 + 12) = 2080;
        *(v38 + 14) = sub_100005D28(v52, v34, &v55);
        _os_log_impl(&_mh_execute_header, v35, v37, "%s: %s; tab already in loadedTabs, finishing test after commit", v38, 0x16u);
        swift_arrayDestroy();

        v27(v36, v7);
        goto LABEL_15;
      }

      v44 = v36;
      v45 = v7;
      goto LABEL_14;
    }
  }

  if (v16 != a3)
  {
    return;
  }

  v51 = v7;
  v39 = v50;
  static Logger.Tests.getter();
  v40 = v53;

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *v43 = 136315394;
    *(v43 + 4) = sub_100005D28(0xD000000000000047, 0x8000000100074E40, &v55);
    *(v43 + 12) = 2080;
    *(v43 + 14) = sub_100005D28(v52, v40, &v55);
    _os_log_impl(&_mh_execute_header, v41, v42, "%s: %s; effectiveTabSwitcherTab matches tab, finishing test after commit", v43, 0x16u);
    swift_arrayDestroy();

    v27(v39, v51);
    goto LABEL_15;
  }

  v44 = v39;
  v45 = v51;
LABEL_14:
  v27(v44, v45);
LABEL_15:
  v46 = String._bridgeToObjectiveC()();
  [v54 finishedTest:v46];
}

uint64_t sub_10001A204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v50 = a3;
  v51 = a4;
  v49 = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v53 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v54 = *(v9 - 8);
  v55 = v9;
  __chkstk_darwin(v9);
  v52 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchTimeInterval();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for DispatchTime();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v46 - v20;
  v22 = OBJC_IVAR____TtC5Files14DOCApplication_loadedTabs;
  swift_beginAccess();
  v23 = *&v5[v22];
  v24 = *(v23 + 16);
  v25 = (v23 + 32);
  while (v24)
  {
    v26 = *v25++;
    --v24;
    if (v26 == a1)
    {
      sub_100002B84(0, &qword_100093A70, OS_dispatch_queue_ptr);
      v48 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      *v14 = v49;
      (*(v12 + 104))(v14, enum case for DispatchTimeInterval.seconds(_:), v11);
      + infix(_:_:)();
      (*(v12 + 8))(v14, v11);
      v27 = *(v16 + 8);
      v28 = v15;
      v27(v19, v15);
      v29 = swift_allocObject();
      v30 = v51;
      *(v29 + 16) = v50;
      *(v29 + 24) = v30;
      v62 = sub_10000B2A4;
      v63 = v29;
      aBlock = _NSConcreteStackBlock;
      v59 = 1107296256;
      v60 = sub_100002DB0;
      v61 = &unk_10008A8E0;
      v31 = _Block_copy(&aBlock);

      v32 = v52;
      static DispatchQoS.unspecified.getter();
      aBlock = &_swiftEmptyArrayStorage;
      sub_100030300(&unk_100093410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10000DB4C(&unk_100093A80, &qword_1000736E0);
      sub_1000035DC();
      v33 = v53;
      v34 = v57;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v35 = v48;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v31);

      (*(v56 + 8))(v33, v34);
      (*(v54 + 8))(v32, v55);
      return (v27)(v21, v28);
    }
  }

  sub_100002B84(0, &qword_100093A70, OS_dispatch_queue_ptr);
  v37 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v38 = *(v16 + 8);
  v47 = v15;
  v48 = v38;
  v38(v19, v15);
  v39 = swift_allocObject();
  v39[2] = v5;
  v39[3] = a1;
  v40 = v50;
  v39[4] = v49;
  v39[5] = v40;
  v39[6] = v51;
  v62 = sub_1000348B8;
  v63 = v39;
  aBlock = _NSConcreteStackBlock;
  v59 = 1107296256;
  v60 = sub_100002DB0;
  v61 = &unk_10008A930;
  v41 = _Block_copy(&aBlock);

  v42 = v5;

  v43 = v52;
  static DispatchQoS.unspecified.getter();
  aBlock = &_swiftEmptyArrayStorage;
  sub_100030300(&unk_100093410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000DB4C(&unk_100093A80, &qword_1000736E0);
  sub_1000035DC();
  v44 = v53;
  v45 = v57;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v41);

  (*(v56 + 8))(v44, v45);
  (*(v54 + 8))(v43, v55);
  return v48(v21, v47);
}

void sub_10001A8C8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6, int a7, uint64_t a8, uint64_t a9)
{
  v86 = a8;
  v85 = a7;
  v14 = type metadata accessor for Logger();
  v91 = *(v14 - 8);
  v92 = v14;
  v15 = __chkstk_darwin(v14);
  v17 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v90 = (&v81 - v18);
  v89 = type metadata accessor for URL();
  v87 = *(v89 - 8);
  v19 = __chkstk_darwin(v89);
  v84 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = v20;
  __chkstk_darwin(v19);
  v88 = &v81 - v21;
  swift_beginAccess();
  v22 = &qword_100074430;
  sub_100034850(a3 + 16, &aBlock, &qword_100093498, &qword_100074430);
  v23 = *(&v98 + 1);
  sub_100005A04(&aBlock, &qword_100093498, &qword_100074430);
  v94 = a5;
  v95 = a6;
  if (v23)
  {
    v24 = a1;
    v25 = a4;
    swift_beginAccess();
    sub_100034850(a3 + 16, &aBlock, &qword_100093498, &qword_100074430);
    if (!*(&v98 + 1))
    {
      goto LABEL_39;
    }

    v26 = objc_opt_self();
    v22 = *(&v98 + 1);
    v27 = sub_100006C6C(&aBlock, *(&v98 + 1));
    v28 = *(v22 - 1);
    __chkstk_darwin(v27);
    v30 = &v81 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v28 + 16))(v30);
    v31 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v28 + 8))(v30, v22);
    [v26 endMonitoringProviderDomainChanges:{v31, sub_100034948(&aBlock)}];
    swift_unknownObjectRelease();
    aBlock = 0u;
    v98 = 0u;
    swift_beginAccess();
    sub_10000AE08(&aBlock, a3 + 16);
    a4 = v25;
    a1 = v24;
    a5 = v94;
    a6 = v95;
  }

  v93 = a4;
  if (!a1)
  {
    static Logger.Tests.getter();

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *&aBlock = v53;
      *v52 = 136315138;
      *(v52 + 4) = sub_100005D28(v93, a5, &aBlock);
      _os_log_impl(&_mh_execute_header, v50, v51, "Failed test %s. domainDictionary was nil", v52, 0xCu);
      sub_100034948(v53);
    }

    (v91)[1](v17, v92);
    v54 = String._bridgeToObjectiveC()();
    [a6 failedTest:v54];
    goto LABEL_24;
  }

  v82 = a9;
  v32 = a1 + 64;
  v33 = 1 << a1[32];
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(a1 + 8);
  v36 = (v33 + 63) >> 6;

  v37 = 0;
  if (!v35)
  {
LABEL_9:
    while (1)
    {
      v38 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v38 >= v36)
      {

        a1 = DOCDocumentSourceIdentifierLocal;
        v17 = 0;
        goto LABEL_16;
      }

      v35 = *&v32[8 * v38];
      ++v37;
      if (v35)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_35;
  }

  while (1)
  {
    v38 = v37;
LABEL_12:
    v39 = a1;
    v40 = *(*(a1 + 6) + ((v38 << 9) | (8 * __clz(__rbit64(v35)))));
    v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;
    v17 = v40;
    v43 = static DOCDocumentSourceIdentifier.iCloudCurrent.getter();
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    a3 = sub_10001B300(v22, v45, v96, v42);

    if (a3)
    {
      break;
    }

    v35 &= v35 - 1;

    v37 = v38;
    a1 = v39;
    if (!v35)
    {
      goto LABEL_9;
    }
  }

  v55 = DOCDocumentSourceIdentifierLocal;
  if (!*(v39 + 2))
  {
    a1 = DOCDocumentSourceIdentifierLocal;
LABEL_16:
    v36 = v94;
    v38 = v95;
    goto LABEL_17;
  }

  v17 = v17;
  a1 = v55;
  v56 = sub_100047FC4(v17);
  v36 = v94;
  v38 = v95;
  if ((v57 & 1) == 0)
  {

LABEL_17:
    v22 = v90;
LABEL_18:
    static Logger.Tests.getter();

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *&aBlock = v49;
      *v48 = 136315138;
      *(v48 + 4) = sub_100005D28(v93, v36, &aBlock);
      _os_log_impl(&_mh_execute_header, v46, v47, "Failed test %s. could not get cloudURL", v48, 0xCu);
      sub_100034948(v49);
    }

    (v91)[1](v22, v92);
    v54 = String._bridgeToObjectiveC()();
    [v38 failedTest:v54];

LABEL_24:
    return;
  }

  v22 = v90;
  if (!*(v39 + 2))
  {
LABEL_36:

    goto LABEL_18;
  }

  a3 = *(*(v39 + 7) + 8 * v56);
  v58 = sub_100047FC4(a1);
  if ((v59 & 1) == 0)
  {
LABEL_35:

    goto LABEL_36;
  }

  v60 = *(*(v39 + 7) + 8 * v58);
  v61 = [a3 storageURLs];
  v62 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v63 = *(v62 + 16);
  if (!v63)
  {

    goto LABEL_17;
  }

  v92 = v60;
  v96 = a1;
  if (*(v62 + 16))
  {
    v64 = v87;
    v65 = *(v87 + 80);
    v66 = *(v87 + 16);
    v67 = v88;
    v68 = v89;
    v66(v88, v62 + ((v65 + 32) & ~v65), v89);

    v91 = [objc_opt_self() defaultManager];
    v69 = v84;
    v66(v84, v67, v68);
    v70 = (v65 + 41) & ~v65;
    v71 = (v83 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
    v72 = swift_allocObject();
    v73 = v94;
    *(v72 + 16) = v93;
    *(v72 + 24) = v73;
    v74 = v95;
    *(v72 + 32) = v95;
    *(v72 + 40) = v85;
    (*(v64 + 32))(v72 + v70, v69, v68);
    v75 = (v72 + v71);
    v76 = v82;
    *v75 = v86;
    v75[1] = v76;
    v99 = sub_10002C9E4;
    v100 = v72;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v98 = sub_10001C4C4;
    *(&v98 + 1) = &unk_100089CB0;
    v77 = _Block_copy(&aBlock);

    v78 = v74;

    v80 = v91;
    v79 = v92;
    [v91 doc_fetchRootNodeForProviderDomain:v92 completionHandler:v77];

    _Block_release(v77);
    (*(v64 + 8))(v88, v68);
    return;
  }

  __break(1u);
LABEL_39:
  __break(1u);
}

uint64_t sub_10001B300(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{

  v4 = String.Iterator.next()();
  if (v4.value._object)
  {
    countAndFlagsBits = v4.value._countAndFlagsBits;
    object = v4.value._object;
    do
    {
      v9 = String.Iterator.next()();
      if (!v9.value._object)
      {

        return 1;
      }

      if (countAndFlagsBits == v9.value._countAndFlagsBits && object == v9.value._object)
      {
      }

      else
      {
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v7 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v8 = String.Iterator.next()();
      countAndFlagsBits = v8.value._countAndFlagsBits;
      object = v8.value._object;
    }

    while (v8.value._object);
  }

  v10 = String.Iterator.next()().value._object;

  if (!v10)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

void sub_10001B45C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char *a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v83 = a8;
  v84 = a7;
  v89 = a3;
  v85 = type metadata accessor for URL();
  v13 = *(v85 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v85);
  v16 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v80 = &v75 - v17;
  v18 = type metadata accessor for Logger();
  v86 = *(v18 - 8);
  v87 = v18;
  v19 = __chkstk_darwin(v18);
  v21 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  __chkstk_darwin(v22);
  if (a1)
  {
    v76 = v24;
    v77 = &v75 - v23;
    v81 = a4;
    v82 = a5;
    v78 = a9;
    *&a5[OBJC_IVAR____TtC5Files14DOCApplication_localDomainRootNodeForQLTests] = a1;
    swift_unknownObjectRetain_n();
    swift_unknownObjectRelease();
    v79 = a6;
    v88 = a1;
    if (a6 <= 3u)
    {
      v25 = v13;
    }

    else
    {
      v25 = v13;
      if (a6 >= 8u)
      {

LABEL_10:
        swift_getObjectType();
        v33 = DOCNode.fpfs_syncFetchFPItem()();
        if (v33)
        {
          v34 = v33;
          v35 = [objc_opt_self() shared];
          v36 = objc_allocWithZone(type metadata accessor for DOC_FPCreateFolderOperation());
          v37 = v34;
          v38 = DOC_FPCreateFolderOperation.init(parentItem:folderName:undoManager:shouldRegisterUndo:)();
          v39 = v80;
          v40 = v85;
          (*(v25 + 16))(v80, v84, v85);
          v41 = (*(v25 + 80) + 40) & ~*(v25 + 80);
          v42 = (v14 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
          v43 = swift_allocObject();
          v45 = v81;
          v44 = v82;
          *(v43 + 2) = v89;
          *(v43 + 3) = v45;
          *(v43 + 4) = v44;
          (*(v25 + 32))(&v43[v41], v39, v40);
          v46 = &v43[v42];
          v47 = v78;
          *v46 = v83;
          v46[1] = v47;
          aBlock[4] = sub_10002CAB8;
          aBlock[5] = v43;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_10001D16C;
          aBlock[3] = &unk_100089D28;
          v48 = _Block_copy(aBlock);

          v49 = v38;
          v50 = v44;

          [v49 setCreateFolderCompletionBlock:v48];
          _Block_release(v48);

          v51 = [objc_opt_self() defaultManager];
          [v51 scheduleAction:v49];
        }

        else
        {
          v60 = v77;
          static Logger.Tests.getter();
          v61 = v81;

          v62 = Logger.logObject.getter();
          v63 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v62, v63))
          {
            v64 = swift_slowAlloc();
            v65 = swift_slowAlloc();
            aBlock[0] = v65;
            *v64 = 136315138;
            *(v64 + 4) = sub_100005D28(v89, v61, aBlock);
            _os_log_impl(&_mh_execute_header, v62, v63, "Failed test %s. FPItem was nil", v64, 0xCu);
            sub_100034948(v65);
          }

          (*(v86 + 8))(v60, v87);
          v66 = v82;
          v74 = String._bridgeToObjectiveC()();
          [v66 failedTest:v74];
        }

        goto LABEL_21;
      }
    }

    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v32)
    {
      goto LABEL_10;
    }

    sub_10000DB4C(&unk_100093C40, "&+");
    *(swift_allocObject() + 16) = xmmword_100073FE0;
    URL.appendingPathComponent(_:)();
    v52 = v89;
    URL.appendingPathComponent(_:)();

    (*(v25 + 8))(v16, v85);
    v53 = [objc_opt_self() shared];
    v54 = makeDOCCopyOperation(urls:destinationFolder:undoManager:)();

    if (v54)
    {
      swift_getObjectType();
      v55 = swift_allocObject();
      v55[2] = v52;
      v56 = v82;
      v55[3] = v81;
      v55[4] = v56;
      v57 = v78;
      v55[5] = v83;
      v55[6] = v57;

      v58 = v56;

      dispatch thunk of SomeOperation.actionCompletionBlock.setter();
      v59 = [objc_opt_self() defaultManager];
      swift_unknownObjectRetain();
      FPItemManager.scheduleOperation(_:)();

      swift_unknownObjectRelease_n();
LABEL_21:
      swift_unknownObjectRelease();
      return;
    }

    v67 = v76;
    static Logger.Tests.getter();
    v68 = v81;

    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      aBlock[0] = v72;
      *v71 = 136315138;
      *(v71 + 4) = sub_100005D28(v52, v68, aBlock);
      _os_log_impl(&_mh_execute_header, v69, v70, "Failed test %s. could not create copy operation", v71, 0xCu);
      sub_100034948(v72);
    }

    (*(v86 + 8))(v67, v87);
    v73 = String._bridgeToObjectiveC()();
    [v82 failedTest:v73];
    swift_unknownObjectRelease();
  }

  else
  {
    v26 = a5;
    static Logger.Tests.getter();

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      aBlock[0] = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_100005D28(v89, a4, aBlock);
      _os_log_impl(&_mh_execute_header, v27, v28, "Failed test %s. could not get root node", v29, 0xCu);
      sub_100034948(v30);
    }

    (*(v86 + 8))(v21, v87);
    v31 = String._bridgeToObjectiveC()();
    [v26 failedTest:v31];
  }
}

void sub_10001C198(void *a1, uint64_t a2, unint64_t a3, char *a4, void (*a5)(uint64_t))
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || (v36 = a1, swift_errorRetain(), sub_10000DB4C(&qword_1000937C0, &unk_100074070), sub_100002B84(0, &qword_1000937C8, NSError_ptr), (swift_dynamicCast() & 1) != 0) && (v15 = v35, v16 = [v35 code], v34 = v14, v17 = a5, v18 = a4, v19 = a3, v20 = v10, v21 = v11, v22 = a2, v23 = v16, v15, v24 = v23 + 1001 == 0, a2 = v22, v11 = v21, v10 = v20, a3 = v19, a4 = v18, a5 = v17, v14 = v34, v24))
  {
    a5(v12);
  }

  else
  {
    v34 = a4;
    static Logger.Tests.getter();
    swift_errorRetain();

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v33 = a2;
      v36 = v28;
      *v27 = 136315394;
      *(v27 + 4) = sub_100005D28(v33, a3, &v36);
      *(v27 + 12) = 2080;
      v35 = a1;
      swift_errorRetain();
      sub_10000DB4C(&unk_100093B40, qword_100074410);
      v29 = String.init<A>(describing:)();
      v31 = sub_100005D28(v29, v30, &v36);

      *(v27 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v25, v26, "Failed test %s. Copy operation error: %s", v27, 0x16u);
      swift_arrayDestroy();
    }

    (*(v11 + 8))(v14, v10);
    v32 = String._bridgeToObjectiveC()();
    [v34 failedTest:v32];
  }
}

uint64_t sub_10001C4C4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_10001C544(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    type metadata accessor for FPProviderDomainID(0);
    sub_100002B84(0, &qword_100093798, FPProviderDomain_ptr);
    sub_100030300(&unk_1000937A0, type metadata accessor for FPProviderDomainID, &unk_100073EF4);
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

void sub_10001C634(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v84 = a7;
  v89 = a3;
  v12 = type metadata accessor for Logger();
  v87 = *(v12 - 8);
  v88 = v12;
  v13 = __chkstk_darwin(v12);
  v15 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v82 = &v75 - v16;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v20 = __chkstk_darwin(v19);
  v21 = __chkstk_darwin(v20);
  v22 = __chkstk_darwin(v21);
  v24 = &v75 - v23;
  __chkstk_darwin(v22);
  v29 = &v75 - v28;
  if (a1)
  {
    v76 = v27;
    v77 = v26;
    v78 = a8;
    v83 = a4;
    v81 = a5;
    v30 = v25;
    v79 = a1;
    URL.appendingPathComponent(_:)();
    URL.appendingPathComponent(_:)();
    v31 = *(v18 + 8);
    v31(v24, v17);
    URL.appendingPathComponent(_:)();
    URL.appendingPathComponent(_:)();
    v80 = v31;
    v31(v24, v17);
    sub_10000DB4C(&unk_100093C40, "&+");
    v32 = *(v18 + 72);
    v33 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1000736D0;
    v35 = v34 + v33;
    v36 = *(v18 + 16);
    v85 = v29;
    v36(v35, v29, v17);
    v86 = v30;
    v36(v35 + v32, v30, v17);
    v37 = objc_opt_self();
    v38 = v79;
    v39 = [v37 shared];
    v40 = makeDOCCopyOperation(urls:destinationFolder:undoManager:)();
    v41 = v38;

    if (v40)
    {
      swift_getObjectType();
      v42 = swift_allocObject();
      v42[2] = v89;
      v43 = v84;
      v44 = v81;
      v42[3] = v83;
      v42[4] = v44;
      v45 = v78;
      v42[5] = v43;
      v42[6] = v45;

      v46 = v44;

      dispatch thunk of SomeOperation.actionCompletionBlock.setter();
      v47 = [objc_opt_self() defaultManager];
      FPItemManager.scheduleOperation(_:)();

      swift_unknownObjectRelease();
      v48 = v80;
      v80(v86, v17);
      v48(v85, v17);
    }

    else
    {
      v54 = v82;
      static Logger.Tests.getter();
      v55 = v76;
      v36(v76, v85, v17);
      v56 = v77;
      v36(v77, v86, v17);
      v57 = v83;

      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v79 = v58;
        v61 = v60;
        v84 = swift_slowAlloc();
        v90 = v84;
        *v61 = 136315650;
        *(v61 + 4) = sub_100005D28(v89, v57, &v90);
        *(v61 + 12) = 2080;
        sub_100030300(&unk_1000937B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v62 = dispatch thunk of CustomStringConvertible.description.getter();
        v63 = v41;
        v65 = v64;
        LODWORD(v78) = v59;
        v66 = v80;
        v80(v55, v17);
        v67 = sub_100005D28(v62, v65, &v90);
        v41 = v63;

        *(v61 + 14) = v67;
        *(v61 + 22) = 2080;
        v68 = dispatch thunk of CustomStringConvertible.description.getter();
        v70 = v69;
        v66(v56, v17);
        v71 = sub_100005D28(v68, v70, &v90);

        *(v61 + 24) = v71;
        v72 = v79;
        _os_log_impl(&_mh_execute_header, v79, v78, "Failed setup %s. couldn't create copy op for %s and %s", v61, 0x20u);
        swift_arrayDestroy();

        (*(v87 + 8))(v82, v88);
      }

      else
      {

        v66 = v80;
        v80(v56, v17);
        v66(v55, v17);
        (*(v87 + 8))(v54, v88);
      }

      v74 = String._bridgeToObjectiveC()();
      [v81 failedTest:v74];

      v66(v86, v17);
      v66(v85, v17);
    }
  }

  else
  {
    static Logger.Tests.getter();

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();

    v51 = a4;
    if (os_log_type_enabled(v49, v50))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v90 = v53;
      *v52 = 136315138;
      *(v52 + 4) = sub_100005D28(v89, v51, &v90);
      _os_log_impl(&_mh_execute_header, v49, v50, "Failed setup %s. Folder item nil", v52, 0xCu);
      sub_100034948(v53);
    }

    (*(v87 + 8))(v15, v88);
    v73 = String._bridgeToObjectiveC()();
    [a5 failedTest:v73];
  }
}

void sub_10001CEFC(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, void (*a5)(uint64_t))
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    static Logger.Tests.getter();

    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v24 = a4;
      v18 = v17;
      v23 = swift_slowAlloc();
      v26 = v23;
      *v18 = 136315394;
      *(v18 + 4) = sub_100005D28(a2, a3, &v26);
      *(v18 + 12) = 2080;
      v25 = a1;
      swift_errorRetain();
      sub_10000DB4C(&unk_100093B40, qword_100074410);
      v19 = String.init<A>(describing:)();
      v21 = sub_100005D28(v19, v20, &v26);

      *(v18 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed setup %s copyOperation error: %s", v18, 0x16u);
      swift_arrayDestroy();

      a4 = v24;
    }

    (*(v11 + 8))(v14, v10);
    v22 = String._bridgeToObjectiveC()();
    [a4 failedTest:v22];
  }

  else
  {
    a5(v12);
  }
}

void sub_10001D16C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_10001D1F8(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v3 + OBJC_IVAR____TtC5Files14DOCApplication_localDomainRootNodeForQLTests);
  if (v11)
  {
    swift_unknownObjectRetain();
    v12 = dispatch_semaphore_create(0);
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = a1;
    *(v13 + 32) = a2;
    *(v13 + 40) = a3;
    aBlock[4] = sub_100034840;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000526E0;
    aBlock[3] = &unk_10008A890;
    v14 = _Block_copy(aBlock);
    v15 = v12;

    [v11 fetchURL:v14];
    _Block_release(v14);
    OS_dispatch_semaphore.wait()();
    sub_100002B84(0, &qword_100093790, NSUserDefaults_ptr);
    v16 = static NSUserDefaults.docUserDefaults.getter();
    if (v16)
    {
      v17 = v16;
      v18 = String._bridgeToObjectiveC()();
      [v17 removeObjectForKey:v18];
    }

    swift_unknownObjectRelease();
  }

  else
  {
    static Logger.Tests.getter();

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      aBlock[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_100005D28(a1, a2, aBlock);
      _os_log_impl(&_mh_execute_header, v19, v20, "Failed teardown, failed to get the root node for %s", v21, 0xCu);
      sub_100034948(v22);
    }

    (*(v8 + 8))(v10, v7);
  }
}