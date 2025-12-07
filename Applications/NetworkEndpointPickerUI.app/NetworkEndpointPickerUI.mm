id sub_100002054()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for AppDelegate(0);
  static CommandLine.unsafeArgv.getter();
  static CommandLine.argc.getter();
  static CommandLine.argc.getter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LODWORD(v4) = UIApplicationMain(_:_:_:_:)();

  exit(v4);
}

uint64_t type metadata accessor for AppDelegate(uint64_t a1)
{
  result = qword_100029E68;
  if (!qword_100029E68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000021DC(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for Logger();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 sub_10000226C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000227C(uint64_t a1, int a2)
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

uint64_t sub_10000229C(uint64_t result, int a2, int a3)
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

void sub_100002300(uint64_t a1, unint64_t *a2, uint64_t a3)
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

void *sub_100002360@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

id sub_10000237C(void *a1)
{
  v2 = [a1 role];
  v3 = UISceneSessionRoleEndpointPicker;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {

LABEL_15:
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Returning Endpoint picker", v24, 2u);
    }

    goto LABEL_17;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v9)
  {
    goto LABEL_15;
  }

  v10 = [a1 role];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
  {

LABEL_20:
    v22 = Logger.logObject.getter();
    v30 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v22, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v22, v30, "Returning People Picker", v31, 2u);
    }

    goto LABEL_17;
  }

  v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v16)
  {
    goto LABEL_20;
  }

  v17 = [a1 role];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;
  if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
  {

    goto LABEL_24;
  }

  v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v32)
  {
LABEL_24:
    v22 = Logger.logObject.getter();
    v33 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v22, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v22, v33, "Returning Endpoint Confirmation", v34, 2u);
    }

LABEL_17:

    v25 = [a1 role];
    v26 = objc_allocWithZone(UISceneConfiguration);
    v27 = String._bridgeToObjectiveC()();
    v28 = [v26 initWithName:v27 sessionRole:v25];

LABEL_18:
    return v28;
  }

  v35 = [a1 role];
  v36 = static UISceneSessionRole.activitySystemAperture.getter();
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;
  if (v37 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v39 == v40)
  {

LABEL_31:
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "Returning Jindo Configuration", v44, 2u);
    }

    v45 = [a1 role];
    v46 = &SBUIIsSystemApertureEnabled_ptr;
    v47 = objc_allocWithZone(UISceneConfiguration);
    v48 = String._bridgeToObjectiveC()();
    v49 = &AppDelegate;
    v50 = [v47 initWithName:v48 sessionRole:v45];

    v51 = v50;
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v86 = v56;
      *v54 = 138412546;
      *(v54 + 4) = v51;
      *v55 = v51;
      *(v54 + 12) = 2080;
      if ([v51 delegateClass])
      {
        swift_getObjCClassMetadata();
      }

      sub_100002E80(&qword_100029E90, qword_100018070);
      v57 = String.init<A>(describing:)();
      v59 = sub_1000145B4(v57, v58, &v86);

      *(v54 + 14) = v59;
      _os_log_impl(&_mh_execute_header, v52, v53, "config: %@ class: %s", v54, 0x16u);
      sub_100002EC8(v55);

      sub_100002F30(v56);

      v46 = &SBUIIsSystemApertureEnabled_ptr;
      v49 = &AppDelegate;
    }

    else
    {
    }

    v25 = [a1 role];
    v60 = objc_allocWithZone(v46[327]);
    v61 = String._bridgeToObjectiveC()();
    v28 = [v60 v49[496].count];

    goto LABEL_18;
  }

  v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v41)
  {
    goto LABEL_31;
  }

  v62 = [a1 role];
  v63 = static UISceneSessionRole.activityBanner.getter();
  v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v66 = v65;
  if (v64 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v66 == v67)
  {

    goto LABEL_43;
  }

  v68 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v68)
  {
LABEL_43:
    v22 = Logger.logObject.getter();
    v69 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v22, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&_mh_execute_header, v22, v69, "Returning Banner Configuration", v70, 2u);
    }

    goto LABEL_17;
  }

  v71 = [a1 role];
  v72 = static UISceneSessionRole.activityListItem.getter();
  v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v75 = v74;
  if (v73 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v75 == v76)
  {

    goto LABEL_50;
  }

  v77 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v77)
  {
LABEL_50:
    v22 = Logger.logObject.getter();
    v78 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v22, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&_mh_execute_header, v22, v78, "Returning Lockscreen Configuration", v79, 2u);
    }

    goto LABEL_17;
  }

  v80 = Logger.logObject.getter();
  v81 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    *v82 = 0;
    _os_log_impl(&_mh_execute_header, v80, v81, "NO matching UISceneSession Role, returning endpoint picker as the default", v82, 2u);
  }

  v83 = objc_allocWithZone(UISceneConfiguration);
  v84 = String._bridgeToObjectiveC()();
  v85 = [v83 initWithName:v84 sessionRole:v3];

  return v85;
}

uint64_t sub_100002E80(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002EC8(uint64_t a1)
{
  v2 = sub_100002E80(&qword_100029E98, &qword_100018C60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100002F30(void *a1)
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

id sub_100003388()
{
  v1 = *(v0 + OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_serviceName);
  v2 = *(v0 + OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_serviceName + 8);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v2)
  {

    goto LABEL_9;
  }

  if (v1 != v3 || v2 != v4)
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      goto LABEL_12;
    }

LABEL_9:
    if (*(v0 + OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_bundleID + 8))
    {

      v7 = String._bridgeToObjectiveC()();
    }

    else
    {
      v7 = 0;
    }

    v12 = [objc_opt_self() _applicationIconImageForBundleIdentifier:v7 format:5];
    goto LABEL_16;
  }

LABEL_12:
  v8 = String._bridgeToObjectiveC()();
  v9 = [objc_opt_self() _systemImageNamed:v8];

  if (!v9)
  {
    return 0;
  }

  v10 = objc_opt_self();
  v7 = v9;
  v11 = [v10 blueColor];
  v12 = [v7 imageWithTintColor:v11];

LABEL_16:
  return v12;
}

void sub_100003548()
{
  v108 = type metadata accessor for Font.TextStyle();
  v1 = *(v108 - 1);
  __chkstk_darwin(v108);
  v3 = &v99 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ConfirmationDialogView(0);
  v5 = (v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ConfirmationDialogSystemApertureViewController();
  v111.receiver = v0;
  v111.super_class = v8;
  objc_msgSendSuper2(&v111, "viewDidLoad");
  v9 = *&v0[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_bundleID];
  v10 = *&v0[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_bundleID + 8];
  v11 = *&v0[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_serviceName + 8];
  v106 = *&v0[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_serviceName];
  *&v107 = v9;
  v12 = *&v0[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_deviceName + 8];
  v105 = *&v0[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_deviceName];
  v103 = v10;
  v104 = v12;
  v100 = v0;
  v14 = *&v0[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_kind];
  v13 = *&v0[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_kind + 8];
  v15 = *&v0[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_kind + 16];
  v102 = *&v0[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_kind + 24];
  v101 = v0[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_kind + 32];
  *&v110 = 0x402C000000000000;
  (*(v1 + 104))(v3, enum case for Font.TextStyle.subheadline(_:), v108);

  v16 = v103;

  v17 = v102;
  LOBYTE(v12) = v101;
  sub_100004E88(v14, v13, v15, v102, v101);
  sub_100004F04();
  ScaledMetric.init(wrappedValue:relativeTo:)();
  AccessibilityFocusState.init<>()();
  v18 = &v7[v5[8]];
  v19 = v106;
  *v18 = v107;
  *(v18 + 1) = v16;
  v20 = &v7[v5[9]];
  *v20 = v19;
  *(v20 + 1) = v11;
  v21 = &v7[v5[10]];
  v22 = v104;
  *v21 = v105;
  *(v21 + 1) = v22;
  v23 = &v7[v5[11]];
  *v23 = v14;
  *(v23 + 1) = v13;
  *(v23 + 2) = v15;
  *(v23 + 3) = v17;
  v23[32] = v12;
  v7[v5[12]] = 1;
  v24 = v5[13];
  *&v7[v24] = [objc_allocWithZone(CNContactStore) init];
  v25 = v5[14];
  v109 = 0;
  sub_100002E80(&qword_10002A280, "b<");
  State.init(wrappedValue:)();
  *&v7[v25] = v110;
  v26 = v5[15];
  v109 = 0;
  State.init(wrappedValue:)();
  *&v7[v26] = v110;
  v27 = [objc_opt_self() sharedApplication];
  [v27 userInterfaceLayoutDirection];

  v28 = v5[16];
  v29 = objc_allocWithZone(type metadata accessor for SFUIContactIconProvider());
  *&v7[v28] = SFUIContactIconProvider.init(diameter:layoutDirection:)();
  v30 = &v7[v5[17]];
  type metadata accessor for ConfirmationDialogLockObserver(0);
  swift_allocObject();
  v109 = sub_10000A8C8();
  State.init(wrappedValue:)();
  v31 = *(&v110 + 1);
  *v30 = v110;
  *(v30 + 1) = v31;
  v32 = v5[18];
  v109 = 0;
  sub_100002E80(&qword_10002A288, &qword_100018500);
  State.init(wrappedValue:)();
  *&v7[v32] = v110;
  v33 = objc_allocWithZone(sub_100002E80(&unk_10002A290, "h<"));
  v34 = UIHostingController.init(rootView:)();
  v35 = [v34 view];
  if (!v35)
  {
    __break(1u);
    goto LABEL_16;
  }

  v36 = v35;
  [v35 setTranslatesAutoresizingMaskIntoConstraints:0];

  v37 = v100;
  v38 = [v100 view];
  if (!v38)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v39 = v38;
  v40 = [v34 view];
  if (!v40)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v41 = v40;
  [v39 addSubview:v40];

  v42 = [v34 view];
  v43 = *&v37[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_customView];
  *&v37[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_customView] = v42;

  sub_100002E80(&unk_10002A4B0, &qword_100018138);
  v44 = swift_allocObject();
  v107 = xmmword_100018090;
  *(v44 + 16) = xmmword_100018090;
  v108 = v34;
  v45 = [v34 view];
  if (!v45)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v46 = v45;
  v47 = [v45 leadingAnchor];

  v48 = [v37 view];
  if (!v48)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v49 = v48;
  v50 = [v48 leadingAnchor];

  v51 = [v47 constraintEqualToAnchor:v50];
  *(v44 + 32) = v51;
  v52 = [v108 view];
  if (!v52)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v53 = v52;
  v54 = [v52 trailingAnchor];

  v55 = [v37 view];
  if (!v55)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v56 = v55;
  v57 = [v55 trailingAnchor];

  v58 = [v54 constraintEqualToAnchor:v57];
  *(v44 + 40) = v58;
  v59 = [v108 view];
  if (!v59)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v60 = v59;
  v61 = [v59 topAnchor];

  v62 = [v37 view];
  if (!v62)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v63 = v62;
  v64 = [v62 topAnchor];

  v65 = [v61 constraintEqualToAnchor:v64];
  *(v44 + 48) = v65;
  v66 = v108;
  v67 = [v108 view];

  if (!v67)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v68 = [v67 bottomAnchor];

  v69 = [v37 view];
  if (!v69)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v70 = v69;
  v71 = [v69 bottomAnchor];

  v72 = [v68 constraintEqualToAnchor:v71];
  *(v44 + 56) = v72;
  *&v37[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_customViewConstraints] = v44;

  v73 = sub_100003388();
  v74 = [objc_allocWithZone(type metadata accessor for ConfirmationDialogSystemApertureViewController.ConfirmationDialogCompactSystemApertureView()) initWithImage:v73];

  v75 = v74;
  [v75 setTranslatesAutoresizingMaskIntoConstraints:0];
  v76 = [v37 view];
  if (!v76)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v77 = v76;
  [v76 addSubview:v75];

  v78 = *&v37[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_miniIconView];
  *&v37[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_miniIconView] = v75;
  v79 = v75;

  v80 = [v37 view];
  if (v80)
  {
    v81 = v80;
    v82 = [v80 SBUISA_systemApertureLeadingConcentricContentLayoutGuide];

    v83 = swift_allocObject();
    *(v83 + 16) = v107;
    v84 = [v79 centerXAnchor];
    v85 = [v82 centerXAnchor];
    v86 = [v84 constraintEqualToAnchor:v85];

    *(v83 + 32) = v86;
    v87 = [v79 centerYAnchor];
    v88 = [v82 centerYAnchor];
    v89 = [v87 constraintEqualToAnchor:v88];

    *(v83 + 40) = v89;
    v90 = [v79 widthAnchor];
    v91 = [v90 constraintEqualToConstant:24.0];

    *(v83 + 48) = v91;
    v92 = [v79 heightAnchor];
    v93 = [v92 constraintEqualToConstant:24.0];

    *(v83 + 56) = v93;
    *&v37[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_miniIconLeadingConstraints] = v83;

    v94 = swift_allocObject();
    *(v94 + 16) = xmmword_1000180A0;
    v95 = [v79 widthAnchor];
    v96 = [v95 constraintEqualToConstant:24.0];

    *(v94 + 32) = v96;
    v97 = [v79 heightAnchor];

    v98 = [v97 constraintEqualToConstant:24.0];
    *(v94 + 40) = v98;

    *&v37[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_miniIconMinimalConstraints] = v94;

    return;
  }

LABEL_27:
  __break(1u);
}

void sub_100003FEC(void *a1, double a2, double a3)
{
  v10.receiver = v3;
  v10.super_class = type metadata accessor for ConfirmationDialogSystemApertureViewController();
  objc_msgSendSuper2(&v10, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9[4] = sub_100004E1C;
  v9[5] = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1000043D8;
  v9[3] = &unk_1000252D8;
  v8 = _Block_copy(v9);

  [a1 animateAlongsideTransition:v8 completion:0];
  _Block_release(v8);
}

void sub_100004100(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_activeLayoutMode;
    v5 = *(Strong + OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_activeLayoutMode);
    if ((v5 - 2) >= 2)
    {
      if (v5 != 4)
      {
        goto LABEL_21;
      }

      v16 = *(Strong + OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_miniIconView);
      if (v16)
      {
        [v16 setHidden:1];
      }

      v17 = *&v3[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_customView];
      if (v17)
      {
        [v17 setHidden:0];
      }

      v15 = objc_opt_self();
      sub_100004E3C();

      isa = Array._bridgeToObjectiveC()().super.isa;

      [v15 deactivateConstraints:isa];

      v19 = Array._bridgeToObjectiveC()().super.isa;

      [v15 deactivateConstraints:v19];

      v11 = &selRef_activateConstraints_;
    }

    else
    {
      v6 = *(Strong + OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_miniIconView);
      if (v6)
      {
        [v6 setHidden:0];
      }

      v7 = *&v3[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_customView];
      if (v7)
      {
        [v7 setHidden:1];
      }

      v8 = *&v3[v4];
      v9 = objc_opt_self();
      sub_100004E3C();

      v10.super.isa = Array._bridgeToObjectiveC()().super.isa;

      v11 = &selRef_deactivateConstraints_;
      if (v8 == 2)
      {
        v12 = &selRef_activateConstraints_;
      }

      else
      {
        v12 = &selRef_deactivateConstraints_;
      }

      if (v8 == 2)
      {
        v13 = &selRef_deactivateConstraints_;
      }

      else
      {
        v13 = &selRef_activateConstraints_;
      }

      [v9 *v12];

      v14 = Array._bridgeToObjectiveC()().super.isa;

      [v9 *v13];

      v15 = objc_opt_self();
    }

    v20 = Array._bridgeToObjectiveC()().super.isa;

    [v15 *v11];

LABEL_21:
    v21 = [v3 view];
    if (v21)
    {
      v22 = v21;
      [v21 setNeedsLayout];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1000043D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

id sub_1000044B8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = &v3[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_bundleID];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v3[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_serviceName];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v3[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_deviceName];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &v3[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_kind];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  v9[32] = -1;
  *&v3[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_activeLayoutMode] = 0;
  *&v3[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_contentRole] = 2;
  *&v3[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_preferredLayoutMode] = 4;
  *&v3[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_maximumLayoutMode] = 4;
  v10 = &v3[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_associatedAppBundleIdentifier];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_preferredHeightForBottomSafeArea;
  *&v3[v11] = sub_10000498C();
  *&v3[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_miniIconView] = 0;
  *&v3[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_customView] = 0;
  *&v3[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_miniIconLeadingConstraints] = &_swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_miniIconMinimalConstraints] = &_swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_customViewConstraints] = &_swiftEmptyArrayStorage;
  if (a2)
  {
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  v15.receiver = v3;
  v15.super_class = type metadata accessor for ConfirmationDialogSystemApertureViewController();
  v13 = objc_msgSendSuper2(&v15, "initWithNibName:bundle:", v12, a3);

  return v13;
}

id sub_100004694(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_bundleID];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v1[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_serviceName];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v1[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_deviceName];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v1[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_kind];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  v6[32] = -1;
  *&v1[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_activeLayoutMode] = 0;
  *&v1[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_contentRole] = 2;
  *&v1[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_preferredLayoutMode] = 4;
  *&v1[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_maximumLayoutMode] = 4;
  v7 = &v1[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_associatedAppBundleIdentifier];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_preferredHeightForBottomSafeArea;
  *&v1[v8] = sub_10000498C();
  *&v1[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_miniIconView] = 0;
  *&v1[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_customView] = 0;
  *&v1[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_miniIconLeadingConstraints] = &_swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_miniIconMinimalConstraints] = &_swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_customViewConstraints] = &_swiftEmptyArrayStorage;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for ConfirmationDialogSystemApertureViewController();
  v9 = objc_msgSendSuper2(&v11, "initWithCoder:", a1);

  if (v9)
  {
  }

  return v9;
}

id sub_100004824(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

double sub_10000498C()
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

    return 196.0;
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

    return 196.0;
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

    return 181.0;
  }

  v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v30)
  {

    return 181.0;
  }

  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;
  if (v31 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v33 == v34)
  {

    return 186.0;
  }

  v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v35)
  {

    return 186.0;
  }

  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;
  if (v36 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v38 == v39)
  {

    return 176.0;
  }

  else
  {
    v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v40)
    {

      return 176.0;
    }

    else
    {
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
          return 156.0;
        }
      }

      return 166.0;
    }
  }
}

uint64_t sub_100004DE4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100004E24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100004E3C()
{
  result = qword_10002A270;
  if (!qword_10002A270)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10002A270);
  }

  return result;
}

void sub_100004E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 != 0xFF)
  {
    sub_100004E9C(a1, a2, a3, a4, a5);
  }
}

void sub_100004E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 1 < 2)
  {

LABEL_4:

    return;
  }

  if (!a5)
  {

    goto LABEL_4;
  }
}

unint64_t sub_100004F04()
{
  result = qword_10002A790;
  if (!qword_10002A790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A790);
  }

  return result;
}

void sub_100004F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 != 0xFF)
  {
    sub_100004F6C(a1, a2, a3, a4, a5);
  }
}

void sub_100004F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 1 < 2)
  {

LABEL_4:

    return;
  }

  if (!a5)
  {

    goto LABEL_4;
  }
}

uint64_t sub_100004FDC(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  sub_10000895C(v2, qword_10002ACF0);
  sub_100008924(v2, qword_10002ACF0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100005068@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_1000050B0(uint64_t a1)
{
  v2 = sub_10000796C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000050EC(uint64_t a1)
{
  v2 = sub_10000796C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100005150(void *a1)
{
  v2 = sub_100002E80(&qword_10002A478, &qword_100018480);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_100007928(a1, a1[3]);
  sub_10000796C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1000052DC(void *a1)
{
  v3 = v1;
  v5 = sub_100002E80(&qword_10002A4A0, &unk_100018490);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_100007928(a1, a1[3]);
  sub_1000087C0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v12) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = *(v3 + 64);
    v12 = *(v3 + 48);
    v13 = v9;
    v14 = *(v3 + 80);
    v11[15] = 3;
    sub_1000088D0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

Swift::Int sub_1000054F8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10000556C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_1000055B0()
{
  v1 = 0x4449656C646E7562;
  v2 = 0x614E656369766564;
  if (*v0 != 2)
  {
    v2 = 0x4B74736575716572;
  }

  if (*v0)
  {
    v1 = 0x4E65636976726573;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100005640@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100008260(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100005674(uint64_t a1)
{
  v2 = sub_1000087C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000056B0(uint64_t a1)
{
  v2 = sub_1000087C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000056EC@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1000083D4(a2, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_1000057B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_100007F60(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_1000079C0(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_1000080E8();
        v16 = v18;
      }

      result = sub_100007DB0(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

void sub_100005950(void *a1)
{
  type metadata accessor for ActivityScene();
  if (swift_dynamicCastClass())
  {
    swift_getKeyPath();
    v3 = a1;
    dispatch thunk of ActivityScene.subscript.getter();

    if (v47)
    {
      v4 = OBJC_IVAR____TtC23NetworkEndpointPickerUI31ConfirmationDialogSceneDelegate_activityIdentifierToBundleID;
      swift_beginAccess();
      v5 = *(v1 + v4);
      if (*(v5 + 16))
      {

        v6 = sub_1000079C0(v46, v47);
        if (v7)
        {
          v42 = *(*(v5 + 56) + 16 * v6);

          if (!UIApp)
          {
LABEL_39:
            __break(1u);
            return;
          }

          v40 = v46;
          v41 = v3;
          v8 = [UIApp connectedScenes];
          sub_10000A084(0, &unk_10002A4C0, UIScene_ptr);
          sub_10000A0CC(&unk_10002A8D0, &unk_10002A4C0, UIScene_ptr);
          v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

          if ((v9 & 0xC000000000000001) != 0)
          {
            swift_unknownObjectRetain();
            __CocoaSet.makeIterator()();
            Set.Iterator.init(_cocoa:)();
            v9 = v46;
            v10 = v47;
            v11 = v48;
            v12 = v49;
            v13 = v50;
          }

          else
          {
            v14 = -1 << *(v9 + 32);
            v10 = v9 + 56;
            v11 = ~v14;
            v15 = -v14;
            if (v15 < 64)
            {
              v16 = ~(-1 << v15);
            }

            else
            {
              v16 = -1;
            }

            v13 = v16 & *(v9 + 56);

            v12 = 0;
          }

          v17 = (v11 + 64) >> 6;
          if (v9 < 0)
          {
            goto LABEL_21;
          }

LABEL_15:
          v18 = v12;
          v19 = v13;
          v20 = v12;
          if (!v13)
          {
            while (1)
            {
              v20 = v18 + 1;
              if (__OFADD__(v18, 1))
              {
                break;
              }

              if (v20 >= v17)
              {
                goto LABEL_30;
              }

              v19 = *(v10 + 8 * v20);
              ++v18;
              if (v19)
              {
                goto LABEL_19;
              }
            }

            __break(1u);
            goto LABEL_39;
          }

LABEL_19:
          v21 = (v19 - 1) & v19;
          v22 = *(*(v9 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));
          if (v22)
          {
            while (1)
            {
              v24 = v9;
              v25 = [v22 _sceneIdentifier];
              v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v28 = v27;

              _StringGuts.grow(_:)(37);

              v44 = 0xD000000000000023;
              v45 = 0x80000001000196A0;
              String.append(_:)(v42);
              if (v26 == 0xD000000000000023 && v28 == v45)
              {
                break;
              }

              v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v30)
              {
                goto LABEL_32;
              }

              v12 = v20;
              v13 = v21;
              v9 = v24;
              if ((v24 & 0x8000000000000000) == 0)
              {
                goto LABEL_15;
              }

LABEL_21:
              v23 = __CocoaSet.Iterator.next()();
              if (v23)
              {
                v43 = v23;
                swift_dynamicCast();
                v22 = v44;
                v20 = v12;
                v21 = v13;
                if (v44)
                {
                  continue;
                }
              }

              goto LABEL_30;
            }

LABEL_32:

            sub_10000A07C(v24);

            v31 = v22;
            v33 = Logger.logObject.getter();
            v34 = static os_log_type_t.default.getter();
            v32 = v47;
            if (os_log_type_enabled(v33, v34))
            {
              v35 = swift_slowAlloc();
              *v35 = 0;
              _os_log_impl(&_mh_execute_header, v33, v34, "ActivityScene disconnected while confirmation scene is still waiting for a response, sending decline", v35, 2u);
            }

            v36 = objc_allocWithZone(type metadata accessor for DDUIConfirmationAction());
            v44 = &_swiftEmptySetSingleton;
            v37 = DDUIConfirmationAction.init(result:)();
            sub_100014B5C(&v43, v37);

            v38 = [v31 _FBSScene];
            sub_10000A084(0, &qword_10002A4D0, BSAction_ptr);
            sub_10000A0CC(&qword_10002A4D8, &qword_10002A4D0, BSAction_ptr);
            isa = Set._bridgeToObjectiveC()().super.isa;

            [v38 sendActions:isa];

            v3 = v41;
          }

          else
          {
LABEL_30:

            sub_10000A07C(v9);

            v31 = 0;
            v3 = v41;
            v32 = v47;
          }

          swift_beginAccess();
          sub_1000057B8(0, 0, v40, v32);
          swift_endAccess();

          goto LABEL_36;
        }
      }
    }

LABEL_36:
  }
}

id sub_100005F98(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC23NetworkEndpointPickerUI31ConfirmationDialogSceneDelegate_log;
  if (qword_100029DD0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  v5 = sub_100008924(v4, qword_10002ACF0);
  (*(*(v4 - 8) + 16))(&v2[v3], v5, v4);
  *&v2[OBJC_IVAR____TtC23NetworkEndpointPickerUI31ConfirmationDialogSceneDelegate_window] = 0;
  *&v2[OBJC_IVAR____TtC23NetworkEndpointPickerUI31ConfirmationDialogSceneDelegate_activity] = 0;
  *&v2[OBJC_IVAR____TtC23NetworkEndpointPickerUI31ConfirmationDialogSceneDelegate_systemApertureVC] = 0;
  *&v2[OBJC_IVAR____TtC23NetworkEndpointPickerUI31ConfirmationDialogSceneDelegate_prominentAssertion] = 0;
  v6 = OBJC_IVAR____TtC23NetworkEndpointPickerUI31ConfirmationDialogSceneDelegate_activityIdentifierToBundleID;
  *&v2[v6] = sub_1000089C0(&_swiftEmptyArrayStorage);
  v8.receiver = v2;
  v8.super_class = type metadata accessor for ConfirmationDialogSceneDelegate(0);
  return objc_msgSendSuper2(&v8, "init");
}

id sub_1000060D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConfirmationDialogSceneDelegate(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ConfirmationDialogSceneDelegate(uint64_t a1)
{
  result = qword_10002A330;
  if (!qword_10002A330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100006218(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for Logger();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10000631C(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_100009EE0(a1);
  (*(*(*(v2 + qword_10002AD30) - 8) + 8))(a1);
  return v5;
}

void *sub_1000063E0(uint64_t a1, uint64_t a2)
{
  v4 = *((swift_isaMask & *v2) + qword_10002AD30);
  v5 = *(v4 - 8);
  __chkstk_darwin(a1);
  (*(v5 + 16))(&v11 - v6);
  v7 = UIHostingController.init(coder:rootView:)();
  v8 = *(v5 + 8);
  v9 = v7;
  v8(a2, v4);
  if (v7)
  {
  }

  return v7;
}

id sub_100006518(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for SecureHostingController(0, *((swift_isaMask & *v4) + qword_10002AD30), *((swift_isaMask & *v4) + qword_10002AD30 + 8), a4);
  v9.receiver = v4;
  v9.super_class = v6;
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);

  if (v7)
  {
  }

  return v7;
}

id sub_1000065F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SecureHostingController(0, *((swift_isaMask & *v4) + qword_10002AD30), *((swift_isaMask & *v4) + qword_10002AD30 + 8), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

double sub_1000066CC(void *a1)
{
  v1 = a1;
  sub_100006710();
  v3 = v2;

  return v3;
}

void sub_100006728(void *a1, double a2, double a3)
{
  v3 = a1;
  sub_100006788();
}

void sub_1000067A0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UIHostingControllerSizingOptions();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for ConfirmationDialogView(0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v32 - v9;
  sub_10000A11C(a1, &v32 - v9);
  objc_allocWithZone(sub_100002E80(&qword_10002A518, &qword_100018510));
  sub_10000A11C(v10, v8);
  v11 = UIHostingController.init(rootView:)();
  sub_10000A180(v10);
  sub_100002E80(&qword_10002A520, &qword_100018518);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100018140;
  v13 = v11;
  static UIHostingControllerSizingOptions.preferredContentSize.getter();
  v34 = v12;
  sub_10000A1DC();
  sub_100002E80(&qword_10002A530, &qword_100018520);
  sub_10000A234();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of UIHostingController.sizingOptions.setter();

  *&v2[qword_10002A3C0] = v13;
  v14 = v13;
  v15 = sub_100002E80(&qword_10002A510, &qword_100018508);
  v33.receiver = v2;
  v33.super_class = v15;
  v16 = objc_msgSendSuper2(&v33, "initWithNibName:bundle:", 0, 0);
  v17 = [v16 view];
  if (!v17)
  {
    __break(1u);
    goto LABEL_9;
  }

  v18 = v17;
  v19 = qword_10002A3C0;
  v20 = [*&v16[qword_10002A3C0] view];
  if (!v20)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v21 = v20;
  [v18 addSubview:v20];

  [v16 addChildViewController:*&v16[v19]];
  v22 = [v16 view];
  if (!v22)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v23 = v22;
  v24 = objc_opt_self();
  v25 = [v24 clearColor];
  [v23 setBackgroundColor:v25];

  v26 = v14;
  v27 = [v26 view];
  if (!v27)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v28 = v27;
  v29 = [v24 clearColor];
  [v28 setBackgroundColor:v29];

  v30 = [v16 view];
  if (!v30)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  [v30 setTranslatesAutoresizingMaskIntoConstraints:0];

  v31 = [v26 view];
  if (v31)
  {
    [v31 setTranslatesAutoresizingMaskIntoConstraints:0];

    sub_10000A180(a1);
    return;
  }

LABEL_13:
  __break(1u);
}

void sub_100006C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for LiveActivitiesHostingController(0, *((swift_isaMask & *v4) + 0x50), *((swift_isaMask & *v4) + 0x58), a4);
  v38.receiver = v4;
  v38.super_class = v5;
  objc_msgSendSuper2(&v38, "viewWillLayoutSubviews");
  sub_100002E80(&unk_10002A4B0, &qword_100018138);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100018090;
  v7 = *(v4 + qword_10002A3C0);
  v8 = [v7 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = v8;
  v10 = [v8 topAnchor];

  v11 = [v4 view];
  if (!v11)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = v11;
  v13 = [v11 topAnchor];

  v14 = [v10 constraintEqualToAnchor:v13];
  *(v6 + 32) = v14;
  v15 = [v7 view];
  if (!v15)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v16 = v15;
  v17 = [v15 leadingAnchor];

  v18 = [v4 view];
  if (!v18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v19 = v18;
  v20 = [v18 leadingAnchor];

  v21 = [v17 constraintEqualToAnchor:v20];
  *(v6 + 40) = v21;
  v22 = [v7 view];
  if (!v22)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v23 = v22;
  v24 = [v22 trailingAnchor];

  v25 = [v4 view];
  if (!v25)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v26 = v25;
  v27 = [v25 trailingAnchor];

  v28 = [v24 constraintEqualToAnchor:v27];
  *(v6 + 48) = v28;
  v29 = [v7 view];
  if (!v29)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v30 = v29;
  v31 = [v29 bottomAnchor];

  v32 = [v4 view];
  if (v32)
  {
    v33 = v32;
    v34 = objc_opt_self();
    v35 = [v33 bottomAnchor];

    v36 = [v31 constraintEqualToAnchor:v35];
    *(v6 + 56) = v36;
    sub_10000A084(0, &qword_10002A270, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v34 activateConstraints:isa];

    return;
  }

LABEL_17:
  __break(1u);
}

void sub_100006FF0(void *a1)
{
  v4 = a1;
  sub_100006C50(v4, v1, v2, v3);
}

void sub_100007038(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for LiveActivitiesHostingController(0, *((swift_isaMask & *v4) + 0x50), *((swift_isaMask & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v6;
  objc_msgSendSuper2(&v7, "viewIsAppearing:", a1 & 1);
  sub_100007170();
}

void sub_1000070BC(void *a1, uint64_t a2, char a3)
{
  v6 = a1;
  sub_100007038(a3, v6, v4, v5);
}

void sub_100007110(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v4 = a1;
  sub_10000A024();
  swift_unknownObjectRelease();
}

void sub_100007170()
{
  [v0 preferredContentSize];
  if (v1 == 0.0 && v2 == 0.0)
  {
    if (qword_100029DD0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100008924(v3, qword_10002ACF0);
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v4, "LiveActivitiesHostingController: skipping setMetrics because content size is 0", v5, 2u);
    }

LABEL_16:
    v17 = oslog;
LABEL_24:

    return;
  }

  v6 = v2;
  v7 = v1;
  v8 = [v0 view];
  if (!v8)
  {
    __break(1u);
    return;
  }

  v9 = v8;
  v10 = [v8 window];

  if (v10)
  {
    v11 = [v10 windowScene];
    if (v11)
    {
      oslog = v11;
      type metadata accessor for ActivityScene();
      if (swift_dynamicCastClass())
      {
        if (qword_100029DD0 != -1)
        {
          swift_once();
        }

        v12 = type metadata accessor for Logger();
        sub_100008924(v12, qword_10002ACF0);
        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          *v15 = 134218240;
          *(v15 + 4) = v7;
          *(v15 + 12) = 2048;
          *(v15 + 14) = v6;
          _os_log_impl(&_mh_execute_header, v13, v14, "LiveActivitiesHostingController: setMetrics with size {%f, %f}", v15, 0x16u);
        }

        v16 = objc_allocWithZone(type metadata accessor for ActivitySceneMetrics());
        ActivitySceneMetrics.init(size:cornerRadius:)();
        dispatch thunk of ActivityScene.resolvedMetrics.setter();

        goto LABEL_16;
      }
    }

    if (qword_100029DD0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100008924(v18, qword_10002ACF0);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "LiveActivitiesHostingController used in a scene that's not an ActivityScene", v21, 2u);
    }

    v17 = v10;
    goto LABEL_24;
  }
}

void sub_1000074F4(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;

  sub_10000A028();
}

id sub_100007564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for LiveActivitiesHostingController(0, *((swift_isaMask & *v4) + 0x50), *((swift_isaMask & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

uint64_t sub_100007608(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10000761C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100007640(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 81))
  {
    return (*a1 + 0x7FFFFFFF);
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

  return (v4 + 1);
}

uint64_t sub_10000769C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_10000771C()
{
  result = qword_10002A448;
  if (!qword_10002A448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A448);
  }

  return result;
}

unint64_t sub_100007774()
{
  result = qword_10002A450;
  if (!qword_10002A450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A450);
  }

  return result;
}

unint64_t sub_1000077CC()
{
  result = qword_10002A458;
  if (!qword_10002A458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A458);
  }

  return result;
}

unint64_t sub_100007824()
{
  result = qword_10002A460;
  if (!qword_10002A460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A460);
  }

  return result;
}

unint64_t sub_10000787C()
{
  result = qword_10002A468;
  if (!qword_10002A468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A468);
  }

  return result;
}

unint64_t sub_1000078D4()
{
  result = qword_10002A470;
  if (!qword_10002A470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A470);
  }

  return result;
}

void *sub_100007928(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_10000796C()
{
  result = qword_10002A480;
  if (!qword_10002A480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A480);
  }

  return result;
}

unint64_t sub_1000079C0(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100007A38(a1, a2, v4);
}

unint64_t sub_100007A38(uint64_t a1, uint64_t a2, uint64_t a3)
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

Swift::Int sub_100007AF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100002E80(&qword_10002A4E0, &qword_1000184D0);
  v37 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100007DB0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100007F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1000079C0(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_100007AF0(v18, a5 & 1);
      v13 = sub_1000079C0(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1000080E8();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

void *sub_1000080E8()
{
  v1 = v0;
  sub_100002E80(&qword_10002A4E0, &qword_1000184D0);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

uint64_t sub_100008260(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E65636976726573 && a2 == 0xEB00000000656D61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x614E656369766564 && a2 == 0xEA0000000000656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4B74736575716572 && a2 == 0xEB00000000646E69)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1000083D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100002E80(&qword_10002A488, &qword_100018488);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - v7;
  sub_100007928(a1, a1[3]);
  sub_1000087C0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v32 = v2;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
LABEL_4:
    sub_100002F30(a1);
    v42 = v14;
    v43 = v13;
    v44 = v12;
    v45 = v11;
    v46 = v10;
    v47 = v9;
    v48 = 0u;
    v49 = 0u;
    v50 = -1;
    return sub_100008814(&v42);
  }

  LOBYTE(v42) = 0;
  v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v30 = v6;
  v31 = v16;
  v29 = a2;
  LOBYTE(v42) = 1;
  v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v11 = v17;
  LOBYTE(v42) = 2;
  v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v32 = 0;
  v10 = v18;
  v9 = v19;
  v52 = 3;
  sub_100008844();
  v20 = v32;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v32 = v20;
  if (v20)
  {
    (*(v30 + 8))(v8, v5);
    v13 = v31;
    goto LABEL_4;
  }

  (*(v30 + 8))(v8, v5);
  v21 = *(&v39 + 1);
  v30 = v39;
  v28 = *(&v40 + 1);
  v22 = v40;
  v51 = v41;
  *&v33 = v14;
  v23 = v31;
  *(&v33 + 1) = v31;
  *&v34 = v12;
  *(&v34 + 1) = v11;
  *&v35 = v10;
  *(&v35 + 1) = v9;
  v36 = v39;
  v37 = v40;
  v38 = v41;
  sub_100008898(&v33, &v42);
  sub_100002F30(a1);
  v42 = v14;
  v43 = v23;
  v44 = v12;
  v45 = v11;
  v46 = v10;
  v47 = v9;
  *&v48 = v30;
  *(&v48 + 1) = v21;
  *&v49 = v22;
  *(&v49 + 1) = v28;
  v50 = v51;
  result = sub_100008814(&v42);
  v24 = v36;
  v25 = v29;
  *(v29 + 32) = v35;
  *(v25 + 48) = v24;
  *(v25 + 64) = v37;
  *(v25 + 80) = v38;
  v26 = v34;
  *v25 = v33;
  *(v25 + 16) = v26;
  return result;
}

unint64_t sub_1000087C0()
{
  result = qword_10002A490;
  if (!qword_10002A490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A490);
  }

  return result;
}

unint64_t sub_100008844()
{
  result = qword_10002A498;
  if (!qword_10002A498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A498);
  }

  return result;
}

unint64_t sub_1000088D0()
{
  result = qword_10002A4A8;
  if (!qword_10002A4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A4A8);
  }

  return result;
}

uint64_t sub_100008924(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_10000895C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_1000089C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002E80(&qword_10002A4E0, &qword_1000184D0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1000079C0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

void sub_100008AD4(void *a1)
{
  v2 = sub_100002E80(&qword_10002A4E8, &qword_1000184D8);
  __chkstk_darwin(v2 - 8);
  v4 = v148 - v3;
  v5 = sub_100002E80(&qword_10002A4F0, &qword_1000184E0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v148 - v7;
  v9 = type metadata accessor for ActivityPresentationOptions();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v148 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v159 + 1) = type metadata accessor for Font.TextStyle();
  v158 = *(*(&v159 + 1) - 8);
  __chkstk_darwin(*(&v159 + 1));
  *&v159 = v148 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = type metadata accessor for ConfirmationDialogView(0);
  __chkstk_darwin(v160);
  v157 = (v148 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for ActivityScene();
  v15 = swift_dynamicCastClass();
  if (v15)
  {
    v16 = v15;
    sub_100002E80(&unk_10002A500, &unk_1000184F0);
    v17 = a1;
    v18 = static Activity.activities.getter();
    if (v18 >> 62)
    {
      v19 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v19 >= 2)
    {
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "More than one live activity found requesting confirmation in DDUI. This is not supported", v22, 2u);
      }
    }

    v23 = static Activity.activities.getter();
    if (v23 >> 62)
    {
      v71 = v23;
      v72 = _CocoaArrayWrapper.endIndex.getter();
      v23 = v71;
      v161 = v16;
      if (v72)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v161 = v16;
      if (v24)
      {
LABEL_10:
        if ((v23 & 0xC000000000000001) != 0)
        {
          v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v25 = *(v23 + 32);
        }

        v26 = Activity.id.getter();
        v28 = v27;
        Activity.attributes.getter();
        v189 = v183;
        v190 = v184;
        v191 = v185;
        v192 = v186;
        v187 = v181;
        v188 = v182;
        v29 = v181;

        sub_100008814(&v187);
        swift_beginAccess();
        sub_1000057B8(v29, *(&v29 + 1), v26, v28);
        swift_endAccess();

        v16 = v161;
        goto LABEL_30;
      }
    }

    v25 = 0;
LABEL_30:
    v73 = v17;
    if ([v16 SBUI_isHostedBySystemAperture])
    {
      type metadata accessor for ConfirmationDialogSystemApertureViewController();
      v74 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v75 = OBJC_IVAR____TtC23NetworkEndpointPickerUI31ConfirmationDialogSceneDelegate_systemApertureVC;
      v76 = v162;
      v77 = *(v162 + OBJC_IVAR____TtC23NetworkEndpointPickerUI31ConfirmationDialogSceneDelegate_systemApertureVC);
      *(v162 + OBJC_IVAR____TtC23NetworkEndpointPickerUI31ConfirmationDialogSceneDelegate_systemApertureVC) = v74;
      v78 = v74;

      if (v25)
      {

        Activity.attributes.getter();

        v189 = v183;
        v190 = v184;
        v191 = v185;
        v192 = v186;
        v187 = v181;
        v188 = v182;
        v79 = *(&v181 + 1);
        v80 = v181;

        sub_100008814(&v187);
      }

      else
      {
        v80 = 0;
        v79 = 0;
      }

      v82 = &v78[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_bundleID];
      *v82 = v80;
      *(v82 + 1) = v79;

      v83 = *(v76 + v75);
      if (!v83)
      {
        goto LABEL_49;
      }

      if (v25)
      {

        v84 = v83;
        Activity.attributes.getter();

        v189 = v183;
        v190 = v184;
        v191 = v185;
        v192 = v186;
        v187 = v181;
        v188 = v182;
        v85 = *(&v182 + 1);
        v86 = v182;

        sub_100008814(&v187);
      }

      else
      {
        v122 = v83;
        v86 = 0;
        v85 = 0;
      }

      v123 = &v83[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_serviceName];
      *v123 = v86;
      *(v123 + 1) = v85;

      v124 = *(v76 + v75);
      if (v124)
      {
        v156 = v73;
        if (v25)
        {

          v125 = v124;
          Activity.attributes.getter();

          v189 = v183;
          v190 = v184;
          v191 = v185;
          v192 = v186;
          v187 = v181;
          v188 = v182;
          v126 = *(&v183 + 1);
          v127 = v183;

          sub_100008814(&v187);
        }

        else
        {
          v130 = v124;
          v127 = 0;
          v126 = 0;
        }

        v131 = &v124[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_deviceName];
        *v131 = v127;
        *(v131 + 1) = v126;

        v132 = *(v76 + v75);
        if (v132)
        {
          v133 = v76;
          if (v25)
          {

            v134 = v132;
            Activity.attributes.getter();

            v190 = v184;
            v191 = v185;
            v188 = v182;
            v189 = v183;
            v135 = v186;
            v192 = v186;
            v187 = v181;
            v137 = *(&v184 + 1);
            v136 = v184;
            v139 = *(&v185 + 1);
            v138 = v185;
            sub_100004E88(v184, *(&v184 + 1), v185, *(&v185 + 1), v186);
            sub_100008814(&v187);
          }

          else
          {
            v140 = v132;
            v136 = 0;
            v137 = 0;
            v138 = 0;
            v139 = 0;
            v135 = -1;
          }

          v141 = &v132[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_kind];
          v142 = *&v132[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_kind];
          v143 = *&v132[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_kind + 8];
          v144 = *&v132[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_kind + 16];
          v145 = *&v132[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_kind + 24];
          *v141 = v136;
          *(v141 + 1) = v137;
          *(v141 + 2) = v138;
          *(v141 + 3) = v139;
          v146 = v141[32];
          v141[32] = v135;
          sub_100004F58(v142, v143, v144, v145, v146);

          v128 = *(v133 + v75);
        }

        else
        {
          v128 = 0;
        }

        v129 = v161;
        v73 = v156;
      }

      else
      {
LABEL_49:
        v128 = 0;
        v129 = v161;
      }

      v147 = v128;
      [v129 setSystemApertureElementViewControllerProvider:v147];
    }

    else
    {
      v156 = v73;
      if (v25)
      {

        Activity.attributes.getter();

        v172 = v190;
        v173 = v191;
        v174 = v192;
        v169 = v187;
        v170 = v188;
        v171 = v189;
        v154 = *(&v187 + 1);
        v155 = v187;

        sub_100008814(&v169);

        Activity.attributes.getter();

        v177 = v189;
        v178 = v190;
        v179 = v191;
        v180 = v192;
        v175 = v187;
        v176 = v188;
        *&v153 = *(&v188 + 1);
        *(&v153 + 1) = v188;

        sub_100008814(&v175);

        Activity.attributes.getter();

        v183 = v189;
        v184 = v190;
        v185 = v191;
        v186 = v192;
        v181 = v187;
        v182 = v188;
        *&v152 = *(&v189 + 1);
        *(&v152 + 1) = v189;

        sub_100008814(&v181);

        Activity.attributes.getter();

        v190 = v166;
        v191 = v167;
        v81 = v168;
        v192 = v168;
        v187 = v163;
        v188 = v164;
        v189 = v165;
        *(&v150 + 1) = *(&v166 + 1);
        v151 = v166;
        *(&v149 + 1) = *(&v167 + 1);
        *&v150 = v167;
        sub_100004E88(v166, *(&v166 + 1), v167, *(&v167 + 1), v168);
        sub_100008814(&v187);
      }

      else
      {
        v151 = 0;
        *(&v149 + 1) = 0;
        v150 = 0uLL;
        v152 = 0uLL;
        v153 = 0uLL;
        v154 = 0;
        v155 = 0;
        v81 = -1;
      }

      v87 = [v16 session];
      v88 = [v87 role];

      v89 = static UISceneSessionRole.activitySystemAperture.getter();
      v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v92 = v91;
      if (v90 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v92 == v93)
      {
        v94 = 1;
      }

      else
      {
        v94 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      *&v187 = 0x402C000000000000;
      (*(v158 + 104))(v159, enum case for Font.TextStyle.subheadline(_:), *(&v159 + 1));
      sub_100004F04();
      v95 = v157;
      ScaledMetric.init(wrappedValue:relativeTo:)();
      v96 = v160;
      AccessibilityFocusState.init<>()();
      v97 = (v95 + v96[6]);
      v98 = v154;
      *v97 = v155;
      v97[1] = v98;
      v99 = (v95 + v96[7]);
      v100 = v153;
      *v99 = *(&v153 + 1);
      v99[1] = v100;
      v101 = (v95 + v96[8]);
      v102 = v152;
      *v101 = *(&v152 + 1);
      v101[1] = v102;
      v103 = v95 + v96[9];
      v104 = *(&v150 + 1);
      *v103 = v151;
      *(v103 + 8) = v104;
      v105 = *(&v149 + 1);
      *(v103 + 16) = v150;
      *(v103 + 24) = v105;
      *(v103 + 32) = v81;
      *(v95 + v96[10]) = v94 & 1;
      v106 = v96[11];
      *(v95 + v106) = [objc_allocWithZone(CNContactStore) init];
      v107 = v96[12];
      *&v181 = 0;
      sub_100002E80(&qword_10002A280, "b<");
      State.init(wrappedValue:)();
      *(v95 + v107) = v187;
      v108 = v96[13];
      *&v181 = 0;
      State.init(wrappedValue:)();
      *(v95 + v108) = v187;
      v109 = [objc_opt_self() sharedApplication];
      [v109 userInterfaceLayoutDirection];

      v110 = v96[14];
      v111 = objc_allocWithZone(type metadata accessor for SFUIContactIconProvider());
      *(v95 + v110) = SFUIContactIconProvider.init(diameter:layoutDirection:)();
      v112 = (v95 + v96[15]);
      type metadata accessor for ConfirmationDialogLockObserver(0);
      swift_allocObject();
      *&v181 = sub_10000A8C8();
      State.init(wrappedValue:)();
      v113 = *(&v187 + 1);
      *v112 = v187;
      v112[1] = v113;
      v114 = v96[16];
      *&v181 = 0;
      sub_100002E80(&qword_10002A288, &qword_100018500);
      State.init(wrappedValue:)();
      *(v95 + v114) = v187;
      v115 = objc_allocWithZone(sub_100002E80(&qword_10002A510, &qword_100018508));
      sub_1000067A0(v95);
      v117 = v116;
      v118 = objc_allocWithZone(type metadata accessor for SFSecureWindow());
      v119 = [v118 initWithWindowScene:v161];
      v120 = v156;

      [v119 setRootViewController:v117];
      [v119 makeKeyAndVisible];

      v121 = *(v162 + OBJC_IVAR____TtC23NetworkEndpointPickerUI31ConfirmationDialogSceneDelegate_window);
      *(v162 + OBJC_IVAR____TtC23NetworkEndpointPickerUI31ConfirmationDialogSceneDelegate_window) = v119;
    }

    return;
  }

  *(&v159 + 1) = v4;
  v160 = v12;
  v156 = v8;
  v157 = v10;
  v155 = v9;
  v158 = v6;
  v30 = [a1 _FBSScene];
  v161 = [v30 settings];

  type metadata accessor for DDUIConfirmationDialogSceneSettings();
  v31 = swift_dynamicCastClass();
  if (v31)
  {
    v32 = v31;
    v154 = v5;
    v148[1] = OBJC_IVAR____TtC23NetworkEndpointPickerUI31ConfirmationDialogSceneDelegate_log;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Got request to start confirmation activity", v35, 2u);
    }

    v36 = SBUIIsSystemApertureEnabled();
    sub_100002E80(&qword_10002A4F8, &qword_1000184E8);
    v37 = type metadata accessor for ActivityPresentationOptions.ActivityPresentationDestination();
    v38 = *(v37 - 8);
    v39 = *(v38 + 72);
    v40 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_100018150;
    v42 = &enum case for ActivityPresentationOptions.ActivityPresentationDestination.systemAperture(_:);
    v43 = v41 + v40;
    if (!v36)
    {
      v42 = &enum case for ActivityPresentationOptions.ActivityPresentationDestination.banner(_:);
    }

    v44 = *(v38 + 104);
    v44(v43, *v42, v37);
    v44(v43 + v39, enum case for ActivityPresentationOptions.ActivityPresentationDestination.lockscreen(_:), v37);
    ActivityPresentationOptions.init(destinations:)();
    v148[3] = "onfirmationDialog::";
    v45 = type metadata accessor for Date();
    (*(*(v45 - 8) + 56))(*(&v159 + 1), 1, 1, v45);
    sub_1000077CC();
    sub_100007824();
    sub_10000787C();
    v46 = ActivityContent.init(state:staleDate:relevanceScore:)();
    *&v159 = (*((swift_isaMask & *v32) + 0x50))(v46);
    *(&v159 + 1) = v47;

    v49 = (*((swift_isaMask & *v32) + 0x58))(v48);
    v51 = v50;

    v53 = (*((swift_isaMask & *v32) + 0x60))(v52);
    v55 = v54;

    (*((swift_isaMask & *v32) + 0x68))(&v169, v56);
    sub_100004F58(0, 0, 0, 0, 0xFFu);
    v57 = v169;
    v58 = v170;
    v59 = v171;
    v148[2] = sub_100002E80(&unk_10002A500, &unk_1000184F0);
    *&v153 = v49;
    *(&v153 + 1) = v51;
    *&v187 = v49;
    *(&v187 + 1) = v51;
    v188 = v159;
    *&v152 = v53;
    *(&v152 + 1) = v55;
    *&v189 = v53;
    *(&v189 + 1) = v55;
    v60 = v156;
    v149 = v57;
    v190 = v57;
    v150 = v58;
    v191 = v58;
    v192 = v59;
    v183 = v189;
    v184 = v57;
    v185 = v58;
    LODWORD(v151) = v59;
    v186 = v59;
    v181 = v187;
    v182 = v159;
    sub_100008898(&v187, &v175);
    v62 = static Activity.request(attributes:content:presentationOptions:platterTarget:contentSourceRequests:isEphemeral:isUnbounded:)();
    v177 = v183;
    v178 = v184;
    v179 = v185;
    v180 = v186;
    v175 = v181;
    v176 = v182;
    sub_100008814(&v175);
    v63 = v162;
    *(v162 + OBJC_IVAR____TtC23NetworkEndpointPickerUI31ConfirmationDialogSceneDelegate_activity) = v62;

    v64 = v155;
    v65 = v157;
    if (*(v63 + OBJC_IVAR____TtC23NetworkEndpointPickerUI31ConfirmationDialogSceneDelegate_activity))
    {

      Activity.id.getter();
      v66 = objc_allocWithZone(SNAProminentPresentationAssertion);
      v67 = String._bridgeToObjectiveC()();
      v68 = String._bridgeToObjectiveC()();

      v69 = [v66 initWithExplanation:v67 sessionIdentifier:v68 invalidationHandler:0];

      (*(v158 + 8))(v156, v154);
      v65[1](v160, v64);
      v70 = *(v63 + OBJC_IVAR____TtC23NetworkEndpointPickerUI31ConfirmationDialogSceneDelegate_prominentAssertion);
      *(v63 + OBJC_IVAR____TtC23NetworkEndpointPickerUI31ConfirmationDialogSceneDelegate_prominentAssertion) = v69;
    }

    else
    {

      (*(v158 + 8))(v60, v154);
      v65[1](v160, v64);
    }

    v181 = v153;
    v182 = v159;
    v183 = v152;
    v184 = v149;
    v185 = v150;
    v186 = v151;
    sub_100008814(&v181);
  }

  else
  {
    v61 = v161;
  }
}

uint64_t sub_100009EE0(uint64_t a1)
{
  __chkstk_darwin(a1);
  (*(v2 + 16))(&v4 - v1);
  return UIHostingController.init(rootView:)();
}

uint64_t sub_10000A084(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_10000A0CC(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000A084(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000A11C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfirmationDialogView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000A180(uint64_t a1)
{
  v2 = type metadata accessor for ConfirmationDialogView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000A1DC()
{
  result = qword_10002A528;
  if (!qword_10002A528)
  {
    type metadata accessor for UIHostingControllerSizingOptions();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A528);
  }

  return result;
}

unint64_t sub_10000A234()
{
  result = qword_10002A538;
  if (!qword_10002A538)
  {
    sub_10000A298(&qword_10002A530, &qword_100018520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A538);
  }

  return result;
}

uint64_t sub_10000A298(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConfirmationDialogActivityAttributes.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ConfirmationDialogActivityAttributes.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10000A4A0()
{
  result = qword_10002A540;
  if (!qword_10002A540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A540);
  }

  return result;
}

unint64_t sub_10000A4F8()
{
  result = qword_10002A548;
  if (!qword_10002A548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A548);
  }

  return result;
}

unint64_t sub_10000A550()
{
  result = qword_10002A550;
  if (!qword_10002A550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A550);
  }

  return result;
}

unint64_t sub_10000A5A8()
{
  result = qword_10002A558;
  if (!qword_10002A558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A558);
  }

  return result;
}

unint64_t sub_10000A600()
{
  result = qword_10002A560;
  if (!qword_10002A560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A560);
  }

  return result;
}

uint64_t sub_10000A670()
{
  swift_getKeyPath();
  sub_10000AF04(&qword_10002A700, type metadata accessor for ConfirmationDialogLockObserver, &unk_100018758);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

uint64_t sub_10000A710@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10000AF04(&qword_10002A700, type metadata accessor for ConfirmationDialogLockObserver, &unk_100018758);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_10000A7B8(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10000AF04(&qword_10002A700, type metadata accessor for ConfirmationDialogLockObserver, &unk_100018758);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10000A8C8()
{
  v1 = v0;
  v2 = type metadata accessor for DeviceLockState();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v13 - v7;
  *(v0 + 16) = 0;
  ObservationRegistrar.init()();
  type metadata accessor for SFLockStateMonitor();
  swift_allocObject();
  *(v0 + 24) = SFLockStateMonitor.init()();
  sub_10000AF04(&qword_10002A708, type metadata accessor for ConfirmationDialogLockObserver, &unk_100018774);

  dispatch thunk of SFLockStateMonitor.delegate.setter();

  dispatch thunk of SFLockStateMonitor.lockState.getter();
  (*(v3 + 104))(v6, enum case for DeviceLockState.locked(_:), v2);
  v9 = static DeviceLockState.== infix(_:_:)() & 1;
  v10 = *(v3 + 8);
  v10(v6, v2);
  v10(v8, v2);
  if (v9 == *(v1 + 16))
  {
    *(v1 + 16) = v9;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v13[-2] = v1;
    LOBYTE(v13[-1]) = v9;
    v13[1] = v1;
    sub_10000AF04(&qword_10002A700, type metadata accessor for ConfirmationDialogLockObserver, &unk_100018758);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return v1;
}

uint64_t sub_10000AB78(uint64_t a1)
{
  v2 = type metadata accessor for DeviceLockState();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, enum case for DeviceLockState.locked(_:), v2);
  v6 = static DeviceLockState.== infix(_:_:)() & 1;
  result = (*(v3 + 8))(v5, v2);
  if (v6 == *(v1 + 16))
  {
    *(v1 + 16) = v6;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v9[-2] = v1;
    LOBYTE(v9[-1]) = v6;
    v9[1] = v1;
    sub_10000AF04(&qword_10002A700, type metadata accessor for ConfirmationDialogLockObserver, &unk_100018758);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10000AD50()
{

  v1 = OBJC_IVAR____TtC23NetworkEndpointPickerUIP33_2B1A1DDD1B950138D9D2F33C34369AAC30ConfirmationDialogLockObserver___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t sub_10000AE1C(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_10000AF04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000AF60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002E80(&qword_10002A710, &qword_1000187C8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100002E80(&qword_10002A718, &unk_1000187D0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 44));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_10000B098(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100002E80(&qword_10002A710, &qword_1000187C8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100002E80(&qword_10002A718, &unk_1000187D0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 44)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_10000B1D8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000B210(uint64_t a1)
{
  sub_10000B3AC(319);
  if (v1 <= 0x3F)
  {
    sub_10000B408();
    if (v2 <= 0x3F)
    {
      sub_10000B460(319, &qword_10002A7A0, &type metadata for String);
      if (v3 <= 0x3F)
      {
        sub_10000B460(319, &qword_10002A7A8, &type metadata for DDUIPermissionRequest.Kind);
        if (v4 <= 0x3F)
        {
          sub_10000A084(319, &qword_10002A7B0, CNContactStore_ptr);
          if (v5 <= 0x3F)
          {
            sub_10000B504(319, &unk_10002A7B8, &qword_10002A280, "b<");
            if (v6 <= 0x3F)
            {
              type metadata accessor for SFUIContactIconProvider();
              if (v7 <= 0x3F)
              {
                sub_10000B4AC(319);
                if (v8 <= 0x3F)
                {
                  sub_10000B504(319, qword_10002A7D0, &qword_10002A288, &qword_100018500);
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
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

void sub_10000B3AC(uint64_t a1)
{
  if (!qword_10002A788)
  {
    sub_100004F04();
    v1 = type metadata accessor for ScaledMetric();
    if (!v2)
    {
      atomic_store(v1, &qword_10002A788);
    }
  }
}

void sub_10000B408()
{
  if (!qword_10002A798)
  {
    v0 = type metadata accessor for AccessibilityFocusState();
    if (!v1)
    {
      atomic_store(v0, &qword_10002A798);
    }
  }
}

void sub_10000B460(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10000B4AC(uint64_t a1)
{
  if (!qword_10002A7C8)
  {
    type metadata accessor for ConfirmationDialogLockObserver(255);
    v1 = type metadata accessor for State();
    if (!v2)
    {
      atomic_store(v1, &qword_10002A7C8);
    }
  }
}

void sub_10000B504(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_10000A298(a3, a4);
    v5 = type metadata accessor for State();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_10000B574()
{
  v1 = type metadata accessor for ConfirmationDialogView(0);
  if (*(v0 + v1[9] + 32) != 1)
  {
    v11 = v1[8];
    goto LABEL_8;
  }

  v2 = v1;
  v3 = *(v0 + v1[11]);
  v4 = String._bridgeToObjectiveC()();
  sub_100002E80(&unk_10002A4B0, &qword_100018138);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000186F0;
  *(v5 + 32) = [objc_opt_self() descriptorForRequiredKeys];
  sub_100002E80(&qword_10002A9E8, &qword_100018A38);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v7 = [v3 contactForIdentifier:v4 keysToFetch:isa];

  if (!v7)
  {
    v11 = v2[8];
LABEL_8:
    v12 = (v0 + v11);
    if (!v12[1])
    {
      return 0;
    }

    v10 = *v12;

    return v10;
  }

  v8 = [v7 displayName];
  if (!v8)
  {
    v8 = [v7 givenName];
  }

  v9 = v8;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v10;
}

id sub_10000B710()
{
  v1 = type metadata accessor for ConfirmationDialogView(0);
  v2 = (v0 + *(v1 + 28));
  v3 = *v2;
  v4 = v2[1];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v4)
  {
    if (v3 == v5 && v4 == v6)
    {

LABEL_13:
      v13 = String._bridgeToObjectiveC()();
      v14 = String._bridgeToObjectiveC()();
      v15 = DDUILocalizedString();

      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      return v16;
    }

    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  v9 = (v0 + *(v1 + 24));
  v10 = v9[1];
  if (!v10)
  {
    return 0;
  }

  v11 = *v9;
  sub_10000A084(0, &qword_10002A9F0, LSBundleRecord_ptr);

  result = sub_10000B8EC(v11, v10);
  if (result)
  {
    v17 = result;
    v18 = [result localizedName];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v19;
  }

  return result;
}

id sub_10000B8EC(uint64_t a1, uint64_t a2)
{
  v2 = String._bridgeToObjectiveC()();

  v7 = 0;
  v3 = [swift_getObjCClassFromMetadata() bundleRecordWithApplicationIdentifier:v2 error:&v7];

  if (v3)
  {
    v4 = v7;
  }

  else
  {
    v5 = v7;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v3;
}

uint64_t sub_10000B9C4()
{
  v1 = (v0 + *(type metadata accessor for ConfirmationDialogView(0) + 28));
  v2 = *v1;
  v3 = v1[1];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v3)
  {
    if (v2 == v4 && v3 == v5)
    {

LABEL_11:
      v18 = String._bridgeToObjectiveC()();
      v19 = String._bridgeToObjectiveC()();
      v20 = DDUILocalizedString();

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100002E80(&qword_10002A9D0, qword_100018A20);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_100018140;
      v22 = sub_10000B574();
      v24 = v23;
      *(v21 + 56) = &type metadata for String;
      *(v21 + 64) = sub_1000119B0();
      *(v21 + 32) = v22;
      *(v21 + 40) = v24;
      goto LABEL_12;
    }

    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  v8 = String._bridgeToObjectiveC()();
  v9 = String._bridgeToObjectiveC()();
  v10 = DDUILocalizedString();

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100002E80(&qword_10002A9D0, qword_100018A20);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100018150;
  v12 = sub_10000B574();
  v14 = v13;
  *(v11 + 56) = &type metadata for String;
  v15 = sub_1000119B0();
  *(v11 + 64) = v15;
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  v16 = sub_10000B710();
  *(v11 + 96) = &type metadata for String;
  *(v11 + 104) = v15;
  *(v11 + 72) = v16;
  *(v11 + 80) = v17;
LABEL_12:
  v25 = static String.localizedStringWithFormat(_:_:)();

  return v25;
}

uint64_t sub_10000BC3C()
{
  v1 = sub_100002E80(&qword_10002AA50, &qword_100018A88);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = type metadata accessor for ConfirmationDialogView(0);
  v13 = *(v0 + v4[13]);
  sub_100002E80(&qword_10002AA48, &qword_100018A80);
  State.wrappedValue.getter();
  if (v12)
  {
    v5 = Image.init(uiImage:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v0 + v4[9];
  if (*(v6 + 32) > 1u)
  {
    goto LABEL_9;
  }

  if (*(v6 + 32))
  {
    v13 = *(v0 + v4[12]);
    State.wrappedValue.getter();
    if (v12)
    {
      v10 = Image.init(uiImage:)();
      goto LABEL_14;
    }

LABEL_9:
    if (!v5)
    {
      return Image.init(systemName:)();
    }

    return v5;
  }

  sub_100004E9C(*v6, *(v6 + 8), *(v6 + 16), *(v6 + 24), 0);

  iosmacHardware.init(_:)();
  v7 = type metadata accessor for iosmacHardware();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v3, 1, v7) == 1)
  {
    sub_1000114EC(v3, &qword_10002AA50, &qword_100018A88);
    if (!v5)
    {
      return Image.init(systemName:)();
    }

    return v5;
  }

  v10 = iosmacHardware.image.getter();
  (*(v8 + 8))(v3, v7);
LABEL_14:

  return v10;
}

void sub_10000BE68(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Image.ResizingMode();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ConfirmationDialogView(0);
  v8 = (v1 + *(v7 + 28));
  v9 = *v8;
  v10 = v8[1];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v10)
  {
    if (v9 == v11 && v10 == v12)
    {

LABEL_12:
      Image.init(_internalSystemName:)();
      (*(v4 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v3);
      v16 = Image.resizable(capInsets:resizingMode:)();

      (*(v4 + 8))(v6, v3);
      v17 = static Color.blue.getter();
      KeyPath = swift_getKeyPath();
      v24 = v16;
      v25 = xmmword_100018700;
      v26 = KeyPath;
      v27 = v17;
      v28 = 0;
LABEL_16:
      sub_100002E80(&qword_10002AA70, &qword_100018AA8);
      sub_100002E80(&qword_10002AA78, &qword_100018AB0);
      sub_100011EE0();
      sub_100011F98();
      _ConditionalContent<>.init(storage:)();
      v21 = v30;
      v22 = v31;
      v23 = v32;
      *a1 = v29;
      *(a1 + 16) = v21;
      *(a1 + 32) = v22;
      *(a1 + 40) = v23;
      return;
    }

    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v14)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if (*(v1 + *(v7 + 24) + 8))
  {
    v15 = String._bridgeToObjectiveC()();
  }

  else
  {
    v15 = 0;
  }

  v19 = [objc_opt_self() _applicationIconImageForBundleIdentifier:v15 format:10];

  if (v19)
  {
    Image.init(uiImage:)();
    (*(v4 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v3);
    v20 = Image.resizable(capInsets:resizingMode:)();

    (*(v4 + 8))(v6, v3);
    v24 = v20;
    v25 = xmmword_100018700;
    v26 = 0;
    v27 = 0;
    v28 = 1;
    goto LABEL_16;
  }

  __break(1u);
}

uint64_t sub_10000C1B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100002E80(&qword_10002A9F8, &qword_100018A40);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - v5;
  v7 = static Alignment.center.getter();
  v25 = v8;
  v26 = v7;
  sub_10000BE68(v89);
  v9 = v90;
  v10 = v91;
  type metadata accessor for ConfirmationDialogView(0);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v93 = v10;
  *&v92[39] = v96;
  *&v92[23] = v95;
  *&v92[7] = v94;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v11 = static Alignment.center.getter();
  v13 = v12;
  sub_10000C6A0(v40);
  *&v41[0] = v11;
  *(&v41[0] + 1) = v13;
  v41[11] = v40[10];
  v41[12] = v40[11];
  v41[13] = v40[12];
  v41[14] = v40[13];
  v41[7] = v40[6];
  v41[8] = v40[7];
  v41[9] = v40[8];
  v41[10] = v40[9];
  v41[3] = v40[2];
  v41[4] = v40[3];
  v41[5] = v40[4];
  v41[6] = v40[5];
  v41[1] = v40[0];
  v41[2] = v40[1];
  v69 = v40[11];
  v70 = v40[12];
  v71 = v40[13];
  v65 = v40[7];
  v66 = v40[8];
  v68 = v40[10];
  v67 = v40[9];
  v61 = v40[3];
  v62 = v40[4];
  v64 = v40[6];
  v63 = v40[5];
  v57 = v41[0];
  v58 = v40[0];
  v60 = v40[2];
  v59 = v40[1];
  v53 = v40[10];
  v54 = v40[11];
  v55 = v40[12];
  v56 = v40[13];
  v49 = v40[6];
  v50 = v40[7];
  v51 = v40[8];
  v52 = v40[9];
  v45 = v40[2];
  v46 = v40[3];
  v47 = v40[4];
  v48 = v40[5];
  v42[0] = v11;
  v42[1] = v13;
  v43 = v40[0];
  v44 = v40[1];
  sub_100011484(v41, v75, &qword_10002AA00, &qword_100018A48);
  sub_1000114EC(v42, &qword_10002AA00, &qword_100018A48);
  v40[1] = v89[0];
  v40[2] = v89[1];
  *(&v40[3] + 9) = *v92;
  *(&v40[4] + 9) = *&v92[16];
  *(&v40[5] + 9) = *&v92[32];
  v40[7] = v72;
  v40[8] = v73;
  v40[21] = v68;
  v40[22] = v69;
  v40[23] = v70;
  v40[24] = v71;
  v40[17] = v64;
  v40[18] = v65;
  v40[19] = v66;
  v40[20] = v67;
  v40[13] = v60;
  v40[14] = v61;
  v40[15] = v62;
  v40[16] = v63;
  v40[9] = v74;
  v40[10] = v57;
  *&v40[0] = v26;
  *(&v40[0] + 1) = v25;
  *&v40[3] = v9;
  BYTE8(v40[3]) = v10;
  *(&v40[6] + 1) = *&v92[47];
  v40[11] = v58;
  v40[12] = v59;
  sub_100002E80(&qword_10002AA08, &qword_100018A50);
  sub_100011A04();
  View.accessibilityHidden(_:)();
  memcpy(v75, v40, sizeof(v75));
  sub_1000114EC(v75, &qword_10002AA08, &qword_100018A50);
  v14 = static Alignment.bottomTrailing.getter();
  v16 = v15;
  sub_10000CACC(v2, &v28);
  v84 = v36;
  v85 = v37;
  v86 = v38;
  v87 = v39;
  v80 = v32;
  v81 = v33;
  v82 = v34;
  v83 = v35;
  v76 = v28;
  v77 = v29;
  v78 = v30;
  v79 = v31;
  *&v88 = v14;
  *(&v88 + 1) = v16;
  sub_1000109C0(v6, a1, &qword_10002A9F8, &qword_100018A40);
  v17 = (a1 + *(sub_100002E80(&qword_10002A928, &qword_100018918) + 36));
  v18 = v87;
  v17[10] = v86;
  v17[11] = v18;
  v17[12] = v88;
  v19 = v83;
  v17[6] = v82;
  v17[7] = v19;
  v20 = v85;
  v17[8] = v84;
  v17[9] = v20;
  v21 = v79;
  v17[2] = v78;
  v17[3] = v21;
  v22 = v81;
  v17[4] = v80;
  v17[5] = v22;
  v23 = v77;
  *v17 = v76;
  v17[1] = v23;
  v40[8] = v36;
  v40[9] = v37;
  v40[10] = v38;
  v40[11] = v39;
  v40[4] = v32;
  v40[5] = v33;
  v40[6] = v34;
  v40[7] = v35;
  v40[0] = v28;
  v40[1] = v29;
  v40[2] = v30;
  v40[3] = v31;
  *&v40[12] = v14;
  *(&v40[12] + 1) = v16;
  sub_100011484(&v76, &v27, &qword_10002AA40, &qword_100018A68);
  return sub_1000114EC(v40, &qword_10002AA40, &qword_100018A68);
}

double sub_10000C6A0@<D0>(uint64_t a2@<X8>)
{
  v3 = static Alignment.bottomTrailing.getter();
  v5 = v4;
  sub_10000C82C(&v14);
  v30 = v20;
  v31 = v21;
  v32 = v22;
  v33 = v23;
  v26 = v16;
  v27 = v17;
  v28 = v18;
  v29 = v19;
  v24 = v14;
  v25 = v15;
  v34[6] = v20;
  v34[7] = v21;
  v34[8] = v22;
  v34[9] = v23;
  v34[2] = v16;
  v34[3] = v17;
  v34[4] = v18;
  v34[5] = v19;
  v34[0] = v14;
  v34[1] = v15;
  sub_100011484(&v24, &v13, &qword_10002AA58, &qword_100018A90);
  sub_1000114EC(v34, &qword_10002AA58, &qword_100018A90);
  v41 = v30;
  v42 = v31;
  v43 = v32;
  v44 = v33;
  v37 = v26;
  v38 = v27;
  v39 = v28;
  v40 = v29;
  v35 = v24;
  v36 = v25;
  type metadata accessor for ConfirmationDialogView(0);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a2 = v3;
  *(a2 + 8) = v5;
  v6 = v42;
  *(a2 + 112) = v41;
  *(a2 + 128) = v6;
  v7 = v44;
  *(a2 + 144) = v43;
  *(a2 + 160) = v7;
  v8 = v38;
  *(a2 + 48) = v37;
  *(a2 + 64) = v8;
  v9 = v40;
  *(a2 + 80) = v39;
  *(a2 + 96) = v9;
  v10 = v36;
  *(a2 + 16) = v35;
  *(a2 + 32) = v10;
  v11 = v15;
  *(a2 + 176) = v14;
  *(a2 + 192) = v11;
  result = *&v16;
  *(a2 + 208) = v16;
  return result;
}

uint64_t sub_10000C82C@<X0>(_OWORD *a2@<X8>)
{
  v3 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  v5 = static Color.black.getter();
  v15 = static Edge.Set.all.getter();
  type metadata accessor for ConfirmationDialogView(0);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *(v39 + 7) = *&v39[7];
  *(&v39[2] + 7) = *&v39[9];
  *(&v39[4] + 7) = v40;
  v6 = static Color.black.getter();
  v7 = swift_getKeyPath();
  v8 = static Color.white.getter();
  v9 = static Edge.Set.all.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v38[7] = v41;
  *&v38[23] = v42;
  *&v38[39] = v43;
  *&v24 = KeyPath;
  *(&v24 + 1) = v3;
  *v25 = v5;
  v25[8] = v15;
  *&v25[9] = *v39;
  *&v25[25] = *&v39[2];
  *&v25[41] = *&v39[4];
  *&v25[56] = *(&v40 + 1);
  *&v26 = v7;
  v16 = *&v25[16];
  v17 = *&v25[32];
  *(&v26 + 1) = v6;
  *v27 = v8;
  v27[8] = v9;
  *&v27[56] = *(&v43 + 1);
  *&v27[41] = *&v38[32];
  v11 = *&v38[16];
  v10 = *&v38[32];
  *&v27[25] = *&v38[16];
  v12 = *v38;
  *&v27[9] = *v38;
  v18 = *&v25[48];
  v19 = v26;
  v22 = *&v27[32];
  v23 = *&v27[48];
  v20 = *v27;
  v21 = *&v27[16];
  v13 = *v25;
  *a2 = v24;
  a2[1] = v13;
  a2[4] = v18;
  a2[5] = v19;
  a2[2] = v16;
  a2[3] = v17;
  a2[8] = v22;
  a2[9] = v23;
  a2[6] = v20;
  a2[7] = v21;
  v28[0] = v7;
  v28[1] = v6;
  v28[2] = v8;
  v29 = v9;
  v30 = v12;
  v31 = v11;
  *v32 = v10;
  *&v32[15] = *&v38[47];
  sub_100011484(&v24, v33, &qword_10002AA60, &qword_100018A98);
  sub_100011484(&v26, v33, &qword_10002AA68, &qword_100018AA0);
  sub_1000114EC(v28, &qword_10002AA68, &qword_100018AA0);
  v33[0] = KeyPath;
  v33[1] = v3;
  v33[2] = v5;
  v34 = v15;
  v35 = *v39;
  v36 = *&v39[2];
  *v37 = *&v39[4];
  *&v37[15] = *(&v39[5] + 7);
  return sub_1000114EC(v33, &qword_10002AA60, &qword_100018A98);
}

double sub_10000CACC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ConfirmationDialogView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = type metadata accessor for Image.ResizingMode();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000BC3C();
  (*(v8 + 104))(v10, enum case for Image.ResizingMode.stretch(_:), v7);
  v29 = Image.resizable(capInsets:resizingMode:)();

  (*(v8 + 8))(v10, v7);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v31 = 1;
  *&v30[6] = v33;
  *&v30[22] = v34;
  *&v30[38] = v35;
  v11 = static Alignment.center.getter();
  v13 = v12;
  v14 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  LOBYTE(v8) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v32 = 0;
  sub_10000A11C(a1, &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v25 = swift_allocObject();
  sub_10001065C(&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);
  v26 = *&v30[16];
  *(a2 + 18) = *v30;
  *a2 = v29;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 34) = v26;
  result = *&v30[32];
  *(a2 + 50) = *&v30[32];
  *(a2 + 64) = *&v30[46];
  *(a2 + 72) = 256;
  *(a2 + 80) = KeyPath;
  *(a2 + 88) = v14;
  *(a2 + 96) = v11;
  *(a2 + 104) = v13;
  *(a2 + 112) = v8;
  *(a2 + 120) = v17;
  *(a2 + 128) = v19;
  *(a2 + 136) = v21;
  *(a2 + 144) = v23;
  *(a2 + 152) = 0;
  *(a2 + 160) = sub_100011B74;
  *(a2 + 168) = v25;
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  return result;
}

uint64_t sub_10000CDD4(uint64_t a1)
{
  v2 = type metadata accessor for ConfirmationDialogView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002E80(&unk_10002A8C0, &unk_100018898);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_10000A11C(a1, v5);
  type metadata accessor for MainActor();
  v10 = static MainActor.shared.getter();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = &protocol witness table for MainActor;
  sub_10001065C(v5, v12 + v11);
  sub_10000D718(0, 0, v8, &unk_100018A78, v12);
}

uint64_t sub_10000CF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  type metadata accessor for MainActor();
  v4[9] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[10] = v6;
  v4[11] = v5;

  return _swift_task_switch(sub_10000D024, v6, v5);
}

uint64_t sub_10000D024()
{
  v1 = v0[8];
  v2 = type metadata accessor for ConfirmationDialogView(0);
  v0[12] = v2;
  v3 = (v1 + *(v2 + 36));
  if (*(v3 + 32) == 1)
  {
    v5 = *v3;
    v4 = v3[1];
    v9 = (&async function pointer to dispatch thunk of SFUIContactIconProvider.icon(for:) + async function pointer to dispatch thunk of SFUIContactIconProvider.icon(for:));
    v6 = swift_task_alloc();
    v0[13] = v6;
    *v6 = v0;
    v6[1] = sub_10000D188;

    return v9(v5, v4);
  }

  else
  {
    v10 = (&async function pointer to dispatch thunk of SFUIContactIconProvider.contactIconFallBack() + async function pointer to dispatch thunk of SFUIContactIconProvider.contactIconFallBack());
    v8 = swift_task_alloc();
    v0[15] = v8;
    *v8 = v0;
    v8[1] = sub_10000D3AC;

    return v10();
  }
}

uint64_t sub_10000D188(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_10000D584;
  }

  else
  {
    v4[14] = a1;
    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_10000D2B4;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_10000D2B4()
{
  v1 = *(v0 + 112);
  *(v0 + 32) = *(*(v0 + 64) + *(*(v0 + 96) + 48));
  *(v0 + 56) = v1;
  sub_100002E80(&qword_10002AA48, &qword_100018A80);
  State.wrappedValue.setter();
  v4 = (&async function pointer to dispatch thunk of SFUIContactIconProvider.contactIconFallBack() + async function pointer to dispatch thunk of SFUIContactIconProvider.contactIconFallBack());
  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  *v2 = v0;
  v2[1] = sub_10000D3AC;

  return v4();
}

uint64_t sub_10000D3AC(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_10000D678;
  }

  else
  {
    v4[16] = a1;
    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_10000D4D8;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_10000D4D8()
{
  v1 = *(v0 + 128);

  *(v0 + 16) = *(*(v0 + 64) + *(*(v0 + 96) + 52));
  *(v0 + 48) = v1;
  sub_100002E80(&qword_10002AA48, &qword_100018A80);
  State.wrappedValue.setter();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10000D584()
{
  *(v0 + 32) = *(*(v0 + 64) + *(*(v0 + 96) + 48));
  *(v0 + 56) = 0;
  sub_100002E80(&qword_10002AA48, &qword_100018A80);
  State.wrappedValue.setter();
  v3 = (&async function pointer to dispatch thunk of SFUIContactIconProvider.contactIconFallBack() + async function pointer to dispatch thunk of SFUIContactIconProvider.contactIconFallBack());
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_10000D3AC;

  return v3();
}

uint64_t sub_10000D678()
{

  *(v0 + 16) = *(*(v0 + 64) + *(*(v0 + 96) + 52));
  *(v0 + 48) = 0;
  sub_100002E80(&qword_10002AA48, &qword_100018A80);
  State.wrappedValue.setter();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000D718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002E80(&unk_10002A8C0, &unk_100018898);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100011484(a3, v25 - v10, &unk_10002A8C0, &unk_100018898);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000114EC(v11, &unk_10002A8C0, &unk_100018898);
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

      sub_1000114EC(a3, &unk_10002A8C0, &unk_100018898);

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

  sub_1000114EC(a3, &unk_10002A8C0, &unk_100018898);
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

uint64_t sub_10000DA18@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v69 = a1;
  v3 = type metadata accessor for ConfirmationDialogView(0);
  v4 = v3 - 8;
  v65 = *(v3 - 8);
  __chkstk_darwin(v3);
  v66 = v5;
  v67 = v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_100002E80(&qword_10002A838, &qword_100018848);
  v6 = __chkstk_darwin(v64);
  v56 = v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v54[0] = v54 - v8;
  v9 = type metadata accessor for DynamicTypeSize();
  v70 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v71 = v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = v54 - v12;
  v63 = sub_100002E80(&qword_10002A840, &qword_100018850);
  __chkstk_darwin(v63);
  v62 = v54 - v14;
  v15 = sub_100002E80(&qword_10002A848, &qword_100018858);
  __chkstk_darwin(v15 - 8);
  v17 = v54 - v16;
  v18 = sub_100002E80(&qword_10002A850, &qword_100018860);
  __chkstk_darwin(v18);
  v20 = v54 - v19;
  v61 = sub_100002E80(&qword_10002A858, &qword_100018868);
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v58 = v54 - v21;
  v57 = sub_100002E80(&qword_10002A860, &qword_100018870);
  __chkstk_darwin(v57);
  v60 = v54 - v22;
  *v17 = static HorizontalAlignment.leading.getter();
  *(v17 + 1) = 0x402E000000000000;
  v17[16] = 0;
  v23 = sub_100002E80(&qword_10002A868, &qword_100018878);
  sub_10000E20C(v2, &v17[*(v23 + 44)]);
  v24 = *(v4 + 48);
  v68 = v2;
  v25 = *(v2 + v24);
  if (*(v2 + v24))
  {
    v26 = 0x4038000000000000;
  }

  else
  {
    v26 = 0x4030000000000000;
  }

  if (*(v2 + v24))
  {
    v27 = 0x4039000000000000;
  }

  else
  {
    v27 = 0x4030000000000000;
  }

  if (*(v2 + v24))
  {
    v28 = 0x4036000000000000;
  }

  else
  {
    v28 = 0x4030000000000000;
  }

  v29 = static Edge.Set.all.getter();
  sub_1000109C0(v17, v20, &qword_10002A848, &qword_100018858);
  v54[1] = v18;
  v55 = v20;
  v30 = &v20[*(v18 + 36)];
  *v30 = v29;
  *(v30 + 1) = v26;
  *(v30 + 2) = v27;
  *(v30 + 3) = v28;
  *(v30 + 4) = v27;
  v31 = v13;
  v30[40] = 0;
  v32 = v70;
  v33 = *(v70 + 104);
  v33(v31, enum case for DynamicTypeSize.xSmall(_:), v9);
  if (v25)
  {
    v34 = v71;
    v33(v71, enum case for DynamicTypeSize.accessibility5(_:), v9);
    sub_10000AF04(&qword_10002A870, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
    if (dispatch thunk of static Comparable.<= infix(_:_:)())
    {
LABEL_14:
      v36 = *(v32 + 32);
      v37 = v54[0];
      v36(v54[0], v31, v9);
      v38 = v56;
      v39 = v64;
      v36(v37 + *(v64 + 48), v34, v9);
      sub_100011484(v37, v38, &qword_10002A838, &qword_100018848);
      v40 = *(v39 + 48);
      v41 = v62;
      v36(v62, v38, v9);
      v42 = *(v32 + 8);
      v42(v38 + v40, v9);
      sub_1000109C0(v37, v38, &qword_10002A838, &qword_100018848);
      v36(v41 + *(v63 + 36), (v38 + *(v39 + 48)), v9);
      v42(v38, v9);
      sub_1000105A0();
      sub_10001230C(&qword_10002A888, &qword_10002A840, &qword_100018850, &protocol conformance descriptor for ClosedRange<A>);
      v43 = v58;
      v44 = v55;
      View.dynamicTypeSize<A>(_:)();
      sub_1000114EC(v41, &qword_10002A840, &qword_100018850);
      sub_1000114EC(v44, &qword_10002A850, &qword_100018860);
      v46 = v67;
      v45 = v68;
      sub_10000A11C(v68, v67);
      v47 = (*(v65 + 80) + 16) & ~*(v65 + 80);
      v48 = swift_allocObject();
      sub_10001065C(v46, v48 + v47);
      v49 = v60;
      (*(v59 + 32))(v60, v43, v61);
      v50 = (v49 + *(v57 + 36));
      *v50 = sub_1000106C0;
      v50[1] = v48;
      v50[2] = 0;
      v50[3] = 0;
      sub_10000A11C(v45, v46);
      v51 = swift_allocObject();
      sub_10001065C(v46, v51 + v47);
      v52 = v69;
      sub_1000109C0(v49, v69, &qword_10002A860, &qword_100018870);
      result = sub_100002E80(&qword_10002A890, &qword_100018880);
      v53 = (v52 + *(result + 36));
      *v53 = 0;
      v53[1] = 0;
      v53[2] = sub_100010934;
      v53[3] = v51;
      return result;
    }

    __break(1u);
  }

  v34 = v71;
  v33(v71, enum case for DynamicTypeSize.large(_:), v9);
  sub_10000AF04(&qword_10002A870, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_10000E20C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = sub_100002E80(&qword_10002A8F0, &qword_1000188E0);
  v4 = __chkstk_darwin(v3 - 8);
  v49 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v40 - v6;
  *v7 = static VerticalAlignment.top.getter();
  *(v7 + 1) = 0x4034000000000000;
  v7[16] = 0;
  v8 = sub_100002E80(&qword_10002A8F8, &qword_1000188E8);
  sub_10000E5CC(a1, &v7[*(v8 + 44)]);
  v9 = (a1 + *(type metadata accessor for ConfirmationDialogView(0) + 60));
  v11 = *v9;
  v10 = v9[1];
  *&v58 = v11;
  *(&v58 + 1) = v10;
  sub_100002E80(&qword_10002A900, &qword_1000188F0);
  State.wrappedValue.getter();
  v12 = v51;
  swift_getKeyPath();
  *&v58 = v12;
  sub_10000AF04(&qword_10002A700, type metadata accessor for ConfirmationDialogLockObserver, &unk_100018758);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = *(v12 + 16);

  v50 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  if ((v13 & 1) == 0)
  {
    v50 = static VerticalAlignment.center.getter();
    v71 = 0;
    sub_10000F368(a1, &v66);
    v53 = v68;
    v54 = v69;
    v55 = v70;
    v51 = v66;
    v52 = v67;
    v60 = v68;
    v61 = v69;
    v62 = v70;
    v58 = v66;
    v59 = v67;
    sub_100011484(&v51, &v65, &qword_10002A908, &qword_1000188F8);
    sub_1000114EC(&v58, &qword_10002A908, &qword_1000188F8);
    v16 = *(&v51 + 1);
    v15 = v51;
    v18 = *(&v52 + 1);
    v17 = v52;
    v20 = *(&v53 + 1);
    v19 = v53;
    v22 = *(&v54 + 1);
    v21 = v54;
    v24 = *(&v55 + 1);
    v23 = v55;
    v14 = 0x4024000000000000;
    v25 = v71;
  }

  v41 = v16;
  v42 = v24;
  *&v48 = v22;
  *(&v48 + 1) = v23;
  v26 = v7;
  v27 = v49;
  v45 = v20;
  v46 = v7;
  v28 = v17;
  v43 = v25;
  v44 = v17;
  v29 = v19;
  v30 = v25;
  sub_100011484(v26, v49, &qword_10002A8F0, &qword_1000188E0);
  v31 = v27;
  v32 = v47;
  sub_100011484(v31, v47, &qword_10002A8F0, &qword_1000188E0);
  v33 = v32 + *(sub_100002E80(&qword_10002A910, &qword_100018900) + 48);
  *&v51 = v50;
  *(&v51 + 1) = v14;
  *&v52 = v30;
  *(&v52 + 1) = v15;
  v35 = v41;
  v34 = v42;
  *&v53 = v41;
  *(&v53 + 1) = v28;
  *&v54 = v18;
  *(&v54 + 1) = v29;
  *&v55 = v20;
  *(&v55 + 1) = v21;
  v56 = v48;
  v57 = v42;
  *(v33 + 96) = v42;
  v36 = v52;
  *v33 = v51;
  *(v33 + 16) = v36;
  v37 = v54;
  *(v33 + 32) = v53;
  *(v33 + 48) = v37;
  v38 = v56;
  *(v33 + 64) = v55;
  *(v33 + 80) = v38;
  sub_100011484(&v51, &v58, &qword_10002A918, &qword_100018908);
  sub_1000114EC(v46, &qword_10002A8F0, &qword_1000188E0);
  *&v58 = v50;
  *(&v58 + 1) = v14;
  *&v59 = v43;
  *(&v59 + 1) = v15;
  *&v60 = v35;
  *(&v60 + 1) = v44;
  *&v61 = v18;
  *(&v61 + 1) = v29;
  *&v62 = v45;
  *(&v62 + 1) = v21;
  v63 = v48;
  v64 = v34;
  sub_1000114EC(&v58, &qword_10002A918, &qword_100018908);
  return sub_1000114EC(v49, &qword_10002A8F0, &qword_1000188E0);
}

uint64_t sub_10000E5CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v30 = a2;
  v2 = sub_100002E80(&qword_10002A920, &qword_100018910);
  v3 = __chkstk_darwin(v2 - 8);
  v29 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v27 - v5;
  v7 = sub_100002E80(&qword_10002A928, &qword_100018918);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v27 - v11;
  v13 = sub_100002E80(&qword_10002A930, &qword_100018920);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v27 - v17;
  *v18 = static HorizontalAlignment.center.getter();
  *(v18 + 1) = 0;
  v18[16] = 1;
  v19 = &v18[*(sub_100002E80(&qword_10002A938, &qword_100018928) + 44)];
  sub_10000C1B4(v12);
  sub_100011484(v12, v10, &qword_10002A928, &qword_100018918);
  *v19 = 0;
  v19[8] = 1;
  v20 = sub_100002E80(&qword_10002A940, &qword_100018930);
  sub_100011484(v10, &v19[*(v20 + 48)], &qword_10002A928, &qword_100018918);
  v21 = &v19[*(v20 + 64)];
  *v21 = 0;
  v21[8] = 1;
  sub_1000114EC(v12, &qword_10002A928, &qword_100018918);
  sub_1000114EC(v10, &qword_10002A928, &qword_100018918);
  *v6 = static HorizontalAlignment.center.getter();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v22 = sub_100002E80(&qword_10002A948, &qword_100018938);
  sub_10000E92C(v28, &v6[*(v22 + 44)]);
  sub_100011484(v18, v16, &qword_10002A930, &qword_100018920);
  v23 = v29;
  sub_100011484(v6, v29, &qword_10002A920, &qword_100018910);
  v24 = v30;
  sub_100011484(v16, v30, &qword_10002A930, &qword_100018920);
  v25 = sub_100002E80(&qword_10002A950, &qword_100018940);
  sub_100011484(v23, v24 + *(v25 + 48), &qword_10002A920, &qword_100018910);
  sub_1000114EC(v6, &qword_10002A920, &qword_100018910);
  sub_1000114EC(v18, &qword_10002A930, &qword_100018920);
  sub_1000114EC(v23, &qword_10002A920, &qword_100018910);
  return sub_1000114EC(v16, &qword_10002A930, &qword_100018920);
}

uint64_t sub_10000E92C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v102 = a1;
  v106 = a2;
  v2 = sub_100002E80(&qword_10002A958, &qword_100018948);
  __chkstk_darwin(v2 - 8);
  v99 = &v91 - v3;
  v4 = type metadata accessor for Font.Leading();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_100002E80(&qword_10002A960, &qword_100018950) - 8;
  __chkstk_darwin(v101);
  v100 = &v91 - v8;
  v104 = sub_100002E80(&qword_10002A968, &qword_100018958) - 8;
  __chkstk_darwin(v104);
  v103 = &v91 - v9;
  v109 = sub_100002E80(&qword_10002A970, &qword_100018960);
  __chkstk_darwin(v109);
  v108 = &v91 - v10;
  v107 = sub_100002E80(&qword_10002A978, &qword_100018968);
  v105 = *(v107 - 8);
  v11 = __chkstk_darwin(v107);
  v111 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v112 = &v91 - v13;
  v133 = sub_10000B710();
  v134 = v14;
  v110 = sub_10001154C();
  v15 = Text.init<A>(_:)();
  v17 = v16;
  v19 = v18;
  static Font.headline.getter();
  v20 = *(v5 + 104);
  v94 = enum case for Font.Leading.tight(_:);
  v95 = v5 + 104;
  v93 = v20;
  v20(v7);
  Font.leading(_:)();

  v21 = *(v5 + 8);
  v96 = v7;
  v97 = v5 + 8;
  v98 = v4;
  v92 = v21;
  v21(v7, v4);
  v22 = Text.font(_:)();
  v24 = v23;
  LOBYTE(v7) = v25;

  sub_1000115A0(v15, v17, v19 & 1);

  static Color.primary.getter();
  v26 = Text.foregroundColor(_:)();
  v28 = v27;
  v30 = v29;
  v32 = v31;

  sub_1000115A0(v22, v24, v7 & 1);

  v33 = v100;
  v34 = &v100[*(v101 + 44)];
  v35 = *(sub_100002E80(&qword_10002A988, &qword_100018970) + 28);
  v36 = enum case for Text.TruncationMode.tail(_:);
  v37 = type metadata accessor for Text.TruncationMode();
  (*(*(v37 - 8) + 104))(v34 + v35, v36, v37);
  *v34 = swift_getKeyPath();
  *v33 = v26;
  *(v33 + 8) = v28;
  *(v33 + 16) = v30 & 1;
  *(v33 + 24) = v32;
  *(v33 + 32) = 256;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v38 = v103;
  sub_1000109C0(v33, v103, &qword_10002A960, &qword_100018950);
  v39 = (v38 + *(v104 + 44));
  v40 = v157[5];
  v39[4] = v157[4];
  v39[5] = v40;
  v39[6] = v157[6];
  v41 = v157[1];
  *v39 = v157[0];
  v39[1] = v41;
  v42 = v157[3];
  v39[2] = v157[2];
  v39[3] = v42;
  LOBYTE(v32) = static Edge.Set.top.getter();
  LODWORD(v28) = *(v102 + *(type metadata accessor for ConfirmationDialogView(0) + 40));
  EdgeInsets.init(_all:)();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v51 = v108;
  sub_1000109C0(v38, v108, &qword_10002A968, &qword_100018958);
  v52 = v51 + *(v109 + 36);
  *v52 = v32;
  *(v52 + 8) = v44;
  *(v52 + 16) = v46;
  *(v52 + 24) = v48;
  *(v52 + 32) = v50;
  *(v52 + 40) = 0;
  sub_100002E80(&qword_10002A718, &unk_1000187D0);
  AccessibilityFocusState.projectedValue.getter();
  sub_1000116A0();
  View.accessibilityFocused(_:)();

  sub_1000114EC(v51, &qword_10002A970, &qword_100018960);
  v133 = sub_10000B9C4();
  v134 = v53;
  v54 = Text.init<A>(_:)();
  v56 = v55;
  v58 = v57;
  LODWORD(v104) = v28;
  if (v28 == 1)
  {
    sub_100002E80(&qword_10002A710, &qword_1000187C8);
    ScaledMetric.wrappedValue.getter();
    v59 = type metadata accessor for Font.Design();
    v60 = v99;
    (*(*(v59 - 8) + 56))(v99, 1, 1, v59);
    static Font.system(size:weight:design:)();
    sub_1000114EC(v60, &qword_10002A958, &qword_100018948);
    v103 = 0;
  }

  else
  {
    static Font.subheadline.getter();
    v61 = v96;
    v62 = v98;
    v93(v96, v94, v98);
    Font.leading(_:)();

    v92(v61, v62);
    v103 = 3;
  }

  v102 = Text.font(_:)();
  v108 = v63;
  v109 = v64;
  v66 = v65;

  sub_1000115A0(v54, v56, v58 & 1);

  KeyPath = swift_getKeyPath();
  v101 = KeyPath;
  v110 = static Color.primary.getter();
  v100 = swift_getKeyPath();
  v66 &= 1u;
  v156 = v66;
  v68 = v104;
  v154 = v104;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v69 = v105;
  v70 = *(v105 + 16);
  v71 = v111;
  v72 = v107;
  v70(v111, v112, v107);
  v73 = v106;
  v70(v106, v71, v72);
  v74 = &v73[*(sub_100002E80(&qword_10002A9C0, &qword_100018A10) + 48)];
  v76 = v102;
  v75 = v103;
  *&v120 = v102;
  *(&v120 + 1) = v108;
  LOBYTE(v121) = v66;
  *(&v121 + 1) = *v155;
  DWORD1(v121) = *&v155[3];
  *(&v121 + 1) = v109;
  *&v122 = KeyPath;
  *(&v122 + 1) = v103;
  LOBYTE(v123) = v68;
  *(&v123 + 1) = *v153;
  DWORD1(v123) = *&v153[3];
  v77 = v100;
  *(&v123 + 1) = v100;
  *&v124 = v110;
  *(&v124 + 1) = 0x3FE0000000000000;
  v79 = v113;
  v78 = v114;
  v125 = v113;
  v126 = v114;
  v81 = v118;
  v80 = v119;
  v130 = v118;
  v131 = v119;
  v83 = v116;
  v82 = v117;
  v128 = v116;
  v129 = v117;
  v84 = v115;
  v127 = v115;
  v132 = 256;
  *(v74 + 96) = 256;
  *(v74 + 10) = v81;
  *(v74 + 11) = v80;
  *(v74 + 6) = v78;
  *(v74 + 7) = v84;
  *(v74 + 8) = v83;
  *(v74 + 9) = v82;
  v85 = v120;
  v86 = v121;
  v87 = v122;
  v88 = v123;
  *(v74 + 4) = v124;
  *(v74 + 5) = v79;
  *(v74 + 2) = v87;
  *(v74 + 3) = v88;
  *v74 = v85;
  *(v74 + 1) = v86;
  sub_100011484(&v120, &v133, &qword_10002A9C8, &qword_100018A18);
  v89 = *(v69 + 8);
  v89(v112, v72);
  v133 = v76;
  v134 = v108;
  v135 = v66;
  *v136 = *v155;
  *&v136[3] = *&v155[3];
  v137 = v109;
  v138 = v101;
  v139 = v75;
  v140 = v68;
  *v141 = *v153;
  *&v141[3] = *&v153[3];
  v142 = v77;
  v143 = v110;
  v144 = 0x3FE0000000000000;
  v145 = v113;
  v146 = v114;
  v150 = v118;
  v151 = v119;
  v148 = v116;
  v149 = v117;
  v147 = v115;
  v152 = 256;
  sub_1000114EC(&v133, &qword_10002A9C8, &qword_100018A18);
  return (v89)(v111, v72);
}

uint64_t sub_10000F368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ConfirmationDialogView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4 - 8);
  v8 = (a1 + *(v7 + 32));
  v10 = *v8;
  v9 = v8[1];
  v11 = *(a1 + *(v7 + 48));
  sub_10000A11C(a1, &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_10001065C(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  sub_10000A11C(a1, &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = swift_allocObject();
  sub_10001065C(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v12);
  *a2 = v10;
  *(a2 + 8) = v9;
  *(a2 + 16) = 1;
  *(a2 + 17) = v11;
  *(a2 + 24) = sub_100011410;
  *(a2 + 32) = v13;
  *(a2 + 40) = v10;
  *(a2 + 48) = v9;
  *(a2 + 56) = 0;
  *(a2 + 57) = v11;
  *(a2 + 64) = sub_10001147C;
  *(a2 + 72) = v14;
  return swift_bridgeObjectRetain_n();
}

void sub_10000F4F0(int a1)
{
  v3 = sub_100002E80(&unk_10002A8C0, &unk_100018898);
  __chkstk_darwin(v3 - 8);
  v5 = &v45 - v4;
  v6 = v1 + *(type metadata accessor for ConfirmationDialogView(0) + 24);
  v53._object = *(v6 + 8);
  if (v53._object)
  {
    v46 = v5;
    if (!UIApp)
    {
      goto LABEL_44;
    }

    v49 = a1;
    v53._countAndFlagsBits = *v6;
    v7 = [UIApp connectedScenes];
    v8 = sub_10000A084(0, &unk_10002A4C0, UIScene_ptr);
    sub_10000A0CC(&unk_10002A8D0, &unk_10002A4C0, UIScene_ptr);
    v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v48 = v9;
    v50 = v8;
    if ((v9 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      v10 = Set.Iterator.init(_cocoa:)();
      v9 = v56[1];
      v11 = v56[2];
      v12 = v56[3];
      v13 = v56[4];
      v14 = v56[5];
    }

    else
    {
      v15 = -1 << *(v9 + 32);
      v11 = (v9 + 56);
      v16 = ~v15;
      v17 = -v15;
      if (v17 < 64)
      {
        v18 = ~(-1 << v17);
      }

      else
      {
        v18 = -1;
      }

      v14 = (v18 & *(v9 + 56));

      v12 = v16;
      v13 = 0;
    }

    v47 = v12;
    v19 = (v12 + 64) >> 6;
    v52 = 0x80000001000196A0;
    if (v9 < 0)
    {
      goto LABEL_16;
    }

LABEL_10:
    v20 = v13;
    v21 = v14;
    v22 = v13;
    if (v14)
    {
LABEL_14:
      v23 = (v21 - 1) & v21;
      v24 = *(*(v9 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v21)))));
      if (v24)
      {
        while (1)
        {
          v51 = v14;
          v26 = v9;
          v8 = v24;
          v27 = [v24 _sceneIdentifier];
          v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v30 = v29;

          v54 = 0;
          v55 = 0xE000000000000000;
          _StringGuts.grow(_:)(37);

          v54 = 0xD000000000000023;
          v55 = v52;
          String.append(_:)(v53);
          if (v28 == v54 && v30 == v55)
          {
            break;
          }

          v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v32)
          {
            goto LABEL_27;
          }

          v13 = v22;
          v14 = v23;
          v9 = v26;
          if ((v26 & 0x8000000000000000) == 0)
          {
            goto LABEL_10;
          }

LABEL_16:
          v25 = __CocoaSet.Iterator.next()();
          if (v25)
          {
            v56[0] = v25;
            swift_dynamicCast();
            v24 = v54;
            v22 = v13;
            v23 = v14;
            if (v54)
            {
              continue;
            }
          }

          goto LABEL_25;
        }

LABEL_27:
        v33 = 0;
        v9 = v26;
      }

      else
      {
LABEL_25:
        v8 = 0;
        v33 = 1;
      }

      sub_10000A07C(v9);

      v34 = objc_allocWithZone(type metadata accessor for DDUIConfirmationAction());
      v35 = DDUIConfirmationAction.init(result:)();
      v54 = &_swiftEmptySetSingleton;
      v14 = v35;
      sub_100014B5C(v56, v14);

      if (v33)
      {
      }

      else
      {
        v36 = [v8 _FBSScene];
        sub_10000A084(0, &qword_10002A4D0, BSAction_ptr);
        sub_10000A0CC(&qword_10002A4D8, &qword_10002A4D0, BSAction_ptr);
        isa = Set._bridgeToObjectiveC()().super.isa;

        [v36 sendActions:isa];
      }

      sub_100002E80(&unk_10002A500, &unk_1000184F0);
      v10 = static Activity.activities.getter();
      if (!(v10 >> 62))
      {
        if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_39:

          goto LABEL_40;
        }

        goto LABEL_33;
      }
    }

    else
    {
      while (1)
      {
        v22 = (v20 + 1);
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v22 >= v19)
        {
          goto LABEL_25;
        }

        v21 = v11[v22];
        ++v20;
        if (v21)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    v43 = v10;
    v44 = _CocoaArrayWrapper.endIndex.getter();
    v10 = v43;
    if (!v44)
    {
      goto LABEL_39;
    }

LABEL_33:
    if ((v10 & 0xC000000000000001) != 0)
    {
      v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_36;
    }

    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v38 = *(v10 + 32);

LABEL_36:

      v39 = type metadata accessor for TaskPriority();
      v40 = v46;
      (*(*(v39 - 8) + 56))(v46, 1, 1, v39);
      type metadata accessor for MainActor();

      v41 = static MainActor.shared.getter();
      v42 = swift_allocObject();
      v42[2] = v41;
      v42[3] = &protocol witness table for MainActor;
      v42[4] = v38;
      sub_10000D718(0, 0, v40, &unk_1000188B0, v42);

LABEL_40:

      return;
    }

    __break(1u);
LABEL_44:
    __break(1u);
  }
}

uint64_t sub_10000FAD0(uint64_t a1)
{
  v2 = type metadata accessor for ConfirmationDialogView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  LOBYTE(v18) = 1;
  sub_100002E80(&qword_10002A718, &unk_1000187D0);
  AccessibilityFocusState.wrappedValue.setter();
  v5 = (a1 + *(v2 + 28));
  v6 = *v5;
  v7 = v5[1];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v7)
  {
  }

  if (v6 == v8 && v7 == v9)
  {

    goto LABEL_10;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v11)
  {
LABEL_10:
    sub_10000A11C(a1, v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v14 = swift_allocObject();
    sub_10001065C(v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
    v15 = objc_allocWithZone(type metadata accessor for AXGuestPassAcceptGestureAssertion());
    v16 = AXGuestPassAcceptGestureAssertion.init(gestureFiredHandler:)();
    v18 = *(a1 + *(v2 + 64));
    v17[1] = v16;
    sub_100002E80(&qword_10002A898, &qword_100018888);
    return State.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_10000FCC8(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v5 = *(v16 - 8);
  __chkstk_darwin(v16);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ConfirmationDialogView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  sub_10000A084(0, &qword_10002A8A0, OS_dispatch_queue_ptr);
  v11 = static OS_dispatch_queue.main.getter();
  sub_10000A11C(a1, &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  sub_10001065C(&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  aBlock[4] = sub_100012604;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100010048;
  aBlock[3] = &unk_100025668;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10000AF04(&qword_10002A8A8, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100002E80(&qword_10002A8B0, &qword_100018890);
  sub_10001230C(&qword_10002A8B8, &qword_10002A8B0, &qword_100018890, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v17 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v16);
}

uint64_t sub_100010048(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_10001008C(uint64_t a1)
{
  type metadata accessor for ConfirmationDialogView(0);
  sub_100002E80(&qword_10002A898, &qword_100018888);
  State.wrappedValue.getter();
  if (v2)
  {
    dispatch thunk of AXGuestPassAcceptGestureAssertion.invalidate()();
  }

  return State.wrappedValue.setter();
}

uint64_t sub_100010120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for ActivityUIDismissalPolicy();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_100002E80(&unk_10002A8E0, &unk_1000188D0);
  v4[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[8] = v7;
  v4[9] = v6;

  return _swift_task_switch(sub_10001024C, v7, v6);
}

uint64_t sub_10001024C()
{
  v1 = v0[6];
  dispatch thunk of Activity.content.getter();
  v2 = sub_100002E80(&qword_10002A4F0, &qword_1000184E0);
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  static ActivityUIDismissalPolicy.immediate.getter();
  v7 = (&async function pointer to dispatch thunk of Activity.end(_:dismissalPolicy:) + async function pointer to dispatch thunk of Activity.end(_:dismissalPolicy:));
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_100010364;
  v4 = v0[5];
  v5 = v0[6];

  return v7(v5, v4);
}

uint64_t sub_100010364()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  v5 = *(*v0 + 24);

  (*(v4 + 8))(v3, v5);
  sub_1000114EC(v2, &unk_10002A8E0, &unk_1000188D0);
  v6 = *(v1 + 72);
  v7 = *(v1 + 64);

  return _swift_task_switch(sub_100010514, v7, v6);
}

uint64_t sub_100010514()
{

  UIAccessibilityPostNotification(UIAccessibilityScreenChangedNotification, 0);

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1000105A0()
{
  result = qword_10002A878;
  if (!qword_10002A878)
  {
    sub_10000A298(&qword_10002A850, &qword_100018860);
    sub_10001230C(&qword_10002A880, &qword_10002A848, &qword_100018858, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A878);
  }

  return result;
}

uint64_t sub_10001065C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfirmationDialogView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000106D8()
{
  v1 = type metadata accessor for ConfirmationDialogView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_100002E80(&qword_10002A710, &qword_1000187C8);
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v0 + v3 + v1[5];
  v8 = type metadata accessor for AccessibilityTechnologies();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v7, 1, v8))
  {
    (*(v9 + 8))(v7, v8);
  }

  sub_100002E80(&qword_10002A718, &unk_1000187D0);

  v10 = v5 + v1[9];
  v11 = *(v10 + 32);
  if (v11 != 255)
  {
    sub_100004F6C(*v10, *(v10 + 8), *(v10 + 16), *(v10 + 24), v11);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10001094C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ConfirmationDialogView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1000109C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002E80(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100010A40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100010A58@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v25 = type metadata accessor for AirDropUIButtonStyle.Style();
  v2 = *(v25 - 8);
  __chkstk_darwin(v25);
  v4 = &v23[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for AirDropUIButtonStyle();
  v26 = *(v5 - 8);
  v27 = v5;
  __chkstk_darwin(v5);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_100002E80(&qword_10002AAB0, &qword_100018B58);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23[-v10];
  v24 = *(v1 + 16);
  v12 = String._bridgeToObjectiveC()();
  v13 = String._bridgeToObjectiveC()();
  v14 = DDUILocalizedString();

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v30 = v15;
  v31 = v17;
  v32 = *v1;
  v18 = swift_allocObject();
  v19 = v1[1];
  *(v18 + 16) = *v1;
  *(v18 + 32) = v19;
  *(v18 + 48) = *(v1 + 4);
  sub_100011484(&v32, v29, &qword_10002AAB8, &unk_100018B60);
  sub_10001154C();

  Button<>.init<A>(_:action:)();
  if (*(v1 + 17))
  {
    if (v24)
    {
      v20 = &enum case for AirDropUIButtonStyle.Style.jindoDefault(_:);
    }

    else
    {
      v20 = &enum case for AirDropUIButtonStyle.Style.jindoAccept(_:);
    }

    (*(v2 + 104))(v4, *v20, v25);
  }

  else
  {
    (*(v2 + 104))(v4, enum case for AirDropUIButtonStyle.Style.nonJindo(_:), v25);
  }

  AirDropUIButtonStyle.init(style:)();
  sub_10001230C(&qword_10002AAC0, &qword_10002AAB0, &qword_100018B58, &protocol conformance descriptor for Button<A>);
  sub_10000AF04(&qword_10002AAC8, &type metadata accessor for AirDropUIButtonStyle, &protocol conformance descriptor for AirDropUIButtonStyle);
  v21 = v27;
  View.buttonStyle<A>(_:)();
  (*(v26 + 8))(v7, v21);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100010E90(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100010F88;

  return v6(a1);
}

uint64_t sub_100010F88()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100011080()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000110C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100011174;

  return sub_100010120(a1, v4, v5, v6);
}

uint64_t sub_100011174()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100011268()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000112A0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001260C;

  return sub_100010E90(a1, v4);
}

uint64_t sub_100011358(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100011174;

  return sub_100010E90(a1, v4);
}

uint64_t sub_100011484(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002E80(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000114EC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002E80(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_10001154C()
{
  result = qword_10002A980;
  if (!qword_10002A980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A980);
  }

  return result;
}

uint64_t sub_1000115A0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1000115D4(uint64_t a1)
{
  v2 = type metadata accessor for Text.TruncationMode();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.truncationMode.setter();
}

unint64_t sub_1000116A0()
{
  result = qword_10002A990;
  if (!qword_10002A990)
  {
    sub_10000A298(&qword_10002A970, &qword_100018960);
    sub_10001172C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A990);
  }

  return result;
}

unint64_t sub_10001172C()
{
  result = qword_10002A998;
  if (!qword_10002A998)
  {
    sub_10000A298(&qword_10002A968, &qword_100018958);
    sub_1000117B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A998);
  }

  return result;
}

unint64_t sub_1000117B8()
{
  result = qword_10002A9A0;
  if (!qword_10002A9A0)
  {
    sub_10000A298(&qword_10002A960, &qword_100018950);
    sub_100011870();
    sub_10001230C(&qword_10002A9B8, &qword_10002A988, &qword_100018970, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A9A0);
  }

  return result;
}

unint64_t sub_100011870()
{
  result = qword_10002A9A8;
  if (!qword_10002A9A8)
  {
    sub_10000A298(&qword_10002A9B0, &qword_1000189A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A9A8);
  }

  return result;
}

uint64_t sub_1000118F4@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100011958@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1000119B0()
{
  result = qword_10002A9D8;
  if (!qword_10002A9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A9D8);
  }

  return result;
}

unint64_t sub_100011A04()
{
  result = qword_10002AA10;
  if (!qword_10002AA10)
  {
    sub_10000A298(&qword_10002AA08, &qword_100018A50);
    sub_100011ABC();
    sub_10001230C(&qword_10002AA38, &qword_10002AA00, &qword_100018A48, &protocol conformance descriptor for _MaskAlignmentEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002AA10);
  }

  return result;
}

unint64_t sub_100011ABC()
{
  result = qword_10002AA18;
  if (!qword_10002AA18)
  {
    sub_10000A298(&qword_10002AA20, &qword_100018A58);
    sub_10001230C(&qword_10002AA28, &qword_10002AA30, &qword_100018A60, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002AA18);
  }

  return result;
}

uint64_t sub_100011B8C()
{
  v1 = type metadata accessor for ConfirmationDialogView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  v6 = sub_100002E80(&qword_10002A710, &qword_1000187C8);
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v0 + v3 + v1[5];
  v8 = type metadata accessor for AccessibilityTechnologies();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v7, 1, v8))
  {
    (*(v9 + 8))(v7, v8);
  }

  sub_100002E80(&qword_10002A718, &unk_1000187D0);

  v10 = v5 + v1[9];
  v11 = *(v10 + 32);
  if (v11 != 255)
  {
    sub_100004F6C(*v10, *(v10 + 8), *(v10 + 16), *(v10 + 24), v11);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100011DF0(uint64_t a1)
{
  v4 = *(type metadata accessor for ConfirmationDialogView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001260C;

  return sub_10000CF8C(a1, v6, v7, v1 + v5);
}

unint64_t sub_100011EE0()
{
  result = qword_10002AA80;
  if (!qword_10002AA80)
  {
    sub_10000A298(&qword_10002AA70, &qword_100018AA8);
    sub_100011F98();
    sub_10001230C(&qword_10002AA90, &qword_10002AA98, &qword_100018AB8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002AA80);
  }

  return result;
}

unint64_t sub_100011F98()
{
  result = qword_10002AA88;
  if (!qword_10002AA88)
  {
    sub_10000A298(&qword_10002AA78, &qword_100018AB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002AA88);
  }

  return result;
}

__n128 sub_10001201C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100012030(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100012078(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000120D4()
{
  result = qword_10002AAA0;
  if (!qword_10002AAA0)
  {
    sub_10000A298(&qword_10002A890, &qword_100018880);
    sub_100012160();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002AAA0);
  }

  return result;
}

unint64_t sub_100012160()
{
  result = qword_10002AAA8;
  if (!qword_10002AAA8)
  {
    sub_10000A298(&qword_10002A860, &qword_100018870);
    sub_10000A298(&qword_10002A850, &qword_100018860);
    sub_10000A298(&qword_10002A840, &qword_100018850);
    sub_1000105A0();
    sub_10001230C(&qword_10002A888, &qword_10002A840, &qword_100018850, &protocol conformance descriptor for ClosedRange<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002AAA8);
  }

  return result;
}

uint64_t sub_1000122A4()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001230C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10000A298(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConfirmationResult(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ConfirmationResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000124B0()
{
  sub_10000A298(&qword_10002AAB0, &qword_100018B58);
  type metadata accessor for AirDropUIButtonStyle();
  sub_10001230C(&qword_10002AAC0, &qword_10002AAB0, &qword_100018B58, &protocol conformance descriptor for Button<A>);
  sub_10000AF04(&qword_10002AAC8, &type metadata accessor for AirDropUIButtonStyle, &protocol conformance descriptor for AirDropUIButtonStyle);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100012594()
{
  result = qword_10002AAD0;
  if (!qword_10002AAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002AAD0);
  }

  return result;
}

uint64_t sub_100012630(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  sub_10000895C(v2, qword_10002AD40);
  sub_100008924(v2, qword_10002AD40);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100012708@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v61 = a2;
  v5 = sub_100002E80(&qword_10002AC00, &qword_100018C78);
  __chkstk_darwin(v5 - 8);
  v7 = &v53 - v6;
  v8 = type metadata accessor for DDDeviceAdvertiserViewConfiguration();
  v59 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v60 = &v53 - v12;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Creating device advertiser host view controller", v15, 2u);
  }

  v16 = [a1 _FBSScene];
  v17 = [v16 hostAuditToken];
  if (v17)
  {
    v18 = v17;
    sub_10000A084(0, &qword_10002A9F0, LSBundleRecord_ptr);
    [v18 realToken];
    v30 = sub_100013A78(v62[0], v62[1], v62[2], v62[3]);
    v31 = [v30 bundleIdentifier];
    if (v31)
    {
      v32 = v31;
      v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v33;

      v34 = a1;
      DDDeviceAdvertiserViewConfiguration.init(scene:)();
      v35 = v59;
      if ((*(v59 + 48))(v7, 1, v8) == 1)
      {

        sub_1000114EC(v7, &qword_10002AC00, &qword_100018C78);
        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          *v38 = 0;
          _os_log_impl(&_mh_execute_header, v36, v37, "Unable to create DDDeviceAdvertiserViewConfiguration", v38, 2u);
        }

        v39 = type metadata accessor for DDDeviceAdvertiserView();
        return (*(*(v39 - 8) + 56))(v61, 1, 1, v39);
      }

      else
      {
        v40 = v60;
        (*(v35 + 32))(v60, v7, v8);
        (*(v35 + 16))(v11, v40, v8);
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v55 = v43;
          v56 = swift_slowAlloc();
          v62[0] = v56;
          *v43 = 136315138;
          v54 = DDDeviceAdvertiserViewConfiguration.serviceIdentifier.getter();
          v45 = v44;
          v46 = *(v35 + 8);
          v46(v11, v8);
          v47 = v46;
          v48 = sub_1000145B4(v54, v45, v62);

          v49 = v55;
          *(v55 + 1) = v48;
          _os_log_impl(&_mh_execute_header, v41, v42, "Got service Identifier: %s from hostStorage", v49, 0xCu);
          sub_100002F30(v56);
        }

        else
        {

          v47 = *(v35 + 8);
          v47(v11, v8);
        }

        v50 = v60;
        DDDeviceAdvertiserViewConfiguration.serviceIdentifier.getter();
        v51 = v61;
        DDDeviceAdvertiserView.init(bundleID:serviceIdentifier:)();

        v47(v50, v8);
        v52 = type metadata accessor for DDDeviceAdvertiserView();
        return (*(*(v52 - 8) + 56))(v51, 0, 1, v52);
      }
    }

    [v3 devicePickerDidCancelWithReason:-2];
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Could not get bundleID", v21, 2u);
    }
  }

  else
  {
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Unable to get audit token", v24, 2u);
    }

    sub_10001576C(a1);
  }

  v25 = type metadata accessor for DDDeviceAdvertiserView();
  v26 = *(*(v25 - 8) + 56);
  v27 = v25;
  v28 = v61;

  return v26(v28, 1, 1, v27);
}

uint64_t sub_100012DDC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v59 = a2;
  v5 = type metadata accessor for DDDataReturnType();
  v54 = *(v5 - 8);
  v55 = v5;
  __chkstk_darwin(v5);
  v53 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SFAirDropClient.Identifier();
  v51 = *(v7 - 8);
  v52 = v7;
  __chkstk_darwin(v7);
  v9 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NWBrowser.Descriptor();
  __chkstk_darwin(v10 - 8);
  v56 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100002E80(&unk_10002ABF0, &qword_100018C68);
  __chkstk_darwin(v12 - 8);
  v14 = v50 - v13;
  v15 = type metadata accessor for DDDeviceDiscoveryViewConfiguration();
  v57 = *(v15 - 8);
  v58 = v15;
  __chkstk_darwin(v15);
  v17 = v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Creating device picker host view controller", v20, 2u);
  }

  v21 = [a1 _FBSScene];
  v22 = [v21 hostAuditToken];
  if (v22)
  {
    v23 = v22;
    sub_10000A084(0, &qword_10002A9F0, LSBundleRecord_ptr);
    [v23 realToken];
    v35 = sub_100013A78(v60, v61, v62, v63);
    v36 = [v35 bundleIdentifier];
    if (v36)
    {
      v37 = v36;
      v50[3] = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50[4] = v38;

      v39 = a1;
      DDDeviceDiscoveryViewConfiguration.init(scene:)();
      v41 = v57;
      v40 = v58;
      if ((*(v57 + 48))(v14, 1, v58) == 1)
      {

        sub_1000114EC(v14, &unk_10002ABF0, &qword_100018C68);
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          _os_log_impl(&_mh_execute_header, v42, v43, "Failed to create configuration", v44, 2u);
        }

        v45 = type metadata accessor for DDDeviceDiscoveryView();
        return (*(*(v45 - 8) + 56))(v59, 1, 1, v45);
      }

      else
      {
        (*(v41 + 32))(v17, v14, v40);
        DDDeviceDiscoveryViewConfiguration.browseDescriptor.getter();
        v50[2] = DDDeviceDiscoveryViewConfiguration.browseParameters.getter();
        v46 = DDDeviceDiscoveryViewConfiguration.publicKey.getter();
        v50[0] = v47;
        v50[1] = v46;
        swift_allocObject();
        swift_unknownObjectWeakInit();
        swift_allocObject();
        swift_unknownObjectWeakInit();
        swift_allocObject();
        swift_unknownObjectWeakInit();
        type metadata accessor for SFAirDropClient();
        (*(v51 + 104))(v9, enum case for SFAirDropClient.Identifier.DDUI(_:), v52);

        SFAirDropClient.__allocating_init(identifier:)();
        v48 = v59;
        DDDeviceDiscoveryView.init(airDropClient:bundleID:hostBundleID:previewImageLoader:browseDescriptor:browseParameters:publicKey:applicationServiceEndpointCallback:bonjourEndpointCallback:browserResultDataCallback:)();

        (*(v54 + 104))(v53, enum case for DDDataReturnType.browseResult(_:), v55);
        DDDeviceDiscoveryView.outputType.setter();

        (*(v41 + 8))(v17, v58);
        v49 = type metadata accessor for DDDeviceDiscoveryView();
        return (*(*(v49 - 8) + 56))(v48, 0, 1, v49);
      }
    }

    [v3 devicePickerDidCancelWithReason:-2];
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Could not get bundleID", v26, 2u);
    }
  }

  else
  {
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Unable to get audit token", v29, 2u);
    }

    sub_10001576C(a1);
  }

  v30 = type metadata accessor for DDDeviceDiscoveryView();
  v31 = *(*(v30 - 8) + 56);
  v32 = v30;
  v33 = v59;

  return v31(v33, 1, 1, v32);
}

void sub_1000135FC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a1)
    {
      v5 = *&Strong[OBJC_IVAR____TtC23NetworkEndpointPickerUI25DevicePickerSceneDelegate_window];
      if (v5)
      {
        swift_unknownObjectRetain();
        v6 = [v5 rootViewController];
        if (v6)
        {
          v7 = v6;
          v8 = [v6 _hostedWindowScene];

          if (v8)
          {
            v9 = [objc_opt_self() actionForDevicePickerCreatedEndpoint:a1];
            [v8 sendAction:v9];
          }
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "Endpoint is nil", v12, 2u);
      }
    }
  }
}

void sub_100013788(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Attempting to succeed with bonjour endpoint", v7, 2u);
    }

    v8 = *&v4[OBJC_IVAR____TtC23NetworkEndpointPickerUI25DevicePickerSceneDelegate_window];
    if (v8)
    {
      v9 = [v8 rootViewController];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 _hostedWindowScene];

        if (v11)
        {
          v12 = [objc_opt_self() actionForDevicePickerCreatedBonjourEndpoint:a1];
          [v11 sendAction:v12];
        }
      }
    }
  }
}

void sub_1000138F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Attempting to succeed with browserResultData", v7, 2u);
    }

    v8 = *&v4[OBJC_IVAR____TtC23NetworkEndpointPickerUI25DevicePickerSceneDelegate_window];
    if (v8)
    {
      v9 = [v8 rootViewController];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 _hostedWindowScene];

        if (v11)
        {
          isa = Data._bridgeToObjectiveC()().super.isa;
          v13 = [objc_opt_self() actionForDevicePickerCreatedBrowserResultData:isa];

          [v11 sendAction:v13];
        }
      }
    }
  }
}

id sub_100013A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = 0;
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = a4;
  v4 = [swift_getObjCClassFromMetadata() bundleRecordForAuditToken:v8 error:&v9];
  if (v4)
  {
    v5 = v9;
  }

  else
  {
    v6 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v4;
}

void sub_100013B80(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC23NetworkEndpointPickerUI25DevicePickerSceneDelegate_window);
    if (v4)
    {
      v5 = [v4 rootViewController];
      if (v5)
      {
        v6 = v5;
        v7 = [v5 _hostedWindowScene];

        if (v7)
        {
          v8 = [objc_allocWithZone(DDDeviceDiscoveryDismissAction) init];
          [v7 sendAction:v8];
        }
      }
    }
  }
}

void sub_100013CEC(void *a1)
{
  v1 = a1;
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    *(v3 + 4) = v1;
    *v4 = v1;
    v5 = v1;
    _os_log_impl(&_mh_execute_header, oslog, v2, "scene did disconnect: %@", v3, 0xCu);
    sub_1000114EC(v4, &qword_100029E98, &qword_100018C60);
  }
}

id sub_100013F3C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DevicePickerSceneDelegate(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for DevicePickerSceneDelegate(uint64_t a1)
{
  result = qword_10002AB70;
  if (!qword_10002AB70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100014044(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for Logger();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1000140DC(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC23NetworkEndpointPickerUI25DevicePickerSceneDelegate_window);
  if (v3)
  {
    v4 = [v3 windowScene];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 _FBSScene];

      if (v6)
      {
        v9[1] = &_swiftEmptySetSingleton;
        v7 = [objc_opt_self() actionWithResult:a1];
        sub_100014B5C(v9, v7);

        sub_10000A084(0, &qword_10002A4D0, BSAction_ptr);
        sub_100014D94();
        isa = Set._bridgeToObjectiveC()().super.isa;

        [v6 sendActions:isa];
      }
    }
  }
}

void sub_100014374(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC23NetworkEndpointPickerUI25DevicePickerSceneDelegate_window);
  if (v3)
  {
    v4 = [v3 windowScene];
    if (v4)
    {
      v5 = v4;
      v12 = [v4 _FBSScene];

      if (v12)
      {
        v6 = [v12 hostAuditToken];
        if (v6)
        {
          v7 = v6;
          v8 = String._bridgeToObjectiveC()();
          v9 = [v7 hasEntitlement:v8];

          if (v9)
          {
            v13[1] = &_swiftEmptySetSingleton;
            v10 = [objc_opt_self() actionWithDebugError:a1];
            sub_100014B5C(v13, v10);

            sub_10000A084(0, &qword_10002A4D0, BSAction_ptr);
            sub_100014D94();
            isa = Set._bridgeToObjectiveC()().super.isa;

            [v12 sendActions:isa];

            return;
          }
        }
      }
    }
  }
}

unint64_t sub_1000145B4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100014680(v11, 0, 0, 1, a1, a2);
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
    sub_1000158C8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100002F30(v11);
  return v7;
}

unint64_t sub_100014680(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10001478C(a5, a6);
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

char *sub_10001478C(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000147D8(a1, a2);
  sub_100014908(&off_1000251C8);
  return v3;
}

char *sub_1000147D8(uint64_t a1, unint64_t a2)
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

  v6 = sub_1000149F4(v5, 0);
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
        v7 = sub_1000149F4(v10, 0);
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

uint64_t sub_100014908(uint64_t result)
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

  result = sub_100014A68(result, v11, 1, v3);
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

void *sub_1000149F4(uint64_t a1, uint64_t a2)
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

  sub_100002E80(&qword_10002AC08, &qword_100018C80);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100014A68(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002E80(&qword_10002AC08, &qword_100018C80);
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

uint64_t sub_100014B5C(uint64_t *a1, void *a2)
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

      sub_10000A084(0, &qword_10002A4D0, BSAction_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_100014DFC(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      sub_100014FEC(v20 + 1);
    }

    v18 = v8;
    sub_100015214(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_10000A084(0, &qword_10002A4D0, BSAction_ptr);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_100015298(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

unint64_t sub_100014D94()
{
  result = qword_10002A4D8;
  if (!qword_10002A4D8)
  {
    sub_10000A084(255, &qword_10002A4D0, BSAction_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A4D8);
  }

  return result;
}

Swift::Int sub_100014DFC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100002E80(&unk_10002ABE0, &qword_100018C58);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_10000A084(0, &qword_10002A4D0, BSAction_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_100014FEC(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_100014FEC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100002E80(&unk_10002ABE0, &qword_100018C58);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
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
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v5 + 40));
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_100015214(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

void sub_100015298(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100014FEC(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_100015408();
      goto LABEL_12;
    }

    sub_100015558(v6 + 1);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_10000A084(0, &qword_10002A4D0, BSAction_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

id sub_100015408()
{
  v1 = v0;
  sub_100002E80(&unk_10002ABE0, &qword_100018C58);
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

Swift::Int sub_100015558(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100002E80(&unk_10002ABE0, &qword_100018C58);
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
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(v5 + 40);
      v17 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = NSObject._rawHashValue(seed:)(v16);
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v17;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v25;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

void sub_10001576C(void *a1)
{
  v5[1] = &_swiftEmptySetSingleton;
  v4 = [objc_opt_self() actionWithResult:-1];
  sub_100014B5C(v5, v4);

  v2 = [a1 _FBSScene];
  sub_10000A084(0, &qword_10002A4D0, BSAction_ptr);
  sub_100014D94();
  isa = Set._bridgeToObjectiveC()().super.isa;

  [v2 sendActions:isa];
}

uint64_t sub_100015878()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000158C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_100015928(void *a1)
{
  v2 = v1;
  v4 = sub_100002E80(&qword_10002AC10, &qword_100018C88);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v60 = &v59 - v8;
  v9 = sub_100002E80(&qword_10002AC18, &qword_100018C90);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v59 - v13;
  v15 = sub_100002E80(&qword_10002AC00, &qword_100018C78);
  __chkstk_darwin(v15 - 8);
  v17 = &v59 - v16;
  v18 = sub_100002E80(&qword_10002AC20, &qword_100018C98);
  __chkstk_darwin(v18 - 8);
  v20 = &v59 - v19;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Creating scene to connect to", v23, 2u);
  }

  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (v24)
  {
    v25 = v24;
    v26 = objc_allocWithZone(UIWindow);
    v27 = a1;
    v28 = [v26 initWithWindowScene:v25];
    v29 = *(v2 + OBJC_IVAR____TtC23NetworkEndpointPickerUI25DevicePickerSceneDelegate_window);
    *(v2 + OBJC_IVAR____TtC23NetworkEndpointPickerUI25DevicePickerSceneDelegate_window) = v28;
    v30 = v28;

    UIScene.hostStorage.getter();
    v31 = sub_100002E80(&qword_10002AC28, &qword_100018CA0);
    if ((*(*(v31 - 8) + 48))(v20, 1, v31) == 1)
    {

      sub_1000160F0(v20);
    }

    else
    {
      sub_1000160F0(v20);
      v32 = v27;
      DDDeviceAdvertiserViewConfiguration.init(scene:)();
      v33 = type metadata accessor for DDDeviceAdvertiserViewConfiguration();
      v34 = (*(*(v33 - 8) + 48))(v17, 1, v33);
      sub_1000114EC(v17, &qword_10002AC00, &qword_100018C78);
      if (v34 == 1)
      {
        v35 = v60;
        sub_100012DDC(v32, v60);
        sub_100011484(v35, v7, &qword_10002AC10, &qword_100018C88);
        v36 = objc_allocWithZone(sub_100002E80(&qword_10002AC30, &qword_100018CA8));
        v37 = UIHostingController.init(rootView:)();
        v38 = objc_allocWithZone(UINavigationController);
        v39 = v37;
        v40 = [v38 initWithRootViewController:v39];
        v41 = [v40 sheetPresentationController];
        if (v41)
        {
          v42 = v41;
          v43 = [objc_allocWithZone(_UIViewGlass) initWithVariant:0];
          [v42 _setLargeBackground:v43];
        }

        sub_10000A084(0, &qword_10002AC38, UIBarButtonItem_ptr);
        sub_10000A084(0, &qword_10002AC40, UIAction_ptr);
        swift_allocObject();
        swift_unknownObjectWeakInit();
        v61.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        v61.is_nil = 0;
        isa = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemClose, v61, v63).super.super.isa;
        v45 = [v39 navigationItem];

        [v45 setRightBarButtonItem:isa];
        [v30 setRootViewController:v40];

        v46 = &qword_10002AC10;
        v47 = &qword_100018C88;
        v48 = v35;
      }

      else
      {
        sub_100012708(v32, v14);
        sub_100011484(v14, v12, &qword_10002AC18, &qword_100018C90);
        v49 = objc_allocWithZone(sub_100002E80(&qword_10002AC48, &unk_100018CB0));
        v50 = UIHostingController.init(rootView:)();
        v51 = objc_allocWithZone(UINavigationController);
        v52 = v50;
        v53 = [v51 initWithRootViewController:v52];
        v54 = [v53 sheetPresentationController];
        if (v54)
        {
          v55 = v54;
          v56 = [objc_allocWithZone(_UIViewGlass) initWithVariant:0];
          [v55 _setLargeBackground:v56];
        }

        sub_10000A084(0, &qword_10002AC38, UIBarButtonItem_ptr);
        sub_10000A084(0, &qword_10002AC40, UIAction_ptr);
        swift_allocObject();
        swift_unknownObjectWeakInit();
        v62.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        v62.is_nil = 0;
        v57 = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemClose, v62, v64).super.super.isa;
        v58 = [v52 navigationItem];

        [v58 setRightBarButtonItem:v57];
        [v30 setRootViewController:v53];

        v46 = &qword_10002AC18;
        v47 = &qword_100018C90;
        v48 = v14;
      }

      sub_1000114EC(v48, v46, v47);
      [v30 makeKeyAndVisible];
    }
  }
}

uint64_t sub_1000160F0(uint64_t a1)
{
  v2 = sub_100002E80(&qword_10002AC20, &qword_100018C98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}