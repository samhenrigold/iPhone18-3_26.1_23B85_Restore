void sub_100001E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100001E68(uint64_t result)
{
  if (!*(*(*(result + 32) + 8) + 24))
  {
    v1 = result;
    do
    {
      result = BKSWatchdogGetIsAlive();
      *(*(*(v1 + 32) + 8) + 24) = result;
    }

    while (!*(*(*(v1 + 32) + 8) + 24));
  }

  return result;
}

uint64_t sub_10000230C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100002324(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 40) = [UIApp _accessibilityAllWindowsOnlyVisibleWindows:1];

  return _objc_release_x1();
}

uint64_t sub_10000237C(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 40) = [UIWindow allWindowsIncludingInternalWindows:1 onlyVisibleWindows:1];

  return _objc_release_x1();
}

void sub_1000023D4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 _accessibilityIsIsolatedWindow] && (objc_msgSend(v3, "accessibilityElementsHidden") & 1) == 0)
  {
    [*(a1 + 32) addObject:v3];
  }
}

void sub_100002AD4(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = AXLogUI();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100007B6C();
    }
  }
}

void sub_100002B2C(id *a1, void *a2)
{
  v3 = a2;
  v4 = AXLogUI();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100007BD4();
  }

  if (v3 && [a1[4] preferredSceneAttemptCount] <= 4)
  {
    [a1[4] setPreferredSceneAttemptCount:{objc_msgSend(a1[4], "preferredSceneAttemptCount") + 1}];
    objc_initWeak(&location, a1[4]);
    v5 = dispatch_time(0, 500000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100002C84;
    block[3] = &unk_1000107E0;
    objc_copyWeak(v9, &location);
    v7 = a1[5];
    v9[1] = a1[7];
    v8 = a1[6];
    dispatch_after(v5, &_dispatch_main_q, block);

    objc_destroyWeak(v9);
    objc_destroyWeak(&location);
  }
}

void sub_100002C84(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained requestSceneForSceneClientIdentifier:*(a1 + 32) scenePreferredLevel:*(a1 + 40) spatialConfiguration:*(a1 + 56)];
}

void sub_100002CD8(id *a1, void *a2)
{
  v3 = a2;
  v4 = AXLogUI();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100007C3C();
  }

  if (v3 && [a1[4] defaultSceneAttemptCount] <= 4)
  {
    [a1[4] setDefaultSceneAttemptCount:{objc_msgSend(a1[4], "defaultSceneAttemptCount") + 1}];
    objc_initWeak(&location, a1[4]);
    v5 = dispatch_time(0, 500000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100002E30;
    block[3] = &unk_1000107E0;
    objc_copyWeak(v9, &location);
    v7 = a1[5];
    v9[1] = a1[7];
    v8 = a1[6];
    dispatch_after(v5, &_dispatch_main_q, block);

    objc_destroyWeak(v9);
    objc_destroyWeak(&location);
  }
}

void sub_100002E30(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained requestSceneForSceneClientIdentifier:*(a1 + 32) scenePreferredLevel:*(a1 + 40) spatialConfiguration:*(a1 + 56)];
}

void sub_100003008(id a1, NSError *a2)
{
  v2 = a2;
  v3 = AXLogUI();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100007CE8();
  }
}

void sub_10000309C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_100003580(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AXLogUI();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [NSNumber numberWithDouble:*(a1 + 32)];
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Setting sceneLevel: %@", &v6, 0xCu);
  }

  [v3 setPreferredLevel:*(a1 + 32)];
}

__n128 sub_100003A70(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100003A80(uint64_t a1, int a2)
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

uint64_t sub_100003AA0(uint64_t result, int a2, int a3)
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

void sub_100003B18(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_100003B6C(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100003BE4(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100003C64@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_100003CAC@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100003CD8@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_100003D20(uint64_t a1)
{
  v2 = sub_100003E20(&qword_100016018, &unk_100009BE8);
  v3 = sub_100003E20(&unk_100016020, &unk_100009B90);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003E20(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SBUISystemApertureElementIdentifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100003E64()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_100003EA0(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100003EF4(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t sub_100003F68(void *a1, uint64_t *a2)
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

void sub_100004048()
{
  if (!_set_user_dir_suffix())
  {
    v0 = static os_log_type_t.error.getter();
    v1 = AXLogUI();
    if (v1)
    {
      v2 = v1;
      if (!os_log_type_enabled(v1, v0))
      {
LABEL_7:

        goto LABEL_8;
      }

      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v16 = v4;
      *v3 = 67109378;
      *(v3 + 4) = errno.getter();
      *(v3 + 8) = 2080;
      v5 = errno.getter();
      if (strerror(v5))
      {
        v6 = String.init(cString:)();
        v8 = sub_100007160(v6, v7, &v16);

        *(v3 + 10) = v8;
        _os_log_impl(&_mh_execute_header, v2, v0, "Failed to set temporary directory for AccessibilityUIServer (%d: %s", v3, 0x12u);
        sub_1000042B0(v4);

        goto LABEL_7;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

LABEL_8:
  v9 = objc_autoreleasePoolPush();
  sub_100004268(0, &qword_100016090, &off_1000104D0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  delegateClassName = NSStringFromClass(ObjCClassFromMetadata);
  if (!delegateClassName)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    delegateClassName = String._bridgeToObjectiveC()();
  }

  objc_autoreleasePoolPop(v9);
  v11 = static CommandLine.argc.getter();
  v12 = static CommandLine.unsafeArgv.getter();
  sub_100004268(0, &qword_100016098, off_1000104C8);
  v13 = swift_getObjCClassFromMetadata();
  v14 = NSStringFromClass(v13);
  if (!v14)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = String._bridgeToObjectiveC()();
  }

  UIApplicationMain(v11, v12, v14, delegateClassName);
}

uint64_t sub_100004268(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_1000042B0(void *a1)
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

void sub_1000045D0()
{
  v1 = v0;
  v2 = sub_100005E78(&qword_100016238, &qword_100009D00);
  __chkstk_darwin(v2 - 8);
  v4 = &v107 - v3;
  v5 = type metadata accessor for AXUIActivity();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AXUISystemAperatureViewController();
  v115.receiver = v0;
  v115.super_class = v9;
  objc_msgSendSuper2(&v115, "viewDidLoad");
  type metadata accessor for AXUniversalDisplayManager();
  v10 = static AXUniversalDisplayManager.shared.getter();
  v11 = *&v0[OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_persistentIdentifier + 8];
  v113 = *&v0[OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_persistentIdentifier];
  v114 = v11;
  v111 = 58;
  v112 = 0xE100000000000000;
  sub_100005EC0();
  if (*(StringProtocol.components<A>(separatedBy:)() + 16) < 2uLL)
  {
    __break(1u);
    goto LABEL_57;
  }

  AXUniversalDisplayManager.activity(forActivityIdentifier:)();

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100005F14(v4);
    return;
  }

  v12 = *(v6 + 32);
  v110 = v5;
  v12(v8, v4, v5);
  v113 = AXUIActivity.customView.getter();
  v13 = sub_100005E78(&qword_100016248, &qword_100009D08);
  v14 = objc_allocWithZone(v13);
  v15 = UIHostingController.init(rootView:)();
  v16 = OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_systemApertureCustomViewViewController;
  v17 = *&v0[OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_systemApertureCustomViewViewController];
  *&v0[OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_systemApertureCustomViewViewController] = v15;
  v18 = v15;

  v19 = [v18 view];
  if (!v19)
  {
    goto LABEL_59;
  }

  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];

  v20 = *&v1[v16];
  if (v20)
  {
    v21 = [v20 view];
    if (!v21)
    {
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    v22 = v21;
    v23 = [v1 view];
    if (!v23)
    {
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    v24 = v23;
    [v23 bounds];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;

    [v22 setFrame:{v26, v28, v30, v32}];
  }

  v33 = [v1 view];
  if (!v33)
  {
    goto LABEL_60;
  }

  v34 = v33;
  v35 = *&v1[v16];
  if (!v35)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v36 = [v35 view];
  if (!v36)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v37 = v36;
  [v34 addSubview:v36];

  if (!*&v1[v16])
  {
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  [v1 addChildViewController:?];
  v109 = OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_leadingView;
  v38 = *&v1[OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_leadingView];
  if (v38)
  {
    v39 = v38;
    v113 = AXUIActivity.leadingView.getter();
    v40 = objc_allocWithZone(v13);
    v41 = UIHostingController.init(rootView:)();
    v42 = OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_systemApertureLeadingViewController;
    v43 = *&v1[OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_systemApertureLeadingViewController];
    *&v1[OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_systemApertureLeadingViewController] = v41;
    v44 = v41;

    v45 = [v44 view];
    if (!v45)
    {
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    [v45 setTranslatesAutoresizingMaskIntoConstraints:0];

    v46 = *&v1[v42];
    if (v46)
    {
      v47 = [v46 view];
      if (!v47)
      {
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      v48 = v47;
      [v39 bounds];
      [v48 setFrame:?];

      v49 = *&v1[v42];
      if (v49)
      {
        v50 = v39;
        v51 = [v49 view];
        if (!v51)
        {
LABEL_70:
          __break(1u);
          goto LABEL_71;
        }

        v52 = v51;
        [v50 addSubview:v51];

        goto LABEL_20;
      }
    }

LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

LABEL_20:
  v108 = OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_minimalView;
  v53 = *&v1[OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_minimalView];
  v54 = &qword_100016000;
  if (!v53)
  {
    goto LABEL_27;
  }

  v55 = v53;
  v113 = AXUIActivity.minimalView.getter();
  v56 = objc_allocWithZone(v13);
  v57 = UIHostingController.init(rootView:)();
  v58 = OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_systemApertureMinimalViewController;
  v59 = *&v1[OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_systemApertureMinimalViewController];
  *&v1[OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_systemApertureMinimalViewController] = v57;
  v60 = v57;

  v61 = [v60 view];
  if (!v61)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  [v61 setTranslatesAutoresizingMaskIntoConstraints:0];

  v62 = *&v1[v58];
  if (!v62)
  {
    goto LABEL_58;
  }

  v63 = [v62 view];
  if (!v63)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v64 = v63;
  [v55 bounds];
  [v64 setFrame:?];

  v65 = *&v1[v58];
  if (!v65)
  {
    goto LABEL_58;
  }

  v66 = v55;
  v67 = [v65 view];
  if (!v67)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v68 = v67;
  [v66 addSubview:v67];

  v54 = &qword_100016000;
LABEL_27:
  v69 = OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_trailingView;
  v70 = *&v1[OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_trailingView];
  v71 = &qword_100016000;
  if (!v70)
  {
    goto LABEL_36;
  }

  v72 = v70;
  v73 = AXUIActivity.trailingView.getter();
  if (!v73)
  {
LABEL_35:

    v54 = &qword_100016000;
    v71 = &qword_100016000;
LABEL_36:
    v86 = *&v1[OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_systemApertureLeadingViewController];
    if (v86)
    {
      v87 = [v86 view];
      if (v87)
      {
        v88 = v87;
        v89 = *&v1[v109];
        if (v89)
        {
          v90 = v89;
          sub_100005F7C(v88, v90);

          v88 = v90;
        }
      }
    }

    v91 = *&v1[v71[31]];
    if (v91)
    {
      v92 = [v91 view];
      if (v92)
      {
        v93 = v92;
        v94 = *&v1[v69];
        if (v94)
        {
          v95 = v94;
          sub_100005F7C(v93, v95);

          v93 = v95;
        }
      }
    }

    v96 = *&v1[v54[32]];
    if (v96)
    {
      v97 = [v96 view];
      if (v97)
      {
        v98 = v97;
        v99 = *&v1[v108];
        if (v99)
        {
          v100 = v99;
          sub_100005F7C(v98, v100);

          v98 = v100;
        }
      }
    }

    v101 = *&v1[v16];
    v102 = v110;
    if (!v101)
    {
      goto LABEL_55;
    }

    v103 = [v101 view];
    if (!v103)
    {
      goto LABEL_55;
    }

    v104 = v103;
    v105 = [v1 view];
    if (v105)
    {
      v106 = v105;
      sub_100005F7C(v104, v105);

LABEL_55:
      (*(v6 + 8))(v8, v102);
      return;
    }

    goto LABEL_74;
  }

  v107 = v6;
  v113 = v73;
  v74 = objc_allocWithZone(v13);

  v75 = UIHostingController.init(rootView:)();
  v76 = OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_systemApertureTrailingViewController;
  v77 = *&v1[OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_systemApertureTrailingViewController];
  *&v1[OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_systemApertureTrailingViewController] = v75;
  v78 = v75;

  v79 = [v78 view];
  if (!v79)
  {
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  [v79 setTranslatesAutoresizingMaskIntoConstraints:0];

  v80 = *&v1[v76];
  if (!v80)
  {
    goto LABEL_64;
  }

  v81 = [v80 view];
  if (!v81)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v82 = v81;
  [v72 bounds];
  [v82 setFrame:?];

  v83 = *&v1[v76];
  if (!v83)
  {
    goto LABEL_64;
  }

  v84 = v72;
  v85 = [v83 view];
  if (v85)
  {
    v72 = v85;
    [v84 addSubview:v85];

    v6 = v107;
    goto LABEL_35;
  }

LABEL_76:
  __break(1u);
}

void sub_100004F0C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_activeLayoutMode);
  switch(v3)
  {
    case 4:
      v11 = *(a2 + OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_leadingView);
      if (v11)
      {
        [v11 setHidden:1];
      }

      v12 = *(a2 + OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_trailingView);
      if (v12)
      {
        [v12 setHidden:1];
      }

      v13 = *(a2 + OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_minimalView);
      if (v13)
      {
        [v13 setHidden:1];
      }

      v14 = *(a2 + OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_systemApertureCustomViewViewController);
      if (!v14)
      {
        return;
      }

      v6 = [v14 view];
      if (v6)
      {
        v15 = v6;
        v10 = 0;
        goto LABEL_25;
      }

LABEL_30:
      __break(1u);
      goto LABEL_31;
    case 3:
      v7 = *(a2 + OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_leadingView);
      if (v7)
      {
        [v7 setHidden:0];
      }

      v8 = *(a2 + OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_trailingView);
      if (v8)
      {
        [v8 setHidden:1];
      }

      v9 = *(a2 + OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_systemApertureCustomViewViewController);
      if (!v9)
      {
        return;
      }

      v6 = [v9 view];
      if (v6)
      {
LABEL_15:
        v15 = v6;
        v10 = 1;
LABEL_25:
        [v6 setHidden:v10];

        return;
      }

      __break(1u);
      goto LABEL_30;
    case 2:
      v4 = *(a2 + OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_minimalView);
      if (v4)
      {
        [v4 setHidden:0];
      }

      v5 = *(a2 + OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_systemApertureCustomViewViewController);
      if (v5)
      {
        v6 = [v5 view];
        if (v6)
        {
          goto LABEL_15;
        }

LABEL_31:
        __break(1u);
      }

      break;
  }
}

uint64_t sub_1000050F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

id sub_100005288(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_activeLayoutMode] = 0;
  *&v3[OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_contentRole] = 2;
  *&v3[OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_preferredLayoutMode] = 3;
  *&v3[OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_maximumLayoutMode] = 4;
  v6 = SBUISystemApertureElementIdentifierUnknown;
  *&v3[OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_elementIdentifier] = SBUISystemApertureElementIdentifierUnknown;
  v7 = &v3[OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_associatedAppBundleIdentifier];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_preferredHeightForBottomSafeArea;
  v9 = v6;
  *&v3[v8] = sub_1000059D0();
  v10 = OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_leadingView;
  v11 = type metadata accessor for AXUICompactView();
  *&v3[v10] = [objc_allocWithZone(v11) init];
  v12 = OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_trailingView;
  *&v3[v12] = [objc_allocWithZone(v11) init];
  v13 = OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_minimalView;
  *&v3[v13] = [objc_allocWithZone(v11) init];
  *&v3[OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_systemApertureLeadingViewController] = 0;
  *&v3[OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_systemApertureTrailingViewController] = 0;
  *&v3[OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_systemApertureMinimalViewController] = 0;
  *&v3[OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_systemApertureCustomViewViewController] = 0;
  v14 = &v3[OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_persistentIdentifier];
  *v14 = 0;
  *(v14 + 1) = 0xE000000000000000;
  if (a2)
  {
    v15 = String._bridgeToObjectiveC()();
  }

  else
  {
    v15 = 0;
  }

  v18.receiver = v3;
  v18.super_class = type metadata accessor for AXUISystemAperatureViewController();
  v16 = objc_msgSendSuper2(&v18, "initWithNibName:bundle:", v15, a3);

  return v16;
}

id sub_1000054A0(void *a1)
{
  *&v1[OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_activeLayoutMode] = 0;
  *&v1[OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_contentRole] = 2;
  *&v1[OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_preferredLayoutMode] = 3;
  *&v1[OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_maximumLayoutMode] = 4;
  v3 = SBUISystemApertureElementIdentifierUnknown;
  *&v1[OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_elementIdentifier] = SBUISystemApertureElementIdentifierUnknown;
  v4 = &v1[OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_associatedAppBundleIdentifier];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_preferredHeightForBottomSafeArea;
  v6 = v3;
  *&v1[v5] = sub_1000059D0();
  v7 = OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_leadingView;
  v8 = type metadata accessor for AXUICompactView();
  *&v1[v7] = [objc_allocWithZone(v8) init];
  v9 = OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_trailingView;
  *&v1[v9] = [objc_allocWithZone(v8) init];
  v10 = OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_minimalView;
  *&v1[v10] = [objc_allocWithZone(v8) init];
  *&v1[OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_systemApertureLeadingViewController] = 0;
  *&v1[OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_systemApertureTrailingViewController] = 0;
  *&v1[OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_systemApertureMinimalViewController] = 0;
  *&v1[OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_systemApertureCustomViewViewController] = 0;
  v11 = &v1[OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_persistentIdentifier];
  *v11 = 0;
  *(v11 + 1) = 0xE000000000000000;
  v14.receiver = v1;
  v14.super_class = type metadata accessor for AXUISystemAperatureViewController();
  v12 = objc_msgSendSuper2(&v14, "initWithCoder:", a1);

  if (v12)
  {
  }

  return v12;
}

id sub_100005974(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

double sub_1000059D0()
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

uint64_t sub_100005E20()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100005E60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005E78(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100005EC0()
{
  result = qword_100016240;
  if (!qword_100016240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100016240);
  }

  return result;
}

uint64_t sub_100005F14(uint64_t a1)
{
  v2 = sub_100005E78(&qword_100016238, &qword_100009D00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100005F7C(void *a1, void *a2)
{
  v4 = objc_opt_self();
  sub_100005E78(&qword_100016250, &unk_100009D10);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100009C90;
  v6 = [a1 leadingAnchor];
  v7 = [a2 leadingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];

  *(v5 + 32) = v8;
  v9 = [a1 trailingAnchor];
  v10 = [a2 trailingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];

  *(v5 + 40) = v11;
  v12 = [a1 topAnchor];
  v13 = [a2 topAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];

  *(v5 + 48) = v14;
  v15 = [a1 bottomAnchor];
  v16 = [a2 bottomAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];

  *(v5 + 56) = v17;
  sub_100004268(0, &qword_100016258, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 activateConstraints:isa];
}

uint64_t sub_1000062BC(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.startIndex.getter();
    v5 = v4;
    v6 = __CocoaSet.endIndex.getter();
    v8 = v7;
    v9 = static __CocoaSet.Index.== infix(_:_:)();
    sub_1000065DC(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_1000065DC(v3, v5, v2 != 0);
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

  sub_1000065E8(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_1000065DC(v3, v5, v2 != 0);
  return v12;
}

id sub_1000064DC(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_100006538()
{
  result = qword_1000162E8;
  if (!qword_1000162E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000162E8);
  }

  return result;
}

unint64_t sub_100006584()
{
  result = qword_1000162F0;
  if (!qword_1000162F0)
  {
    sub_100006538();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000162F0);
  }

  return result;
}

uint64_t sub_1000065DC(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

void sub_1000065E8(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_100006538();
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_100006538();
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

void sub_1000067E8(void *a1)
{
  v3 = [objc_opt_self() sharedServiceManager];
  if (v3)
  {
    v14 = v3;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4 && (v5 = v4, objc_opt_self(), (v6 = swift_dynamicCastObjCClass()) != 0))
    {
      v7 = v6;
      v8 = a1;
      [v5 setAllowsMenuButtonDismissal:1];
      [v5 setContentOverlaysStatusBar:1 animationSettings:0];
      [v5 setDelegate:v1];
      [v5 setAllowsAlertStacking:1];
      [v5 setDesiredHardwareButtonEvents:16];
      v9 = [v14 displayManager];
      if (!v9)
      {
        __break(1u);
        return;
      }

      v10 = v9;
      v11 = v8;
      v12 = String._bridgeToObjectiveC()();
      [v10 _windowSceneConnected:v7 forSceneClientIdentifier:v12];

      v13 = v12;
    }

    else
    {
      v13 = v14;
    }
  }
}

void sub_1000069A0(void *a1)
{
  v2 = [objc_opt_self() sharedServiceManager];
  if (v2)
  {
    v11 = v2;
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = v3;
      v5 = a1;
      v6 = [v11 displayManager];
      if (!v6)
      {
        __break(1u);
        return;
      }

      v7 = v6;
      v8 = v5;
      v9 = String._bridgeToObjectiveC()();
      [v7 _windowSceneDisconnected:v4 forSceneClientIdentifier:v9];

      v10 = v9;
    }

    else
    {
      v10 = v11;
    }
  }
}

void sub_100006B00()
{
  v0 = [objc_opt_self() sharedInstance];
  [v0 acquireAssertionUIIfNeeded];
}

uint64_t sub_100006B60(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id sub_100006C5C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for AXUIServerGuestPassActionHandler();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_100006CB4()
{
  result = qword_1000163E8;
  if (!qword_1000163E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000163E8);
  }

  return result;
}

unint64_t sub_100006D00()
{
  result = qword_1000163F0;
  if (!qword_1000163F0)
  {
    sub_100006CB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000163F0);
  }

  return result;
}

void sub_100006D58(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100006CB4();
    sub_100006D00();
    Set.Iterator.init(_cocoa:)();
    v2 = aBlock[6];
    v3 = aBlock[7];
    v4 = aBlock[8];
    v5 = aBlock[9];
    v6 = aBlock[10];
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
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

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = (v4 + 64) >> 6;
  while (v2 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (sub_100006CB4(), swift_dynamicCast(), v15 = aBlock[0], v13 = v5, v14 = v6, !aBlock[0]))
    {
LABEL_20:
      sub_100007008(v2);
      return;
    }

LABEL_18:
    type metadata accessor for AXGuestPassMonitorAcceptGestureAction();
    if (swift_dynamicCastClass())
    {
      v16 = [objc_opt_self() sharedInstance];
      [v16 acquireAssertionUIIfNeeded];

      type metadata accessor for AXGuestPassAssertionManager();
      v17 = static AXGuestPassAssertionManager.shared.getter();
      dispatch thunk of AXGuestPassAssertionManager.receivedAction(action:invalidationHandler:)();

      aBlock[4] = sub_100006B00;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100006B60;
      aBlock[3] = &unk_100010A88;
      v18 = _Block_copy(aBlock);
      AXPerformBlockOnMainThread();
      _Block_release(v18);
    }

    v5 = v13;
    v6 = v14;
  }

  v11 = v5;
  v12 = v6;
  v13 = v5;
  if (v6)
  {
LABEL_14:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_20;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_100007010(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100007160(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000722C(v11, 0, 0, 1, a1, a2);
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
    sub_100007AD8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000042B0(v11);
  return v7;
}

unint64_t sub_10000722C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100007338(a5, a6);
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

char *sub_100007338(uint64_t a1, unint64_t a2)
{
  v3 = sub_100007384(a1, a2);
  sub_1000074B4(&off_100010928);
  return v3;
}

char *sub_100007384(uint64_t a1, unint64_t a2)
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

  v6 = sub_1000075A0(v5, 0);
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
        v7 = sub_1000075A0(v10, 0);
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

uint64_t sub_1000074B4(uint64_t result)
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

  result = sub_100007614(result, v11, 1, v3);
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

void *sub_1000075A0(uint64_t a1, uint64_t a2)
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

  sub_100005E78(&unk_100016430, " B");
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100007614(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005E78(&unk_100016430, " B");
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

void sub_100007708(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v43 - v11;
  type metadata accessor for ActivityScene();
  v13 = swift_dynamicCastClass();
  if (v13)
  {
    v14 = v13;
    v15 = a1;
    if (AXLogUI())
    {
      Logger.init(_:)();
      v16 = v15;
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v47 = v3;
        v20 = v19;
        v21 = swift_slowAlloc();
        v46 = a2;
        v22 = v21;
        v48 = v21;
        *v20 = 136315138;
        v23 = [v14 description];
        v44 = v6;
        v24 = v23;
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v45 = v14;
        v26 = v25;
        v28 = v27;

        v29 = sub_100007160(v26, v28, &v48);

        *(v20 + 4) = v29;
        v14 = v45;
        _os_log_impl(&_mh_execute_header, v17, v18, "AccessibilityUIServerActivitySceneDelegate: Connecting session scene: %s", v20, 0xCu);
        sub_1000042B0(v22);
        a2 = v46;

        v3 = v47;

        (*(v7 + 8))(v12, v44);
      }

      else
      {

        (*(v7 + 8))(v12, v6);
      }

      v33 = v16;
      if ([v14 SBUI_isHostedBySystemAperture])
      {
        v34 = OBJC_IVAR____TtC21AccessibilityUIServer42AccessibilityUIServerActivitySceneDelegate_systemApertureElementProvider;
        v35 = *(v3 + OBJC_IVAR____TtC21AccessibilityUIServer42AccessibilityUIServerActivitySceneDelegate_systemApertureElementProvider);
        v36 = v14;
        v37 = [a2 persistentIdentifier];
        v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = v39;

        v41 = &v35[OBJC_IVAR____TtC21AccessibilityUIServer33AXUISystemAperatureViewController_persistentIdentifier];
        *v41 = v38;
        v41[1] = v40;

        [*(v3 + v34) loadViewIfNeeded];
        v42 = *(v3 + v34);
        [v36 setSystemApertureElementViewControllerProvider:v42];
      }

      return;
    }

    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  if (!AXLogUI())
  {
    goto LABEL_15;
  }

  Logger.init(_:)();
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "AccessibilityUIServerActivitySceneDelegate: Received a UIScene that is not of type ActivityScene.", v32, 2u);
  }

  (*(v7 + 8))(v10, v6);
}

uint64_t sub_100007AD8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_100007D50(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unexpected type for connected scene: %@", &v2, 0xCu);
}